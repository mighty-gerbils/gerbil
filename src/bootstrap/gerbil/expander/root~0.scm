(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1768863413)
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
      (lambda (_%self143222%_ _%bind?143223%_)
        (let ((_%self143226%_ _%self143222%_))
          (if (##fx< '2 (##structure-length _%self143226%_))
              (begin
                (##unchecked-structure-set! _%self143226%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self143226%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self143226%_
                     '2
                     (##structure-length _%self143226%_)))
          (if _%bind?143223%_
              (begin
                (let ((__method143290
                       (__method-ref
                        _%self143226%_
                        'bind-core-syntax-expanders!)))
                  (if __method143290
                      (__method143290 _%self143226%_)
                      (begin
                        (error '"Missing method"
                               _%self143226%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method143291
                       (__method-ref
                        _%self143226%_
                        'bind-core-macro-expanders!)))
                  (if __method143291
                      (__method143291 _%self143226%_)
                      (begin
                        (error '"Missing method"
                               _%self143226%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method143292
                       (__method-ref _%self143226%_ 'bind-core-features!)))
                  (if __method143292
                      (__method143292 _%self143226%_)
                      (begin
                        (error '"Missing method"
                               _%self143226%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self143240%_)
        (let ((_%bind?143242%_ '#t))
          (gx#root-context:::init!__% _%self143240%_ _%bind?143242%_))))
    (define gx#root-context:::init!
      (lambda _g143294_
        (let ((_g143295_ (##length _g143294_)))
          (cond ((##fx= _g143295_ 1)
                 (apply gx#root-context:::init!__0 _g143294_))
                ((##fx= _g143295_ 2)
                 (apply gx#root-context:::init!__% _g143294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g143294_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass143246 __method-table143247)
        (let ((__bind-core-syntax-expanders!143248
               (__make-promise
                (lambda ()
                  (let ((__method143251
                         (symbolic-table-ref
                          __method-table143247
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method143251
                        __method143251
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!143249
               (__make-promise
                (lambda ()
                  (let ((__method143252
                         (symbolic-table-ref
                          __method-table143247
                          'bind-core-features!
                          '#f)))
                    (if __method143252
                        __method143252
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!143250
               (__make-promise
                (lambda ()
                  (let ((__method143253
                         (symbolic-table-ref
                          __method-table143247
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method143253
                        __method143253
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda143220143237%_
                 (lambda (_%self143222%_ _%bind?143223%_)
                   (let ((_%self143226%_ _%self143222%_))
                     (if (##fx< '2 (##structure-length _%self143226%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self143226%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self143226%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self143226%_
                                '2
                                (##structure-length _%self143226%_)))
                     (if _%bind?143223%_
                         (begin
                           ((force __bind-core-syntax-expanders!143248)
                            _%self143226%_)
                           ((force __bind-core-macro-expanders!143250)
                            _%self143226%_)
                           ((force __bind-core-features!143249)
                            _%self143226%_))
                         '#!void)))))
            (lambda _g143296_
              (let ((_g143297_ (##length _g143296_)))
                (cond ((##fx= _g143297_ 1)
                       (apply (lambda (_%self143240%_)
                                (let ((_%bind?143242%_ '#t))
                                  (_%opt-lambda143220143237%_
                                   _%self143240%_
                                   _%bind?143242%_)))
                              _g143296_))
                      ((##fx= _g143297_ 2)
                       (apply _%opt-lambda143220143237%_ _g143296_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g143296_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self143067%_ _%super143068%_)
        (let* ((_%self143071%_ _%self143067%_)
               (_%super143087%_
                (let ((_%$e143081%_ _%super143068%_))
                  (if _%$e143081%_
                      _%$e143081%_
                      (let ((_%$e143084%_ (gx#core-context-root__0)))
                        (if _%$e143084%_
                            _%$e143084%_
                            (let ((__obj143293
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj143293)
                              __obj143293)))))))
          (if (##fx< '5 (##structure-length _%self143071%_))
              (begin
                (##unchecked-structure-set! _%self143071%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self143071%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self143071%_
                 _%super143087%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self143071%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self143071%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self143071%_
                     '5
                     (##structure-length _%self143071%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self143092%_)
        (let ((_%super143094%_ '#f))
          (gx#top-context:::init!__% _%self143092%_ _%super143094%_))))
    (define gx#top-context:::init!
      (lambda _g143298_
        (let ((_g143299_ (##length _g143298_)))
          (cond ((##fx= _g143299_ 1)
                 (apply gx#top-context:::init!__0 _g143298_))
                ((##fx= _g143299_ 2)
                 (apply gx#top-context:::init!__% _g143298_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g143298_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self142787%_ _%bindings142788%_)
        (let ((_%self142791%_ _%self142787%_))
          (for-each
           (lambda (_%bind142801%_)
             (let* ((_%bind142802142809%_ _%bind142801%_)
                    (_%E142804142813%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind142802142809%_
                              '([id . rest]))
                       '#!void))
                    (_%K142805142922%_
                     (lambda (_%rest142816%_ _%id142817%_)
                       (gx#core-context-put!
                        _%self142791%_
                        _%id142817%_
                        (##structure
                         gx#syntax-binding::t
                         _%id142817%_
                         _%id142817%_
                         '#f
                         (let* ((_%rest142818142829%_ _%rest142816%_)
                                (_%E142820142833%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest142818142829%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K142821142898%_
                                 (lambda (_%compiler142836%_
                                          _%expander142837%_
                                          _%key142838%_)
                                   ((let* ((_%key142839142852%_ _%key142838%_)
                                           (_%E142845142856%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key142839142852%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K142850142892%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K142849142885%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K142848142877%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K142847142869%_
                                             (lambda () gx#make-special-form))
                                            (_%K142846142861%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match142844142864%_
                                                (lambda ()
                                                  (if (##eq? _%key142839142852%_
                                                             'expr:)
                                                      (_%K142846142861%_)
                                                      (_%E142845142856%_))))
                                               (_%try-match142843142872%_
                                                (lambda ()
                                                  (if (##eq? _%key142839142852%_
                                                             'special:)
                                                      (_%K142847142869%_)
                                                      (_%try-match142844142864%_))))
                                               (_%try-match142842142880%_
                                                (lambda ()
                                                  (if (##eq? _%key142839142852%_
                                                             'define:)
                                                      (_%K142848142877%_)
                                                      (_%try-match142843142872%_))))
                                               (_%try-match142841142888%_
                                                (lambda ()
                                                  (if (##eq? _%key142839142852%_
                                                             'module:)
                                                      (_%K142849142885%_)
                                                      (_%try-match142842142880%_)))))
                                          (if (##eq? _%key142839142852%_ 'top:)
                                              (_%K142850142892%_)
                                              (_%try-match142841142888%_)))))
                                    _%expander142837%_
                                    _%id142817%_
                                    (let ((_%$e142895%_ _%compiler142836%_))
                                      (if _%$e142895%_
                                          _%$e142895%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest142818142829%_)
                               (let ((_%hd142822142901%_
                                      (##car _%rest142818142829%_))
                                     (_%tl142823142903%_
                                      (##cdr _%rest142818142829%_)))
                                 (let ((_%key142906%_ _%hd142822142901%_))
                                   (if (pair? _%tl142823142903%_)
                                       (let ((_%hd142824142908%_
                                              (##car _%tl142823142903%_))
                                             (_%tl142825142910%_
                                              (##cdr _%tl142823142903%_)))
                                         (let ((_%expander142913%_
                                                _%hd142824142908%_))
                                           (if (pair? _%tl142825142910%_)
                                               (let ((_%hd142826142915%_
                                                      (##car _%tl142825142910%_))
                                                     (_%tl142827142917%_
                                                      (##cdr _%tl142825142910%_)))
                                                 (let ((_%compiler142920%_
                                                        _%hd142826142915%_))
                                                   (if (null? _%tl142827142917%_)
                                                       (_%K142821142898%_
                                                        _%compiler142920%_
                                                        _%expander142913%_
                                                        _%key142906%_)
                                                       (_%E142820142833%_))))
                                               (_%E142820142833%_))))
                                       (_%E142820142833%_))))
                               (_%E142820142833%_))))))))
               (if (pair? _%bind142802142809%_)
                   (let ((_%hd142806142925%_ (##car _%bind142802142809%_))
                         (_%tl142807142927%_ (##cdr _%bind142802142809%_)))
                     (let* ((_%id142930%_ _%hd142806142925%_)
                            (_%rest142932%_ _%tl142807142927%_))
                       (_%K142805142922%_ _%rest142932%_ _%id142930%_)))
                   (_%E142804142813%_))))
           _%bindings142788%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self142937%_)
        (let ((_%bindings142939%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self142937%_
           _%bindings142939%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g143300_
        (let ((_g143301_ (##length _g143300_)))
          (cond ((##fx= _g143301_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g143300_))
                ((##fx= _g143301_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g143300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g143300_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self142548%_ _%bindings142549%_)
        (let ((_%self142552%_ _%self142548%_))
          (for-each
           (lambda (_%bind142562%_)
             (let* ((_%bind142563142570%_ _%bind142562%_)
                    (_%E142565142574%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind142563142570%_
                              '([id . rest]))
                       '#!void))
                    (_%K142566142642%_
                     (lambda (_%rest142577%_ _%id142578%_)
                       (gx#core-context-put!
                        _%self142552%_
                        _%id142578%_
                        (##structure
                         gx#syntax-binding::t
                         _%id142578%_
                         _%id142578%_
                         '#f
                         (let* ((_%rest142579142594%_ _%rest142577%_)
                                (_%E142583142598%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest142579142594%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K142588142627%_
                                  (lambda (_%core-id142625%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id142625%_)))
                                 (_%K142585142612%_
                                  (lambda (_%proc142610%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc142610%_)))
                                 (_%K142584142603%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id142578%_))))
                             (let ((_%try-match142582142606%_
                                    (lambda ()
                                      (if (null? _%rest142579142594%_)
                                          (_%K142584142603%_)
                                          (_%E142583142598%_)))))
                               (if (pair? _%rest142579142594%_)
                                   (let ((_%tl142590142632%_
                                          (##cdr _%rest142579142594%_))
                                         (_%hd142589142630%_
                                          (##car _%rest142579142594%_)))
                                     (if (##eq? _%hd142589142630%_ '=>)
                                         (if (pair? _%tl142590142632%_)
                                             (let ((_%tl142592142637%_
                                                    (##cdr _%tl142590142632%_))
                                                   (_%hd142591142635%_
                                                    (##car _%tl142590142632%_)))
                                               (if (null? _%tl142592142637%_)
                                                   (let ((_%core-id142640%_
                                                          _%hd142591142635%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id142640%_))
                                                   (_%E142583142598%_)))
                                             (if (null? _%tl142590142632%_)
                                                 (let ((_%proc142620%_
                                                        _%hd142589142630%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc142620%_))
                                                 (_%E142583142598%_)))
                                         (if (null? _%tl142590142632%_)
                                             (let ((_%proc142620%_
                                                    _%hd142589142630%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc142620%_))
                                             (_%E142583142598%_))))
                                   (_%try-match142582142606%_))))))))))
               (if (pair? _%bind142563142570%_)
                   (let ((_%hd142567142645%_ (##car _%bind142563142570%_))
                         (_%tl142568142647%_ (##cdr _%bind142563142570%_)))
                     (let* ((_%id142650%_ _%hd142567142645%_)
                            (_%rest142652%_ _%tl142568142647%_))
                       (_%K142566142642%_ _%rest142652%_ _%id142650%_)))
                   (_%E142565142574%_))))
           _%bindings142549%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self142657%_)
        (let ((_%bindings142659%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self142657%_
           _%bindings142659%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g143302_
        (let ((_g143303_ (##length _g143302_)))
          (cond ((##fx= _g143303_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g143302_))
                ((##fx= _g143303_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g143302_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g143302_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self142279%_)
        (let ((_%self142282%_ _%self142279%_))
          (letrec ((_%linux-variant?142293%_
                    (lambda (_%sys-type142393%_)
                      (let* ((_%g142394142402%_
                              (__string-split
                               (symbol->string _%sys-type142393%_)
                               '#\-))
                             (_%else142396142410%_ (lambda () '#f))
                             (_%K142398142415%_
                              (lambda (_%rest142413%_)
                                (not (null? _%rest142413%_)))))
                        (if (pair? _%g142394142402%_)
                            (let ((_%hd142399142418%_
                                   (##car _%g142394142402%_))
                                  (_%tl142400142420%_
                                   (##cdr _%g142394142402%_)))
                              (if (equal? _%hd142399142418%_ '"linux")
                                  (let ((_%rest142423%_ _%tl142400142420%_))
                                    (_%K142398142415%_ _%rest142423%_))
                                  (_%else142396142410%_)))
                            (_%else142396142410%_)))))
                   (_%bsd-variant142294%_
                    (lambda (_%sys-type142352%_)
                      (let ((_%sys-type-str142354%_
                             (symbol->string _%sys-type142352%_)))
                        (let _%lp142356%_ ((_%rest142358%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest142359142367%_ _%rest142358%_)
                                 (_%else142361142375%_ (lambda () '#f))
                                 (_%K142363142381%_
                                  (lambda (_%rest142378%_ _%sys142379%_)
                                    (if (string-prefix?
                                         _%sys142379%_
                                         _%sys-type-str142354%_)
                                        _%sys142379%_
                                        (_%lp142356%_ _%rest142378%_)))))
                            (if (pair? _%rest142359142367%_)
                                (let ((_%hd142364142384%_
                                       (##car _%rest142359142367%_))
                                      (_%tl142365142386%_
                                       (##cdr _%rest142359142367%_)))
                                  (let* ((_%sys142389%_ _%hd142364142384%_)
                                         (_%rest142391%_ _%tl142365142386%_))
                                    (_%K142363142381%_
                                     _%rest142391%_
                                     _%sys142389%_)))
                                (_%else142361142375%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self142282%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self142282%_)
            (let* ((_%g142295142307%_ (system-type))
                   (_%else142297142315%_ (lambda () '#!void))
                   (_%K142299142328%_
                    (lambda (_%sys-type142318%_
                             _%sys-vendor142319%_
                             _%sys-cpu142320%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu142320%_
                       '#f
                       '0
                       _%self142282%_)
                      (gx#core-bind-feature!__%
                       _%sys-type142318%_
                       '#f
                       '0
                       _%self142282%_)
                      (if (_%linux-variant?142293%_ _%sys-type142318%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self142282%_)
                          (let ((_%$e142323%_
                                 (_%bsd-variant142294%_ _%sys-type142318%_)))
                            (if _%$e142323%_
                                ((lambda (_%sys-prefix142326%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self142282%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix142326%_)
                                    '#f
                                    '0
                                    _%self142282%_))
                                 _%$e142323%_)
                                '#!void))))))
              (if (pair? _%g142295142307%_)
                  (let ((_%hd142300142331%_ (##car _%g142295142307%_))
                        (_%tl142301142333%_ (##cdr _%g142295142307%_)))
                    (let ((_%sys-cpu142336%_ _%hd142300142331%_))
                      (if (pair? _%tl142301142333%_)
                          (let ((_%hd142302142338%_ (##car _%tl142301142333%_))
                                (_%tl142303142340%_
                                 (##cdr _%tl142301142333%_)))
                            (let ((_%sys-vendor142343%_ _%hd142302142338%_))
                              (if (pair? _%tl142303142340%_)
                                  (let ((_%hd142304142345%_
                                         (##car _%tl142303142340%_))
                                        (_%tl142305142347%_
                                         (##cdr _%tl142303142340%_)))
                                    (let ((_%sys-type142350%_
                                           _%hd142304142345%_))
                                      (if (null? _%tl142305142347%_)
                                          (_%K142299142328%_
                                           _%sys-type142350%_
                                           _%sys-vendor142343%_
                                           _%sys-cpu142336%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self142282%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
