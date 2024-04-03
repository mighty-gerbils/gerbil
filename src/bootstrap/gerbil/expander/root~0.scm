(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712124235)
  (begin
    (declare (not safe))
    (define gx#*core-syntax-expanders*
      (cons (cons '%#begin
                  (cons 'top:
                        (cons gx#core-expand-begin%
                              (cons gx#core-compile-top-begin% '()))))
            (cons (cons '%#begin-syntax
                        (cons 'top:
                              (cons gx#core-expand-begin-syntax%
                                    (cons gx#core-compile-top-begin-syntax%
                                          '()))))
                  (cons (cons '%#begin-foreign
                              (cons 'top:
                                    (cons gx#core-expand-begin-foreign%
                                          (cons gx#core-compile-top-begin-foreign%
                                                '()))))
                        (cons (cons '%#begin-module
                                    (cons 'top:
                                          (cons gx#core-expand-begin-module%
                                                (cons '#f '()))))
                              (cons (cons '%#extern
                                          (cons 'top:
                                                (cons gx#core-expand-extern%
                                                      (cons gx#core-compile-top-extern%
                                                            '()))))
                                    (cons (cons '%#import
                                                (cons 'top:
                                                      (cons gx#core-expand-import%
                                                            (cons gx#core-compile-top-import%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons '%#module
                                                      (cons 'top:
                                                            (cons gx#core-expand-module%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-compile-top-module% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#export
                                                            (cons 'top:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-expand-export%
                                (cons gx#core-compile-top-export% '()))))
              (cons (cons '%#provide
                          (cons 'module:
                                (cons gx#core-expand-provide%
                                      (cons gx#core-compile-top-provide%
                                            '()))))
                    (cons (cons '%#declare
                                (cons 'module:
                                      (cons gx#core-expand-declare%
                                            (cons gx#core-compile-top-declare%
                                                  '()))))
                          (cons (cons '%#cond-expand
                                      (cons 'special:
                                            (cons gx#core-expand-cond-expand%
                                                  (cons '#f '()))))
                                (cons (cons '%#include
                                            (cons 'special:
                                                  (cons gx#core-expand-include%
                                                        (cons '#f '()))))
                                      (cons (cons '%#define-values
                                                  (cons 'define:
                                                        (cons gx#core-expand-define-values%
                                                              (cons gx#core-compile-top-define-values%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons '%#define-syntax
                                                        (cons 'define:
                                                              (cons gx#core-expand-define-syntax%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons gx#core-compile-top-define-syntax% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#define-alias
                                                              (cons 'define:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons gx#core-expand-define-alias%
                                  (cons gx#core-compile-top-define-alias%
                                        '()))))
                (cons (cons '%#define-runtime
                            (cons 'define:
                                  (cons gx#core-expand-define-runtime%
                                        (cons gx#core-compile-top-define-runtime%
                                              '()))))
                      (cons (cons '%#begin-annotation
                                  (cons 'expr:
                                        (cons gx#core-expand-begin-annotation%
                                              (cons gx#core-compile-top-begin-annotation%
                                                    '()))))
                            (cons (cons '%#lambda
                                        (cons 'expr:
                                              (cons gx#core-expand-lambda%
                                                    (cons gx#core-compile-top-lambda%
                                                          '()))))
                                  (cons (cons '%#case-lambda
                                              (cons 'expr:
                                                    (cons gx#core-expand-case-lambda%
                                                          (cons gx#core-compile-top-case-lambda%
                                                                '()))))
                                        (cons (cons '%#let-values
                                                    (cons 'expr:
                                                          (cons gx#core-expand-let-values%
                                                                (cons gx#core-compile-top-let-values%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons '%#letrec-values
                                                          (cons 'expr:
                                                                (cons gx#core-expand-letrec-values%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-compile-top-letrec-values% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#letrec*-values
                                                                (cons 'expr:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-expand-letrec*-values%
                                    (cons gx#core-compile-top-letrec*-values%
                                          '()))))
                  (cons (cons '%#let-syntax
                              (cons 'expr:
                                    (cons gx#core-expand-let-syntax%
                                          (cons '#f '()))))
                        (cons (cons '%#letrec-syntax
                                    (cons 'expr:
                                          (cons gx#core-expand-letrec-syntax%
                                                (cons '#f '()))))
                              (cons (cons '%#quote
                                          (cons 'expr:
                                                (cons gx#core-expand-quote%
                                                      (cons gx#core-compile-top-quote%
                                                            '()))))
                                    (cons (cons '%#quote-syntax
                                                (cons 'expr:
                                                      (cons gx#core-expand-quote-syntax%
                                                            (cons gx#core-compile-top-quote-syntax%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons '%#call
                                                      (cons 'expr:
                                                            (cons gx#core-expand-call%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-compile-top-call% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#if
                                                            (cons 'expr:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-expand-if%
                                (cons gx#core-compile-top-if% '()))))
              (cons (cons '%#ref
                          (cons 'expr:
                                (cons gx#core-expand-ref%
                                      (cons gx#core-compile-top-ref% '()))))
                    (cons (cons '%#set!
                                (cons 'expr:
                                      (cons gx#core-expand-setq%
                                            (cons gx#core-compile-top-setq%
                                                  '()))))
                          (cons (cons '%#expression
                                      (cons 'expr:
                                            (cons gx#core-expand-expression%
                                                  (cons '#f '()))))
                                '()))))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define gx#*core-macro-expanders*
      (cons (cons 'begin (cons '=> (cons '%#begin '())))
            (cons (cons 'begin-syntax (cons '=> (cons '%#begin-syntax '())))
                  (cons (cons 'begin-foreign
                              (cons '=> (cons '%#begin-foreign '())))
                        (cons (cons 'begin-annotation
                                    (cons '=> (cons '%#begin-annotation '())))
                              (cons (cons 'import
                                          (cons '=> (cons '%#import '())))
                                    (cons (cons 'module
                                                (cons '=>
                                                      (cons '%#module '())))
                                          (cons (cons 'export
                                                      (cons '=>
                                                            (cons '%#export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'provide
                                                            (cons '=>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#provide '())))
              (cons (cons 'declare (cons '=> (cons '%#declare '())))
                    (cons (cons 'include (cons '=> (cons '%#include '())))
                          (cons (cons 'cond-expand
                                      (cons '=> (cons '%#cond-expand '())))
                                (cons (cons 'quote
                                            (cons '=> (cons '%#quote '())))
                                      (cons (cons 'quote-syntax
                                                  (cons '=>
                                                        (cons '%#quote-syntax
                                                              '())))
                                            (cons (cons 'let-syntax
                                                        (cons '=>
                                                              (cons '%#let-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'letrec-syntax
                                                              (cons '=>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '%#letrec-syntax '())))
                (cons (cons 'extern (cons gx#macro-expand-extern '()))
                      (cons (cons 'define-values
                                  (cons gx#macro-expand-define-values '()))
                            (cons (cons 'define-syntax
                                        (cons gx#macro-expand-define-syntax
                                              '()))
                                  (cons (cons 'define-alias
                                              (cons gx#macro-expand-define-alias
                                                    '()))
                                        (cons (cons 'lambda%
                                                    (cons gx#macro-expand-lambda%
                                                          '()))
                                              (cons (cons 'case-lambda
                                                          (cons gx#macro-expand-case-lambda
                                                                '()))
                                                    (cons (cons 'let-values
                                                                (cons gx#macro-expand-let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'letrec-values
                              (cons gx#macro-expand-letrec-values '()))
                        (cons (cons 'letrec*-values
                                    (cons gx#macro-expand-letrec*-values '()))
                              (cons (cons 'if (cons gx#macro-expand-if '()))
                                    (cons (cons '%%app
                                                (cons '=> (cons '%#call '())))
                                          (cons (cons '%%ref
                                                      (cons '=>
                                                            (cons '%#ref '())))
                                                (cons (cons '%%begin-module
                                                            (cons '=>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#begin-module '())))
              (cons (cons '_ '())
                    (cons (cons '... '())
                          (cons (cons 'else '())
                                (cons (cons '=> '())
                                      (cons (cons 'unquote '())
                                            (cons (cons 'unquote-splicing '())
                                                  (cons (cons 'unsyntax '())
                                                        (cons (cons 'unsyntax-splicing
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      '())))))))))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define gx#root-context:::init!__%
      (lambda (_%self127655%_ _%bind?127656%_)
        (let ()
          (let ((_%self127659%_ _%self127655%_))
            (let ()
              (if (##fx< '2 (##structure-length _%self127659%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self127659%_
                     'root
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self127659%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self127659%_
                         '2
                         (##vector-length _%self127659%_)))
              (if _%bind?127656%_
                  (begin
                    (let ((__method127714
                           (__method-ref
                            _%self127659%_
                            'bind-core-syntax-expanders!)))
                      (if __method127714
                          (__method127714 _%self127659%_)
                          (error '"Missing method"
                                 _%self127659%_
                                 'bind-core-syntax-expanders!)))
                    (let ((__method127715
                           (__method-ref
                            _%self127659%_
                            'bind-core-macro-expanders!)))
                      (if __method127715
                          (__method127715 _%self127659%_)
                          (error '"Missing method"
                                 _%self127659%_
                                 'bind-core-macro-expanders!)))
                    (let ((__method127716
                           (__method-ref _%self127659%_ 'bind-core-features!)))
                      (if __method127716
                          (__method127716 _%self127659%_)
                          (error '"Missing method"
                                 _%self127659%_
                                 'bind-core-features!))))
                  '#!void))))))
    (define gx#root-context:::init!__0
      (lambda (_%self127672%_)
        (let ((_%bind?127674%_ '#t))
          (gx#root-context:::init!__% _%self127672%_ _%bind?127674%_))))
    (define gx#root-context:::init!
      (lambda _g127719_
        (let ((_g127718_ (##length _g127719_)))
          (cond ((##fx= _g127718_ 1)
                 (apply (lambda (_%self127672%_)
                          (gx#root-context:::init!__0 _%self127672%_))
                        _g127719_))
                ((##fx= _g127718_ 2)
                 (apply (lambda (_%self127676%_ _%bind?127677%_)
                          (gx#root-context:::init!__%
                           _%self127676%_
                           _%bind?127677%_))
                        _g127719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g127719_))))))
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self127500%_ _%super127501%_)
        (let ()
          (let ((_%self127504%_ _%self127500%_))
            (let ()
              (let ((_%super127520%_
                     (let ((_%$e127514%_ _%super127501%_))
                       (if _%$e127514%_
                           _%$e127514%_
                           (let ((_%$e127517%_ (gx#core-context-root__0)))
                             (if _%$e127517%_
                                 _%$e127517%_
                                 (let ((__obj127717
                                        (##structure
                                         gx#root-context::t
                                         '#f
                                         '#f)))
                                   (gx#root-context:::init! __obj127717)
                                   __obj127717)))))))
                (if (##fx< '5 (##structure-length _%self127504%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self127504%_
                       'top
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127504%_
                       (make-hash-table-eq)
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127504%_
                       _%super127520%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127504%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127504%_
                       '#f
                       '5
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self127504%_
                           '5
                           (##vector-length _%self127504%_)))))))))
    (define gx#top-context:::init!__0
      (lambda (_%self127525%_)
        (let ((_%super127527%_ '#f))
          (gx#top-context:::init!__% _%self127525%_ _%super127527%_))))
    (define gx#top-context:::init!
      (lambda _g127721_
        (let ((_g127720_ (##length _g127721_)))
          (cond ((##fx= _g127720_ 1)
                 (apply (lambda (_%self127525%_)
                          (gx#top-context:::init!__0 _%self127525%_))
                        _g127721_))
                ((##fx= _g127720_ 2)
                 (apply (lambda (_%self127529%_ _%super127530%_)
                          (gx#top-context:::init!__%
                           _%self127529%_
                           _%super127530%_))
                        _g127721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g127721_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self127220%_ _%bindings127221%_)
        (let ()
          (let ((_%self127224%_ _%self127220%_))
            (let ()
              (for-each
               (lambda (_%bind127234%_)
                 (let* ((_%bind127235127242%_ _%bind127234%_)
                        (_%E127237127246%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%bind127235127242%_
                                  '([id . rest]))
                           '#!void))
                        (_%K127238127355%_
                         (lambda (_%rest127249%_ _%id127250%_)
                           (gx#core-context-put!
                            _%self127224%_
                            _%id127250%_
                            (##structure
                             gx#syntax-binding::t
                             _%id127250%_
                             _%id127250%_
                             '#f
                             (let* ((_%rest127251127262%_ _%rest127249%_)
                                    (_%E127253127266%_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _%rest127251127262%_
                                              '([key expander compiler]))
                                       '#!void))
                                    (_%K127254127331%_
                                     (lambda (_%compiler127269%_
                                              _%expander127270%_
                                              _%key127271%_)
                                       ((let* ((_%key127272127285%_
                                                _%key127271%_)
                                               (_%E127278127289%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%key127272127285%_
                                                         '(top:)
                                                         '(module:)
                                                         '(define:)
                                                         '(special:)
                                                         '(expr:))
                                                  '#!void)))
                                          (let ((_%K127283127325%_
                                                 (lambda ()
                                                   gx#make-top-special-form))
                                                (_%K127282127318%_
                                                 (lambda ()
                                                   gx#make-module-special-form))
                                                (_%K127281127310%_
                                                 (lambda ()
                                                   gx#make-definition-form))
                                                (_%K127280127302%_
                                                 (lambda ()
                                                   gx#make-special-form))
                                                (_%K127279127294%_
                                                 (lambda ()
                                                   gx#make-expression-form)))
                                            (let* ((_%try-match127277127297%_
                                                    (lambda ()
                                                      (if (##eq? _%key127272127285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'expr:)
                  (_%K127279127294%_)
                  (_%E127278127289%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%try-match127276127305%_
                                                    (lambda ()
                                                      (if (##eq? _%key127272127285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'special:)
                  (_%K127280127302%_)
                  (_%try-match127277127297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%try-match127275127313%_
                                                    (lambda ()
                                                      (if (##eq? _%key127272127285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'define:)
                  (_%K127281127310%_)
                  (_%try-match127276127305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%try-match127274127321%_
                                                    (lambda ()
                                                      (if (##eq? _%key127272127285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'module:)
                  (_%K127282127318%_)
                  (_%try-match127275127313%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##eq? _%key127272127285%_
                                                         'top:)
                                                  (_%K127283127325%_)
                                                  (_%try-match127274127321%_)))))
                                        _%expander127270%_
                                        _%id127250%_
                                        (let ((_%$e127328%_
                                               _%compiler127269%_))
                                          (if _%$e127328%_
                                              _%$e127328%_
                                              gx#core-compile-top-error))))))
                               (if (##pair? _%rest127251127262%_)
                                   (let ((_%hd127255127334%_
                                          (##car _%rest127251127262%_))
                                         (_%tl127256127336%_
                                          (##cdr _%rest127251127262%_)))
                                     (let ((_%key127339%_ _%hd127255127334%_))
                                       (if (##pair? _%tl127256127336%_)
                                           (let ((_%hd127257127341%_
                                                  (##car _%tl127256127336%_))
                                                 (_%tl127258127343%_
                                                  (##cdr _%tl127256127336%_)))
                                             (let ((_%expander127346%_
                                                    _%hd127257127341%_))
                                               (if (##pair? _%tl127258127343%_)
                                                   (let ((_%hd127259127348%_
                                                          (##car _%tl127258127343%_))
                                                         (_%tl127260127350%_
                                                          (##cdr _%tl127258127343%_)))
                                                     (let ((_%compiler127353%_
                                                            _%hd127259127348%_))
                                                       (if (##null? _%tl127260127350%_)
                                                           (_%K127254127331%_
                                                            _%compiler127353%_
                                                            _%expander127346%_
                                                            _%key127339%_)
                                                           (_%E127253127266%_))))
                                                   (_%E127253127266%_))))
                                           (_%E127253127266%_))))
                                   (_%E127253127266%_))))))))
                   (if (##pair? _%bind127235127242%_)
                       (let ((_%hd127239127358%_ (##car _%bind127235127242%_))
                             (_%tl127240127360%_ (##cdr _%bind127235127242%_)))
                         (let* ((_%id127363%_ _%hd127239127358%_)
                                (_%rest127365%_ _%tl127240127360%_))
                           (_%K127238127355%_ _%rest127365%_ _%id127363%_)))
                       (_%E127237127246%_))))
               _%bindings127221%_))))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127370%_)
        (let ((_%bindings127372%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127370%_
           _%bindings127372%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g127723_
        (let ((_g127722_ (##length _g127723_)))
          (cond ((##fx= _g127722_ 1)
                 (apply (lambda (_%self127370%_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _%self127370%_))
                        _g127723_))
                ((##fx= _g127722_ 2)
                 (apply (lambda (_%self127374%_ _%bindings127375%_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _%self127374%_
                           _%bindings127375%_))
                        _g127723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g127723_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self126981%_ _%bindings126982%_)
        (let ()
          (let ((_%self126985%_ _%self126981%_))
            (let ()
              (for-each
               (lambda (_%bind126995%_)
                 (let* ((_%bind126996127003%_ _%bind126995%_)
                        (_%E126998127007%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%bind126996127003%_
                                  '([id . rest]))
                           '#!void))
                        (_%K126999127075%_
                         (lambda (_%rest127010%_ _%id127011%_)
                           (gx#core-context-put!
                            _%self126985%_
                            _%id127011%_
                            (##structure
                             gx#syntax-binding::t
                             _%id127011%_
                             _%id127011%_
                             '#f
                             (let* ((_%rest127012127027%_ _%rest127010%_)
                                    (_%E127016127031%_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _%rest127012127027%_
                                              '(['=> core-id])
                                              '([proc])
                                              '([]))
                                       '#!void)))
                               (let ((_%K127021127060%_
                                      (lambda (_%core-id127058%_)
                                        (##structure
                                         gx#rename-macro-expander::t
                                         _%core-id127058%_)))
                                     (_%K127018127045%_
                                      (lambda (_%proc127043%_)
                                        (##structure
                                         gx#macro-expander::t
                                         _%proc127043%_)))
                                     (_%K127017127036%_
                                      (lambda ()
                                        (##structure
                                         gx#reserved-expander::t
                                         _%id127011%_))))
                                 (let ((_%try-match127015127039%_
                                        (lambda ()
                                          (if (##null? _%rest127012127027%_)
                                              (_%K127017127036%_)
                                              (_%E127016127031%_)))))
                                   (if (##pair? _%rest127012127027%_)
                                       (let ((_%tl127023127065%_
                                              (##cdr _%rest127012127027%_))
                                             (_%hd127022127063%_
                                              (##car _%rest127012127027%_)))
                                         (if (##eq? _%hd127022127063%_ '=>)
                                             (if (##pair? _%tl127023127065%_)
                                                 (let ((_%tl127025127070%_
                                                        (##cdr _%tl127023127065%_))
                                                       (_%hd127024127068%_
                                                        (##car _%tl127023127065%_)))
                                                   (if (##null? _%tl127025127070%_)
                                                       (let ((_%core-id127073%_
                                                              _%hd127024127068%_))
                                                         (##structure
                                                          gx#rename-macro-expander::t
                                                          _%core-id127073%_))
                                                       (_%E127016127031%_)))
                                                 (if (##null? _%tl127023127065%_)
                                                     (let ((_%proc127053%_
                                                            _%hd127022127063%_))
                                                       (##structure
                                                        gx#macro-expander::t
                                                        _%proc127053%_))
                                                     (_%E127016127031%_)))
                                             (if (##null? _%tl127023127065%_)
                                                 (let ((_%proc127053%_
                                                        _%hd127022127063%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc127053%_))
                                                 (_%E127016127031%_))))
                                       (_%try-match127015127039%_))))))))))
                   (if (##pair? _%bind126996127003%_)
                       (let ((_%hd127000127078%_ (##car _%bind126996127003%_))
                             (_%tl127001127080%_ (##cdr _%bind126996127003%_)))
                         (let* ((_%id127083%_ _%hd127000127078%_)
                                (_%rest127085%_ _%tl127001127080%_))
                           (_%K126999127075%_ _%rest127085%_ _%id127083%_)))
                       (_%E126998127007%_))))
               _%bindings126982%_))))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self127090%_)
        (let ((_%bindings127092%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self127090%_
           _%bindings127092%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g127725_
        (let ((_g127724_ (##length _g127725_)))
          (cond ((##fx= _g127724_ 1)
                 (apply (lambda (_%self127090%_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _%self127090%_))
                        _g127725_))
                ((##fx= _g127724_ 2)
                 (apply (lambda (_%self127094%_ _%bindings127095%_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _%self127094%_
                           _%bindings127095%_))
                        _g127725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g127725_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self126713%_)
        (let ()
          (let ((_%self126716%_ _%self126713%_))
            (let ()
              (letrec ((_%linux-variant?126726%_
                        (lambda (_%sys-type126826%_)
                          (let* ((_%g126827126835%_
                                  (__string-split
                                   (symbol->string _%sys-type126826%_)
                                   '#\-))
                                 (_%else126829126843%_ (lambda () '#f))
                                 (_%K126831126848%_
                                  (lambda (_%rest126846%_)
                                    (not (null? _%rest126846%_)))))
                            (if (##pair? _%g126827126835%_)
                                (let ((_%hd126832126851%_
                                       (##car _%g126827126835%_))
                                      (_%tl126833126853%_
                                       (##cdr _%g126827126835%_)))
                                  (if (equal? _%hd126832126851%_ '"linux")
                                      (let ((_%rest126856%_
                                             _%tl126833126853%_))
                                        (_%K126831126848%_ _%rest126856%_))
                                      (_%else126829126843%_)))
                                (_%else126829126843%_)))))
                       (_%bsd-variant126727%_
                        (lambda (_%sys-type126785%_)
                          (let ((_%sys-type-str126787%_
                                 (symbol->string _%sys-type126785%_)))
                            (let _%lp126789%_ ((_%rest126791%_
                                                '("openbsd"
                                                  "netbsd"
                                                  "freebsd"
                                                  "darwin")))
                              (let* ((_%rest126792126800%_ _%rest126791%_)
                                     (_%else126794126808%_ (lambda () '#f))
                                     (_%K126796126814%_
                                      (lambda (_%rest126811%_ _%sys126812%_)
                                        (if (string-prefix?
                                             _%sys126812%_
                                             _%sys-type-str126787%_)
                                            _%sys126812%_
                                            (_%lp126789%_ _%rest126811%_)))))
                                (if (##pair? _%rest126792126800%_)
                                    (let ((_%hd126797126817%_
                                           (##car _%rest126792126800%_))
                                          (_%tl126798126819%_
                                           (##cdr _%rest126792126800%_)))
                                      (let* ((_%sys126822%_ _%hd126797126817%_)
                                             (_%rest126824%_
                                              _%tl126798126819%_))
                                        (_%K126796126814%_
                                         _%rest126824%_
                                         _%sys126822%_)))
                                    (_%else126794126808%_))))))))
                (gx#core-bind-feature!__% 'gerbil '#f '0 _%self126716%_)
                (gx#core-bind-feature!__%
                 (gerbil-system)
                 '#f
                 '0
                 _%self126716%_)
                (let* ((_%g126728126740%_ (system-type))
                       (_%else126730126748%_ (lambda () '#!void))
                       (_%K126732126761%_
                        (lambda (_%sys-type126751%_
                                 _%sys-vendor126752%_
                                 _%sys-cpu126753%_)
                          (gx#core-bind-feature!__%
                           _%sys-cpu126753%_
                           '#f
                           '0
                           _%self126716%_)
                          (gx#core-bind-feature!__%
                           _%sys-type126751%_
                           '#f
                           '0
                           _%self126716%_)
                          (if (_%linux-variant?126726%_ _%sys-type126751%_)
                              (let ()
                                (gx#core-bind-feature!__%
                                 (##string->symbol '"linux")
                                 '#f
                                 '0
                                 _%self126716%_))
                              (let ((_%$e126756%_
                                     (_%bsd-variant126727%_
                                      _%sys-type126751%_)))
                                (if _%$e126756%_
                                    ((lambda (_%sys-prefix126759%_)
                                       (gx#core-bind-feature!__%
                                        (##string->symbol '"bsd")
                                        '#f
                                        '0
                                        _%self126716%_)
                                       (gx#core-bind-feature!__%
                                        (string->symbol _%sys-prefix126759%_)
                                        '#f
                                        '0
                                        _%self126716%_))
                                     _%$e126756%_)
                                    '#!void))))))
                  (if (##pair? _%g126728126740%_)
                      (let ((_%hd126733126764%_ (##car _%g126728126740%_))
                            (_%tl126734126766%_ (##cdr _%g126728126740%_)))
                        (let ((_%sys-cpu126769%_ _%hd126733126764%_))
                          (if (##pair? _%tl126734126766%_)
                              (let ((_%hd126735126771%_
                                     (##car _%tl126734126766%_))
                                    (_%tl126736126773%_
                                     (##cdr _%tl126734126766%_)))
                                (let ((_%sys-vendor126776%_
                                       _%hd126735126771%_))
                                  (if (##pair? _%tl126736126773%_)
                                      (let ((_%hd126737126778%_
                                             (##car _%tl126736126773%_))
                                            (_%tl126738126780%_
                                             (##cdr _%tl126736126773%_)))
                                        (let ((_%sys-type126783%_
                                               _%hd126737126778%_))
                                          (if (##null? _%tl126738126780%_)
                                              (_%K126732126761%_
                                               _%sys-type126783%_
                                               _%sys-vendor126776%_
                                               _%sys-cpu126769%_)
                                              '#!void)))
                                      '#!void)))
                              '#!void)))
                      '#!void))
                (if (gerbil-runtime-smp?)
                    (gx#core-bind-feature!__%
                     'gerbil-smp
                     '#f
                     '0
                     _%self126716%_)
                    '#!void)))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
