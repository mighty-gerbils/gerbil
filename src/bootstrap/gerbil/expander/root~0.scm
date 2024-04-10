(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712773525)
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
      (lambda (_%self127242128322%_ _%bind?128324%_)
        (let* ((_%self128326%_ _%self127242128322%_)
               (_%self128328%_ _%self128326%_))
          (if (##fx< '2 (##structure-length _%self128328%_))
              (begin
                (##unchecked-structure-set! _%self128328%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self128328%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128328%_
                     '2
                     (##vector-length _%self128328%_)))
          (if _%bind?128324%_
              (begin
                (let ((__method128391
                       (__method-ref
                        _%self128328%_
                        'bind-core-syntax-expanders!)))
                  (if __method128391
                      (__method128391 _%self128328%_)
                      (begin
                        (error '"Missing method"
                               _%self128328%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method128392
                       (__method-ref
                        _%self128328%_
                        'bind-core-macro-expanders!)))
                  (if __method128392
                      (__method128392 _%self128328%_)
                      (begin
                        (error '"Missing method"
                               _%self128328%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method128393
                       (__method-ref _%self128328%_ 'bind-core-features!)))
                  (if __method128393
                      (__method128393 _%self128328%_)
                      (begin
                        (error '"Missing method"
                               _%self128328%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self127242128341%_)
        (let ((_%bind?128343%_ '#t))
          (gx#root-context:::init!__% _%self127242128341%_ _%bind?128343%_))))
    (define gx#root-context:::init!
      (lambda _g128396_
        (let ((_g128395_ (##length _g128396_)))
          (cond ((##fx= _g128395_ 1)
                 (apply gx#root-context:::init!__0 _g128396_))
                ((##fx= _g128395_ 2)
                 (apply gx#root-context:::init!__% _g128396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g128396_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass128347 __method-table128348)
        (let ((__bind-core-features!128349
               (__make-promise
                (lambda ()
                  (let ((__method128352
                         (symbolic-table-ref
                          __method-table128348
                          'bind-core-features!
                          '#f)))
                    (if __method128352
                        __method128352
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!128350
               (__make-promise
                (lambda ()
                  (let ((__method128353
                         (symbolic-table-ref
                          __method-table128348
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method128353
                        __method128353
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!128351
               (__make-promise
                (lambda ()
                  (let ((__method128354
                         (symbolic-table-ref
                          __method-table128348
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method128354
                        __method128354
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_%opt-lambda128320128338%_
                 (lambda (_%self127242128322%_ _%bind?128324%_)
                   (let* ((_%self128326%_ _%self127242128322%_)
                          (_%self128328%_ _%self128326%_))
                     (if (##fx< '2 (##structure-length _%self128328%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self128328%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self128328%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self128328%_
                                '2
                                (##vector-length _%self128328%_)))
                     (if _%bind?128324%_
                         (begin
                           ((force __bind-core-syntax-expanders!128351)
                            _%self128328%_)
                           ((force __bind-core-macro-expanders!128350)
                            _%self128328%_)
                           ((force __bind-core-features!128349)
                            _%self128328%_))
                         '#!void)))))
            (lambda _g128398_
              (let ((_g128397_ (##length _g128398_)))
                (cond ((##fx= _g128397_ 1)
                       (apply (lambda (_%self127242128341%_)
                                (let ((_%bind?128343%_ '#t))
                                  (_%opt-lambda128320128338%_
                                   _%self127242128341%_
                                   _%bind?128343%_)))
                              _g128398_))
                      ((##fx= _g128397_ 2)
                       (apply _%opt-lambda128320128338%_ _g128398_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g128398_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self127243128165%_ _%super128167%_)
        (let* ((_%self128169%_ _%self127243128165%_)
               (_%self128171%_ _%self128169%_)
               (_%super128187%_
                (let ((_%$e128181%_ _%super128167%_))
                  (if _%$e128181%_
                      _%$e128181%_
                      (let ((_%$e128184%_ (gx#core-context-root__0)))
                        (if _%$e128184%_
                            _%$e128184%_
                            (let ((__obj128394
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init! __obj128394)
                              __obj128394)))))))
          (if (##fx< '5 (##structure-length _%self128171%_))
              (begin
                (##unchecked-structure-set! _%self128171%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self128171%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self128171%_
                 _%super128187%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self128171%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self128171%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128171%_
                     '5
                     (##vector-length _%self128171%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self127243128192%_)
        (let ((_%super128194%_ '#f))
          (gx#top-context:::init!__% _%self127243128192%_ _%super128194%_))))
    (define gx#top-context:::init!
      (lambda _g128400_
        (let ((_g128399_ (##length _g128400_)))
          (cond ((##fx= _g128399_ 1)
                 (apply gx#top-context:::init!__0 _g128400_))
                ((##fx= _g128399_ 2)
                 (apply gx#top-context:::init!__% _g128400_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g128400_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self127244127883%_ _%bindings127885%_)
        (let* ((_%self127887%_ _%self127244127883%_)
               (_%self127889%_ _%self127887%_))
          (for-each
           (lambda (_%bind127899%_)
             (let* ((_%bind127900127907%_ _%bind127899%_)
                    (_%E127902127911%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127900127907%_
                              '([id . rest]))
                       '#!void))
                    (_%K127903128020%_
                     (lambda (_%rest127914%_ _%id127915%_)
                       (gx#core-context-put!
                        _%self127889%_
                        _%id127915%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127915%_
                         _%id127915%_
                         '#f
                         (let* ((_%rest127916127927%_ _%rest127914%_)
                                (_%E127918127931%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127916127927%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K127919127996%_
                                 (lambda (_%compiler127934%_
                                          _%expander127935%_
                                          _%key127936%_)
                                   ((let* ((_%key127937127950%_ _%key127936%_)
                                           (_%E127943127954%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key127937127950%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K127948127990%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K127947127983%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K127946127975%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K127945127967%_
                                             (lambda () gx#make-special-form))
                                            (_%K127944127959%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match127942127962%_
                                                (lambda ()
                                                  (if (##eq? _%key127937127950%_
                                                             'expr:)
                                                      (_%K127944127959%_)
                                                      (_%E127943127954%_))))
                                               (_%try-match127941127970%_
                                                (lambda ()
                                                  (if (##eq? _%key127937127950%_
                                                             'special:)
                                                      (_%K127945127967%_)
                                                      (_%try-match127942127962%_))))
                                               (_%try-match127940127978%_
                                                (lambda ()
                                                  (if (##eq? _%key127937127950%_
                                                             'define:)
                                                      (_%K127946127975%_)
                                                      (_%try-match127941127970%_))))
                                               (_%try-match127939127986%_
                                                (lambda ()
                                                  (if (##eq? _%key127937127950%_
                                                             'module:)
                                                      (_%K127947127983%_)
                                                      (_%try-match127940127978%_)))))
                                          (if (##eq? _%key127937127950%_ 'top:)
                                              (_%K127948127990%_)
                                              (_%try-match127939127986%_)))))
                                    _%expander127935%_
                                    _%id127915%_
                                    (let ((_%$e127993%_ _%compiler127934%_))
                                      (if _%$e127993%_
                                          _%$e127993%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest127916127927%_)
                               (let ((_%hd127920127999%_
                                      (##car _%rest127916127927%_))
                                     (_%tl127921128001%_
                                      (##cdr _%rest127916127927%_)))
                                 (let ((_%key128004%_ _%hd127920127999%_))
                                   (if (##pair? _%tl127921128001%_)
                                       (let ((_%hd127922128006%_
                                              (##car _%tl127921128001%_))
                                             (_%tl127923128008%_
                                              (##cdr _%tl127921128001%_)))
                                         (let ((_%expander128011%_
                                                _%hd127922128006%_))
                                           (if (##pair? _%tl127923128008%_)
                                               (let ((_%hd127924128013%_
                                                      (##car _%tl127923128008%_))
                                                     (_%tl127925128015%_
                                                      (##cdr _%tl127923128008%_)))
                                                 (let ((_%compiler128018%_
                                                        _%hd127924128013%_))
                                                   (if (##null? _%tl127925128015%_)
                                                       (_%K127919127996%_
                                                        _%compiler128018%_
                                                        _%expander128011%_
                                                        _%key128004%_)
                                                       (_%E127918127931%_))))
                                               (_%E127918127931%_))))
                                       (_%E127918127931%_))))
                               (_%E127918127931%_))))))))
               (if (##pair? _%bind127900127907%_)
                   (let ((_%hd127904128023%_ (##car _%bind127900127907%_))
                         (_%tl127905128025%_ (##cdr _%bind127900127907%_)))
                     (let* ((_%id128028%_ _%hd127904128023%_)
                            (_%rest128030%_ _%tl127905128025%_))
                       (_%K127903128020%_ _%rest128030%_ _%id128028%_)))
                   (_%E127902127911%_))))
           _%bindings127885%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127244128035%_)
        (let ((_%bindings128037%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127244128035%_
           _%bindings128037%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g128402_
        (let ((_g128401_ (##length _g128402_)))
          (cond ((##fx= _g128401_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g128402_))
                ((##fx= _g128401_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g128402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g128402_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self127245127642%_ _%bindings127644%_)
        (let* ((_%self127646%_ _%self127245127642%_)
               (_%self127648%_ _%self127646%_))
          (for-each
           (lambda (_%bind127658%_)
             (let* ((_%bind127659127666%_ _%bind127658%_)
                    (_%E127661127670%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127659127666%_
                              '([id . rest]))
                       '#!void))
                    (_%K127662127738%_
                     (lambda (_%rest127673%_ _%id127674%_)
                       (gx#core-context-put!
                        _%self127648%_
                        _%id127674%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127674%_
                         _%id127674%_
                         '#f
                         (let* ((_%rest127675127690%_ _%rest127673%_)
                                (_%E127679127694%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127675127690%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K127684127723%_
                                  (lambda (_%core-id127721%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id127721%_)))
                                 (_%K127681127708%_
                                  (lambda (_%proc127706%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc127706%_)))
                                 (_%K127680127699%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id127674%_))))
                             (let ((_%try-match127678127702%_
                                    (lambda ()
                                      (if (##null? _%rest127675127690%_)
                                          (_%K127680127699%_)
                                          (_%E127679127694%_)))))
                               (if (##pair? _%rest127675127690%_)
                                   (let ((_%tl127686127728%_
                                          (##cdr _%rest127675127690%_))
                                         (_%hd127685127726%_
                                          (##car _%rest127675127690%_)))
                                     (if (##eq? _%hd127685127726%_ '=>)
                                         (if (##pair? _%tl127686127728%_)
                                             (let ((_%tl127688127733%_
                                                    (##cdr _%tl127686127728%_))
                                                   (_%hd127687127731%_
                                                    (##car _%tl127686127728%_)))
                                               (if (##null? _%tl127688127733%_)
                                                   (let ((_%core-id127736%_
                                                          _%hd127687127731%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id127736%_))
                                                   (_%E127679127694%_)))
                                             (if (##null? _%tl127686127728%_)
                                                 (let ((_%proc127716%_
                                                        _%hd127685127726%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc127716%_))
                                                 (_%E127679127694%_)))
                                         (if (##null? _%tl127686127728%_)
                                             (let ((_%proc127716%_
                                                    _%hd127685127726%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc127716%_))
                                             (_%E127679127694%_))))
                                   (_%try-match127678127702%_))))))))))
               (if (##pair? _%bind127659127666%_)
                   (let ((_%hd127663127741%_ (##car _%bind127659127666%_))
                         (_%tl127664127743%_ (##cdr _%bind127659127666%_)))
                     (let* ((_%id127746%_ _%hd127663127741%_)
                            (_%rest127748%_ _%tl127664127743%_))
                       (_%K127662127738%_ _%rest127748%_ _%id127746%_)))
                   (_%E127661127670%_))))
           _%bindings127644%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self127245127753%_)
        (let ((_%bindings127755%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self127245127753%_
           _%bindings127755%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g128404_
        (let ((_g128403_ (##length _g128404_)))
          (cond ((##fx= _g128403_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g128404_))
                ((##fx= _g128403_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g128404_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g128404_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self127246127372%_)
        (let* ((_%self127375%_ _%self127246127372%_)
               (_%self127377%_ _%self127375%_))
          (letrec ((_%linux-variant?127387%_
                    (lambda (_%sys-type127487%_)
                      (let* ((_%g127488127496%_
                              (__string-split
                               (symbol->string _%sys-type127487%_)
                               '#\-))
                             (_%else127490127504%_ (lambda () '#f))
                             (_%K127492127509%_
                              (lambda (_%rest127507%_)
                                (not (null? _%rest127507%_)))))
                        (if (##pair? _%g127488127496%_)
                            (let ((_%hd127493127512%_
                                   (##car _%g127488127496%_))
                                  (_%tl127494127514%_
                                   (##cdr _%g127488127496%_)))
                              (if (equal? _%hd127493127512%_ '"linux")
                                  (let ((_%rest127517%_ _%tl127494127514%_))
                                    (_%K127492127509%_ _%rest127517%_))
                                  (_%else127490127504%_)))
                            (_%else127490127504%_)))))
                   (_%bsd-variant127388%_
                    (lambda (_%sys-type127446%_)
                      (let ((_%sys-type-str127448%_
                             (symbol->string _%sys-type127446%_)))
                        (let _%lp127450%_ ((_%rest127452%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest127453127461%_ _%rest127452%_)
                                 (_%else127455127469%_ (lambda () '#f))
                                 (_%K127457127475%_
                                  (lambda (_%rest127472%_ _%sys127473%_)
                                    (if (string-prefix?
                                         _%sys127473%_
                                         _%sys-type-str127448%_)
                                        _%sys127473%_
                                        (_%lp127450%_ _%rest127472%_)))))
                            (if (##pair? _%rest127453127461%_)
                                (let ((_%hd127458127478%_
                                       (##car _%rest127453127461%_))
                                      (_%tl127459127480%_
                                       (##cdr _%rest127453127461%_)))
                                  (let* ((_%sys127483%_ _%hd127458127478%_)
                                         (_%rest127485%_ _%tl127459127480%_))
                                    (_%K127457127475%_
                                     _%rest127485%_
                                     _%sys127483%_)))
                                (_%else127455127469%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self127377%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self127377%_)
            (let* ((_%g127389127401%_ (system-type))
                   (_%else127391127409%_ (lambda () '#!void))
                   (_%K127393127422%_
                    (lambda (_%sys-type127412%_
                             _%sys-vendor127413%_
                             _%sys-cpu127414%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu127414%_
                       '#f
                       '0
                       _%self127377%_)
                      (gx#core-bind-feature!__%
                       _%sys-type127412%_
                       '#f
                       '0
                       _%self127377%_)
                      (if (_%linux-variant?127387%_ _%sys-type127412%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self127377%_)
                          (let ((_%$e127417%_
                                 (_%bsd-variant127388%_ _%sys-type127412%_)))
                            (if _%$e127417%_
                                ((lambda (_%sys-prefix127420%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self127377%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix127420%_)
                                    '#f
                                    '0
                                    _%self127377%_))
                                 _%$e127417%_)
                                '#!void))))))
              (if (##pair? _%g127389127401%_)
                  (let ((_%hd127394127425%_ (##car _%g127389127401%_))
                        (_%tl127395127427%_ (##cdr _%g127389127401%_)))
                    (let ((_%sys-cpu127430%_ _%hd127394127425%_))
                      (if (##pair? _%tl127395127427%_)
                          (let ((_%hd127396127432%_ (##car _%tl127395127427%_))
                                (_%tl127397127434%_
                                 (##cdr _%tl127395127427%_)))
                            (let ((_%sys-vendor127437%_ _%hd127396127432%_))
                              (if (##pair? _%tl127397127434%_)
                                  (let ((_%hd127398127439%_
                                         (##car _%tl127397127434%_))
                                        (_%tl127399127441%_
                                         (##cdr _%tl127397127434%_)))
                                    (let ((_%sys-type127444%_
                                           _%hd127398127439%_))
                                      (if (##null? _%tl127399127441%_)
                                          (_%K127393127422%_
                                           _%sys-type127444%_
                                           _%sys-vendor127437%_
                                           _%sys-cpu127430%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self127377%_)
                '#!void)))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
