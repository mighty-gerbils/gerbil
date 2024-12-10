(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1733687560)
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
      (lambda (_%self130367131447%_ _%bind?131449%_)
        (let* ((_%self131451%_ _%self130367131447%_)
               (_%self131453%_ _%self131451%_))
          (if (##fx< '2 (##structure-length _%self131453%_))
              (begin
                (##unchecked-structure-set! _%self131453%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self131453%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self131453%_
                     '2
                     (##vector-length _%self131453%_)))
          (if _%bind?131449%_
              (begin
                (let ((__method131516
                       (__method-ref
                        _%self131453%_
                        'bind-core-syntax-expanders!)))
                  (if __method131516
                      (__method131516 _%self131453%_)
                      (begin
                        (error '"Missing method"
                               _%self131453%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method131517
                       (__method-ref
                        _%self131453%_
                        'bind-core-macro-expanders!)))
                  (if __method131517
                      (__method131517 _%self131453%_)
                      (begin
                        (error '"Missing method"
                               _%self131453%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method131518
                       (__method-ref _%self131453%_ 'bind-core-features!)))
                  (if __method131518
                      (__method131518 _%self131453%_)
                      (begin
                        (error '"Missing method"
                               _%self131453%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self130367131466%_)
        (let ((_%bind?131468%_ '#t))
          (gx#root-context:::init!__% _%self130367131466%_ _%bind?131468%_))))
    (define gx#root-context:::init!
      (lambda _g131521_
        (let ((_g131520_ (##length _g131521_)))
          (cond ((##fx= _g131520_ 1)
                 (apply gx#root-context:::init!__0 _g131521_))
                ((##fx= _g131520_ 2)
                 (apply gx#root-context:::init!__% _g131521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g131521_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass131472 __method-table131473)
        (let ((__bind-core-features!131474
               (__make-promise
                (lambda ()
                  (let ((__method131477
                         (symbolic-table-ref
                          __method-table131473
                          'bind-core-features!
                          '#f)))
                    (if __method131477
                        __method131477
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!131475
               (__make-promise
                (lambda ()
                  (let ((__method131478
                         (symbolic-table-ref
                          __method-table131473
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method131478
                        __method131478
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!131476
               (__make-promise
                (lambda ()
                  (let ((__method131479
                         (symbolic-table-ref
                          __method-table131473
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method131479
                        __method131479
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_%opt-lambda131445131463%_
                 (lambda (_%self130367131447%_ _%bind?131449%_)
                   (let* ((_%self131451%_ _%self130367131447%_)
                          (_%self131453%_ _%self131451%_))
                     (if (##fx< '2 (##structure-length _%self131453%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self131453%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self131453%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self131453%_
                                '2
                                (##vector-length _%self131453%_)))
                     (if _%bind?131449%_
                         (begin
                           ((force __bind-core-syntax-expanders!131476)
                            _%self131453%_)
                           ((force __bind-core-macro-expanders!131475)
                            _%self131453%_)
                           ((force __bind-core-features!131474)
                            _%self131453%_))
                         '#!void)))))
            (lambda _g131523_
              (let ((_g131522_ (##length _g131523_)))
                (cond ((##fx= _g131522_ 1)
                       (apply (lambda (_%self130367131466%_)
                                (let ((_%bind?131468%_ '#t))
                                  (_%opt-lambda131445131463%_
                                   _%self130367131466%_
                                   _%bind?131468%_)))
                              _g131523_))
                      ((##fx= _g131522_ 2)
                       (apply _%opt-lambda131445131463%_ _g131523_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g131523_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self130368131290%_ _%super131292%_)
        (let* ((_%self131294%_ _%self130368131290%_)
               (_%self131296%_ _%self131294%_)
               (_%super131312%_
                (let ((_%$e131306%_ _%super131292%_))
                  (if _%$e131306%_
                      _%$e131306%_
                      (let ((_%$e131309%_ (gx#core-context-root__0)))
                        (if _%$e131309%_
                            _%$e131309%_
                            (let ((__obj131519
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj131519)
                              __obj131519)))))))
          (if (##fx< '5 (##structure-length _%self131296%_))
              (begin
                (##unchecked-structure-set! _%self131296%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self131296%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self131296%_
                 _%super131312%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self131296%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self131296%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self131296%_
                     '5
                     (##vector-length _%self131296%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self130368131317%_)
        (let ((_%super131319%_ '#f))
          (gx#top-context:::init!__% _%self130368131317%_ _%super131319%_))))
    (define gx#top-context:::init!
      (lambda _g131525_
        (let ((_g131524_ (##length _g131525_)))
          (cond ((##fx= _g131524_ 1)
                 (apply gx#top-context:::init!__0 _g131525_))
                ((##fx= _g131524_ 2)
                 (apply gx#top-context:::init!__% _g131525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g131525_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self130369131008%_ _%bindings131010%_)
        (let* ((_%self131012%_ _%self130369131008%_)
               (_%self131014%_ _%self131012%_))
          (for-each
           (lambda (_%bind131024%_)
             (let* ((_%bind131025131032%_ _%bind131024%_)
                    (_%E131027131036%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind131025131032%_
                              '([id . rest]))
                       '#!void))
                    (_%K131028131145%_
                     (lambda (_%rest131039%_ _%id131040%_)
                       (gx#core-context-put!
                        _%self131014%_
                        _%id131040%_
                        (##structure
                         gx#syntax-binding::t
                         _%id131040%_
                         _%id131040%_
                         '#f
                         (let* ((_%rest131041131052%_ _%rest131039%_)
                                (_%E131043131056%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest131041131052%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K131044131121%_
                                 (lambda (_%compiler131059%_
                                          _%expander131060%_
                                          _%key131061%_)
                                   ((let* ((_%key131062131075%_ _%key131061%_)
                                           (_%E131068131079%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key131062131075%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K131073131115%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K131072131108%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K131071131100%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K131070131092%_
                                             (lambda () gx#make-special-form))
                                            (_%K131069131084%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match131067131087%_
                                                (lambda ()
                                                  (if (##eq? _%key131062131075%_
                                                             'expr:)
                                                      (_%K131069131084%_)
                                                      (_%E131068131079%_))))
                                               (_%try-match131066131095%_
                                                (lambda ()
                                                  (if (##eq? _%key131062131075%_
                                                             'special:)
                                                      (_%K131070131092%_)
                                                      (_%try-match131067131087%_))))
                                               (_%try-match131065131103%_
                                                (lambda ()
                                                  (if (##eq? _%key131062131075%_
                                                             'define:)
                                                      (_%K131071131100%_)
                                                      (_%try-match131066131095%_))))
                                               (_%try-match131064131111%_
                                                (lambda ()
                                                  (if (##eq? _%key131062131075%_
                                                             'module:)
                                                      (_%K131072131108%_)
                                                      (_%try-match131065131103%_)))))
                                          (if (##eq? _%key131062131075%_ 'top:)
                                              (_%K131073131115%_)
                                              (_%try-match131064131111%_)))))
                                    _%expander131060%_
                                    _%id131040%_
                                    (let ((_%$e131118%_ _%compiler131059%_))
                                      (if _%$e131118%_
                                          _%$e131118%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest131041131052%_)
                               (let ((_%hd131045131124%_
                                      (##car _%rest131041131052%_))
                                     (_%tl131046131126%_
                                      (##cdr _%rest131041131052%_)))
                                 (let ((_%key131129%_ _%hd131045131124%_))
                                   (if (pair? _%tl131046131126%_)
                                       (let ((_%hd131047131131%_
                                              (##car _%tl131046131126%_))
                                             (_%tl131048131133%_
                                              (##cdr _%tl131046131126%_)))
                                         (let ((_%expander131136%_
                                                _%hd131047131131%_))
                                           (if (pair? _%tl131048131133%_)
                                               (let ((_%hd131049131138%_
                                                      (##car _%tl131048131133%_))
                                                     (_%tl131050131140%_
                                                      (##cdr _%tl131048131133%_)))
                                                 (let ((_%compiler131143%_
                                                        _%hd131049131138%_))
                                                   (if (null? _%tl131050131140%_)
                                                       (_%K131044131121%_
                                                        _%compiler131143%_
                                                        _%expander131136%_
                                                        _%key131129%_)
                                                       (_%E131043131056%_))))
                                               (_%E131043131056%_))))
                                       (_%E131043131056%_))))
                               (_%E131043131056%_))))))))
               (if (pair? _%bind131025131032%_)
                   (let ((_%hd131029131148%_ (##car _%bind131025131032%_))
                         (_%tl131030131150%_ (##cdr _%bind131025131032%_)))
                     (let* ((_%id131153%_ _%hd131029131148%_)
                            (_%rest131155%_ _%tl131030131150%_))
                       (_%K131028131145%_ _%rest131155%_ _%id131153%_)))
                   (_%E131027131036%_))))
           _%bindings131010%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self130369131160%_)
        (let ((_%bindings131162%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self130369131160%_
           _%bindings131162%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g131527_
        (let ((_g131526_ (##length _g131527_)))
          (cond ((##fx= _g131526_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g131527_))
                ((##fx= _g131526_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g131527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g131527_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self130370130767%_ _%bindings130769%_)
        (let* ((_%self130771%_ _%self130370130767%_)
               (_%self130773%_ _%self130771%_))
          (for-each
           (lambda (_%bind130783%_)
             (let* ((_%bind130784130791%_ _%bind130783%_)
                    (_%E130786130795%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind130784130791%_
                              '([id . rest]))
                       '#!void))
                    (_%K130787130863%_
                     (lambda (_%rest130798%_ _%id130799%_)
                       (gx#core-context-put!
                        _%self130773%_
                        _%id130799%_
                        (##structure
                         gx#syntax-binding::t
                         _%id130799%_
                         _%id130799%_
                         '#f
                         (let* ((_%rest130800130815%_ _%rest130798%_)
                                (_%E130804130819%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest130800130815%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K130809130848%_
                                  (lambda (_%core-id130846%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id130846%_)))
                                 (_%K130806130833%_
                                  (lambda (_%proc130831%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc130831%_)))
                                 (_%K130805130824%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id130799%_))))
                             (let ((_%try-match130803130827%_
                                    (lambda ()
                                      (if (null? _%rest130800130815%_)
                                          (_%K130805130824%_)
                                          (_%E130804130819%_)))))
                               (if (pair? _%rest130800130815%_)
                                   (let ((_%tl130811130853%_
                                          (##cdr _%rest130800130815%_))
                                         (_%hd130810130851%_
                                          (##car _%rest130800130815%_)))
                                     (if (##eq? _%hd130810130851%_ '=>)
                                         (if (pair? _%tl130811130853%_)
                                             (let ((_%tl130813130858%_
                                                    (##cdr _%tl130811130853%_))
                                                   (_%hd130812130856%_
                                                    (##car _%tl130811130853%_)))
                                               (if (null? _%tl130813130858%_)
                                                   (let ((_%core-id130861%_
                                                          _%hd130812130856%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id130861%_))
                                                   (_%E130804130819%_)))
                                             (if (null? _%tl130811130853%_)
                                                 (let ((_%proc130841%_
                                                        _%hd130810130851%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc130841%_))
                                                 (_%E130804130819%_)))
                                         (if (null? _%tl130811130853%_)
                                             (let ((_%proc130841%_
                                                    _%hd130810130851%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc130841%_))
                                             (_%E130804130819%_))))
                                   (_%try-match130803130827%_))))))))))
               (if (pair? _%bind130784130791%_)
                   (let ((_%hd130788130866%_ (##car _%bind130784130791%_))
                         (_%tl130789130868%_ (##cdr _%bind130784130791%_)))
                     (let* ((_%id130871%_ _%hd130788130866%_)
                            (_%rest130873%_ _%tl130789130868%_))
                       (_%K130787130863%_ _%rest130873%_ _%id130871%_)))
                   (_%E130786130795%_))))
           _%bindings130769%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self130370130878%_)
        (let ((_%bindings130880%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self130370130878%_
           _%bindings130880%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g131529_
        (let ((_g131528_ (##length _g131529_)))
          (cond ((##fx= _g131528_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g131529_))
                ((##fx= _g131528_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g131529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g131529_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self130371130497%_)
        (let* ((_%self130500%_ _%self130371130497%_)
               (_%self130502%_ _%self130500%_))
          (letrec ((_%linux-variant?130512%_
                    (lambda (_%sys-type130612%_)
                      (let* ((_%g130613130621%_
                              (__string-split
                               (symbol->string _%sys-type130612%_)
                               '#\-))
                             (_%else130615130629%_ (lambda () '#f))
                             (_%K130617130634%_
                              (lambda (_%rest130632%_)
                                (not (null? _%rest130632%_)))))
                        (if (pair? _%g130613130621%_)
                            (let ((_%hd130618130637%_
                                   (##car _%g130613130621%_))
                                  (_%tl130619130639%_
                                   (##cdr _%g130613130621%_)))
                              (if (equal? _%hd130618130637%_ '"linux")
                                  (let ((_%rest130642%_ _%tl130619130639%_))
                                    (_%K130617130634%_ _%rest130642%_))
                                  (_%else130615130629%_)))
                            (_%else130615130629%_)))))
                   (_%bsd-variant130513%_
                    (lambda (_%sys-type130571%_)
                      (let ((_%sys-type-str130573%_
                             (symbol->string _%sys-type130571%_)))
                        (let _%lp130575%_ ((_%rest130577%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest130578130586%_ _%rest130577%_)
                                 (_%else130580130594%_ (lambda () '#f))
                                 (_%K130582130600%_
                                  (lambda (_%rest130597%_ _%sys130598%_)
                                    (if (string-prefix?
                                         _%sys130598%_
                                         _%sys-type-str130573%_)
                                        _%sys130598%_
                                        (_%lp130575%_ _%rest130597%_)))))
                            (if (pair? _%rest130578130586%_)
                                (let ((_%hd130583130603%_
                                       (##car _%rest130578130586%_))
                                      (_%tl130584130605%_
                                       (##cdr _%rest130578130586%_)))
                                  (let* ((_%sys130608%_ _%hd130583130603%_)
                                         (_%rest130610%_ _%tl130584130605%_))
                                    (_%K130582130600%_
                                     _%rest130610%_
                                     _%sys130608%_)))
                                (_%else130580130594%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self130502%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self130502%_)
            (let* ((_%g130514130526%_ (system-type))
                   (_%else130516130534%_ (lambda () '#!void))
                   (_%K130518130547%_
                    (lambda (_%sys-type130537%_
                             _%sys-vendor130538%_
                             _%sys-cpu130539%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu130539%_
                       '#f
                       '0
                       _%self130502%_)
                      (gx#core-bind-feature!__%
                       _%sys-type130537%_
                       '#f
                       '0
                       _%self130502%_)
                      (if (_%linux-variant?130512%_ _%sys-type130537%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self130502%_)
                          (let ((_%$e130542%_
                                 (_%bsd-variant130513%_ _%sys-type130537%_)))
                            (if _%$e130542%_
                                ((lambda (_%sys-prefix130545%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self130502%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix130545%_)
                                    '#f
                                    '0
                                    _%self130502%_))
                                 _%$e130542%_)
                                '#!void))))))
              (if (pair? _%g130514130526%_)
                  (let ((_%hd130519130550%_ (##car _%g130514130526%_))
                        (_%tl130520130552%_ (##cdr _%g130514130526%_)))
                    (let ((_%sys-cpu130555%_ _%hd130519130550%_))
                      (if (pair? _%tl130520130552%_)
                          (let ((_%hd130521130557%_ (##car _%tl130520130552%_))
                                (_%tl130522130559%_
                                 (##cdr _%tl130520130552%_)))
                            (let ((_%sys-vendor130562%_ _%hd130521130557%_))
                              (if (pair? _%tl130522130559%_)
                                  (let ((_%hd130523130564%_
                                         (##car _%tl130522130559%_))
                                        (_%tl130524130566%_
                                         (##cdr _%tl130522130559%_)))
                                    (let ((_%sys-type130569%_
                                           _%hd130523130564%_))
                                      (if (null? _%tl130524130566%_)
                                          (_%K130518130547%_
                                           _%sys-type130569%_
                                           _%sys-vendor130562%_
                                           _%sys-cpu130555%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self130502%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
