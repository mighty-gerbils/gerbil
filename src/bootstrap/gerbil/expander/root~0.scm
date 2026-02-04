(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1770243151)
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
      (lambda (_%self153698%_ _%bind?153699%_)
        (let ((_%self153702%_ _%self153698%_))
          (if (##fx< '2 (##structure-length _%self153702%_))
              (begin
                (##unchecked-structure-set! _%self153702%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self153702%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self153702%_
                     '2
                     (##structure-length _%self153702%_)))
          (if _%bind?153699%_
              (begin
                (let ((__method153766
                       (__method-ref
                        _%self153702%_
                        'bind-core-syntax-expanders!)))
                  (if __method153766
                      (__method153766 _%self153702%_)
                      (begin
                        (error '"Missing method"
                               _%self153702%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method153767
                       (__method-ref
                        _%self153702%_
                        'bind-core-macro-expanders!)))
                  (if __method153767
                      (__method153767 _%self153702%_)
                      (begin
                        (error '"Missing method"
                               _%self153702%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method153768
                       (__method-ref _%self153702%_ 'bind-core-features!)))
                  (if __method153768
                      (__method153768 _%self153702%_)
                      (begin
                        (error '"Missing method"
                               _%self153702%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self153716%_)
        (let ((_%bind?153718%_ '#t))
          (gx#root-context:::init!__% _%self153716%_ _%bind?153718%_))))
    (define gx#root-context:::init!
      (lambda _g153770_
        (let ((_g153771_ (##length _g153770_)))
          (cond ((##fx= _g153771_ 1)
                 (apply gx#root-context:::init!__0 _g153770_))
                ((##fx= _g153771_ 2)
                 (apply gx#root-context:::init!__% _g153770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g153770_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass153722 __method-table153723)
        (let ((__bind-core-syntax-expanders!153724
               (__make-promise
                (lambda ()
                  (let ((__method153727
                         (symbolic-table-ref
                          __method-table153723
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method153727
                        __method153727
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!153725
               (__make-promise
                (lambda ()
                  (let ((__method153728
                         (symbolic-table-ref
                          __method-table153723
                          'bind-core-features!
                          '#f)))
                    (if __method153728
                        __method153728
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!153726
               (__make-promise
                (lambda ()
                  (let ((__method153729
                         (symbolic-table-ref
                          __method-table153723
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method153729
                        __method153729
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda153696153713%_
                 (lambda (_%self153698%_ _%bind?153699%_)
                   (let ((_%self153702%_ _%self153698%_))
                     (if (##fx< '2 (##structure-length _%self153702%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self153702%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self153702%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self153702%_
                                '2
                                (##structure-length _%self153702%_)))
                     (if _%bind?153699%_
                         (begin
                           ((force __bind-core-syntax-expanders!153724)
                            _%self153702%_)
                           ((force __bind-core-macro-expanders!153726)
                            _%self153702%_)
                           ((force __bind-core-features!153725)
                            _%self153702%_))
                         '#!void)))))
            (lambda _g153772_
              (let ((_g153773_ (##length _g153772_)))
                (cond ((##fx= _g153773_ 1)
                       (apply (lambda (_%self153716%_)
                                (let ((_%bind?153718%_ '#t))
                                  (_%opt-lambda153696153713%_
                                   _%self153716%_
                                   _%bind?153718%_)))
                              _g153772_))
                      ((##fx= _g153773_ 2)
                       (apply _%opt-lambda153696153713%_ _g153772_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g153772_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self153543%_ _%super153544%_)
        (let* ((_%self153547%_ _%self153543%_)
               (_%super153563%_
                (let ((_%$e153557%_ _%super153544%_))
                  (if _%$e153557%_
                      _%$e153557%_
                      (let ((_%$e153560%_ (gx#core-context-root__0)))
                        (if _%$e153560%_
                            _%$e153560%_
                            (let ((__obj153769
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj153769)
                              __obj153769)))))))
          (if (##fx< '5 (##structure-length _%self153547%_))
              (begin
                (##unchecked-structure-set! _%self153547%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self153547%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self153547%_
                 _%super153563%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self153547%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self153547%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self153547%_
                     '5
                     (##structure-length _%self153547%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self153568%_)
        (let ((_%super153570%_ '#f))
          (gx#top-context:::init!__% _%self153568%_ _%super153570%_))))
    (define gx#top-context:::init!
      (lambda _g153774_
        (let ((_g153775_ (##length _g153774_)))
          (cond ((##fx= _g153775_ 1)
                 (apply gx#top-context:::init!__0 _g153774_))
                ((##fx= _g153775_ 2)
                 (apply gx#top-context:::init!__% _g153774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g153774_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self153264%_ _%bindings153265%_)
        (let ((_%self153268%_ _%self153264%_))
          (for-each
           (lambda (_%bind153278%_)
             (let* ((_%bind153279153286%_ _%bind153278%_)
                    (_%E153281153289%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind153279153286%_
                              '([id . rest]))
                       '#!void))
                    (_%K153282153398%_
                     (lambda (_%rest153292%_ _%id153293%_)
                       (gx#core-context-put!
                        _%self153268%_
                        _%id153293%_
                        (##structure
                         gx#syntax-binding::t
                         _%id153293%_
                         _%id153293%_
                         '#f
                         (let* ((_%rest153294153305%_ _%rest153292%_)
                                (_%E153296153309%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest153294153305%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K153297153374%_
                                 (lambda (_%compiler153312%_
                                          _%expander153313%_
                                          _%key153314%_)
                                   ((let* ((_%key153315153328%_ _%key153314%_)
                                           (_%E153321153332%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key153315153328%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K153326153368%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K153325153361%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K153324153353%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K153323153345%_
                                             (lambda () gx#make-special-form))
                                            (_%K153322153337%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match153320153340%_
                                                (lambda ()
                                                  (if (##eq? _%key153315153328%_
                                                             'expr:)
                                                      (_%K153322153337%_)
                                                      (_%E153321153332%_))))
                                               (_%try-match153319153348%_
                                                (lambda ()
                                                  (if (##eq? _%key153315153328%_
                                                             'special:)
                                                      (_%K153323153345%_)
                                                      (_%try-match153320153340%_))))
                                               (_%try-match153318153356%_
                                                (lambda ()
                                                  (if (##eq? _%key153315153328%_
                                                             'define:)
                                                      (_%K153324153353%_)
                                                      (_%try-match153319153348%_))))
                                               (_%try-match153317153364%_
                                                (lambda ()
                                                  (if (##eq? _%key153315153328%_
                                                             'module:)
                                                      (_%K153325153361%_)
                                                      (_%try-match153318153356%_)))))
                                          (if (##eq? _%key153315153328%_ 'top:)
                                              (_%K153326153368%_)
                                              (_%try-match153317153364%_)))))
                                    _%expander153313%_
                                    _%id153293%_
                                    (let ((_%$e153371%_ _%compiler153312%_))
                                      (if _%$e153371%_
                                          _%$e153371%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest153294153305%_)
                               (let ((_%hd153298153377%_
                                      (##car _%rest153294153305%_))
                                     (_%tl153299153379%_
                                      (##cdr _%rest153294153305%_)))
                                 (let ((_%key153382%_ _%hd153298153377%_))
                                   (if (pair? _%tl153299153379%_)
                                       (let ((_%hd153300153384%_
                                              (##car _%tl153299153379%_))
                                             (_%tl153301153386%_
                                              (##cdr _%tl153299153379%_)))
                                         (let ((_%expander153389%_
                                                _%hd153300153384%_))
                                           (if (pair? _%tl153301153386%_)
                                               (let ((_%hd153302153391%_
                                                      (##car _%tl153301153386%_))
                                                     (_%tl153303153393%_
                                                      (##cdr _%tl153301153386%_)))
                                                 (let ((_%compiler153396%_
                                                        _%hd153302153391%_))
                                                   (if (null? _%tl153303153393%_)
                                                       (_%K153297153374%_
                                                        _%compiler153396%_
                                                        _%expander153389%_
                                                        _%key153382%_)
                                                       (_%E153296153309%_))))
                                               (_%E153296153309%_))))
                                       (_%E153296153309%_))))
                               (_%E153296153309%_))))))))
               (if (pair? _%bind153279153286%_)
                   (let ((_%hd153283153401%_ (##car _%bind153279153286%_))
                         (_%tl153284153403%_ (##cdr _%bind153279153286%_)))
                     (let* ((_%id153406%_ _%hd153283153401%_)
                            (_%rest153408%_ _%tl153284153403%_))
                       (_%K153282153398%_ _%rest153408%_ _%id153406%_)))
                   (_%E153281153289%_))))
           _%bindings153265%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self153413%_)
        (let ((_%bindings153415%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self153413%_
           _%bindings153415%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g153776_
        (let ((_g153777_ (##length _g153776_)))
          (cond ((##fx= _g153777_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g153776_))
                ((##fx= _g153777_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g153776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g153776_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self153026%_ _%bindings153027%_)
        (let ((_%self153030%_ _%self153026%_))
          (for-each
           (lambda (_%bind153040%_)
             (let* ((_%bind153041153048%_ _%bind153040%_)
                    (_%E153043153051%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind153041153048%_
                              '([id . rest]))
                       '#!void))
                    (_%K153044153119%_
                     (lambda (_%rest153054%_ _%id153055%_)
                       (gx#core-context-put!
                        _%self153030%_
                        _%id153055%_
                        (##structure
                         gx#syntax-binding::t
                         _%id153055%_
                         _%id153055%_
                         '#f
                         (let* ((_%rest153056153071%_ _%rest153054%_)
                                (_%E153060153075%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest153056153071%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K153065153104%_
                                  (lambda (_%core-id153102%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id153102%_)))
                                 (_%K153062153089%_
                                  (lambda (_%proc153087%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc153087%_)))
                                 (_%K153061153080%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id153055%_))))
                             (let ((_%try-match153059153083%_
                                    (lambda ()
                                      (if (null? _%rest153056153071%_)
                                          (_%K153061153080%_)
                                          (_%E153060153075%_)))))
                               (if (pair? _%rest153056153071%_)
                                   (let ((_%tl153067153109%_
                                          (##cdr _%rest153056153071%_))
                                         (_%hd153066153107%_
                                          (##car _%rest153056153071%_)))
                                     (if (##eq? _%hd153066153107%_ '=>)
                                         (if (pair? _%tl153067153109%_)
                                             (let ((_%tl153069153114%_
                                                    (##cdr _%tl153067153109%_))
                                                   (_%hd153068153112%_
                                                    (##car _%tl153067153109%_)))
                                               (if (null? _%tl153069153114%_)
                                                   (let ((_%core-id153117%_
                                                          _%hd153068153112%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id153117%_))
                                                   (_%E153060153075%_)))
                                             (if (null? _%tl153067153109%_)
                                                 (let ((_%proc153097%_
                                                        _%hd153066153107%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc153097%_))
                                                 (_%E153060153075%_)))
                                         (if (null? _%tl153067153109%_)
                                             (let ((_%proc153097%_
                                                    _%hd153066153107%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc153097%_))
                                             (_%E153060153075%_))))
                                   (_%try-match153059153083%_))))))))))
               (if (pair? _%bind153041153048%_)
                   (let ((_%hd153045153122%_ (##car _%bind153041153048%_))
                         (_%tl153046153124%_ (##cdr _%bind153041153048%_)))
                     (let* ((_%id153127%_ _%hd153045153122%_)
                            (_%rest153129%_ _%tl153046153124%_))
                       (_%K153044153119%_ _%rest153129%_ _%id153127%_)))
                   (_%E153043153051%_))))
           _%bindings153027%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self153134%_)
        (let ((_%bindings153136%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self153134%_
           _%bindings153136%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g153778_
        (let ((_g153779_ (##length _g153778_)))
          (cond ((##fx= _g153779_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g153778_))
                ((##fx= _g153779_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g153778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g153778_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self152757%_)
        (let ((_%self152760%_ _%self152757%_))
          (letrec ((_%linux-variant?152771%_
                    (lambda (_%sys-type152871%_)
                      (let* ((_%g152872152880%_
                              (__string-split
                               (symbol->string _%sys-type152871%_)
                               '#\-))
                             (_%else152874152888%_ (lambda () '#f))
                             (_%K152876152893%_
                              (lambda (_%rest152891%_)
                                (not (null? _%rest152891%_)))))
                        (if (pair? _%g152872152880%_)
                            (let ((_%hd152877152896%_
                                   (##car _%g152872152880%_))
                                  (_%tl152878152898%_
                                   (##cdr _%g152872152880%_)))
                              (if (equal? _%hd152877152896%_ '"linux")
                                  (let ((_%rest152901%_ _%tl152878152898%_))
                                    (_%K152876152893%_ _%rest152901%_))
                                  (_%else152874152888%_)))
                            (_%else152874152888%_)))))
                   (_%bsd-variant152772%_
                    (lambda (_%sys-type152830%_)
                      (let ((_%sys-type-str152832%_
                             (symbol->string _%sys-type152830%_)))
                        (let _%lp152834%_ ((_%rest152836%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest152837152845%_ _%rest152836%_)
                                 (_%else152839152853%_ (lambda () '#f))
                                 (_%K152841152859%_
                                  (lambda (_%rest152856%_ _%sys152857%_)
                                    (if (string-prefix?
                                         _%sys152857%_
                                         _%sys-type-str152832%_)
                                        _%sys152857%_
                                        (_%lp152834%_ _%rest152856%_)))))
                            (if (pair? _%rest152837152845%_)
                                (let ((_%hd152842152862%_
                                       (##car _%rest152837152845%_))
                                      (_%tl152843152864%_
                                       (##cdr _%rest152837152845%_)))
                                  (let* ((_%sys152867%_ _%hd152842152862%_)
                                         (_%rest152869%_ _%tl152843152864%_))
                                    (_%K152841152859%_
                                     _%rest152869%_
                                     _%sys152867%_)))
                                (_%else152839152853%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self152760%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self152760%_)
            (let* ((_%g152773152785%_ (system-type))
                   (_%else152775152793%_ (lambda () '#!void))
                   (_%K152777152806%_
                    (lambda (_%sys-type152796%_
                             _%sys-vendor152797%_
                             _%sys-cpu152798%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu152798%_
                       '#f
                       '0
                       _%self152760%_)
                      (gx#core-bind-feature!__%
                       _%sys-type152796%_
                       '#f
                       '0
                       _%self152760%_)
                      (if (_%linux-variant?152771%_ _%sys-type152796%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self152760%_)
                          (let ((_%$e152801%_
                                 (_%bsd-variant152772%_ _%sys-type152796%_)))
                            (if _%$e152801%_
                                ((lambda (_%sys-prefix152804%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self152760%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix152804%_)
                                    '#f
                                    '0
                                    _%self152760%_))
                                 _%$e152801%_)
                                '#!void))))))
              (if (pair? _%g152773152785%_)
                  (let ((_%hd152778152809%_ (##car _%g152773152785%_))
                        (_%tl152779152811%_ (##cdr _%g152773152785%_)))
                    (let ((_%sys-cpu152814%_ _%hd152778152809%_))
                      (if (pair? _%tl152779152811%_)
                          (let ((_%hd152780152816%_ (##car _%tl152779152811%_))
                                (_%tl152781152818%_
                                 (##cdr _%tl152779152811%_)))
                            (let ((_%sys-vendor152821%_ _%hd152780152816%_))
                              (if (pair? _%tl152781152818%_)
                                  (let ((_%hd152782152823%_
                                         (##car _%tl152781152818%_))
                                        (_%tl152783152825%_
                                         (##cdr _%tl152781152818%_)))
                                    (let ((_%sys-type152828%_
                                           _%hd152782152823%_))
                                      (if (null? _%tl152783152825%_)
                                          (_%K152777152806%_
                                           _%sys-type152828%_
                                           _%sys-vendor152821%_
                                           _%sys-cpu152814%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self152760%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
