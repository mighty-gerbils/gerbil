(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1713044316)
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
      (lambda (_%self128802129882%_ _%bind?129884%_)
        (let* ((_%self129886%_ _%self128802129882%_)
               (_%self129888%_ _%self129886%_))
          (if (##fx< '2 (##structure-length _%self129888%_))
              (begin
                (##unchecked-structure-set! _%self129888%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self129888%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129888%_
                     '2
                     (##vector-length _%self129888%_)))
          (if _%bind?129884%_
              (begin
                (let ((__method129951
                       (__method-ref
                        _%self129888%_
                        'bind-core-syntax-expanders!)))
                  (if __method129951
                      (__method129951 _%self129888%_)
                      (begin
                        (error '"Missing method"
                               _%self129888%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method129952
                       (__method-ref
                        _%self129888%_
                        'bind-core-macro-expanders!)))
                  (if __method129952
                      (__method129952 _%self129888%_)
                      (begin
                        (error '"Missing method"
                               _%self129888%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method129953
                       (__method-ref _%self129888%_ 'bind-core-features!)))
                  (if __method129953
                      (__method129953 _%self129888%_)
                      (begin
                        (error '"Missing method"
                               _%self129888%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self128802129901%_)
        (let ((_%bind?129903%_ '#t))
          (gx#root-context:::init!__% _%self128802129901%_ _%bind?129903%_))))
    (define gx#root-context:::init!
      (lambda _g129956_
        (let ((_g129955_ (##length _g129956_)))
          (cond ((##fx= _g129955_ 1)
                 (apply gx#root-context:::init!__0 _g129956_))
                ((##fx= _g129955_ 2)
                 (apply gx#root-context:::init!__% _g129956_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g129956_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass129907 __method-table129908)
        (let ((__bind-core-features!129909
               (__make-promise
                (lambda ()
                  (let ((__method129912
                         (symbolic-table-ref
                          __method-table129908
                          'bind-core-features!
                          '#f)))
                    (if __method129912
                        __method129912
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!129910
               (__make-promise
                (lambda ()
                  (let ((__method129913
                         (symbolic-table-ref
                          __method-table129908
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method129913
                        __method129913
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!129911
               (__make-promise
                (lambda ()
                  (let ((__method129914
                         (symbolic-table-ref
                          __method-table129908
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method129914
                        __method129914
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda129880129898%_
                 (lambda (_%self128802129882%_ _%bind?129884%_)
                   (let* ((_%self129886%_ _%self128802129882%_)
                          (_%self129888%_ _%self129886%_))
                     (if (##fx< '2 (##structure-length _%self129888%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self129888%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self129888%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self129888%_
                                '2
                                (##vector-length _%self129888%_)))
                     (if _%bind?129884%_
                         (begin
                           ((force __bind-core-syntax-expanders!129910)
                            _%self129888%_)
                           ((force __bind-core-macro-expanders!129911)
                            _%self129888%_)
                           ((force __bind-core-features!129909)
                            _%self129888%_))
                         '#!void)))))
            (lambda _g129958_
              (let ((_g129957_ (##length _g129958_)))
                (cond ((##fx= _g129957_ 1)
                       (apply (lambda (_%self128802129901%_)
                                (let ((_%bind?129903%_ '#t))
                                  (_%opt-lambda129880129898%_
                                   _%self128802129901%_
                                   _%bind?129903%_)))
                              _g129958_))
                      ((##fx= _g129957_ 2)
                       (apply _%opt-lambda129880129898%_ _g129958_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g129958_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self128803129725%_ _%super129727%_)
        (let* ((_%self129729%_ _%self128803129725%_)
               (_%self129731%_ _%self129729%_)
               (_%super129747%_
                (let ((_%$e129741%_ _%super129727%_))
                  (if _%$e129741%_
                      _%$e129741%_
                      (let ((_%$e129744%_ (gx#core-context-root__0)))
                        (if _%$e129744%_
                            _%$e129744%_
                            (let ((__obj129954
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj129954)
                              __obj129954)))))))
          (if (##fx< '5 (##structure-length _%self129731%_))
              (begin
                (##unchecked-structure-set! _%self129731%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self129731%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129731%_
                 _%super129747%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129731%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self129731%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129731%_
                     '5
                     (##vector-length _%self129731%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self128803129752%_)
        (let ((_%super129754%_ '#f))
          (gx#top-context:::init!__% _%self128803129752%_ _%super129754%_))))
    (define gx#top-context:::init!
      (lambda _g129960_
        (let ((_g129959_ (##length _g129960_)))
          (cond ((##fx= _g129959_ 1)
                 (apply gx#top-context:::init!__0 _g129960_))
                ((##fx= _g129959_ 2)
                 (apply gx#top-context:::init!__% _g129960_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g129960_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self128804129443%_ _%bindings129445%_)
        (let* ((_%self129447%_ _%self128804129443%_)
               (_%self129449%_ _%self129447%_))
          (for-each
           (lambda (_%bind129459%_)
             (let* ((_%bind129460129467%_ _%bind129459%_)
                    (_%E129462129471%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind129460129467%_
                              '([id . rest]))
                       '#!void))
                    (_%K129463129580%_
                     (lambda (_%rest129474%_ _%id129475%_)
                       (gx#core-context-put!
                        _%self129449%_
                        _%id129475%_
                        (##structure
                         gx#syntax-binding::t
                         _%id129475%_
                         _%id129475%_
                         '#f
                         (let* ((_%rest129476129487%_ _%rest129474%_)
                                (_%E129478129491%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest129476129487%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K129479129556%_
                                 (lambda (_%compiler129494%_
                                          _%expander129495%_
                                          _%key129496%_)
                                   ((let* ((_%key129497129510%_ _%key129496%_)
                                           (_%E129503129514%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key129497129510%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K129508129550%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K129507129543%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K129506129535%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K129505129527%_
                                             (lambda () gx#make-special-form))
                                            (_%K129504129519%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match129502129522%_
                                                (lambda ()
                                                  (if (##eq? _%key129497129510%_
                                                             'expr:)
                                                      (_%K129504129519%_)
                                                      (_%E129503129514%_))))
                                               (_%try-match129501129530%_
                                                (lambda ()
                                                  (if (##eq? _%key129497129510%_
                                                             'special:)
                                                      (_%K129505129527%_)
                                                      (_%try-match129502129522%_))))
                                               (_%try-match129500129538%_
                                                (lambda ()
                                                  (if (##eq? _%key129497129510%_
                                                             'define:)
                                                      (_%K129506129535%_)
                                                      (_%try-match129501129530%_))))
                                               (_%try-match129499129546%_
                                                (lambda ()
                                                  (if (##eq? _%key129497129510%_
                                                             'module:)
                                                      (_%K129507129543%_)
                                                      (_%try-match129500129538%_)))))
                                          (if (##eq? _%key129497129510%_ 'top:)
                                              (_%K129508129550%_)
                                              (_%try-match129499129546%_)))))
                                    _%expander129495%_
                                    _%id129475%_
                                    (let ((_%$e129553%_ _%compiler129494%_))
                                      (if _%$e129553%_
                                          _%$e129553%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest129476129487%_)
                               (let ((_%hd129480129559%_
                                      (##car _%rest129476129487%_))
                                     (_%tl129481129561%_
                                      (##cdr _%rest129476129487%_)))
                                 (let ((_%key129564%_ _%hd129480129559%_))
                                   (if (##pair? _%tl129481129561%_)
                                       (let ((_%hd129482129566%_
                                              (##car _%tl129481129561%_))
                                             (_%tl129483129568%_
                                              (##cdr _%tl129481129561%_)))
                                         (let ((_%expander129571%_
                                                _%hd129482129566%_))
                                           (if (##pair? _%tl129483129568%_)
                                               (let ((_%hd129484129573%_
                                                      (##car _%tl129483129568%_))
                                                     (_%tl129485129575%_
                                                      (##cdr _%tl129483129568%_)))
                                                 (let ((_%compiler129578%_
                                                        _%hd129484129573%_))
                                                   (if (##null? _%tl129485129575%_)
                                                       (_%K129479129556%_
                                                        _%compiler129578%_
                                                        _%expander129571%_
                                                        _%key129564%_)
                                                       (_%E129478129491%_))))
                                               (_%E129478129491%_))))
                                       (_%E129478129491%_))))
                               (_%E129478129491%_))))))))
               (if (##pair? _%bind129460129467%_)
                   (let ((_%hd129464129583%_ (##car _%bind129460129467%_))
                         (_%tl129465129585%_ (##cdr _%bind129460129467%_)))
                     (let* ((_%id129588%_ _%hd129464129583%_)
                            (_%rest129590%_ _%tl129465129585%_))
                       (_%K129463129580%_ _%rest129590%_ _%id129588%_)))
                   (_%E129462129471%_))))
           _%bindings129445%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self128804129595%_)
        (let ((_%bindings129597%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self128804129595%_
           _%bindings129597%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g129962_
        (let ((_g129961_ (##length _g129962_)))
          (cond ((##fx= _g129961_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g129962_))
                ((##fx= _g129961_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g129962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g129962_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self128805129202%_ _%bindings129204%_)
        (let* ((_%self129206%_ _%self128805129202%_)
               (_%self129208%_ _%self129206%_))
          (for-each
           (lambda (_%bind129218%_)
             (let* ((_%bind129219129226%_ _%bind129218%_)
                    (_%E129221129230%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind129219129226%_
                              '([id . rest]))
                       '#!void))
                    (_%K129222129298%_
                     (lambda (_%rest129233%_ _%id129234%_)
                       (gx#core-context-put!
                        _%self129208%_
                        _%id129234%_
                        (##structure
                         gx#syntax-binding::t
                         _%id129234%_
                         _%id129234%_
                         '#f
                         (let* ((_%rest129235129250%_ _%rest129233%_)
                                (_%E129239129254%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest129235129250%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K129244129283%_
                                  (lambda (_%core-id129281%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id129281%_)))
                                 (_%K129241129268%_
                                  (lambda (_%proc129266%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc129266%_)))
                                 (_%K129240129259%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id129234%_))))
                             (let ((_%try-match129238129262%_
                                    (lambda ()
                                      (if (##null? _%rest129235129250%_)
                                          (_%K129240129259%_)
                                          (_%E129239129254%_)))))
                               (if (##pair? _%rest129235129250%_)
                                   (let ((_%tl129246129288%_
                                          (##cdr _%rest129235129250%_))
                                         (_%hd129245129286%_
                                          (##car _%rest129235129250%_)))
                                     (if (##eq? _%hd129245129286%_ '=>)
                                         (if (##pair? _%tl129246129288%_)
                                             (let ((_%tl129248129293%_
                                                    (##cdr _%tl129246129288%_))
                                                   (_%hd129247129291%_
                                                    (##car _%tl129246129288%_)))
                                               (if (##null? _%tl129248129293%_)
                                                   (let ((_%core-id129296%_
                                                          _%hd129247129291%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id129296%_))
                                                   (_%E129239129254%_)))
                                             (if (##null? _%tl129246129288%_)
                                                 (let ((_%proc129276%_
                                                        _%hd129245129286%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc129276%_))
                                                 (_%E129239129254%_)))
                                         (if (##null? _%tl129246129288%_)
                                             (let ((_%proc129276%_
                                                    _%hd129245129286%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc129276%_))
                                             (_%E129239129254%_))))
                                   (_%try-match129238129262%_))))))))))
               (if (##pair? _%bind129219129226%_)
                   (let ((_%hd129223129301%_ (##car _%bind129219129226%_))
                         (_%tl129224129303%_ (##cdr _%bind129219129226%_)))
                     (let* ((_%id129306%_ _%hd129223129301%_)
                            (_%rest129308%_ _%tl129224129303%_))
                       (_%K129222129298%_ _%rest129308%_ _%id129306%_)))
                   (_%E129221129230%_))))
           _%bindings129204%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self128805129313%_)
        (let ((_%bindings129315%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self128805129313%_
           _%bindings129315%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g129964_
        (let ((_g129963_ (##length _g129964_)))
          (cond ((##fx= _g129963_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g129964_))
                ((##fx= _g129963_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g129964_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g129964_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self128806128932%_)
        (let* ((_%self128935%_ _%self128806128932%_)
               (_%self128937%_ _%self128935%_))
          (letrec ((_%linux-variant?128947%_
                    (lambda (_%sys-type129047%_)
                      (let* ((_%g129048129056%_
                              (__string-split
                               (symbol->string _%sys-type129047%_)
                               '#\-))
                             (_%else129050129064%_ (lambda () '#f))
                             (_%K129052129069%_
                              (lambda (_%rest129067%_)
                                (not (null? _%rest129067%_)))))
                        (if (##pair? _%g129048129056%_)
                            (let ((_%hd129053129072%_
                                   (##car _%g129048129056%_))
                                  (_%tl129054129074%_
                                   (##cdr _%g129048129056%_)))
                              (if (equal? _%hd129053129072%_ '"linux")
                                  (let ((_%rest129077%_ _%tl129054129074%_))
                                    (_%K129052129069%_ _%rest129077%_))
                                  (_%else129050129064%_)))
                            (_%else129050129064%_)))))
                   (_%bsd-variant128948%_
                    (lambda (_%sys-type129006%_)
                      (let ((_%sys-type-str129008%_
                             (symbol->string _%sys-type129006%_)))
                        (let _%lp129010%_ ((_%rest129012%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest129013129021%_ _%rest129012%_)
                                 (_%else129015129029%_ (lambda () '#f))
                                 (_%K129017129035%_
                                  (lambda (_%rest129032%_ _%sys129033%_)
                                    (if (string-prefix?
                                         _%sys129033%_
                                         _%sys-type-str129008%_)
                                        _%sys129033%_
                                        (_%lp129010%_ _%rest129032%_)))))
                            (if (##pair? _%rest129013129021%_)
                                (let ((_%hd129018129038%_
                                       (##car _%rest129013129021%_))
                                      (_%tl129019129040%_
                                       (##cdr _%rest129013129021%_)))
                                  (let* ((_%sys129043%_ _%hd129018129038%_)
                                         (_%rest129045%_ _%tl129019129040%_))
                                    (_%K129017129035%_
                                     _%rest129045%_
                                     _%sys129043%_)))
                                (_%else129015129029%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self128937%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self128937%_)
            (let* ((_%g128949128961%_ (system-type))
                   (_%else128951128969%_ (lambda () '#!void))
                   (_%K128953128982%_
                    (lambda (_%sys-type128972%_
                             _%sys-vendor128973%_
                             _%sys-cpu128974%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu128974%_
                       '#f
                       '0
                       _%self128937%_)
                      (gx#core-bind-feature!__%
                       _%sys-type128972%_
                       '#f
                       '0
                       _%self128937%_)
                      (if (_%linux-variant?128947%_ _%sys-type128972%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self128937%_)
                          (let ((_%$e128977%_
                                 (_%bsd-variant128948%_ _%sys-type128972%_)))
                            (if _%$e128977%_
                                ((lambda (_%sys-prefix128980%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self128937%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix128980%_)
                                    '#f
                                    '0
                                    _%self128937%_))
                                 _%$e128977%_)
                                '#!void))))))
              (if (##pair? _%g128949128961%_)
                  (let ((_%hd128954128985%_ (##car _%g128949128961%_))
                        (_%tl128955128987%_ (##cdr _%g128949128961%_)))
                    (let ((_%sys-cpu128990%_ _%hd128954128985%_))
                      (if (##pair? _%tl128955128987%_)
                          (let ((_%hd128956128992%_ (##car _%tl128955128987%_))
                                (_%tl128957128994%_
                                 (##cdr _%tl128955128987%_)))
                            (let ((_%sys-vendor128997%_ _%hd128956128992%_))
                              (if (##pair? _%tl128957128994%_)
                                  (let ((_%hd128958128999%_
                                         (##car _%tl128957128994%_))
                                        (_%tl128959129001%_
                                         (##cdr _%tl128957128994%_)))
                                    (let ((_%sys-type129004%_
                                           _%hd128958128999%_))
                                      (if (##null? _%tl128959129001%_)
                                          (_%K128953128982%_
                                           _%sys-type129004%_
                                           _%sys-vendor128997%_
                                           _%sys-cpu128990%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self128937%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
