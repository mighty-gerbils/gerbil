(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712146027)
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
      (lambda (_%self127648%_ _%bind?127649%_)
        (let ((_%self127652%_ _%self127648%_))
          (if (##fx< '2 (##structure-length _%self127652%_))
              (begin
                (##unchecked-structure-set! _%self127652%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self127652%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self127652%_
                     '2
                     (##vector-length _%self127652%_)))
          (if _%bind?127649%_
              (begin
                (let ((__method127707
                       (__method-ref
                        _%self127652%_
                        'bind-core-syntax-expanders!)))
                  (if __method127707
                      (__method127707 _%self127652%_)
                      (error '"Missing method"
                             _%self127652%_
                             'bind-core-syntax-expanders!)))
                (let ((__method127708
                       (__method-ref
                        _%self127652%_
                        'bind-core-macro-expanders!)))
                  (if __method127708
                      (__method127708 _%self127652%_)
                      (error '"Missing method"
                             _%self127652%_
                             'bind-core-macro-expanders!)))
                (let ((__method127709
                       (__method-ref _%self127652%_ 'bind-core-features!)))
                  (if __method127709
                      (__method127709 _%self127652%_)
                      (error '"Missing method"
                             _%self127652%_
                             'bind-core-features!))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self127665%_)
        (let ((_%bind?127667%_ '#t))
          (gx#root-context:::init!__% _%self127665%_ _%bind?127667%_))))
    (define gx#root-context:::init!
      (lambda _g127712_
        (let ((_g127711_ (##length _g127712_)))
          (cond ((##fx= _g127711_ 1)
                 (apply (lambda (_%self127665%_)
                          (gx#root-context:::init!__0 _%self127665%_))
                        _g127712_))
                ((##fx= _g127711_ 2)
                 (apply (lambda (_%self127669%_ _%bind?127670%_)
                          (gx#root-context:::init!__%
                           _%self127669%_
                           _%bind?127670%_))
                        _g127712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g127712_))))))
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self127493%_ _%super127494%_)
        (let ()
          (let* ((_%self127497%_ _%self127493%_)
                 (_%super127513%_
                  (let ((_%$e127507%_ _%super127494%_))
                    (if _%$e127507%_
                        _%$e127507%_
                        (let ((_%$e127510%_ (gx#core-context-root__0)))
                          (if _%$e127510%_
                              _%$e127510%_
                              (let ((__obj127710
                                     (##structure gx#root-context::t '#f '#f)))
                                (gx#root-context:::init! __obj127710)
                                __obj127710)))))))
            (if (##fx< '5 (##structure-length _%self127497%_))
                (begin
                  (##unchecked-structure-set! _%self127497%_ 'top '1 '#f '#f)
                  (##unchecked-structure-set!
                   _%self127497%_
                   (make-hash-table-eq)
                   '2
                   '#f
                   '#f)
                  (##unchecked-structure-set!
                   _%self127497%_
                   _%super127513%_
                   '3
                   '#f
                   '#f)
                  (##unchecked-structure-set! _%self127497%_ '#f '4 '#f '#f)
                  (##unchecked-structure-set! _%self127497%_ '#f '5 '#f '#f)
                  '#!void)
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self127497%_
                       '5
                       (##vector-length _%self127497%_)))))))
    (define gx#top-context:::init!__0
      (lambda (_%self127518%_)
        (let ((_%super127520%_ '#f))
          (gx#top-context:::init!__% _%self127518%_ _%super127520%_))))
    (define gx#top-context:::init!
      (lambda _g127714_
        (let ((_g127713_ (##length _g127714_)))
          (cond ((##fx= _g127713_ 1)
                 (apply (lambda (_%self127518%_)
                          (gx#top-context:::init!__0 _%self127518%_))
                        _g127714_))
                ((##fx= _g127713_ 2)
                 (apply (lambda (_%self127522%_ _%super127523%_)
                          (gx#top-context:::init!__%
                           _%self127522%_
                           _%super127523%_))
                        _g127714_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g127714_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self127213%_ _%bindings127214%_)
        (let ((_%self127217%_ _%self127213%_))
          (for-each
           (lambda (_%bind127227%_)
             (let* ((_%bind127228127235%_ _%bind127227%_)
                    (_%E127230127239%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127228127235%_
                              '([id . rest]))
                       '#!void))
                    (_%K127231127348%_
                     (lambda (_%rest127242%_ _%id127243%_)
                       (gx#core-context-put!
                        _%self127217%_
                        _%id127243%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127243%_
                         _%id127243%_
                         '#f
                         (let* ((_%rest127244127255%_ _%rest127242%_)
                                (_%E127246127259%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127244127255%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K127247127324%_
                                 (lambda (_%compiler127262%_
                                          _%expander127263%_
                                          _%key127264%_)
                                   ((let* ((_%key127265127278%_ _%key127264%_)
                                           (_%E127271127282%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key127265127278%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K127276127318%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K127275127311%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K127274127303%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K127273127295%_
                                             (lambda () gx#make-special-form))
                                            (_%K127272127287%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match127270127290%_
                                                (lambda ()
                                                  (if (##eq? _%key127265127278%_
                                                             'expr:)
                                                      (_%K127272127287%_)
                                                      (_%E127271127282%_))))
                                               (_%try-match127269127298%_
                                                (lambda ()
                                                  (if (##eq? _%key127265127278%_
                                                             'special:)
                                                      (_%K127273127295%_)
                                                      (_%try-match127270127290%_))))
                                               (_%try-match127268127306%_
                                                (lambda ()
                                                  (if (##eq? _%key127265127278%_
                                                             'define:)
                                                      (_%K127274127303%_)
                                                      (_%try-match127269127298%_))))
                                               (_%try-match127267127314%_
                                                (lambda ()
                                                  (if (##eq? _%key127265127278%_
                                                             'module:)
                                                      (_%K127275127311%_)
                                                      (_%try-match127268127306%_)))))
                                          (if (##eq? _%key127265127278%_ 'top:)
                                              (_%K127276127318%_)
                                              (_%try-match127267127314%_)))))
                                    _%expander127263%_
                                    _%id127243%_
                                    (let ((_%$e127321%_ _%compiler127262%_))
                                      (if _%$e127321%_
                                          _%$e127321%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest127244127255%_)
                               (let ((_%hd127248127327%_
                                      (##car _%rest127244127255%_))
                                     (_%tl127249127329%_
                                      (##cdr _%rest127244127255%_)))
                                 (let ((_%key127332%_ _%hd127248127327%_))
                                   (if (##pair? _%tl127249127329%_)
                                       (let ((_%hd127250127334%_
                                              (##car _%tl127249127329%_))
                                             (_%tl127251127336%_
                                              (##cdr _%tl127249127329%_)))
                                         (let ((_%expander127339%_
                                                _%hd127250127334%_))
                                           (if (##pair? _%tl127251127336%_)
                                               (let ((_%hd127252127341%_
                                                      (##car _%tl127251127336%_))
                                                     (_%tl127253127343%_
                                                      (##cdr _%tl127251127336%_)))
                                                 (let ((_%compiler127346%_
                                                        _%hd127252127341%_))
                                                   (if (##null? _%tl127253127343%_)
                                                       (_%K127247127324%_
                                                        _%compiler127346%_
                                                        _%expander127339%_
                                                        _%key127332%_)
                                                       (_%E127246127259%_))))
                                               (_%E127246127259%_))))
                                       (_%E127246127259%_))))
                               (_%E127246127259%_))))))))
               (if (##pair? _%bind127228127235%_)
                   (let ((_%hd127232127351%_ (##car _%bind127228127235%_))
                         (_%tl127233127353%_ (##cdr _%bind127228127235%_)))
                     (let* ((_%id127356%_ _%hd127232127351%_)
                            (_%rest127358%_ _%tl127233127353%_))
                       (_%K127231127348%_ _%rest127358%_ _%id127356%_)))
                   (_%E127230127239%_))))
           _%bindings127214%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127363%_)
        (let ((_%bindings127365%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127363%_
           _%bindings127365%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g127716_
        (let ((_g127715_ (##length _g127716_)))
          (cond ((##fx= _g127715_ 1)
                 (apply (lambda (_%self127363%_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _%self127363%_))
                        _g127716_))
                ((##fx= _g127715_ 2)
                 (apply (lambda (_%self127367%_ _%bindings127368%_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _%self127367%_
                           _%bindings127368%_))
                        _g127716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g127716_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self126974%_ _%bindings126975%_)
        (let ((_%self126978%_ _%self126974%_))
          (for-each
           (lambda (_%bind126988%_)
             (let* ((_%bind126989126996%_ _%bind126988%_)
                    (_%E126991127000%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind126989126996%_
                              '([id . rest]))
                       '#!void))
                    (_%K126992127068%_
                     (lambda (_%rest127003%_ _%id127004%_)
                       (gx#core-context-put!
                        _%self126978%_
                        _%id127004%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127004%_
                         _%id127004%_
                         '#f
                         (let* ((_%rest127005127020%_ _%rest127003%_)
                                (_%E127009127024%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127005127020%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K127014127053%_
                                  (lambda (_%core-id127051%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id127051%_)))
                                 (_%K127011127038%_
                                  (lambda (_%proc127036%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc127036%_)))
                                 (_%K127010127029%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id127004%_))))
                             (let ((_%try-match127008127032%_
                                    (lambda ()
                                      (if (##null? _%rest127005127020%_)
                                          (_%K127010127029%_)
                                          (_%E127009127024%_)))))
                               (if (##pair? _%rest127005127020%_)
                                   (let ((_%tl127016127058%_
                                          (##cdr _%rest127005127020%_))
                                         (_%hd127015127056%_
                                          (##car _%rest127005127020%_)))
                                     (if (##eq? _%hd127015127056%_ '=>)
                                         (if (##pair? _%tl127016127058%_)
                                             (let ((_%tl127018127063%_
                                                    (##cdr _%tl127016127058%_))
                                                   (_%hd127017127061%_
                                                    (##car _%tl127016127058%_)))
                                               (if (##null? _%tl127018127063%_)
                                                   (let ((_%core-id127066%_
                                                          _%hd127017127061%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id127066%_))
                                                   (_%E127009127024%_)))
                                             (if (##null? _%tl127016127058%_)
                                                 (let ((_%proc127046%_
                                                        _%hd127015127056%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc127046%_))
                                                 (_%E127009127024%_)))
                                         (if (##null? _%tl127016127058%_)
                                             (let ((_%proc127046%_
                                                    _%hd127015127056%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc127046%_))
                                             (_%E127009127024%_))))
                                   (_%try-match127008127032%_))))))))))
               (if (##pair? _%bind126989126996%_)
                   (let ((_%hd126993127071%_ (##car _%bind126989126996%_))
                         (_%tl126994127073%_ (##cdr _%bind126989126996%_)))
                     (let* ((_%id127076%_ _%hd126993127071%_)
                            (_%rest127078%_ _%tl126994127073%_))
                       (_%K126992127068%_ _%rest127078%_ _%id127076%_)))
                   (_%E126991127000%_))))
           _%bindings126975%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self127083%_)
        (let ((_%bindings127085%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self127083%_
           _%bindings127085%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g127718_
        (let ((_g127717_ (##length _g127718_)))
          (cond ((##fx= _g127717_ 1)
                 (apply (lambda (_%self127083%_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _%self127083%_))
                        _g127718_))
                ((##fx= _g127717_ 2)
                 (apply (lambda (_%self127087%_ _%bindings127088%_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _%self127087%_
                           _%bindings127088%_))
                        _g127718_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g127718_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self126706%_)
        (let ((_%self126709%_ _%self126706%_))
          (letrec ((_%linux-variant?126719%_
                    (lambda (_%sys-type126819%_)
                      (let* ((_%g126820126828%_
                              (__string-split
                               (symbol->string _%sys-type126819%_)
                               '#\-))
                             (_%else126822126836%_ (lambda () '#f))
                             (_%K126824126841%_
                              (lambda (_%rest126839%_)
                                (not (null? _%rest126839%_)))))
                        (if (##pair? _%g126820126828%_)
                            (let ((_%hd126825126844%_
                                   (##car _%g126820126828%_))
                                  (_%tl126826126846%_
                                   (##cdr _%g126820126828%_)))
                              (if (equal? _%hd126825126844%_ '"linux")
                                  (let ((_%rest126849%_ _%tl126826126846%_))
                                    (_%K126824126841%_ _%rest126849%_))
                                  (_%else126822126836%_)))
                            (_%else126822126836%_)))))
                   (_%bsd-variant126720%_
                    (lambda (_%sys-type126778%_)
                      (let ((_%sys-type-str126780%_
                             (symbol->string _%sys-type126778%_)))
                        (let _%lp126782%_ ((_%rest126784%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest126785126793%_ _%rest126784%_)
                                 (_%else126787126801%_ (lambda () '#f))
                                 (_%K126789126807%_
                                  (lambda (_%rest126804%_ _%sys126805%_)
                                    (if (string-prefix?
                                         _%sys126805%_
                                         _%sys-type-str126780%_)
                                        _%sys126805%_
                                        (_%lp126782%_ _%rest126804%_)))))
                            (if (##pair? _%rest126785126793%_)
                                (let ((_%hd126790126810%_
                                       (##car _%rest126785126793%_))
                                      (_%tl126791126812%_
                                       (##cdr _%rest126785126793%_)))
                                  (let* ((_%sys126815%_ _%hd126790126810%_)
                                         (_%rest126817%_ _%tl126791126812%_))
                                    (_%K126789126807%_
                                     _%rest126817%_
                                     _%sys126815%_)))
                                (_%else126787126801%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self126709%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self126709%_)
            (let* ((_%g126721126733%_ (system-type))
                   (_%else126723126741%_ (lambda () '#!void))
                   (_%K126725126754%_
                    (lambda (_%sys-type126744%_
                             _%sys-vendor126745%_
                             _%sys-cpu126746%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu126746%_
                       '#f
                       '0
                       _%self126709%_)
                      (gx#core-bind-feature!__%
                       _%sys-type126744%_
                       '#f
                       '0
                       _%self126709%_)
                      (if (_%linux-variant?126719%_ _%sys-type126744%_)
                          (let ()
                            (gx#core-bind-feature!__%
                             (##string->symbol '"linux")
                             '#f
                             '0
                             _%self126709%_))
                          (let ((_%$e126749%_
                                 (_%bsd-variant126720%_ _%sys-type126744%_)))
                            (if _%$e126749%_
                                ((lambda (_%sys-prefix126752%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self126709%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix126752%_)
                                    '#f
                                    '0
                                    _%self126709%_))
                                 _%$e126749%_)
                                '#!void))))))
              (if (##pair? _%g126721126733%_)
                  (let ((_%hd126726126757%_ (##car _%g126721126733%_))
                        (_%tl126727126759%_ (##cdr _%g126721126733%_)))
                    (let ((_%sys-cpu126762%_ _%hd126726126757%_))
                      (if (##pair? _%tl126727126759%_)
                          (let ((_%hd126728126764%_ (##car _%tl126727126759%_))
                                (_%tl126729126766%_
                                 (##cdr _%tl126727126759%_)))
                            (let ((_%sys-vendor126769%_ _%hd126728126764%_))
                              (if (##pair? _%tl126729126766%_)
                                  (let ((_%hd126730126771%_
                                         (##car _%tl126729126766%_))
                                        (_%tl126731126773%_
                                         (##cdr _%tl126729126766%_)))
                                    (let ((_%sys-type126776%_
                                           _%hd126730126771%_))
                                      (if (##null? _%tl126731126773%_)
                                          (_%K126725126754%_
                                           _%sys-type126776%_
                                           _%sys-vendor126769%_
                                           _%sys-cpu126762%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self126709%_)
                '#!void)))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
