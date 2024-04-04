(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712251112)
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
      (lambda (_%self128228%_ _%bind?128229%_)
        (let ((_%self128232%_ _%self128228%_))
          (if (##fx< '2 (##structure-length _%self128232%_))
              (begin
                (##unchecked-structure-set! _%self128232%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self128232%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128232%_
                     '2
                     (##vector-length _%self128232%_)))
          (if _%bind?128229%_
              (begin
                (let ((__method128287
                       (__method-ref
                        _%self128232%_
                        'bind-core-syntax-expanders!)))
                  (if __method128287
                      (__method128287 _%self128232%_)
                      (error '"Missing method"
                             _%self128232%_
                             'bind-core-syntax-expanders!)))
                (let ((__method128288
                       (__method-ref
                        _%self128232%_
                        'bind-core-macro-expanders!)))
                  (if __method128288
                      (__method128288 _%self128232%_)
                      (error '"Missing method"
                             _%self128232%_
                             'bind-core-macro-expanders!)))
                (let ((__method128289
                       (__method-ref _%self128232%_ 'bind-core-features!)))
                  (if __method128289
                      (__method128289 _%self128232%_)
                      (error '"Missing method"
                             _%self128232%_
                             'bind-core-features!))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self128245%_)
        (let ((_%bind?128247%_ '#t))
          (gx#root-context:::init!__% _%self128245%_ _%bind?128247%_))))
    (define gx#root-context:::init!
      (lambda _g128292_
        (let ((_g128291_ (##length _g128292_)))
          (cond ((##fx= _g128291_ 1)
                 (apply (lambda (_%self128245%_)
                          (gx#root-context:::init!__0 _%self128245%_))
                        _g128292_))
                ((##fx= _g128291_ 2)
                 (apply (lambda (_%self128249%_ _%bind?128250%_)
                          (gx#root-context:::init!__%
                           _%self128249%_
                           _%bind?128250%_))
                        _g128292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g128292_))))))
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self128073%_ _%super128074%_)
        (let ()
          (let* ((_%self128077%_ _%self128073%_)
                 (_%super128093%_
                  (let ((_%$e128087%_ _%super128074%_))
                    (if _%$e128087%_
                        _%$e128087%_
                        (let ((_%$e128090%_ (gx#core-context-root__0)))
                          (if _%$e128090%_
                              _%$e128090%_
                              (let ((__obj128290
                                     (##structure gx#root-context::t '#f '#f)))
                                (gx#root-context:::init! __obj128290)
                                __obj128290)))))))
            (if (##fx< '5 (##structure-length _%self128077%_))
                (begin
                  (##unchecked-structure-set! _%self128077%_ 'top '1 '#f '#f)
                  (##unchecked-structure-set!
                   _%self128077%_
                   (make-hash-table-eq)
                   '2
                   '#f
                   '#f)
                  (##unchecked-structure-set!
                   _%self128077%_
                   _%super128093%_
                   '3
                   '#f
                   '#f)
                  (##unchecked-structure-set! _%self128077%_ '#f '4 '#f '#f)
                  (##unchecked-structure-set! _%self128077%_ '#f '5 '#f '#f)
                  '#!void)
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self128077%_
                       '5
                       (##vector-length _%self128077%_)))))))
    (define gx#top-context:::init!__0
      (lambda (_%self128098%_)
        (let ((_%super128100%_ '#f))
          (gx#top-context:::init!__% _%self128098%_ _%super128100%_))))
    (define gx#top-context:::init!
      (lambda _g128294_
        (let ((_g128293_ (##length _g128294_)))
          (cond ((##fx= _g128293_ 1)
                 (apply (lambda (_%self128098%_)
                          (gx#top-context:::init!__0 _%self128098%_))
                        _g128294_))
                ((##fx= _g128293_ 2)
                 (apply (lambda (_%self128102%_ _%super128103%_)
                          (gx#top-context:::init!__%
                           _%self128102%_
                           _%super128103%_))
                        _g128294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g128294_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self127793%_ _%bindings127794%_)
        (let ((_%self127797%_ _%self127793%_))
          (for-each
           (lambda (_%bind127807%_)
             (let* ((_%bind127808127815%_ _%bind127807%_)
                    (_%E127810127819%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127808127815%_
                              '([id . rest]))
                       '#!void))
                    (_%K127811127928%_
                     (lambda (_%rest127822%_ _%id127823%_)
                       (gx#core-context-put!
                        _%self127797%_
                        _%id127823%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127823%_
                         _%id127823%_
                         '#f
                         (let* ((_%rest127824127835%_ _%rest127822%_)
                                (_%E127826127839%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127824127835%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K127827127904%_
                                 (lambda (_%compiler127842%_
                                          _%expander127843%_
                                          _%key127844%_)
                                   ((let* ((_%key127845127858%_ _%key127844%_)
                                           (_%E127851127862%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key127845127858%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K127856127898%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K127855127891%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K127854127883%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K127853127875%_
                                             (lambda () gx#make-special-form))
                                            (_%K127852127867%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match127850127870%_
                                                (lambda ()
                                                  (if (##eq? _%key127845127858%_
                                                             'expr:)
                                                      (_%K127852127867%_)
                                                      (_%E127851127862%_))))
                                               (_%try-match127849127878%_
                                                (lambda ()
                                                  (if (##eq? _%key127845127858%_
                                                             'special:)
                                                      (_%K127853127875%_)
                                                      (_%try-match127850127870%_))))
                                               (_%try-match127848127886%_
                                                (lambda ()
                                                  (if (##eq? _%key127845127858%_
                                                             'define:)
                                                      (_%K127854127883%_)
                                                      (_%try-match127849127878%_))))
                                               (_%try-match127847127894%_
                                                (lambda ()
                                                  (if (##eq? _%key127845127858%_
                                                             'module:)
                                                      (_%K127855127891%_)
                                                      (_%try-match127848127886%_)))))
                                          (if (##eq? _%key127845127858%_ 'top:)
                                              (_%K127856127898%_)
                                              (_%try-match127847127894%_)))))
                                    _%expander127843%_
                                    _%id127823%_
                                    (let ((_%$e127901%_ _%compiler127842%_))
                                      (if _%$e127901%_
                                          _%$e127901%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest127824127835%_)
                               (let ((_%hd127828127907%_
                                      (##car _%rest127824127835%_))
                                     (_%tl127829127909%_
                                      (##cdr _%rest127824127835%_)))
                                 (let ((_%key127912%_ _%hd127828127907%_))
                                   (if (##pair? _%tl127829127909%_)
                                       (let ((_%hd127830127914%_
                                              (##car _%tl127829127909%_))
                                             (_%tl127831127916%_
                                              (##cdr _%tl127829127909%_)))
                                         (let ((_%expander127919%_
                                                _%hd127830127914%_))
                                           (if (##pair? _%tl127831127916%_)
                                               (let ((_%hd127832127921%_
                                                      (##car _%tl127831127916%_))
                                                     (_%tl127833127923%_
                                                      (##cdr _%tl127831127916%_)))
                                                 (let ((_%compiler127926%_
                                                        _%hd127832127921%_))
                                                   (if (##null? _%tl127833127923%_)
                                                       (_%K127827127904%_
                                                        _%compiler127926%_
                                                        _%expander127919%_
                                                        _%key127912%_)
                                                       (_%E127826127839%_))))
                                               (_%E127826127839%_))))
                                       (_%E127826127839%_))))
                               (_%E127826127839%_))))))))
               (if (##pair? _%bind127808127815%_)
                   (let ((_%hd127812127931%_ (##car _%bind127808127815%_))
                         (_%tl127813127933%_ (##cdr _%bind127808127815%_)))
                     (let* ((_%id127936%_ _%hd127812127931%_)
                            (_%rest127938%_ _%tl127813127933%_))
                       (_%K127811127928%_ _%rest127938%_ _%id127936%_)))
                   (_%E127810127819%_))))
           _%bindings127794%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127943%_)
        (let ((_%bindings127945%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127943%_
           _%bindings127945%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g128296_
        (let ((_g128295_ (##length _g128296_)))
          (cond ((##fx= _g128295_ 1)
                 (apply (lambda (_%self127943%_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _%self127943%_))
                        _g128296_))
                ((##fx= _g128295_ 2)
                 (apply (lambda (_%self127947%_ _%bindings127948%_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _%self127947%_
                           _%bindings127948%_))
                        _g128296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g128296_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self127554%_ _%bindings127555%_)
        (let ((_%self127558%_ _%self127554%_))
          (for-each
           (lambda (_%bind127568%_)
             (let* ((_%bind127569127576%_ _%bind127568%_)
                    (_%E127571127580%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127569127576%_
                              '([id . rest]))
                       '#!void))
                    (_%K127572127648%_
                     (lambda (_%rest127583%_ _%id127584%_)
                       (gx#core-context-put!
                        _%self127558%_
                        _%id127584%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127584%_
                         _%id127584%_
                         '#f
                         (let* ((_%rest127585127600%_ _%rest127583%_)
                                (_%E127589127604%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127585127600%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K127594127633%_
                                  (lambda (_%core-id127631%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id127631%_)))
                                 (_%K127591127618%_
                                  (lambda (_%proc127616%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc127616%_)))
                                 (_%K127590127609%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id127584%_))))
                             (let ((_%try-match127588127612%_
                                    (lambda ()
                                      (if (##null? _%rest127585127600%_)
                                          (_%K127590127609%_)
                                          (_%E127589127604%_)))))
                               (if (##pair? _%rest127585127600%_)
                                   (let ((_%tl127596127638%_
                                          (##cdr _%rest127585127600%_))
                                         (_%hd127595127636%_
                                          (##car _%rest127585127600%_)))
                                     (if (##eq? _%hd127595127636%_ '=>)
                                         (if (##pair? _%tl127596127638%_)
                                             (let ((_%tl127598127643%_
                                                    (##cdr _%tl127596127638%_))
                                                   (_%hd127597127641%_
                                                    (##car _%tl127596127638%_)))
                                               (if (##null? _%tl127598127643%_)
                                                   (let ((_%core-id127646%_
                                                          _%hd127597127641%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id127646%_))
                                                   (_%E127589127604%_)))
                                             (if (##null? _%tl127596127638%_)
                                                 (let ((_%proc127626%_
                                                        _%hd127595127636%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc127626%_))
                                                 (_%E127589127604%_)))
                                         (if (##null? _%tl127596127638%_)
                                             (let ((_%proc127626%_
                                                    _%hd127595127636%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc127626%_))
                                             (_%E127589127604%_))))
                                   (_%try-match127588127612%_))))))))))
               (if (##pair? _%bind127569127576%_)
                   (let ((_%hd127573127651%_ (##car _%bind127569127576%_))
                         (_%tl127574127653%_ (##cdr _%bind127569127576%_)))
                     (let* ((_%id127656%_ _%hd127573127651%_)
                            (_%rest127658%_ _%tl127574127653%_))
                       (_%K127572127648%_ _%rest127658%_ _%id127656%_)))
                   (_%E127571127580%_))))
           _%bindings127555%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self127663%_)
        (let ((_%bindings127665%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self127663%_
           _%bindings127665%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g128298_
        (let ((_g128297_ (##length _g128298_)))
          (cond ((##fx= _g128297_ 1)
                 (apply (lambda (_%self127663%_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _%self127663%_))
                        _g128298_))
                ((##fx= _g128297_ 2)
                 (apply (lambda (_%self127667%_ _%bindings127668%_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _%self127667%_
                           _%bindings127668%_))
                        _g128298_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g128298_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self127286%_)
        (let ((_%self127289%_ _%self127286%_))
          (letrec ((_%linux-variant?127299%_
                    (lambda (_%sys-type127399%_)
                      (let* ((_%g127400127408%_
                              (__string-split
                               (symbol->string _%sys-type127399%_)
                               '#\-))
                             (_%else127402127416%_ (lambda () '#f))
                             (_%K127404127421%_
                              (lambda (_%rest127419%_)
                                (not (null? _%rest127419%_)))))
                        (if (##pair? _%g127400127408%_)
                            (let ((_%hd127405127424%_
                                   (##car _%g127400127408%_))
                                  (_%tl127406127426%_
                                   (##cdr _%g127400127408%_)))
                              (if (equal? _%hd127405127424%_ '"linux")
                                  (let ((_%rest127429%_ _%tl127406127426%_))
                                    (_%K127404127421%_ _%rest127429%_))
                                  (_%else127402127416%_)))
                            (_%else127402127416%_)))))
                   (_%bsd-variant127300%_
                    (lambda (_%sys-type127358%_)
                      (let ((_%sys-type-str127360%_
                             (symbol->string _%sys-type127358%_)))
                        (let _%lp127362%_ ((_%rest127364%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest127365127373%_ _%rest127364%_)
                                 (_%else127367127381%_ (lambda () '#f))
                                 (_%K127369127387%_
                                  (lambda (_%rest127384%_ _%sys127385%_)
                                    (if (string-prefix?
                                         _%sys127385%_
                                         _%sys-type-str127360%_)
                                        _%sys127385%_
                                        (_%lp127362%_ _%rest127384%_)))))
                            (if (##pair? _%rest127365127373%_)
                                (let ((_%hd127370127390%_
                                       (##car _%rest127365127373%_))
                                      (_%tl127371127392%_
                                       (##cdr _%rest127365127373%_)))
                                  (let* ((_%sys127395%_ _%hd127370127390%_)
                                         (_%rest127397%_ _%tl127371127392%_))
                                    (_%K127369127387%_
                                     _%rest127397%_
                                     _%sys127395%_)))
                                (_%else127367127381%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self127289%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self127289%_)
            (let* ((_%g127301127313%_ (system-type))
                   (_%else127303127321%_ (lambda () '#!void))
                   (_%K127305127334%_
                    (lambda (_%sys-type127324%_
                             _%sys-vendor127325%_
                             _%sys-cpu127326%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu127326%_
                       '#f
                       '0
                       _%self127289%_)
                      (gx#core-bind-feature!__%
                       _%sys-type127324%_
                       '#f
                       '0
                       _%self127289%_)
                      (if (_%linux-variant?127299%_ _%sys-type127324%_)
                          (let ()
                            (gx#core-bind-feature!__%
                             (##string->symbol '"linux")
                             '#f
                             '0
                             _%self127289%_))
                          (let ((_%$e127329%_
                                 (_%bsd-variant127300%_ _%sys-type127324%_)))
                            (if _%$e127329%_
                                ((lambda (_%sys-prefix127332%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self127289%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix127332%_)
                                    '#f
                                    '0
                                    _%self127289%_))
                                 _%$e127329%_)
                                '#!void))))))
              (if (##pair? _%g127301127313%_)
                  (let ((_%hd127306127337%_ (##car _%g127301127313%_))
                        (_%tl127307127339%_ (##cdr _%g127301127313%_)))
                    (let ((_%sys-cpu127342%_ _%hd127306127337%_))
                      (if (##pair? _%tl127307127339%_)
                          (let ((_%hd127308127344%_ (##car _%tl127307127339%_))
                                (_%tl127309127346%_
                                 (##cdr _%tl127307127339%_)))
                            (let ((_%sys-vendor127349%_ _%hd127308127344%_))
                              (if (##pair? _%tl127309127346%_)
                                  (let ((_%hd127310127351%_
                                         (##car _%tl127309127346%_))
                                        (_%tl127311127353%_
                                         (##cdr _%tl127309127346%_)))
                                    (let ((_%sys-type127356%_
                                           _%hd127310127351%_))
                                      (if (##null? _%tl127311127353%_)
                                          (_%K127305127334%_
                                           _%sys-type127356%_
                                           _%sys-vendor127349%_
                                           _%sys-cpu127342%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self127289%_)
                '#!void)))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
