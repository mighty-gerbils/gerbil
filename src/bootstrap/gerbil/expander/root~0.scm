(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1771025401)
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
                (cons (cons 'define-values
                            (cons '=> (cons '%#define-values '())))
                      (cons (cons 'define-runtime
                                  (cons '=> (cons '%#define-runtime '())))
                            (cons (cons 'define-syntax
                                        (cons '=> (cons '%#define-syntax '())))
                                  (cons (cons 'define-alias
                                              (cons '=>
                                                    (cons '%#define-alias
                                                          '())))
                                        (cons (cons 'extern
                                                    (cons gx#macro-expand-extern
                                                          '()))
                                              (cons (cons 'lambda%
                                                          (cons gx#macro-expand-lambda%
                                                                '()))
                                                    (cons (cons 'case-lambda
                                                                (cons gx#macro-expand-case-lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'let-values
                              (cons gx#macro-expand-let-values '()))
                        (cons (cons 'letrec-values
                                    (cons gx#macro-expand-letrec-values '()))
                              (cons (cons 'letrec*-values
                                          (cons gx#macro-expand-letrec*-values
                                                '()))
                                    (cons (cons 'if
                                                (cons gx#macro-expand-if '()))
                                          (cons (cons '%%app
                                                      (cons '=>
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%%ref
                                                            (cons '=>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#ref '())))
              (cons (cons '%%begin-module
                          (cons '=> (cons '%#begin-module '())))
                    (cons (cons '_ '())
                          (cons (cons '... '())
                                (cons (cons 'else '())
                                      (cons (cons '=> '())
                                            (cons (cons 'unquote '())
                                                  (cons (cons 'unquote-splicing
                                                              '())
                                                        (cons (cons 'unsyntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons 'unsyntax-splicing '())
                            '()))))))))))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define gx#root-context:::init!__%
      (lambda (_%self187344%_ _%bind?187345%_)
        (let ((_%self187348%_ _%self187344%_))
          (if (##fx< '2 (##structure-length _%self187348%_))
              (begin
                (##unchecked-structure-set! _%self187348%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self187348%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self187348%_
                     '2
                     (##structure-length _%self187348%_)))
          (if _%bind?187345%_
              (begin
                (let ((__method187412
                       (__method-ref
                        _%self187348%_
                        'bind-core-syntax-expanders!)))
                  (if __method187412
                      (__method187412 _%self187348%_)
                      (begin
                        (error '"Missing method"
                               _%self187348%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method187413
                       (__method-ref
                        _%self187348%_
                        'bind-core-macro-expanders!)))
                  (if __method187413
                      (__method187413 _%self187348%_)
                      (begin
                        (error '"Missing method"
                               _%self187348%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method187414
                       (__method-ref _%self187348%_ 'bind-core-features!)))
                  (if __method187414
                      (__method187414 _%self187348%_)
                      (begin
                        (error '"Missing method"
                               _%self187348%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self187362%_)
        (let ((_%bind?187364%_ '#t))
          (gx#root-context:::init!__% _%self187362%_ _%bind?187364%_))))
    (define gx#root-context:::init!
      (lambda _g187418_
        (let ((_g187419_ (##length _g187418_)))
          (cond ((##fx= _g187419_ 1)
                 (apply gx#root-context:::init!__0 _g187418_))
                ((##fx= _g187419_ 2)
                 (apply gx#root-context:::init!__% _g187418_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g187418_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass187368 __method-table187369)
        (let ((__bind-core-syntax-expanders!187370
               (__make-promise
                (lambda ()
                  (let ((__method187373
                         (symbolic-table-ref
                          __method-table187369
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method187373
                        __method187373
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!187371
               (__make-promise
                (lambda ()
                  (let ((__method187374
                         (symbolic-table-ref
                          __method-table187369
                          'bind-core-features!
                          '#f)))
                    (if __method187374
                        __method187374
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!187372
               (__make-promise
                (lambda ()
                  (let ((__method187375
                         (symbolic-table-ref
                          __method-table187369
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method187375
                        __method187375
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda187342187359%_
                 (lambda (_%self187344%_ _%bind?187345%_)
                   (let ((_%self187348%_ _%self187344%_))
                     (if (##fx< '2 (##structure-length _%self187348%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self187348%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self187348%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self187348%_
                                '2
                                (##structure-length _%self187348%_)))
                     (if _%bind?187345%_
                         (begin
                           ((force __bind-core-syntax-expanders!187370)
                            _%self187348%_)
                           ((force __bind-core-macro-expanders!187372)
                            _%self187348%_)
                           ((force __bind-core-features!187371)
                            _%self187348%_))
                         '#!void)))))
            (lambda _g187420_
              (let ((_g187421_ (##length _g187420_)))
                (cond ((##fx= _g187421_ 1)
                       (apply (lambda (_%self187362%_)
                                (let ((_%bind?187364%_ '#t))
                                  (_%opt-lambda187342187359%_
                                   _%self187362%_
                                   _%bind?187364%_)))
                              _g187420_))
                      ((##fx= _g187421_ 2)
                       (apply _%opt-lambda187342187359%_ _g187420_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g187420_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self187189%_ _%super187190%_)
        (let* ((_%self187193%_ _%self187189%_)
               (_%super187209%_
                (let ((_%$e187203%_ _%super187190%_))
                  (if _%$e187203%_
                      _%$e187203%_
                      (let ((_%$e187206%_ (gx#core-context-root__0)))
                        (if _%$e187206%_
                            _%$e187206%_
                            (let ((__obj187415
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj187415)
                              __obj187415)))))))
          (if (##fx< '5 (##structure-length _%self187193%_))
              (begin
                (##unchecked-structure-set! _%self187193%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self187193%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187193%_
                 _%super187209%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self187193%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self187193%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self187193%_
                     '5
                     (##structure-length _%self187193%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self187214%_)
        (let ((_%super187216%_ '#f))
          (gx#top-context:::init!__% _%self187214%_ _%super187216%_))))
    (define gx#top-context:::init!
      (lambda _g187422_
        (let ((_g187423_ (##length _g187422_)))
          (cond ((##fx= _g187423_ 1)
                 (apply gx#top-context:::init!__0 _g187422_))
                ((##fx= _g187423_ 2)
                 (apply gx#top-context:::init!__% _g187422_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g187422_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self186910%_ _%bindings186911%_)
        (let ((_%self186914%_ _%self186910%_))
          (for-each
           (lambda (_%bind186924%_)
             (let* ((_%bind186925186932%_ _%bind186924%_)
                    (_%E186927186935%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind186925186932%_
                              '([id . rest]))
                       '#!void))
                    (_%K186928187044%_
                     (lambda (_%rest186938%_ _%id186939%_)
                       (gx#core-context-put!
                        _%self186914%_
                        _%id186939%_
                        (let ((__obj187416
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj187416
                           _%id186939%_
                           _%id186939%_
                           '#f
                           (let* ((_%rest186940186951%_ _%rest186938%_)
                                  (_%E186942186955%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest186940186951%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K186943187020%_
                                   (lambda (_%compiler186958%_
                                            _%expander186959%_
                                            _%key186960%_)
                                     ((let* ((_%key186961186974%_
                                              _%key186960%_)
                                             (_%E186967186978%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key186961186974%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K186972187014%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K186971187007%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K186970186999%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K186969186991%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K186968186983%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match186966186986%_
                                                  (lambda ()
                                                    (if (##eq? _%key186961186974%_
                                                               'expr:)
                                                        (_%K186968186983%_)
                                                        (_%E186967186978%_))))
                                                 (_%try-match186965186994%_
                                                  (lambda ()
                                                    (if (##eq? _%key186961186974%_
                                                               'special:)
                                                        (_%K186969186991%_)
                                                        (_%try-match186966186986%_))))
                                                 (_%try-match186964187002%_
                                                  (lambda ()
                                                    (if (##eq? _%key186961186974%_
                                                               'define:)
                                                        (_%K186970186999%_)
                                                        (_%try-match186965186994%_))))
                                                 (_%try-match186963187010%_
                                                  (lambda ()
                                                    (if (##eq? _%key186961186974%_
                                                               'module:)
                                                        (_%K186971187007%_)
                                                        (_%try-match186964187002%_)))))
                                            (if (##eq? _%key186961186974%_
                                                       'top:)
                                                (_%K186972187014%_)
                                                (_%try-match186963187010%_)))))
                                      _%expander186959%_
                                      _%id186939%_
                                      (let ((_%$e187017%_ _%compiler186958%_))
                                        (if _%$e187017%_
                                            _%$e187017%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest186940186951%_)
                                 (let ((_%hd186944187023%_
                                        (##car _%rest186940186951%_))
                                       (_%tl186945187025%_
                                        (##cdr _%rest186940186951%_)))
                                   (let ((_%key187028%_ _%hd186944187023%_))
                                     (if (pair? _%tl186945187025%_)
                                         (let ((_%hd186946187030%_
                                                (##car _%tl186945187025%_))
                                               (_%tl186947187032%_
                                                (##cdr _%tl186945187025%_)))
                                           (let ((_%expander187035%_
                                                  _%hd186946187030%_))
                                             (if (pair? _%tl186947187032%_)
                                                 (let ((_%hd186948187037%_
                                                        (##car _%tl186947187032%_))
                                                       (_%tl186949187039%_
                                                        (##cdr _%tl186947187032%_)))
                                                   (let ((_%compiler187042%_
                                                          _%hd186948187037%_))
                                                     (if (null? _%tl186949187039%_)
                                                         (_%K186943187020%_
                                                          _%compiler187042%_
                                                          _%expander187035%_
                                                          _%key187028%_)
                                                         (_%E186942186955%_))))
                                                 (_%E186942186955%_))))
                                         (_%E186942186955%_))))
                                 (_%E186942186955%_))))
                          __obj187416)))))
               (if (pair? _%bind186925186932%_)
                   (let ((_%hd186929187047%_ (##car _%bind186925186932%_))
                         (_%tl186930187049%_ (##cdr _%bind186925186932%_)))
                     (let* ((_%id187052%_ _%hd186929187047%_)
                            (_%rest187054%_ _%tl186930187049%_))
                       (_%K186928187044%_ _%rest187054%_ _%id187052%_)))
                   (_%E186927186935%_))))
           _%bindings186911%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self187059%_)
        (let ((_%bindings187061%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self187059%_
           _%bindings187061%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g187424_
        (let ((_g187425_ (##length _g187424_)))
          (cond ((##fx= _g187425_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g187424_))
                ((##fx= _g187425_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g187424_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g187424_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self186672%_ _%bindings186673%_)
        (let ((_%self186676%_ _%self186672%_))
          (for-each
           (lambda (_%bind186686%_)
             (let* ((_%bind186687186694%_ _%bind186686%_)
                    (_%E186689186697%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind186687186694%_
                              '([id . rest]))
                       '#!void))
                    (_%K186690186765%_
                     (lambda (_%rest186700%_ _%id186701%_)
                       (gx#core-context-put!
                        _%self186676%_
                        _%id186701%_
                        (let ((__obj187417
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj187417
                           _%id186701%_
                           _%id186701%_
                           '#f
                           (let* ((_%rest186702186717%_ _%rest186700%_)
                                  (_%E186706186721%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest186702186717%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K186711186750%_
                                    (lambda (_%core-id186748%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id186748%_)))
                                   (_%K186708186735%_
                                    (lambda (_%proc186733%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc186733%_)))
                                   (_%K186707186726%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id186701%_))))
                               (let ((_%try-match186705186729%_
                                      (lambda ()
                                        (if (null? _%rest186702186717%_)
                                            (_%K186707186726%_)
                                            (_%E186706186721%_)))))
                                 (if (pair? _%rest186702186717%_)
                                     (let ((_%tl186713186755%_
                                            (##cdr _%rest186702186717%_))
                                           (_%hd186712186753%_
                                            (##car _%rest186702186717%_)))
                                       (if (##eq? _%hd186712186753%_ '=>)
                                           (if (pair? _%tl186713186755%_)
                                               (let ((_%tl186715186760%_
                                                      (##cdr _%tl186713186755%_))
                                                     (_%hd186714186758%_
                                                      (##car _%tl186713186755%_)))
                                                 (if (null? _%tl186715186760%_)
                                                     (let ((_%core-id186763%_
                                                            _%hd186714186758%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id186763%_))
                                                     (_%E186706186721%_)))
                                               (if (null? _%tl186713186755%_)
                                                   (let ((_%proc186743%_
                                                          _%hd186712186753%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc186743%_))
                                                   (_%E186706186721%_)))
                                           (if (null? _%tl186713186755%_)
                                               (let ((_%proc186743%_
                                                      _%hd186712186753%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc186743%_))
                                               (_%E186706186721%_))))
                                     (_%try-match186705186729%_))))))
                          __obj187417)))))
               (if (pair? _%bind186687186694%_)
                   (let ((_%hd186691186768%_ (##car _%bind186687186694%_))
                         (_%tl186692186770%_ (##cdr _%bind186687186694%_)))
                     (let* ((_%id186773%_ _%hd186691186768%_)
                            (_%rest186775%_ _%tl186692186770%_))
                       (_%K186690186765%_ _%rest186775%_ _%id186773%_)))
                   (_%E186689186697%_))))
           _%bindings186673%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self186780%_)
        (let ((_%bindings186782%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self186780%_
           _%bindings186782%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g187426_
        (let ((_g187427_ (##length _g187426_)))
          (cond ((##fx= _g187427_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g187426_))
                ((##fx= _g187427_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g187426_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g187426_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self186403%_)
        (let ((_%self186406%_ _%self186403%_))
          (letrec ((_%linux-variant?186417%_
                    (lambda (_%sys-type186517%_)
                      (let* ((_%g186518186526%_
                              (__string-split
                               (symbol->string _%sys-type186517%_)
                               '#\-))
                             (_%else186520186534%_ (lambda () '#f))
                             (_%K186522186539%_
                              (lambda (_%rest186537%_)
                                (not (null? _%rest186537%_)))))
                        (if (pair? _%g186518186526%_)
                            (let ((_%hd186523186542%_
                                   (##car _%g186518186526%_))
                                  (_%tl186524186544%_
                                   (##cdr _%g186518186526%_)))
                              (if (equal? _%hd186523186542%_ '"linux")
                                  (let ((_%rest186547%_ _%tl186524186544%_))
                                    (_%K186522186539%_ _%rest186547%_))
                                  (_%else186520186534%_)))
                            (_%else186520186534%_)))))
                   (_%bsd-variant186418%_
                    (lambda (_%sys-type186476%_)
                      (let ((_%sys-type-str186478%_
                             (symbol->string _%sys-type186476%_)))
                        (let _%lp186480%_ ((_%rest186482%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest186483186491%_ _%rest186482%_)
                                 (_%else186485186499%_ (lambda () '#f))
                                 (_%K186487186505%_
                                  (lambda (_%rest186502%_ _%sys186503%_)
                                    (if (string-prefix?
                                         _%sys186503%_
                                         _%sys-type-str186478%_)
                                        _%sys186503%_
                                        (_%lp186480%_ _%rest186502%_)))))
                            (if (pair? _%rest186483186491%_)
                                (let ((_%hd186488186508%_
                                       (##car _%rest186483186491%_))
                                      (_%tl186489186510%_
                                       (##cdr _%rest186483186491%_)))
                                  (let* ((_%sys186513%_ _%hd186488186508%_)
                                         (_%rest186515%_ _%tl186489186510%_))
                                    (_%K186487186505%_
                                     _%rest186515%_
                                     _%sys186513%_)))
                                (_%else186485186499%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self186406%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self186406%_)
            (let* ((_%g186419186431%_ (system-type))
                   (_%else186421186439%_ (lambda () '#!void))
                   (_%K186423186452%_
                    (lambda (_%sys-type186442%_
                             _%sys-vendor186443%_
                             _%sys-cpu186444%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu186444%_
                       '#f
                       '0
                       _%self186406%_)
                      (gx#core-bind-feature!__%
                       _%sys-type186442%_
                       '#f
                       '0
                       _%self186406%_)
                      (if (_%linux-variant?186417%_ _%sys-type186442%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self186406%_)
                          (let ((_%$e186447%_
                                 (_%bsd-variant186418%_ _%sys-type186442%_)))
                            (if _%$e186447%_
                                ((lambda (_%sys-prefix186450%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self186406%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix186450%_)
                                    '#f
                                    '0
                                    _%self186406%_))
                                 _%$e186447%_)
                                '#!void))))))
              (if (pair? _%g186419186431%_)
                  (let ((_%hd186424186455%_ (##car _%g186419186431%_))
                        (_%tl186425186457%_ (##cdr _%g186419186431%_)))
                    (let ((_%sys-cpu186460%_ _%hd186424186455%_))
                      (if (pair? _%tl186425186457%_)
                          (let ((_%hd186426186462%_ (##car _%tl186425186457%_))
                                (_%tl186427186464%_
                                 (##cdr _%tl186425186457%_)))
                            (let ((_%sys-vendor186467%_ _%hd186426186462%_))
                              (if (pair? _%tl186427186464%_)
                                  (let ((_%hd186428186469%_
                                         (##car _%tl186427186464%_))
                                        (_%tl186429186471%_
                                         (##cdr _%tl186427186464%_)))
                                    (let ((_%sys-type186474%_
                                           _%hd186428186469%_))
                                      (if (null? _%tl186429186471%_)
                                          (_%K186423186452%_
                                           _%sys-type186474%_
                                           _%sys-vendor186467%_
                                           _%sys-cpu186460%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self186406%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
