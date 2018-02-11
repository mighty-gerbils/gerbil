;;; -*- Gerbil -*-
;;; (C) vyzo
;;; PostgreSQL driver
package: std/db

(import :gerbil/gambit/threads
        :gerbil/gambit/ports
        :std/actor/proto
        :std/actor/message
        :std/logger
        :std/sugar
        :std/error
        :std/db/dbi)
(export postgresql-connect!
        postgresql-prepare-statement!
        postgresql-close-statement!
        postgresql-exec!
        postgresql-query!
        postgreql-close!
        postgresql-drain!)

;;; driver interface
(defproto postgresql
  (prepare name sql)
  (exec name params)
  (query name params)
  event:
  (close name)
  (shutdown))

(defrules with-driver ()
  ((_ conn driver body ...)
   (cond
    ((connection-e conn)
     => (lambda (driver) body ...))
    (else
     (error "connection has been closed" conn)))))

(def (postgresql-prepare-statement! conn name sql)
  (with-driver conn driver
    (!!postgresql.prepare driver name sql)))

(def (postgresql-close-statement! conn name)
  (alet (driver (connection-e conn))
    (!!postgresql.close driver name)))

(def (postgresql-exec! conn name bind)
  (with-driver conn driver
    (!!postgresql.exec driver name bind)))

(def (postgresql-query! conn name bind)
  (with-driver conn driver
    (!!postgresql.query driver name bind)))

(def (postgreql-close! conn)
  (alet (driver (connection-e conn))
    (!!postgresql.shutdown driver)))

(def (postgresql-drain! inp)
  (def (drain inp)
    (let lp ()
      (unless (eof-object? (read inp))
        (lp))))
  (spawn/name 'postgresql-drain drain inp))

;;; driver implementation
(def (postgresql-connect! host port user passwd db)
  (start-logger!)
  (error "XXX IMPLEMENT ME: postgresql-connect!"))

(def (postgreql-driver sock)
  (def query-output #f)

  (def buffer (box (make-u8vector 1024)))

  (def (send! msg)
    (postgresql-send! sock msg))

  (def (recv!)
    (match (postgresql-recv! sock buffer)
      (['NoticeResponse msg . irritants]
       (notice! msg irritants)
       (recv!))
      (msg msg)))

  (def (notice! msg irritants)
    (warning "NOTICE: ~a ~a" msg irritants))

  (def (sync!)
    (send! '(Sync))
    (let lp ()
      (match (recv!)
        (['ReadyForQuery status]
         (void))
        (else
         (lp)))))

  (def (prepare name sql)
    ;; Parse (name sql) -> ParseComplete | ErrorResponse
    ;; Describe (name)  -> ParameterDescription | ErrorResponse
    ;;                     RowDescription | NoData
    ;; Sync             -> ReadyForQuery
    (def params #f)
    (def cols #f)

    (send! ['Parse name sql])
    (match (recv!)
      (['ParseComplete] (void))
      (['ErrorResponse msg . irritants]
       (sync!)
       (apply raise-sql-error 'postgresql-prepare! msg irritants)))
    (send! ['Describe #\s name])
    (match (recv!)
      (['ParameterDescription . query-params]
       (set! params query-params))
      (['ErrorResponse msg . irritants]
       (sync!)
       (apply raise-sql-error 'postgresql-prepare! msg irritants)))
    (match (recv!)
      (['RowDescription field-count . fields]
       (set! cols fields))
      (['NoData]
       (set! cols [])))
    (sync!)
    (values params cols))

  (def (exec name params)
    ;; Bind ("" name params) ->  BindComplete | ErrorResponse
    ;; Execute ("")          -> DataRow ...
    ;;                          CommandComplete | EmptyQueryResponse
    ;;                          | ErrorResponse | PortalSuspended.
    ;; Sync                  -> ReadyForQuery
    (def res #f)

    (send! ['Bind "" name . params])
    (match (recv!)
      (['BindComplete]
       (void))
      (['ErrorResponse msg . irritants]
       (sync!)
       (apply raise-sql-error 'postgresql-exec! msg irritants)))
    (send! '(Execute "" 0))
    (let lp ()
      (match (recv!)
        (['DataRow count . cols]
         (lp))
        (['CommandComplete tag]
         (set! res tag))
        ([(or 'PortalSuspended 'EmptyQueryResponse)]
         (void))
        (['ErrorResponse msg . irritants]
         (sync!)
         (apply raise-sql-error 'postgreql-exec msg irritants))))
    (sync!)
    res)

  (def (query-start name params)
    ;; Bind ("" name params) ->  BindComplete | ErrorResponse
    ;; create vector-pipe; set query-output, return query-input
    (send! ['Bind "" name . params])
    (match (recv!)
      (['BindComplete]
       (let ((values inp outp)
             (open-vector-pipe [permanent-close: #t direction: 'input]
                               [permanent-close: #t direction: 'output]))
         (set! query-output outp)
         inp))
      (['ErrorResponse msg . irritants]
       (sync!)
       (apply raise-sql-error 'postgresql-query-start! msg irritants))))

  (def (query-pump)
    ;; Execute ("")          -> DataRow ...
    ;;                          CommandComplete | EmptyQueryResponse
    ;;                          | ErrorResponse | PortalSuspended.
    ;; Sync                  -> ReadyForQuery
    ;; pump to query-output, close on end -- inline errors + close
    (send! '(Execute "" 0))
    (let lp ()
      (match (recv!)
        (['DataRow count . cols]
         (write cols query-output)
         (lp))
        (['CommandComplete tag]
         (void))
        ([(or 'PortalSuspended 'EmptyQueryResponse)]
         (void))
        (['ErrorResponse msg . irritants]
         (write (make-sql-error msg irritants 'postgresql-query-pump!)
                query-output))))
    (close-output-port query-output)
    (set! query-output #f)
    (sync!))

  (def (close name)
    ;; Close (name) -> CloseComplete | ErrorResponse
    (send! ['Close #\s name])
    (match (recv!)
      (['CloseComplete]
       (void))
      (['ErrorResponse msg . irritants]
       (warning "error closing statement ~a: ~a" name msg)))
    (sync!))

  (def (shutdown!)
    (send! '(Terminate))
    (raise 'shutdown))

  (defsyntax (do-action stx)
    (syntax-case stx ()
      ((macro k action)
       (with-syntax ((@source (stx-identifier #'macro '@source)))
         #'(try
            (let (res action)
              (!!value @source res k))
            (catch (e)
              (!!error @source e k)
              (unless (sql-error? e)
                (raise e))))))
      ((recur k action continue ...)
       #'(begin
           (recur k action)
           continue ...))))

  (def (loop)
    (<- ((postgresql.prepare name sql k)
         (do-action k (prepare name sql)))
        ((postgresql.exec name params k)
         (do-action k (exec name params)))
        ((postgresql.query name params k)
         (do-action k (query-start name params) (query-pump)))
        ((postgresql.close name)
         (close name))
        ((postgresql.shutdown)
         (shutdown!))
        (bogus
         (warning "unexpected message: ~a" bogus)))
    (loop))

  (try
   (loop)
   (catch (e)
     (unless (eq? e 'shutdown)
       (log-error "unhandled exception" e)
       (raise e)))
   (finally
    (when query-output
      (write (make-sql-error "driver error" [] 'postgresql-driver)
             query-output)
      (close-output-port query-output))
    (close-port sock))))

;;; Protocol I/O
(def (postgresql-send! sock msg)
  (error "XXX IMPLEMENT ME: postgresql-send!"))

(def (postgresql-recv! sock buf)
  (error "XXX IMPLEMENT ME: postgresql-recv!"))

;;; message unmarshaling
(def (unmarshal-ignore bio)
  '(...))

(def (unmarshal-empty bio)
  '())

(def (unmarshal-authen-request bio)
  (error "XXX IMPLEMENT ME: unmarshal-authen-request"))

(def (unmarshal-complete bio)
  (error "XXX IMPLEMENT ME: unmarshal-complete"))

(def (unmarshal-data-row bio)
  (error "XXX IMPLEMENT ME: unmarshal-data-row"))

(def (unmarshal-error-notice bio)
  (error "XXX IMPLEMENT ME: unmarshal-error-notice"))

(def (unmarshal-param-description bio)
  (error "XXX IMPLEMENT ME: unmarshal-param-description"))

(def (unmarshal-row-description bio)
  (error "XXX IMPLEMENT ME: unmarshal-row-description"))

(def (unmarshal-ready bio)
  (error "XXX IMPLEMENT ME: unmarshal-ready"))

;;; message marshaling
(def (marshal-fail what)
  (lambda (body)
    (raise-io-error 'postgresql-send! "Cannot marshal; unsupported message" (cons what body))))

(def (marshal-empty body)
  '#u8())

(def (marshal-bind body)
  (error "XXX IMPLEMENT ME: marshal-bind"))

(def (marshal-close body)
  (error "XXX IMPLEMENT ME: marshal-close"))

(def (marshal-describe body)
  (error "XXX IMPLEMENT ME: marshal-describe"))

(def (marshal-exec body)
  (error "XXX IMPLEMENT ME: marshal-exec"))

(def (marshal-parse body)
  (error "XXX IMPLEMENT ME: marshal-parse"))

(def (marshal-passwd body)
  (error "XXX IMPLEMENT ME: marshal-passwd"))

(def (marshal-query body)
  (error "XXX IMPLEMENT ME: marshal-query"))

;;; dispatch tables
(def +backend-messages+
  (make-vector 256))
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
  (SASLInitialResponse      #\p (marshal-fail 'SASLInitialResponse)) ; TODO
  (SASLResponse             #\p (marshal-fail 'SASLResponse)) ; TODO
  (Sync                     #\S  marshal-empty)
  (Terminate                #\X  marshal-empty))
