;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil syntax-case [gerbil.expander]
prelude: "../prelude/core"
package: gerbil/expander
namespace: gx

(import "common" "stx" "core" "top")
(export #t)

(defstruct (syntax-pattern expander) (id depth)
  id: gx#syntax-pattern::t)

(defmethod {apply-macro-expander syntax-pattern}
  (lambda (self stx)
    (raise-syntax-error #f "Identifier used out of context" stx)))

;;; syntax
(def (macro-expand-syntax stx)
  (def (generate e)
    (def (BUG q)
      (error "BUG: syntax; generate" stx e q))

    (def (local-pattern-e pat)
      (syntax-local-rewrap
       (syntax-pattern-id pat)))

    (def (getvar q vars)
      (assgetq q vars BUG))

    (def (getarg arg vars)
      (match arg
        ([tag . e]
         (case tag
           ((ref) (getvar e vars))
           ((pattern) (local-pattern-e e))
           (else (BUG arg))))))

    (let recur ((e e) (vars []))
      (match e
        ([tag . body]
         (case tag
           ((datum)
            (core-list 'quote body))
           ((term)
            (let (id (syntax-local-unwrap body))
              (cond
               ((identifier-wrap? id)
                (let (marks (&identifier-wrap-marks id))
                  (if (null? marks)
                    (core-list 'datum->syntax #f (core-list 'quote body))
                    (core-list 'datum->syntax
                               (core-list 'quote-syntax body)
                               (core-list 'quote body)
                               #f #f))))
               ((syntax-quote? id)
                (core-list 'quote-syntax body))
               (else (BUG e)))))
           ((pattern)
            (local-pattern-e body))
           ((ref)
            (getvar body vars))
           ((cons)
            (core-list 'cons
              (recur (car body) vars)
              (recur (cdr body) vars)))
           ((vector)
            (core-list 'list->vector
              (recur body vars)))
           ((box)
            (core-list 'box
              (recur body vars)))
           ((splice)
            (match body
              ([depth hd iv . args]
               (let* ((targets (map (cut getarg <> vars) args))
                      (fold-in (gentemps args))
                      (fold-out (genident))
                      (lambda-args
                       (foldr cons [fold-out] fold-in))
                      (lambda-body
                       (if (fx> depth 1)
                         (let ((r-args
                                (map (lambda (arg) (cons 'ref (cdr arg)))
                                  args))
                               (r-vars
                                (foldr (lambda (arg var r)
                                         (cons (cons (cdr arg) var) r))
                                       vars args fold-in)))
                           (recur (cons* 'splice (fx1- depth)
                                         hd (cons 'var fold-out) r-args)
                                  r-vars))
                         (let ((hd-vars
                                (foldr (lambda (arg var r)
                                         (cons (cons (cdr arg) var) r))
                                       vars args fold-in)))
                           (core-list 'cons
                             (recur hd hd-vars)
                             fold-out)))))
                 (core-list 'begin
                   (if (fx> (length targets) 1)
                     (core-cons* 'syntax-check-splice-targets targets)
                     #!void)
                   (core-cons* 'foldr
                     (core-list 'lambda% lambda-args lambda-body)
                     (recur iv vars)
                     targets))))))
           ((var) body)
           (else (BUG e)))))))

  (def (parse e)
    ;; values are discrete objects in gerbil
    (def (make-cons hd tl)
      (let-values (((hd-e hd-vars) hd)
                   ((tl-e tl-vars) tl))
        (values (cons* 'cons hd-e tl-e)
                (append hd-vars tl-vars))))

    (def (make-splice where depth hd tl)
      ;; tl vars bubble up
      ;; hd vars are processed to extract patterns (don't bubble) and
      ;;  refs (bubble with adjusted depth)
      (let-values (((hd-e hd-vars) hd)
                   ((tl-e tl-vars) tl))
        (let lp ((rest hd-vars) (targets []) (vars tl-vars))
          (match rest
            ([[hd-depth* . hd-pat] . rest]
             (let (hd-depth (fx- hd-depth* depth))
               (cond
                 ((fxpositive? hd-depth)
                  (lp rest
                      (cons (cons 'ref hd-pat) targets)
                      (cons (cons hd-depth hd-pat) vars)))
                 ((fxzero? hd-depth)
                  (lp rest
                      (cons (cons 'pattern hd-pat) targets)
                      vars))
                 (else
                  (raise-syntax-error #f "Too many ellipses" stx where)))))
            (else
             (if (null? targets)
               (raise-syntax-error #f "Misplaced ellipsis" stx where)
               (values (cons* 'splice depth hd-e tl-e targets)
                       vars)))))))

    (def (recur e is-e?)
      (cond
       ((is-e? e)
        (raise-syntax-error #f "Mislpaced ellipsis" stx))
       ((syntax-local-pattern? e)
        (let* ((pat (syntax-local-e e))
               (depth (syntax-pattern-depth pat)))
          (if (fxpositive? depth)
            (values (cons 'ref pat) [(cons depth pat)])
            (values (cons 'pattern pat) []))))
       ((identifier? e)
        (values (cons 'term e) []))
       ((stx-pair? e)
        (core-syntax-case e ()
          ((hd . rest)
           (if (is-e? hd)               ; escape ellipsis
             (core-syntax-case rest ()
               ((rest)
                (recur rest false))
               (else
                (raise-syntax-error #f "Bad ellipsis syntax" stx e)))
             (let lp ((rest rest) (depth 0))
               (core-syntax-case rest ()
                 ((rest-hd . rest-tl)
                  (cond
                   ((is-e? rest-hd)
                    (lp rest-tl (fx1+ depth)))
                   ((fxpositive? depth)
                    (make-splice e depth
                                 (recur hd is-e?)
                                 (recur rest is-e?)))
                   (else
                    (make-cons (recur hd is-e?)
                               (recur rest is-e?)))))
                 (else
                  (if (fxpositive? depth)
                    (make-splice e depth
                                 (recur hd is-e?)
                                 (recur rest is-e?))
                    (make-cons (recur hd is-e?)
                               (recur rest is-e?))))))))))
         ((stx-vector? e)
          (let-values (((e vars)
                        (recur (vector->list (stx-unwrap e)) is-e?)))
            (values (cons 'vector e) vars)))
         ((stx-box? e)
          (let-values (((e vars)
                        (recur (unbox (stx-unwrap e)) is-e?)))
            (values (cons 'box e) vars)))
         (else
          (values (cons 'datum e) []))))

    (let-values (((tree vars) (recur e ellipsis?)))
      (if (null? vars)
        tree
        (raise-syntax-error #f "Missing ellipsis" stx vars))))

  (core-syntax-case stx ()
    ((_ form)
     (stx-wrap-source
      (generate (parse form))
      (stx-source stx)))
    (else
     (raise-syntax-error #f "Bad syntax; expand-syntax expects a single argument" stx))))

;;; syntax-case
(def (macro-expand-syntax-case stx
                               (identifier=? 'free-identifier=?)
                               (unwrap-e     'syntax-e)
                               (wrap-e       'quote-syntax))
  (def (generate-bindings target ids clauses clause-ids E)
    (def (generate1 clause clause-id E)
      [[clause-id]
       (core-list 'lambda%
         [target] (generate-clause target ids clause E))])

    (let lp ((rest clauses) (rest-ids clause-ids) (bindings []))
      (match rest
        ([clause . rest]
         (match rest-ids
           ([clause-id . rest-ids]
            (match rest-ids
              ([next-clause-id . _]
               (lp rest
                   rest-ids
                   (cons (generate1 clause clause-id next-clause-id)
                         bindings)))
              (else                     ; last one
               (cons (generate1 clause clause-id E) bindings))))))
        (else bindings))))

  (def (generate-body bindings body)
    (let recur ((rest bindings))
      (match rest
        ([hd . rest]
         (core-list 'let-values [hd] (recur rest)))
        (else body))))

  (def (generate-clause target ids clause E)
    (def (generate1 hd fender body)
      (let-values (((e mvars) (parse-clause hd ids)))
        (let* ((pvars (map syntax-local-rewrap (gentemps mvars)))
               (E [E target])
               (K (core-list 'lambda%
                    pvars
                    (core-list 'let-syntax
                      (map (lambda (mvar pvar)
                             (match mvar
                               ([id . depth]
                                [id (core-list 'make-syntax-pattern
                                      (core-list 'quote id)
                                      (core-list 'quote pvar)
                                      depth)])))
                        mvars pvars)
                      (if (true? fender) body
                          (core-list 'if fender body E))))))
          (generate-match hd target e mvars K E))))

    (core-syntax-case clause ()
      ((hd body)
       (generate1 hd #t body))
      ((hd fender body)
       (generate1 hd fender body))))

  (def (generate-match where target hd mvars K E)
    (def (BUG q)
      (error "BUG: syntax-case; generate" stx hd q))

    (def (recur e vars target E k)
      (match e
        ([tag . body]
         (case tag
           ((any)
            (k vars))
           ((id)
            (core-list 'if
              (core-list 'identifier? target)
              (core-list 'if
                (core-list identifier=?
                  (core-list wrap-e body)
                  target)
                (k vars)
                E)
              E))
           ((var)
            (k (cons (cons body target) vars)))
           ((cons)
            (let (($e (genident 'e))
                  ($hd (genident 'hd))
                  ($tl (genident 'tl)))
              (core-list 'if
                (core-list 'stx-pair? target)
                (core-list 'let-values
                  [[[$e] (core-list unwrap-e target)]]
                  (core-list 'let-values
                    [[[$hd] (core-list '##car $e)]
                     [[$tl] (core-list '##cdr $e)]]
                    (match body
                      ([hd . tl]
                       (recur hd vars $hd E
                              (lambda (vars)
                                (recur tl vars $tl E k)))))))
                E)))
            ((splice)
             (match body
               ([hd . tl]
                (let* ((rlen (splice-rlen tl))
                       ($target (genident 'target))
                       ($hd (genident 'hd))
                       ($tl (genident 'tl))
                       ($lp (genident 'loop))
                       ($lp-e (genident 'e))
                       ($lp-hd (genident 'lp-hd))
                       ($lp-tl (genident 'lp-tl))
                       (svars (splice-vars hd))
                       (lvars (gentemps svars))
                       (tlvars (gentemps svars))
                       (linit (map (lambda (var) (core-list 'quote []))
                                   lvars)))

                  (def (make-loop vars)      ; splice match+collect loop
                    (core-list 'letrec-values
                      [[[$lp]
                        (core-list 'lambda%
                            (cons $hd lvars)
                            (core-list 'if
                              (core-list 'stx-pair? $hd)
                              (core-list 'let-values
                                [[[$lp-e] (core-list unwrap-e $hd)]]
                                (core-list 'let-values
                                  [[[$lp-hd] (core-list '##car $lp-e)]
                                   [[$lp-tl] (core-list '##cdr $lp-e)]]
                                  (recur
                                   hd [] $lp-hd E
                                   (lambda (hdvars)
                                     (cons* $lp $lp-tl
                                            (map (lambda (svar lvar)
                                                   (core-list 'cons
                                                     (assgetq svar hdvars BUG)
                                                     lvar))
                                              svars lvars))))))
                              (core-list 'let-values
                                (map (lambda (lvar tlvar)
                                       [[tlvar]
                                        (core-list 'reverse lvar)])
                                     lvars tlvars)
                                (k (foldl (lambda (svar tlvar r)
                                            (cons (cons svar tlvar) r))
                                          vars svars tlvars)))))]]
                      (cons* $lp $target linit)))

                  (let (body
                        (core-list 'let-values
                          [[[$target $tl]
                            (core-list 'syntax-split-splice target rlen)]]
                          (recur tl vars $tl E make-loop)))
                  (core-list 'if
                    (core-list 'stx-pair/null? target)
                    (if (zero? rlen)
                        body
                        (core-list 'if
                          (core-list 'fx>=
                            (core-list 'stx-length target) rlen)
                          body E))
                    E))))))
            ((null)
             (core-list 'if
               (core-list 'stx-null? target)
               (k vars)
               E))
            ((vector)
             (let ($e (genident 'e))
               (core-list 'if
                 (core-list 'stx-vector? target)
                 (core-list 'let-values
                   [[[$e] (core-list 'vector->list
                            (core-list unwrap-e target))]]
                   (recur body vars $e E k))
                 E)))
            ((box)
             (let ($e (genident 'e))
               (core-list 'if
                 (core-list 'stx-box? target)
                 (core-list 'let-values
                   [[[$e] (core-list 'unbox
                            (core-list unwrap-e target))]]
                   (recur body vars $e E k))
                 E)))
            ((datum)
             (let ($e (genident 'e))
               (core-list 'if
                 (core-list 'stx-datum? target)
                 (core-list 'let-values
                   [[[$e] (core-list 'stx-e target)]]
                   (core-list 'if
                     (core-list 'equal? $e body)
                     (k vars)
                     E))
                 E)))
            (else (BUG e))))))

    (def (splice-rlen e)
      (let lp ((e e) (n 0))
        (match e
          ([tag . body]
           (case tag
             ((splice)
              (raise-syntax-error #f "Ambiguous pattern" stx where))
             ((cons)
              (lp (cdr body) (fx1+ n)))
             (else n))))))

    (def (splice-vars e)
      (let recur ((e e) (vars []))
        (match e
          ([tag . body]
           (case tag
             ((var)
              (cons body vars))
             ((cons splice)
              (recur (cdr body) (recur (car body) vars)))
             ((vector box)
              (recur body vars))
             (else vars))))))

    (def (make-body vars)
      ;; remap vars->mvars [order], dispatch to K
      (cons K (map (lambda (mvar) (assgetq (car mvar) vars BUG)) mvars)))

    (recur hd [] target E make-body))

  ;; => (values parsed-hd [[var-id . depth] ...])
  ;; accepts multiple (non-consecutive) ellipses at same level
  ;;  generator rejects ambiguous patterns
  (def (parse-clause hd ids)
    (let recur ((e hd) (vars []) (depth 0))
      (cond
       ((identifier? e)
        (cond
         ((underscore? e)
          (values '(any) vars))
         ((ellipsis? e)
          (raise-syntax-error #f "Misplaced ellipsis" stx hd))
         ((find (lambda (id) (bound-identifier=? e id)) ids)
          (values (cons 'id e) vars))
         ((find (lambda (var) (bound-identifier=? e (car var))) vars)
          (raise-syntax-error #f "Duplicate pattern variable" stx e))
         (else
          (values (cons 'var e) (cons (cons e depth) vars)))))
       ((stx-pair? e)
        (core-syntax-case e ()
          ((hd . rest)
           (let (make-pair
                 (lambda (tag hd tl)
                   (let*-values (((hd-depth)
                                  (if (eq? tag 'splice) (fx1+ depth) depth))
                                 ((hd vars) (recur hd vars hd-depth))
                                 ((tl vars) (recur tl vars depth)))
                     (values (cons* tag hd tl) vars))))
             (core-syntax-case rest ()
               ((rest-hd . rest-tl)
                (if (ellipsis? rest-hd)
                  (make-pair 'splice hd rest-tl)
                  (make-pair 'cons hd rest)))
               (else
                (make-pair 'cons hd rest)))))))
       ((stx-null? e)
        (values '(null) vars))
       ((stx-vector? e)
        (let-values (((e vars) (recur (vector->list (syntax-e e)) vars depth)))
          (values (cons 'vector e) vars)))
       ((stx-box? e)
        (let-values (((e vars) (recur (unbox (syntax-e e)) vars depth)))
          (values (cons 'box e) vars)))
       ((stx-datum? e)
        (values (cons 'datum (stx-e e)) vars))
       (else
        (raise-syntax-error #f "Bad pattern" stx e)))))

  (core-syntax-case stx ()
    ((_ expr ids . clauses)
     (cond
      ((not (identifier-list? ids))
       (raise-syntax-error #f "Bad template identifier list" stx ids))
      ((not (stx-list? clauses))
       (raise-syntax-error #f "Bad syntax; clauses expected" stx))
      (else
       (let* ((ids (syntax->list ids))
              (clauses (syntax->list clauses))
              (clause-ids (gentemps clauses))
              (E (genident))
              (target (genident))
              (first (if (null? clauses) E (car clause-ids))))
         (stx-wrap-source
          (core-list 'begin-annotation '@syntax-case
            (stx-wrap-source
             (core-list 'let-values
               [[[E] (core-list 'lambda%
                       [target] (core-list 'raise-syntax-error
                                  #f "Bad syntax; invalid match target" target))]]
               (generate-body
                (generate-bindings target ids clauses clause-ids E)
                [first expr]))
             (stx-source stx)))
          (stx-source stx))))))))

;;; utilities
(def (syntax-local-pattern? stx)
  (and (identifier? stx)
       (syntax-pattern? (syntax-local-e stx false))))

(def (syntax-check-splice-targets hd . rest)
  (let (len (length hd))
    (let lp ((rest rest))
      (match rest
        ([hd . rest]
         (if (fx= len (length hd))
           (lp rest)
           (raise-syntax-error #f "Splice length mismatch" hd)))
        (else (void))))))

(def (syntax-split-splice stx n)
  (let lp ((rest stx) (r []))
    (if (stx-pair? rest)
      (match (syntax-e rest)
        ([hd . rest]
         (lp rest (cons hd r))))
      (let lp ((n n) (l r) (r rest))
        (cond
         ((null? l)
          (values l r))
         ((fxpositive? n)
          (lp (fx1- n) (cdr l) (cons (car l) r)))
         (else
          (values (reverse l) r)))))))
