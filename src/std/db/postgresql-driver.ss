;;; -*- Gerbil -*-
;;; © vyzo, drew
;;; PostgreSQL driver
;; https://www.postgresql.org/docs/current/protocol-message-formats.html

(import :std/actor
        :std/interface
        :std/io
        :std/io/bio/util
        :std/contract
        :std/misc/bytes
        :std/misc/channel
        :std/misc/list
        :std/misc/timeout
        :std/net/sasl
        :std/net/ssl
        :std/os/socket
        :std/text/utf8
        :std/text/hex
        :std/crypto
        :std/logger
        :std/sugar
        :std/error
        :std/db/dbi
        (only-in :std/srfi/1 reverse!))
(export postgresql-connect!
        postgresql-prepare-statement!
        postgresql-close-statement!
        postgresql-exec!
        postgresql-query!
        postgresql-simple-query!
        postgresql-continue!
        postgresql-reset!
        postgresql-close!
        postgresql-message
        postgresql-message-name
        postgresql-message-args
        postgresql-RowDescription?
        postgresql-CommandComplete?
        postgresql-current-notice-handler
        postgresql-current-notice-handler-set!
        with-postgresql-notice-handler
        (rename: !token? query-token?))

(deflogger postgres)

(defstruct !token ()
  final: #t)

;;; driver interface
(defmessage !prepare (name sql))
(defmessage !exec (name params))
(defmessage !query (name params))
(defmessage !simple-query (str))
(defmessage !current-notice-handler (proc))
(defmessage !continue (token))
(defmessage !reset (token))
(defmessage !close (name))

(defstruct postgresql-message (name args)
  print: (args))

(defstruct (postgresql-RowDescription postgresql-message) ()
  constructor: :init!
  final: #t)
(defmethod {:init! postgresql-RowDescription}
  (lambda (self desc)
    (struct-instance-init! self 'RowDescription desc)))

(defstruct (postgresql-CommandComplete postgresql-message) ()
  constructor: :init!
  final: #t)
(defmethod {:init! postgresql-CommandComplete}
  (lambda (self desc)
    (struct-instance-init! self 'CommandComplete desc)))

(defrules with-driver ()
  ((_ conn driver body ...)
   (cond
    ((thread? conn)
     (let (driver conn)
       body ...))
    ((connection-e conn)
     => (lambda (driver) body ...))
    (else
     (raise-io-closed postgresql-driver "connection has been closed" conn)))))

(defrules get-driver ()
  ((_ conn)
   (if (thread? conn) conn (connection-e conn))))

(def current-notice-handler
  (make-parameter
   (lambda (msg irritants)
     (warnf "NoticeResponse: ~a ~a" msg irritants))))

#;(import (rename-in :std/debug/DBG (DBG DEBUG)))

(defrules DEBUG ()
  ((_ what arg ...)
   (void)))

(defcall-actor (postgresql-prepare-statement! conn name sql)
  (with-driver conn driver
    (->> driver (!prepare name sql)))
  error: "error preparing statement" sql)

(def (postgresql-close-statement! conn name)
  (alet (driver (get-driver conn))
    (-> driver (!close name))))

(defcall-actor (postgresql-exec! conn name bind)
  (with-driver conn driver
    (->> driver (!exec name bind)))
  error: "error executing statement")

(defcall-actor (postgresql-query! conn name bind)
  (with-driver conn driver
    (->> driver (!query name bind)))
  error: "error executing query")

(defcall-actor (postgresql-simple-query! conn str)
  (with-driver conn driver
    (->> driver (!simple-query str)))
  error: "error executing query")

(def (postgresql-continue! conn token)
  (if (!token? token)
    (with-driver conn driver
      (-> driver (!continue token)))
    (raise-bad-argument postgreql "query token" token)))

(def (postgresql-reset! conn token)
  (if (!token? token)
    (alet (driver (get-driver conn))
      (-> driver (!reset token)))
    (raise-bad-argument postgreql "query token" token)))

(defcall-actor (postgresql-current-notice-handler conn)
  (cond
   ((get-driver conn)
    => (cut ->> <> (!current-notice-handler #f)))
   (else
    (!ok (void))))
  error: "error retrieving notice handler")


(defcall-actor (postgresql-current-notice-handler-set! conn handler)
  (cond
   ((get-driver conn)
    => (cut ->> <> (!current-notice-handler handler)))
   (else
    (!ok (void))))
  error: "error setting notice handler")

(def (with-postgresql-notice-handler conn handler thunk)
  (let (pren (postgresql-current-notice-handler conn))
    (try
     (set! (postgresql-current-notice-handler conn)
       (lambda args (apply handler args) (apply pren args)))
     (thunk)
     (finally
      (set! (postgresql-current-notice-handler conn) pren)))))

(defcall-actor (postgresql-close! conn)
  (cond
   ((get-driver conn)
    => (cut ->> <> (!shutdown)))
   (else
    (!ok (void))))
  error: "error closing connection")

;;; driver implementation
(def (postgresql-connect! host port user passwd db ssl ssl-context timeout)
  (def sock
    (tcp-connect (cons host port)))

  (try

   (start-logger!)
   (DEBUG "STARTUP")

   (when ssl
     ;; Send magic SSLRequest message with non-version 80877103, instead of StartupMessage
     ;; https://www.postgresql.org/docs/current/protocol-flow.html
     (StreamSocket-send sock #u8(0 0 0 8 4 210 22 47) 0 8 0)
     (let* ((buf (make-u8vector 1 0))
            (count (StreamSocket-recv sock buf 0 1 MSG_WAITALL))
            (response (u8vector-ref buf 0)))
       (cond
        ((not (= count 1))
         (error "Postgres connection failed immediately"))
        ((= response 78) ;; (char->integer #\N)
         ;; Exceptionally (see URL above), this N isn't followed by a notice message
         (when (eq? ssl #t)
           (error "Postgres Server does not support SSL encryption.")))
        ((= response 83) ;; (char->integer #\S)
         (set! sock (ssl-client-upgrade sock (make-timeout timeout #f)
                                        context: ssl-context
                                        host: host)))
        (else
         ;; read as much as we can from the server response to give the best error context
         (let* ((buf (make-u8vector 2048 0))
                (len (StreamSocket-recv sock buf 1 2048 MSG_DONTWAIT))
                (len (if (positive? len) (1+ len) 1)))
           (vector-set! buf 0 response)
           (error "Invalid server response" (subu8vector buf 0 len)))))))

   (def reader
     (open-buffered-reader
      (StreamSocket-reader sock)))

   (def writer
     (open-buffered-writer
      (StreamSocket-writer sock)))

   (def (start-driver!)
     (DEBUG "STARTING DRIVER")
     (let lp ()
       (match (postgresql-recv! reader)
         (['ReadyForQuery _]
          (spawn/name 'postgresql-connection postgresql-driver sock reader writer))
         (['ErrorResponse msg . irritants]
          (raise-io-error postgresql-connect! msg irritants))
         (['NoticeResponse msg . irritants]
          ((current-notice-handler) msg irritants)
          (lp))
         (other
          (DEBUG "unprocessed message" other)
          (lp)))))

   (defrules send! ()
     ((_ msg)
      (postgresql-send! writer msg)))

   (defrules recv! ()
     ((_ clause ...)
      (match (postgresql-recv! reader)
        clause ...
        (['ErrorResponse msg . irritants]
         (raise-io-error postgresql-connect! msg irritants))
        (unexpected
         (raise-io-error postgresql-connect! "unexpected message" unexpected)))))

   (def (authen-pass pass)
     (send! ['PasswordMessage pass])
     (recv!
      (['AuthenticationRequest 'AuthenticationOk]
       (start-driver!))))

   (def (authen-cleartext)
     (DEBUG "AUTHEN CLEARTEXT")
     (authen-pass passwd))

   (def (authen-md5 salt)
     (def (md5-hex data)
       (hex-encode (md5 data)))

     (DEBUG "AUTHEN MD5")
     (let* ((word1 (string-append passwd user))
            (word2 (md5-hex word1))
            (word3 (u8vector-append (string->utf8 word2) salt))
            (word4 (md5-hex word3))
            (pass (string-append "md5" word4)))
       (authen-pass pass)))

   (def (authen-sasl mechanisms)
     (DEBUG "AUTHEN SASL")
     (unless (member "SCRAM-SHA-256" mechanisms)
       (raise-io-error postgresql-connect! "unknown SASL authentication mechanisms" mechanisms))
     (let* ((ctx (scram-sha-256-begin "" passwd))
            (msg (scram-client-first-message ctx)))
       (send! ['SASLInitialResponse "SCRAM-SHA-256" msg])
       (recv!
        (['AuthenticationRequest 'AuthenticationSASLContinue msg]
         (scram-client-first-server-message! ctx msg)
         (let (msg (scram-client-final-message ctx))
           (send! ['SASLResponse msg])
           (recv!
            (['AuthenticationRequest 'AuthenticationSASLFinal msg]
             (scram-client-final-server-message! ctx msg)
             (recv!
              (['AuthenticationRequest 'AuthenticationOk]
               (start-driver!))))))))))

   (send! ['StartupMessage ["user" . user] (if db [["database" . db]] []) ...])
   (recv!
    (['AuthenticationRequest what . rest]
     (DEBUG "AUTHENTICATION REQUEST " what)
     (case what
       ((AuthenticationOk)
        (start-driver!))
       ((AuthenticationCleartextPassword)
        (authen-cleartext))
       ((AuthenticationMD5Password)
        (authen-md5 (car rest)))
       ((AuthenticationSASL)
        (authen-sasl rest))
       (else
        (raise-io-error postgresql-connect! "unsupported authentication mechanism" what)))))
   (catch (e)
     (StreamSocket-close sock)
     (raise e))))

(def (postgresql-driver sock reader writer)
  (def query-limit 1000)
  (def query-output #f)
  (def query-token #f)
  (def simple-query #f)

  (def deferred-close [])

  (def (send! msg)
    (postgresql-send! writer msg))

  (def (recv!)
    (match (postgresql-recv! reader)
      (['NoticeResponse msg . irritants]
       (notice! msg irritants)
       (recv!))
      (['ParameterStatus msg . irritants]
       (void)
       (recv!))
      (msg msg)))

  (def (notice! msg irritants)
    ((current-notice-handler) msg irritants))

  (def (resync!)
    (let lp ()
      (match (recv!)
        (['ReadyForQuery _]
         (void))
        (else
         (lp)))))

  (def (maybe-sync!)
    (when query-output
      (channel-sync query-output (SQLError "portal expired" where: 'postgresql-query-pump!))
      (channel-close query-output)
      (set! query-output #f)
      (set! query-token #f)
      (resync!)
      (let (to-close deferred-close)
        (set! deferred-close [])
        (for-each close to-close))))

  (def (prepare name sql)
    ;; Parse (name sql) -> ParseComplete | ErrorResponse
    ;; Describe (name)  -> ParameterDescription | ErrorResponse
    ;;                     RowDescription | NoData
    ;; Sync             -> ReadyForQuery
    (def params #f)
    (def cols #f)

    (maybe-sync!)
    (send! ['Parse name sql])
    (send! ['Describe #\S name])
    (send! '(Sync))
    (match (recv!)
      (['ParseComplete]
       (void))
      (['ErrorResponse msg . irritants]
       (resync!)
       (raise-sql-error postgresql-prepare! msg irritants)))
    (match (recv!)
      (['ParameterDescription . query-params]
       (set! params query-params))
      (['ErrorResponse msg . irritants]
       (resync!)
       (raise-sql-error postgresql-prepare! msg irritants)))
    (match (recv!)
      (['RowDescription . fields]
       (set! cols fields))
      (['NoData]
       (set! cols [])))
    (resync!)
    (values params cols))

  (def (exec name params)
    ;; Bind ("" name params) ->  BindComplete | ErrorResponse
    ;; Execute ("")          -> DataRow ...
    ;;                          CommandComplete | EmptyQueryResponse
    ;;                          | ErrorResponse | PortalSuspended.
    ;; Sync                  -> ReadyForQuery
    (def res #f)

    (maybe-sync!)
    (send! ['Bind "" name . params])
    (send! '(Execute "" 1))
    (send! '(Sync))
    (match (recv!)
      (['BindComplete]
       (void))
      (['ErrorResponse msg . irritants]
       (resync!)
       (raise-sql-error postgresql-exec! msg irritants)))
    (let lp ()
      (match (recv!)
        (['DataRow . cols]
         (lp))
        (['CommandComplete tag]
         (set! res tag))
        ([(or 'PortalSuspended 'EmptyQueryResponse)]
         (void))
        (['ErrorResponse msg . irritants]
         (resync!)
         (raise-sql-error postgreql-exec msg irritants))))
    (resync!)
    res)

  ;; Query backpressure mechanism: the query pump reads and buffers up
  ;; to query-limit rows before requiring a continue signal from
  ;; the query client.
  ;; If the client aborts (or issues a new query), the remaining results
  ;; of the query will be skipped over on resync.
  ;; The plan was originally to use (named) portals with Execute limit
  ;; and rely on PortalSuspended to implement staging of input.
  ;; Unfortunately, the server (tested with 10.1) doesn't start
  ;; sending anything back until it sees a Sync; this kills
  ;; the portal unless it's in a BEGIN/COMMIT block so the backpressure
  ;; idea using portal suspension can't work without wrapping every
  ;; query in an explicit txn (which is undesirable for obvious reasons)
  (def (query-start name params)
    ;; Bind ("" name params) ->  BindComplete | ErrorResponse
    (maybe-sync!)
    (send! ['Bind "" name . params])
    (send! '(Execute "" 0))
    (send! '(Sync))
    (match (recv!)
      (['BindComplete]
       (let ((ch (make-channel query-limit))
             (token (make-!token)))
         (set! query-output ch)
         (set! query-token token)
         (values ch token)))
      (['ErrorResponse msg . irritants]
       (resync!)
       (raise-sql-error postgresql-query! msg irritants))))

  (def (query-pump)
      ;; Execute ("")          -> DataRow ...
      ;;                          CommandComplete | EmptyQueryResponse
      ;;                          | ErrorResponse | PortalSuspended.
      ;; Sync                  -> ReadyForQuery
      (let/cc break
        (let lp ()
          (match (recv!)
            (['DataRow . cols]
             (cond
              ((channel-try-put query-output cols)
               (lp))
              (else
               (channel-sync query-output cols query-token)
               (break))))
            (['CommandComplete tag]
             (channel-sync query-output (postgresql-CommandComplete tag))
             (void))
            ([(or 'PortalSuspended 'EmptyQueryResponse)]
             (void))
            (['ErrorResponse msg . irritants]
             (channel-sync query-output (SQLError msg irritants: irritants where: 'postgresql-query!)))))
        (channel-close query-output)
        (set! query-output #f)
        (set! query-token #f)
        (resync!)))

  (def (simple-query-start str)
      (maybe-sync!)
      (send! ['Query str])
      (let ((ch (make-channel query-limit))
            (token (make-!token)))
        (set! query-output ch)
        (set! query-token token)
        (set! simple-query #t)
        (values ch token)))

  (def (simple-query-pump)
    (let/cc break
        (let lp ()
          (let ((r (recv!)))
            (match r
              (['RowDescription . fields]
               (channel-sync query-output (postgresql-RowDescription fields))
               (lp))
              (['CommandComplete tag]
               (channel-sync query-output (postgresql-CommandComplete tag))
               (lp))
              (['DataRow . cols]
               (cond                                        ;
                ((channel-try-put query-output cols)        ;
                 (lp))                                      ;
                (else                                       ;
                 (channel-sync query-output cols query-token) ;
                 (break))))
              (['ReadyForQuery _]
               (channel-sync query-output (eof-object)))
              (['EmptyQueryResponse]
               (lp))
              (['ErrorResponse msg . irritants]
               (channel-sync query-output (SQLError msg irritants: irritants where: 'postgresql-simple-query!))
               (lp))))))
      (channel-close query-output)
      (set! query-output #f)
      (set! query-token #f)
      (set! simple-query #f))

  (def (continue token)
    (when (eq? token query-token)
      (if simple-query
        (simple-query-pump)
        (query-pump))))

  (def (close name)
    ;; Close (name) -> CloseComplete | ErrorResponse
    (if query-output
      (push! name deferred-close)
      (begin
        (send! ['Close #\S name])
        (send! '(Sync))
        (match (recv!)
          (['CloseComplete]
           (void))
          (['ErrorResponse msg . irritants]
           (warnf "error closing statement ~a: ~a" name msg)))
        (resync!))))

  (def (shutdown! exit)
    (send! '(Sync))
    (resync!)
    (send! '(Terminate))
    (exit 'shutdown))

  (defrules do-action ()
    ((_ action)
     (try
      (let (res action)
        (--> (!ok res)))
      (catch (e)
        (--> (!error (error-message e)))
        (unless (sql-error? e)
          (raise e)))))
    ((recur action continue ...)
     (begin
       (recur action)
       continue ...)))

  (def (loop)
    (let/cc exit
      (while #t
        (<- ((!prepare name sql)
             (do-action (prepare name sql)))
            ((!exec name params)
             (do-action (exec name params)))
            ((!query name params)
             (do-action (query-start name params) (query-pump)))
            ((!simple-query str)
             (do-action (simple-query-start str) (simple-query-pump)))
            ((!continue token)
             (continue token))
            ((!reset token)
             (maybe-sync!))
            ((!close name)
             (close name))
            ((!current-notice-handler proc)
             (do-action (if proc
                          (current-notice-handler proc)
                          (current-notice-handler))))
            ,(@ping)
            ,(@shutdown
              (shutdown! exit))
            ,(@unexpected warnf)))))

  (try
   (loop)
   (catch (e)
     (errorf "unhandled exception: ~a" e)
     (raise e))
   (finally
    (when query-output
      (channel-sync query-output (SQLError "connection error" where: 'postgresql-driver))
      (channel-close query-output))
    (StreamSocket-close sock))))

;;; Protocol I/O
(def (postgresql-send! writer msg)
  (using (writer :- BufferedWriter)
    (def (marshal-and-write tid body marshal)
      (let (payload (marshal body))
        (when tid
          (writer.write-u8 tid))
        (writer.write-u32 (fx+ (u8vector-length payload) 4))
        (writer.write payload)
        (writer.flush)))

    (DEBUG "SEND " msg)
    (with ([tag . body] msg)
      (cond
       ((hash-get +frontend-messages+ tag)
        => (match <>
             ([tid . marshal]
              (marshal-and-write tid body marshal))))
       ((eq? tag 'StartupMessage)
        (marshal-and-write #f body marshal-startup))
       (else
        (raise-io-error postgresql-send! "cannot marshal; unknown message tag" msg))))))

(def (postgresql-recv! reader)
  (DEBUG "RECEIVE!")
  (using (reader :- BufferedReader)
    (let* ((tid (reader.read-u8))
           (_ (when (eof-object? tid)
                (raise-io-error postgresql-recv! "connection closed")))
           (payload-len (reader.read-u32))
           (payload-len (fx- payload-len 4))
           (payload-reader (reader.delimit payload-len)))

      (using (payload-reader :- BufferedReader)
        (DEBUG "READ MESSAGE " tid payload-len)
        (cond
         ((vector-ref +backend-messages+ tid)
          => (match <>
               ([tag . unmarshal]
                (DEBUG "UNMARSHAL " tag)
                (let* ((body (unmarshal payload-reader))
                       (msg (cons tag body)))
                  ;; skip left-over input in the delimited reader
                  (while (not (eof-object? (payload-reader.read-u8))))
                  (DEBUG "RECEIVE " msg)
                  msg))))
         (else
          (let ((buffer (read-available-u8 reader start: 5 end: 2048)))
            (u8vector-set! buffer 0 tid)
            (u8vector-uint-set! buffer 1 (+ payload-len 4) big 4)
            (raise-io-error postgresql-recv! "unexpected backend message" buffer))))))))

;;; message unmarshaling
(def (unmarshal-ignore buf)
  '(...))

(def (unmarshal-empty buf)
  '())

(def (unmarshal-authen-request buf)
  (using (buf :- BufferedReader)
    (let (t (buf.read-u32))
      (case t
        ((0) '(AuthenticationOk))
        ((2) '(AuthenticationKerberosV5))
        ((3) '(AuthenticationCleartextPassword))
        ((5)
         (let (salt (make-u8vector 4))
           (buf.read salt 0 4 4)
           ['AuthenticationMD5Password salt]))
        ((6) '(AuthenticationSCMCredential))
        ((7) '(AuthenticationGSS))
        ((8)
         (let (data (unmarshal-bytes-rest buf))
           ['AuthenticationGSSContinue data]))
        ((9) '(AuthenticationSSPI))
        ((10)
         (let (mechanisms (unmarshal-string-list buf))
           ['AuthenticationSASL . mechanisms]))
        ((11)
         (let (data (unmarshal-string-rest buf))
           ['AuthenticationSASLContinue data]))
        ((12)
         (let (data (unmarshal-string-rest buf))
           ['AuthenticationSASLFinal data]))
        (else
         [t '...])))))

(def (unmarshal-string-list buf)
  (let lp ((r []))
    (let (next (unmarshal-string buf))
      (if (string-empty? next)
        (reverse! r)
        (lp (cons next r))))))

(def (unmarshal-string buf)
  (using (buf :- BufferedReader)
    (let lp ((chars []))
      (if (fx= (buf.peek-u8) 0)
        (begin
          (buf.read-u8)
          (list->string (reverse! chars)))
        (let (next (buf.read-char))
          (lp (cons next chars)))))))

(def (unmarshal-bytes-rest buf)
  (using (buf :- BufferedReader)
    (let lp ((bytes []))
      (let (next (buf.read-u8))
        (if (eof-object? next)
          (list->u8vector (reverse! bytes))
          (lp (cons next bytes)))))))

(def (unmarshal-string-rest buf)
  (using (buf :- BufferedReader)
    (let lp ((chars []))
      (let (next (buf.read-char))
        (if (eof-object? next)
          (list->string (reverse! chars))
          (lp (cons next chars)))))))

(def (unmarshal-complete buf)
  (let (tag (unmarshal-string buf))
    [tag]))

(def (unmarshal-data-row buf)
  (using (buf :- BufferedReader)
    (let (count (buf.read-u16))
      (let lp ((i 0) (r []))
        (if (fx< i count)
          (let (len (buf.read-s32))
            (if (fx>= len 0)
              (let* ((strbuf (buf.delimit len))
                     (str (unmarshal-string-rest strbuf)))
                (lp (fx+ i 1) (cons str r)))
              (lp (fx+ i 1) (cons #f r)))) ; NULL
          (reverse! r))))))

(def (unmarshal-error-notice buf)
  (using (buf :- BufferedReader)
    (let lp ((r []))
      (let (t (buf.read-u8!))
        (if (fx= t 0)
          (let* ((alist (reverse! r))
                 (msg (assgetq #\M alist)))
            (cons msg alist))
          (let (field (unmarshal-string buf))
            (lp (cons (cons (integer->char t) field) r))))))))

(def (unmarshal-param-description buf)
  (using (buf :- BufferedReader)
    (let (count (buf.read-u16))
      (let lp ((i 0) (r []))
        (if (fx< i count)
          (let (oid (buf.read-u32))
            (lp (fx+ i 1) (cons oid r)))
          (reverse! r))))))

(def (unmarshal-row-description buf)
  (using (buf :- BufferedReader)
    (let (count (buf.read-u16))
      (let lp ((i 0) (r []))
        (if (fx< i count)
          (let* ((field-name (unmarshal-string buf))
                 (table-id (buf.read-u32))
                 (attr-id  (buf.read-u16))
                 (type-id  (buf.read-u32))
                 (type-sz  (buf.read-s16))
                 (modifier (buf.read-s32))
                 (fmt      (buf.read-u16)))
            (lp (fx+ i 1)
                (cons [field-name table-id attr-id type-id type-sz modifier fmt] r)))
          (reverse! r))))))

(def (unmarshal-ready buf)
  (using (buf :- BufferedReader)
    (let (status (buf.read-u8!))
      [(integer->char status)])))

;;; message marshaling
(def (marshal-fail what)
  (lambda (body)
    (raise-io-error postgresql-send! "Cannot marshal; unsupported message" (cons what body))))

(def (marshal-empty body)
  '#u8())

(def (marshal-string buf str)
  (using (buf :- BufferedWriter)
    (buf.write-string str)
    (buf.write-u8 0)))

(defrule (with-buffered-writer writer body ...)
  (let* ((buffer (cache-get-buffer))
         (writer (open-buffered-writer #f buffer)))
    (using (writer :- BufferedWriter)
      (let () body ...))
    (let (result (get-buffer-output-u8vector writer))
      (cache-put-buffer buffer)
      result)))

(def (marshal-startup body)
  (with ([[param . value] ...] body)
    (with-buffered-writer buf
      (buf.write-u32 196608) ; Protocol v3.0
      (for-each
        (lambda (param value)
          (marshal-string buf param)
          (marshal-string buf value))
        param value)
      (buf.write-u8 0))))

(def (marshal-bind body)
  (with ([portal-name stmt-name . params] body)
    (with-buffered-writer buf
      (marshal-string buf portal-name)
      (marshal-string buf stmt-name)
      (buf.write-u16 0)
      (buf.write-u16 (length params))
      (for-each
        (lambda (param)
          (cond
           ((not param)
            (buf.write-s32 -1))
           ((string? param)
            (let (len (string-utf8-length param))
              (buf.write-u32 len)
              (buf.write-string param)))
           ((u8vector? param)
            (buf.write-u32 (u8vector-length param))
            (buf.write param))
           (else
            (raise-io-error postgresql-send! "Cannot marshal; bad parameter" param))))
        params)
      (buf.write-u16 0))))

(def (marshal-close body)
  (marshal-describe body))

(def (marshal-describe body)
  (with ([what name] body)
    (with-buffered-writer buf
      (buf.write-u8 (char->integer what))
      (marshal-string buf name))))

(def (marshal-exec body)
  (with ([portal limit] body)
    (with-buffered-writer buf
      (marshal-string buf portal)
      (buf.write-u32 0))))

(def (marshal-parse body)
  (with ([stmt sql] body)
    (with-buffered-writer buf
      (marshal-string buf stmt)
      (marshal-string buf sql)
      (buf.write-u16 0))))

(def (marshal-passwd body)
  (with ([passwd] body)
    (with-buffered-writer buf
      (marshal-string buf passwd))))

(def (marshal-query body)
  (with ([sql] body)
    (with-buffered-writer buf
      (marshal-string buf sql))))

(def (marshal-sasl-initial-reponse body)
  (with ([mechanism data] body)
    (with-buffered-writer buf
      (marshal-string buf mechanism)
      (if data
        (let (len (string-utf8-length data))
          (buf.write-u32 len)
          (buf.write-string data))
        (buf.write-s32 -1)))))

(def (marshal-sasl-response body)
  (with ([data] body)
    (string->utf8 data)))

;;; marshal buffer cache
(def +buffer-cache+ [])
(def +buffer-cache-mx+ (make-mutex 'buffer-cache))

(def (cache-get-buffer)
  (mutex-lock! +buffer-cache-mx+)
  (match +buffer-cache+
    ([buf . rest]
     (set! +buffer-cache+ rest)
     (mutex-unlock! +buffer-cache-mx+)
     buf)
    (else
     (mutex-unlock! +buffer-cache-mx+)
     (make-u8vector 4096))))

(def (cache-put-buffer buf)
  (mutex-lock! +buffer-cache-mx+)
  (set! +buffer-cache+ (cons buf +buffer-cache+))
  (mutex-unlock! +buffer-cache-mx+))

;;; dispatch tables
(def +backend-messages+
  (make-vector 256 #f))
(def +frontend-messages+
  (make-hash-table-eq))

(defrules defmessage-backend ()
  ((_ (id char unmarshal) ...)
   (begin
     (let (t (char->integer char))
       (vector-set! +backend-messages+ t (cons 'id unmarshal)))
     ...)))

(defrules defmessage-frontend ()
  ((_ (id char marshal) ...)
   (begin
     (let (t (char->integer char))
       (hash-put! +frontend-messages+ 'id (cons t marshal)))
     ...)))

(defmessage-backend
  (AuthenticationRequest    #\R unmarshal-authen-request)
  (BackendKeyData           #\K unmarshal-ignore)
  (BindComplete             #\2 unmarshal-empty)
  (CloseComplete            #\3 unmarshal-empty)
  (CommandComplete          #\C unmarshal-complete)
  (CopyData                 #\d unmarshal-ignore)
  (CopyDone                 #\c unmarshal-ignore)
  (CopyInResponse           #\G unmarshal-ignore)
  (CopyOutResponse          #\H unmarshal-ignore)
  (CopyBothResponse         #\W unmarshal-ignore)
  (DataRow                  #\D unmarshal-data-row)
  (EmptyQueryResponse       #\I unmarshal-empty)
  (ErrorResponse            #\E unmarshal-error-notice)
  (FunctionCallResponse     #\V unmarshal-ignore)
  (NegotiateProtocolVersion #\v unmarshal-ignore)
  (NoData                   #\n unmarshal-empty)
  (NoticeResponse           #\N unmarshal-error-notice)
  (NotificationResponse     #\A unmarshal-ignore)
  (ParameterDescription     #\t unmarshal-param-description)
  (ParameterStatus          #\S unmarshal-ignore)
  (ParseComplete            #\1 unmarshal-empty)
  (PortalSuspended          #\s unmarshal-empty)
  (ReadyForQuery            #\Z unmarshal-ready)
  (RowDescription           #\T unmarshal-row-description))

(defmessage-frontend
  (Bind                     #\B  marshal-bind)
  (Close                    #\C  marshal-close)
  (CopyData                 #\d (marshal-fail 'CopyData))
  (CopyDone                 #\c (marshal-fail 'CopyDone))
  (CopyFail                 #\f (marshal-fail 'CopyFail))
  (Describe                 #\D  marshal-describe)
  (Execute                  #\E  marshal-exec)
  (Flush                    #\H  marshal-empty)
  (FunctionCall             #\F (marshal-fail 'FunctionCall))
  (GSSResponse              #\p (marshal-fail 'GSSResponse))
  (Parse                    #\P  marshal-parse)
  (PasswordMessage          #\p  marshal-passwd)
  (Query                    #\Q  marshal-query)
  (SASLInitialResponse      #\p  marshal-sasl-initial-reponse)
  (SASLResponse             #\p  marshal-sasl-response)
  (Sync                     #\S  marshal-empty)
  (Terminate                #\X  marshal-empty))
