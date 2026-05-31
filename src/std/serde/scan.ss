;;; -*- Gerbil -*-
;;; © vyzo
;;; serialization scanner
(import :std/interface
        :std/error)
(export #t)

(defstruct ScanContext
  ((written       :- HashTable)
   (scanned       :- HashTable)
   (cycles        :- HashTable)
   (next          :- :fixnum)
   (allow-cycles? :- :boolean)
   (compress?     :- :boolean)
   (all-slots?    :- :boolean))
  constructor: :init!
  final: #t)

(interface ObjectScanner
  (scan! (ctx : ScanContext) (path : :list)) => :void)

(defmethod {:init! ScanContext}
  (lambda (self allow-cycles? compress? all-slots?)
    (set! self.written (make-hash-table-eq))
    (set! self.scanned (make-hash-table-eq))
    (set! self.cycles (make-hash-table-eq))
    (set! self.next 0)
    (set! self.allow-cycles? allow-cycles?)
    (set! self.compress? compress?)
    (set! self.all-slots? all-slots?)))

(def (reset-scan-ctx! (ctx : ScanContext))
  (ctx.written.clear!)
  (ctx.scanned.clear!)
  (ctx.cycles.clear!)
  (set! ctx.next 0))

(def (scan-object! obj (ctx : ScanContext) (path [] : :list)) => :fixnum
  (cond
   ((or (and ctx.compress? (immediate? obj))
	(acyclic-object? obj))
    -1)
   ((hash-get ctx.scanned obj)
    => (lambda (e) => :fixnum
          (if ctx.compress?
            (using ((e             :- :pair)
                    (id    (car e) :- :fixnum)
                    (count (cdr e) :- :fixnum))
              (set! (cdr e) (fx1+ count))
              (unless (ctx.cycles.ref obj #f)
                (when (memq obj path)
                  (if ctx.allow-cycles?
                    (ctx.cycles.set! obj id)
                    (raise-contract-violation scan-object! "acyclic object" (class-of obj)))))
              id)
            (using (id e :- :fixnum)
              (unless (ctx.cycles.ref obj #f)
                (when (memq obj path)
                  ;; it's a cycle
                  (if ctx.allow-cycles?
                    (ctx.cycles.set! obj id)
                    (raise-contract-violation scan-object! "acyclic object" (class-of obj)))))
              id))))
     (else
      (let (id ctx.next)
        (set! ctx.next (fx1+ id))
        (hash-put! ctx.scanned obj (if ctx.compress? (cons id 1) id))
        (apply-object-scanner obj ctx (cons obj path))
        id))))

(def (apply-object-scanner obj (ctx : ScanContext) (path : :list)) => :void
  (__object-scan! obj ctx path))

(defcall-interface-method ObjectScanner scan!
  (__object-scan! obj ctx path))

(def (acyclic-object? obj)
  (or (immediate? obj)
      (let (klass (class-of obj))
        (class-type-acyclic? klass))))
