(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712256087)
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
      (lambda (_%self128236%_ _%bind?128237%_)
        (let ((_%self128240%_ _%self128236%_))
          (if (##fx< '2 (##structure-length _%self128240%_))
              (begin
                (##unchecked-structure-set! _%self128240%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self128240%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128240%_
                     '2
                     (##vector-length _%self128240%_)))
          (if _%bind?128237%_
              (begin
                (let ((__method128295
                       (__method-ref
                        _%self128240%_
                        'bind-core-syntax-expanders!)))
                  (if __method128295
                      (__method128295 _%self128240%_)
                      (error '"Missing method"
                             _%self128240%_
                             'bind-core-syntax-expanders!)))
                (let ((__method128296
                       (__method-ref
                        _%self128240%_
                        'bind-core-macro-expanders!)))
                  (if __method128296
                      (__method128296 _%self128240%_)
                      (error '"Missing method"
                             _%self128240%_
                             'bind-core-macro-expanders!)))
                (let ((__method128297
                       (__method-ref _%self128240%_ 'bind-core-features!)))
                  (if __method128297
                      (__method128297 _%self128240%_)
                      (error '"Missing method"
                             _%self128240%_
                             'bind-core-features!))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self128253%_)
        (let ((_%bind?128255%_ '#t))
          (gx#root-context:::init!__% _%self128253%_ _%bind?128255%_))))
    (define gx#root-context:::init!
      (lambda _g128300_
        (let ((_g128299_ (##length _g128300_)))
          (cond ((##fx= _g128299_ 1)
                 (apply (lambda (_%self128253%_)
                          (gx#root-context:::init!__0 _%self128253%_))
                        _g128300_))
                ((##fx= _g128299_ 2)
                 (apply (lambda (_%self128257%_ _%bind?128258%_)
                          (gx#root-context:::init!__%
                           _%self128257%_
                           _%bind?128258%_))
                        _g128300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g128300_))))))
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self128081%_ _%super128082%_)
        (let ()
          (let* ((_%self128085%_ _%self128081%_)
                 (_%super128101%_
                  (let ((_%$e128095%_ _%super128082%_))
                    (if _%$e128095%_
                        _%$e128095%_
                        (let ((_%$e128098%_ (gx#core-context-root__0)))
                          (if _%$e128098%_
                              _%$e128098%_
                              (let ((__obj128298
                                     (##structure gx#root-context::t '#f '#f)))
                                (gx#root-context:::init! __obj128298)
                                __obj128298)))))))
            (if (##fx< '5 (##structure-length _%self128085%_))
                (begin
                  (##unchecked-structure-set! _%self128085%_ 'top '1 '#f '#f)
                  (##unchecked-structure-set!
                   _%self128085%_
                   (make-hash-table-eq)
                   '2
                   '#f
                   '#f)
                  (##unchecked-structure-set!
                   _%self128085%_
                   _%super128101%_
                   '3
                   '#f
                   '#f)
                  (##unchecked-structure-set! _%self128085%_ '#f '4 '#f '#f)
                  (##unchecked-structure-set! _%self128085%_ '#f '5 '#f '#f)
                  '#!void)
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self128085%_
                       '5
                       (##vector-length _%self128085%_)))))))
    (define gx#top-context:::init!__0
      (lambda (_%self128106%_)
        (let ((_%super128108%_ '#f))
          (gx#top-context:::init!__% _%self128106%_ _%super128108%_))))
    (define gx#top-context:::init!
      (lambda _g128302_
        (let ((_g128301_ (##length _g128302_)))
          (cond ((##fx= _g128301_ 1)
                 (apply (lambda (_%self128106%_)
                          (gx#top-context:::init!__0 _%self128106%_))
                        _g128302_))
                ((##fx= _g128301_ 2)
                 (apply (lambda (_%self128110%_ _%super128111%_)
                          (gx#top-context:::init!__%
                           _%self128110%_
                           _%super128111%_))
                        _g128302_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g128302_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self127801%_ _%bindings127802%_)
        (let ((_%self127805%_ _%self127801%_))
          (for-each
           (lambda (_%bind127815%_)
             (let* ((_%bind127816127823%_ _%bind127815%_)
                    (_%E127818127827%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127816127823%_
                              '([id . rest]))
                       '#!void))
                    (_%K127819127936%_
                     (lambda (_%rest127830%_ _%id127831%_)
                       (gx#core-context-put!
                        _%self127805%_
                        _%id127831%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127831%_
                         _%id127831%_
                         '#f
                         (let* ((_%rest127832127843%_ _%rest127830%_)
                                (_%E127834127847%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127832127843%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K127835127912%_
                                 (lambda (_%compiler127850%_
                                          _%expander127851%_
                                          _%key127852%_)
                                   ((let* ((_%key127853127866%_ _%key127852%_)
                                           (_%E127859127870%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key127853127866%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K127864127906%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K127863127899%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K127862127891%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K127861127883%_
                                             (lambda () gx#make-special-form))
                                            (_%K127860127875%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match127858127878%_
                                                (lambda ()
                                                  (if (##eq? _%key127853127866%_
                                                             'expr:)
                                                      (_%K127860127875%_)
                                                      (_%E127859127870%_))))
                                               (_%try-match127857127886%_
                                                (lambda ()
                                                  (if (##eq? _%key127853127866%_
                                                             'special:)
                                                      (_%K127861127883%_)
                                                      (_%try-match127858127878%_))))
                                               (_%try-match127856127894%_
                                                (lambda ()
                                                  (if (##eq? _%key127853127866%_
                                                             'define:)
                                                      (_%K127862127891%_)
                                                      (_%try-match127857127886%_))))
                                               (_%try-match127855127902%_
                                                (lambda ()
                                                  (if (##eq? _%key127853127866%_
                                                             'module:)
                                                      (_%K127863127899%_)
                                                      (_%try-match127856127894%_)))))
                                          (if (##eq? _%key127853127866%_ 'top:)
                                              (_%K127864127906%_)
                                              (_%try-match127855127902%_)))))
                                    _%expander127851%_
                                    _%id127831%_
                                    (let ((_%$e127909%_ _%compiler127850%_))
                                      (if _%$e127909%_
                                          _%$e127909%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest127832127843%_)
                               (let ((_%hd127836127915%_
                                      (##car _%rest127832127843%_))
                                     (_%tl127837127917%_
                                      (##cdr _%rest127832127843%_)))
                                 (let ((_%key127920%_ _%hd127836127915%_))
                                   (if (##pair? _%tl127837127917%_)
                                       (let ((_%hd127838127922%_
                                              (##car _%tl127837127917%_))
                                             (_%tl127839127924%_
                                              (##cdr _%tl127837127917%_)))
                                         (let ((_%expander127927%_
                                                _%hd127838127922%_))
                                           (if (##pair? _%tl127839127924%_)
                                               (let ((_%hd127840127929%_
                                                      (##car _%tl127839127924%_))
                                                     (_%tl127841127931%_
                                                      (##cdr _%tl127839127924%_)))
                                                 (let ((_%compiler127934%_
                                                        _%hd127840127929%_))
                                                   (if (##null? _%tl127841127931%_)
                                                       (_%K127835127912%_
                                                        _%compiler127934%_
                                                        _%expander127927%_
                                                        _%key127920%_)
                                                       (_%E127834127847%_))))
                                               (_%E127834127847%_))))
                                       (_%E127834127847%_))))
                               (_%E127834127847%_))))))))
               (if (##pair? _%bind127816127823%_)
                   (let ((_%hd127820127939%_ (##car _%bind127816127823%_))
                         (_%tl127821127941%_ (##cdr _%bind127816127823%_)))
                     (let* ((_%id127944%_ _%hd127820127939%_)
                            (_%rest127946%_ _%tl127821127941%_))
                       (_%K127819127936%_ _%rest127946%_ _%id127944%_)))
                   (_%E127818127827%_))))
           _%bindings127802%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127951%_)
        (let ((_%bindings127953%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127951%_
           _%bindings127953%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g128304_
        (let ((_g128303_ (##length _g128304_)))
          (cond ((##fx= _g128303_ 1)
                 (apply (lambda (_%self127951%_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _%self127951%_))
                        _g128304_))
                ((##fx= _g128303_ 2)
                 (apply (lambda (_%self127955%_ _%bindings127956%_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _%self127955%_
                           _%bindings127956%_))
                        _g128304_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g128304_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self127562%_ _%bindings127563%_)
        (let ((_%self127566%_ _%self127562%_))
          (for-each
           (lambda (_%bind127576%_)
             (let* ((_%bind127577127584%_ _%bind127576%_)
                    (_%E127579127588%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127577127584%_
                              '([id . rest]))
                       '#!void))
                    (_%K127580127656%_
                     (lambda (_%rest127591%_ _%id127592%_)
                       (gx#core-context-put!
                        _%self127566%_
                        _%id127592%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127592%_
                         _%id127592%_
                         '#f
                         (let* ((_%rest127593127608%_ _%rest127591%_)
                                (_%E127597127612%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127593127608%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K127602127641%_
                                  (lambda (_%core-id127639%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id127639%_)))
                                 (_%K127599127626%_
                                  (lambda (_%proc127624%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc127624%_)))
                                 (_%K127598127617%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id127592%_))))
                             (let ((_%try-match127596127620%_
                                    (lambda ()
                                      (if (##null? _%rest127593127608%_)
                                          (_%K127598127617%_)
                                          (_%E127597127612%_)))))
                               (if (##pair? _%rest127593127608%_)
                                   (let ((_%tl127604127646%_
                                          (##cdr _%rest127593127608%_))
                                         (_%hd127603127644%_
                                          (##car _%rest127593127608%_)))
                                     (if (##eq? _%hd127603127644%_ '=>)
                                         (if (##pair? _%tl127604127646%_)
                                             (let ((_%tl127606127651%_
                                                    (##cdr _%tl127604127646%_))
                                                   (_%hd127605127649%_
                                                    (##car _%tl127604127646%_)))
                                               (if (##null? _%tl127606127651%_)
                                                   (let ((_%core-id127654%_
                                                          _%hd127605127649%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id127654%_))
                                                   (_%E127597127612%_)))
                                             (if (##null? _%tl127604127646%_)
                                                 (let ((_%proc127634%_
                                                        _%hd127603127644%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc127634%_))
                                                 (_%E127597127612%_)))
                                         (if (##null? _%tl127604127646%_)
                                             (let ((_%proc127634%_
                                                    _%hd127603127644%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc127634%_))
                                             (_%E127597127612%_))))
                                   (_%try-match127596127620%_))))))))))
               (if (##pair? _%bind127577127584%_)
                   (let ((_%hd127581127659%_ (##car _%bind127577127584%_))
                         (_%tl127582127661%_ (##cdr _%bind127577127584%_)))
                     (let* ((_%id127664%_ _%hd127581127659%_)
                            (_%rest127666%_ _%tl127582127661%_))
                       (_%K127580127656%_ _%rest127666%_ _%id127664%_)))
                   (_%E127579127588%_))))
           _%bindings127563%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self127671%_)
        (let ((_%bindings127673%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self127671%_
           _%bindings127673%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g128306_
        (let ((_g128305_ (##length _g128306_)))
          (cond ((##fx= _g128305_ 1)
                 (apply (lambda (_%self127671%_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _%self127671%_))
                        _g128306_))
                ((##fx= _g128305_ 2)
                 (apply (lambda (_%self127675%_ _%bindings127676%_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _%self127675%_
                           _%bindings127676%_))
                        _g128306_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g128306_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self127294%_)
        (let ((_%self127297%_ _%self127294%_))
          (letrec ((_%linux-variant?127307%_
                    (lambda (_%sys-type127407%_)
                      (let* ((_%g127408127416%_
                              (__string-split
                               (symbol->string _%sys-type127407%_)
                               '#\-))
                             (_%else127410127424%_ (lambda () '#f))
                             (_%K127412127429%_
                              (lambda (_%rest127427%_)
                                (not (null? _%rest127427%_)))))
                        (if (##pair? _%g127408127416%_)
                            (let ((_%hd127413127432%_
                                   (##car _%g127408127416%_))
                                  (_%tl127414127434%_
                                   (##cdr _%g127408127416%_)))
                              (if (equal? _%hd127413127432%_ '"linux")
                                  (let ((_%rest127437%_ _%tl127414127434%_))
                                    (_%K127412127429%_ _%rest127437%_))
                                  (_%else127410127424%_)))
                            (_%else127410127424%_)))))
                   (_%bsd-variant127308%_
                    (lambda (_%sys-type127366%_)
                      (let ((_%sys-type-str127368%_
                             (symbol->string _%sys-type127366%_)))
                        (let _%lp127370%_ ((_%rest127372%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest127373127381%_ _%rest127372%_)
                                 (_%else127375127389%_ (lambda () '#f))
                                 (_%K127377127395%_
                                  (lambda (_%rest127392%_ _%sys127393%_)
                                    (if (string-prefix?
                                         _%sys127393%_
                                         _%sys-type-str127368%_)
                                        _%sys127393%_
                                        (_%lp127370%_ _%rest127392%_)))))
                            (if (##pair? _%rest127373127381%_)
                                (let ((_%hd127378127398%_
                                       (##car _%rest127373127381%_))
                                      (_%tl127379127400%_
                                       (##cdr _%rest127373127381%_)))
                                  (let* ((_%sys127403%_ _%hd127378127398%_)
                                         (_%rest127405%_ _%tl127379127400%_))
                                    (_%K127377127395%_
                                     _%rest127405%_
                                     _%sys127403%_)))
                                (_%else127375127389%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self127297%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self127297%_)
            (let* ((_%g127309127321%_ (system-type))
                   (_%else127311127329%_ (lambda () '#!void))
                   (_%K127313127342%_
                    (lambda (_%sys-type127332%_
                             _%sys-vendor127333%_
                             _%sys-cpu127334%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu127334%_
                       '#f
                       '0
                       _%self127297%_)
                      (gx#core-bind-feature!__%
                       _%sys-type127332%_
                       '#f
                       '0
                       _%self127297%_)
                      (if (_%linux-variant?127307%_ _%sys-type127332%_)
                          (let ()
                            (gx#core-bind-feature!__%
                             (##string->symbol '"linux")
                             '#f
                             '0
                             _%self127297%_))
                          (let ((_%$e127337%_
                                 (_%bsd-variant127308%_ _%sys-type127332%_)))
                            (if _%$e127337%_
                                ((lambda (_%sys-prefix127340%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self127297%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix127340%_)
                                    '#f
                                    '0
                                    _%self127297%_))
                                 _%$e127337%_)
                                '#!void))))))
              (if (##pair? _%g127309127321%_)
                  (let ((_%hd127314127345%_ (##car _%g127309127321%_))
                        (_%tl127315127347%_ (##cdr _%g127309127321%_)))
                    (let ((_%sys-cpu127350%_ _%hd127314127345%_))
                      (if (##pair? _%tl127315127347%_)
                          (let ((_%hd127316127352%_ (##car _%tl127315127347%_))
                                (_%tl127317127354%_
                                 (##cdr _%tl127315127347%_)))
                            (let ((_%sys-vendor127357%_ _%hd127316127352%_))
                              (if (##pair? _%tl127317127354%_)
                                  (let ((_%hd127318127359%_
                                         (##car _%tl127317127354%_))
                                        (_%tl127319127361%_
                                         (##cdr _%tl127317127354%_)))
                                    (let ((_%sys-type127364%_
                                           _%hd127318127359%_))
                                      (if (##null? _%tl127319127361%_)
                                          (_%K127313127342%_
                                           _%sys-type127364%_
                                           _%sys-vendor127357%_
                                           _%sys-cpu127350%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self127297%_)
                '#!void)))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
