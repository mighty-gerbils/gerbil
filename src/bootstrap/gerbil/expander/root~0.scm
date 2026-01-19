(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1768865824)
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
      (lambda (_%self143264%_ _%bind?143265%_)
        (let ((_%self143268%_ _%self143264%_))
          (if (##fx< '2 (##structure-length _%self143268%_))
              (begin
                (##unchecked-structure-set! _%self143268%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self143268%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self143268%_
                     '2
                     (##structure-length _%self143268%_)))
          (if _%bind?143265%_
              (begin
                (let ((__method143332
                       (__method-ref
                        _%self143268%_
                        'bind-core-syntax-expanders!)))
                  (if __method143332
                      (__method143332 _%self143268%_)
                      (begin
                        (error '"Missing method"
                               _%self143268%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method143333
                       (__method-ref
                        _%self143268%_
                        'bind-core-macro-expanders!)))
                  (if __method143333
                      (__method143333 _%self143268%_)
                      (begin
                        (error '"Missing method"
                               _%self143268%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method143334
                       (__method-ref _%self143268%_ 'bind-core-features!)))
                  (if __method143334
                      (__method143334 _%self143268%_)
                      (begin
                        (error '"Missing method"
                               _%self143268%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self143282%_)
        (let ((_%bind?143284%_ '#t))
          (gx#root-context:::init!__% _%self143282%_ _%bind?143284%_))))
    (define gx#root-context:::init!
      (lambda _g143336_
        (let ((_g143337_ (##length _g143336_)))
          (cond ((##fx= _g143337_ 1)
                 (apply gx#root-context:::init!__0 _g143336_))
                ((##fx= _g143337_ 2)
                 (apply gx#root-context:::init!__% _g143336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g143336_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass143288 __method-table143289)
        (let ((__bind-core-macro-expanders!143290
               (__make-promise
                (lambda ()
                  (let ((__method143293
                         (symbolic-table-ref
                          __method-table143289
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method143293
                        __method143293
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!143291
               (__make-promise
                (lambda ()
                  (let ((__method143294
                         (symbolic-table-ref
                          __method-table143289
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method143294
                        __method143294
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!143292
               (__make-promise
                (lambda ()
                  (let ((__method143295
                         (symbolic-table-ref
                          __method-table143289
                          'bind-core-features!
                          '#f)))
                    (if __method143295
                        __method143295
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda143262143279%_
                 (lambda (_%self143264%_ _%bind?143265%_)
                   (let ((_%self143268%_ _%self143264%_))
                     (if (##fx< '2 (##structure-length _%self143268%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self143268%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self143268%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self143268%_
                                '2
                                (##structure-length _%self143268%_)))
                     (if _%bind?143265%_
                         (begin
                           ((force __bind-core-syntax-expanders!143291)
                            _%self143268%_)
                           ((force __bind-core-macro-expanders!143290)
                            _%self143268%_)
                           ((force __bind-core-features!143292)
                            _%self143268%_))
                         '#!void)))))
            (lambda _g143338_
              (let ((_g143339_ (##length _g143338_)))
                (cond ((##fx= _g143339_ 1)
                       (apply (lambda (_%self143282%_)
                                (let ((_%bind?143284%_ '#t))
                                  (_%opt-lambda143262143279%_
                                   _%self143282%_
                                   _%bind?143284%_)))
                              _g143338_))
                      ((##fx= _g143339_ 2)
                       (apply _%opt-lambda143262143279%_ _g143338_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g143338_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self143109%_ _%super143110%_)
        (let* ((_%self143113%_ _%self143109%_)
               (_%super143129%_
                (let ((_%$e143123%_ _%super143110%_))
                  (if _%$e143123%_
                      _%$e143123%_
                      (let ((_%$e143126%_ (gx#core-context-root__0)))
                        (if _%$e143126%_
                            _%$e143126%_
                            (let ((__obj143335
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj143335)
                              __obj143335)))))))
          (if (##fx< '5 (##structure-length _%self143113%_))
              (begin
                (##unchecked-structure-set! _%self143113%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self143113%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self143113%_
                 _%super143129%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self143113%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self143113%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self143113%_
                     '5
                     (##structure-length _%self143113%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self143134%_)
        (let ((_%super143136%_ '#f))
          (gx#top-context:::init!__% _%self143134%_ _%super143136%_))))
    (define gx#top-context:::init!
      (lambda _g143340_
        (let ((_g143341_ (##length _g143340_)))
          (cond ((##fx= _g143341_ 1)
                 (apply gx#top-context:::init!__0 _g143340_))
                ((##fx= _g143341_ 2)
                 (apply gx#top-context:::init!__% _g143340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g143340_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self142829%_ _%bindings142830%_)
        (let ((_%self142833%_ _%self142829%_))
          (for-each
           (lambda (_%bind142843%_)
             (let* ((_%bind142844142851%_ _%bind142843%_)
                    (_%E142846142855%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind142844142851%_
                              '([id . rest]))
                       '#!void))
                    (_%K142847142964%_
                     (lambda (_%rest142858%_ _%id142859%_)
                       (gx#core-context-put!
                        _%self142833%_
                        _%id142859%_
                        (##structure
                         gx#syntax-binding::t
                         _%id142859%_
                         _%id142859%_
                         '#f
                         (let* ((_%rest142860142871%_ _%rest142858%_)
                                (_%E142862142875%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest142860142871%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K142863142940%_
                                 (lambda (_%compiler142878%_
                                          _%expander142879%_
                                          _%key142880%_)
                                   ((let* ((_%key142881142894%_ _%key142880%_)
                                           (_%E142887142898%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key142881142894%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K142892142934%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K142891142927%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K142890142919%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K142889142911%_
                                             (lambda () gx#make-special-form))
                                            (_%K142888142903%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match142886142906%_
                                                (lambda ()
                                                  (if (##eq? _%key142881142894%_
                                                             'expr:)
                                                      (_%K142888142903%_)
                                                      (_%E142887142898%_))))
                                               (_%try-match142885142914%_
                                                (lambda ()
                                                  (if (##eq? _%key142881142894%_
                                                             'special:)
                                                      (_%K142889142911%_)
                                                      (_%try-match142886142906%_))))
                                               (_%try-match142884142922%_
                                                (lambda ()
                                                  (if (##eq? _%key142881142894%_
                                                             'define:)
                                                      (_%K142890142919%_)
                                                      (_%try-match142885142914%_))))
                                               (_%try-match142883142930%_
                                                (lambda ()
                                                  (if (##eq? _%key142881142894%_
                                                             'module:)
                                                      (_%K142891142927%_)
                                                      (_%try-match142884142922%_)))))
                                          (if (##eq? _%key142881142894%_ 'top:)
                                              (_%K142892142934%_)
                                              (_%try-match142883142930%_)))))
                                    _%expander142879%_
                                    _%id142859%_
                                    (let ((_%$e142937%_ _%compiler142878%_))
                                      (if _%$e142937%_
                                          _%$e142937%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest142860142871%_)
                               (let ((_%hd142864142943%_
                                      (##car _%rest142860142871%_))
                                     (_%tl142865142945%_
                                      (##cdr _%rest142860142871%_)))
                                 (let ((_%key142948%_ _%hd142864142943%_))
                                   (if (pair? _%tl142865142945%_)
                                       (let ((_%hd142866142950%_
                                              (##car _%tl142865142945%_))
                                             (_%tl142867142952%_
                                              (##cdr _%tl142865142945%_)))
                                         (let ((_%expander142955%_
                                                _%hd142866142950%_))
                                           (if (pair? _%tl142867142952%_)
                                               (let ((_%hd142868142957%_
                                                      (##car _%tl142867142952%_))
                                                     (_%tl142869142959%_
                                                      (##cdr _%tl142867142952%_)))
                                                 (let ((_%compiler142962%_
                                                        _%hd142868142957%_))
                                                   (if (null? _%tl142869142959%_)
                                                       (_%K142863142940%_
                                                        _%compiler142962%_
                                                        _%expander142955%_
                                                        _%key142948%_)
                                                       (_%E142862142875%_))))
                                               (_%E142862142875%_))))
                                       (_%E142862142875%_))))
                               (_%E142862142875%_))))))))
               (if (pair? _%bind142844142851%_)
                   (let ((_%hd142848142967%_ (##car _%bind142844142851%_))
                         (_%tl142849142969%_ (##cdr _%bind142844142851%_)))
                     (let* ((_%id142972%_ _%hd142848142967%_)
                            (_%rest142974%_ _%tl142849142969%_))
                       (_%K142847142964%_ _%rest142974%_ _%id142972%_)))
                   (_%E142846142855%_))))
           _%bindings142830%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self142979%_)
        (let ((_%bindings142981%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self142979%_
           _%bindings142981%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g143342_
        (let ((_g143343_ (##length _g143342_)))
          (cond ((##fx= _g143343_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g143342_))
                ((##fx= _g143343_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g143342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g143342_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self142590%_ _%bindings142591%_)
        (let ((_%self142594%_ _%self142590%_))
          (for-each
           (lambda (_%bind142604%_)
             (let* ((_%bind142605142612%_ _%bind142604%_)
                    (_%E142607142616%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind142605142612%_
                              '([id . rest]))
                       '#!void))
                    (_%K142608142684%_
                     (lambda (_%rest142619%_ _%id142620%_)
                       (gx#core-context-put!
                        _%self142594%_
                        _%id142620%_
                        (##structure
                         gx#syntax-binding::t
                         _%id142620%_
                         _%id142620%_
                         '#f
                         (let* ((_%rest142621142636%_ _%rest142619%_)
                                (_%E142625142640%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest142621142636%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K142630142669%_
                                  (lambda (_%core-id142667%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id142667%_)))
                                 (_%K142627142654%_
                                  (lambda (_%proc142652%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc142652%_)))
                                 (_%K142626142645%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id142620%_))))
                             (let ((_%try-match142624142648%_
                                    (lambda ()
                                      (if (null? _%rest142621142636%_)
                                          (_%K142626142645%_)
                                          (_%E142625142640%_)))))
                               (if (pair? _%rest142621142636%_)
                                   (let ((_%tl142632142674%_
                                          (##cdr _%rest142621142636%_))
                                         (_%hd142631142672%_
                                          (##car _%rest142621142636%_)))
                                     (if (##eq? _%hd142631142672%_ '=>)
                                         (if (pair? _%tl142632142674%_)
                                             (let ((_%tl142634142679%_
                                                    (##cdr _%tl142632142674%_))
                                                   (_%hd142633142677%_
                                                    (##car _%tl142632142674%_)))
                                               (if (null? _%tl142634142679%_)
                                                   (let ((_%core-id142682%_
                                                          _%hd142633142677%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id142682%_))
                                                   (_%E142625142640%_)))
                                             (if (null? _%tl142632142674%_)
                                                 (let ((_%proc142662%_
                                                        _%hd142631142672%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc142662%_))
                                                 (_%E142625142640%_)))
                                         (if (null? _%tl142632142674%_)
                                             (let ((_%proc142662%_
                                                    _%hd142631142672%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc142662%_))
                                             (_%E142625142640%_))))
                                   (_%try-match142624142648%_))))))))))
               (if (pair? _%bind142605142612%_)
                   (let ((_%hd142609142687%_ (##car _%bind142605142612%_))
                         (_%tl142610142689%_ (##cdr _%bind142605142612%_)))
                     (let* ((_%id142692%_ _%hd142609142687%_)
                            (_%rest142694%_ _%tl142610142689%_))
                       (_%K142608142684%_ _%rest142694%_ _%id142692%_)))
                   (_%E142607142616%_))))
           _%bindings142591%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self142699%_)
        (let ((_%bindings142701%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self142699%_
           _%bindings142701%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g143344_
        (let ((_g143345_ (##length _g143344_)))
          (cond ((##fx= _g143345_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g143344_))
                ((##fx= _g143345_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g143344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g143344_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self142321%_)
        (let ((_%self142324%_ _%self142321%_))
          (letrec ((_%linux-variant?142335%_
                    (lambda (_%sys-type142435%_)
                      (let* ((_%g142436142444%_
                              (__string-split
                               (symbol->string _%sys-type142435%_)
                               '#\-))
                             (_%else142438142452%_ (lambda () '#f))
                             (_%K142440142457%_
                              (lambda (_%rest142455%_)
                                (not (null? _%rest142455%_)))))
                        (if (pair? _%g142436142444%_)
                            (let ((_%hd142441142460%_
                                   (##car _%g142436142444%_))
                                  (_%tl142442142462%_
                                   (##cdr _%g142436142444%_)))
                              (if (equal? _%hd142441142460%_ '"linux")
                                  (let ((_%rest142465%_ _%tl142442142462%_))
                                    (_%K142440142457%_ _%rest142465%_))
                                  (_%else142438142452%_)))
                            (_%else142438142452%_)))))
                   (_%bsd-variant142336%_
                    (lambda (_%sys-type142394%_)
                      (let ((_%sys-type-str142396%_
                             (symbol->string _%sys-type142394%_)))
                        (let _%lp142398%_ ((_%rest142400%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest142401142409%_ _%rest142400%_)
                                 (_%else142403142417%_ (lambda () '#f))
                                 (_%K142405142423%_
                                  (lambda (_%rest142420%_ _%sys142421%_)
                                    (if (string-prefix?
                                         _%sys142421%_
                                         _%sys-type-str142396%_)
                                        _%sys142421%_
                                        (_%lp142398%_ _%rest142420%_)))))
                            (if (pair? _%rest142401142409%_)
                                (let ((_%hd142406142426%_
                                       (##car _%rest142401142409%_))
                                      (_%tl142407142428%_
                                       (##cdr _%rest142401142409%_)))
                                  (let* ((_%sys142431%_ _%hd142406142426%_)
                                         (_%rest142433%_ _%tl142407142428%_))
                                    (_%K142405142423%_
                                     _%rest142433%_
                                     _%sys142431%_)))
                                (_%else142403142417%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self142324%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self142324%_)
            (let* ((_%g142337142349%_ (system-type))
                   (_%else142339142357%_ (lambda () '#!void))
                   (_%K142341142370%_
                    (lambda (_%sys-type142360%_
                             _%sys-vendor142361%_
                             _%sys-cpu142362%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu142362%_
                       '#f
                       '0
                       _%self142324%_)
                      (gx#core-bind-feature!__%
                       _%sys-type142360%_
                       '#f
                       '0
                       _%self142324%_)
                      (if (_%linux-variant?142335%_ _%sys-type142360%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self142324%_)
                          (let ((_%$e142365%_
                                 (_%bsd-variant142336%_ _%sys-type142360%_)))
                            (if _%$e142365%_
                                ((lambda (_%sys-prefix142368%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self142324%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix142368%_)
                                    '#f
                                    '0
                                    _%self142324%_))
                                 _%$e142365%_)
                                '#!void))))))
              (if (pair? _%g142337142349%_)
                  (let ((_%hd142342142373%_ (##car _%g142337142349%_))
                        (_%tl142343142375%_ (##cdr _%g142337142349%_)))
                    (let ((_%sys-cpu142378%_ _%hd142342142373%_))
                      (if (pair? _%tl142343142375%_)
                          (let ((_%hd142344142380%_ (##car _%tl142343142375%_))
                                (_%tl142345142382%_
                                 (##cdr _%tl142343142375%_)))
                            (let ((_%sys-vendor142385%_ _%hd142344142380%_))
                              (if (pair? _%tl142345142382%_)
                                  (let ((_%hd142346142387%_
                                         (##car _%tl142345142382%_))
                                        (_%tl142347142389%_
                                         (##cdr _%tl142345142382%_)))
                                    (let ((_%sys-type142392%_
                                           _%hd142346142387%_))
                                      (if (null? _%tl142347142389%_)
                                          (_%K142341142370%_
                                           _%sys-type142392%_
                                           _%sys-vendor142385%_
                                           _%sys-cpu142378%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self142324%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
