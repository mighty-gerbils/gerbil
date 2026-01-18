;;; -*- Gerbil -*-
;;; © vyzo
;;; serialization cyclic scanner
(import :std/interface)
(export #t)

(defstruct ScanEnv
  ((written       :- HashTable)
   (scanned       :- HashTable)
   (cycles        :- HashTable)
   (next          :- :fixnum)
   (allow-cycles? :- :boolean)
   (compress?     :- :boolean))
  constructor: :init!
  final: #t)

(defmethod {:init! ScanEnv}
  (lambda (self allow-cycles? compress?)
    (set! self.written (make-hash-table-eq))
    (set! self.scanned (make-hash-table-eq))
    (when allow-cycles?
      (set! self.cycles  (make-hash-table-eq)))
    (set! self.next 0)
    (set! self.allow-cycles? allow-cycles?)
    (set! self.compress? compress?)))

(def (reset-scan-env! (env : ScanEnv))
  (env.written.clear!)
  (env.scanned.clear!)
  (when env.allow-cycles?
    (env.cycles.clear!))
  (set! env.next 1))

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
        (apply-object-scanner obj env (cons obj path))
        id)))
    -1))

(def (apply-object-scanner obj (env : ScanEnv) (path : :list)) => :void
  (@call-interface-method ObjectScanner scan obj env path))

(def (acyclic-object? obj)
  (or (immediate? obj)
      (let (klass (class-of obj))
        (class-type-acyclic? klass))))

(defmethod {scan! :object}
  (lambda (self env path)
    XXX
    )
  interface: ObjectScanner)
