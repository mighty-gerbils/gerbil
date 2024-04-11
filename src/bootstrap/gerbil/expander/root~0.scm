(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712786279)
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
      (lambda (_%self128397129477%_ _%bind?129479%_)
        (let* ((_%self129481%_ _%self128397129477%_)
               (_%self129483%_ _%self129481%_))
          (if (##fx< '2 (##structure-length _%self129483%_))
              (begin
                (##unchecked-structure-set! _%self129483%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self129483%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129483%_
                     '2
                     (##vector-length _%self129483%_)))
          (if _%bind?129479%_
              (begin
                (let ((__method129546
                       (__method-ref
                        _%self129483%_
                        'bind-core-syntax-expanders!)))
                  (if __method129546
                      (__method129546 _%self129483%_)
                      (begin
                        (error '"Missing method"
                               _%self129483%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method129547
                       (__method-ref
                        _%self129483%_
                        'bind-core-macro-expanders!)))
                  (if __method129547
                      (__method129547 _%self129483%_)
                      (begin
                        (error '"Missing method"
                               _%self129483%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method129548
                       (__method-ref _%self129483%_ 'bind-core-features!)))
                  (if __method129548
                      (__method129548 _%self129483%_)
                      (begin
                        (error '"Missing method"
                               _%self129483%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self128397129496%_)
        (let ((_%bind?129498%_ '#t))
          (gx#root-context:::init!__% _%self128397129496%_ _%bind?129498%_))))
    (define gx#root-context:::init!
      (lambda _g129551_
        (let ((_g129550_ (##length _g129551_)))
          (cond ((##fx= _g129550_ 1)
                 (apply gx#root-context:::init!__0 _g129551_))
                ((##fx= _g129550_ 2)
                 (apply gx#root-context:::init!__% _g129551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g129551_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass129502 __method-table129503)
        (let ((__bind-core-features!129504
               (__make-promise
                (lambda ()
                  (let ((__method129507
                         (symbolic-table-ref
                          __method-table129503
                          'bind-core-features!
                          '#f)))
                    (if __method129507
                        __method129507
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!129505
               (__make-promise
                (lambda ()
                  (let ((__method129508
                         (symbolic-table-ref
                          __method-table129503
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method129508
                        __method129508
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!129506
               (__make-promise
                (lambda ()
                  (let ((__method129509
                         (symbolic-table-ref
                          __method-table129503
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method129509
                        __method129509
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_%opt-lambda129475129493%_
                 (lambda (_%self128397129477%_ _%bind?129479%_)
                   (let* ((_%self129481%_ _%self128397129477%_)
                          (_%self129483%_ _%self129481%_))
                     (if (##fx< '2 (##structure-length _%self129483%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self129483%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self129483%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self129483%_
                                '2
                                (##vector-length _%self129483%_)))
                     (if _%bind?129479%_
                         (begin
                           ((force __bind-core-syntax-expanders!129506)
                            _%self129483%_)
                           ((force __bind-core-macro-expanders!129505)
                            _%self129483%_)
                           ((force __bind-core-features!129504)
                            _%self129483%_))
                         '#!void)))))
            (lambda _g129553_
              (let ((_g129552_ (##length _g129553_)))
                (cond ((##fx= _g129552_ 1)
                       (apply (lambda (_%self128397129496%_)
                                (let ((_%bind?129498%_ '#t))
                                  (_%opt-lambda129475129493%_
                                   _%self128397129496%_
                                   _%bind?129498%_)))
                              _g129553_))
                      ((##fx= _g129552_ 2)
                       (apply _%opt-lambda129475129493%_ _g129553_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g129553_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self128398129320%_ _%super129322%_)
        (let* ((_%self129324%_ _%self128398129320%_)
               (_%self129326%_ _%self129324%_)
               (_%super129342%_
                (let ((_%$e129336%_ _%super129322%_))
                  (if _%$e129336%_
                      _%$e129336%_
                      (let ((_%$e129339%_ (gx#core-context-root__0)))
                        (if _%$e129339%_
                            _%$e129339%_
                            (let ((__obj129549
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init! __obj129549)
                              __obj129549)))))))
          (if (##fx< '5 (##structure-length _%self129326%_))
              (begin
                (##unchecked-structure-set! _%self129326%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self129326%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129326%_
                 _%super129342%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129326%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self129326%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129326%_
                     '5
                     (##vector-length _%self129326%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self128398129347%_)
        (let ((_%super129349%_ '#f))
          (gx#top-context:::init!__% _%self128398129347%_ _%super129349%_))))
    (define gx#top-context:::init!
      (lambda _g129555_
        (let ((_g129554_ (##length _g129555_)))
          (cond ((##fx= _g129554_ 1)
                 (apply gx#top-context:::init!__0 _g129555_))
                ((##fx= _g129554_ 2)
                 (apply gx#top-context:::init!__% _g129555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g129555_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self128399129038%_ _%bindings129040%_)
        (let* ((_%self129042%_ _%self128399129038%_)
               (_%self129044%_ _%self129042%_))
          (for-each
           (lambda (_%bind129054%_)
             (let* ((_%bind129055129062%_ _%bind129054%_)
                    (_%E129057129066%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind129055129062%_
                              '([id . rest]))
                       '#!void))
                    (_%K129058129175%_
                     (lambda (_%rest129069%_ _%id129070%_)
                       (gx#core-context-put!
                        _%self129044%_
                        _%id129070%_
                        (##structure
                         gx#syntax-binding::t
                         _%id129070%_
                         _%id129070%_
                         '#f
                         (let* ((_%rest129071129082%_ _%rest129069%_)
                                (_%E129073129086%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest129071129082%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K129074129151%_
                                 (lambda (_%compiler129089%_
                                          _%expander129090%_
                                          _%key129091%_)
                                   ((let* ((_%key129092129105%_ _%key129091%_)
                                           (_%E129098129109%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key129092129105%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K129103129145%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K129102129138%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K129101129130%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K129100129122%_
                                             (lambda () gx#make-special-form))
                                            (_%K129099129114%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match129097129117%_
                                                (lambda ()
                                                  (if (##eq? _%key129092129105%_
                                                             'expr:)
                                                      (_%K129099129114%_)
                                                      (_%E129098129109%_))))
                                               (_%try-match129096129125%_
                                                (lambda ()
                                                  (if (##eq? _%key129092129105%_
                                                             'special:)
                                                      (_%K129100129122%_)
                                                      (_%try-match129097129117%_))))
                                               (_%try-match129095129133%_
                                                (lambda ()
                                                  (if (##eq? _%key129092129105%_
                                                             'define:)
                                                      (_%K129101129130%_)
                                                      (_%try-match129096129125%_))))
                                               (_%try-match129094129141%_
                                                (lambda ()
                                                  (if (##eq? _%key129092129105%_
                                                             'module:)
                                                      (_%K129102129138%_)
                                                      (_%try-match129095129133%_)))))
                                          (if (##eq? _%key129092129105%_ 'top:)
                                              (_%K129103129145%_)
                                              (_%try-match129094129141%_)))))
                                    _%expander129090%_
                                    _%id129070%_
                                    (let ((_%$e129148%_ _%compiler129089%_))
                                      (if _%$e129148%_
                                          _%$e129148%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest129071129082%_)
                               (let ((_%hd129075129154%_
                                      (##car _%rest129071129082%_))
                                     (_%tl129076129156%_
                                      (##cdr _%rest129071129082%_)))
                                 (let ((_%key129159%_ _%hd129075129154%_))
                                   (if (##pair? _%tl129076129156%_)
                                       (let ((_%hd129077129161%_
                                              (##car _%tl129076129156%_))
                                             (_%tl129078129163%_
                                              (##cdr _%tl129076129156%_)))
                                         (let ((_%expander129166%_
                                                _%hd129077129161%_))
                                           (if (##pair? _%tl129078129163%_)
                                               (let ((_%hd129079129168%_
                                                      (##car _%tl129078129163%_))
                                                     (_%tl129080129170%_
                                                      (##cdr _%tl129078129163%_)))
                                                 (let ((_%compiler129173%_
                                                        _%hd129079129168%_))
                                                   (if (##null? _%tl129080129170%_)
                                                       (_%K129074129151%_
                                                        _%compiler129173%_
                                                        _%expander129166%_
                                                        _%key129159%_)
                                                       (_%E129073129086%_))))
                                               (_%E129073129086%_))))
                                       (_%E129073129086%_))))
                               (_%E129073129086%_))))))))
               (if (##pair? _%bind129055129062%_)
                   (let ((_%hd129059129178%_ (##car _%bind129055129062%_))
                         (_%tl129060129180%_ (##cdr _%bind129055129062%_)))
                     (let* ((_%id129183%_ _%hd129059129178%_)
                            (_%rest129185%_ _%tl129060129180%_))
                       (_%K129058129175%_ _%rest129185%_ _%id129183%_)))
                   (_%E129057129066%_))))
           _%bindings129040%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self128399129190%_)
        (let ((_%bindings129192%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self128399129190%_
           _%bindings129192%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g129557_
        (let ((_g129556_ (##length _g129557_)))
          (cond ((##fx= _g129556_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g129557_))
                ((##fx= _g129556_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g129557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g129557_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self128400128797%_ _%bindings128799%_)
        (let* ((_%self128801%_ _%self128400128797%_)
               (_%self128803%_ _%self128801%_))
          (for-each
           (lambda (_%bind128813%_)
             (let* ((_%bind128814128821%_ _%bind128813%_)
                    (_%E128816128825%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind128814128821%_
                              '([id . rest]))
                       '#!void))
                    (_%K128817128893%_
                     (lambda (_%rest128828%_ _%id128829%_)
                       (gx#core-context-put!
                        _%self128803%_
                        _%id128829%_
                        (##structure
                         gx#syntax-binding::t
                         _%id128829%_
                         _%id128829%_
                         '#f
                         (let* ((_%rest128830128845%_ _%rest128828%_)
                                (_%E128834128849%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest128830128845%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K128839128878%_
                                  (lambda (_%core-id128876%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id128876%_)))
                                 (_%K128836128863%_
                                  (lambda (_%proc128861%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc128861%_)))
                                 (_%K128835128854%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id128829%_))))
                             (let ((_%try-match128833128857%_
                                    (lambda ()
                                      (if (##null? _%rest128830128845%_)
                                          (_%K128835128854%_)
                                          (_%E128834128849%_)))))
                               (if (##pair? _%rest128830128845%_)
                                   (let ((_%tl128841128883%_
                                          (##cdr _%rest128830128845%_))
                                         (_%hd128840128881%_
                                          (##car _%rest128830128845%_)))
                                     (if (##eq? _%hd128840128881%_ '=>)
                                         (if (##pair? _%tl128841128883%_)
                                             (let ((_%tl128843128888%_
                                                    (##cdr _%tl128841128883%_))
                                                   (_%hd128842128886%_
                                                    (##car _%tl128841128883%_)))
                                               (if (##null? _%tl128843128888%_)
                                                   (let ((_%core-id128891%_
                                                          _%hd128842128886%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id128891%_))
                                                   (_%E128834128849%_)))
                                             (if (##null? _%tl128841128883%_)
                                                 (let ((_%proc128871%_
                                                        _%hd128840128881%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc128871%_))
                                                 (_%E128834128849%_)))
                                         (if (##null? _%tl128841128883%_)
                                             (let ((_%proc128871%_
                                                    _%hd128840128881%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc128871%_))
                                             (_%E128834128849%_))))
                                   (_%try-match128833128857%_))))))))))
               (if (##pair? _%bind128814128821%_)
                   (let ((_%hd128818128896%_ (##car _%bind128814128821%_))
                         (_%tl128819128898%_ (##cdr _%bind128814128821%_)))
                     (let* ((_%id128901%_ _%hd128818128896%_)
                            (_%rest128903%_ _%tl128819128898%_))
                       (_%K128817128893%_ _%rest128903%_ _%id128901%_)))
                   (_%E128816128825%_))))
           _%bindings128799%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self128400128908%_)
        (let ((_%bindings128910%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self128400128908%_
           _%bindings128910%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g129559_
        (let ((_g129558_ (##length _g129559_)))
          (cond ((##fx= _g129558_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g129559_))
                ((##fx= _g129558_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g129559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g129559_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self128401128527%_)
        (let* ((_%self128530%_ _%self128401128527%_)
               (_%self128532%_ _%self128530%_))
          (letrec ((_%linux-variant?128542%_
                    (lambda (_%sys-type128642%_)
                      (let* ((_%g128643128651%_
                              (__string-split
                               (symbol->string _%sys-type128642%_)
                               '#\-))
                             (_%else128645128659%_ (lambda () '#f))
                             (_%K128647128664%_
                              (lambda (_%rest128662%_)
                                (not (null? _%rest128662%_)))))
                        (if (##pair? _%g128643128651%_)
                            (let ((_%hd128648128667%_
                                   (##car _%g128643128651%_))
                                  (_%tl128649128669%_
                                   (##cdr _%g128643128651%_)))
                              (if (equal? _%hd128648128667%_ '"linux")
                                  (let ((_%rest128672%_ _%tl128649128669%_))
                                    (_%K128647128664%_ _%rest128672%_))
                                  (_%else128645128659%_)))
                            (_%else128645128659%_)))))
                   (_%bsd-variant128543%_
                    (lambda (_%sys-type128601%_)
                      (let ((_%sys-type-str128603%_
                             (symbol->string _%sys-type128601%_)))
                        (let _%lp128605%_ ((_%rest128607%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest128608128616%_ _%rest128607%_)
                                 (_%else128610128624%_ (lambda () '#f))
                                 (_%K128612128630%_
                                  (lambda (_%rest128627%_ _%sys128628%_)
                                    (if (string-prefix?
                                         _%sys128628%_
                                         _%sys-type-str128603%_)
                                        _%sys128628%_
                                        (_%lp128605%_ _%rest128627%_)))))
                            (if (##pair? _%rest128608128616%_)
                                (let ((_%hd128613128633%_
                                       (##car _%rest128608128616%_))
                                      (_%tl128614128635%_
                                       (##cdr _%rest128608128616%_)))
                                  (let* ((_%sys128638%_ _%hd128613128633%_)
                                         (_%rest128640%_ _%tl128614128635%_))
                                    (_%K128612128630%_
                                     _%rest128640%_
                                     _%sys128638%_)))
                                (_%else128610128624%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self128532%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self128532%_)
            (let* ((_%g128544128556%_ (system-type))
                   (_%else128546128564%_ (lambda () '#!void))
                   (_%K128548128577%_
                    (lambda (_%sys-type128567%_
                             _%sys-vendor128568%_
                             _%sys-cpu128569%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu128569%_
                       '#f
                       '0
                       _%self128532%_)
                      (gx#core-bind-feature!__%
                       _%sys-type128567%_
                       '#f
                       '0
                       _%self128532%_)
                      (if (_%linux-variant?128542%_ _%sys-type128567%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self128532%_)
                          (let ((_%$e128572%_
                                 (_%bsd-variant128543%_ _%sys-type128567%_)))
                            (if _%$e128572%_
                                ((lambda (_%sys-prefix128575%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self128532%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix128575%_)
                                    '#f
                                    '0
                                    _%self128532%_))
                                 _%$e128572%_)
                                '#!void))))))
              (if (##pair? _%g128544128556%_)
                  (let ((_%hd128549128580%_ (##car _%g128544128556%_))
                        (_%tl128550128582%_ (##cdr _%g128544128556%_)))
                    (let ((_%sys-cpu128585%_ _%hd128549128580%_))
                      (if (##pair? _%tl128550128582%_)
                          (let ((_%hd128551128587%_ (##car _%tl128550128582%_))
                                (_%tl128552128589%_
                                 (##cdr _%tl128550128582%_)))
                            (let ((_%sys-vendor128592%_ _%hd128551128587%_))
                              (if (##pair? _%tl128552128589%_)
                                  (let ((_%hd128553128594%_
                                         (##car _%tl128552128589%_))
                                        (_%tl128554128596%_
                                         (##cdr _%tl128552128589%_)))
                                    (let ((_%sys-type128599%_
                                           _%hd128553128594%_))
                                      (if (##null? _%tl128554128596%_)
                                          (_%K128548128577%_
                                           _%sys-type128599%_
                                           _%sys-vendor128592%_
                                           _%sys-cpu128585%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self128532%_)
                '#!void)))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
