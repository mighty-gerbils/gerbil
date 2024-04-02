(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712084086)
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
      (lambda (_%self127514%_ _%bind?127515%_)
        (let ()
          (let ((_%self127518%_ _%self127514%_))
            (let ()
              (if (##fx< '2 (##structure-length _%self127518%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self127518%_
                     'root
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self127518%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self127518%_
                         '2
                         (##vector-length _%self127518%_)))
              (if _%bind?127515%_
                  (begin
                    (let ((__method127573
                           (__method-ref
                            _%self127518%_
                            'bind-core-syntax-expanders!)))
                      (if __method127573
                          (__method127573 _%self127518%_)
                          (error '"Missing method"
                                 _%self127518%_
                                 'bind-core-syntax-expanders!)))
                    (let ((__method127574
                           (__method-ref
                            _%self127518%_
                            'bind-core-macro-expanders!)))
                      (if __method127574
                          (__method127574 _%self127518%_)
                          (error '"Missing method"
                                 _%self127518%_
                                 'bind-core-macro-expanders!)))
                    (let ((__method127575
                           (__method-ref _%self127518%_ 'bind-core-features!)))
                      (if __method127575
                          (__method127575 _%self127518%_)
                          (error '"Missing method"
                                 _%self127518%_
                                 'bind-core-features!))))
                  '#!void))))))
    (define gx#root-context:::init!__0
      (lambda (_%self127531%_)
        (let ((_%bind?127533%_ '#t))
          (gx#root-context:::init!__% _%self127531%_ _%bind?127533%_))))
    (define gx#root-context:::init!
      (lambda _g127578_
        (let ((_g127577_ (##length _g127578_)))
          (cond ((##fx= _g127577_ 1)
                 (apply (lambda (_%self127531%_)
                          (gx#root-context:::init!__0 _%self127531%_))
                        _g127578_))
                ((##fx= _g127577_ 2)
                 (apply (lambda (_%self127535%_ _%bind?127536%_)
                          (gx#root-context:::init!__%
                           _%self127535%_
                           _%bind?127536%_))
                        _g127578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g127578_))))))
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self127359%_ _%super127360%_)
        (let ()
          (let ((_%self127363%_ _%self127359%_))
            (let ()
              (let ((_%super127379%_
                     (let ((_%$e127373%_ _%super127360%_))
                       (if _%$e127373%_
                           _%$e127373%_
                           (let ((_%$e127376%_ (gx#core-context-root__0)))
                             (if _%$e127376%_
                                 _%$e127376%_
                                 (let ((__obj127576
                                        (##structure
                                         gx#root-context::t
                                         '#f
                                         '#f)))
                                   (gx#root-context:::init! __obj127576)
                                   __obj127576)))))))
                (if (##fx< '5 (##structure-length _%self127363%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self127363%_
                       'top
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127363%_
                       (make-hash-table-eq)
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127363%_
                       _%super127379%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127363%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127363%_
                       '#f
                       '5
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self127363%_
                           '5
                           (##vector-length _%self127363%_)))))))))
    (define gx#top-context:::init!__0
      (lambda (_%self127384%_)
        (let ((_%super127386%_ '#f))
          (gx#top-context:::init!__% _%self127384%_ _%super127386%_))))
    (define gx#top-context:::init!
      (lambda _g127580_
        (let ((_g127579_ (##length _g127580_)))
          (cond ((##fx= _g127579_ 1)
                 (apply (lambda (_%self127384%_)
                          (gx#top-context:::init!__0 _%self127384%_))
                        _g127580_))
                ((##fx= _g127579_ 2)
                 (apply (lambda (_%self127388%_ _%super127389%_)
                          (gx#top-context:::init!__%
                           _%self127388%_
                           _%super127389%_))
                        _g127580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g127580_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self127079%_ _%bindings127080%_)
        (let ()
          (let ((_%self127083%_ _%self127079%_))
            (let ()
              (for-each
               (lambda (_%bind127093%_)
                 (let* ((_%bind127094127101%_ _%bind127093%_)
                        (_%E127096127105%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%bind127094127101%_
                                  '([id . rest]))
                           '#!void))
                        (_%K127097127214%_
                         (lambda (_%rest127108%_ _%id127109%_)
                           (gx#core-context-put!
                            _%self127083%_
                            _%id127109%_
                            (##structure
                             gx#syntax-binding::t
                             _%id127109%_
                             _%id127109%_
                             '#f
                             (let* ((_%rest127110127121%_ _%rest127108%_)
                                    (_%E127112127125%_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _%rest127110127121%_
                                              '([key expander compiler]))
                                       '#!void))
                                    (_%K127113127190%_
                                     (lambda (_%compiler127128%_
                                              _%expander127129%_
                                              _%key127130%_)
                                       ((let* ((_%key127131127144%_
                                                _%key127130%_)
                                               (_%E127137127148%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%key127131127144%_
                                                         '(top:)
                                                         '(module:)
                                                         '(define:)
                                                         '(special:)
                                                         '(expr:))
                                                  '#!void)))
                                          (let ((_%K127142127184%_
                                                 (lambda ()
                                                   gx#make-top-special-form))
                                                (_%K127141127177%_
                                                 (lambda ()
                                                   gx#make-module-special-form))
                                                (_%K127140127169%_
                                                 (lambda ()
                                                   gx#make-definition-form))
                                                (_%K127139127161%_
                                                 (lambda ()
                                                   gx#make-special-form))
                                                (_%K127138127153%_
                                                 (lambda ()
                                                   gx#make-expression-form)))
                                            (let* ((_%try-match127136127156%_
                                                    (lambda ()
                                                      (if (##eq? _%key127131127144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'expr:)
                  (_%K127138127153%_)
                  (_%E127137127148%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%try-match127135127164%_
                                                    (lambda ()
                                                      (if (##eq? _%key127131127144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'special:)
                  (_%K127139127161%_)
                  (_%try-match127136127156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%try-match127134127172%_
                                                    (lambda ()
                                                      (if (##eq? _%key127131127144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'define:)
                  (_%K127140127169%_)
                  (_%try-match127135127164%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%try-match127133127180%_
                                                    (lambda ()
                                                      (if (##eq? _%key127131127144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'module:)
                  (_%K127141127177%_)
                  (_%try-match127134127172%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##eq? _%key127131127144%_
                                                         'top:)
                                                  (_%K127142127184%_)
                                                  (_%try-match127133127180%_)))))
                                        _%expander127129%_
                                        _%id127109%_
                                        (let ((_%$e127187%_
                                               _%compiler127128%_))
                                          (if _%$e127187%_
                                              _%$e127187%_
                                              gx#core-compile-top-error))))))
                               (if (##pair? _%rest127110127121%_)
                                   (let ((_%hd127114127193%_
                                          (##car _%rest127110127121%_))
                                         (_%tl127115127195%_
                                          (##cdr _%rest127110127121%_)))
                                     (let ((_%key127198%_ _%hd127114127193%_))
                                       (if (##pair? _%tl127115127195%_)
                                           (let ((_%hd127116127200%_
                                                  (##car _%tl127115127195%_))
                                                 (_%tl127117127202%_
                                                  (##cdr _%tl127115127195%_)))
                                             (let ((_%expander127205%_
                                                    _%hd127116127200%_))
                                               (if (##pair? _%tl127117127202%_)
                                                   (let ((_%hd127118127207%_
                                                          (##car _%tl127117127202%_))
                                                         (_%tl127119127209%_
                                                          (##cdr _%tl127117127202%_)))
                                                     (let ((_%compiler127212%_
                                                            _%hd127118127207%_))
                                                       (if (##null? _%tl127119127209%_)
                                                           (_%K127113127190%_
                                                            _%compiler127212%_
                                                            _%expander127205%_
                                                            _%key127198%_)
                                                           (_%E127112127125%_))))
                                                   (_%E127112127125%_))))
                                           (_%E127112127125%_))))
                                   (_%E127112127125%_))))))))
                   (if (##pair? _%bind127094127101%_)
                       (let ((_%hd127098127217%_ (##car _%bind127094127101%_))
                             (_%tl127099127219%_ (##cdr _%bind127094127101%_)))
                         (let* ((_%id127222%_ _%hd127098127217%_)
                                (_%rest127224%_ _%tl127099127219%_))
                           (_%K127097127214%_ _%rest127224%_ _%id127222%_)))
                       (_%E127096127105%_))))
               _%bindings127080%_))))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127229%_)
        (let ((_%bindings127231%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127229%_
           _%bindings127231%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g127582_
        (let ((_g127581_ (##length _g127582_)))
          (cond ((##fx= _g127581_ 1)
                 (apply (lambda (_%self127229%_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _%self127229%_))
                        _g127582_))
                ((##fx= _g127581_ 2)
                 (apply (lambda (_%self127233%_ _%bindings127234%_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _%self127233%_
                           _%bindings127234%_))
                        _g127582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g127582_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self126840%_ _%bindings126841%_)
        (let ()
          (let ((_%self126844%_ _%self126840%_))
            (let ()
              (for-each
               (lambda (_%bind126854%_)
                 (let* ((_%bind126855126862%_ _%bind126854%_)
                        (_%E126857126866%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%bind126855126862%_
                                  '([id . rest]))
                           '#!void))
                        (_%K126858126934%_
                         (lambda (_%rest126869%_ _%id126870%_)
                           (gx#core-context-put!
                            _%self126844%_
                            _%id126870%_
                            (##structure
                             gx#syntax-binding::t
                             _%id126870%_
                             _%id126870%_
                             '#f
                             (let* ((_%rest126871126886%_ _%rest126869%_)
                                    (_%E126875126890%_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _%rest126871126886%_
                                              '(['=> core-id])
                                              '([proc])
                                              '([]))
                                       '#!void)))
                               (let ((_%K126880126919%_
                                      (lambda (_%core-id126917%_)
                                        (##structure
                                         gx#rename-macro-expander::t
                                         _%core-id126917%_)))
                                     (_%K126877126904%_
                                      (lambda (_%proc126902%_)
                                        (##structure
                                         gx#macro-expander::t
                                         _%proc126902%_)))
                                     (_%K126876126895%_
                                      (lambda ()
                                        (##structure
                                         gx#reserved-expander::t
                                         _%id126870%_))))
                                 (let ((_%try-match126874126898%_
                                        (lambda ()
                                          (if (##null? _%rest126871126886%_)
                                              (_%K126876126895%_)
                                              (_%E126875126890%_)))))
                                   (if (##pair? _%rest126871126886%_)
                                       (let ((_%tl126882126924%_
                                              (##cdr _%rest126871126886%_))
                                             (_%hd126881126922%_
                                              (##car _%rest126871126886%_)))
                                         (if (##eq? _%hd126881126922%_ '=>)
                                             (if (##pair? _%tl126882126924%_)
                                                 (let ((_%tl126884126929%_
                                                        (##cdr _%tl126882126924%_))
                                                       (_%hd126883126927%_
                                                        (##car _%tl126882126924%_)))
                                                   (if (##null? _%tl126884126929%_)
                                                       (let ((_%core-id126932%_
                                                              _%hd126883126927%_))
                                                         (##structure
                                                          gx#rename-macro-expander::t
                                                          _%core-id126932%_))
                                                       (_%E126875126890%_)))
                                                 (if (##null? _%tl126882126924%_)
                                                     (let ((_%proc126912%_
                                                            _%hd126881126922%_))
                                                       (##structure
                                                        gx#macro-expander::t
                                                        _%proc126912%_))
                                                     (_%E126875126890%_)))
                                             (if (##null? _%tl126882126924%_)
                                                 (let ((_%proc126912%_
                                                        _%hd126881126922%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc126912%_))
                                                 (_%E126875126890%_))))
                                       (_%try-match126874126898%_))))))))))
                   (if (##pair? _%bind126855126862%_)
                       (let ((_%hd126859126937%_ (##car _%bind126855126862%_))
                             (_%tl126860126939%_ (##cdr _%bind126855126862%_)))
                         (let* ((_%id126942%_ _%hd126859126937%_)
                                (_%rest126944%_ _%tl126860126939%_))
                           (_%K126858126934%_ _%rest126944%_ _%id126942%_)))
                       (_%E126857126866%_))))
               _%bindings126841%_))))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self126949%_)
        (let ((_%bindings126951%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self126949%_
           _%bindings126951%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g127584_
        (let ((_g127583_ (##length _g127584_)))
          (cond ((##fx= _g127583_ 1)
                 (apply (lambda (_%self126949%_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _%self126949%_))
                        _g127584_))
                ((##fx= _g127583_ 2)
                 (apply (lambda (_%self126953%_ _%bindings126954%_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _%self126953%_
                           _%bindings126954%_))
                        _g127584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g127584_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self126572%_)
        (let ()
          (let ((_%self126575%_ _%self126572%_))
            (let ()
              (letrec ((_%linux-variant?126585%_
                        (lambda (_%sys-type126685%_)
                          (let* ((_%g126686126694%_
                                  (__string-split
                                   (symbol->string _%sys-type126685%_)
                                   '#\-))
                                 (_%else126688126702%_ (lambda () '#f))
                                 (_%K126690126707%_
                                  (lambda (_%rest126705%_)
                                    (not (null? _%rest126705%_)))))
                            (if (##pair? _%g126686126694%_)
                                (let ((_%hd126691126710%_
                                       (##car _%g126686126694%_))
                                      (_%tl126692126712%_
                                       (##cdr _%g126686126694%_)))
                                  (if (equal? _%hd126691126710%_ '"linux")
                                      (let ((_%rest126715%_
                                             _%tl126692126712%_))
                                        (_%K126690126707%_ _%rest126715%_))
                                      (_%else126688126702%_)))
                                (_%else126688126702%_)))))
                       (_%bsd-variant126586%_
                        (lambda (_%sys-type126644%_)
                          (let ((_%sys-type-str126646%_
                                 (symbol->string _%sys-type126644%_)))
                            (let _%lp126648%_ ((_%rest126650%_
                                                '("openbsd"
                                                  "netbsd"
                                                  "freebsd"
                                                  "darwin")))
                              (let* ((_%rest126651126659%_ _%rest126650%_)
                                     (_%else126653126667%_ (lambda () '#f))
                                     (_%K126655126673%_
                                      (lambda (_%rest126670%_ _%sys126671%_)
                                        (if (string-prefix?
                                             _%sys126671%_
                                             _%sys-type-str126646%_)
                                            _%sys126671%_
                                            (_%lp126648%_ _%rest126670%_)))))
                                (if (##pair? _%rest126651126659%_)
                                    (let ((_%hd126656126676%_
                                           (##car _%rest126651126659%_))
                                          (_%tl126657126678%_
                                           (##cdr _%rest126651126659%_)))
                                      (let* ((_%sys126681%_ _%hd126656126676%_)
                                             (_%rest126683%_
                                              _%tl126657126678%_))
                                        (_%K126655126673%_
                                         _%rest126683%_
                                         _%sys126681%_)))
                                    (_%else126653126667%_))))))))
                (gx#core-bind-feature!__% 'gerbil '#f '0 _%self126575%_)
                (gx#core-bind-feature!__%
                 (gerbil-system)
                 '#f
                 '0
                 _%self126575%_)
                (let* ((_%g126587126599%_ (system-type))
                       (_%else126589126607%_ (lambda () '#!void))
                       (_%K126591126620%_
                        (lambda (_%sys-type126610%_
                                 _%sys-vendor126611%_
                                 _%sys-cpu126612%_)
                          (gx#core-bind-feature!__%
                           _%sys-cpu126612%_
                           '#f
                           '0
                           _%self126575%_)
                          (gx#core-bind-feature!__%
                           _%sys-type126610%_
                           '#f
                           '0
                           _%self126575%_)
                          (if (_%linux-variant?126585%_ _%sys-type126610%_)
                              (let ()
                                (gx#core-bind-feature!__%
                                 (##string->symbol '"linux")
                                 '#f
                                 '0
                                 _%self126575%_))
                              (let ((_%$e126615%_
                                     (_%bsd-variant126586%_
                                      _%sys-type126610%_)))
                                (if _%$e126615%_
                                    ((lambda (_%sys-prefix126618%_)
                                       (gx#core-bind-feature!__%
                                        (##string->symbol '"bsd")
                                        '#f
                                        '0
                                        _%self126575%_)
                                       (gx#core-bind-feature!__%
                                        (string->symbol _%sys-prefix126618%_)
                                        '#f
                                        '0
                                        _%self126575%_))
                                     _%$e126615%_)
                                    '#!void))))))
                  (if (##pair? _%g126587126599%_)
                      (let ((_%hd126592126623%_ (##car _%g126587126599%_))
                            (_%tl126593126625%_ (##cdr _%g126587126599%_)))
                        (let ((_%sys-cpu126628%_ _%hd126592126623%_))
                          (if (##pair? _%tl126593126625%_)
                              (let ((_%hd126594126630%_
                                     (##car _%tl126593126625%_))
                                    (_%tl126595126632%_
                                     (##cdr _%tl126593126625%_)))
                                (let ((_%sys-vendor126635%_
                                       _%hd126594126630%_))
                                  (if (##pair? _%tl126595126632%_)
                                      (let ((_%hd126596126637%_
                                             (##car _%tl126595126632%_))
                                            (_%tl126597126639%_
                                             (##cdr _%tl126595126632%_)))
                                        (let ((_%sys-type126642%_
                                               _%hd126596126637%_))
                                          (if (##null? _%tl126597126639%_)
                                              (_%K126591126620%_
                                               _%sys-type126642%_
                                               _%sys-vendor126635%_
                                               _%sys-cpu126628%_)
                                              '#!void)))
                                      '#!void)))
                              '#!void)))
                      '#!void))
                (if (gerbil-runtime-smp?)
                    (gx#core-bind-feature!__%
                     'gerbil-smp
                     '#f
                     '0
                     _%self126575%_)
                    '#!void)))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
