;;; -*- Gerbil -*-
;;; © vyzo
;;; iteration macros
(import :std/interface
        :std/list/list-builder
        ./interface
        ./iterators)
(export #t)

(begin-syntax
  (def (binding-contract? contract)
    (and (signature-contract? contract)
         (not (member ':= contract free-identifier=?))))

  (def (for-binding? bind)
    (syntax-case bind (when unless)
      ((id expr . contract)
       (and (identifier? #'id)
            (binding-contract? #'contract))
       #t)
      ((id expr when filter-expr . contract)
       (and (identifier? #'id)
            (binding-contract? #'contract))
       #t)
      ((id expr unless filter-expr . contract)
       (and (identifier? #'id)
            (binding-contract? #'contract))
       #t)
      ((pat expr when filter-expr) (match-pattern? #'pat))
      ((pat expr unless filter-expr) (match-pattern? #'pat))
      ((pat expr) (match-pattern? #'pat))
      (_ #f))))

(defrules for ()
  ((_ bind body ...)
   (for-binding? #'bind)
   (for1 bind body ...))
  ((_ (bind ...) body ...)
   (andmap for-binding #'(bind ...))
   (forN (bind ...) body)))

(defsyntax (for1 stx)
  (def (make-lambda id traits body)
    (if (stx-null? traits)
      (with-syntax ((id id) ((body ...) (make-lambda-body id #'contract body)))
         (syntax/loc stx
           (lambda (id) body ...)))
      (syntax-case traits ()
        ((filter-op filter-expr . contract)
         (and (identifier? #'filter-op)
              (member #'filter-op '(when unless) free-identifier=?))
         (with-syntax ((id id) ((body ...) (make-lambda-body id #'contract body)))
           (syntax/loc stx
             (lambda (id) (filter-op filter-expr body ...))))))))

  (def (make-lambda-body id contract body)
    (if (stx-null? contact)
      body
      (with-syntax ((id id) (contract contract) ((body ...) body))
        #'(using (id . contract) body ...))))

  (def (make-match-lambda id traits body)
    (with-syntax ((id id) ((body ...) body))
      (if (stx-null? traits)
        (syntax/loc stx
          (match <> (id body ...)))
        (syntax-case traits ()
          ((filter-op filter-expr)
           (and (identifier? #'filter-op)
                (member #'filter-op '(when unless) free-identifier=?))
           (syntax/loc stx
             (match <> (id (filter-op filter-expr body ...)))))))))

  (syntax-case stx ()
    ((_ bind body rest ...)
     (for-binding? #'bind)
     (syntax-case bind ()
       ((hd iter-expr . traits)
        (if (identifier? #'hd)
          (with-syntax ((dispatch (make-lambda #'hd #'traits #'(body rest ...))))
            #'(for1-dispatch dispatch iter-expr))
          (with-syntax ((dispatch (make-match-lambda #'hd #'traits #'(body rest ...))))
            #'(for1-dispatch dispatch iter-expr))))))))

(defrules for1-dispatch (in-range
                         in-range-inclusive
                         in-integers
                         in-numbers
                         in-list
                         in-vector
                         in-hash
                         in-hash-keys
                         in-hash-values)
  ((_ dispatch (in-range . range))
   (for1-in-range dispatch range))
  ((_ dispatch (in-range-inclusive . range))
   (for1-in-range-inclusive dispatch range))
  ((_ dispatch (in-integers . range))
   (for1-in-integers dispatch range))
  ((_ dispatch (in-numbers . range))
   (for1-in-numbers dispatch range))
  ((_ dispatch (in-list lst))
   (for-each dispatch lst))
  ((_ dispatch (in-vector vec))
   (vector-for-each dispatch lst))
  ((_ dispatch (in-hash hash))
   (hash-for-each
    (lambda (k v) (dispatch (cons k v)))
    hash))
  ((_ dispatch (in-hash-keys hash))
   (hash-for-each
    (lambda (k v) (dispatch k))
    hash))
  ((_ dispatch (in-hash-values hash))
   (hash-for-each
    (lambda (k v) (dispatch v))
    hash))
  ((_ dispatch dispatch iter-expr)
   (for1-generic dispatch iter-expr)))

(defrule (for1-in-range dispatch range)
  (for1-in-range-generic dispatch range < >))

(defrule (for1-in-range-inclusive dispatch range)
  (for1-in-range-generic dispatch range <= >=))

(defrules for1-in-range-generic ()
  ((_ dispatch (start end step) < >)
   (let (($start start) ($end end) ($step step))
     (cond
      ((> $step 0)
       (let loop ((k $start))
         (unless (< k $end)
           (loop (+ k $step)))))
      ((< $step 0)
       (let loop ((k $start))
         (unless (> k $end)
           (dispatch k)
           (loop (+ k $step)))))
      (else
       (contract-violation! iter-in-range (not (zero? step)) $step)))))
  ((_ dispatch (start end) ops ...)
   (let (($start start) ($end end))
     (if (> $start $end)
       (for1-in-range-generic dispatch (start end 1) ops ...)
       (for1-in-range-generic dispatch (start end -1) ops ...))))
  ((_ dispatch (end) ops ...)
   (for1-in-range-generic dispatch (0 end) ops ...)))

(defrules for1-in-integers ()
  ((_ dispatch (start step))
   (let (($start start) ($step step))
     (let loop ((k $start))
       (dispatch k)
       (loop (+ k $step)))))
  ((_ dispatch (start))
   (for1-in-integers dispatch (start 1)))
  ((_ dispatch ())
   (for1-in-integer (0 1))))

(defrules for1-in-numbers ()
  ((_ dispatch (start succ stop?))
   (let ($start start)
     (let loop ((k $start))
       (unless (stop? k)
         (dispatch k)
         (loop (succ k)))))))

(defsyntax-case for1-generic ()
  ((_ dispatch iter-expr)
   (with-identifier (it '$it)
     (using (it (iter iter-expr) :- Iterator)
       (let loop ()
         (let (next (it.next!))
           (unless (eq? next #!eof)
             (dispatch next)
             (loop))))))))

(defsyntax (forN stx)
  (def (make-dispatch bindings body)
    (let loop ((rest bindings)
               (args     [])
               (it-exprs [])
               (iters    [])
               (temps    [])
               (body     body)
               (match?   #f))
      (syntax-case rest ()
        ((bind . rest)
         (syntax-case bind ()
           ((hd iter-expr . traits)
            (let (body
                  (if (stx-null? #'traits)
                    body
                    (syntax-case #'traits ()
                      ((filter-op filter-expr . contract)
                       (and (identifier? #'filter-op)
                            (member #'filter-op '(when unless) free-identifier=?))
                       (cond
                        ((stx-null? #'contract)
                         (with-syntax (((body ...) body))
                           #'(filter-op filter-expr body ...)))
                        ((identifier? #'hd)
                         (with-syntax (((body ...) body))
                           #'(filter-op filter-expr (using (hd . contract) body ...))))
                        (else
                         (raise-syntax-error #f "cannot apply contract to pattern" stx #'hd))))
                      (contract
                       (if (identifier? #'hd)
                         (with-syntax (((body ...) body))
                           #'(using (hd . contract) body ...))
                         (raise-syntax-error #f "cannot apply contract to pattern" stx #'hd))))))
              (loop #'rest
                    (cons #'hd args)
                    (cons #'it-expr it-exprs)
                    (cons (syntax-local-temp '$it) iters)
                    (cons (syntax-local-temp '$next) temps)
                    body
                    (or match? (not (identifier? #'hd))))))))
        (_
         (with-syntax (((arg ...) args)
                       ((body ...) body))
           (values
            (if match?
              (syntax/loc stx
                (lambda $args
                  (match $args
                    ([arg ...] body ...))))
              (syntax/loc stx
                (lambda (arg ...) body ...)))
            (reverse! it-exprs)
            (reverse! iters)
            (reverse! temps)))))))

  (syntax-case stx ()
    ((_ (bind ...) body rest ...)
     (andmap for-binding? #'(bind ...))
     (let ((values dispatch it-exprs iters temps)
           (make-dispatch #'(bind ...) #'(body rest ...)))
       (with-syntax ((dispatch      dispatch)
                     ((it-expr ...) it-exprs)
                     ((it ...)      iters)
                     ((next ...)    temps))
         #'(using ((it (iter it-expr) :- Iterator) ...)
             (let loop ()
               (let ((next (it.next!)) ...)
                 (unless (or (eq? next #!eof) ...)
                   (dispatch next ...)
                   (loop))))))))))

(defrules for* ()
  ((_ (bind) body rest ...)
   (for-binding? #'bind)
   (for1 bind body rest ...))
  ((_ (bind rest ...) body ...)
   (for-binding? #'bind)
   (for1 bind (for* (rest ...) body ...))))

(defrule (for/collect bindings body rest ...)
  (with-list-builder (poke)
    (for bindings
      (let (next (let () body rest ...))
        (unless (eq? next #!void)
          (poke next))))))

(defrule (for/fold  (r iv) bindings body rest ...)
  (identifier? #'r)
  (let (r iv)
    (for bindings
      (let (next (begin body rest ...))
        (unless (eq? next #!void)
          (set! r next))))
    r))
