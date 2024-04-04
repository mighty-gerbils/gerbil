(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712246556)
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
      (lambda (_%self128253%_ _%bind?128254%_)
        (let ((_%self128257%_ _%self128253%_))
          (if (##fx< '2 (##structure-length _%self128257%_))
              (begin
                (##unchecked-structure-set! _%self128257%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self128257%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128257%_
                     '2
                     (##vector-length _%self128257%_)))
          (if _%bind?128254%_
              (begin
                (let ((__method128312
                       (__method-ref
                        _%self128257%_
                        'bind-core-syntax-expanders!)))
                  (if __method128312
                      (__method128312 _%self128257%_)
                      (error '"Missing method"
                             _%self128257%_
                             'bind-core-syntax-expanders!)))
                (let ((__method128313
                       (__method-ref
                        _%self128257%_
                        'bind-core-macro-expanders!)))
                  (if __method128313
                      (__method128313 _%self128257%_)
                      (error '"Missing method"
                             _%self128257%_
                             'bind-core-macro-expanders!)))
                (let ((__method128314
                       (__method-ref _%self128257%_ 'bind-core-features!)))
                  (if __method128314
                      (__method128314 _%self128257%_)
                      (error '"Missing method"
                             _%self128257%_
                             'bind-core-features!))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self128270%_)
        (let ((_%bind?128272%_ '#t))
          (gx#root-context:::init!__% _%self128270%_ _%bind?128272%_))))
    (define gx#root-context:::init!
      (lambda _g128317_
        (let ((_g128316_ (##length _g128317_)))
          (cond ((##fx= _g128316_ 1)
                 (apply (lambda (_%self128270%_)
                          (gx#root-context:::init!__0 _%self128270%_))
                        _g128317_))
                ((##fx= _g128316_ 2)
                 (apply (lambda (_%self128274%_ _%bind?128275%_)
                          (gx#root-context:::init!__%
                           _%self128274%_
                           _%bind?128275%_))
                        _g128317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g128317_))))))
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self128098%_ _%super128099%_)
        (let ()
          (let* ((_%self128102%_ _%self128098%_)
                 (_%super128118%_
                  (let ((_%$e128112%_ _%super128099%_))
                    (if _%$e128112%_
                        _%$e128112%_
                        (let ((_%$e128115%_ (gx#core-context-root__0)))
                          (if _%$e128115%_
                              _%$e128115%_
                              (let ((__obj128315
                                     (##structure gx#root-context::t '#f '#f)))
                                (gx#root-context:::init! __obj128315)
                                __obj128315)))))))
            (if (##fx< '5 (##structure-length _%self128102%_))
                (begin
                  (##unchecked-structure-set! _%self128102%_ 'top '1 '#f '#f)
                  (##unchecked-structure-set!
                   _%self128102%_
                   (make-hash-table-eq)
                   '2
                   '#f
                   '#f)
                  (##unchecked-structure-set!
                   _%self128102%_
                   _%super128118%_
                   '3
                   '#f
                   '#f)
                  (##unchecked-structure-set! _%self128102%_ '#f '4 '#f '#f)
                  (##unchecked-structure-set! _%self128102%_ '#f '5 '#f '#f)
                  '#!void)
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self128102%_
                       '5
                       (##vector-length _%self128102%_)))))))
    (define gx#top-context:::init!__0
      (lambda (_%self128123%_)
        (let ((_%super128125%_ '#f))
          (gx#top-context:::init!__% _%self128123%_ _%super128125%_))))
    (define gx#top-context:::init!
      (lambda _g128319_
        (let ((_g128318_ (##length _g128319_)))
          (cond ((##fx= _g128318_ 1)
                 (apply (lambda (_%self128123%_)
                          (gx#top-context:::init!__0 _%self128123%_))
                        _g128319_))
                ((##fx= _g128318_ 2)
                 (apply (lambda (_%self128127%_ _%super128128%_)
                          (gx#top-context:::init!__%
                           _%self128127%_
                           _%super128128%_))
                        _g128319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g128319_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self127818%_ _%bindings127819%_)
        (let ((_%self127822%_ _%self127818%_))
          (for-each
           (lambda (_%bind127832%_)
             (let* ((_%bind127833127840%_ _%bind127832%_)
                    (_%E127835127844%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127833127840%_
                              '([id . rest]))
                       '#!void))
                    (_%K127836127953%_
                     (lambda (_%rest127847%_ _%id127848%_)
                       (gx#core-context-put!
                        _%self127822%_
                        _%id127848%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127848%_
                         _%id127848%_
                         '#f
                         (let* ((_%rest127849127860%_ _%rest127847%_)
                                (_%E127851127864%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127849127860%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K127852127929%_
                                 (lambda (_%compiler127867%_
                                          _%expander127868%_
                                          _%key127869%_)
                                   ((let* ((_%key127870127883%_ _%key127869%_)
                                           (_%E127876127887%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key127870127883%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K127881127923%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K127880127916%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K127879127908%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K127878127900%_
                                             (lambda () gx#make-special-form))
                                            (_%K127877127892%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match127875127895%_
                                                (lambda ()
                                                  (if (##eq? _%key127870127883%_
                                                             'expr:)
                                                      (_%K127877127892%_)
                                                      (_%E127876127887%_))))
                                               (_%try-match127874127903%_
                                                (lambda ()
                                                  (if (##eq? _%key127870127883%_
                                                             'special:)
                                                      (_%K127878127900%_)
                                                      (_%try-match127875127895%_))))
                                               (_%try-match127873127911%_
                                                (lambda ()
                                                  (if (##eq? _%key127870127883%_
                                                             'define:)
                                                      (_%K127879127908%_)
                                                      (_%try-match127874127903%_))))
                                               (_%try-match127872127919%_
                                                (lambda ()
                                                  (if (##eq? _%key127870127883%_
                                                             'module:)
                                                      (_%K127880127916%_)
                                                      (_%try-match127873127911%_)))))
                                          (if (##eq? _%key127870127883%_ 'top:)
                                              (_%K127881127923%_)
                                              (_%try-match127872127919%_)))))
                                    _%expander127868%_
                                    _%id127848%_
                                    (let ((_%$e127926%_ _%compiler127867%_))
                                      (if _%$e127926%_
                                          _%$e127926%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest127849127860%_)
                               (let ((_%hd127853127932%_
                                      (##car _%rest127849127860%_))
                                     (_%tl127854127934%_
                                      (##cdr _%rest127849127860%_)))
                                 (let ((_%key127937%_ _%hd127853127932%_))
                                   (if (##pair? _%tl127854127934%_)
                                       (let ((_%hd127855127939%_
                                              (##car _%tl127854127934%_))
                                             (_%tl127856127941%_
                                              (##cdr _%tl127854127934%_)))
                                         (let ((_%expander127944%_
                                                _%hd127855127939%_))
                                           (if (##pair? _%tl127856127941%_)
                                               (let ((_%hd127857127946%_
                                                      (##car _%tl127856127941%_))
                                                     (_%tl127858127948%_
                                                      (##cdr _%tl127856127941%_)))
                                                 (let ((_%compiler127951%_
                                                        _%hd127857127946%_))
                                                   (if (##null? _%tl127858127948%_)
                                                       (_%K127852127929%_
                                                        _%compiler127951%_
                                                        _%expander127944%_
                                                        _%key127937%_)
                                                       (_%E127851127864%_))))
                                               (_%E127851127864%_))))
                                       (_%E127851127864%_))))
                               (_%E127851127864%_))))))))
               (if (##pair? _%bind127833127840%_)
                   (let ((_%hd127837127956%_ (##car _%bind127833127840%_))
                         (_%tl127838127958%_ (##cdr _%bind127833127840%_)))
                     (let* ((_%id127961%_ _%hd127837127956%_)
                            (_%rest127963%_ _%tl127838127958%_))
                       (_%K127836127953%_ _%rest127963%_ _%id127961%_)))
                   (_%E127835127844%_))))
           _%bindings127819%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127968%_)
        (let ((_%bindings127970%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127968%_
           _%bindings127970%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g128321_
        (let ((_g128320_ (##length _g128321_)))
          (cond ((##fx= _g128320_ 1)
                 (apply (lambda (_%self127968%_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _%self127968%_))
                        _g128321_))
                ((##fx= _g128320_ 2)
                 (apply (lambda (_%self127972%_ _%bindings127973%_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _%self127972%_
                           _%bindings127973%_))
                        _g128321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g128321_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self127579%_ _%bindings127580%_)
        (let ((_%self127583%_ _%self127579%_))
          (for-each
           (lambda (_%bind127593%_)
             (let* ((_%bind127594127601%_ _%bind127593%_)
                    (_%E127596127605%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127594127601%_
                              '([id . rest]))
                       '#!void))
                    (_%K127597127673%_
                     (lambda (_%rest127608%_ _%id127609%_)
                       (gx#core-context-put!
                        _%self127583%_
                        _%id127609%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127609%_
                         _%id127609%_
                         '#f
                         (let* ((_%rest127610127625%_ _%rest127608%_)
                                (_%E127614127629%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127610127625%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K127619127658%_
                                  (lambda (_%core-id127656%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id127656%_)))
                                 (_%K127616127643%_
                                  (lambda (_%proc127641%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc127641%_)))
                                 (_%K127615127634%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id127609%_))))
                             (let ((_%try-match127613127637%_
                                    (lambda ()
                                      (if (##null? _%rest127610127625%_)
                                          (_%K127615127634%_)
                                          (_%E127614127629%_)))))
                               (if (##pair? _%rest127610127625%_)
                                   (let ((_%tl127621127663%_
                                          (##cdr _%rest127610127625%_))
                                         (_%hd127620127661%_
                                          (##car _%rest127610127625%_)))
                                     (if (##eq? _%hd127620127661%_ '=>)
                                         (if (##pair? _%tl127621127663%_)
                                             (let ((_%tl127623127668%_
                                                    (##cdr _%tl127621127663%_))
                                                   (_%hd127622127666%_
                                                    (##car _%tl127621127663%_)))
                                               (if (##null? _%tl127623127668%_)
                                                   (let ((_%core-id127671%_
                                                          _%hd127622127666%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id127671%_))
                                                   (_%E127614127629%_)))
                                             (if (##null? _%tl127621127663%_)
                                                 (let ((_%proc127651%_
                                                        _%hd127620127661%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc127651%_))
                                                 (_%E127614127629%_)))
                                         (if (##null? _%tl127621127663%_)
                                             (let ((_%proc127651%_
                                                    _%hd127620127661%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc127651%_))
                                             (_%E127614127629%_))))
                                   (_%try-match127613127637%_))))))))))
               (if (##pair? _%bind127594127601%_)
                   (let ((_%hd127598127676%_ (##car _%bind127594127601%_))
                         (_%tl127599127678%_ (##cdr _%bind127594127601%_)))
                     (let* ((_%id127681%_ _%hd127598127676%_)
                            (_%rest127683%_ _%tl127599127678%_))
                       (_%K127597127673%_ _%rest127683%_ _%id127681%_)))
                   (_%E127596127605%_))))
           _%bindings127580%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self127688%_)
        (let ((_%bindings127690%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self127688%_
           _%bindings127690%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g128323_
        (let ((_g128322_ (##length _g128323_)))
          (cond ((##fx= _g128322_ 1)
                 (apply (lambda (_%self127688%_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _%self127688%_))
                        _g128323_))
                ((##fx= _g128322_ 2)
                 (apply (lambda (_%self127692%_ _%bindings127693%_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _%self127692%_
                           _%bindings127693%_))
                        _g128323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g128323_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self127311%_)
        (let ((_%self127314%_ _%self127311%_))
          (letrec ((_%linux-variant?127324%_
                    (lambda (_%sys-type127424%_)
                      (let* ((_%g127425127433%_
                              (__string-split
                               (symbol->string _%sys-type127424%_)
                               '#\-))
                             (_%else127427127441%_ (lambda () '#f))
                             (_%K127429127446%_
                              (lambda (_%rest127444%_)
                                (not (null? _%rest127444%_)))))
                        (if (##pair? _%g127425127433%_)
                            (let ((_%hd127430127449%_
                                   (##car _%g127425127433%_))
                                  (_%tl127431127451%_
                                   (##cdr _%g127425127433%_)))
                              (if (equal? _%hd127430127449%_ '"linux")
                                  (let ((_%rest127454%_ _%tl127431127451%_))
                                    (_%K127429127446%_ _%rest127454%_))
                                  (_%else127427127441%_)))
                            (_%else127427127441%_)))))
                   (_%bsd-variant127325%_
                    (lambda (_%sys-type127383%_)
                      (let ((_%sys-type-str127385%_
                             (symbol->string _%sys-type127383%_)))
                        (let _%lp127387%_ ((_%rest127389%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest127390127398%_ _%rest127389%_)
                                 (_%else127392127406%_ (lambda () '#f))
                                 (_%K127394127412%_
                                  (lambda (_%rest127409%_ _%sys127410%_)
                                    (if (string-prefix?
                                         _%sys127410%_
                                         _%sys-type-str127385%_)
                                        _%sys127410%_
                                        (_%lp127387%_ _%rest127409%_)))))
                            (if (##pair? _%rest127390127398%_)
                                (let ((_%hd127395127415%_
                                       (##car _%rest127390127398%_))
                                      (_%tl127396127417%_
                                       (##cdr _%rest127390127398%_)))
                                  (let* ((_%sys127420%_ _%hd127395127415%_)
                                         (_%rest127422%_ _%tl127396127417%_))
                                    (_%K127394127412%_
                                     _%rest127422%_
                                     _%sys127420%_)))
                                (_%else127392127406%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self127314%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self127314%_)
            (let* ((_%g127326127338%_ (system-type))
                   (_%else127328127346%_ (lambda () '#!void))
                   (_%K127330127359%_
                    (lambda (_%sys-type127349%_
                             _%sys-vendor127350%_
                             _%sys-cpu127351%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu127351%_
                       '#f
                       '0
                       _%self127314%_)
                      (gx#core-bind-feature!__%
                       _%sys-type127349%_
                       '#f
                       '0
                       _%self127314%_)
                      (if (_%linux-variant?127324%_ _%sys-type127349%_)
                          (let ()
                            (gx#core-bind-feature!__%
                             (##string->symbol '"linux")
                             '#f
                             '0
                             _%self127314%_))
                          (let ((_%$e127354%_
                                 (_%bsd-variant127325%_ _%sys-type127349%_)))
                            (if _%$e127354%_
                                ((lambda (_%sys-prefix127357%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self127314%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix127357%_)
                                    '#f
                                    '0
                                    _%self127314%_))
                                 _%$e127354%_)
                                '#!void))))))
              (if (##pair? _%g127326127338%_)
                  (let ((_%hd127331127362%_ (##car _%g127326127338%_))
                        (_%tl127332127364%_ (##cdr _%g127326127338%_)))
                    (let ((_%sys-cpu127367%_ _%hd127331127362%_))
                      (if (##pair? _%tl127332127364%_)
                          (let ((_%hd127333127369%_ (##car _%tl127332127364%_))
                                (_%tl127334127371%_
                                 (##cdr _%tl127332127364%_)))
                            (let ((_%sys-vendor127374%_ _%hd127333127369%_))
                              (if (##pair? _%tl127334127371%_)
                                  (let ((_%hd127335127376%_
                                         (##car _%tl127334127371%_))
                                        (_%tl127336127378%_
                                         (##cdr _%tl127334127371%_)))
                                    (let ((_%sys-type127381%_
                                           _%hd127335127376%_))
                                      (if (##null? _%tl127336127378%_)
                                          (_%K127330127359%_
                                           _%sys-type127381%_
                                           _%sys-vendor127374%_
                                           _%sys-cpu127367%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self127314%_)
                '#!void)))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
