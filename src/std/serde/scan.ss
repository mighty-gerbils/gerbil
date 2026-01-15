;;; -*- Gerbil -*-
;;; © vyzo
;;; serialization cyclic scanner
(import :std/interface)
(export #t)

(defclass ScanEnv
  ((written       :- HashTable)
   (scanned       :- HashTable)
   (cycles        :- HashTable)
   (next          :- :fixnum)
   (allow-cycles? :- :boolean)
   (compress?     :- :boolean))
  final: #t)

(interface ObjectScanner
  (scan! (env : ScanEnv) (path : :list)) => :void)

(defstruct opaque ((obj))
  final: #t acyclic: #t)

(def (scan-object! obj (env : ScanEnv) (path : :list := [])) => :fixnum
  (if (or env.compress? (not (acyclic-object? obj)))
    (cond
     ((hash-get env.scanned)
      => (lambda (e) => :fixnum
           (if env.compress?
             (using ((e             :- :pair)
                     (id    (car e) :- :fixnum)
                     (count (cdr e) :- :fixnum))
               (set! (cdr e) (fx1+ count))
               (when (memq obj path)
                 (if env.allow-cycles?
                   (hash-put! env.cycles obj id)
                   (raise-contract-violation-error scan-object! "acyclic object" object: (opaque obj))))
               id)
             (using (id :- :fixnum)
               (when (memq obj path)
                 ;; it's a cycle
                 (if env.allow-cycles?
                   (hash-put! env.cycles obj id)
                   (raise-contract-violation-error scan-object! "acyclic object" object: (opaque obj))))
               id))))
     (else
      (let (id env.next)
        (set! env.next (fx1+ id))
        (hash-put! env.scanned obj (if env.compress? (cons id 1) id))
        (let (method (get-object-scanner obj))
          (method (@object obj) env (cons obj path)))
        id)))
    -1))

(def (acyclic-object? obj)
  (let (klass (class-of obj))
    (class-type-acyclic? klass)))

(def (get-object-scanner obj) => :procedure
  (get-interface-method-by-index ObjectScanner::interface
                                 obj
                                 (@interface-method-index ObjectScanner scan)))

(defmethod {scan! :object}
  (lambda (self env path)
    XXX
    )
  interface: ObjectScanner)
