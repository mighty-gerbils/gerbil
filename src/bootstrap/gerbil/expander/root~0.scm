(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1771101402)
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
      (lambda (_%self188361%_ _%bind?188362%_)
        (let ((_%self188365%_ _%self188361%_))
          (if (##fx< '2 (##structure-length _%self188365%_))
              (begin
                (##unchecked-structure-set! _%self188365%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self188365%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self188365%_
                     '2
                     (##structure-length _%self188365%_)))
          (if _%bind?188362%_
              (begin
                (let ((__method188429
                       (__method-ref
                        _%self188365%_
                        'bind-core-syntax-expanders!)))
                  (if __method188429
                      (__method188429 _%self188365%_)
                      (begin
                        (error '"Missing method"
                               _%self188365%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method188430
                       (__method-ref
                        _%self188365%_
                        'bind-core-macro-expanders!)))
                  (if __method188430
                      (__method188430 _%self188365%_)
                      (begin
                        (error '"Missing method"
                               _%self188365%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method188431
                       (__method-ref _%self188365%_ 'bind-core-features!)))
                  (if __method188431
                      (__method188431 _%self188365%_)
                      (begin
                        (error '"Missing method"
                               _%self188365%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self188379%_)
        (let ((_%bind?188381%_ '#t))
          (gx#root-context:::init!__% _%self188379%_ _%bind?188381%_))))
    (define gx#root-context:::init!
      (lambda _g188435_
        (let ((_g188436_ (##length _g188435_)))
          (cond ((##fx= _g188436_ 1)
                 (apply gx#root-context:::init!__0 _g188435_))
                ((##fx= _g188436_ 2)
                 (apply gx#root-context:::init!__% _g188435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g188435_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass188385 __method-table188386)
        (let ((__bind-core-syntax-expanders!188387
               (__make-promise
                (lambda ()
                  (let ((__method188390
                         (symbolic-table-ref
                          __method-table188386
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method188390
                        __method188390
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!188388
               (__make-promise
                (lambda ()
                  (let ((__method188391
                         (symbolic-table-ref
                          __method-table188386
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method188391
                        __method188391
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!188389
               (__make-promise
                (lambda ()
                  (let ((__method188392
                         (symbolic-table-ref
                          __method-table188386
                          'bind-core-features!
                          '#f)))
                    (if __method188392
                        __method188392
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda188359188376%_
                 (lambda (_%self188361%_ _%bind?188362%_)
                   (let ((_%self188365%_ _%self188361%_))
                     (if (##fx< '2 (##structure-length _%self188365%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self188365%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self188365%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self188365%_
                                '2
                                (##structure-length _%self188365%_)))
                     (if _%bind?188362%_
                         (begin
                           ((force __bind-core-syntax-expanders!188387)
                            _%self188365%_)
                           ((force __bind-core-macro-expanders!188388)
                            _%self188365%_)
                           ((force __bind-core-features!188389)
                            _%self188365%_))
                         '#!void)))))
            (lambda _g188437_
              (let ((_g188438_ (##length _g188437_)))
                (cond ((##fx= _g188438_ 1)
                       (apply (lambda (_%self188379%_)
                                (let ((_%bind?188381%_ '#t))
                                  (_%opt-lambda188359188376%_
                                   _%self188379%_
                                   _%bind?188381%_)))
                              _g188437_))
                      ((##fx= _g188438_ 2)
                       (apply _%opt-lambda188359188376%_ _g188437_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g188437_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self188206%_ _%super188207%_)
        (let* ((_%self188210%_ _%self188206%_)
               (_%super188226%_
                (let ((_%$e188220%_ _%super188207%_))
                  (if _%$e188220%_
                      _%$e188220%_
                      (let ((_%$e188223%_ (gx#core-context-root__0)))
                        (if _%$e188223%_
                            _%$e188223%_
                            (let ((__obj188432
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj188432)
                              __obj188432)))))))
          (if (##fx< '5 (##structure-length _%self188210%_))
              (begin
                (##unchecked-structure-set! _%self188210%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self188210%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self188210%_
                 _%super188226%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self188210%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self188210%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self188210%_
                     '5
                     (##structure-length _%self188210%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self188231%_)
        (let ((_%super188233%_ '#f))
          (gx#top-context:::init!__% _%self188231%_ _%super188233%_))))
    (define gx#top-context:::init!
      (lambda _g188439_
        (let ((_g188440_ (##length _g188439_)))
          (cond ((##fx= _g188440_ 1)
                 (apply gx#top-context:::init!__0 _g188439_))
                ((##fx= _g188440_ 2)
                 (apply gx#top-context:::init!__% _g188439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g188439_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self187927%_ _%bindings187928%_)
        (let ((_%self187931%_ _%self187927%_))
          (for-each
           (lambda (_%bind187941%_)
             (let* ((_%bind187942187949%_ _%bind187941%_)
                    (_%E187944187952%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind187942187949%_
                              '([id . rest]))
                       '#!void))
                    (_%K187945188061%_
                     (lambda (_%rest187955%_ _%id187956%_)
                       (gx#core-context-put!
                        _%self187931%_
                        _%id187956%_
                        (let ((__obj188433
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj188433
                           _%id187956%_
                           _%id187956%_
                           '#f
                           (let* ((_%rest187957187968%_ _%rest187955%_)
                                  (_%E187959187972%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest187957187968%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K187960188037%_
                                   (lambda (_%compiler187975%_
                                            _%expander187976%_
                                            _%key187977%_)
                                     ((let* ((_%key187978187991%_
                                              _%key187977%_)
                                             (_%E187984187995%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key187978187991%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K187989188031%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K187988188024%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K187987188016%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K187986188008%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K187985188000%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match187983188003%_
                                                  (lambda ()
                                                    (if (##eq? _%key187978187991%_
                                                               'expr:)
                                                        (_%K187985188000%_)
                                                        (_%E187984187995%_))))
                                                 (_%try-match187982188011%_
                                                  (lambda ()
                                                    (if (##eq? _%key187978187991%_
                                                               'special:)
                                                        (_%K187986188008%_)
                                                        (_%try-match187983188003%_))))
                                                 (_%try-match187981188019%_
                                                  (lambda ()
                                                    (if (##eq? _%key187978187991%_
                                                               'define:)
                                                        (_%K187987188016%_)
                                                        (_%try-match187982188011%_))))
                                                 (_%try-match187980188027%_
                                                  (lambda ()
                                                    (if (##eq? _%key187978187991%_
                                                               'module:)
                                                        (_%K187988188024%_)
                                                        (_%try-match187981188019%_)))))
                                            (if (##eq? _%key187978187991%_
                                                       'top:)
                                                (_%K187989188031%_)
                                                (_%try-match187980188027%_)))))
                                      _%expander187976%_
                                      _%id187956%_
                                      (let ((_%$e188034%_ _%compiler187975%_))
                                        (if _%$e188034%_
                                            _%$e188034%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest187957187968%_)
                                 (let ((_%hd187961188040%_
                                        (##car _%rest187957187968%_))
                                       (_%tl187962188042%_
                                        (##cdr _%rest187957187968%_)))
                                   (let ((_%key188045%_ _%hd187961188040%_))
                                     (if (pair? _%tl187962188042%_)
                                         (let ((_%hd187963188047%_
                                                (##car _%tl187962188042%_))
                                               (_%tl187964188049%_
                                                (##cdr _%tl187962188042%_)))
                                           (let ((_%expander188052%_
                                                  _%hd187963188047%_))
                                             (if (pair? _%tl187964188049%_)
                                                 (let ((_%hd187965188054%_
                                                        (##car _%tl187964188049%_))
                                                       (_%tl187966188056%_
                                                        (##cdr _%tl187964188049%_)))
                                                   (let ((_%compiler188059%_
                                                          _%hd187965188054%_))
                                                     (if (null? _%tl187966188056%_)
                                                         (_%K187960188037%_
                                                          _%compiler188059%_
                                                          _%expander188052%_
                                                          _%key188045%_)
                                                         (_%E187959187972%_))))
                                                 (_%E187959187972%_))))
                                         (_%E187959187972%_))))
                                 (_%E187959187972%_))))
                          __obj188433)))))
               (if (pair? _%bind187942187949%_)
                   (let ((_%hd187946188064%_ (##car _%bind187942187949%_))
                         (_%tl187947188066%_ (##cdr _%bind187942187949%_)))
                     (let* ((_%id188069%_ _%hd187946188064%_)
                            (_%rest188071%_ _%tl187947188066%_))
                       (_%K187945188061%_ _%rest188071%_ _%id188069%_)))
                   (_%E187944187952%_))))
           _%bindings187928%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self188076%_)
        (let ((_%bindings188078%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self188076%_
           _%bindings188078%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g188441_
        (let ((_g188442_ (##length _g188441_)))
          (cond ((##fx= _g188442_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g188441_))
                ((##fx= _g188442_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g188441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g188441_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self187689%_ _%bindings187690%_)
        (let ((_%self187693%_ _%self187689%_))
          (for-each
           (lambda (_%bind187703%_)
             (let* ((_%bind187704187711%_ _%bind187703%_)
                    (_%E187706187714%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind187704187711%_
                              '([id . rest]))
                       '#!void))
                    (_%K187707187782%_
                     (lambda (_%rest187717%_ _%id187718%_)
                       (gx#core-context-put!
                        _%self187693%_
                        _%id187718%_
                        (let ((__obj188434
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj188434
                           _%id187718%_
                           _%id187718%_
                           '#f
                           (let* ((_%rest187719187734%_ _%rest187717%_)
                                  (_%E187723187738%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest187719187734%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K187728187767%_
                                    (lambda (_%core-id187765%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id187765%_)))
                                   (_%K187725187752%_
                                    (lambda (_%proc187750%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc187750%_)))
                                   (_%K187724187743%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id187718%_))))
                               (let ((_%try-match187722187746%_
                                      (lambda ()
                                        (if (null? _%rest187719187734%_)
                                            (_%K187724187743%_)
                                            (_%E187723187738%_)))))
                                 (if (pair? _%rest187719187734%_)
                                     (let ((_%tl187730187772%_
                                            (##cdr _%rest187719187734%_))
                                           (_%hd187729187770%_
                                            (##car _%rest187719187734%_)))
                                       (if (##eq? _%hd187729187770%_ '=>)
                                           (if (pair? _%tl187730187772%_)
                                               (let ((_%tl187732187777%_
                                                      (##cdr _%tl187730187772%_))
                                                     (_%hd187731187775%_
                                                      (##car _%tl187730187772%_)))
                                                 (if (null? _%tl187732187777%_)
                                                     (let ((_%core-id187780%_
                                                            _%hd187731187775%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id187780%_))
                                                     (_%E187723187738%_)))
                                               (if (null? _%tl187730187772%_)
                                                   (let ((_%proc187760%_
                                                          _%hd187729187770%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc187760%_))
                                                   (_%E187723187738%_)))
                                           (if (null? _%tl187730187772%_)
                                               (let ((_%proc187760%_
                                                      _%hd187729187770%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc187760%_))
                                               (_%E187723187738%_))))
                                     (_%try-match187722187746%_))))))
                          __obj188434)))))
               (if (pair? _%bind187704187711%_)
                   (let ((_%hd187708187785%_ (##car _%bind187704187711%_))
                         (_%tl187709187787%_ (##cdr _%bind187704187711%_)))
                     (let* ((_%id187790%_ _%hd187708187785%_)
                            (_%rest187792%_ _%tl187709187787%_))
                       (_%K187707187782%_ _%rest187792%_ _%id187790%_)))
                   (_%E187706187714%_))))
           _%bindings187690%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self187797%_)
        (let ((_%bindings187799%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self187797%_
           _%bindings187799%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g188443_
        (let ((_g188444_ (##length _g188443_)))
          (cond ((##fx= _g188444_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g188443_))
                ((##fx= _g188444_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g188443_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g188443_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self187420%_)
        (let ((_%self187423%_ _%self187420%_))
          (letrec ((_%linux-variant?187434%_
                    (lambda (_%sys-type187534%_)
                      (let* ((_%g187535187543%_
                              (__string-split
                               (symbol->string _%sys-type187534%_)
                               '#\-))
                             (_%else187537187551%_ (lambda () '#f))
                             (_%K187539187556%_
                              (lambda (_%rest187554%_)
                                (not (null? _%rest187554%_)))))
                        (if (pair? _%g187535187543%_)
                            (let ((_%hd187540187559%_
                                   (##car _%g187535187543%_))
                                  (_%tl187541187561%_
                                   (##cdr _%g187535187543%_)))
                              (if (equal? _%hd187540187559%_ '"linux")
                                  (let ((_%rest187564%_ _%tl187541187561%_))
                                    (_%K187539187556%_ _%rest187564%_))
                                  (_%else187537187551%_)))
                            (_%else187537187551%_)))))
                   (_%bsd-variant187435%_
                    (lambda (_%sys-type187493%_)
                      (let ((_%sys-type-str187495%_
                             (symbol->string _%sys-type187493%_)))
                        (let _%lp187497%_ ((_%rest187499%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest187500187508%_ _%rest187499%_)
                                 (_%else187502187516%_ (lambda () '#f))
                                 (_%K187504187522%_
                                  (lambda (_%rest187519%_ _%sys187520%_)
                                    (if (string-prefix?
                                         _%sys187520%_
                                         _%sys-type-str187495%_)
                                        _%sys187520%_
                                        (_%lp187497%_ _%rest187519%_)))))
                            (if (pair? _%rest187500187508%_)
                                (let ((_%hd187505187525%_
                                       (##car _%rest187500187508%_))
                                      (_%tl187506187527%_
                                       (##cdr _%rest187500187508%_)))
                                  (let* ((_%sys187530%_ _%hd187505187525%_)
                                         (_%rest187532%_ _%tl187506187527%_))
                                    (_%K187504187522%_
                                     _%rest187532%_
                                     _%sys187530%_)))
                                (_%else187502187516%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self187423%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self187423%_)
            (let* ((_%g187436187448%_ (system-type))
                   (_%else187438187456%_ (lambda () '#!void))
                   (_%K187440187469%_
                    (lambda (_%sys-type187459%_
                             _%sys-vendor187460%_
                             _%sys-cpu187461%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu187461%_
                       '#f
                       '0
                       _%self187423%_)
                      (gx#core-bind-feature!__%
                       _%sys-type187459%_
                       '#f
                       '0
                       _%self187423%_)
                      (if (_%linux-variant?187434%_ _%sys-type187459%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self187423%_)
                          (let ((_%$e187464%_
                                 (_%bsd-variant187435%_ _%sys-type187459%_)))
                            (if _%$e187464%_
                                ((lambda (_%sys-prefix187467%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self187423%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix187467%_)
                                    '#f
                                    '0
                                    _%self187423%_))
                                 _%$e187464%_)
                                '#!void))))))
              (if (pair? _%g187436187448%_)
                  (let ((_%hd187441187472%_ (##car _%g187436187448%_))
                        (_%tl187442187474%_ (##cdr _%g187436187448%_)))
                    (let ((_%sys-cpu187477%_ _%hd187441187472%_))
                      (if (pair? _%tl187442187474%_)
                          (let ((_%hd187443187479%_ (##car _%tl187442187474%_))
                                (_%tl187444187481%_
                                 (##cdr _%tl187442187474%_)))
                            (let ((_%sys-vendor187484%_ _%hd187443187479%_))
                              (if (pair? _%tl187444187481%_)
                                  (let ((_%hd187445187486%_
                                         (##car _%tl187444187481%_))
                                        (_%tl187446187488%_
                                         (##cdr _%tl187444187481%_)))
                                    (let ((_%sys-type187491%_
                                           _%hd187445187486%_))
                                      (if (null? _%tl187446187488%_)
                                          (_%K187440187469%_
                                           _%sys-type187491%_
                                           _%sys-vendor187484%_
                                           _%sys-cpu187477%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self187423%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
