(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1734278445)
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
      (lambda (_%self131402132482%_ _%bind?132484%_)
        (let* ((_%self132486%_ _%self131402132482%_)
               (_%self132488%_ _%self132486%_))
          (if (##fx< '2 (##structure-length _%self132488%_))
              (begin
                (##unchecked-structure-set! _%self132488%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self132488%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self132488%_
                     '2
                     (##vector-length _%self132488%_)))
          (if _%bind?132484%_
              (begin
                (let ((__method132551
                       (__method-ref
                        _%self132488%_
                        'bind-core-syntax-expanders!)))
                  (if __method132551
                      (__method132551 _%self132488%_)
                      (begin
                        (error '"Missing method"
                               _%self132488%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method132552
                       (__method-ref
                        _%self132488%_
                        'bind-core-macro-expanders!)))
                  (if __method132552
                      (__method132552 _%self132488%_)
                      (begin
                        (error '"Missing method"
                               _%self132488%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method132553
                       (__method-ref _%self132488%_ 'bind-core-features!)))
                  (if __method132553
                      (__method132553 _%self132488%_)
                      (begin
                        (error '"Missing method"
                               _%self132488%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self131402132501%_)
        (let ((_%bind?132503%_ '#t))
          (gx#root-context:::init!__% _%self131402132501%_ _%bind?132503%_))))
    (define gx#root-context:::init!
      (lambda _g132556_
        (let ((_g132555_ (##length _g132556_)))
          (cond ((##fx= _g132555_ 1)
                 (apply gx#root-context:::init!__0 _g132556_))
                ((##fx= _g132555_ 2)
                 (apply gx#root-context:::init!__% _g132556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g132556_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass132507 __method-table132508)
        (let ((__bind-core-features!132509
               (__make-promise
                (lambda ()
                  (let ((__method132512
                         (symbolic-table-ref
                          __method-table132508
                          'bind-core-features!
                          '#f)))
                    (if __method132512
                        __method132512
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!132510
               (__make-promise
                (lambda ()
                  (let ((__method132513
                         (symbolic-table-ref
                          __method-table132508
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method132513
                        __method132513
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!132511
               (__make-promise
                (lambda ()
                  (let ((__method132514
                         (symbolic-table-ref
                          __method-table132508
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method132514
                        __method132514
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda132480132498%_
                 (lambda (_%self131402132482%_ _%bind?132484%_)
                   (let* ((_%self132486%_ _%self131402132482%_)
                          (_%self132488%_ _%self132486%_))
                     (if (##fx< '2 (##structure-length _%self132488%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self132488%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self132488%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self132488%_
                                '2
                                (##vector-length _%self132488%_)))
                     (if _%bind?132484%_
                         (begin
                           ((force __bind-core-syntax-expanders!132510)
                            _%self132488%_)
                           ((force __bind-core-macro-expanders!132511)
                            _%self132488%_)
                           ((force __bind-core-features!132509)
                            _%self132488%_))
                         '#!void)))))
            (lambda _g132558_
              (let ((_g132557_ (##length _g132558_)))
                (cond ((##fx= _g132557_ 1)
                       (apply (lambda (_%self131402132501%_)
                                (let ((_%bind?132503%_ '#t))
                                  (_%opt-lambda132480132498%_
                                   _%self131402132501%_
                                   _%bind?132503%_)))
                              _g132558_))
                      ((##fx= _g132557_ 2)
                       (apply _%opt-lambda132480132498%_ _g132558_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g132558_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self131403132325%_ _%super132327%_)
        (let* ((_%self132329%_ _%self131403132325%_)
               (_%self132331%_ _%self132329%_)
               (_%super132347%_
                (let ((_%$e132341%_ _%super132327%_))
                  (if _%$e132341%_
                      _%$e132341%_
                      (let ((_%$e132344%_ (gx#core-context-root__0)))
                        (if _%$e132344%_
                            _%$e132344%_
                            (let ((__obj132554
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj132554)
                              __obj132554)))))))
          (if (##fx< '5 (##structure-length _%self132331%_))
              (begin
                (##unchecked-structure-set! _%self132331%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self132331%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self132331%_
                 _%super132347%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self132331%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self132331%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self132331%_
                     '5
                     (##vector-length _%self132331%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self131403132352%_)
        (let ((_%super132354%_ '#f))
          (gx#top-context:::init!__% _%self131403132352%_ _%super132354%_))))
    (define gx#top-context:::init!
      (lambda _g132560_
        (let ((_g132559_ (##length _g132560_)))
          (cond ((##fx= _g132559_ 1)
                 (apply gx#top-context:::init!__0 _g132560_))
                ((##fx= _g132559_ 2)
                 (apply gx#top-context:::init!__% _g132560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g132560_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self131404132043%_ _%bindings132045%_)
        (let* ((_%self132047%_ _%self131404132043%_)
               (_%self132049%_ _%self132047%_))
          (for-each
           (lambda (_%bind132059%_)
             (let* ((_%bind132060132067%_ _%bind132059%_)
                    (_%E132062132071%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind132060132067%_
                              '([id . rest]))
                       '#!void))
                    (_%K132063132180%_
                     (lambda (_%rest132074%_ _%id132075%_)
                       (gx#core-context-put!
                        _%self132049%_
                        _%id132075%_
                        (##structure
                         gx#syntax-binding::t
                         _%id132075%_
                         _%id132075%_
                         '#f
                         (let* ((_%rest132076132087%_ _%rest132074%_)
                                (_%E132078132091%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest132076132087%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K132079132156%_
                                 (lambda (_%compiler132094%_
                                          _%expander132095%_
                                          _%key132096%_)
                                   ((let* ((_%key132097132110%_ _%key132096%_)
                                           (_%E132103132114%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key132097132110%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K132108132150%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K132107132143%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K132106132135%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K132105132127%_
                                             (lambda () gx#make-special-form))
                                            (_%K132104132119%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match132102132122%_
                                                (lambda ()
                                                  (if (##eq? _%key132097132110%_
                                                             'expr:)
                                                      (_%K132104132119%_)
                                                      (_%E132103132114%_))))
                                               (_%try-match132101132130%_
                                                (lambda ()
                                                  (if (##eq? _%key132097132110%_
                                                             'special:)
                                                      (_%K132105132127%_)
                                                      (_%try-match132102132122%_))))
                                               (_%try-match132100132138%_
                                                (lambda ()
                                                  (if (##eq? _%key132097132110%_
                                                             'define:)
                                                      (_%K132106132135%_)
                                                      (_%try-match132101132130%_))))
                                               (_%try-match132099132146%_
                                                (lambda ()
                                                  (if (##eq? _%key132097132110%_
                                                             'module:)
                                                      (_%K132107132143%_)
                                                      (_%try-match132100132138%_)))))
                                          (if (##eq? _%key132097132110%_ 'top:)
                                              (_%K132108132150%_)
                                              (_%try-match132099132146%_)))))
                                    _%expander132095%_
                                    _%id132075%_
                                    (let ((_%$e132153%_ _%compiler132094%_))
                                      (if _%$e132153%_
                                          _%$e132153%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest132076132087%_)
                               (let ((_%hd132080132159%_
                                      (##car _%rest132076132087%_))
                                     (_%tl132081132161%_
                                      (##cdr _%rest132076132087%_)))
                                 (let ((_%key132164%_ _%hd132080132159%_))
                                   (if (pair? _%tl132081132161%_)
                                       (let ((_%hd132082132166%_
                                              (##car _%tl132081132161%_))
                                             (_%tl132083132168%_
                                              (##cdr _%tl132081132161%_)))
                                         (let ((_%expander132171%_
                                                _%hd132082132166%_))
                                           (if (pair? _%tl132083132168%_)
                                               (let ((_%hd132084132173%_
                                                      (##car _%tl132083132168%_))
                                                     (_%tl132085132175%_
                                                      (##cdr _%tl132083132168%_)))
                                                 (let ((_%compiler132178%_
                                                        _%hd132084132173%_))
                                                   (if (null? _%tl132085132175%_)
                                                       (_%K132079132156%_
                                                        _%compiler132178%_
                                                        _%expander132171%_
                                                        _%key132164%_)
                                                       (_%E132078132091%_))))
                                               (_%E132078132091%_))))
                                       (_%E132078132091%_))))
                               (_%E132078132091%_))))))))
               (if (pair? _%bind132060132067%_)
                   (let ((_%hd132064132183%_ (##car _%bind132060132067%_))
                         (_%tl132065132185%_ (##cdr _%bind132060132067%_)))
                     (let* ((_%id132188%_ _%hd132064132183%_)
                            (_%rest132190%_ _%tl132065132185%_))
                       (_%K132063132180%_ _%rest132190%_ _%id132188%_)))
                   (_%E132062132071%_))))
           _%bindings132045%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self131404132195%_)
        (let ((_%bindings132197%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self131404132195%_
           _%bindings132197%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g132562_
        (let ((_g132561_ (##length _g132562_)))
          (cond ((##fx= _g132561_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g132562_))
                ((##fx= _g132561_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g132562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g132562_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self131405131802%_ _%bindings131804%_)
        (let* ((_%self131806%_ _%self131405131802%_)
               (_%self131808%_ _%self131806%_))
          (for-each
           (lambda (_%bind131818%_)
             (let* ((_%bind131819131826%_ _%bind131818%_)
                    (_%E131821131830%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind131819131826%_
                              '([id . rest]))
                       '#!void))
                    (_%K131822131898%_
                     (lambda (_%rest131833%_ _%id131834%_)
                       (gx#core-context-put!
                        _%self131808%_
                        _%id131834%_
                        (##structure
                         gx#syntax-binding::t
                         _%id131834%_
                         _%id131834%_
                         '#f
                         (let* ((_%rest131835131850%_ _%rest131833%_)
                                (_%E131839131854%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest131835131850%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K131844131883%_
                                  (lambda (_%core-id131881%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id131881%_)))
                                 (_%K131841131868%_
                                  (lambda (_%proc131866%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc131866%_)))
                                 (_%K131840131859%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id131834%_))))
                             (let ((_%try-match131838131862%_
                                    (lambda ()
                                      (if (null? _%rest131835131850%_)
                                          (_%K131840131859%_)
                                          (_%E131839131854%_)))))
                               (if (pair? _%rest131835131850%_)
                                   (let ((_%tl131846131888%_
                                          (##cdr _%rest131835131850%_))
                                         (_%hd131845131886%_
                                          (##car _%rest131835131850%_)))
                                     (if (##eq? _%hd131845131886%_ '=>)
                                         (if (pair? _%tl131846131888%_)
                                             (let ((_%tl131848131893%_
                                                    (##cdr _%tl131846131888%_))
                                                   (_%hd131847131891%_
                                                    (##car _%tl131846131888%_)))
                                               (if (null? _%tl131848131893%_)
                                                   (let ((_%core-id131896%_
                                                          _%hd131847131891%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id131896%_))
                                                   (_%E131839131854%_)))
                                             (if (null? _%tl131846131888%_)
                                                 (let ((_%proc131876%_
                                                        _%hd131845131886%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc131876%_))
                                                 (_%E131839131854%_)))
                                         (if (null? _%tl131846131888%_)
                                             (let ((_%proc131876%_
                                                    _%hd131845131886%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc131876%_))
                                             (_%E131839131854%_))))
                                   (_%try-match131838131862%_))))))))))
               (if (pair? _%bind131819131826%_)
                   (let ((_%hd131823131901%_ (##car _%bind131819131826%_))
                         (_%tl131824131903%_ (##cdr _%bind131819131826%_)))
                     (let* ((_%id131906%_ _%hd131823131901%_)
                            (_%rest131908%_ _%tl131824131903%_))
                       (_%K131822131898%_ _%rest131908%_ _%id131906%_)))
                   (_%E131821131830%_))))
           _%bindings131804%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self131405131913%_)
        (let ((_%bindings131915%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self131405131913%_
           _%bindings131915%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g132564_
        (let ((_g132563_ (##length _g132564_)))
          (cond ((##fx= _g132563_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g132564_))
                ((##fx= _g132563_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g132564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g132564_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self131406131532%_)
        (let* ((_%self131535%_ _%self131406131532%_)
               (_%self131537%_ _%self131535%_))
          (letrec ((_%linux-variant?131547%_
                    (lambda (_%sys-type131647%_)
                      (let* ((_%g131648131656%_
                              (__string-split
                               (symbol->string _%sys-type131647%_)
                               '#\-))
                             (_%else131650131664%_ (lambda () '#f))
                             (_%K131652131669%_
                              (lambda (_%rest131667%_)
                                (not (null? _%rest131667%_)))))
                        (if (pair? _%g131648131656%_)
                            (let ((_%hd131653131672%_
                                   (##car _%g131648131656%_))
                                  (_%tl131654131674%_
                                   (##cdr _%g131648131656%_)))
                              (if (equal? _%hd131653131672%_ '"linux")
                                  (let ((_%rest131677%_ _%tl131654131674%_))
                                    (_%K131652131669%_ _%rest131677%_))
                                  (_%else131650131664%_)))
                            (_%else131650131664%_)))))
                   (_%bsd-variant131548%_
                    (lambda (_%sys-type131606%_)
                      (let ((_%sys-type-str131608%_
                             (symbol->string _%sys-type131606%_)))
                        (let _%lp131610%_ ((_%rest131612%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest131613131621%_ _%rest131612%_)
                                 (_%else131615131629%_ (lambda () '#f))
                                 (_%K131617131635%_
                                  (lambda (_%rest131632%_ _%sys131633%_)
                                    (if (string-prefix?
                                         _%sys131633%_
                                         _%sys-type-str131608%_)
                                        _%sys131633%_
                                        (_%lp131610%_ _%rest131632%_)))))
                            (if (pair? _%rest131613131621%_)
                                (let ((_%hd131618131638%_
                                       (##car _%rest131613131621%_))
                                      (_%tl131619131640%_
                                       (##cdr _%rest131613131621%_)))
                                  (let* ((_%sys131643%_ _%hd131618131638%_)
                                         (_%rest131645%_ _%tl131619131640%_))
                                    (_%K131617131635%_
                                     _%rest131645%_
                                     _%sys131643%_)))
                                (_%else131615131629%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self131537%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self131537%_)
            (let* ((_%g131549131561%_ (system-type))
                   (_%else131551131569%_ (lambda () '#!void))
                   (_%K131553131582%_
                    (lambda (_%sys-type131572%_
                             _%sys-vendor131573%_
                             _%sys-cpu131574%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu131574%_
                       '#f
                       '0
                       _%self131537%_)
                      (gx#core-bind-feature!__%
                       _%sys-type131572%_
                       '#f
                       '0
                       _%self131537%_)
                      (if (_%linux-variant?131547%_ _%sys-type131572%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self131537%_)
                          (let ((_%$e131577%_
                                 (_%bsd-variant131548%_ _%sys-type131572%_)))
                            (if _%$e131577%_
                                ((lambda (_%sys-prefix131580%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self131537%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix131580%_)
                                    '#f
                                    '0
                                    _%self131537%_))
                                 _%$e131577%_)
                                '#!void))))))
              (if (pair? _%g131549131561%_)
                  (let ((_%hd131554131585%_ (##car _%g131549131561%_))
                        (_%tl131555131587%_ (##cdr _%g131549131561%_)))
                    (let ((_%sys-cpu131590%_ _%hd131554131585%_))
                      (if (pair? _%tl131555131587%_)
                          (let ((_%hd131556131592%_ (##car _%tl131555131587%_))
                                (_%tl131557131594%_
                                 (##cdr _%tl131555131587%_)))
                            (let ((_%sys-vendor131597%_ _%hd131556131592%_))
                              (if (pair? _%tl131557131594%_)
                                  (let ((_%hd131558131599%_
                                         (##car _%tl131557131594%_))
                                        (_%tl131559131601%_
                                         (##cdr _%tl131557131594%_)))
                                    (let ((_%sys-type131604%_
                                           _%hd131558131599%_))
                                      (if (null? _%tl131559131601%_)
                                          (_%K131553131582%_
                                           _%sys-type131604%_
                                           _%sys-vendor131597%_
                                           _%sys-cpu131590%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self131537%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
