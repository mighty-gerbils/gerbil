;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil.expander common hooks
prelude: "../core"
package: gerbil/expander
namespace: gx

(export #t)
(import <expander-runtime>)

(defstruct AST (e source)
  id:   gerbil#AST::t
  name: syntax)

(defrules check-procedure ()
  ((_ proc)
   (unless (procedure? proc)
     (error "expected procedure" proc))))

(defsyntax (core-syntax-case stx)
  (def (generate tgt kws clauses)
    (def (generate-clause hd E)
      (syntax-case hd ()
        ((pat body)
         (generate1 hd #'pat #t #'body E))
        ((pat fender body)
         (generate1 hd #'pat #'fender #'body E))
        (_ (raise-syntax-error #f "Bad syntax; invalid syntax-case pattern" stx hd))))

    (def (generate1 where hd fender body E)
      (def (recur hd tgt K)
        (syntax-case hd ()
          ((hd-first . hd-rest)
           (with-syntax* ((target tgt)
                          ($e  (genident 'e))
                          ($hd (genident 'hd))
                          ($tl (genident 'tl))
                          (K (recur #'hd-first #'$hd
                                    (recur #'hd-rest #'$tl K)))
                          (E E))
             #'(if (stx-pair? target)
                 (let (($e (syntax-e target)))
                   (let (($hd (##car $e))
                         ($tl (##cdr $e)))
                     K))
                 E)))
          (_ (cond
              ((identifier? hd)
               (cond
                ((underscore? hd) K)
                ((find (cut bound-identifier=? <> hd) kws)
                 (with-syntax ((target tgt)
                               (id hd))
                   [#'if #'(and (identifier? target)
                                (core-identifier=? target 'id))
                     K E]))
                (else
                 (with-syntax ((target tgt)
                               (id hd))
                   [#'let #'((id target))
                     K]))))
              ((stx-null? hd)
               (with-syntax ((target tgt))
                 [#'if #'(stx-null? target)
                   K E]))
              ((stx-datum? hd)
               (with-syntax ((target tgt)
                             (datum hd)
                             (eql
                              (let (e (stx-e hd))
                                (cond
                                 ((or (keyword? e) (immediate? e))
                                  #'eq?)
                                 ((number? e)
                                  #'eqv?)
                                 (else
                                  #'equal?)))))
                 [#'if #'(eql (stx-e target) 'datum)
                   K E]))
              (else
               (raise-syntax-error #f "Bad syntax; invalid syntax-case head" stx where hd))))))

      (recur hd tgt [#'if fender body E]))

    (def (generate-clauses clauses)
      (let lp ((rest clauses) (E (genident 'E)) (r []))
        (syntax-case rest ()
          ((hd . rest)
           (syntax-case #'hd (else)
             ((else . body)
              (if (stx-null? #'rest)
                (if (and (stx-list? #'body) (not (stx-null? #'body)))
                  (cons [E (stx-wrap-source
                            #'(lambda () (begin . body))
                            (stx-source #'hd))]
                        r)
                  (raise-syntax-error #f "Bad syntax; invalid else body" stx #'hd))
                (raise-syntax-error #f "Bad syntax; misplaced else"
                                    stx #'hd)))
             (_ (with-syntax* (($E (genident 'E))
                               (body
                                (generate-clause #'hd #'($E)))
                               (try
                                (stx-wrap-source
                                 #'(lambda () body)
                                 (stx-source #'hd))))
                  (lp #'rest #'$E (cons [E #'try] r))))))
          (_ (with-syntax ((target tgt))
               (cons [E (stx-wrap-source
                         #'(lambda () (raise-syntax-error #f "Bad syntax; invalid syntax-case clause" target))
                         (stx-source stx))]
                     r))))))

    (with-syntax* (((values bind)
                    (generate-clauses clauses))
                   ((bind-try ...)
                    bind)
                   (K (car (last bind))))
      #'(let* (bind-try ...) (K))))

  (syntax-case stx ()
    ((_ expr kws . clauses)
     (and (identifier-list? #'kws)
          (stx-list? #'clauses))
     (with-syntax* (($e (genident 'e))
                    (body (generate #'$e (syntax->list #'kws) #'clauses)))
       #'(let (($e expr))
           body)))))
