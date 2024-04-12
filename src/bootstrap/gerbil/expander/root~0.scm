(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712944163)
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
      (lambda (_%self128398129478%_ _%bind?129480%_)
        (let* ((_%self129482%_ _%self128398129478%_)
               (_%self129484%_ _%self129482%_))
          (if (##fx< '2 (##structure-length _%self129484%_))
              (begin
                (##unchecked-structure-set! _%self129484%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self129484%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129484%_
                     '2
                     (##vector-length _%self129484%_)))
          (if _%bind?129480%_
              (begin
                (let ((__method129547
                       (__method-ref
                        _%self129484%_
                        'bind-core-syntax-expanders!)))
                  (if __method129547
                      (__method129547 _%self129484%_)
                      (begin
                        (error '"Missing method"
                               _%self129484%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method129548
                       (__method-ref
                        _%self129484%_
                        'bind-core-macro-expanders!)))
                  (if __method129548
                      (__method129548 _%self129484%_)
                      (begin
                        (error '"Missing method"
                               _%self129484%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method129549
                       (__method-ref _%self129484%_ 'bind-core-features!)))
                  (if __method129549
                      (__method129549 _%self129484%_)
                      (begin
                        (error '"Missing method"
                               _%self129484%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self128398129497%_)
        (let ((_%bind?129499%_ '#t))
          (gx#root-context:::init!__% _%self128398129497%_ _%bind?129499%_))))
    (define gx#root-context:::init!
      (lambda _g129552_
        (let ((_g129551_ (##length _g129552_)))
          (cond ((##fx= _g129551_ 1)
                 (apply gx#root-context:::init!__0 _g129552_))
                ((##fx= _g129551_ 2)
                 (apply gx#root-context:::init!__% _g129552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g129552_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass129503 __method-table129504)
        (let ((__bind-core-macro-expanders!129505
               (__make-promise
                (lambda ()
                  (let ((__method129508
                         (symbolic-table-ref
                          __method-table129504
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method129508
                        __method129508
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!129506
               (__make-promise
                (lambda ()
                  (let ((__method129509
                         (symbolic-table-ref
                          __method-table129504
                          'bind-core-features!
                          '#f)))
                    (if __method129509
                        __method129509
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!129507
               (__make-promise
                (lambda ()
                  (let ((__method129510
                         (symbolic-table-ref
                          __method-table129504
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method129510
                        __method129510
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_%opt-lambda129476129494%_
                 (lambda (_%self128398129478%_ _%bind?129480%_)
                   (let* ((_%self129482%_ _%self128398129478%_)
                          (_%self129484%_ _%self129482%_))
                     (if (##fx< '2 (##structure-length _%self129484%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self129484%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self129484%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self129484%_
                                '2
                                (##vector-length _%self129484%_)))
                     (if _%bind?129480%_
                         (begin
                           ((force __bind-core-syntax-expanders!129507)
                            _%self129484%_)
                           ((force __bind-core-macro-expanders!129505)
                            _%self129484%_)
                           ((force __bind-core-features!129506)
                            _%self129484%_))
                         '#!void)))))
            (lambda _g129554_
              (let ((_g129553_ (##length _g129554_)))
                (cond ((##fx= _g129553_ 1)
                       (apply (lambda (_%self128398129497%_)
                                (let ((_%bind?129499%_ '#t))
                                  (_%opt-lambda129476129494%_
                                   _%self128398129497%_
                                   _%bind?129499%_)))
                              _g129554_))
                      ((##fx= _g129553_ 2)
                       (apply _%opt-lambda129476129494%_ _g129554_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g129554_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self128399129321%_ _%super129323%_)
        (let* ((_%self129325%_ _%self128399129321%_)
               (_%self129327%_ _%self129325%_)
               (_%super129343%_
                (let ((_%$e129337%_ _%super129323%_))
                  (if _%$e129337%_
                      _%$e129337%_
                      (let ((_%$e129340%_ (gx#core-context-root__0)))
                        (if _%$e129340%_
                            _%$e129340%_
                            (let ((__obj129550
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj129550)
                              __obj129550)))))))
          (if (##fx< '5 (##structure-length _%self129327%_))
              (begin
                (##unchecked-structure-set! _%self129327%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self129327%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129327%_
                 _%super129343%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129327%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self129327%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129327%_
                     '5
                     (##vector-length _%self129327%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self128399129348%_)
        (let ((_%super129350%_ '#f))
          (gx#top-context:::init!__% _%self128399129348%_ _%super129350%_))))
    (define gx#top-context:::init!
      (lambda _g129556_
        (let ((_g129555_ (##length _g129556_)))
          (cond ((##fx= _g129555_ 1)
                 (apply gx#top-context:::init!__0 _g129556_))
                ((##fx= _g129555_ 2)
                 (apply gx#top-context:::init!__% _g129556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g129556_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self128400129039%_ _%bindings129041%_)
        (let* ((_%self129043%_ _%self128400129039%_)
               (_%self129045%_ _%self129043%_))
          (for-each
           (lambda (_%bind129055%_)
             (let* ((_%bind129056129063%_ _%bind129055%_)
                    (_%E129058129067%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind129056129063%_
                              '([id . rest]))
                       '#!void))
                    (_%K129059129176%_
                     (lambda (_%rest129070%_ _%id129071%_)
                       (gx#core-context-put!
                        _%self129045%_
                        _%id129071%_
                        (##structure
                         gx#syntax-binding::t
                         _%id129071%_
                         _%id129071%_
                         '#f
                         (let* ((_%rest129072129083%_ _%rest129070%_)
                                (_%E129074129087%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest129072129083%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K129075129152%_
                                 (lambda (_%compiler129090%_
                                          _%expander129091%_
                                          _%key129092%_)
                                   ((let* ((_%key129093129106%_ _%key129092%_)
                                           (_%E129099129110%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key129093129106%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K129104129146%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K129103129139%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K129102129131%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K129101129123%_
                                             (lambda () gx#make-special-form))
                                            (_%K129100129115%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match129098129118%_
                                                (lambda ()
                                                  (if (##eq? _%key129093129106%_
                                                             'expr:)
                                                      (_%K129100129115%_)
                                                      (_%E129099129110%_))))
                                               (_%try-match129097129126%_
                                                (lambda ()
                                                  (if (##eq? _%key129093129106%_
                                                             'special:)
                                                      (_%K129101129123%_)
                                                      (_%try-match129098129118%_))))
                                               (_%try-match129096129134%_
                                                (lambda ()
                                                  (if (##eq? _%key129093129106%_
                                                             'define:)
                                                      (_%K129102129131%_)
                                                      (_%try-match129097129126%_))))
                                               (_%try-match129095129142%_
                                                (lambda ()
                                                  (if (##eq? _%key129093129106%_
                                                             'module:)
                                                      (_%K129103129139%_)
                                                      (_%try-match129096129134%_)))))
                                          (if (##eq? _%key129093129106%_ 'top:)
                                              (_%K129104129146%_)
                                              (_%try-match129095129142%_)))))
                                    _%expander129091%_
                                    _%id129071%_
                                    (let ((_%$e129149%_ _%compiler129090%_))
                                      (if _%$e129149%_
                                          _%$e129149%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest129072129083%_)
                               (let ((_%hd129076129155%_
                                      (##car _%rest129072129083%_))
                                     (_%tl129077129157%_
                                      (##cdr _%rest129072129083%_)))
                                 (let ((_%key129160%_ _%hd129076129155%_))
                                   (if (##pair? _%tl129077129157%_)
                                       (let ((_%hd129078129162%_
                                              (##car _%tl129077129157%_))
                                             (_%tl129079129164%_
                                              (##cdr _%tl129077129157%_)))
                                         (let ((_%expander129167%_
                                                _%hd129078129162%_))
                                           (if (##pair? _%tl129079129164%_)
                                               (let ((_%hd129080129169%_
                                                      (##car _%tl129079129164%_))
                                                     (_%tl129081129171%_
                                                      (##cdr _%tl129079129164%_)))
                                                 (let ((_%compiler129174%_
                                                        _%hd129080129169%_))
                                                   (if (##null? _%tl129081129171%_)
                                                       (_%K129075129152%_
                                                        _%compiler129174%_
                                                        _%expander129167%_
                                                        _%key129160%_)
                                                       (_%E129074129087%_))))
                                               (_%E129074129087%_))))
                                       (_%E129074129087%_))))
                               (_%E129074129087%_))))))))
               (if (##pair? _%bind129056129063%_)
                   (let ((_%hd129060129179%_ (##car _%bind129056129063%_))
                         (_%tl129061129181%_ (##cdr _%bind129056129063%_)))
                     (let* ((_%id129184%_ _%hd129060129179%_)
                            (_%rest129186%_ _%tl129061129181%_))
                       (_%K129059129176%_ _%rest129186%_ _%id129184%_)))
                   (_%E129058129067%_))))
           _%bindings129041%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self128400129191%_)
        (let ((_%bindings129193%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self128400129191%_
           _%bindings129193%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g129558_
        (let ((_g129557_ (##length _g129558_)))
          (cond ((##fx= _g129557_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g129558_))
                ((##fx= _g129557_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g129558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g129558_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self128401128798%_ _%bindings128800%_)
        (let* ((_%self128802%_ _%self128401128798%_)
               (_%self128804%_ _%self128802%_))
          (for-each
           (lambda (_%bind128814%_)
             (let* ((_%bind128815128822%_ _%bind128814%_)
                    (_%E128817128826%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind128815128822%_
                              '([id . rest]))
                       '#!void))
                    (_%K128818128894%_
                     (lambda (_%rest128829%_ _%id128830%_)
                       (gx#core-context-put!
                        _%self128804%_
                        _%id128830%_
                        (##structure
                         gx#syntax-binding::t
                         _%id128830%_
                         _%id128830%_
                         '#f
                         (let* ((_%rest128831128846%_ _%rest128829%_)
                                (_%E128835128850%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest128831128846%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K128840128879%_
                                  (lambda (_%core-id128877%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id128877%_)))
                                 (_%K128837128864%_
                                  (lambda (_%proc128862%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc128862%_)))
                                 (_%K128836128855%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id128830%_))))
                             (let ((_%try-match128834128858%_
                                    (lambda ()
                                      (if (##null? _%rest128831128846%_)
                                          (_%K128836128855%_)
                                          (_%E128835128850%_)))))
                               (if (##pair? _%rest128831128846%_)
                                   (let ((_%tl128842128884%_
                                          (##cdr _%rest128831128846%_))
                                         (_%hd128841128882%_
                                          (##car _%rest128831128846%_)))
                                     (if (##eq? _%hd128841128882%_ '=>)
                                         (if (##pair? _%tl128842128884%_)
                                             (let ((_%tl128844128889%_
                                                    (##cdr _%tl128842128884%_))
                                                   (_%hd128843128887%_
                                                    (##car _%tl128842128884%_)))
                                               (if (##null? _%tl128844128889%_)
                                                   (let ((_%core-id128892%_
                                                          _%hd128843128887%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id128892%_))
                                                   (_%E128835128850%_)))
                                             (if (##null? _%tl128842128884%_)
                                                 (let ((_%proc128872%_
                                                        _%hd128841128882%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc128872%_))
                                                 (_%E128835128850%_)))
                                         (if (##null? _%tl128842128884%_)
                                             (let ((_%proc128872%_
                                                    _%hd128841128882%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc128872%_))
                                             (_%E128835128850%_))))
                                   (_%try-match128834128858%_))))))))))
               (if (##pair? _%bind128815128822%_)
                   (let ((_%hd128819128897%_ (##car _%bind128815128822%_))
                         (_%tl128820128899%_ (##cdr _%bind128815128822%_)))
                     (let* ((_%id128902%_ _%hd128819128897%_)
                            (_%rest128904%_ _%tl128820128899%_))
                       (_%K128818128894%_ _%rest128904%_ _%id128902%_)))
                   (_%E128817128826%_))))
           _%bindings128800%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self128401128909%_)
        (let ((_%bindings128911%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self128401128909%_
           _%bindings128911%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g129560_
        (let ((_g129559_ (##length _g129560_)))
          (cond ((##fx= _g129559_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g129560_))
                ((##fx= _g129559_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g129560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g129560_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self128402128528%_)
        (let* ((_%self128531%_ _%self128402128528%_)
               (_%self128533%_ _%self128531%_))
          (letrec ((_%linux-variant?128543%_
                    (lambda (_%sys-type128643%_)
                      (let* ((_%g128644128652%_
                              (__string-split
                               (symbol->string _%sys-type128643%_)
                               '#\-))
                             (_%else128646128660%_ (lambda () '#f))
                             (_%K128648128665%_
                              (lambda (_%rest128663%_)
                                (not (null? _%rest128663%_)))))
                        (if (##pair? _%g128644128652%_)
                            (let ((_%hd128649128668%_
                                   (##car _%g128644128652%_))
                                  (_%tl128650128670%_
                                   (##cdr _%g128644128652%_)))
                              (if (equal? _%hd128649128668%_ '"linux")
                                  (let ((_%rest128673%_ _%tl128650128670%_))
                                    (_%K128648128665%_ _%rest128673%_))
                                  (_%else128646128660%_)))
                            (_%else128646128660%_)))))
                   (_%bsd-variant128544%_
                    (lambda (_%sys-type128602%_)
                      (let ((_%sys-type-str128604%_
                             (symbol->string _%sys-type128602%_)))
                        (let _%lp128606%_ ((_%rest128608%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest128609128617%_ _%rest128608%_)
                                 (_%else128611128625%_ (lambda () '#f))
                                 (_%K128613128631%_
                                  (lambda (_%rest128628%_ _%sys128629%_)
                                    (if (string-prefix?
                                         _%sys128629%_
                                         _%sys-type-str128604%_)
                                        _%sys128629%_
                                        (_%lp128606%_ _%rest128628%_)))))
                            (if (##pair? _%rest128609128617%_)
                                (let ((_%hd128614128634%_
                                       (##car _%rest128609128617%_))
                                      (_%tl128615128636%_
                                       (##cdr _%rest128609128617%_)))
                                  (let* ((_%sys128639%_ _%hd128614128634%_)
                                         (_%rest128641%_ _%tl128615128636%_))
                                    (_%K128613128631%_
                                     _%rest128641%_
                                     _%sys128639%_)))
                                (_%else128611128625%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self128533%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self128533%_)
            (let* ((_%g128545128557%_ (system-type))
                   (_%else128547128565%_ (lambda () '#!void))
                   (_%K128549128578%_
                    (lambda (_%sys-type128568%_
                             _%sys-vendor128569%_
                             _%sys-cpu128570%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu128570%_
                       '#f
                       '0
                       _%self128533%_)
                      (gx#core-bind-feature!__%
                       _%sys-type128568%_
                       '#f
                       '0
                       _%self128533%_)
                      (if (_%linux-variant?128543%_ _%sys-type128568%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self128533%_)
                          (let ((_%$e128573%_
                                 (_%bsd-variant128544%_ _%sys-type128568%_)))
                            (if _%$e128573%_
                                ((lambda (_%sys-prefix128576%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self128533%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix128576%_)
                                    '#f
                                    '0
                                    _%self128533%_))
                                 _%$e128573%_)
                                '#!void))))))
              (if (##pair? _%g128545128557%_)
                  (let ((_%hd128550128581%_ (##car _%g128545128557%_))
                        (_%tl128551128583%_ (##cdr _%g128545128557%_)))
                    (let ((_%sys-cpu128586%_ _%hd128550128581%_))
                      (if (##pair? _%tl128551128583%_)
                          (let ((_%hd128552128588%_ (##car _%tl128551128583%_))
                                (_%tl128553128590%_
                                 (##cdr _%tl128551128583%_)))
                            (let ((_%sys-vendor128593%_ _%hd128552128588%_))
                              (if (##pair? _%tl128553128590%_)
                                  (let ((_%hd128554128595%_
                                         (##car _%tl128553128590%_))
                                        (_%tl128555128597%_
                                         (##cdr _%tl128553128590%_)))
                                    (let ((_%sys-type128600%_
                                           _%hd128554128595%_))
                                      (if (##null? _%tl128555128597%_)
                                          (_%K128549128578%_
                                           _%sys-type128600%_
                                           _%sys-vendor128593%_
                                           _%sys-cpu128586%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self128533%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
