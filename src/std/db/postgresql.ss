;;; -*- Gerbil -*-
;;; (C) vyzo, drewc
;;; PostgreSQL dbi interface

(import :std/error
        :std/contract
        :std/db/dbi
        :std/db/postgresql-driver
        :std/iter
        :std/misc/channel
        :std/misc/list
        :std/net/ssl
        :std/pregexp
        :std/srfi/19)
(export postgresql-connect
        (struct-out postgresql-command
                    postgresql-statement
                    postgresql-query)
        defcatalog
        defcatalog-default
        default-catalog
        current-catalog)

(defstruct (postgresql-connection connection) (host port user db)
  print: (host port user db)
  constructor: :init!
  final: #t unchecked: #t)

(defmethod {:init! postgresql-connection}
  (lambda (self driver host port user db)
    (connection:::init! self driver)
    (using (self :- postgresql-connection)
      (set! self.host host)
      (set! self.port port)
      (set! self.user user)
      (set! self.db db))))

(def (postgresql-connect (url #f)
                         host: (host "127.0.0.1")
                         port: (port 5432)
                         user: (user #f)
                         passwd: (passwd #f)
                         db: (db #f)
                         ssl?: (ssl? 'try)
                         ssl-context: (ssl-context (default-client-ssl-context))
                         timeout: (timeout #f))
  (when url
    (match (parse-postgres-database-url url)
      ([h p d u pw params]
       ;; TODO handle all parameters in
       ;; https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-PARAMKEYWORDS
       (set! (values host port db user passwd) (values h p d u pw)))
      (else (error "Invalid database url" database-url))))
  (unless user
    (set! user (or (getenv "LOGNAME" #f)
                   (error "No user specified"))))
  (unless passwd
    (set! passwd ""))
  (unless db
    (set! db user))
  (let (driver (postgresql-connect! host port user passwd db ssl? ssl-context timeout))
    (make-postgresql-connection driver host port user db)))

;; Parse a Postgres connection string as per
;; https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNSTRING
;; also used by e.g. heroku's DATABASE_URL, or JDBC.
;; TODO: make database optional, default to user, default to $LOGNAME or such?
;; : String -> (Tuple String (OrFalse Nat) String (OrFalse String) (OrFalse String) (OrFalse String))
(def (parse-postgres-database-url url)
  (match (pregexp-match "^postgres://(([^:/@?]+)(:([^:/@?]*))?@)?([^:/@?]+)(:([0-9]+))?/([^:/@?]+)([?](.*))?$" url)
    ([_ userpass user pass? pass host port? port database params? params]
     [host (and port (string->number port)) database
           (and userpass user) (and pass? pass) (and params? params)])
    (else #f)))

(defmethod {close postgresql-connection}
  postgresql-close!)

(defstruct (postgresql-command statement) (conn complete notices input token)
  constructor: :init!
  unchecked: #t
  print: (complete))

(defstruct !unnamed () final: t)
(def unnamed-command (make-!unnamed))

(defmethod {:init! postgresql-command}
  (lambda (self conn name: (name unnamed-command) complete: (complete #f))
    (statement:::init! self name)
    (using (self :- postgresql-command)
      (set! self.conn conn)
      (set! self.complete complete)
      (set! self.notices  []))))

(defmethod {bind postgresql-command} void)
(defmethod {exec postgresql-command} void)
(defmethod {clear postgresql-command} void)
(defmethod {finalize postgresql-command} void)
(defmethod {query-start postgresql-command} void)
(defmethod {query-fini postgresql-command} postgresql-command::reset)
(defmethod {query-fetch postgresql-command} (lambda _ iter-end))
(defmethod {query-row postgresql-command} postgresql-command-complete)
(defmethod {columns postgresql-command} (lambda _ '()))

(def (wrap-notice-handler cmd thunk)
  (with-postgresql-notice-handler
   (postgresql-command-conn cmd)
   (lambda args
     (push! args (postgresql-command-notices cmd)))
   thunk))

(defmethod {reset postgresql-command}
  (lambda (self)
    (using (self :- postgresql-command)
      (alet (token self.token)
        (postgresql-reset! self.conn token)
        (set! self.token #f)
        (set! self.input #f)))))

(defstruct (postgresql-statement postgresql-command) (cols params bind row)
  constructor: :init!
  final: #t unchecked: #t)

(defalias postgresql-statement-name statement-e)

(defmethod {:init! postgresql-statement}
  (lambda (self conn name: (name unnamed-command)
           cols params: (params []))
    (postgresql-command:::init! self conn name: name)
    (using (self :- postgresql-statement)
      (set! self.cols cols)
      (set! self.params params))))

(defmethod {query-row postgresql-statement}
  (lambda (self)
    (&postgresql-statement-row self)))

(defmethod {columns postgresql-statement}
  (lambda (self)
    (using (self :- postgresql-statement)
      (map car self.cols))))

(defmethod {query-fini postgresql-statement}
   postgresql-statement::reset)

(def (postgresql-statement-in-query? stmt)
  (!unnamed? (statement-e stmt)))

(defmethod {query-start postgresql-statement}
  (lambda (self)
    (using (self :- postgresql-statement)
      (wrap-notice-handler self
        (cut unless (postgresql-statement-in-query? self)
             (let ((values inp token)
                   (postgresql-query! self.conn self.e (or self.bind [])))
               (set! self.token token)
               (set! self.input inp)
               (set! self.row #f)))))))

(defmethod {query-fetch postgresql-statement}
  (lambda (self)
    (using (self :- postgresql-statement)
      (def (result->row cols)
        (let (res (map result->value cols self.cols))
          (cond
           ((null? res) #f)
           ((null? (cdr res))
            (car res))
           (else
            (list->vector res)))))

      (def (result->value res col)
        (and res                        ; NULL is #f
             (let (type-oid (list-ref col 3))
               (value-e res type-oid))))

      (def (value-e res type-oid)
        (cond
         ((catalog-deserializer (current-catalog) type-oid)
          => (cut <> res))
         (else res)))

      (cond
       (self.input
        => (lambda (inp)
             (let again ()
               (let (next (channel-get inp))
                 (cond
                  ((or (eof-object? next) (postgresql-CommandComplete? next))
                   (when (postgresql-CommandComplete? next)
                     (set! self.complete
                       (postgresql-message-args next)))
                   (set! self.token #f)
                   (set! self.input #f)
                   (set! self.row #f)
                   iter-end)
                  ((exception? next)
                   (raise next))
                  ((query-token? next)
                   (postgresql-continue! self.conn next)
                   (again))
                  (else
                   (let (row (result->row next))
                     (set! self.row row)
                     (void))))))))
       (else iter-end)))))

(defmethod {prepare postgresql-connection}
  (lambda (self sql)
    (let* ((name (symbol->string (gensym 'stmt)))
           ((values params cols)
            (postgresql-prepare-statement! self name sql)))
      (make-postgresql-statement self name: name cols params: params))))

(defmethod {bind postgresql-statement}
  (lambda (self . args)
    (using (self :- postgresql-statement)
      (def (value->binding type-oid arg)
        (cond
         ((not arg)
          ;; #f is NULL normally ... unless it's a BOOL
          (if (fx= type-oid 16)
            (serialize-boolean arg)
            #f))
         ((string? arg) arg)
         ((catalog-serializer (current-catalog) type-oid)
          => (cut <> arg))
         (else
          (raise-bad-argument postgresql "catalog parameter: unknown" type-oid arg))))
      (let* ((params self.params)
             (bind (map value->binding params args)))
        (set! self.bind bind)
        (void)))))

(defmethod {clear postgresql-statement}
  (lambda (self)
    (using (self :- postgresql-statement)
      (set! self.bind #f))))

(defmethod {exec postgresql-statement}
  (lambda (self)
    (using (self :- postgresql-statement)
      (wrap-notice-handler self
       (cut let (comp (postgresql-exec! self.conn self.e (or self.bind [])))
            (begin0 comp
              (set! (&postgresql-command-complete self) comp)))))))

(defmethod {finalize postgresql-statement}
  (lambda (self)
    (postgresql-statement::reset self)
    (using (self :- postgresql-statement)
      (set! self.complete #f)
      (postgresql-close-statement! self.conn self.e))))

(defmethod {reset postgresql-statement}
  (lambda (self)
    (postgresql-command::reset self)
    (using (self :- postgresql-statement)
      (set! self.row #f))))

(defstruct (postgresql-query postgresql-command) (str cmd greedy)
  constructor: :init!
  print: (greedy str)
  final: #t unchecked: #t)

(defmethod {:init! postgresql-query}
  (lambda (self conn str greedy: (greedy #t))
    (postgresql-command:::init! self conn name: unnamed-command)
    (using (self :- postgresql-query)
      (set! self.str str)
      (set! self.greedy greedy))))

(defmethod {exec postgresql-query}
  (lambda (self)
    (postgresql-query::query-start self)
    (using (self :- postgresql-query)
      (wrap-notice-handler self
        (cut postgresql-reset! self.conn self.token)))))

(defmethod {query-row postgresql-query} &postgresql-query-cmd)

(defmethod {query-start postgresql-query}
  (lambda (self)
    (using (self :- postgresql-query)
      (wrap-notice-handler self
        (cut let ((values inp token) (postgresql-simple-query! self.conn self.str))
             (set! self.token token)
             (set! self.input inp))))))

(defmethod {query-fetch postgresql-query}
  (lambda (self)
    (using (self :- postgresql-query)
      (def greedy-in #f)
      (wrap-notice-handler self
        (lambda ()
          (let ((cmd self.cmd)
                (greedy self.greedy))
            (using (cmd :- postgresql-command)
              (if (not self.input) iter-end
                  (let again ()
                    (let (next (channel-get self.input))
                      (cond
                       ((eof-object? next)
                        (set! self.token #f)
                        (set! self.input #f)
                        (set! self.complete #t)
                        iter-end)
                       ((exception? next)
                        (raise next))
                       ((query-token? next)
                        (postgresql-continue! self.conn next)
                        (again))
                       ((postgresql-CommandComplete? next)
                        (let ((comp (postgresql-message-args next)))
                          (when (and cmd (not greedy))
                            (set! cmd.input #f))
                          (when greedy-in
                            (channel-sync greedy-in next)
                            (set! greedy-in #f))
                          (cond ((or (not cmd) cmd.complete)
                                 (set! self.cmd
                                   (make-postgresql-command self.conn complete: comp)))
                                (else
                                 (set! cmd.complete comp)))
                          (cond ((not greedy)
                                 (set! self.cmd #f)
                                 (set! cmd #f)
                                 (again))
                                (else
                                 (void)))))
                       ((postgresql-RowDescription? next)
                        (let (stmt (make-postgresql-statement
                                    self.conn (postgresql-message-args next)))
                          (using (stmt :- postgresql-statement)
                            (set! self.cmd stmt)
                            (set! cmd stmt)
                            (cond ((not greedy)
                                   (set! stmt.input self.input)
                                   (void))
                                  (else
                                   (set! greedy-in (make-channel))
                                   (set! stmt.input greedy-in)
                                   (again))))))
                       (else
                        (when greedy-in (channel-sync greedy-in next))
                        (again)))))))))))))

;;; catalog/pg_type.h
(defstruct catalog (s d)
  constructor: :init!
  final: #t)

(defmethod {:init! catalog}
  (lambda (self . mixin)
    (let ((s (make-hash-table-eq))
          (d (make-hash-table-eq)))
      (for-each
        (lambda (mixin)
          (hash-merge! s (catalog-s mixin))
          (hash-merge! d (catalog-d mixin)))
        mixin)
      (struct-instance-init! self s d))))

(def (catalog-serializer c oid)
  (hash-get (catalog-s c) oid))

(def (catalog-deserializer c oid)
  (hash-get (catalog-d c) oid))

(defrules defcatalog ()
  ((_ (name mixin ...) (oids serialize deserialize) ...)
   (begin
     (def name (make-catalog mixin ...))
     (defcatalog-type name oids serialize deserialize) ...))
  ((recur name . body)
   (identifier? #'name)
   (recur (name) . body)))

(defrules defcatalog-type ()
  ((_ name (oid ...) serialize deserialize)
   (begin
     (hash-put! (catalog-s name) oid serialize) ...
     (hash-put! (catalog-d name) oid deserialize) ...)))

(defrules defcatalog-default ()
  ((_ clause ...)
   (begin
     (defcatalog-type default-catalog . clause)
     ...)))

(def (serialize-boolean arg)
  (if arg "t" "f"))

(def (deserialize-boolean str)
  (if (member str '("t" "true" "TRUE" "y" "yes" "on" "1")) #t #f))

(def (serialize-date date)
  (date->string date "~Y-~m-~d"))

(def (deserialize-date str)
  (string->date str "~Y-~m-~d"))

(def (serialize-timestamp date)
  (date->string date "~Y-~m-~d ~H:~M:~S"))

(def (deserialize-timestamp str)
  (string->date str "~Y-~m-~d ~H:~M:~S"))

(def (serialize-timestamptz date)
  (date->string date "~Y-~m-~d ~H:~M:~S~z"))

(def (deserialize-timestamptz str)
  (string->date str "~Y-~m-~d ~H:~M:~S~z"))

(def (identity-string obj)
  (if (string? obj) obj
      (raise-bad-argument postgresql "string" obj)))

(defcatalog default-catalog
  ;; BOOLOID
  ((16) serialize-boolean deserialize-boolean)
  ;; INT8OID INT2OID INT4OID FLOAT4OID FLOAT8OID NUMERICOID
  ((20 21 23 700 701 1700) number->string string->number)
  ;; CHAROID TEXTOID BPCHAROID VARCHAROID
  ((18 25 1042 1043) identity-string identity)
  ;; DATEOID
  ((1082) serialize-date deserialize-date)
  ;; TIMESTAMPOID
  ((1114) serialize-timestamp deserialize-timestamp)
  ;; TIMESTAMPTZOID
  ((1184) serialize-timestamptz deserialize-timestamptz)

  ;; Add more from the catalog here depending on actual needs...
  ;; - automagic json serialization/deserialization?
  ;;   add JSONOID with json-object->string string->json-object
  ;; - automagic uuid conversion?
  ;;   add UUIDOID with uuid->string string->uuid
  )

(def current-catalog
  (make-parameter default-catalog))

