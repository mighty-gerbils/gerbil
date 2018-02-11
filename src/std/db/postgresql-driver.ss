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
        :std/db/dbi)
(export #t)

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
        (['PortalSuspended]
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
        (['PortalSuspended]
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
  (error "XXX IMPLEMENT ME: postgresql-send!")
  )

(def (postgresql-recv! sock buf)
  (error "XXX IMPLEMENT ME: postgresql-recv!")
  )
