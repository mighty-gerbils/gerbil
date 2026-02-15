(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1771178565)
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
      (lambda (_%self188414%_ _%bind?188415%_)
        (let ((_%self188418%_ _%self188414%_))
          (if (##fx< '2 (##structure-length _%self188418%_))
              (begin
                (##unchecked-structure-set! _%self188418%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self188418%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self188418%_
                     '2
                     (##structure-length _%self188418%_)))
          (if _%bind?188415%_
              (begin
                (let ((__method188482
                       (__method-ref
                        _%self188418%_
                        'bind-core-syntax-expanders!)))
                  (if __method188482
                      (__method188482 _%self188418%_)
                      (begin
                        (error '"Missing method"
                               _%self188418%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method188483
                       (__method-ref
                        _%self188418%_
                        'bind-core-macro-expanders!)))
                  (if __method188483
                      (__method188483 _%self188418%_)
                      (begin
                        (error '"Missing method"
                               _%self188418%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method188484
                       (__method-ref _%self188418%_ 'bind-core-features!)))
                  (if __method188484
                      (__method188484 _%self188418%_)
                      (begin
                        (error '"Missing method"
                               _%self188418%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self188432%_)
        (let ((_%bind?188434%_ '#t))
          (gx#root-context:::init!__% _%self188432%_ _%bind?188434%_))))
    (define gx#root-context:::init!
      (lambda _g188488_
        (let ((_g188489_ (##length _g188488_)))
          (cond ((##fx= _g188489_ 1)
                 (apply gx#root-context:::init!__0 _g188488_))
                ((##fx= _g188489_ 2)
                 (apply gx#root-context:::init!__% _g188488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g188488_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass188438 __method-table188439)
        (let ((__bind-core-features!188440
               (__make-promise
                (lambda ()
                  (let ((__method188443
                         (symbolic-table-ref
                          __method-table188439
                          'bind-core-features!
                          '#f)))
                    (if __method188443
                        __method188443
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!188441
               (__make-promise
                (lambda ()
                  (let ((__method188444
                         (symbolic-table-ref
                          __method-table188439
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method188444
                        __method188444
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!188442
               (__make-promise
                (lambda ()
                  (let ((__method188445
                         (symbolic-table-ref
                          __method-table188439
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method188445
                        __method188445
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda188412188429%_
                 (lambda (_%self188414%_ _%bind?188415%_)
                   (let ((_%self188418%_ _%self188414%_))
                     (if (##fx< '2 (##structure-length _%self188418%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self188418%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self188418%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self188418%_
                                '2
                                (##structure-length _%self188418%_)))
                     (if _%bind?188415%_
                         (begin
                           ((force __bind-core-syntax-expanders!188441)
                            _%self188418%_)
                           ((force __bind-core-macro-expanders!188442)
                            _%self188418%_)
                           ((force __bind-core-features!188440)
                            _%self188418%_))
                         '#!void)))))
            (lambda _g188490_
              (let ((_g188491_ (##length _g188490_)))
                (cond ((##fx= _g188491_ 1)
                       (apply (lambda (_%self188432%_)
                                (let ((_%bind?188434%_ '#t))
                                  (_%opt-lambda188412188429%_
                                   _%self188432%_
                                   _%bind?188434%_)))
                              _g188490_))
                      ((##fx= _g188491_ 2)
                       (apply _%opt-lambda188412188429%_ _g188490_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g188490_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self188259%_ _%super188260%_)
        (let* ((_%self188263%_ _%self188259%_)
               (_%super188279%_
                (let ((_%$e188273%_ _%super188260%_))
                  (if _%$e188273%_
                      _%$e188273%_
                      (let ((_%$e188276%_ (gx#core-context-root__0)))
                        (if _%$e188276%_
                            _%$e188276%_
                            (let ((__obj188485
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj188485)
                              __obj188485)))))))
          (if (##fx< '5 (##structure-length _%self188263%_))
              (begin
                (##unchecked-structure-set! _%self188263%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self188263%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self188263%_
                 _%super188279%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self188263%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self188263%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self188263%_
                     '5
                     (##structure-length _%self188263%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self188284%_)
        (let ((_%super188286%_ '#f))
          (gx#top-context:::init!__% _%self188284%_ _%super188286%_))))
    (define gx#top-context:::init!
      (lambda _g188492_
        (let ((_g188493_ (##length _g188492_)))
          (cond ((##fx= _g188493_ 1)
                 (apply gx#top-context:::init!__0 _g188492_))
                ((##fx= _g188493_ 2)
                 (apply gx#top-context:::init!__% _g188492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g188492_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self187980%_ _%bindings187981%_)
        (let ((_%self187984%_ _%self187980%_))
          (for-each
           (lambda (_%bind187994%_)
             (let* ((_%bind187995188002%_ _%bind187994%_)
                    (_%E187997188005%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind187995188002%_
                              '([id . rest]))
                       '#!void))
                    (_%K187998188114%_
                     (lambda (_%rest188008%_ _%id188009%_)
                       (gx#core-context-put!
                        _%self187984%_
                        _%id188009%_
                        (let ((__obj188486
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj188486
                           _%id188009%_
                           _%id188009%_
                           '#f
                           (let* ((_%rest188010188021%_ _%rest188008%_)
                                  (_%E188012188025%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest188010188021%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K188013188090%_
                                   (lambda (_%compiler188028%_
                                            _%expander188029%_
                                            _%key188030%_)
                                     ((let* ((_%key188031188044%_
                                              _%key188030%_)
                                             (_%E188037188048%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key188031188044%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K188042188084%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K188041188077%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K188040188069%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K188039188061%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K188038188053%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match188036188056%_
                                                  (lambda ()
                                                    (if (##eq? _%key188031188044%_
                                                               'expr:)
                                                        (_%K188038188053%_)
                                                        (_%E188037188048%_))))
                                                 (_%try-match188035188064%_
                                                  (lambda ()
                                                    (if (##eq? _%key188031188044%_
                                                               'special:)
                                                        (_%K188039188061%_)
                                                        (_%try-match188036188056%_))))
                                                 (_%try-match188034188072%_
                                                  (lambda ()
                                                    (if (##eq? _%key188031188044%_
                                                               'define:)
                                                        (_%K188040188069%_)
                                                        (_%try-match188035188064%_))))
                                                 (_%try-match188033188080%_
                                                  (lambda ()
                                                    (if (##eq? _%key188031188044%_
                                                               'module:)
                                                        (_%K188041188077%_)
                                                        (_%try-match188034188072%_)))))
                                            (if (##eq? _%key188031188044%_
                                                       'top:)
                                                (_%K188042188084%_)
                                                (_%try-match188033188080%_)))))
                                      _%expander188029%_
                                      _%id188009%_
                                      (let ((_%$e188087%_ _%compiler188028%_))
                                        (if _%$e188087%_
                                            _%$e188087%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest188010188021%_)
                                 (let ((_%hd188014188093%_
                                        (##car _%rest188010188021%_))
                                       (_%tl188015188095%_
                                        (##cdr _%rest188010188021%_)))
                                   (let ((_%key188098%_ _%hd188014188093%_))
                                     (if (pair? _%tl188015188095%_)
                                         (let ((_%hd188016188100%_
                                                (##car _%tl188015188095%_))
                                               (_%tl188017188102%_
                                                (##cdr _%tl188015188095%_)))
                                           (let ((_%expander188105%_
                                                  _%hd188016188100%_))
                                             (if (pair? _%tl188017188102%_)
                                                 (let ((_%hd188018188107%_
                                                        (##car _%tl188017188102%_))
                                                       (_%tl188019188109%_
                                                        (##cdr _%tl188017188102%_)))
                                                   (let ((_%compiler188112%_
                                                          _%hd188018188107%_))
                                                     (if (null? _%tl188019188109%_)
                                                         (_%K188013188090%_
                                                          _%compiler188112%_
                                                          _%expander188105%_
                                                          _%key188098%_)
                                                         (_%E188012188025%_))))
                                                 (_%E188012188025%_))))
                                         (_%E188012188025%_))))
                                 (_%E188012188025%_))))
                          __obj188486)))))
               (if (pair? _%bind187995188002%_)
                   (let ((_%hd187999188117%_ (##car _%bind187995188002%_))
                         (_%tl188000188119%_ (##cdr _%bind187995188002%_)))
                     (let* ((_%id188122%_ _%hd187999188117%_)
                            (_%rest188124%_ _%tl188000188119%_))
                       (_%K187998188114%_ _%rest188124%_ _%id188122%_)))
                   (_%E187997188005%_))))
           _%bindings187981%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self188129%_)
        (let ((_%bindings188131%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self188129%_
           _%bindings188131%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g188494_
        (let ((_g188495_ (##length _g188494_)))
          (cond ((##fx= _g188495_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g188494_))
                ((##fx= _g188495_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g188494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g188494_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self187742%_ _%bindings187743%_)
        (let ((_%self187746%_ _%self187742%_))
          (for-each
           (lambda (_%bind187756%_)
             (let* ((_%bind187757187764%_ _%bind187756%_)
                    (_%E187759187767%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind187757187764%_
                              '([id . rest]))
                       '#!void))
                    (_%K187760187835%_
                     (lambda (_%rest187770%_ _%id187771%_)
                       (gx#core-context-put!
                        _%self187746%_
                        _%id187771%_
                        (let ((__obj188487
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj188487
                           _%id187771%_
                           _%id187771%_
                           '#f
                           (let* ((_%rest187772187787%_ _%rest187770%_)
                                  (_%E187776187791%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest187772187787%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K187781187820%_
                                    (lambda (_%core-id187818%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id187818%_)))
                                   (_%K187778187805%_
                                    (lambda (_%proc187803%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc187803%_)))
                                   (_%K187777187796%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id187771%_))))
                               (let ((_%try-match187775187799%_
                                      (lambda ()
                                        (if (null? _%rest187772187787%_)
                                            (_%K187777187796%_)
                                            (_%E187776187791%_)))))
                                 (if (pair? _%rest187772187787%_)
                                     (let ((_%tl187783187825%_
                                            (##cdr _%rest187772187787%_))
                                           (_%hd187782187823%_
                                            (##car _%rest187772187787%_)))
                                       (if (##eq? _%hd187782187823%_ '=>)
                                           (if (pair? _%tl187783187825%_)
                                               (let ((_%tl187785187830%_
                                                      (##cdr _%tl187783187825%_))
                                                     (_%hd187784187828%_
                                                      (##car _%tl187783187825%_)))
                                                 (if (null? _%tl187785187830%_)
                                                     (let ((_%core-id187833%_
                                                            _%hd187784187828%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id187833%_))
                                                     (_%E187776187791%_)))
                                               (if (null? _%tl187783187825%_)
                                                   (let ((_%proc187813%_
                                                          _%hd187782187823%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc187813%_))
                                                   (_%E187776187791%_)))
                                           (if (null? _%tl187783187825%_)
                                               (let ((_%proc187813%_
                                                      _%hd187782187823%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc187813%_))
                                               (_%E187776187791%_))))
                                     (_%try-match187775187799%_))))))
                          __obj188487)))))
               (if (pair? _%bind187757187764%_)
                   (let ((_%hd187761187838%_ (##car _%bind187757187764%_))
                         (_%tl187762187840%_ (##cdr _%bind187757187764%_)))
                     (let* ((_%id187843%_ _%hd187761187838%_)
                            (_%rest187845%_ _%tl187762187840%_))
                       (_%K187760187835%_ _%rest187845%_ _%id187843%_)))
                   (_%E187759187767%_))))
           _%bindings187743%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self187850%_)
        (let ((_%bindings187852%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self187850%_
           _%bindings187852%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g188496_
        (let ((_g188497_ (##length _g188496_)))
          (cond ((##fx= _g188497_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g188496_))
                ((##fx= _g188497_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g188496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g188496_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self187473%_)
        (let ((_%self187476%_ _%self187473%_))
          (letrec ((_%linux-variant?187487%_
                    (lambda (_%sys-type187587%_)
                      (let* ((_%g187588187596%_
                              (__string-split
                               (symbol->string _%sys-type187587%_)
                               '#\-))
                             (_%else187590187604%_ (lambda () '#f))
                             (_%K187592187609%_
                              (lambda (_%rest187607%_)
                                (not (null? _%rest187607%_)))))
                        (if (pair? _%g187588187596%_)
                            (let ((_%hd187593187612%_
                                   (##car _%g187588187596%_))
                                  (_%tl187594187614%_
                                   (##cdr _%g187588187596%_)))
                              (if (equal? _%hd187593187612%_ '"linux")
                                  (let ((_%rest187617%_ _%tl187594187614%_))
                                    (_%K187592187609%_ _%rest187617%_))
                                  (_%else187590187604%_)))
                            (_%else187590187604%_)))))
                   (_%bsd-variant187488%_
                    (lambda (_%sys-type187546%_)
                      (let ((_%sys-type-str187548%_
                             (symbol->string _%sys-type187546%_)))
                        (let _%lp187550%_ ((_%rest187552%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest187553187561%_ _%rest187552%_)
                                 (_%else187555187569%_ (lambda () '#f))
                                 (_%K187557187575%_
                                  (lambda (_%rest187572%_ _%sys187573%_)
                                    (if (string-prefix?
                                         _%sys187573%_
                                         _%sys-type-str187548%_)
                                        _%sys187573%_
                                        (_%lp187550%_ _%rest187572%_)))))
                            (if (pair? _%rest187553187561%_)
                                (let ((_%hd187558187578%_
                                       (##car _%rest187553187561%_))
                                      (_%tl187559187580%_
                                       (##cdr _%rest187553187561%_)))
                                  (let* ((_%sys187583%_ _%hd187558187578%_)
                                         (_%rest187585%_ _%tl187559187580%_))
                                    (_%K187557187575%_
                                     _%rest187585%_
                                     _%sys187583%_)))
                                (_%else187555187569%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self187476%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self187476%_)
            (let* ((_%g187489187501%_ (system-type))
                   (_%else187491187509%_ (lambda () '#!void))
                   (_%K187493187522%_
                    (lambda (_%sys-type187512%_
                             _%sys-vendor187513%_
                             _%sys-cpu187514%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu187514%_
                       '#f
                       '0
                       _%self187476%_)
                      (gx#core-bind-feature!__%
                       _%sys-type187512%_
                       '#f
                       '0
                       _%self187476%_)
                      (if (_%linux-variant?187487%_ _%sys-type187512%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self187476%_)
                          (let ((_%$e187517%_
                                 (_%bsd-variant187488%_ _%sys-type187512%_)))
                            (if _%$e187517%_
                                ((lambda (_%sys-prefix187520%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self187476%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix187520%_)
                                    '#f
                                    '0
                                    _%self187476%_))
                                 _%$e187517%_)
                                '#!void))))))
              (if (pair? _%g187489187501%_)
                  (let ((_%hd187494187525%_ (##car _%g187489187501%_))
                        (_%tl187495187527%_ (##cdr _%g187489187501%_)))
                    (let ((_%sys-cpu187530%_ _%hd187494187525%_))
                      (if (pair? _%tl187495187527%_)
                          (let ((_%hd187496187532%_ (##car _%tl187495187527%_))
                                (_%tl187497187534%_
                                 (##cdr _%tl187495187527%_)))
                            (let ((_%sys-vendor187537%_ _%hd187496187532%_))
                              (if (pair? _%tl187497187534%_)
                                  (let ((_%hd187498187539%_
                                         (##car _%tl187497187534%_))
                                        (_%tl187499187541%_
                                         (##cdr _%tl187497187534%_)))
                                    (let ((_%sys-type187544%_
                                           _%hd187498187539%_))
                                      (if (null? _%tl187499187541%_)
                                          (_%K187493187522%_
                                           _%sys-type187544%_
                                           _%sys-vendor187537%_
                                           _%sys-cpu187530%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self187476%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
