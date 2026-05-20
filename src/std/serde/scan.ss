;;; -*- Gerbil -*-
;;; © vyzo
;;; serialization scanner
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

(interface ObjectScanner
  (scan! (env : ScanEnv) (path : :list)) => :void)

(defmethod {:init! ScanEnv}
  (lambda (self allow-cycles? compress?)
    (set! self.written (make-hash-table-eq))
    (set! self.scanned (make-hash-table-eq))
    (set! self.cycles (make-hash-table-eq))
    (set! self.next 0)
    (set! self.allow-cycles? allow-cycles?)
    (set! self.compress? compress?)))

(def (reset-scan-env! (env : ScanEnv))
  (env.written.clear!)
  (env.scanned.clear!)
  (env.cycles.clear!)
  (set! env.next 1))

(def (scan-object! obj (env : ScanEnv) (path [] : :list)) => :fixnum
  (cond
   ((or (and env.compress? (immediate? obj))
	(acyclic-object? obj))
    -1)
   ((hash-get env.scanned obj)
    => (lambda (e) => :fixnum
          (if env.compress?
            (using ((e             :- :pair)
                    (id    (car e) :- :fixnum)
                    (count (cdr e) :- :fixnum))
              (set! (cdr e) (fx1+ count))
              (unless (env.cycles.ref obj #f)
                (when (memq obj path)
                  (if env.allow-cycles?
                    (env.cycles.set! obj id)
                    (raise-contract-violation-error scan-object! "acyclic object" (class-of obj)))))
              id)
            (using (id e :- :fixnum)
              (unless (env.cycles.ref obj #f)
                (when (memq obj path)
                  ;; it's a cycle
                  (if env.allow-cycles?
                    (env.cycles.set! obj id)
                    (raise-contract-violation-error scan-object! "acyclic object" (class-of obj)))))
              id))))
     (else
      (let (id env.next)
        (set! env.next (fx1+ id))
        (hash-put! env.scanned obj (if env.compress? (cons id 1) id))
        (apply-object-scanner obj env (cons obj path))
        id))))

(def (apply-object-scanner obj (env : ScanEnv) (path : :list)) => :void
  (__object-scan! obj env path))

(defcall-interface-method ObjectScanner scan!
  (__object-scan! obj env path))

(def (acyclic-object? obj)
  (or (immediate? obj)
      (let (klass (class-of obj))
        (class-type-acyclic? klass))))
