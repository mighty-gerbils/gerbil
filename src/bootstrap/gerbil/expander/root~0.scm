(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1770342549)
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
      (lambda (_%self177454%_ _%bind?177455%_)
        (let ((_%self177458%_ _%self177454%_))
          (if (##fx< '2 (##structure-length _%self177458%_))
              (begin
                (##unchecked-structure-set! _%self177458%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self177458%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self177458%_
                     '2
                     (##structure-length _%self177458%_)))
          (if _%bind?177455%_
              (begin
                (let ((__method177522
                       (__method-ref
                        _%self177458%_
                        'bind-core-syntax-expanders!)))
                  (if __method177522
                      (__method177522 _%self177458%_)
                      (begin
                        (error '"Missing method"
                               _%self177458%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method177523
                       (__method-ref
                        _%self177458%_
                        'bind-core-macro-expanders!)))
                  (if __method177523
                      (__method177523 _%self177458%_)
                      (begin
                        (error '"Missing method"
                               _%self177458%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method177524
                       (__method-ref _%self177458%_ 'bind-core-features!)))
                  (if __method177524
                      (__method177524 _%self177458%_)
                      (begin
                        (error '"Missing method"
                               _%self177458%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self177472%_)
        (let ((_%bind?177474%_ '#t))
          (gx#root-context:::init!__% _%self177472%_ _%bind?177474%_))))
    (define gx#root-context:::init!
      (lambda _g177528_
        (let ((_g177529_ (##length _g177528_)))
          (cond ((##fx= _g177529_ 1)
                 (apply gx#root-context:::init!__0 _g177528_))
                ((##fx= _g177529_ 2)
                 (apply gx#root-context:::init!__% _g177528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g177528_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass177478 __method-table177479)
        (let ((__bind-core-syntax-expanders!177480
               (__make-promise
                (lambda ()
                  (let ((__method177483
                         (symbolic-table-ref
                          __method-table177479
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method177483
                        __method177483
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!177481
               (__make-promise
                (lambda ()
                  (let ((__method177484
                         (symbolic-table-ref
                          __method-table177479
                          'bind-core-features!
                          '#f)))
                    (if __method177484
                        __method177484
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!177482
               (__make-promise
                (lambda ()
                  (let ((__method177485
                         (symbolic-table-ref
                          __method-table177479
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method177485
                        __method177485
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda177452177469%_
                 (lambda (_%self177454%_ _%bind?177455%_)
                   (let ((_%self177458%_ _%self177454%_))
                     (if (##fx< '2 (##structure-length _%self177458%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self177458%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self177458%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self177458%_
                                '2
                                (##structure-length _%self177458%_)))
                     (if _%bind?177455%_
                         (begin
                           ((force __bind-core-syntax-expanders!177480)
                            _%self177458%_)
                           ((force __bind-core-macro-expanders!177482)
                            _%self177458%_)
                           ((force __bind-core-features!177481)
                            _%self177458%_))
                         '#!void)))))
            (lambda _g177530_
              (let ((_g177531_ (##length _g177530_)))
                (cond ((##fx= _g177531_ 1)
                       (apply (lambda (_%self177472%_)
                                (let ((_%bind?177474%_ '#t))
                                  (_%opt-lambda177452177469%_
                                   _%self177472%_
                                   _%bind?177474%_)))
                              _g177530_))
                      ((##fx= _g177531_ 2)
                       (apply _%opt-lambda177452177469%_ _g177530_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g177530_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self177299%_ _%super177300%_)
        (let* ((_%self177303%_ _%self177299%_)
               (_%super177319%_
                (let ((_%$e177313%_ _%super177300%_))
                  (if _%$e177313%_
                      _%$e177313%_
                      (let ((_%$e177316%_ (gx#core-context-root__0)))
                        (if _%$e177316%_
                            _%$e177316%_
                            (let ((__obj177525
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj177525)
                              __obj177525)))))))
          (if (##fx< '5 (##structure-length _%self177303%_))
              (begin
                (##unchecked-structure-set! _%self177303%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self177303%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self177303%_
                 _%super177319%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self177303%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self177303%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self177303%_
                     '5
                     (##structure-length _%self177303%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self177324%_)
        (let ((_%super177326%_ '#f))
          (gx#top-context:::init!__% _%self177324%_ _%super177326%_))))
    (define gx#top-context:::init!
      (lambda _g177532_
        (let ((_g177533_ (##length _g177532_)))
          (cond ((##fx= _g177533_ 1)
                 (apply gx#top-context:::init!__0 _g177532_))
                ((##fx= _g177533_ 2)
                 (apply gx#top-context:::init!__% _g177532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g177532_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self177020%_ _%bindings177021%_)
        (let ((_%self177024%_ _%self177020%_))
          (for-each
           (lambda (_%bind177034%_)
             (let* ((_%bind177035177042%_ _%bind177034%_)
                    (_%E177037177045%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind177035177042%_
                              '([id . rest]))
                       '#!void))
                    (_%K177038177154%_
                     (lambda (_%rest177048%_ _%id177049%_)
                       (gx#core-context-put!
                        _%self177024%_
                        _%id177049%_
                        (let ((__obj177526
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj177526
                           _%id177049%_
                           _%id177049%_
                           '#f
                           (let* ((_%rest177050177061%_ _%rest177048%_)
                                  (_%E177052177065%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest177050177061%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K177053177130%_
                                   (lambda (_%compiler177068%_
                                            _%expander177069%_
                                            _%key177070%_)
                                     ((let* ((_%key177071177084%_
                                              _%key177070%_)
                                             (_%E177077177088%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key177071177084%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K177082177124%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K177081177117%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K177080177109%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K177079177101%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K177078177093%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match177076177096%_
                                                  (lambda ()
                                                    (if (##eq? _%key177071177084%_
                                                               'expr:)
                                                        (_%K177078177093%_)
                                                        (_%E177077177088%_))))
                                                 (_%try-match177075177104%_
                                                  (lambda ()
                                                    (if (##eq? _%key177071177084%_
                                                               'special:)
                                                        (_%K177079177101%_)
                                                        (_%try-match177076177096%_))))
                                                 (_%try-match177074177112%_
                                                  (lambda ()
                                                    (if (##eq? _%key177071177084%_
                                                               'define:)
                                                        (_%K177080177109%_)
                                                        (_%try-match177075177104%_))))
                                                 (_%try-match177073177120%_
                                                  (lambda ()
                                                    (if (##eq? _%key177071177084%_
                                                               'module:)
                                                        (_%K177081177117%_)
                                                        (_%try-match177074177112%_)))))
                                            (if (##eq? _%key177071177084%_
                                                       'top:)
                                                (_%K177082177124%_)
                                                (_%try-match177073177120%_)))))
                                      _%expander177069%_
                                      _%id177049%_
                                      (let ((_%$e177127%_ _%compiler177068%_))
                                        (if _%$e177127%_
                                            _%$e177127%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest177050177061%_)
                                 (let ((_%hd177054177133%_
                                        (##car _%rest177050177061%_))
                                       (_%tl177055177135%_
                                        (##cdr _%rest177050177061%_)))
                                   (let ((_%key177138%_ _%hd177054177133%_))
                                     (if (pair? _%tl177055177135%_)
                                         (let ((_%hd177056177140%_
                                                (##car _%tl177055177135%_))
                                               (_%tl177057177142%_
                                                (##cdr _%tl177055177135%_)))
                                           (let ((_%expander177145%_
                                                  _%hd177056177140%_))
                                             (if (pair? _%tl177057177142%_)
                                                 (let ((_%hd177058177147%_
                                                        (##car _%tl177057177142%_))
                                                       (_%tl177059177149%_
                                                        (##cdr _%tl177057177142%_)))
                                                   (let ((_%compiler177152%_
                                                          _%hd177058177147%_))
                                                     (if (null? _%tl177059177149%_)
                                                         (_%K177053177130%_
                                                          _%compiler177152%_
                                                          _%expander177145%_
                                                          _%key177138%_)
                                                         (_%E177052177065%_))))
                                                 (_%E177052177065%_))))
                                         (_%E177052177065%_))))
                                 (_%E177052177065%_))))
                          __obj177526)))))
               (if (pair? _%bind177035177042%_)
                   (let ((_%hd177039177157%_ (##car _%bind177035177042%_))
                         (_%tl177040177159%_ (##cdr _%bind177035177042%_)))
                     (let* ((_%id177162%_ _%hd177039177157%_)
                            (_%rest177164%_ _%tl177040177159%_))
                       (_%K177038177154%_ _%rest177164%_ _%id177162%_)))
                   (_%E177037177045%_))))
           _%bindings177021%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self177169%_)
        (let ((_%bindings177171%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self177169%_
           _%bindings177171%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g177534_
        (let ((_g177535_ (##length _g177534_)))
          (cond ((##fx= _g177535_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g177534_))
                ((##fx= _g177535_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g177534_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g177534_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self176782%_ _%bindings176783%_)
        (let ((_%self176786%_ _%self176782%_))
          (for-each
           (lambda (_%bind176796%_)
             (let* ((_%bind176797176804%_ _%bind176796%_)
                    (_%E176799176807%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind176797176804%_
                              '([id . rest]))
                       '#!void))
                    (_%K176800176875%_
                     (lambda (_%rest176810%_ _%id176811%_)
                       (gx#core-context-put!
                        _%self176786%_
                        _%id176811%_
                        (let ((__obj177527
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj177527
                           _%id176811%_
                           _%id176811%_
                           '#f
                           (let* ((_%rest176812176827%_ _%rest176810%_)
                                  (_%E176816176831%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest176812176827%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K176821176860%_
                                    (lambda (_%core-id176858%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id176858%_)))
                                   (_%K176818176845%_
                                    (lambda (_%proc176843%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc176843%_)))
                                   (_%K176817176836%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id176811%_))))
                               (let ((_%try-match176815176839%_
                                      (lambda ()
                                        (if (null? _%rest176812176827%_)
                                            (_%K176817176836%_)
                                            (_%E176816176831%_)))))
                                 (if (pair? _%rest176812176827%_)
                                     (let ((_%tl176823176865%_
                                            (##cdr _%rest176812176827%_))
                                           (_%hd176822176863%_
                                            (##car _%rest176812176827%_)))
                                       (if (##eq? _%hd176822176863%_ '=>)
                                           (if (pair? _%tl176823176865%_)
                                               (let ((_%tl176825176870%_
                                                      (##cdr _%tl176823176865%_))
                                                     (_%hd176824176868%_
                                                      (##car _%tl176823176865%_)))
                                                 (if (null? _%tl176825176870%_)
                                                     (let ((_%core-id176873%_
                                                            _%hd176824176868%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id176873%_))
                                                     (_%E176816176831%_)))
                                               (if (null? _%tl176823176865%_)
                                                   (let ((_%proc176853%_
                                                          _%hd176822176863%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc176853%_))
                                                   (_%E176816176831%_)))
                                           (if (null? _%tl176823176865%_)
                                               (let ((_%proc176853%_
                                                      _%hd176822176863%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc176853%_))
                                               (_%E176816176831%_))))
                                     (_%try-match176815176839%_))))))
                          __obj177527)))))
               (if (pair? _%bind176797176804%_)
                   (let ((_%hd176801176878%_ (##car _%bind176797176804%_))
                         (_%tl176802176880%_ (##cdr _%bind176797176804%_)))
                     (let* ((_%id176883%_ _%hd176801176878%_)
                            (_%rest176885%_ _%tl176802176880%_))
                       (_%K176800176875%_ _%rest176885%_ _%id176883%_)))
                   (_%E176799176807%_))))
           _%bindings176783%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self176890%_)
        (let ((_%bindings176892%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self176890%_
           _%bindings176892%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g177536_
        (let ((_g177537_ (##length _g177536_)))
          (cond ((##fx= _g177537_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g177536_))
                ((##fx= _g177537_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g177536_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g177536_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self176513%_)
        (let ((_%self176516%_ _%self176513%_))
          (letrec ((_%linux-variant?176527%_
                    (lambda (_%sys-type176627%_)
                      (let* ((_%g176628176636%_
                              (__string-split
                               (symbol->string _%sys-type176627%_)
                               '#\-))
                             (_%else176630176644%_ (lambda () '#f))
                             (_%K176632176649%_
                              (lambda (_%rest176647%_)
                                (not (null? _%rest176647%_)))))
                        (if (pair? _%g176628176636%_)
                            (let ((_%hd176633176652%_
                                   (##car _%g176628176636%_))
                                  (_%tl176634176654%_
                                   (##cdr _%g176628176636%_)))
                              (if (equal? _%hd176633176652%_ '"linux")
                                  (let ((_%rest176657%_ _%tl176634176654%_))
                                    (_%K176632176649%_ _%rest176657%_))
                                  (_%else176630176644%_)))
                            (_%else176630176644%_)))))
                   (_%bsd-variant176528%_
                    (lambda (_%sys-type176586%_)
                      (let ((_%sys-type-str176588%_
                             (symbol->string _%sys-type176586%_)))
                        (let _%lp176590%_ ((_%rest176592%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest176593176601%_ _%rest176592%_)
                                 (_%else176595176609%_ (lambda () '#f))
                                 (_%K176597176615%_
                                  (lambda (_%rest176612%_ _%sys176613%_)
                                    (if (string-prefix?
                                         _%sys176613%_
                                         _%sys-type-str176588%_)
                                        _%sys176613%_
                                        (_%lp176590%_ _%rest176612%_)))))
                            (if (pair? _%rest176593176601%_)
                                (let ((_%hd176598176618%_
                                       (##car _%rest176593176601%_))
                                      (_%tl176599176620%_
                                       (##cdr _%rest176593176601%_)))
                                  (let* ((_%sys176623%_ _%hd176598176618%_)
                                         (_%rest176625%_ _%tl176599176620%_))
                                    (_%K176597176615%_
                                     _%rest176625%_
                                     _%sys176623%_)))
                                (_%else176595176609%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self176516%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self176516%_)
            (let* ((_%g176529176541%_ (system-type))
                   (_%else176531176549%_ (lambda () '#!void))
                   (_%K176533176562%_
                    (lambda (_%sys-type176552%_
                             _%sys-vendor176553%_
                             _%sys-cpu176554%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu176554%_
                       '#f
                       '0
                       _%self176516%_)
                      (gx#core-bind-feature!__%
                       _%sys-type176552%_
                       '#f
                       '0
                       _%self176516%_)
                      (if (_%linux-variant?176527%_ _%sys-type176552%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self176516%_)
                          (let ((_%$e176557%_
                                 (_%bsd-variant176528%_ _%sys-type176552%_)))
                            (if _%$e176557%_
                                ((lambda (_%sys-prefix176560%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self176516%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix176560%_)
                                    '#f
                                    '0
                                    _%self176516%_))
                                 _%$e176557%_)
                                '#!void))))))
              (if (pair? _%g176529176541%_)
                  (let ((_%hd176534176565%_ (##car _%g176529176541%_))
                        (_%tl176535176567%_ (##cdr _%g176529176541%_)))
                    (let ((_%sys-cpu176570%_ _%hd176534176565%_))
                      (if (pair? _%tl176535176567%_)
                          (let ((_%hd176536176572%_ (##car _%tl176535176567%_))
                                (_%tl176537176574%_
                                 (##cdr _%tl176535176567%_)))
                            (let ((_%sys-vendor176577%_ _%hd176536176572%_))
                              (if (pair? _%tl176537176574%_)
                                  (let ((_%hd176538176579%_
                                         (##car _%tl176537176574%_))
                                        (_%tl176539176581%_
                                         (##cdr _%tl176537176574%_)))
                                    (let ((_%sys-type176584%_
                                           _%hd176538176579%_))
                                      (if (null? _%tl176539176581%_)
                                          (_%K176533176562%_
                                           _%sys-type176584%_
                                           _%sys-vendor176577%_
                                           _%sys-cpu176570%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self176516%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
