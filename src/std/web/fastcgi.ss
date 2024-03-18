;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; fastcgi support

(import :gerbil/gambit
        :std/error
        :std/format
        :std/sugar
        :std/iter
        :std/logger
        :std/net/address
        :std/text/utf8
        )
(export
  start-fastcgi-server!
  fastcgi-request?
  fastcgi-request-role
  fastcgi-request-params
  fastcgi-request-stdin
  fastcgi-write-stdout
  fastcgi-write-stderr
  fastcgi-request-end
  )

(deflogger fastcgi)

(defstruct fastcgi-request (port id keepalive role params stdin))

;; multi-threaded server; dispatch requests to respond
(def (start-fastcgi-server! address respond)
  (start-logger!)
  (spawn fastcgi-server
         (open-tcp-server (inet-address->string address))
         respond))

(def (fastcgi-server sock respond)
  (let lp ()
    (try
     (let (client (read sock))
       (spawn fastcgi-connection client respond))
     (catch (e)
       (errorf "error accepting connection: ~a" e)))
    (lp)))

(def (fastcgi-connection port respond)
  (def (loop)
    (let (req (fastcgi-accept port))
      (cond
       ((eof-object? req) #!void)
       ((eq? (fastcgi-request-role req) 'FCGI-RESPONDER)
        (respond req)
        (fastcgi-request-end req)
        (when (fastcgi-request-keepalive req)
          (loop)))
       (else
        (fastcgi-request-end req 1 FCGI-UNKNOWN-ROLE)
        (when (fastcgi-request-keepalive req)
          (loop))))))

  (try (loop)
    (catch (e)
      (errorf "error responding: ~a" e))
    (finally
     (with-catch void (cut close-port port)))))

;; accept a request in port => fastcgi-request or raise io-error
(def (fastcgi-accept port)
  (def (begin-request port)
    (match (fcgi-read-record port)
      ((values type reqid body)
       (cond
       ((eq? type FCGI-BEGIN-REQUEST)
        (let* (((values role flags)
                (fcgi-begin-request-e body))
               (keepalive (not (zero? (fxand flags FCGI-KEEP-CONN)))))
          (receive-request-data port reqid keepalive role)))
       ((eq? type FCGI-GET-VALUES)
        (let* ((keys (fcgi-get-values-e body))
               (resp (for/fold (r []) (key keys)
                       (case key
                         ((FCGI_MAX_CONNS)  (cons (cons key "1") r))
                         ((FCGI_MAX_REQS)   (cons (cons key "1") r))
                         ((FCGI_MPXS_CONNS) (cons (cons key "0") r))
                         (else r))))
               (data (fcgi-get-values-result-data resp)))
          (fcgi-write-record port FCGI-GET-VALUES-RESULT reqid data)
          (begin-request port)))
       ((eq? reqid 0)
        (fcgi-write-record port FCGI-UNKNOWN-TYPE reqid
                           (fcgi-unknown-type-data type))
        (begin-request port))
       (else
        (warnf "fastcgi-accept: unexpected message type ~a" type)
        (begin-request port))))
      ((? eof-object? eof) eof)))

  (def (receive-request-data port id keepalive role)
    (def params (make-hash-table-eq))

    (let lp ((end-params #f) (end-stdin #f) (stdin []))
      (if (and end-params end-stdin)
        (make-fastcgi-request port id keepalive
                              role params (u8vector-concatenate (reverse stdin)))
        (match (fcgi-read-record port)
          ((values type reqid body)
           (if (eq? reqid id)
             (cond
              ((eq? type FCGI-PARAMS)
               (if (zero? (u8vector-length body))
                 (lp #t end-stdin stdin)
                 (let (alist (fcgi-params-e body))
                   (for ([key . value] alist)
                     (hash-put! params key value))
                   (lp #f end-stdin stdin))))
              ((eq? type FCGI-STDIN)
               (if (zero? (u8vector-length body))
                 (lp end-params #t stdin)
                 (lp end-params #f (cons body stdin))))
              ((eq? type FCGI-ABORT-REQUEST)
               (raise-io-error fastcgi-accept "Connection aborted"))
              (else
               (warnf "fastcgi-accept: unexpected message type ~a" type)
               (lp end-params end-stdin stdin)))
             (begin
               (warnf "fastcgi-accept: unexpected message request ~a" reqid)
               (lp end-params end-stdin stdin))))
          ((? eof-object?)
           (raise-io-error fastcgi-accept "Premature port end" port))))))

  (begin-request port))

;; send output data
(def (fastcgi-write-stdout req data)
  (with ((fastcgi-request port reqid) req)
    (if port
      (fcgi-write-data port FCGI-STDOUT reqid data)
      (error "request ended; no port" req))))

;; send data to server error log
(def (fastcgi-write-stderr req data)
  (with ((fastcgi-request port reqid) req)
    (if port
      (fcgi-write-data port FCGI-STDERR reqid data)
      (error "request ended; no port" req))))

;; end request
(def (fastcgi-request-end req (app-status 0) (proto-status FCGI-REQUEST-COMPLETE))
  (with ((fastcgi-request port reqid) req)
    (when port
      (fcgi-write-record port FCGI-STDOUT reqid '#u8())
      (fcgi-write-record port FCGI-STDERR reqid '#u8())
      (fcgi-write-record port FCGI-END-REQUEST reqid
                         (fcgi-end-request-data app-status proto-status))
      (set! (fastcgi-request-port req) #f))))

;;; FCGI/1.0 Wire Protocol Implementation (client-side)
;; record type
(def FCGI-BEGIN-REQUEST      1)
(def FCGI-ABORT-REQUEST      2)
(def FCGI-END-REQUEST        3)
(def FCGI-PARAMS             4)
(def FCGI-STDIN              5)
(def FCGI-STDOUT             6)
(def FCGI-STDERR             7)
(def FCGI-DATA               8)
(def FCGI-GET-VALUES         9)
(def FCGI-GET-VALUES-RESULT 10)
(def FCGI-UNKNOWN-TYPE      11)
;; request roles
(def FCGI-RESPONDER  1)
(def FCGI-AUTHORIZER 2)
(def FCGI-FILTER     3)
;; request flags
(def FCGI-KEEP-CONN 1)
;; protocol status
(def FCGI-REQUEST-COMPLETE 0)
(def FCGI-CANT-MPX-CONN    1)
(def FCGI-OVERLOADED       2)
(def FCGI-UNKNOWN-ROLE     3)

(def (fcgi-read-record port)
  (let/cc return
    (let* ((head (make-u8vector 8))
           (rd   (read-subu8vector head 0 8 port))
           (_    (when (zero? rd)
                   (return (eof-object))))
           (_    (when (fx< rd 8)
                   (raise-io-error fcgi-read-record "incomplete record")))
           (ver  (u8vector-ref head 0))
           (_    (unless (= ver 1)
                   (raise-io-error fcgi-read-record "version mismatch" ver)))
           (type (u8vector-ref head 1))
           (rid  (fxior (fxarithmetic-shift (u8vector-ref head 2) 8)
                        (u8vector-ref head 3)))
           (clen (fxior (fxarithmetic-shift (u8vector-ref head 4) 8)
                        (u8vector-ref head 5)))
           (plen (u8vector-ref head 6))
           (dlen (fx+ clen plen))
           (data (make-u8vector dlen))
           (rd   (if (fxpositive? dlen)
                   (read-subu8vector data 0 dlen port)
                   rd))
           (_    (when (fx< rd dlen)
                   (raise-io-error fcgi-read-record "incomplete record")))
           (_    (when (fxpositive? plen)
                   (u8vector-shrink! data clen))))
      (values type rid data))))

(def (fcgi-read-key-value-pairs port)
  (def (read-length port)
    (let (nb0 (read-u8 port))
      (cond
       ((eof-object? nb0) nb0)
       ((zero? (fxarithmetic-shift nb0 -7)) nb0)
       (else
        (let* ((nb3 (fxand nb0 #x7f))
               (nb2 (read-u8 port))
               (_   (when (eof-object? nb2)
                      (raise-io-error fcgi-read-key-value-pairs "premature port end")))
               (nb1 (read-u8 port))
               (_   (when (eof-object? nb1)
                      (raise-io-error fcgi-read-key-value-pairs "premature port end")))
               (nb0 (read-u8 port))
               (_   (when (eof-object? nb0)
                      (raise-io-error fcgi-read-key-value-pairs "premature port end"))))
          (fxior (fxarithmetic-shift nb3 24)
                 (fxarithmetic-shift nb2 16)
                 (fxarithmetic-shift nb1 8)
                 nb0))))))

  (let lp ((klen (read-length port)) (r []))
    (if (eof-object? klen)
      (reverse r)
      (let* ((vlen  (read-length port))
             (_     (when (eof-object? vlen)
                      (raise-io-error fcgi-read-key-value-pairs "premature port end")))
             (kdata (make-u8vector klen))
             (rd    (read-subu8vector kdata 0 klen port))
             (_     (when (fx< rd klen)
                      (raise-io-error fcgi-read-key-value-pairs "premature port end")))
             (vdata (make-u8vector vlen))
             (rd    (read-subu8vector vdata 0 vlen port))
             (_     (when (fx< rd vlen)
                      (raise-io-error fcgi-read-key-value-pairs "premature port end")))
             (key   (string->symbol (utf8->string kdata)))
             (value (utf8->string vdata)))
        (lp (read-length port)
            (cons (cons key value) r))))))

(def (fcgi-write-record port type reqid data (start 0) (end #f))
  (let* ((head (make-u8vector 8))
         (end  (or end (u8vector-length data)))
         (clen (fx- end start)))
    (u8vector-set! head 0 1)
    (u8vector-set! head 1 type)
    (u8vector-set! head 2 (fxand (fxarithmetic-shift reqid -8) #xff))
    (u8vector-set! head 3 (fxand reqid #xff))
    (u8vector-set! head 4 (fxand (fxarithmetic-shift clen -8) #xff))
    (u8vector-set! head 5 (fxand clen #xff))
    (write-subu8vector head 0 8 port)
    (write-subu8vector data start end port)
    (force-output port)))

;; chunk data into records
(def (fcgi-write-data port type reqid data)
  (let* ((data (if (string? data)
                 (string->utf8 data)
                 data))
         (len (u8vector-length data)))
    (let lp ((start 0))
      (if (fx> (fx- len start) 65535)
        (let (end (fx+ start 65535))
          (fcgi-write-record port type reqid data start end)
          (lp end))
        (fcgi-write-record port type reqid data start len)))))

(def (fcgi-write-key-value-pairs port alst)
  (def (write-length port len)
    (if (fx< len 128)
      (write-u8 len port)
      (let ((nb3 (fxior (fxand (fxarithmetic-shift len -24) #x7f)
                        #x80))
            (nb2 (fxand (fxarithmetic-shift len -16) #xff))
            (nb1 (fxand (fxarithmetic-shift len -8)  #xff))
            (nb0 (fxand len #xff)))
        (write-u8 nb3 port)
        (write-u8 nb2 port)
        (write-u8 nb1 port)
        (write-u8 nb0 port))))

  (for ([key . value] alst)
    (let* ((kdata (string->utf8
                   (symbol->string
                    key)))
           (klen  (u8vector-length kdata))
           (vdata (if (string? value)
                    (string->utf8 value)
                    value))
           (vlen  (u8vector-length vdata)))
      (write-length port klen)
      (write-length port vlen)
      (write-subu8vector kdata 0 klen port)
      (write-subu8vector vdata 0 vlen port))))

(def (fcgi-begin-request-e data)
  (let ((role (fxior (fxarithmetic-shift (u8vector-ref data 0) 8)
                     (u8vector-ref data 1)))
        (flags (u8vector-ref data 2)))
    (cond
     ((eq? role FCGI-RESPONDER)
      (values 'FCGI-RESPONDER flags))
     ((eq? role FCGI-AUTHORIZER)
      (values 'FCGI-AUTHORIZER flags))
     ((eq? role FCGI-FILTER)
      (values 'FCGI-FILTER flags))
     (else
      (values role flags)))))

(def (fcgi-get-values-e data)
  (map car (fcgi-read-key-value-pairs (open-input-u8vector data))))

(def (fcgi-params-e data)
  (fcgi-read-key-value-pairs (open-input-u8vector data)))

(def (fcgi-get-values-result-data alst)
  (let (outp (open-output-u8vector))
    (fcgi-write-key-value-pairs outp alst)
    (get-output-u8vector outp)))

(def (fcgi-unknown-type-data type)
  (let (data (make-u8vector 8))
    (u8vector-set! data 0 type)
    data))

(def (fcgi-end-request-data app-status proto-status)
  (let (data (make-u8vector 8))
    (u8vector-set! data 0 (fxand (fxarithmetic-shift app-status -24) #xff))
    (u8vector-set! data 1 (fxand (fxarithmetic-shift app-status -16) #xff))
    (u8vector-set! data 2 (fxand (fxarithmetic-shift app-status -8)  #xff))
    (u8vector-set! data 3 (fxand app-status #xff))
    (u8vector-set! data 4 proto-status)
    data))
