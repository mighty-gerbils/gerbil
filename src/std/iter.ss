;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Iterations and comprehensions
package: std

(import :gerbil/gambit/ports
        :gerbil/gambit/misc
        :std/generic
        :std/coroutine
        )
(export
  (struct-out iterator)
  iter :iter iter-end iter-end? iter-next! iter-fini!
  for for* for/collect for/fold
  in-iota in-range in-naturals in-hash in-hash-keys in-hash-values
  in-input-port in-input-lines in-input-chars in-input-bytes
  in-coroutine in-cothread
  yield
  )

(defstruct iterator (e next fini)
  constructor: :init! unchecked: #t final: #t)

(defmethod {:init! iterator}
  (lambda (self e next (fini void))
    (struct-instance-init! self e next fini)))

(defstruct :iter-end ())
(def iter-end
  (make-:iter-end))
(def (iter-end? obj)
  (eq? iter-end obj))

(def (iter obj)
  (if (iterator? obj) obj
      (:iter obj)))

(defgeneric :iter)
(defmethod (:iter (it iterator))
  it)
(defmethod (:iter (obj <pair>))
  (iter-list obj))
(defmethod (:iter (obj <null>))
  (iter-null))
(defmethod (:iter (obj <vector>))
  (iter-vector obj))
(defmethod (:iter (obj <string>))
  (iter-string obj))
(defmethod (:iter (obj <hash-table>))
  (iter-hash-table obj))
(defmethod (:iter (obj <procedure>))
  (iter-coroutine obj))
(defmethod (:iter (obj <port>))
  (if (input-port? obj)
    (iter-input-port obj)
    (error "Cannot iterate on port; not an input-port" obj)))
(defmethod (:iter (obj <object>))
  {:iter obj})

(def (iter-null)
  (make-iterator iter-end iterator-e))

(def (iter-list lst)
  (def (next it)
    (with ((iterator e) it)
      (match e
        ([hd . rest]
         (set! (&iterator-e it) rest)
         hd)
        (else iter-end))))
  (make-iterator lst next))

(def (iter-vector vec (length-e ##vector-length) (ref-e ##vector-ref))
  (def (next it)
    (with ((iterator e) it)
      (with ([vec . index] e)
        (if (##fx< index (length-e vec))
          (let (v (ref-e vec index))
            (set! (cdr e) (##fx+ index 1))
            v)
          iter-end))))
  (make-iterator (cons vec 0) next))

(def (iter-string str)
  (iter-vector str ##string-length ##string-ref))

(def (iter-hash-table ht)
  (def (iterate)
    (hash-for-each yield ht))
  (iter-coroutine iterate))

(def (iter-coroutine proc)
  (def (next it)
    (with ((iterator cort) it)
      (continue cort)))
  (let (cort (coroutine (lambda () (proc) iter-end)))
    (make-iterator cort next)))

(def (iter-cothread proc)
  (def (next it)
    (with ((iterator cothr) it)
      (continue cothr)))
  (def (fini it)
    (let (cothr (&iterator-e it))
      (when cothr
        (cothread-stop! cothr)
        (set! (&iterator-e it) #f))))
  (let* ((cothr (cothread (lambda () (proc) iter-end)))
         (it (make-iterator cothr next fini)))
    (make-will it fini)
    it))

(def (iter-input-port port (read-e read))
  (def (next it)
    (with ((iterator port) it)
      (let (val (read-e port))
        (if (eof-object? val)
          iter-end
          val))))
  (make-iterator port next))

(def (iter-in-iota start count step)
  (def (next it)
    (with ((iterator e) it)
      (with ([value . limit] e)
        (if (##fx> limit 0)
          (begin
            (set! (car e) (+ value step))
            (set! (cdr e) (##fx- limit 1))
            value)
          iter-end))))
  (if (and (number? start) (fixnum? count) (number? step))
    (make-iterator (cons start count) next)
    (error "Parameters are of wrong type (count:fixnum start:number step:number)."
      [count start step])))

(def* in-iota
  ((count) (iter-in-iota 0 count 1))
  ((count start) (iter-in-iota start count 1))
  ((count start step) (iter-in-iota start count step)))

(def (iter-in-range start end step)
  (unless (and (real? start) (real? end) (real? step))
    (error "Parameters are of wrong type (start:real end:real step:real)."
      [start end step]))
  (def cmp (if (##negative? step) ##> ##<))
  (def (next it)
    (with ((iterator e) it)
      (if (cmp e end)
        (begin
          (set! (&iterator-e it) (##+ e step))
          e)
        iter-end)))
  (make-iterator start next))

(def* in-range
  ((end) (iter-in-range 0 end 1))
  ((start end) (iter-in-range start end 1))
  ((start end step) (iter-in-range start end step)))

(def (in-naturals (start 0) (step 1))
  (def (next it)
    (with ((iterator value) it)
      (let (value+step (+ value step))
        (set! (&iterator-e it) value+step)
        value)))
  (make-iterator start next))

(def (in-hash ht)
  (iter-hash-table ht))

(def (in-hash-keys ht)
  (def (iterate)
    (hash-for-each (lambda (k v) (yield k)) ht))
  (iter-coroutine iterate))

(def (in-hash-values ht)
  (def (iterate)
    (hash-for-each (lambda (k v) (yield v)) ht))
  (iter-coroutine iterate))

(def (in-input-port obj (read-e read))
  (iter-input-port obj read-e))

(def (in-input-lines obj)
  (iter-input-port obj read-line))

(def (in-input-chars obj)
  (iter-input-port obj read-char))

(def (in-input-bytes obj)
  (iter-input-port obj read-u8))

(def (in-coroutine proc . args)
  (iter-coroutine (if (null? args) proc (cut apply proc args))))

(def (in-cothread proc . args)
  (iter-cothread (if (null? args) proc (cut apply proc args))))

(def (iter-next! it)
  ((&iterator-next it) it))

(def (iter-fini! it)
  ((&iterator-fini it) it))

(def (iter-filter pred it)
  (def (iterate)
    (for (val it)
      (when (pred val)
        (yield val))))
  (iter-coroutine iterate))

(begin-syntax
  (def (for-binding? bind)
    (syntax-case bind (when unless)
      ((pat expr) (match-pattern? #'pat))
      ((pat expr when filter-expr) (match-pattern? #'pat))
      ((pat expr unless filter-expr) (match-pattern? #'pat))
      (_ #f)))

  (def (for-binding-expr binding)
    (syntax-case binding (when unless)
      ((bind bind-e) #'bind-e)
      ((bind bind-e when filter-e)
       #'(iter-filter (match <> (bind filter-e)) bind-e))
      ((bind bind-e unless filter-e)
       #'(iter-filter (match <> (bind (not filter-e))) bind-e))))

  (def (for-binding-bind binding)
    (syntax-case binding ()
      ((bind bind-e . _) #'bind))))

(defsyntax (for stx)
  (def (generate-for bindings body)
    (if (fx= (length bindings) 1)
      (generate-for1 (car bindings) body)
      (generate-for* bindings body)))

  (def (generate-for1 bind body)
    (with-syntax
        ((iter-e (for-binding-expr bind))
         (bind-e (for-binding-bind bind))
         ((body ...) body))
      #'(let ((iterable iter-e)
              (iter-do
               (lambda (val)
                 (with ((bind-e val))
                   body ...))))
          (cond
           ;; speculatively inline list iteration
           ((pair? iterable)
            (for-each iter-do iterable))
           ((null? iterable))
           (else
            ;; full iteration protocol
            (let (it (iter iterable))
              (let lp ()
                (let (val (iter-next! it))
                  (unless (eq? iter-end val)
                    (iter-do val)
                    (lp))))
              (iter-fini! it)
              (void)))))))

  (def (generate-for* bindings body)
    (with-syntax
        (((it ...)
          (gentemps bindings))
         ((iter-e ...)
          (stx-map for-binding-expr bindings))
         ((bind-id ...)
          (gentemps bindings))
         ((bind-e ...)
          (stx-map for-binding-bind bindings))
         ((body ...) body))
      #'(let ((it (iter iter-e)) ...)
          (let lp ()
            (let ((bind-id (iter-next! it)) ...)
              (unless (or (eq? iter-end bind-id) ...)
                (with ((bind-e bind-id) ...)
                  body ...)
                (lp))))
          (iter-fini! it) ...
          (void))))

  (syntax-case stx ()
    ((_ bind body ...)
     (for-binding? #'bind)
     (generate-for [#'bind] #'(body ...)))
    ((_ (bind ...) body ...)
     (stx-andmap for-binding? #'(bind ...))
     (generate-for #'(bind ...) #'(body ...)))))

(defrules for* ()
  ((recur (bind . rest) body ...)
   (for (bind) (recur rest body ...)))
  ((_ () body ...)
   (begin body ...)))

(defsyntax (for/collect stx)
  (def (generate-for bindings body)
    (if (fx= (length bindings) 1)
      (generate-for1 (car bindings) body)
      (generate-for* bindings body)))

  (def (generate-for1 bind body)
    (with-syntax
        ((iter-e (for-binding-expr bind))
         (bind-e (for-binding-bind bind))
         ((body ...) body))
      #'(let ((iterable iter-e)
              (iter-do
               (lambda (val)
                 (with ((bind-e val))
                   body ...))))
          (cond
           ;; speculatively inline list iteration
           ((pair? iterable)
            (map iter-do iterable))
           ((null? iterable) [])
           (else
            ;; full iteration protocol
            (let (it (iter iterable))
              (let lp ((rval []))
                (let (val (iter-next! it))
                  (if (eq? iter-end val)
                    (begin
                      (iter-fini! it)
                      (reverse rval))
                    (let (xval (iter-do val))
                      (lp (cons xval rval))))))))))))

  (def (generate-for* bindings body)
    (with-syntax
        ((value  (genident 'value))
         (rvalue (genident 'rvalue))
         ((it ...)
          (gentemps bindings))
         ((iter-e ...)
          (stx-map for-binding-expr bindings))
         ((bind-id ...)
          (gentemps bindings))
         ((bind-e ...)
          (stx-map for-binding-bind bindings))
         ((body ...) body))
      #'(let ((it (iter iter-e)) ...)
          (let lp ((rvalue []))
            (let ((bind-id (iter-next! it)) ...)
              (if (or (eq? iter-end bind-id) ...)
                (begin (iter-fini! it) ...
                       (reverse rvalue))
                (with ((bind-e bind-id) ...)
                  (let (value (let () body ...))
                    (lp (cons value rvalue))))))))))

  (syntax-case stx ()
    ((_ bind body ...)
     (for-binding? #'bind)
     (generate-for [#'bind] #'(body ...)))
    ((_ (bind ...) body ...)
     (stx-andmap for-binding? #'(bind ...))
     (generate-for #'(bind ...) #'(body ...)))))

(defsyntax (for/fold stx)
  (def (for/fold-bind? bind)
    (syntax-case bind ()
      ((id expr) (identifier? #'id))
      (else #f)))

  (def (generate-for fold-bind bindings body)
    (if (fx= (length bindings) 1)
      (generate-for1 fold-bind (car bindings) body)
      (generate-for* fold-bind bindings body)))

  (def (generate-for1 fold-bind bind body)
    (with-syntax
        ((iter-e (for-binding-expr bind))
         (bind-e (for-binding-bind bind))
         ((fold-iv fold-e) fold-bind)
         ((body ...) body))
      #'(let ((iterable iter-e)
              (iter-do
               (lambda (val fold-iv)
                 (with ((bind-e val))
                   body ...)))
              (fold-iv fold-e))
          (cond
           ;; speculatively inline list iteration
           ((pair? iterable)
            (foldl iter-do fold-iv iterable))
           ((null? iterable) fold-iv)
           (else
            ;; full iteration protocol
            (let (it (iter iterable))
              (let lp ((rval fold-iv))
                (let (val (iter-next! it))
                  (if (eq? iter-end val)
                    (begin
                      (iter-fini! it)
                      rval)
                    (let (xval (iter-do val rval))
                      (lp xval)))))))))))

  (def (generate-for* fold-bind bindings body)
    (with-syntax
        ((value  (genident 'value))
         ((loop-id loop-e)
          fold-bind)
         ((it ...)
          (gentemps bindings))
         ((iter-e ...)
          (stx-map for-binding-expr bindings))
         ((bind-id ...)
          (gentemps bindings))
         ((bind-e ...)
          (stx-map for-binding-bind bindings))
         ((body ...) body))
      #'(let ((it (iter iter-e)) ...)
          (let lp ((loop-id loop-e))
            (let ((bind-id (iter-next! it)) ...)
              (if (or (eq? iter-end bind-id) ...)
                (begin (iter-fini! it) ...
                       loop-id)
                (with ((bind-e bind-id) ...)
                  (let (value (let () body ...))
                    (lp value)))))))))

  (syntax-case stx ()
    ((_ fold-bind bind body ...)
     (and (for/fold-bind? #'fold-bind)
          (for-binding? #'bind))
     (generate-for #'fold-bind [#'bind] #'(body ...)))
    ((_ fold-bind (bind ...) body ...)
     (and (for/fold-bind? #'fold-bind)
          (stx-andmap for-binding? #'(bind ...)))
     (generate-for #'fold-bind #'(bind ...) #'(body ...)))))
