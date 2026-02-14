(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1771104509)
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
      (lambda (_%self188465%_ _%bind?188466%_)
        (let ((_%self188469%_ _%self188465%_))
          (if (##fx< '2 (##structure-length _%self188469%_))
              (begin
                (##unchecked-structure-set! _%self188469%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self188469%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self188469%_
                     '2
                     (##structure-length _%self188469%_)))
          (if _%bind?188466%_
              (begin
                (let ((__method188533
                       (__method-ref
                        _%self188469%_
                        'bind-core-syntax-expanders!)))
                  (if __method188533
                      (__method188533 _%self188469%_)
                      (begin
                        (error '"Missing method"
                               _%self188469%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method188534
                       (__method-ref
                        _%self188469%_
                        'bind-core-macro-expanders!)))
                  (if __method188534
                      (__method188534 _%self188469%_)
                      (begin
                        (error '"Missing method"
                               _%self188469%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method188535
                       (__method-ref _%self188469%_ 'bind-core-features!)))
                  (if __method188535
                      (__method188535 _%self188469%_)
                      (begin
                        (error '"Missing method"
                               _%self188469%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self188483%_)
        (let ((_%bind?188485%_ '#t))
          (gx#root-context:::init!__% _%self188483%_ _%bind?188485%_))))
    (define gx#root-context:::init!
      (lambda _g188539_
        (let ((_g188540_ (##length _g188539_)))
          (cond ((##fx= _g188540_ 1)
                 (apply gx#root-context:::init!__0 _g188539_))
                ((##fx= _g188540_ 2)
                 (apply gx#root-context:::init!__% _g188539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g188539_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass188489 __method-table188490)
        (let ((__bind-core-macro-expanders!188491
               (__make-promise
                (lambda ()
                  (let ((__method188494
                         (symbolic-table-ref
                          __method-table188490
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method188494
                        __method188494
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!188492
               (__make-promise
                (lambda ()
                  (let ((__method188495
                         (symbolic-table-ref
                          __method-table188490
                          'bind-core-features!
                          '#f)))
                    (if __method188495
                        __method188495
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!188493
               (__make-promise
                (lambda ()
                  (let ((__method188496
                         (symbolic-table-ref
                          __method-table188490
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method188496
                        __method188496
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_%opt-lambda188463188480%_
                 (lambda (_%self188465%_ _%bind?188466%_)
                   (let ((_%self188469%_ _%self188465%_))
                     (if (##fx< '2 (##structure-length _%self188469%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self188469%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self188469%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self188469%_
                                '2
                                (##structure-length _%self188469%_)))
                     (if _%bind?188466%_
                         (begin
                           ((force __bind-core-syntax-expanders!188493)
                            _%self188469%_)
                           ((force __bind-core-macro-expanders!188491)
                            _%self188469%_)
                           ((force __bind-core-features!188492)
                            _%self188469%_))
                         '#!void)))))
            (lambda _g188541_
              (let ((_g188542_ (##length _g188541_)))
                (cond ((##fx= _g188542_ 1)
                       (apply (lambda (_%self188483%_)
                                (let ((_%bind?188485%_ '#t))
                                  (_%opt-lambda188463188480%_
                                   _%self188483%_
                                   _%bind?188485%_)))
                              _g188541_))
                      ((##fx= _g188542_ 2)
                       (apply _%opt-lambda188463188480%_ _g188541_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g188541_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self188310%_ _%super188311%_)
        (let* ((_%self188314%_ _%self188310%_)
               (_%super188330%_
                (let ((_%$e188324%_ _%super188311%_))
                  (if _%$e188324%_
                      _%$e188324%_
                      (let ((_%$e188327%_ (gx#core-context-root__0)))
                        (if _%$e188327%_
                            _%$e188327%_
                            (let ((__obj188536
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj188536)
                              __obj188536)))))))
          (if (##fx< '5 (##structure-length _%self188314%_))
              (begin
                (##unchecked-structure-set! _%self188314%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self188314%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self188314%_
                 _%super188330%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self188314%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self188314%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self188314%_
                     '5
                     (##structure-length _%self188314%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self188335%_)
        (let ((_%super188337%_ '#f))
          (gx#top-context:::init!__% _%self188335%_ _%super188337%_))))
    (define gx#top-context:::init!
      (lambda _g188543_
        (let ((_g188544_ (##length _g188543_)))
          (cond ((##fx= _g188544_ 1)
                 (apply gx#top-context:::init!__0 _g188543_))
                ((##fx= _g188544_ 2)
                 (apply gx#top-context:::init!__% _g188543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g188543_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self188031%_ _%bindings188032%_)
        (let ((_%self188035%_ _%self188031%_))
          (for-each
           (lambda (_%bind188045%_)
             (let* ((_%bind188046188053%_ _%bind188045%_)
                    (_%E188048188056%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind188046188053%_
                              '([id . rest]))
                       '#!void))
                    (_%K188049188165%_
                     (lambda (_%rest188059%_ _%id188060%_)
                       (gx#core-context-put!
                        _%self188035%_
                        _%id188060%_
                        (let ((__obj188537
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj188537
                           _%id188060%_
                           _%id188060%_
                           '#f
                           (let* ((_%rest188061188072%_ _%rest188059%_)
                                  (_%E188063188076%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest188061188072%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K188064188141%_
                                   (lambda (_%compiler188079%_
                                            _%expander188080%_
                                            _%key188081%_)
                                     ((let* ((_%key188082188095%_
                                              _%key188081%_)
                                             (_%E188088188099%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key188082188095%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K188093188135%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K188092188128%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K188091188120%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K188090188112%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K188089188104%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match188087188107%_
                                                  (lambda ()
                                                    (if (##eq? _%key188082188095%_
                                                               'expr:)
                                                        (_%K188089188104%_)
                                                        (_%E188088188099%_))))
                                                 (_%try-match188086188115%_
                                                  (lambda ()
                                                    (if (##eq? _%key188082188095%_
                                                               'special:)
                                                        (_%K188090188112%_)
                                                        (_%try-match188087188107%_))))
                                                 (_%try-match188085188123%_
                                                  (lambda ()
                                                    (if (##eq? _%key188082188095%_
                                                               'define:)
                                                        (_%K188091188120%_)
                                                        (_%try-match188086188115%_))))
                                                 (_%try-match188084188131%_
                                                  (lambda ()
                                                    (if (##eq? _%key188082188095%_
                                                               'module:)
                                                        (_%K188092188128%_)
                                                        (_%try-match188085188123%_)))))
                                            (if (##eq? _%key188082188095%_
                                                       'top:)
                                                (_%K188093188135%_)
                                                (_%try-match188084188131%_)))))
                                      _%expander188080%_
                                      _%id188060%_
                                      (let ((_%$e188138%_ _%compiler188079%_))
                                        (if _%$e188138%_
                                            _%$e188138%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest188061188072%_)
                                 (let ((_%hd188065188144%_
                                        (##car _%rest188061188072%_))
                                       (_%tl188066188146%_
                                        (##cdr _%rest188061188072%_)))
                                   (let ((_%key188149%_ _%hd188065188144%_))
                                     (if (pair? _%tl188066188146%_)
                                         (let ((_%hd188067188151%_
                                                (##car _%tl188066188146%_))
                                               (_%tl188068188153%_
                                                (##cdr _%tl188066188146%_)))
                                           (let ((_%expander188156%_
                                                  _%hd188067188151%_))
                                             (if (pair? _%tl188068188153%_)
                                                 (let ((_%hd188069188158%_
                                                        (##car _%tl188068188153%_))
                                                       (_%tl188070188160%_
                                                        (##cdr _%tl188068188153%_)))
                                                   (let ((_%compiler188163%_
                                                          _%hd188069188158%_))
                                                     (if (null? _%tl188070188160%_)
                                                         (_%K188064188141%_
                                                          _%compiler188163%_
                                                          _%expander188156%_
                                                          _%key188149%_)
                                                         (_%E188063188076%_))))
                                                 (_%E188063188076%_))))
                                         (_%E188063188076%_))))
                                 (_%E188063188076%_))))
                          __obj188537)))))
               (if (pair? _%bind188046188053%_)
                   (let ((_%hd188050188168%_ (##car _%bind188046188053%_))
                         (_%tl188051188170%_ (##cdr _%bind188046188053%_)))
                     (let* ((_%id188173%_ _%hd188050188168%_)
                            (_%rest188175%_ _%tl188051188170%_))
                       (_%K188049188165%_ _%rest188175%_ _%id188173%_)))
                   (_%E188048188056%_))))
           _%bindings188032%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self188180%_)
        (let ((_%bindings188182%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self188180%_
           _%bindings188182%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g188545_
        (let ((_g188546_ (##length _g188545_)))
          (cond ((##fx= _g188546_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g188545_))
                ((##fx= _g188546_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g188545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g188545_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self187793%_ _%bindings187794%_)
        (let ((_%self187797%_ _%self187793%_))
          (for-each
           (lambda (_%bind187807%_)
             (let* ((_%bind187808187815%_ _%bind187807%_)
                    (_%E187810187818%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind187808187815%_
                              '([id . rest]))
                       '#!void))
                    (_%K187811187886%_
                     (lambda (_%rest187821%_ _%id187822%_)
                       (gx#core-context-put!
                        _%self187797%_
                        _%id187822%_
                        (let ((__obj188538
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj188538
                           _%id187822%_
                           _%id187822%_
                           '#f
                           (let* ((_%rest187823187838%_ _%rest187821%_)
                                  (_%E187827187842%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest187823187838%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K187832187871%_
                                    (lambda (_%core-id187869%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id187869%_)))
                                   (_%K187829187856%_
                                    (lambda (_%proc187854%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc187854%_)))
                                   (_%K187828187847%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id187822%_))))
                               (let ((_%try-match187826187850%_
                                      (lambda ()
                                        (if (null? _%rest187823187838%_)
                                            (_%K187828187847%_)
                                            (_%E187827187842%_)))))
                                 (if (pair? _%rest187823187838%_)
                                     (let ((_%tl187834187876%_
                                            (##cdr _%rest187823187838%_))
                                           (_%hd187833187874%_
                                            (##car _%rest187823187838%_)))
                                       (if (##eq? _%hd187833187874%_ '=>)
                                           (if (pair? _%tl187834187876%_)
                                               (let ((_%tl187836187881%_
                                                      (##cdr _%tl187834187876%_))
                                                     (_%hd187835187879%_
                                                      (##car _%tl187834187876%_)))
                                                 (if (null? _%tl187836187881%_)
                                                     (let ((_%core-id187884%_
                                                            _%hd187835187879%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id187884%_))
                                                     (_%E187827187842%_)))
                                               (if (null? _%tl187834187876%_)
                                                   (let ((_%proc187864%_
                                                          _%hd187833187874%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc187864%_))
                                                   (_%E187827187842%_)))
                                           (if (null? _%tl187834187876%_)
                                               (let ((_%proc187864%_
                                                      _%hd187833187874%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc187864%_))
                                               (_%E187827187842%_))))
                                     (_%try-match187826187850%_))))))
                          __obj188538)))))
               (if (pair? _%bind187808187815%_)
                   (let ((_%hd187812187889%_ (##car _%bind187808187815%_))
                         (_%tl187813187891%_ (##cdr _%bind187808187815%_)))
                     (let* ((_%id187894%_ _%hd187812187889%_)
                            (_%rest187896%_ _%tl187813187891%_))
                       (_%K187811187886%_ _%rest187896%_ _%id187894%_)))
                   (_%E187810187818%_))))
           _%bindings187794%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self187901%_)
        (let ((_%bindings187903%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self187901%_
           _%bindings187903%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g188547_
        (let ((_g188548_ (##length _g188547_)))
          (cond ((##fx= _g188548_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g188547_))
                ((##fx= _g188548_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g188547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g188547_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self187524%_)
        (let ((_%self187527%_ _%self187524%_))
          (letrec ((_%linux-variant?187538%_
                    (lambda (_%sys-type187638%_)
                      (let* ((_%g187639187647%_
                              (__string-split
                               (symbol->string _%sys-type187638%_)
                               '#\-))
                             (_%else187641187655%_ (lambda () '#f))
                             (_%K187643187660%_
                              (lambda (_%rest187658%_)
                                (not (null? _%rest187658%_)))))
                        (if (pair? _%g187639187647%_)
                            (let ((_%hd187644187663%_
                                   (##car _%g187639187647%_))
                                  (_%tl187645187665%_
                                   (##cdr _%g187639187647%_)))
                              (if (equal? _%hd187644187663%_ '"linux")
                                  (let ((_%rest187668%_ _%tl187645187665%_))
                                    (_%K187643187660%_ _%rest187668%_))
                                  (_%else187641187655%_)))
                            (_%else187641187655%_)))))
                   (_%bsd-variant187539%_
                    (lambda (_%sys-type187597%_)
                      (let ((_%sys-type-str187599%_
                             (symbol->string _%sys-type187597%_)))
                        (let _%lp187601%_ ((_%rest187603%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest187604187612%_ _%rest187603%_)
                                 (_%else187606187620%_ (lambda () '#f))
                                 (_%K187608187626%_
                                  (lambda (_%rest187623%_ _%sys187624%_)
                                    (if (string-prefix?
                                         _%sys187624%_
                                         _%sys-type-str187599%_)
                                        _%sys187624%_
                                        (_%lp187601%_ _%rest187623%_)))))
                            (if (pair? _%rest187604187612%_)
                                (let ((_%hd187609187629%_
                                       (##car _%rest187604187612%_))
                                      (_%tl187610187631%_
                                       (##cdr _%rest187604187612%_)))
                                  (let* ((_%sys187634%_ _%hd187609187629%_)
                                         (_%rest187636%_ _%tl187610187631%_))
                                    (_%K187608187626%_
                                     _%rest187636%_
                                     _%sys187634%_)))
                                (_%else187606187620%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self187527%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self187527%_)
            (let* ((_%g187540187552%_ (system-type))
                   (_%else187542187560%_ (lambda () '#!void))
                   (_%K187544187573%_
                    (lambda (_%sys-type187563%_
                             _%sys-vendor187564%_
                             _%sys-cpu187565%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu187565%_
                       '#f
                       '0
                       _%self187527%_)
                      (gx#core-bind-feature!__%
                       _%sys-type187563%_
                       '#f
                       '0
                       _%self187527%_)
                      (if (_%linux-variant?187538%_ _%sys-type187563%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self187527%_)
                          (let ((_%$e187568%_
                                 (_%bsd-variant187539%_ _%sys-type187563%_)))
                            (if _%$e187568%_
                                ((lambda (_%sys-prefix187571%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self187527%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix187571%_)
                                    '#f
                                    '0
                                    _%self187527%_))
                                 _%$e187568%_)
                                '#!void))))))
              (if (pair? _%g187540187552%_)
                  (let ((_%hd187545187576%_ (##car _%g187540187552%_))
                        (_%tl187546187578%_ (##cdr _%g187540187552%_)))
                    (let ((_%sys-cpu187581%_ _%hd187545187576%_))
                      (if (pair? _%tl187546187578%_)
                          (let ((_%hd187547187583%_ (##car _%tl187546187578%_))
                                (_%tl187548187585%_
                                 (##cdr _%tl187546187578%_)))
                            (let ((_%sys-vendor187588%_ _%hd187547187583%_))
                              (if (pair? _%tl187548187585%_)
                                  (let ((_%hd187549187590%_
                                         (##car _%tl187548187585%_))
                                        (_%tl187550187592%_
                                         (##cdr _%tl187548187585%_)))
                                    (let ((_%sys-type187595%_
                                           _%hd187549187590%_))
                                      (if (null? _%tl187550187592%_)
                                          (_%K187544187573%_
                                           _%sys-type187595%_
                                           _%sys-vendor187588%_
                                           _%sys-cpu187581%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self187527%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
