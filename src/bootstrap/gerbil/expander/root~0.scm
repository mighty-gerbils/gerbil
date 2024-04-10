(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712784666)
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
      (lambda (_%self127679128759%_ _%bind?128761%_)
        (let* ((_%self128763%_ _%self127679128759%_)
               (_%self128765%_ _%self128763%_))
          (if (##fx< '2 (##structure-length _%self128765%_))
              (begin
                (##unchecked-structure-set! _%self128765%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self128765%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128765%_
                     '2
                     (##vector-length _%self128765%_)))
          (if _%bind?128761%_
              (begin
                (let ((__method128828
                       (__method-ref
                        _%self128765%_
                        'bind-core-syntax-expanders!)))
                  (if __method128828
                      (__method128828 _%self128765%_)
                      (begin
                        (error '"Missing method"
                               _%self128765%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method128829
                       (__method-ref
                        _%self128765%_
                        'bind-core-macro-expanders!)))
                  (if __method128829
                      (__method128829 _%self128765%_)
                      (begin
                        (error '"Missing method"
                               _%self128765%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method128830
                       (__method-ref _%self128765%_ 'bind-core-features!)))
                  (if __method128830
                      (__method128830 _%self128765%_)
                      (begin
                        (error '"Missing method"
                               _%self128765%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self127679128778%_)
        (let ((_%bind?128780%_ '#t))
          (gx#root-context:::init!__% _%self127679128778%_ _%bind?128780%_))))
    (define gx#root-context:::init!
      (lambda _g128833_
        (let ((_g128832_ (##length _g128833_)))
          (cond ((##fx= _g128832_ 1)
                 (apply gx#root-context:::init!__0 _g128833_))
                ((##fx= _g128832_ 2)
                 (apply gx#root-context:::init!__% _g128833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g128833_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass128784 __method-table128785)
        (let ((__bind-core-features!128786
               (__make-promise
                (lambda ()
                  (let ((__method128789
                         (symbolic-table-ref
                          __method-table128785
                          'bind-core-features!
                          '#f)))
                    (if __method128789
                        __method128789
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!128787
               (__make-promise
                (lambda ()
                  (let ((__method128790
                         (symbolic-table-ref
                          __method-table128785
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method128790
                        __method128790
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!128788
               (__make-promise
                (lambda ()
                  (let ((__method128791
                         (symbolic-table-ref
                          __method-table128785
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method128791
                        __method128791
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_%opt-lambda128757128775%_
                 (lambda (_%self127679128759%_ _%bind?128761%_)
                   (let* ((_%self128763%_ _%self127679128759%_)
                          (_%self128765%_ _%self128763%_))
                     (if (##fx< '2 (##structure-length _%self128765%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self128765%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self128765%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self128765%_
                                '2
                                (##vector-length _%self128765%_)))
                     (if _%bind?128761%_
                         (begin
                           ((force __bind-core-syntax-expanders!128788)
                            _%self128765%_)
                           ((force __bind-core-macro-expanders!128787)
                            _%self128765%_)
                           ((force __bind-core-features!128786)
                            _%self128765%_))
                         '#!void)))))
            (lambda _g128835_
              (let ((_g128834_ (##length _g128835_)))
                (cond ((##fx= _g128834_ 1)
                       (apply (lambda (_%self127679128778%_)
                                (let ((_%bind?128780%_ '#t))
                                  (_%opt-lambda128757128775%_
                                   _%self127679128778%_
                                   _%bind?128780%_)))
                              _g128835_))
                      ((##fx= _g128834_ 2)
                       (apply _%opt-lambda128757128775%_ _g128835_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g128835_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self127680128602%_ _%super128604%_)
        (let* ((_%self128606%_ _%self127680128602%_)
               (_%self128608%_ _%self128606%_)
               (_%super128624%_
                (let ((_%$e128618%_ _%super128604%_))
                  (if _%$e128618%_
                      _%$e128618%_
                      (let ((_%$e128621%_ (gx#core-context-root__0)))
                        (if _%$e128621%_
                            _%$e128621%_
                            (let ((__obj128831
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init! __obj128831)
                              __obj128831)))))))
          (if (##fx< '5 (##structure-length _%self128608%_))
              (begin
                (##unchecked-structure-set! _%self128608%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self128608%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128608%_
                 _%super128624%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self128608%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self128608%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128608%_
                     '5
                     (##vector-length _%self128608%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self127680128629%_)
        (let ((_%super128631%_ '#f))
          (gx#top-context:::init!__% _%self127680128629%_ _%super128631%_))))
    (define gx#top-context:::init!
      (lambda _g128837_
        (let ((_g128836_ (##length _g128837_)))
          (cond ((##fx= _g128836_ 1)
                 (apply gx#top-context:::init!__0 _g128837_))
                ((##fx= _g128836_ 2)
                 (apply gx#top-context:::init!__% _g128837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g128837_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self127681128320%_ _%bindings128322%_)
        (let* ((_%self128324%_ _%self127681128320%_)
               (_%self128326%_ _%self128324%_))
          (for-each
           (lambda (_%bind128336%_)
             (let* ((_%bind128337128344%_ _%bind128336%_)
                    (_%E128339128348%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind128337128344%_
                              '([id . rest]))
                       '#!void))
                    (_%K128340128457%_
                     (lambda (_%rest128351%_ _%id128352%_)
                       (gx#core-context-put!
                        _%self128326%_
                        _%id128352%_
                        (##structure
                         gx#syntax-binding::t
                         _%id128352%_
                         _%id128352%_
                         '#f
                         (let* ((_%rest128353128364%_ _%rest128351%_)
                                (_%E128355128368%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest128353128364%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K128356128433%_
                                 (lambda (_%compiler128371%_
                                          _%expander128372%_
                                          _%key128373%_)
                                   ((let* ((_%key128374128387%_ _%key128373%_)
                                           (_%E128380128391%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key128374128387%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K128385128427%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K128384128420%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K128383128412%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K128382128404%_
                                             (lambda () gx#make-special-form))
                                            (_%K128381128396%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match128379128399%_
                                                (lambda ()
                                                  (if (##eq? _%key128374128387%_
                                                             'expr:)
                                                      (_%K128381128396%_)
                                                      (_%E128380128391%_))))
                                               (_%try-match128378128407%_
                                                (lambda ()
                                                  (if (##eq? _%key128374128387%_
                                                             'special:)
                                                      (_%K128382128404%_)
                                                      (_%try-match128379128399%_))))
                                               (_%try-match128377128415%_
                                                (lambda ()
                                                  (if (##eq? _%key128374128387%_
                                                             'define:)
                                                      (_%K128383128412%_)
                                                      (_%try-match128378128407%_))))
                                               (_%try-match128376128423%_
                                                (lambda ()
                                                  (if (##eq? _%key128374128387%_
                                                             'module:)
                                                      (_%K128384128420%_)
                                                      (_%try-match128377128415%_)))))
                                          (if (##eq? _%key128374128387%_ 'top:)
                                              (_%K128385128427%_)
                                              (_%try-match128376128423%_)))))
                                    _%expander128372%_
                                    _%id128352%_
                                    (let ((_%$e128430%_ _%compiler128371%_))
                                      (if _%$e128430%_
                                          _%$e128430%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest128353128364%_)
                               (let ((_%hd128357128436%_
                                      (##car _%rest128353128364%_))
                                     (_%tl128358128438%_
                                      (##cdr _%rest128353128364%_)))
                                 (let ((_%key128441%_ _%hd128357128436%_))
                                   (if (##pair? _%tl128358128438%_)
                                       (let ((_%hd128359128443%_
                                              (##car _%tl128358128438%_))
                                             (_%tl128360128445%_
                                              (##cdr _%tl128358128438%_)))
                                         (let ((_%expander128448%_
                                                _%hd128359128443%_))
                                           (if (##pair? _%tl128360128445%_)
                                               (let ((_%hd128361128450%_
                                                      (##car _%tl128360128445%_))
                                                     (_%tl128362128452%_
                                                      (##cdr _%tl128360128445%_)))
                                                 (let ((_%compiler128455%_
                                                        _%hd128361128450%_))
                                                   (if (##null? _%tl128362128452%_)
                                                       (_%K128356128433%_
                                                        _%compiler128455%_
                                                        _%expander128448%_
                                                        _%key128441%_)
                                                       (_%E128355128368%_))))
                                               (_%E128355128368%_))))
                                       (_%E128355128368%_))))
                               (_%E128355128368%_))))))))
               (if (##pair? _%bind128337128344%_)
                   (let ((_%hd128341128460%_ (##car _%bind128337128344%_))
                         (_%tl128342128462%_ (##cdr _%bind128337128344%_)))
                     (let* ((_%id128465%_ _%hd128341128460%_)
                            (_%rest128467%_ _%tl128342128462%_))
                       (_%K128340128457%_ _%rest128467%_ _%id128465%_)))
                   (_%E128339128348%_))))
           _%bindings128322%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127681128472%_)
        (let ((_%bindings128474%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127681128472%_
           _%bindings128474%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g128839_
        (let ((_g128838_ (##length _g128839_)))
          (cond ((##fx= _g128838_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g128839_))
                ((##fx= _g128838_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g128839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g128839_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self127682128079%_ _%bindings128081%_)
        (let* ((_%self128083%_ _%self127682128079%_)
               (_%self128085%_ _%self128083%_))
          (for-each
           (lambda (_%bind128095%_)
             (let* ((_%bind128096128103%_ _%bind128095%_)
                    (_%E128098128107%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind128096128103%_
                              '([id . rest]))
                       '#!void))
                    (_%K128099128175%_
                     (lambda (_%rest128110%_ _%id128111%_)
                       (gx#core-context-put!
                        _%self128085%_
                        _%id128111%_
                        (##structure
                         gx#syntax-binding::t
                         _%id128111%_
                         _%id128111%_
                         '#f
                         (let* ((_%rest128112128127%_ _%rest128110%_)
                                (_%E128116128131%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest128112128127%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K128121128160%_
                                  (lambda (_%core-id128158%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id128158%_)))
                                 (_%K128118128145%_
                                  (lambda (_%proc128143%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc128143%_)))
                                 (_%K128117128136%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id128111%_))))
                             (let ((_%try-match128115128139%_
                                    (lambda ()
                                      (if (##null? _%rest128112128127%_)
                                          (_%K128117128136%_)
                                          (_%E128116128131%_)))))
                               (if (##pair? _%rest128112128127%_)
                                   (let ((_%tl128123128165%_
                                          (##cdr _%rest128112128127%_))
                                         (_%hd128122128163%_
                                          (##car _%rest128112128127%_)))
                                     (if (##eq? _%hd128122128163%_ '=>)
                                         (if (##pair? _%tl128123128165%_)
                                             (let ((_%tl128125128170%_
                                                    (##cdr _%tl128123128165%_))
                                                   (_%hd128124128168%_
                                                    (##car _%tl128123128165%_)))
                                               (if (##null? _%tl128125128170%_)
                                                   (let ((_%core-id128173%_
                                                          _%hd128124128168%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id128173%_))
                                                   (_%E128116128131%_)))
                                             (if (##null? _%tl128123128165%_)
                                                 (let ((_%proc128153%_
                                                        _%hd128122128163%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc128153%_))
                                                 (_%E128116128131%_)))
                                         (if (##null? _%tl128123128165%_)
                                             (let ((_%proc128153%_
                                                    _%hd128122128163%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc128153%_))
                                             (_%E128116128131%_))))
                                   (_%try-match128115128139%_))))))))))
               (if (##pair? _%bind128096128103%_)
                   (let ((_%hd128100128178%_ (##car _%bind128096128103%_))
                         (_%tl128101128180%_ (##cdr _%bind128096128103%_)))
                     (let* ((_%id128183%_ _%hd128100128178%_)
                            (_%rest128185%_ _%tl128101128180%_))
                       (_%K128099128175%_ _%rest128185%_ _%id128183%_)))
                   (_%E128098128107%_))))
           _%bindings128081%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self127682128190%_)
        (let ((_%bindings128192%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self127682128190%_
           _%bindings128192%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g128841_
        (let ((_g128840_ (##length _g128841_)))
          (cond ((##fx= _g128840_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g128841_))
                ((##fx= _g128840_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g128841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g128841_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self127683127809%_)
        (let* ((_%self127812%_ _%self127683127809%_)
               (_%self127814%_ _%self127812%_))
          (letrec ((_%linux-variant?127824%_
                    (lambda (_%sys-type127924%_)
                      (let* ((_%g127925127933%_
                              (__string-split
                               (symbol->string _%sys-type127924%_)
                               '#\-))
                             (_%else127927127941%_ (lambda () '#f))
                             (_%K127929127946%_
                              (lambda (_%rest127944%_)
                                (not (null? _%rest127944%_)))))
                        (if (##pair? _%g127925127933%_)
                            (let ((_%hd127930127949%_
                                   (##car _%g127925127933%_))
                                  (_%tl127931127951%_
                                   (##cdr _%g127925127933%_)))
                              (if (equal? _%hd127930127949%_ '"linux")
                                  (let ((_%rest127954%_ _%tl127931127951%_))
                                    (_%K127929127946%_ _%rest127954%_))
                                  (_%else127927127941%_)))
                            (_%else127927127941%_)))))
                   (_%bsd-variant127825%_
                    (lambda (_%sys-type127883%_)
                      (let ((_%sys-type-str127885%_
                             (symbol->string _%sys-type127883%_)))
                        (let _%lp127887%_ ((_%rest127889%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest127890127898%_ _%rest127889%_)
                                 (_%else127892127906%_ (lambda () '#f))
                                 (_%K127894127912%_
                                  (lambda (_%rest127909%_ _%sys127910%_)
                                    (if (string-prefix?
                                         _%sys127910%_
                                         _%sys-type-str127885%_)
                                        _%sys127910%_
                                        (_%lp127887%_ _%rest127909%_)))))
                            (if (##pair? _%rest127890127898%_)
                                (let ((_%hd127895127915%_
                                       (##car _%rest127890127898%_))
                                      (_%tl127896127917%_
                                       (##cdr _%rest127890127898%_)))
                                  (let* ((_%sys127920%_ _%hd127895127915%_)
                                         (_%rest127922%_ _%tl127896127917%_))
                                    (_%K127894127912%_
                                     _%rest127922%_
                                     _%sys127920%_)))
                                (_%else127892127906%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self127814%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self127814%_)
            (let* ((_%g127826127838%_ (system-type))
                   (_%else127828127846%_ (lambda () '#!void))
                   (_%K127830127859%_
                    (lambda (_%sys-type127849%_
                             _%sys-vendor127850%_
                             _%sys-cpu127851%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu127851%_
                       '#f
                       '0
                       _%self127814%_)
                      (gx#core-bind-feature!__%
                       _%sys-type127849%_
                       '#f
                       '0
                       _%self127814%_)
                      (if (_%linux-variant?127824%_ _%sys-type127849%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self127814%_)
                          (let ((_%$e127854%_
                                 (_%bsd-variant127825%_ _%sys-type127849%_)))
                            (if _%$e127854%_
                                ((lambda (_%sys-prefix127857%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self127814%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix127857%_)
                                    '#f
                                    '0
                                    _%self127814%_))
                                 _%$e127854%_)
                                '#!void))))))
              (if (##pair? _%g127826127838%_)
                  (let ((_%hd127831127862%_ (##car _%g127826127838%_))
                        (_%tl127832127864%_ (##cdr _%g127826127838%_)))
                    (let ((_%sys-cpu127867%_ _%hd127831127862%_))
                      (if (##pair? _%tl127832127864%_)
                          (let ((_%hd127833127869%_ (##car _%tl127832127864%_))
                                (_%tl127834127871%_
                                 (##cdr _%tl127832127864%_)))
                            (let ((_%sys-vendor127874%_ _%hd127833127869%_))
                              (if (##pair? _%tl127834127871%_)
                                  (let ((_%hd127835127876%_
                                         (##car _%tl127834127871%_))
                                        (_%tl127836127878%_
                                         (##cdr _%tl127834127871%_)))
                                    (let ((_%sys-type127881%_
                                           _%hd127835127876%_))
                                      (if (##null? _%tl127836127878%_)
                                          (_%K127830127859%_
                                           _%sys-type127881%_
                                           _%sys-vendor127874%_
                                           _%sys-cpu127867%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self127814%_)
                '#!void)))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
