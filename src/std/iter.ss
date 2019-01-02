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
  :iter iter-end iter-end? iter-nil iter-nil?
  iter-start! iter-value iter-next!
  for for* for/collect for/fold
  in-range in-naturals in-hash-keys in-hash-values
  in-input-lines in-input-chars in-input-bytes
  iter-filter iter-map iter-filter-map
  yield
  )

(defstruct iterator (e start value next fini)
  constructor: :init!
  final: #t)

(defmethod {:init! iterator}
  (lambda (self e start value next (fini void))
    (struct-instance-init! self e start value next fini)))

(defstruct :iter-end ())
(def iter-end
  (make-:iter-end))
(def (iter-end? obj)
  (eq? iter-end obj))

(defstruct :iter-nil ())
(def iter-nil
  (make-:iter-nil))
(def (iter-nil? obj)
  (eq? iter-nil obj))

(defgeneric :iter)
(defmethod (:iter (iter iterator))
  iter)
(defmethod (:iter (obj <pair>))
  (iter-list obj))
(defmethod (:iter (obj <null>))
  (iter-list obj))
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

(def (iter-list lst)
  (def (value-e iter)
    (with ((iterator e) iter)
      (match e
        ([hd . rest] hd)
        (else iter-end))))
  (def (next-e iter)
    (set! (iterator-e iter)
      (cdr (iterator-e iter))))
  (make-iterator lst void value-e next-e))

(def (iter-vector vec (length-e vector-length) (ref-e vector-ref))
  (def (value-e iter)
    (with ((iterator [vec . index]) iter)
      (if (##fx< index (length-e vec))
        (ref-e vec index)
        iter-end)))
  (def (next-e iter)
    (with ((iterator e) iter)
      (set! (cdr e)
        (##fx+ (cdr e) 1))))
  (make-iterator (cons vec 0) void value-e next-e))

(def (iter-string obj)
  (iter-vector obj string-length string-ref))

(def (iter-hash-table obj)
  (def (value-e iter)
    (with ((iterator lst) iter)
      (match lst
        ([[key . value] . rest]
         (values key value))
        (else iter-end))))
  (def (next-e iter)
    (set! (iterator-e iter)
      (cdr (iterator-e iter))))
  (make-iterator (hash->list obj) void value-e next-e))

(def (iter-coroutine proc)
  (def (value-e iter)
    (with ((iterator [cort . val]) iter)
      (if (iter-nil? val)
        (let (val (continue cort))
          (set! (cdr (iterator-e iter)) val)
          val)
        val)))
  (def (next-e iter)
    (set! (cdr (iterator-e iter))
      iter-nil))
  (let (cort (coroutine (lambda () (proc) iter-end)))
    (make-iterator (cons cort iter-nil) void value-e next-e)))

(def (iter-input-port port (read-e read))
  (def (value-e iter)
    (with ((iterator [port . val]) iter)
      (if (iter-nil? val)
        (let* ((e (read-e port))
               (val
                (if (eof-object? e)
                  iter-end
                  e)))
          (set! (cdr (iterator-e iter)) val)
          val)
        val)))
  (def (next-e iter)
    (set! (cdr (iterator-e iter))
      iter-nil))
  (make-iterator [port . iter-nil] void value-e next-e))

(def (iter-in-range start count step)
  (def (value-e iter)
    (with ((iterator [value . count]) iter)
      (if (positive? count)
        value
        iter-end)))
  (def (next-e iter)
    (with ((iterator e) iter)
      (set! (car e)
        (+ (car e) step))
      (set! (cdr e)
        (1- (cdr e)))))
  (make-iterator (cons start count) void value-e next-e))

(def* in-range
  ((count) (iter-in-range 0 count 1))
  ((start count) (iter-in-range start count 1))
  ((start count step) (iter-in-range start count step)))

(def (in-naturals (start 1) (step 1))
  (def (next-e iter)
    (set! (iterator-e iter)
      (+ (iterator-e iter) step)))
  (make-iterator start void iterator-e next-e))

(def (in-hash-keys ht)
  (iter-list (hash-keys ht)))

(def (in-hash-values ht)
  (iter-list (hash-values ht)))

(def (in-input-lines obj)
  (iter-input-port obj read-line))

(def (in-input-chars obj)
  (iter-input-port obj read-char))

(def (in-input-bytes obj)
  (iter-input-port obj read-u8))

(def (iter-start! iter)
  ((iterator-start iter) iter))

(def (iter-value iter)
  ((iterator-value iter) iter))

(def (iter-next! iter)
  ((iterator-next iter) iter))

(def (iter-fini! iter)
  ((iterator-fini iter) iter))

(def (iter-xform iter value-e)
  (def (start-e iter)
    (with ((iterator xiter) iter)
      (iter-start! xiter)))
  (def (next-e iter)
    (with ((iterator xiter) iter)
      (iter-next! xiter)))
  (def (fini-e iter)
    (with ((iterator xiter) iter)
      (iter-fini! xiter)))
  (make-iterator (:iter iter) start-e value-e next-e fini-e))

(def (iter-filter pred iter)
  (def (value-e iter)
    (with ((iterator xiter) iter)
      (let lp ((val (iter-value xiter)))
        (cond
         ((iter-end? val) iter-end)
         ((pred val) val)
         (else
          (iter-next! xiter)
          (lp (iter-value xiter)))))))
  (iter-xform iter value-e))

(def (iter-map mapf iter)
  (def (value-e iter)
    (with ((iterator xiter) iter)
      (let (val (iter-value xiter))
        (if (iter-end? val)
          iter-end
          (mapf val)))))
  (iter-xform iter value-e))

(def (iter-filter-map mapf iter)
  (def (value-e iter)
    (with ((iterator xiter) iter)
      (let lp ((val (iter-value xiter)))
        (cond
         ((iter-end? val) iter-end)
         ((mapf val) => values)
         (else
          (iter-next! xiter)
          (lp (iter-value xiter)))))))
  (iter-xform iter value-e))

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
            (let (it (:iter iterable))
              (iter-start! it)
              (let lp ()
                (let (val (iter-value it))
                  (unless (eq? iter-end val)
                    (iter-do val)
                    (iter-next! it)
                    (lp))))
              (iter-fini! it)
              (void)))))))

  (def (generate-for* bindings body)
    (with-syntax
        (((iter-id ...)
          (gentemps bindings))
         ((iter-e ...)
          (stx-map for-binding-expr bindings))
         ((bind-id ...)
          (gentemps bindings))
         ((bind-e ...)
          (stx-map for-binding-bind bindings))
         ((body ...) body))
      #'(let ((iter-id (:iter iter-e)) ...)
          (iter-start! iter-id) ...
          (let lp ()
            (let ((bind-id (iter-value iter-id)) ...)
              (unless (or (eq? iter-end bind-id) ...)
                (with ((bind-e bind-id) ...)
                  body ...)
                (iter-next! iter-id) ...
                (lp))))
          (iter-fini! iter-id) ...
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
            (let (it (:iter iterable))
              (iter-start! it)
              (let lp ((rval []))
                (let (val (iter-value it))
                  (if (eq? iter-end val)
                    (begin
                      (iter-fini! it)
                      (reverse rval))
                    (let (xval (iter-do val))
                      (iter-next! it)
                      (lp (cons xval rval))))))))))))

  (def (generate-for* bindings body)
    (with-syntax
        ((value  (genident 'value))
         (rvalue (genident 'rvalue))
         ((iter-id ...)
          (gentemps bindings))
         ((iter-e ...)
          (stx-map for-binding-expr bindings))
         ((bind-id ...)
          (gentemps bindings))
         ((bind-e ...)
          (stx-map for-binding-bind bindings))
         ((body ...) body))
      #'(let ((iter-id (:iter iter-e)) ...)
          (iter-start! iter-id) ...
          (let lp ((rvalue []))
            (let ((bind-id (iter-value iter-id)) ...)
              (if (or (eq? iter-end bind-id) ...)
                (begin (iter-fini! iter-id) ...
                       (reverse rvalue))
                (with ((bind-e bind-id) ...)
                  (let (value (let () body ...))
                    (iter-next! iter-id) ...
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
            (let (it (:iter iterable))
              (iter-start! it)
              (let lp ((rval fold-iv))
                (let (val (iter-value it))
                  (if (eq? iter-end val)
                    (begin
                      (iter-fini! it)
                      rval)
                    (let (xval (iter-do val rval))
                      (iter-next! it)
                      (lp xval)))))))))))

  (def (generate-for* fold-bind bindings body)
    (with-syntax
        ((value  (genident 'value))
         ((loop-id loop-e)
          fold-bind)
         ((iter-id ...)
          (gentemps bindings))
         ((iter-e ...)
          (stx-map for-binding-expr bindings))
         ((bind-id ...)
          (gentemps bindings))
         ((bind-e ...)
          (stx-map for-binding-bind bindings))
         ((body ...) body))
      #'(let ((iter-id (:iter iter-e)) ...)
          (iter-start! iter-id) ...
          (let lp ((loop-id loop-e))
            (let ((bind-id (iter-value iter-id)) ...)
              (if (or (eq? iter-end bind-id) ...)
                (begin (iter-fini! iter-id) ...
                       loop-id)
                (with ((bind-e bind-id) ...)
                  (let (value (let () body ...))
                    (iter-next! iter-id) ...
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
