(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1773012986)
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
      (lambda (_%self189013%_ _%bind?189014%_)
        (let ((_%self189017%_ _%self189013%_))
          (if (##fx< '2 (##structure-length _%self189017%_))
              (begin
                (##unchecked-structure-set! _%self189017%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self189017%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self189017%_
                     '2
                     (##structure-length _%self189017%_)))
          (if _%bind?189014%_
              (begin
                (let ((__method189081
                       (__method-ref
                        _%self189017%_
                        'bind-core-syntax-expanders!)))
                  (if __method189081
                      (__method189081 _%self189017%_)
                      (begin
                        (error '"Missing method"
                               _%self189017%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method189082
                       (__method-ref
                        _%self189017%_
                        'bind-core-macro-expanders!)))
                  (if __method189082
                      (__method189082 _%self189017%_)
                      (begin
                        (error '"Missing method"
                               _%self189017%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method189083
                       (__method-ref _%self189017%_ 'bind-core-features!)))
                  (if __method189083
                      (__method189083 _%self189017%_)
                      (begin
                        (error '"Missing method"
                               _%self189017%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self189031%_)
        (let ((_%bind?189033%_ '#t))
          (gx#root-context:::init!__% _%self189031%_ _%bind?189033%_))))
    (define gx#root-context:::init!
      (lambda _g189087_
        (let ((_g189088_ (##length _g189087_)))
          (cond ((##fx= _g189088_ 1)
                 (apply gx#root-context:::init!__0 _g189087_))
                ((##fx= _g189088_ 2)
                 (apply gx#root-context:::init!__% _g189087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g189087_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass189037 __method-table189038)
        (let ((__bind-core-macro-expanders!189039
               (__make-promise
                (lambda ()
                  (let ((__method189042
                         (symbolic-table-ref
                          __method-table189038
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method189042
                        __method189042
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!189040
               (__make-promise
                (lambda ()
                  (let ((__method189043
                         (symbolic-table-ref
                          __method-table189038
                          'bind-core-features!
                          '#f)))
                    (if __method189043
                        __method189043
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!189041
               (__make-promise
                (lambda ()
                  (let ((__method189044
                         (symbolic-table-ref
                          __method-table189038
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method189044
                        __method189044
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_%opt-lambda189011189028%_
                 (lambda (_%self189013%_ _%bind?189014%_)
                   (let ((_%self189017%_ _%self189013%_))
                     (if (##fx< '2 (##structure-length _%self189017%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self189017%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self189017%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self189017%_
                                '2
                                (##structure-length _%self189017%_)))
                     (if _%bind?189014%_
                         (begin
                           ((force __bind-core-syntax-expanders!189041)
                            _%self189017%_)
                           ((force __bind-core-macro-expanders!189039)
                            _%self189017%_)
                           ((force __bind-core-features!189040)
                            _%self189017%_))
                         '#!void)))))
            (lambda _g189089_
              (let ((_g189090_ (##length _g189089_)))
                (cond ((##fx= _g189090_ 1)
                       (apply (lambda (_%self189031%_)
                                (let ((_%bind?189033%_ '#t))
                                  (_%opt-lambda189011189028%_
                                   _%self189031%_
                                   _%bind?189033%_)))
                              _g189089_))
                      ((##fx= _g189090_ 2)
                       (apply _%opt-lambda189011189028%_ _g189089_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g189089_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self188858%_ _%super188859%_)
        (let* ((_%self188862%_ _%self188858%_)
               (_%super188878%_
                (let ((_%$e188872%_ _%super188859%_))
                  (if _%$e188872%_
                      _%$e188872%_
                      (let ((_%$e188875%_ (gx#core-context-root__0)))
                        (if _%$e188875%_
                            _%$e188875%_
                            (let ((__obj189084
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj189084)
                              __obj189084)))))))
          (if (##fx< '5 (##structure-length _%self188862%_))
              (begin
                (##unchecked-structure-set! _%self188862%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self188862%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self188862%_
                 _%super188878%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self188862%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self188862%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self188862%_
                     '5
                     (##structure-length _%self188862%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self188883%_)
        (let ((_%super188885%_ '#f))
          (gx#top-context:::init!__% _%self188883%_ _%super188885%_))))
    (define gx#top-context:::init!
      (lambda _g189091_
        (let ((_g189092_ (##length _g189091_)))
          (cond ((##fx= _g189092_ 1)
                 (apply gx#top-context:::init!__0 _g189091_))
                ((##fx= _g189092_ 2)
                 (apply gx#top-context:::init!__% _g189091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g189091_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self188579%_ _%bindings188580%_)
        (let ((_%self188583%_ _%self188579%_))
          (for-each
           (lambda (_%bind188593%_)
             (let* ((_%bind188594188601%_ _%bind188593%_)
                    (_%E188596188604%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind188594188601%_
                              '([id . rest]))
                       '#!void))
                    (_%K188597188713%_
                     (lambda (_%rest188607%_ _%id188608%_)
                       (gx#core-context-put!
                        _%self188583%_
                        _%id188608%_
                        (let ((__obj189085
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj189085
                           _%id188608%_
                           _%id188608%_
                           '#f
                           (let* ((_%rest188609188620%_ _%rest188607%_)
                                  (_%E188611188624%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest188609188620%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K188612188689%_
                                   (lambda (_%compiler188627%_
                                            _%expander188628%_
                                            _%key188629%_)
                                     ((let* ((_%key188630188643%_
                                              _%key188629%_)
                                             (_%E188636188647%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key188630188643%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K188641188683%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K188640188676%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K188639188668%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K188638188660%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K188637188652%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match188635188655%_
                                                  (lambda ()
                                                    (if (##eq? _%key188630188643%_
                                                               'expr:)
                                                        (_%K188637188652%_)
                                                        (_%E188636188647%_))))
                                                 (_%try-match188634188663%_
                                                  (lambda ()
                                                    (if (##eq? _%key188630188643%_
                                                               'special:)
                                                        (_%K188638188660%_)
                                                        (_%try-match188635188655%_))))
                                                 (_%try-match188633188671%_
                                                  (lambda ()
                                                    (if (##eq? _%key188630188643%_
                                                               'define:)
                                                        (_%K188639188668%_)
                                                        (_%try-match188634188663%_))))
                                                 (_%try-match188632188679%_
                                                  (lambda ()
                                                    (if (##eq? _%key188630188643%_
                                                               'module:)
                                                        (_%K188640188676%_)
                                                        (_%try-match188633188671%_)))))
                                            (if (##eq? _%key188630188643%_
                                                       'top:)
                                                (_%K188641188683%_)
                                                (_%try-match188632188679%_)))))
                                      _%expander188628%_
                                      _%id188608%_
                                      (let ((_%$e188686%_ _%compiler188627%_))
                                        (if _%$e188686%_
                                            _%$e188686%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest188609188620%_)
                                 (let ((_%hd188613188692%_
                                        (##car _%rest188609188620%_))
                                       (_%tl188614188694%_
                                        (##cdr _%rest188609188620%_)))
                                   (let ((_%key188697%_ _%hd188613188692%_))
                                     (if (pair? _%tl188614188694%_)
                                         (let ((_%hd188615188699%_
                                                (##car _%tl188614188694%_))
                                               (_%tl188616188701%_
                                                (##cdr _%tl188614188694%_)))
                                           (let ((_%expander188704%_
                                                  _%hd188615188699%_))
                                             (if (pair? _%tl188616188701%_)
                                                 (let ((_%hd188617188706%_
                                                        (##car _%tl188616188701%_))
                                                       (_%tl188618188708%_
                                                        (##cdr _%tl188616188701%_)))
                                                   (let ((_%compiler188711%_
                                                          _%hd188617188706%_))
                                                     (if (null? _%tl188618188708%_)
                                                         (_%K188612188689%_
                                                          _%compiler188711%_
                                                          _%expander188704%_
                                                          _%key188697%_)
                                                         (_%E188611188624%_))))
                                                 (_%E188611188624%_))))
                                         (_%E188611188624%_))))
                                 (_%E188611188624%_))))
                          __obj189085)))))
               (if (pair? _%bind188594188601%_)
                   (let ((_%hd188598188716%_ (##car _%bind188594188601%_))
                         (_%tl188599188718%_ (##cdr _%bind188594188601%_)))
                     (let* ((_%id188721%_ _%hd188598188716%_)
                            (_%rest188723%_ _%tl188599188718%_))
                       (_%K188597188713%_ _%rest188723%_ _%id188721%_)))
                   (_%E188596188604%_))))
           _%bindings188580%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self188728%_)
        (let ((_%bindings188730%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self188728%_
           _%bindings188730%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g189093_
        (let ((_g189094_ (##length _g189093_)))
          (cond ((##fx= _g189094_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g189093_))
                ((##fx= _g189094_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g189093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g189093_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self188341%_ _%bindings188342%_)
        (let ((_%self188345%_ _%self188341%_))
          (for-each
           (lambda (_%bind188355%_)
             (let* ((_%bind188356188363%_ _%bind188355%_)
                    (_%E188358188366%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind188356188363%_
                              '([id . rest]))
                       '#!void))
                    (_%K188359188434%_
                     (lambda (_%rest188369%_ _%id188370%_)
                       (gx#core-context-put!
                        _%self188345%_
                        _%id188370%_
                        (let ((__obj189086
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj189086
                           _%id188370%_
                           _%id188370%_
                           '#f
                           (let* ((_%rest188371188386%_ _%rest188369%_)
                                  (_%E188375188390%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest188371188386%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K188380188419%_
                                    (lambda (_%core-id188417%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id188417%_)))
                                   (_%K188377188404%_
                                    (lambda (_%proc188402%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc188402%_)))
                                   (_%K188376188395%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id188370%_))))
                               (let ((_%try-match188374188398%_
                                      (lambda ()
                                        (if (null? _%rest188371188386%_)
                                            (_%K188376188395%_)
                                            (_%E188375188390%_)))))
                                 (if (pair? _%rest188371188386%_)
                                     (let ((_%tl188382188424%_
                                            (##cdr _%rest188371188386%_))
                                           (_%hd188381188422%_
                                            (##car _%rest188371188386%_)))
                                       (if (##eq? _%hd188381188422%_ '=>)
                                           (if (pair? _%tl188382188424%_)
                                               (let ((_%tl188384188429%_
                                                      (##cdr _%tl188382188424%_))
                                                     (_%hd188383188427%_
                                                      (##car _%tl188382188424%_)))
                                                 (if (null? _%tl188384188429%_)
                                                     (let ((_%core-id188432%_
                                                            _%hd188383188427%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id188432%_))
                                                     (_%E188375188390%_)))
                                               (if (null? _%tl188382188424%_)
                                                   (let ((_%proc188412%_
                                                          _%hd188381188422%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc188412%_))
                                                   (_%E188375188390%_)))
                                           (if (null? _%tl188382188424%_)
                                               (let ((_%proc188412%_
                                                      _%hd188381188422%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc188412%_))
                                               (_%E188375188390%_))))
                                     (_%try-match188374188398%_))))))
                          __obj189086)))))
               (if (pair? _%bind188356188363%_)
                   (let ((_%hd188360188437%_ (##car _%bind188356188363%_))
                         (_%tl188361188439%_ (##cdr _%bind188356188363%_)))
                     (let* ((_%id188442%_ _%hd188360188437%_)
                            (_%rest188444%_ _%tl188361188439%_))
                       (_%K188359188434%_ _%rest188444%_ _%id188442%_)))
                   (_%E188358188366%_))))
           _%bindings188342%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self188449%_)
        (let ((_%bindings188451%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self188449%_
           _%bindings188451%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g189095_
        (let ((_g189096_ (##length _g189095_)))
          (cond ((##fx= _g189096_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g189095_))
                ((##fx= _g189096_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g189095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g189095_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self188072%_)
        (let ((_%self188075%_ _%self188072%_))
          (letrec ((_%linux-variant?188086%_
                    (lambda (_%sys-type188186%_)
                      (let* ((_%g188187188195%_
                              (__string-split
                               (symbol->string _%sys-type188186%_)
                               '#\-))
                             (_%else188189188203%_ (lambda () '#f))
                             (_%K188191188208%_
                              (lambda (_%rest188206%_)
                                (not (null? _%rest188206%_)))))
                        (if (pair? _%g188187188195%_)
                            (let ((_%hd188192188211%_
                                   (##car _%g188187188195%_))
                                  (_%tl188193188213%_
                                   (##cdr _%g188187188195%_)))
                              (if (equal? _%hd188192188211%_ '"linux")
                                  (let ((_%rest188216%_ _%tl188193188213%_))
                                    (_%K188191188208%_ _%rest188216%_))
                                  (_%else188189188203%_)))
                            (_%else188189188203%_)))))
                   (_%bsd-variant188087%_
                    (lambda (_%sys-type188145%_)
                      (let ((_%sys-type-str188147%_
                             (symbol->string _%sys-type188145%_)))
                        (let _%lp188149%_ ((_%rest188151%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest188152188160%_ _%rest188151%_)
                                 (_%else188154188168%_ (lambda () '#f))
                                 (_%K188156188174%_
                                  (lambda (_%rest188171%_ _%sys188172%_)
                                    (if (string-prefix?
                                         _%sys188172%_
                                         _%sys-type-str188147%_)
                                        _%sys188172%_
                                        (_%lp188149%_ _%rest188171%_)))))
                            (if (pair? _%rest188152188160%_)
                                (let ((_%hd188157188177%_
                                       (##car _%rest188152188160%_))
                                      (_%tl188158188179%_
                                       (##cdr _%rest188152188160%_)))
                                  (let* ((_%sys188182%_ _%hd188157188177%_)
                                         (_%rest188184%_ _%tl188158188179%_))
                                    (_%K188156188174%_
                                     _%rest188184%_
                                     _%sys188182%_)))
                                (_%else188154188168%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self188075%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self188075%_)
            (let* ((_%g188088188100%_ (system-type))
                   (_%else188090188108%_ (lambda () '#!void))
                   (_%K188092188121%_
                    (lambda (_%sys-type188111%_
                             _%sys-vendor188112%_
                             _%sys-cpu188113%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu188113%_
                       '#f
                       '0
                       _%self188075%_)
                      (gx#core-bind-feature!__%
                       _%sys-type188111%_
                       '#f
                       '0
                       _%self188075%_)
                      (if (_%linux-variant?188086%_ _%sys-type188111%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self188075%_)
                          (let ((_%$e188116%_
                                 (_%bsd-variant188087%_ _%sys-type188111%_)))
                            (if _%$e188116%_
                                ((lambda (_%sys-prefix188119%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self188075%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix188119%_)
                                    '#f
                                    '0
                                    _%self188075%_))
                                 _%$e188116%_)
                                '#!void))))))
              (if (pair? _%g188088188100%_)
                  (let ((_%hd188093188124%_ (##car _%g188088188100%_))
                        (_%tl188094188126%_ (##cdr _%g188088188100%_)))
                    (let ((_%sys-cpu188129%_ _%hd188093188124%_))
                      (if (pair? _%tl188094188126%_)
                          (let ((_%hd188095188131%_ (##car _%tl188094188126%_))
                                (_%tl188096188133%_
                                 (##cdr _%tl188094188126%_)))
                            (let ((_%sys-vendor188136%_ _%hd188095188131%_))
                              (if (pair? _%tl188096188133%_)
                                  (let ((_%hd188097188138%_
                                         (##car _%tl188096188133%_))
                                        (_%tl188098188140%_
                                         (##cdr _%tl188096188133%_)))
                                    (let ((_%sys-type188143%_
                                           _%hd188097188138%_))
                                      (if (null? _%tl188098188140%_)
                                          (_%K188092188121%_
                                           _%sys-type188143%_
                                           _%sys-vendor188136%_
                                           _%sys-cpu188129%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self188075%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
