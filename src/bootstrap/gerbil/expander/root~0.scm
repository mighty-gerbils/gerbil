(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1779967244)
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
                                (cons (cons '%#bind-runtime-properties!
                                            (cons 'special:
                                                  (cons gx#core-expand-bind-runtime-properties%
                                                        (cons '#f '()))))
                                      '())))))))))))))))))))))))))))))))))
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
      (lambda (_%self190304%_ _%bind?190305%_)
        (let ((_%self190308%_ _%self190304%_))
          (if (##fx< '2 (##structure-length _%self190308%_))
              (begin
                (##unchecked-structure-set! _%self190308%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self190308%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self190308%_
                     '2
                     (##structure-length _%self190308%_)))
          (if _%bind?190305%_
              (begin
                (let ((__method190372
                       (__method-ref
                        _%self190308%_
                        'bind-core-syntax-expanders!)))
                  (if __method190372
                      (__method190372 _%self190308%_)
                      (begin
                        (error '"Missing method"
                               _%self190308%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method190373
                       (__method-ref
                        _%self190308%_
                        'bind-core-macro-expanders!)))
                  (if __method190373
                      (__method190373 _%self190308%_)
                      (begin
                        (error '"Missing method"
                               _%self190308%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method190374
                       (__method-ref _%self190308%_ 'bind-core-features!)))
                  (if __method190374
                      (__method190374 _%self190308%_)
                      (begin
                        (error '"Missing method"
                               _%self190308%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self190322%_)
        (let ((_%bind?190324%_ '#t))
          (gx#root-context:::init!__% _%self190322%_ _%bind?190324%_))))
    (define gx#root-context:::init!
      (lambda _g190378_
        (let ((_g190379_ (##length _g190378_)))
          (cond ((##fx= _g190379_ 1)
                 (apply gx#root-context:::init!__0 _g190378_))
                ((##fx= _g190379_ 2)
                 (apply gx#root-context:::init!__% _g190378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g190378_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass190328 __method-table190329)
        (let ((__bind-core-syntax-expanders!190330
               (__make-promise
                (lambda ()
                  (let ((__method190333
                         (symbolic-table-ref
                          __method-table190329
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method190333
                        __method190333
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!190331
               (__make-promise
                (lambda ()
                  (let ((__method190334
                         (symbolic-table-ref
                          __method-table190329
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method190334
                        __method190334
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!190332
               (__make-promise
                (lambda ()
                  (let ((__method190335
                         (symbolic-table-ref
                          __method-table190329
                          'bind-core-features!
                          '#f)))
                    (if __method190335
                        __method190335
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda190302190319%_
                 (lambda (_%self190304%_ _%bind?190305%_)
                   (let ((_%self190308%_ _%self190304%_))
                     (if (##fx< '2 (##structure-length _%self190308%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self190308%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self190308%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self190308%_
                                '2
                                (##structure-length _%self190308%_)))
                     (if _%bind?190305%_
                         (begin
                           ((force __bind-core-syntax-expanders!190330)
                            _%self190308%_)
                           ((force __bind-core-macro-expanders!190331)
                            _%self190308%_)
                           ((force __bind-core-features!190332)
                            _%self190308%_))
                         '#!void)))))
            (lambda _g190380_
              (let ((_g190381_ (##length _g190380_)))
                (cond ((##fx= _g190381_ 1)
                       (apply (lambda (_%self190322%_)
                                (let ((_%bind?190324%_ '#t))
                                  (_%opt-lambda190302190319%_
                                   _%self190322%_
                                   _%bind?190324%_)))
                              _g190380_))
                      ((##fx= _g190381_ 2)
                       (apply _%opt-lambda190302190319%_ _g190380_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g190380_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self190149%_ _%super190150%_)
        (let* ((_%self190153%_ _%self190149%_)
               (_%super190169%_
                (let ((_%$e190163%_ _%super190150%_))
                  (if _%$e190163%_
                      _%$e190163%_
                      (let ((_%$e190166%_ (gx#core-context-root__0)))
                        (if _%$e190166%_
                            _%$e190166%_
                            (let ((__obj190375
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj190375)
                              __obj190375)))))))
          (if (##fx< '5 (##structure-length _%self190153%_))
              (begin
                (##unchecked-structure-set! _%self190153%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self190153%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self190153%_
                 _%super190169%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self190153%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self190153%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self190153%_
                     '5
                     (##structure-length _%self190153%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self190174%_)
        (let ((_%super190176%_ '#f))
          (gx#top-context:::init!__% _%self190174%_ _%super190176%_))))
    (define gx#top-context:::init!
      (lambda _g190382_
        (let ((_g190383_ (##length _g190382_)))
          (cond ((##fx= _g190383_ 1)
                 (apply gx#top-context:::init!__0 _g190382_))
                ((##fx= _g190383_ 2)
                 (apply gx#top-context:::init!__% _g190382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g190382_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self189870%_ _%bindings189871%_)
        (let ((_%self189874%_ _%self189870%_))
          (for-each
           (lambda (_%bind189884%_)
             (let* ((_%bind189885189892%_ _%bind189884%_)
                    (_%E189887189895%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind189885189892%_
                              '([id . rest]))
                       '#!void))
                    (_%K189888190004%_
                     (lambda (_%rest189898%_ _%id189899%_)
                       (gx#core-context-put!
                        _%self189874%_
                        _%id189899%_
                        (let ((__obj190376
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj190376
                           _%id189899%_
                           _%id189899%_
                           '#f
                           (let* ((_%rest189900189911%_ _%rest189898%_)
                                  (_%E189902189915%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest189900189911%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K189903189980%_
                                   (lambda (_%compiler189918%_
                                            _%expander189919%_
                                            _%key189920%_)
                                     ((let* ((_%key189921189934%_
                                              _%key189920%_)
                                             (_%E189927189938%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key189921189934%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K189932189974%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K189931189967%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K189930189959%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K189929189951%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K189928189943%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match189926189946%_
                                                  (lambda ()
                                                    (if (##eq? _%key189921189934%_
                                                               'expr:)
                                                        (_%K189928189943%_)
                                                        (_%E189927189938%_))))
                                                 (_%try-match189925189954%_
                                                  (lambda ()
                                                    (if (##eq? _%key189921189934%_
                                                               'special:)
                                                        (_%K189929189951%_)
                                                        (_%try-match189926189946%_))))
                                                 (_%try-match189924189962%_
                                                  (lambda ()
                                                    (if (##eq? _%key189921189934%_
                                                               'define:)
                                                        (_%K189930189959%_)
                                                        (_%try-match189925189954%_))))
                                                 (_%try-match189923189970%_
                                                  (lambda ()
                                                    (if (##eq? _%key189921189934%_
                                                               'module:)
                                                        (_%K189931189967%_)
                                                        (_%try-match189924189962%_)))))
                                            (if (##eq? _%key189921189934%_
                                                       'top:)
                                                (_%K189932189974%_)
                                                (_%try-match189923189970%_)))))
                                      _%expander189919%_
                                      _%id189899%_
                                      (let ((_%$e189977%_ _%compiler189918%_))
                                        (if _%$e189977%_
                                            _%$e189977%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest189900189911%_)
                                 (let ((_%hd189904189983%_
                                        (##car _%rest189900189911%_))
                                       (_%tl189905189985%_
                                        (##cdr _%rest189900189911%_)))
                                   (let ((_%key189988%_ _%hd189904189983%_))
                                     (if (pair? _%tl189905189985%_)
                                         (let ((_%hd189906189990%_
                                                (##car _%tl189905189985%_))
                                               (_%tl189907189992%_
                                                (##cdr _%tl189905189985%_)))
                                           (let ((_%expander189995%_
                                                  _%hd189906189990%_))
                                             (if (pair? _%tl189907189992%_)
                                                 (let ((_%hd189908189997%_
                                                        (##car _%tl189907189992%_))
                                                       (_%tl189909189999%_
                                                        (##cdr _%tl189907189992%_)))
                                                   (let ((_%compiler190002%_
                                                          _%hd189908189997%_))
                                                     (if (null? _%tl189909189999%_)
                                                         (_%K189903189980%_
                                                          _%compiler190002%_
                                                          _%expander189995%_
                                                          _%key189988%_)
                                                         (_%E189902189915%_))))
                                                 (_%E189902189915%_))))
                                         (_%E189902189915%_))))
                                 (_%E189902189915%_))))
                          __obj190376)))))
               (if (pair? _%bind189885189892%_)
                   (let ((_%hd189889190007%_ (##car _%bind189885189892%_))
                         (_%tl189890190009%_ (##cdr _%bind189885189892%_)))
                     (let* ((_%id190012%_ _%hd189889190007%_)
                            (_%rest190014%_ _%tl189890190009%_))
                       (_%K189888190004%_ _%rest190014%_ _%id190012%_)))
                   (_%E189887189895%_))))
           _%bindings189871%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self190019%_)
        (let ((_%bindings190021%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self190019%_
           _%bindings190021%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g190384_
        (let ((_g190385_ (##length _g190384_)))
          (cond ((##fx= _g190385_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g190384_))
                ((##fx= _g190385_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g190384_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g190384_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self189632%_ _%bindings189633%_)
        (let ((_%self189636%_ _%self189632%_))
          (for-each
           (lambda (_%bind189646%_)
             (let* ((_%bind189647189654%_ _%bind189646%_)
                    (_%E189649189657%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind189647189654%_
                              '([id . rest]))
                       '#!void))
                    (_%K189650189725%_
                     (lambda (_%rest189660%_ _%id189661%_)
                       (gx#core-context-put!
                        _%self189636%_
                        _%id189661%_
                        (let ((__obj190377
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj190377
                           _%id189661%_
                           _%id189661%_
                           '#f
                           (let* ((_%rest189662189677%_ _%rest189660%_)
                                  (_%E189666189681%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest189662189677%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K189671189710%_
                                    (lambda (_%core-id189708%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id189708%_)))
                                   (_%K189668189695%_
                                    (lambda (_%proc189693%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc189693%_)))
                                   (_%K189667189686%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id189661%_))))
                               (let ((_%try-match189665189689%_
                                      (lambda ()
                                        (if (null? _%rest189662189677%_)
                                            (_%K189667189686%_)
                                            (_%E189666189681%_)))))
                                 (if (pair? _%rest189662189677%_)
                                     (let ((_%tl189673189715%_
                                            (##cdr _%rest189662189677%_))
                                           (_%hd189672189713%_
                                            (##car _%rest189662189677%_)))
                                       (if (##eq? _%hd189672189713%_ '=>)
                                           (if (pair? _%tl189673189715%_)
                                               (let ((_%tl189675189720%_
                                                      (##cdr _%tl189673189715%_))
                                                     (_%hd189674189718%_
                                                      (##car _%tl189673189715%_)))
                                                 (if (null? _%tl189675189720%_)
                                                     (let ((_%core-id189723%_
                                                            _%hd189674189718%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id189723%_))
                                                     (_%E189666189681%_)))
                                               (if (null? _%tl189673189715%_)
                                                   (let ((_%proc189703%_
                                                          _%hd189672189713%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc189703%_))
                                                   (_%E189666189681%_)))
                                           (if (null? _%tl189673189715%_)
                                               (let ((_%proc189703%_
                                                      _%hd189672189713%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc189703%_))
                                               (_%E189666189681%_))))
                                     (_%try-match189665189689%_))))))
                          __obj190377)))))
               (if (pair? _%bind189647189654%_)
                   (let ((_%hd189651189728%_ (##car _%bind189647189654%_))
                         (_%tl189652189730%_ (##cdr _%bind189647189654%_)))
                     (let* ((_%id189733%_ _%hd189651189728%_)
                            (_%rest189735%_ _%tl189652189730%_))
                       (_%K189650189725%_ _%rest189735%_ _%id189733%_)))
                   (_%E189649189657%_))))
           _%bindings189633%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self189740%_)
        (let ((_%bindings189742%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self189740%_
           _%bindings189742%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g190386_
        (let ((_g190387_ (##length _g190386_)))
          (cond ((##fx= _g190387_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g190386_))
                ((##fx= _g190387_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g190386_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g190386_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self189363%_)
        (let ((_%self189366%_ _%self189363%_))
          (letrec ((_%linux-variant?189377%_
                    (lambda (_%sys-type189477%_)
                      (let* ((_%g189478189486%_
                              (__string-split
                               (symbol->string _%sys-type189477%_)
                               '#\-))
                             (_%else189480189494%_ (lambda () '#f))
                             (_%K189482189499%_
                              (lambda (_%rest189497%_)
                                (not (null? _%rest189497%_)))))
                        (if (pair? _%g189478189486%_)
                            (let ((_%hd189483189502%_
                                   (##car _%g189478189486%_))
                                  (_%tl189484189504%_
                                   (##cdr _%g189478189486%_)))
                              (if (equal? _%hd189483189502%_ '"linux")
                                  (let ((_%rest189507%_ _%tl189484189504%_))
                                    (_%K189482189499%_ _%rest189507%_))
                                  (_%else189480189494%_)))
                            (_%else189480189494%_)))))
                   (_%bsd-variant189378%_
                    (lambda (_%sys-type189436%_)
                      (let ((_%sys-type-str189438%_
                             (symbol->string _%sys-type189436%_)))
                        (let _%lp189440%_ ((_%rest189442%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest189443189451%_ _%rest189442%_)
                                 (_%else189445189459%_ (lambda () '#f))
                                 (_%K189447189465%_
                                  (lambda (_%rest189462%_ _%sys189463%_)
                                    (if (string-prefix?
                                         _%sys189463%_
                                         _%sys-type-str189438%_)
                                        _%sys189463%_
                                        (_%lp189440%_ _%rest189462%_)))))
                            (if (pair? _%rest189443189451%_)
                                (let ((_%hd189448189468%_
                                       (##car _%rest189443189451%_))
                                      (_%tl189449189470%_
                                       (##cdr _%rest189443189451%_)))
                                  (let* ((_%sys189473%_ _%hd189448189468%_)
                                         (_%rest189475%_ _%tl189449189470%_))
                                    (_%K189447189465%_
                                     _%rest189475%_
                                     _%sys189473%_)))
                                (_%else189445189459%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self189366%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self189366%_)
            (let* ((_%g189379189391%_ (system-type))
                   (_%else189381189399%_ (lambda () '#!void))
                   (_%K189383189412%_
                    (lambda (_%sys-type189402%_
                             _%sys-vendor189403%_
                             _%sys-cpu189404%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu189404%_
                       '#f
                       '0
                       _%self189366%_)
                      (gx#core-bind-feature!__%
                       _%sys-type189402%_
                       '#f
                       '0
                       _%self189366%_)
                      (if (_%linux-variant?189377%_ _%sys-type189402%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self189366%_)
                          (let ((_%$e189407%_
                                 (_%bsd-variant189378%_ _%sys-type189402%_)))
                            (if _%$e189407%_
                                (let ()
                                  (gx#core-bind-feature!__%
                                   (##string->symbol '"bsd")
                                   '#f
                                   '0
                                   _%self189366%_)
                                  (gx#core-bind-feature!__%
                                   (string->symbol _%$e189407%_)
                                   '#f
                                   '0
                                   _%self189366%_))
                                '#!void))))))
              (if (pair? _%g189379189391%_)
                  (let ((_%hd189384189415%_ (##car _%g189379189391%_))
                        (_%tl189385189417%_ (##cdr _%g189379189391%_)))
                    (let ((_%sys-cpu189420%_ _%hd189384189415%_))
                      (if (pair? _%tl189385189417%_)
                          (let ((_%hd189386189422%_ (##car _%tl189385189417%_))
                                (_%tl189387189424%_
                                 (##cdr _%tl189385189417%_)))
                            (let ((_%sys-vendor189427%_ _%hd189386189422%_))
                              (if (pair? _%tl189387189424%_)
                                  (let ((_%hd189388189429%_
                                         (##car _%tl189387189424%_))
                                        (_%tl189389189431%_
                                         (##cdr _%tl189387189424%_)))
                                    (let ((_%sys-type189434%_
                                           _%hd189388189429%_))
                                      (if (null? _%tl189389189431%_)
                                          (_%K189383189412%_
                                           _%sys-type189434%_
                                           _%sys-vendor189427%_
                                           _%sys-cpu189420%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self189366%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
