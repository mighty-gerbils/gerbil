(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1713001408)
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
      (lambda (_%self128743129823%_ _%bind?129825%_)
        (let* ((_%self129827%_ _%self128743129823%_)
               (_%self129829%_ _%self129827%_))
          (if (##fx< '2 (##structure-length _%self129829%_))
              (begin
                (##unchecked-structure-set! _%self129829%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self129829%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129829%_
                     '2
                     (##vector-length _%self129829%_)))
          (if _%bind?129825%_
              (begin
                (let ((__method129892
                       (__method-ref
                        _%self129829%_
                        'bind-core-syntax-expanders!)))
                  (if __method129892
                      (__method129892 _%self129829%_)
                      (begin
                        (error '"Missing method"
                               _%self129829%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method129893
                       (__method-ref
                        _%self129829%_
                        'bind-core-macro-expanders!)))
                  (if __method129893
                      (__method129893 _%self129829%_)
                      (begin
                        (error '"Missing method"
                               _%self129829%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method129894
                       (__method-ref _%self129829%_ 'bind-core-features!)))
                  (if __method129894
                      (__method129894 _%self129829%_)
                      (begin
                        (error '"Missing method"
                               _%self129829%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self128743129842%_)
        (let ((_%bind?129844%_ '#t))
          (gx#root-context:::init!__% _%self128743129842%_ _%bind?129844%_))))
    (define gx#root-context:::init!
      (lambda _g129897_
        (let ((_g129896_ (##length _g129897_)))
          (cond ((##fx= _g129896_ 1)
                 (apply gx#root-context:::init!__0 _g129897_))
                ((##fx= _g129896_ 2)
                 (apply gx#root-context:::init!__% _g129897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g129897_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass129848 __method-table129849)
        (let ((__bind-core-syntax-expanders!129850
               (__make-promise
                (lambda ()
                  (let ((__method129853
                         (symbolic-table-ref
                          __method-table129849
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method129853
                        __method129853
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!129851
               (__make-promise
                (lambda ()
                  (let ((__method129854
                         (symbolic-table-ref
                          __method-table129849
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method129854
                        __method129854
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!129852
               (__make-promise
                (lambda ()
                  (let ((__method129855
                         (symbolic-table-ref
                          __method-table129849
                          'bind-core-features!
                          '#f)))
                    (if __method129855
                        __method129855
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda129821129839%_
                 (lambda (_%self128743129823%_ _%bind?129825%_)
                   (let* ((_%self129827%_ _%self128743129823%_)
                          (_%self129829%_ _%self129827%_))
                     (if (##fx< '2 (##structure-length _%self129829%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self129829%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self129829%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self129829%_
                                '2
                                (##vector-length _%self129829%_)))
                     (if _%bind?129825%_
                         (begin
                           ((force __bind-core-syntax-expanders!129850)
                            _%self129829%_)
                           ((force __bind-core-macro-expanders!129851)
                            _%self129829%_)
                           ((force __bind-core-features!129852)
                            _%self129829%_))
                         '#!void)))))
            (lambda _g129899_
              (let ((_g129898_ (##length _g129899_)))
                (cond ((##fx= _g129898_ 1)
                       (apply (lambda (_%self128743129842%_)
                                (let ((_%bind?129844%_ '#t))
                                  (_%opt-lambda129821129839%_
                                   _%self128743129842%_
                                   _%bind?129844%_)))
                              _g129899_))
                      ((##fx= _g129898_ 2)
                       (apply _%opt-lambda129821129839%_ _g129899_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g129899_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self128744129666%_ _%super129668%_)
        (let* ((_%self129670%_ _%self128744129666%_)
               (_%self129672%_ _%self129670%_)
               (_%super129688%_
                (let ((_%$e129682%_ _%super129668%_))
                  (if _%$e129682%_
                      _%$e129682%_
                      (let ((_%$e129685%_ (gx#core-context-root__0)))
                        (if _%$e129685%_
                            _%$e129685%_
                            (let ((__obj129895
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj129895)
                              __obj129895)))))))
          (if (##fx< '5 (##structure-length _%self129672%_))
              (begin
                (##unchecked-structure-set! _%self129672%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self129672%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129672%_
                 _%super129688%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129672%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self129672%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129672%_
                     '5
                     (##vector-length _%self129672%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self128744129693%_)
        (let ((_%super129695%_ '#f))
          (gx#top-context:::init!__% _%self128744129693%_ _%super129695%_))))
    (define gx#top-context:::init!
      (lambda _g129901_
        (let ((_g129900_ (##length _g129901_)))
          (cond ((##fx= _g129900_ 1)
                 (apply gx#top-context:::init!__0 _g129901_))
                ((##fx= _g129900_ 2)
                 (apply gx#top-context:::init!__% _g129901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g129901_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self128745129384%_ _%bindings129386%_)
        (let* ((_%self129388%_ _%self128745129384%_)
               (_%self129390%_ _%self129388%_))
          (for-each
           (lambda (_%bind129400%_)
             (let* ((_%bind129401129408%_ _%bind129400%_)
                    (_%E129403129412%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind129401129408%_
                              '([id . rest]))
                       '#!void))
                    (_%K129404129521%_
                     (lambda (_%rest129415%_ _%id129416%_)
                       (gx#core-context-put!
                        _%self129390%_
                        _%id129416%_
                        (##structure
                         gx#syntax-binding::t
                         _%id129416%_
                         _%id129416%_
                         '#f
                         (let* ((_%rest129417129428%_ _%rest129415%_)
                                (_%E129419129432%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest129417129428%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K129420129497%_
                                 (lambda (_%compiler129435%_
                                          _%expander129436%_
                                          _%key129437%_)
                                   ((let* ((_%key129438129451%_ _%key129437%_)
                                           (_%E129444129455%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key129438129451%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K129449129491%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K129448129484%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K129447129476%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K129446129468%_
                                             (lambda () gx#make-special-form))
                                            (_%K129445129460%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match129443129463%_
                                                (lambda ()
                                                  (if (##eq? _%key129438129451%_
                                                             'expr:)
                                                      (_%K129445129460%_)
                                                      (_%E129444129455%_))))
                                               (_%try-match129442129471%_
                                                (lambda ()
                                                  (if (##eq? _%key129438129451%_
                                                             'special:)
                                                      (_%K129446129468%_)
                                                      (_%try-match129443129463%_))))
                                               (_%try-match129441129479%_
                                                (lambda ()
                                                  (if (##eq? _%key129438129451%_
                                                             'define:)
                                                      (_%K129447129476%_)
                                                      (_%try-match129442129471%_))))
                                               (_%try-match129440129487%_
                                                (lambda ()
                                                  (if (##eq? _%key129438129451%_
                                                             'module:)
                                                      (_%K129448129484%_)
                                                      (_%try-match129441129479%_)))))
                                          (if (##eq? _%key129438129451%_ 'top:)
                                              (_%K129449129491%_)
                                              (_%try-match129440129487%_)))))
                                    _%expander129436%_
                                    _%id129416%_
                                    (let ((_%$e129494%_ _%compiler129435%_))
                                      (if _%$e129494%_
                                          _%$e129494%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest129417129428%_)
                               (let ((_%hd129421129500%_
                                      (##car _%rest129417129428%_))
                                     (_%tl129422129502%_
                                      (##cdr _%rest129417129428%_)))
                                 (let ((_%key129505%_ _%hd129421129500%_))
                                   (if (##pair? _%tl129422129502%_)
                                       (let ((_%hd129423129507%_
                                              (##car _%tl129422129502%_))
                                             (_%tl129424129509%_
                                              (##cdr _%tl129422129502%_)))
                                         (let ((_%expander129512%_
                                                _%hd129423129507%_))
                                           (if (##pair? _%tl129424129509%_)
                                               (let ((_%hd129425129514%_
                                                      (##car _%tl129424129509%_))
                                                     (_%tl129426129516%_
                                                      (##cdr _%tl129424129509%_)))
                                                 (let ((_%compiler129519%_
                                                        _%hd129425129514%_))
                                                   (if (##null? _%tl129426129516%_)
                                                       (_%K129420129497%_
                                                        _%compiler129519%_
                                                        _%expander129512%_
                                                        _%key129505%_)
                                                       (_%E129419129432%_))))
                                               (_%E129419129432%_))))
                                       (_%E129419129432%_))))
                               (_%E129419129432%_))))))))
               (if (##pair? _%bind129401129408%_)
                   (let ((_%hd129405129524%_ (##car _%bind129401129408%_))
                         (_%tl129406129526%_ (##cdr _%bind129401129408%_)))
                     (let* ((_%id129529%_ _%hd129405129524%_)
                            (_%rest129531%_ _%tl129406129526%_))
                       (_%K129404129521%_ _%rest129531%_ _%id129529%_)))
                   (_%E129403129412%_))))
           _%bindings129386%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self128745129536%_)
        (let ((_%bindings129538%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self128745129536%_
           _%bindings129538%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g129903_
        (let ((_g129902_ (##length _g129903_)))
          (cond ((##fx= _g129902_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g129903_))
                ((##fx= _g129902_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g129903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g129903_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self128746129143%_ _%bindings129145%_)
        (let* ((_%self129147%_ _%self128746129143%_)
               (_%self129149%_ _%self129147%_))
          (for-each
           (lambda (_%bind129159%_)
             (let* ((_%bind129160129167%_ _%bind129159%_)
                    (_%E129162129171%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind129160129167%_
                              '([id . rest]))
                       '#!void))
                    (_%K129163129239%_
                     (lambda (_%rest129174%_ _%id129175%_)
                       (gx#core-context-put!
                        _%self129149%_
                        _%id129175%_
                        (##structure
                         gx#syntax-binding::t
                         _%id129175%_
                         _%id129175%_
                         '#f
                         (let* ((_%rest129176129191%_ _%rest129174%_)
                                (_%E129180129195%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest129176129191%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K129185129224%_
                                  (lambda (_%core-id129222%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id129222%_)))
                                 (_%K129182129209%_
                                  (lambda (_%proc129207%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc129207%_)))
                                 (_%K129181129200%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id129175%_))))
                             (let ((_%try-match129179129203%_
                                    (lambda ()
                                      (if (##null? _%rest129176129191%_)
                                          (_%K129181129200%_)
                                          (_%E129180129195%_)))))
                               (if (##pair? _%rest129176129191%_)
                                   (let ((_%tl129187129229%_
                                          (##cdr _%rest129176129191%_))
                                         (_%hd129186129227%_
                                          (##car _%rest129176129191%_)))
                                     (if (##eq? _%hd129186129227%_ '=>)
                                         (if (##pair? _%tl129187129229%_)
                                             (let ((_%tl129189129234%_
                                                    (##cdr _%tl129187129229%_))
                                                   (_%hd129188129232%_
                                                    (##car _%tl129187129229%_)))
                                               (if (##null? _%tl129189129234%_)
                                                   (let ((_%core-id129237%_
                                                          _%hd129188129232%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id129237%_))
                                                   (_%E129180129195%_)))
                                             (if (##null? _%tl129187129229%_)
                                                 (let ((_%proc129217%_
                                                        _%hd129186129227%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc129217%_))
                                                 (_%E129180129195%_)))
                                         (if (##null? _%tl129187129229%_)
                                             (let ((_%proc129217%_
                                                    _%hd129186129227%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc129217%_))
                                             (_%E129180129195%_))))
                                   (_%try-match129179129203%_))))))))))
               (if (##pair? _%bind129160129167%_)
                   (let ((_%hd129164129242%_ (##car _%bind129160129167%_))
                         (_%tl129165129244%_ (##cdr _%bind129160129167%_)))
                     (let* ((_%id129247%_ _%hd129164129242%_)
                            (_%rest129249%_ _%tl129165129244%_))
                       (_%K129163129239%_ _%rest129249%_ _%id129247%_)))
                   (_%E129162129171%_))))
           _%bindings129145%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self128746129254%_)
        (let ((_%bindings129256%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self128746129254%_
           _%bindings129256%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g129905_
        (let ((_g129904_ (##length _g129905_)))
          (cond ((##fx= _g129904_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g129905_))
                ((##fx= _g129904_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g129905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g129905_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self128747128873%_)
        (let* ((_%self128876%_ _%self128747128873%_)
               (_%self128878%_ _%self128876%_))
          (letrec ((_%linux-variant?128888%_
                    (lambda (_%sys-type128988%_)
                      (let* ((_%g128989128997%_
                              (__string-split
                               (symbol->string _%sys-type128988%_)
                               '#\-))
                             (_%else128991129005%_ (lambda () '#f))
                             (_%K128993129010%_
                              (lambda (_%rest129008%_)
                                (not (null? _%rest129008%_)))))
                        (if (##pair? _%g128989128997%_)
                            (let ((_%hd128994129013%_
                                   (##car _%g128989128997%_))
                                  (_%tl128995129015%_
                                   (##cdr _%g128989128997%_)))
                              (if (equal? _%hd128994129013%_ '"linux")
                                  (let ((_%rest129018%_ _%tl128995129015%_))
                                    (_%K128993129010%_ _%rest129018%_))
                                  (_%else128991129005%_)))
                            (_%else128991129005%_)))))
                   (_%bsd-variant128889%_
                    (lambda (_%sys-type128947%_)
                      (let ((_%sys-type-str128949%_
                             (symbol->string _%sys-type128947%_)))
                        (let _%lp128951%_ ((_%rest128953%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest128954128962%_ _%rest128953%_)
                                 (_%else128956128970%_ (lambda () '#f))
                                 (_%K128958128976%_
                                  (lambda (_%rest128973%_ _%sys128974%_)
                                    (if (string-prefix?
                                         _%sys128974%_
                                         _%sys-type-str128949%_)
                                        _%sys128974%_
                                        (_%lp128951%_ _%rest128973%_)))))
                            (if (##pair? _%rest128954128962%_)
                                (let ((_%hd128959128979%_
                                       (##car _%rest128954128962%_))
                                      (_%tl128960128981%_
                                       (##cdr _%rest128954128962%_)))
                                  (let* ((_%sys128984%_ _%hd128959128979%_)
                                         (_%rest128986%_ _%tl128960128981%_))
                                    (_%K128958128976%_
                                     _%rest128986%_
                                     _%sys128984%_)))
                                (_%else128956128970%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self128878%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self128878%_)
            (let* ((_%g128890128902%_ (system-type))
                   (_%else128892128910%_ (lambda () '#!void))
                   (_%K128894128923%_
                    (lambda (_%sys-type128913%_
                             _%sys-vendor128914%_
                             _%sys-cpu128915%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu128915%_
                       '#f
                       '0
                       _%self128878%_)
                      (gx#core-bind-feature!__%
                       _%sys-type128913%_
                       '#f
                       '0
                       _%self128878%_)
                      (if (_%linux-variant?128888%_ _%sys-type128913%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self128878%_)
                          (let ((_%$e128918%_
                                 (_%bsd-variant128889%_ _%sys-type128913%_)))
                            (if _%$e128918%_
                                ((lambda (_%sys-prefix128921%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self128878%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix128921%_)
                                    '#f
                                    '0
                                    _%self128878%_))
                                 _%$e128918%_)
                                '#!void))))))
              (if (##pair? _%g128890128902%_)
                  (let ((_%hd128895128926%_ (##car _%g128890128902%_))
                        (_%tl128896128928%_ (##cdr _%g128890128902%_)))
                    (let ((_%sys-cpu128931%_ _%hd128895128926%_))
                      (if (##pair? _%tl128896128928%_)
                          (let ((_%hd128897128933%_ (##car _%tl128896128928%_))
                                (_%tl128898128935%_
                                 (##cdr _%tl128896128928%_)))
                            (let ((_%sys-vendor128938%_ _%hd128897128933%_))
                              (if (##pair? _%tl128898128935%_)
                                  (let ((_%hd128899128940%_
                                         (##car _%tl128898128935%_))
                                        (_%tl128900128942%_
                                         (##cdr _%tl128898128935%_)))
                                    (let ((_%sys-type128945%_
                                           _%hd128899128940%_))
                                      (if (##null? _%tl128900128942%_)
                                          (_%K128894128923%_
                                           _%sys-type128945%_
                                           _%sys-vendor128938%_
                                           _%sys-cpu128931%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self128878%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
