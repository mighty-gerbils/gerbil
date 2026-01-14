;;; -*- Gerbil -*-
;;; © vyzo
;;; stdio writing
(import :std/error
        :std/interface
        :std/io
        :std/io/bio)
(export #t)

(defclass ScanEnv
  ((written       :- HashTable)
   (scanned       :- HashTable)
   (cycles        :- HashTable)
   (next          :- :fixnum)
   (allow-cycles? :- :boolean))
  final: #t)

(defstruct WriteEnv
  ((scan      :? ScanEnv)
   (display?  :  :boolean))
  XXX)

(interface ObjectWriter
  (write (writer : BufferedWriter) (env : WriteEnv)) => :fixnum)

(interface ObjectScanner
  (scan! (env : ScanEnv) (path : :list)) => :void)

(defwriter-ext (write-object-raw writer obj (env : WriteEnv)) => :fixnum
  (let (method (get-object-writer obj))
    (:- (method (@object obj) writer env) :fixnum)))

(defwriter-ext (write-object writer obj (env : WriteEnv)) => :fixnum
  (defrule (write-it)
    (writer.write-object-raw obj env))

  (def (write-it/cycles (senv :- ScanEnv)) => :fixnum
    (cond
     ((hash-get senv.written obj)
      (write-it-again/cycles senv))
     (else
      (let (id (scan-object! obj senv))
        (hash-put! env.written obj id)
        (cond
         ((hash-get senv.cycles obj)
          => (lambda ((ref :- :fixnum)) => :fixnum
                (writer.write-anchor obj ref env)))
         (else
          (write-it)))))))

  (def (write-it-again/cycles (senv :- ScanEnv)) => :fixnum
    (cond
     ((hash-get senv.cycles)
      => (lambda ((ref :- :fixnum)) => :fixnum
            (writer.write-reference ref env)))
     (else
      (write-it))))

  (if env.scan
    (write-it/cycles env.scan)
    (write-it)))

(def (scan-object! obj (env : ScanEnv) (path : :list := [])) => :fixnum
  (cond
   ((hash-get env.seen)
    => (lambda ((id :- :fixnum)) => :fixnum
         (when (memq obj path)
           ;; it's a cycle
           (unless env.allow-cycles?
             (raise-contract-violation-error scan-object! "acyclic object" object: obj))
           (hash-put! env.cycles obj id))
         id))
   (else
    (let (id env.next)
      (set! env.next (fx1+ id))
      (hash-put! env.seen obj id)
      (let (method (get-object-scanner obj))
        (method (@object obj) env (cons obj path)))
      id))))

(defwriter-ext (write-anchor writer obj (ref : :fixnum) (env : WriteEnv))
  XXX)

(defwriter-ext (write-reference write (ref : :fixnum) (env : WriteEnv))
  XXX)

(def (get-object-writer obj) => :procedure
  (get-interface-method-by-index ObjectWriter::interface
                                 obj
                                 (@interface-method-index ObjectWriter write)))

(def (get-object-scanner obj) => :procedure
  (get-interface-method-by-index ObjectScanner::interface
                                 obj
                                 (@interface-method-index ObjectScanner scan)))

(def (default-write-environment) => WriteEnv
  XXX
  )
