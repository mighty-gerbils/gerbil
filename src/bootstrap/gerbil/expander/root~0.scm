(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712823027)
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
      (lambda (_%self128395129475%_ _%bind?129477%_)
        (let* ((_%self129479%_ _%self128395129475%_)
               (_%self129481%_ _%self129479%_))
          (if (##fx< '2 (##structure-length _%self129481%_))
              (begin
                (##unchecked-structure-set! _%self129481%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self129481%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129481%_
                     '2
                     (##vector-length _%self129481%_)))
          (if _%bind?129477%_
              (begin
                (let ((__method129544
                       (__method-ref
                        _%self129481%_
                        'bind-core-syntax-expanders!)))
                  (if __method129544
                      (__method129544 _%self129481%_)
                      (begin
                        (error '"Missing method"
                               _%self129481%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method129545
                       (__method-ref
                        _%self129481%_
                        'bind-core-macro-expanders!)))
                  (if __method129545
                      (__method129545 _%self129481%_)
                      (begin
                        (error '"Missing method"
                               _%self129481%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method129546
                       (__method-ref _%self129481%_ 'bind-core-features!)))
                  (if __method129546
                      (__method129546 _%self129481%_)
                      (begin
                        (error '"Missing method"
                               _%self129481%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self128395129494%_)
        (let ((_%bind?129496%_ '#t))
          (gx#root-context:::init!__% _%self128395129494%_ _%bind?129496%_))))
    (define gx#root-context:::init!
      (lambda _g129549_
        (let ((_g129548_ (##length _g129549_)))
          (cond ((##fx= _g129548_ 1)
                 (apply gx#root-context:::init!__0 _g129549_))
                ((##fx= _g129548_ 2)
                 (apply gx#root-context:::init!__% _g129549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g129549_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass129500 __method-table129501)
        (let ((__bind-core-features!129502
               (__make-promise
                (lambda ()
                  (let ((__method129505
                         (symbolic-table-ref
                          __method-table129501
                          'bind-core-features!
                          '#f)))
                    (if __method129505
                        __method129505
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!129503
               (__make-promise
                (lambda ()
                  (let ((__method129506
                         (symbolic-table-ref
                          __method-table129501
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method129506
                        __method129506
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!129504
               (__make-promise
                (lambda ()
                  (let ((__method129507
                         (symbolic-table-ref
                          __method-table129501
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method129507
                        __method129507
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_%opt-lambda129473129491%_
                 (lambda (_%self128395129475%_ _%bind?129477%_)
                   (let* ((_%self129479%_ _%self128395129475%_)
                          (_%self129481%_ _%self129479%_))
                     (if (##fx< '2 (##structure-length _%self129481%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self129481%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self129481%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self129481%_
                                '2
                                (##vector-length _%self129481%_)))
                     (if _%bind?129477%_
                         (begin
                           ((force __bind-core-syntax-expanders!129504)
                            _%self129481%_)
                           ((force __bind-core-macro-expanders!129503)
                            _%self129481%_)
                           ((force __bind-core-features!129502)
                            _%self129481%_))
                         '#!void)))))
            (lambda _g129551_
              (let ((_g129550_ (##length _g129551_)))
                (cond ((##fx= _g129550_ 1)
                       (apply (lambda (_%self128395129494%_)
                                (let ((_%bind?129496%_ '#t))
                                  (_%opt-lambda129473129491%_
                                   _%self128395129494%_
                                   _%bind?129496%_)))
                              _g129551_))
                      ((##fx= _g129550_ 2)
                       (apply _%opt-lambda129473129491%_ _g129551_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g129551_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self128396129318%_ _%super129320%_)
        (let* ((_%self129322%_ _%self128396129318%_)
               (_%self129324%_ _%self129322%_)
               (_%super129340%_
                (let ((_%$e129334%_ _%super129320%_))
                  (if _%$e129334%_
                      _%$e129334%_
                      (let ((_%$e129337%_ (gx#core-context-root__0)))
                        (if _%$e129337%_
                            _%$e129337%_
                            (let ((__obj129547
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj129547)
                              __obj129547)))))))
          (if (##fx< '5 (##structure-length _%self129324%_))
              (begin
                (##unchecked-structure-set! _%self129324%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self129324%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129324%_
                 _%super129340%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129324%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self129324%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129324%_
                     '5
                     (##vector-length _%self129324%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self128396129345%_)
        (let ((_%super129347%_ '#f))
          (gx#top-context:::init!__% _%self128396129345%_ _%super129347%_))))
    (define gx#top-context:::init!
      (lambda _g129553_
        (let ((_g129552_ (##length _g129553_)))
          (cond ((##fx= _g129552_ 1)
                 (apply gx#top-context:::init!__0 _g129553_))
                ((##fx= _g129552_ 2)
                 (apply gx#top-context:::init!__% _g129553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g129553_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self128397129036%_ _%bindings129038%_)
        (let* ((_%self129040%_ _%self128397129036%_)
               (_%self129042%_ _%self129040%_))
          (for-each
           (lambda (_%bind129052%_)
             (let* ((_%bind129053129060%_ _%bind129052%_)
                    (_%E129055129064%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind129053129060%_
                              '([id . rest]))
                       '#!void))
                    (_%K129056129173%_
                     (lambda (_%rest129067%_ _%id129068%_)
                       (gx#core-context-put!
                        _%self129042%_
                        _%id129068%_
                        (##structure
                         gx#syntax-binding::t
                         _%id129068%_
                         _%id129068%_
                         '#f
                         (let* ((_%rest129069129080%_ _%rest129067%_)
                                (_%E129071129084%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest129069129080%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K129072129149%_
                                 (lambda (_%compiler129087%_
                                          _%expander129088%_
                                          _%key129089%_)
                                   ((let* ((_%key129090129103%_ _%key129089%_)
                                           (_%E129096129107%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key129090129103%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K129101129143%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K129100129136%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K129099129128%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K129098129120%_
                                             (lambda () gx#make-special-form))
                                            (_%K129097129112%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match129095129115%_
                                                (lambda ()
                                                  (if (##eq? _%key129090129103%_
                                                             'expr:)
                                                      (_%K129097129112%_)
                                                      (_%E129096129107%_))))
                                               (_%try-match129094129123%_
                                                (lambda ()
                                                  (if (##eq? _%key129090129103%_
                                                             'special:)
                                                      (_%K129098129120%_)
                                                      (_%try-match129095129115%_))))
                                               (_%try-match129093129131%_
                                                (lambda ()
                                                  (if (##eq? _%key129090129103%_
                                                             'define:)
                                                      (_%K129099129128%_)
                                                      (_%try-match129094129123%_))))
                                               (_%try-match129092129139%_
                                                (lambda ()
                                                  (if (##eq? _%key129090129103%_
                                                             'module:)
                                                      (_%K129100129136%_)
                                                      (_%try-match129093129131%_)))))
                                          (if (##eq? _%key129090129103%_ 'top:)
                                              (_%K129101129143%_)
                                              (_%try-match129092129139%_)))))
                                    _%expander129088%_
                                    _%id129068%_
                                    (let ((_%$e129146%_ _%compiler129087%_))
                                      (if _%$e129146%_
                                          _%$e129146%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest129069129080%_)
                               (let ((_%hd129073129152%_
                                      (##car _%rest129069129080%_))
                                     (_%tl129074129154%_
                                      (##cdr _%rest129069129080%_)))
                                 (let ((_%key129157%_ _%hd129073129152%_))
                                   (if (##pair? _%tl129074129154%_)
                                       (let ((_%hd129075129159%_
                                              (##car _%tl129074129154%_))
                                             (_%tl129076129161%_
                                              (##cdr _%tl129074129154%_)))
                                         (let ((_%expander129164%_
                                                _%hd129075129159%_))
                                           (if (##pair? _%tl129076129161%_)
                                               (let ((_%hd129077129166%_
                                                      (##car _%tl129076129161%_))
                                                     (_%tl129078129168%_
                                                      (##cdr _%tl129076129161%_)))
                                                 (let ((_%compiler129171%_
                                                        _%hd129077129166%_))
                                                   (if (##null? _%tl129078129168%_)
                                                       (_%K129072129149%_
                                                        _%compiler129171%_
                                                        _%expander129164%_
                                                        _%key129157%_)
                                                       (_%E129071129084%_))))
                                               (_%E129071129084%_))))
                                       (_%E129071129084%_))))
                               (_%E129071129084%_))))))))
               (if (##pair? _%bind129053129060%_)
                   (let ((_%hd129057129176%_ (##car _%bind129053129060%_))
                         (_%tl129058129178%_ (##cdr _%bind129053129060%_)))
                     (let* ((_%id129181%_ _%hd129057129176%_)
                            (_%rest129183%_ _%tl129058129178%_))
                       (_%K129056129173%_ _%rest129183%_ _%id129181%_)))
                   (_%E129055129064%_))))
           _%bindings129038%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self128397129188%_)
        (let ((_%bindings129190%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self128397129188%_
           _%bindings129190%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g129555_
        (let ((_g129554_ (##length _g129555_)))
          (cond ((##fx= _g129554_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g129555_))
                ((##fx= _g129554_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g129555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g129555_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self128398128795%_ _%bindings128797%_)
        (let* ((_%self128799%_ _%self128398128795%_)
               (_%self128801%_ _%self128799%_))
          (for-each
           (lambda (_%bind128811%_)
             (let* ((_%bind128812128819%_ _%bind128811%_)
                    (_%E128814128823%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind128812128819%_
                              '([id . rest]))
                       '#!void))
                    (_%K128815128891%_
                     (lambda (_%rest128826%_ _%id128827%_)
                       (gx#core-context-put!
                        _%self128801%_
                        _%id128827%_
                        (##structure
                         gx#syntax-binding::t
                         _%id128827%_
                         _%id128827%_
                         '#f
                         (let* ((_%rest128828128843%_ _%rest128826%_)
                                (_%E128832128847%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest128828128843%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K128837128876%_
                                  (lambda (_%core-id128874%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id128874%_)))
                                 (_%K128834128861%_
                                  (lambda (_%proc128859%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc128859%_)))
                                 (_%K128833128852%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id128827%_))))
                             (let ((_%try-match128831128855%_
                                    (lambda ()
                                      (if (##null? _%rest128828128843%_)
                                          (_%K128833128852%_)
                                          (_%E128832128847%_)))))
                               (if (##pair? _%rest128828128843%_)
                                   (let ((_%tl128839128881%_
                                          (##cdr _%rest128828128843%_))
                                         (_%hd128838128879%_
                                          (##car _%rest128828128843%_)))
                                     (if (##eq? _%hd128838128879%_ '=>)
                                         (if (##pair? _%tl128839128881%_)
                                             (let ((_%tl128841128886%_
                                                    (##cdr _%tl128839128881%_))
                                                   (_%hd128840128884%_
                                                    (##car _%tl128839128881%_)))
                                               (if (##null? _%tl128841128886%_)
                                                   (let ((_%core-id128889%_
                                                          _%hd128840128884%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id128889%_))
                                                   (_%E128832128847%_)))
                                             (if (##null? _%tl128839128881%_)
                                                 (let ((_%proc128869%_
                                                        _%hd128838128879%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc128869%_))
                                                 (_%E128832128847%_)))
                                         (if (##null? _%tl128839128881%_)
                                             (let ((_%proc128869%_
                                                    _%hd128838128879%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc128869%_))
                                             (_%E128832128847%_))))
                                   (_%try-match128831128855%_))))))))))
               (if (##pair? _%bind128812128819%_)
                   (let ((_%hd128816128894%_ (##car _%bind128812128819%_))
                         (_%tl128817128896%_ (##cdr _%bind128812128819%_)))
                     (let* ((_%id128899%_ _%hd128816128894%_)
                            (_%rest128901%_ _%tl128817128896%_))
                       (_%K128815128891%_ _%rest128901%_ _%id128899%_)))
                   (_%E128814128823%_))))
           _%bindings128797%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self128398128906%_)
        (let ((_%bindings128908%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self128398128906%_
           _%bindings128908%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g129557_
        (let ((_g129556_ (##length _g129557_)))
          (cond ((##fx= _g129556_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g129557_))
                ((##fx= _g129556_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g129557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g129557_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self128399128525%_)
        (let* ((_%self128528%_ _%self128399128525%_)
               (_%self128530%_ _%self128528%_))
          (letrec ((_%linux-variant?128540%_
                    (lambda (_%sys-type128640%_)
                      (let* ((_%g128641128649%_
                              (__string-split
                               (symbol->string _%sys-type128640%_)
                               '#\-))
                             (_%else128643128657%_ (lambda () '#f))
                             (_%K128645128662%_
                              (lambda (_%rest128660%_)
                                (not (null? _%rest128660%_)))))
                        (if (##pair? _%g128641128649%_)
                            (let ((_%hd128646128665%_
                                   (##car _%g128641128649%_))
                                  (_%tl128647128667%_
                                   (##cdr _%g128641128649%_)))
                              (if (equal? _%hd128646128665%_ '"linux")
                                  (let ((_%rest128670%_ _%tl128647128667%_))
                                    (_%K128645128662%_ _%rest128670%_))
                                  (_%else128643128657%_)))
                            (_%else128643128657%_)))))
                   (_%bsd-variant128541%_
                    (lambda (_%sys-type128599%_)
                      (let ((_%sys-type-str128601%_
                             (symbol->string _%sys-type128599%_)))
                        (let _%lp128603%_ ((_%rest128605%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest128606128614%_ _%rest128605%_)
                                 (_%else128608128622%_ (lambda () '#f))
                                 (_%K128610128628%_
                                  (lambda (_%rest128625%_ _%sys128626%_)
                                    (if (string-prefix?
                                         _%sys128626%_
                                         _%sys-type-str128601%_)
                                        _%sys128626%_
                                        (_%lp128603%_ _%rest128625%_)))))
                            (if (##pair? _%rest128606128614%_)
                                (let ((_%hd128611128631%_
                                       (##car _%rest128606128614%_))
                                      (_%tl128612128633%_
                                       (##cdr _%rest128606128614%_)))
                                  (let* ((_%sys128636%_ _%hd128611128631%_)
                                         (_%rest128638%_ _%tl128612128633%_))
                                    (_%K128610128628%_
                                     _%rest128638%_
                                     _%sys128636%_)))
                                (_%else128608128622%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self128530%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self128530%_)
            (let* ((_%g128542128554%_ (system-type))
                   (_%else128544128562%_ (lambda () '#!void))
                   (_%K128546128575%_
                    (lambda (_%sys-type128565%_
                             _%sys-vendor128566%_
                             _%sys-cpu128567%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu128567%_
                       '#f
                       '0
                       _%self128530%_)
                      (gx#core-bind-feature!__%
                       _%sys-type128565%_
                       '#f
                       '0
                       _%self128530%_)
                      (if (_%linux-variant?128540%_ _%sys-type128565%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self128530%_)
                          (let ((_%$e128570%_
                                 (_%bsd-variant128541%_ _%sys-type128565%_)))
                            (if _%$e128570%_
                                ((lambda (_%sys-prefix128573%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self128530%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix128573%_)
                                    '#f
                                    '0
                                    _%self128530%_))
                                 _%$e128570%_)
                                '#!void))))))
              (if (##pair? _%g128542128554%_)
                  (let ((_%hd128547128578%_ (##car _%g128542128554%_))
                        (_%tl128548128580%_ (##cdr _%g128542128554%_)))
                    (let ((_%sys-cpu128583%_ _%hd128547128578%_))
                      (if (##pair? _%tl128548128580%_)
                          (let ((_%hd128549128585%_ (##car _%tl128548128580%_))
                                (_%tl128550128587%_
                                 (##cdr _%tl128548128580%_)))
                            (let ((_%sys-vendor128590%_ _%hd128549128585%_))
                              (if (##pair? _%tl128550128587%_)
                                  (let ((_%hd128551128592%_
                                         (##car _%tl128550128587%_))
                                        (_%tl128552128594%_
                                         (##cdr _%tl128550128587%_)))
                                    (let ((_%sys-type128597%_
                                           _%hd128551128592%_))
                                      (if (##null? _%tl128552128594%_)
                                          (_%K128546128575%_
                                           _%sys-type128597%_
                                           _%sys-vendor128590%_
                                           _%sys-cpu128583%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self128530%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
