(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1768864949)
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
      (lambda (_%self143249%_ _%bind?143250%_)
        (let ((_%self143253%_ _%self143249%_))
          (if (##fx< '2 (##structure-length _%self143253%_))
              (begin
                (##unchecked-structure-set! _%self143253%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self143253%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self143253%_
                     '2
                     (##structure-length _%self143253%_)))
          (if _%bind?143250%_
              (begin
                (let ((__method143317
                       (__method-ref
                        _%self143253%_
                        'bind-core-syntax-expanders!)))
                  (if __method143317
                      (__method143317 _%self143253%_)
                      (begin
                        (error '"Missing method"
                               _%self143253%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method143318
                       (__method-ref
                        _%self143253%_
                        'bind-core-macro-expanders!)))
                  (if __method143318
                      (__method143318 _%self143253%_)
                      (begin
                        (error '"Missing method"
                               _%self143253%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method143319
                       (__method-ref _%self143253%_ 'bind-core-features!)))
                  (if __method143319
                      (__method143319 _%self143253%_)
                      (begin
                        (error '"Missing method"
                               _%self143253%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self143267%_)
        (let ((_%bind?143269%_ '#t))
          (gx#root-context:::init!__% _%self143267%_ _%bind?143269%_))))
    (define gx#root-context:::init!
      (lambda _g143321_
        (let ((_g143322_ (##length _g143321_)))
          (cond ((##fx= _g143322_ 1)
                 (apply gx#root-context:::init!__0 _g143321_))
                ((##fx= _g143322_ 2)
                 (apply gx#root-context:::init!__% _g143321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g143321_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass143273 __method-table143274)
        (let ((__bind-core-features!143275
               (__make-promise
                (lambda ()
                  (let ((__method143278
                         (symbolic-table-ref
                          __method-table143274
                          'bind-core-features!
                          '#f)))
                    (if __method143278
                        __method143278
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!143276
               (__make-promise
                (lambda ()
                  (let ((__method143279
                         (symbolic-table-ref
                          __method-table143274
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method143279
                        __method143279
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!143277
               (__make-promise
                (lambda ()
                  (let ((__method143280
                         (symbolic-table-ref
                          __method-table143274
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method143280
                        __method143280
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda143247143264%_
                 (lambda (_%self143249%_ _%bind?143250%_)
                   (let ((_%self143253%_ _%self143249%_))
                     (if (##fx< '2 (##structure-length _%self143253%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self143253%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self143253%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self143253%_
                                '2
                                (##structure-length _%self143253%_)))
                     (if _%bind?143250%_
                         (begin
                           ((force __bind-core-syntax-expanders!143276)
                            _%self143253%_)
                           ((force __bind-core-macro-expanders!143277)
                            _%self143253%_)
                           ((force __bind-core-features!143275)
                            _%self143253%_))
                         '#!void)))))
            (lambda _g143323_
              (let ((_g143324_ (##length _g143323_)))
                (cond ((##fx= _g143324_ 1)
                       (apply (lambda (_%self143267%_)
                                (let ((_%bind?143269%_ '#t))
                                  (_%opt-lambda143247143264%_
                                   _%self143267%_
                                   _%bind?143269%_)))
                              _g143323_))
                      ((##fx= _g143324_ 2)
                       (apply _%opt-lambda143247143264%_ _g143323_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g143323_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self143094%_ _%super143095%_)
        (let* ((_%self143098%_ _%self143094%_)
               (_%super143114%_
                (let ((_%$e143108%_ _%super143095%_))
                  (if _%$e143108%_
                      _%$e143108%_
                      (let ((_%$e143111%_ (gx#core-context-root__0)))
                        (if _%$e143111%_
                            _%$e143111%_
                            (let ((__obj143320
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj143320)
                              __obj143320)))))))
          (if (##fx< '5 (##structure-length _%self143098%_))
              (begin
                (##unchecked-structure-set! _%self143098%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self143098%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self143098%_
                 _%super143114%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self143098%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self143098%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self143098%_
                     '5
                     (##structure-length _%self143098%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self143119%_)
        (let ((_%super143121%_ '#f))
          (gx#top-context:::init!__% _%self143119%_ _%super143121%_))))
    (define gx#top-context:::init!
      (lambda _g143325_
        (let ((_g143326_ (##length _g143325_)))
          (cond ((##fx= _g143326_ 1)
                 (apply gx#top-context:::init!__0 _g143325_))
                ((##fx= _g143326_ 2)
                 (apply gx#top-context:::init!__% _g143325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g143325_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self142814%_ _%bindings142815%_)
        (let ((_%self142818%_ _%self142814%_))
          (for-each
           (lambda (_%bind142828%_)
             (let* ((_%bind142829142836%_ _%bind142828%_)
                    (_%E142831142840%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind142829142836%_
                              '([id . rest]))
                       '#!void))
                    (_%K142832142949%_
                     (lambda (_%rest142843%_ _%id142844%_)
                       (gx#core-context-put!
                        _%self142818%_
                        _%id142844%_
                        (##structure
                         gx#syntax-binding::t
                         _%id142844%_
                         _%id142844%_
                         '#f
                         (let* ((_%rest142845142856%_ _%rest142843%_)
                                (_%E142847142860%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest142845142856%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K142848142925%_
                                 (lambda (_%compiler142863%_
                                          _%expander142864%_
                                          _%key142865%_)
                                   ((let* ((_%key142866142879%_ _%key142865%_)
                                           (_%E142872142883%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key142866142879%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K142877142919%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K142876142912%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K142875142904%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K142874142896%_
                                             (lambda () gx#make-special-form))
                                            (_%K142873142888%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match142871142891%_
                                                (lambda ()
                                                  (if (##eq? _%key142866142879%_
                                                             'expr:)
                                                      (_%K142873142888%_)
                                                      (_%E142872142883%_))))
                                               (_%try-match142870142899%_
                                                (lambda ()
                                                  (if (##eq? _%key142866142879%_
                                                             'special:)
                                                      (_%K142874142896%_)
                                                      (_%try-match142871142891%_))))
                                               (_%try-match142869142907%_
                                                (lambda ()
                                                  (if (##eq? _%key142866142879%_
                                                             'define:)
                                                      (_%K142875142904%_)
                                                      (_%try-match142870142899%_))))
                                               (_%try-match142868142915%_
                                                (lambda ()
                                                  (if (##eq? _%key142866142879%_
                                                             'module:)
                                                      (_%K142876142912%_)
                                                      (_%try-match142869142907%_)))))
                                          (if (##eq? _%key142866142879%_ 'top:)
                                              (_%K142877142919%_)
                                              (_%try-match142868142915%_)))))
                                    _%expander142864%_
                                    _%id142844%_
                                    (let ((_%$e142922%_ _%compiler142863%_))
                                      (if _%$e142922%_
                                          _%$e142922%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest142845142856%_)
                               (let ((_%hd142849142928%_
                                      (##car _%rest142845142856%_))
                                     (_%tl142850142930%_
                                      (##cdr _%rest142845142856%_)))
                                 (let ((_%key142933%_ _%hd142849142928%_))
                                   (if (pair? _%tl142850142930%_)
                                       (let ((_%hd142851142935%_
                                              (##car _%tl142850142930%_))
                                             (_%tl142852142937%_
                                              (##cdr _%tl142850142930%_)))
                                         (let ((_%expander142940%_
                                                _%hd142851142935%_))
                                           (if (pair? _%tl142852142937%_)
                                               (let ((_%hd142853142942%_
                                                      (##car _%tl142852142937%_))
                                                     (_%tl142854142944%_
                                                      (##cdr _%tl142852142937%_)))
                                                 (let ((_%compiler142947%_
                                                        _%hd142853142942%_))
                                                   (if (null? _%tl142854142944%_)
                                                       (_%K142848142925%_
                                                        _%compiler142947%_
                                                        _%expander142940%_
                                                        _%key142933%_)
                                                       (_%E142847142860%_))))
                                               (_%E142847142860%_))))
                                       (_%E142847142860%_))))
                               (_%E142847142860%_))))))))
               (if (pair? _%bind142829142836%_)
                   (let ((_%hd142833142952%_ (##car _%bind142829142836%_))
                         (_%tl142834142954%_ (##cdr _%bind142829142836%_)))
                     (let* ((_%id142957%_ _%hd142833142952%_)
                            (_%rest142959%_ _%tl142834142954%_))
                       (_%K142832142949%_ _%rest142959%_ _%id142957%_)))
                   (_%E142831142840%_))))
           _%bindings142815%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self142964%_)
        (let ((_%bindings142966%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self142964%_
           _%bindings142966%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g143327_
        (let ((_g143328_ (##length _g143327_)))
          (cond ((##fx= _g143328_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g143327_))
                ((##fx= _g143328_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g143327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g143327_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self142575%_ _%bindings142576%_)
        (let ((_%self142579%_ _%self142575%_))
          (for-each
           (lambda (_%bind142589%_)
             (let* ((_%bind142590142597%_ _%bind142589%_)
                    (_%E142592142601%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind142590142597%_
                              '([id . rest]))
                       '#!void))
                    (_%K142593142669%_
                     (lambda (_%rest142604%_ _%id142605%_)
                       (gx#core-context-put!
                        _%self142579%_
                        _%id142605%_
                        (##structure
                         gx#syntax-binding::t
                         _%id142605%_
                         _%id142605%_
                         '#f
                         (let* ((_%rest142606142621%_ _%rest142604%_)
                                (_%E142610142625%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest142606142621%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K142615142654%_
                                  (lambda (_%core-id142652%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id142652%_)))
                                 (_%K142612142639%_
                                  (lambda (_%proc142637%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc142637%_)))
                                 (_%K142611142630%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id142605%_))))
                             (let ((_%try-match142609142633%_
                                    (lambda ()
                                      (if (null? _%rest142606142621%_)
                                          (_%K142611142630%_)
                                          (_%E142610142625%_)))))
                               (if (pair? _%rest142606142621%_)
                                   (let ((_%tl142617142659%_
                                          (##cdr _%rest142606142621%_))
                                         (_%hd142616142657%_
                                          (##car _%rest142606142621%_)))
                                     (if (##eq? _%hd142616142657%_ '=>)
                                         (if (pair? _%tl142617142659%_)
                                             (let ((_%tl142619142664%_
                                                    (##cdr _%tl142617142659%_))
                                                   (_%hd142618142662%_
                                                    (##car _%tl142617142659%_)))
                                               (if (null? _%tl142619142664%_)
                                                   (let ((_%core-id142667%_
                                                          _%hd142618142662%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id142667%_))
                                                   (_%E142610142625%_)))
                                             (if (null? _%tl142617142659%_)
                                                 (let ((_%proc142647%_
                                                        _%hd142616142657%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc142647%_))
                                                 (_%E142610142625%_)))
                                         (if (null? _%tl142617142659%_)
                                             (let ((_%proc142647%_
                                                    _%hd142616142657%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc142647%_))
                                             (_%E142610142625%_))))
                                   (_%try-match142609142633%_))))))))))
               (if (pair? _%bind142590142597%_)
                   (let ((_%hd142594142672%_ (##car _%bind142590142597%_))
                         (_%tl142595142674%_ (##cdr _%bind142590142597%_)))
                     (let* ((_%id142677%_ _%hd142594142672%_)
                            (_%rest142679%_ _%tl142595142674%_))
                       (_%K142593142669%_ _%rest142679%_ _%id142677%_)))
                   (_%E142592142601%_))))
           _%bindings142576%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self142684%_)
        (let ((_%bindings142686%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self142684%_
           _%bindings142686%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g143329_
        (let ((_g143330_ (##length _g143329_)))
          (cond ((##fx= _g143330_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g143329_))
                ((##fx= _g143330_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g143329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g143329_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self142306%_)
        (let ((_%self142309%_ _%self142306%_))
          (letrec ((_%linux-variant?142320%_
                    (lambda (_%sys-type142420%_)
                      (let* ((_%g142421142429%_
                              (__string-split
                               (symbol->string _%sys-type142420%_)
                               '#\-))
                             (_%else142423142437%_ (lambda () '#f))
                             (_%K142425142442%_
                              (lambda (_%rest142440%_)
                                (not (null? _%rest142440%_)))))
                        (if (pair? _%g142421142429%_)
                            (let ((_%hd142426142445%_
                                   (##car _%g142421142429%_))
                                  (_%tl142427142447%_
                                   (##cdr _%g142421142429%_)))
                              (if (equal? _%hd142426142445%_ '"linux")
                                  (let ((_%rest142450%_ _%tl142427142447%_))
                                    (_%K142425142442%_ _%rest142450%_))
                                  (_%else142423142437%_)))
                            (_%else142423142437%_)))))
                   (_%bsd-variant142321%_
                    (lambda (_%sys-type142379%_)
                      (let ((_%sys-type-str142381%_
                             (symbol->string _%sys-type142379%_)))
                        (let _%lp142383%_ ((_%rest142385%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest142386142394%_ _%rest142385%_)
                                 (_%else142388142402%_ (lambda () '#f))
                                 (_%K142390142408%_
                                  (lambda (_%rest142405%_ _%sys142406%_)
                                    (if (string-prefix?
                                         _%sys142406%_
                                         _%sys-type-str142381%_)
                                        _%sys142406%_
                                        (_%lp142383%_ _%rest142405%_)))))
                            (if (pair? _%rest142386142394%_)
                                (let ((_%hd142391142411%_
                                       (##car _%rest142386142394%_))
                                      (_%tl142392142413%_
                                       (##cdr _%rest142386142394%_)))
                                  (let* ((_%sys142416%_ _%hd142391142411%_)
                                         (_%rest142418%_ _%tl142392142413%_))
                                    (_%K142390142408%_
                                     _%rest142418%_
                                     _%sys142416%_)))
                                (_%else142388142402%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self142309%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self142309%_)
            (let* ((_%g142322142334%_ (system-type))
                   (_%else142324142342%_ (lambda () '#!void))
                   (_%K142326142355%_
                    (lambda (_%sys-type142345%_
                             _%sys-vendor142346%_
                             _%sys-cpu142347%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu142347%_
                       '#f
                       '0
                       _%self142309%_)
                      (gx#core-bind-feature!__%
                       _%sys-type142345%_
                       '#f
                       '0
                       _%self142309%_)
                      (if (_%linux-variant?142320%_ _%sys-type142345%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self142309%_)
                          (let ((_%$e142350%_
                                 (_%bsd-variant142321%_ _%sys-type142345%_)))
                            (if _%$e142350%_
                                ((lambda (_%sys-prefix142353%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self142309%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix142353%_)
                                    '#f
                                    '0
                                    _%self142309%_))
                                 _%$e142350%_)
                                '#!void))))))
              (if (pair? _%g142322142334%_)
                  (let ((_%hd142327142358%_ (##car _%g142322142334%_))
                        (_%tl142328142360%_ (##cdr _%g142322142334%_)))
                    (let ((_%sys-cpu142363%_ _%hd142327142358%_))
                      (if (pair? _%tl142328142360%_)
                          (let ((_%hd142329142365%_ (##car _%tl142328142360%_))
                                (_%tl142330142367%_
                                 (##cdr _%tl142328142360%_)))
                            (let ((_%sys-vendor142370%_ _%hd142329142365%_))
                              (if (pair? _%tl142330142367%_)
                                  (let ((_%hd142331142372%_
                                         (##car _%tl142330142367%_))
                                        (_%tl142332142374%_
                                         (##cdr _%tl142330142367%_)))
                                    (let ((_%sys-type142377%_
                                           _%hd142331142372%_))
                                      (if (null? _%tl142332142374%_)
                                          (_%K142326142355%_
                                           _%sys-type142377%_
                                           _%sys-vendor142370%_
                                           _%sys-cpu142363%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self142309%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
