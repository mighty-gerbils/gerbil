(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712299485)
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
      (lambda (_%self128163%_ _%bind?128164%_)
        (let ((_%self128167%_ _%self128163%_))
          (if (##fx< '2 (##structure-length _%self128167%_))
              (begin
                (##unchecked-structure-set! _%self128167%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self128167%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128167%_
                     '2
                     (##vector-length _%self128167%_)))
          (if _%bind?128164%_
              (begin
                (let ((__method128222
                       (__method-ref
                        _%self128167%_
                        'bind-core-syntax-expanders!)))
                  (if __method128222
                      (__method128222 _%self128167%_)
                      (error '"Missing method"
                             _%self128167%_
                             'bind-core-syntax-expanders!)))
                (let ((__method128223
                       (__method-ref
                        _%self128167%_
                        'bind-core-macro-expanders!)))
                  (if __method128223
                      (__method128223 _%self128167%_)
                      (error '"Missing method"
                             _%self128167%_
                             'bind-core-macro-expanders!)))
                (let ((__method128224
                       (__method-ref _%self128167%_ 'bind-core-features!)))
                  (if __method128224
                      (__method128224 _%self128167%_)
                      (error '"Missing method"
                             _%self128167%_
                             'bind-core-features!))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self128180%_)
        (let ((_%bind?128182%_ '#t))
          (gx#root-context:::init!__% _%self128180%_ _%bind?128182%_))))
    (define gx#root-context:::init!
      (lambda _g128227_
        (let ((_g128226_ (##length _g128227_)))
          (cond ((##fx= _g128226_ 1)
                 (apply (lambda (_%self128180%_)
                          (gx#root-context:::init!__0 _%self128180%_))
                        _g128227_))
                ((##fx= _g128226_ 2)
                 (apply (lambda (_%self128184%_ _%bind?128185%_)
                          (gx#root-context:::init!__%
                           _%self128184%_
                           _%bind?128185%_))
                        _g128227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g128227_))))))
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self128008%_ _%super128009%_)
        (let ()
          (let* ((_%self128012%_ _%self128008%_)
                 (_%super128028%_
                  (let ((_%$e128022%_ _%super128009%_))
                    (if _%$e128022%_
                        _%$e128022%_
                        (let ((_%$e128025%_ (gx#core-context-root__0)))
                          (if _%$e128025%_
                              _%$e128025%_
                              (let ((__obj128225
                                     (##structure gx#root-context::t '#f '#f)))
                                (gx#root-context:::init! __obj128225)
                                __obj128225)))))))
            (if (##fx< '5 (##structure-length _%self128012%_))
                (begin
                  (##unchecked-structure-set! _%self128012%_ 'top '1 '#f '#f)
                  (##unchecked-structure-set!
                   _%self128012%_
                   (make-hash-table-eq)
                   '2
                   '#f
                   '#f)
                  (##unchecked-structure-set!
                   _%self128012%_
                   _%super128028%_
                   '3
                   '#f
                   '#f)
                  (##unchecked-structure-set! _%self128012%_ '#f '4 '#f '#f)
                  (##unchecked-structure-set! _%self128012%_ '#f '5 '#f '#f)
                  '#!void)
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self128012%_
                       '5
                       (##vector-length _%self128012%_)))))))
    (define gx#top-context:::init!__0
      (lambda (_%self128033%_)
        (let ((_%super128035%_ '#f))
          (gx#top-context:::init!__% _%self128033%_ _%super128035%_))))
    (define gx#top-context:::init!
      (lambda _g128229_
        (let ((_g128228_ (##length _g128229_)))
          (cond ((##fx= _g128228_ 1)
                 (apply (lambda (_%self128033%_)
                          (gx#top-context:::init!__0 _%self128033%_))
                        _g128229_))
                ((##fx= _g128228_ 2)
                 (apply (lambda (_%self128037%_ _%super128038%_)
                          (gx#top-context:::init!__%
                           _%self128037%_
                           _%super128038%_))
                        _g128229_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g128229_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self127728%_ _%bindings127729%_)
        (let ((_%self127732%_ _%self127728%_))
          (for-each
           (lambda (_%bind127742%_)
             (let* ((_%bind127743127750%_ _%bind127742%_)
                    (_%E127745127754%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127743127750%_
                              '([id . rest]))
                       '#!void))
                    (_%K127746127863%_
                     (lambda (_%rest127757%_ _%id127758%_)
                       (gx#core-context-put!
                        _%self127732%_
                        _%id127758%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127758%_
                         _%id127758%_
                         '#f
                         (let* ((_%rest127759127770%_ _%rest127757%_)
                                (_%E127761127774%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127759127770%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K127762127839%_
                                 (lambda (_%compiler127777%_
                                          _%expander127778%_
                                          _%key127779%_)
                                   ((let* ((_%key127780127793%_ _%key127779%_)
                                           (_%E127786127797%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key127780127793%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K127791127833%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K127790127826%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K127789127818%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K127788127810%_
                                             (lambda () gx#make-special-form))
                                            (_%K127787127802%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match127785127805%_
                                                (lambda ()
                                                  (if (##eq? _%key127780127793%_
                                                             'expr:)
                                                      (_%K127787127802%_)
                                                      (_%E127786127797%_))))
                                               (_%try-match127784127813%_
                                                (lambda ()
                                                  (if (##eq? _%key127780127793%_
                                                             'special:)
                                                      (_%K127788127810%_)
                                                      (_%try-match127785127805%_))))
                                               (_%try-match127783127821%_
                                                (lambda ()
                                                  (if (##eq? _%key127780127793%_
                                                             'define:)
                                                      (_%K127789127818%_)
                                                      (_%try-match127784127813%_))))
                                               (_%try-match127782127829%_
                                                (lambda ()
                                                  (if (##eq? _%key127780127793%_
                                                             'module:)
                                                      (_%K127790127826%_)
                                                      (_%try-match127783127821%_)))))
                                          (if (##eq? _%key127780127793%_ 'top:)
                                              (_%K127791127833%_)
                                              (_%try-match127782127829%_)))))
                                    _%expander127778%_
                                    _%id127758%_
                                    (let ((_%$e127836%_ _%compiler127777%_))
                                      (if _%$e127836%_
                                          _%$e127836%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest127759127770%_)
                               (let ((_%hd127763127842%_
                                      (##car _%rest127759127770%_))
                                     (_%tl127764127844%_
                                      (##cdr _%rest127759127770%_)))
                                 (let ((_%key127847%_ _%hd127763127842%_))
                                   (if (##pair? _%tl127764127844%_)
                                       (let ((_%hd127765127849%_
                                              (##car _%tl127764127844%_))
                                             (_%tl127766127851%_
                                              (##cdr _%tl127764127844%_)))
                                         (let ((_%expander127854%_
                                                _%hd127765127849%_))
                                           (if (##pair? _%tl127766127851%_)
                                               (let ((_%hd127767127856%_
                                                      (##car _%tl127766127851%_))
                                                     (_%tl127768127858%_
                                                      (##cdr _%tl127766127851%_)))
                                                 (let ((_%compiler127861%_
                                                        _%hd127767127856%_))
                                                   (if (##null? _%tl127768127858%_)
                                                       (_%K127762127839%_
                                                        _%compiler127861%_
                                                        _%expander127854%_
                                                        _%key127847%_)
                                                       (_%E127761127774%_))))
                                               (_%E127761127774%_))))
                                       (_%E127761127774%_))))
                               (_%E127761127774%_))))))))
               (if (##pair? _%bind127743127750%_)
                   (let ((_%hd127747127866%_ (##car _%bind127743127750%_))
                         (_%tl127748127868%_ (##cdr _%bind127743127750%_)))
                     (let* ((_%id127871%_ _%hd127747127866%_)
                            (_%rest127873%_ _%tl127748127868%_))
                       (_%K127746127863%_ _%rest127873%_ _%id127871%_)))
                   (_%E127745127754%_))))
           _%bindings127729%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127878%_)
        (let ((_%bindings127880%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127878%_
           _%bindings127880%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g128231_
        (let ((_g128230_ (##length _g128231_)))
          (cond ((##fx= _g128230_ 1)
                 (apply (lambda (_%self127878%_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _%self127878%_))
                        _g128231_))
                ((##fx= _g128230_ 2)
                 (apply (lambda (_%self127882%_ _%bindings127883%_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _%self127882%_
                           _%bindings127883%_))
                        _g128231_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g128231_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self127489%_ _%bindings127490%_)
        (let ((_%self127493%_ _%self127489%_))
          (for-each
           (lambda (_%bind127503%_)
             (let* ((_%bind127504127511%_ _%bind127503%_)
                    (_%E127506127515%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127504127511%_
                              '([id . rest]))
                       '#!void))
                    (_%K127507127583%_
                     (lambda (_%rest127518%_ _%id127519%_)
                       (gx#core-context-put!
                        _%self127493%_
                        _%id127519%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127519%_
                         _%id127519%_
                         '#f
                         (let* ((_%rest127520127535%_ _%rest127518%_)
                                (_%E127524127539%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127520127535%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K127529127568%_
                                  (lambda (_%core-id127566%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id127566%_)))
                                 (_%K127526127553%_
                                  (lambda (_%proc127551%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc127551%_)))
                                 (_%K127525127544%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id127519%_))))
                             (let ((_%try-match127523127547%_
                                    (lambda ()
                                      (if (##null? _%rest127520127535%_)
                                          (_%K127525127544%_)
                                          (_%E127524127539%_)))))
                               (if (##pair? _%rest127520127535%_)
                                   (let ((_%tl127531127573%_
                                          (##cdr _%rest127520127535%_))
                                         (_%hd127530127571%_
                                          (##car _%rest127520127535%_)))
                                     (if (##eq? _%hd127530127571%_ '=>)
                                         (if (##pair? _%tl127531127573%_)
                                             (let ((_%tl127533127578%_
                                                    (##cdr _%tl127531127573%_))
                                                   (_%hd127532127576%_
                                                    (##car _%tl127531127573%_)))
                                               (if (##null? _%tl127533127578%_)
                                                   (let ((_%core-id127581%_
                                                          _%hd127532127576%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id127581%_))
                                                   (_%E127524127539%_)))
                                             (if (##null? _%tl127531127573%_)
                                                 (let ((_%proc127561%_
                                                        _%hd127530127571%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc127561%_))
                                                 (_%E127524127539%_)))
                                         (if (##null? _%tl127531127573%_)
                                             (let ((_%proc127561%_
                                                    _%hd127530127571%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc127561%_))
                                             (_%E127524127539%_))))
                                   (_%try-match127523127547%_))))))))))
               (if (##pair? _%bind127504127511%_)
                   (let ((_%hd127508127586%_ (##car _%bind127504127511%_))
                         (_%tl127509127588%_ (##cdr _%bind127504127511%_)))
                     (let* ((_%id127591%_ _%hd127508127586%_)
                            (_%rest127593%_ _%tl127509127588%_))
                       (_%K127507127583%_ _%rest127593%_ _%id127591%_)))
                   (_%E127506127515%_))))
           _%bindings127490%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self127598%_)
        (let ((_%bindings127600%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self127598%_
           _%bindings127600%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g128233_
        (let ((_g128232_ (##length _g128233_)))
          (cond ((##fx= _g128232_ 1)
                 (apply (lambda (_%self127598%_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _%self127598%_))
                        _g128233_))
                ((##fx= _g128232_ 2)
                 (apply (lambda (_%self127602%_ _%bindings127603%_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _%self127602%_
                           _%bindings127603%_))
                        _g128233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g128233_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self127221%_)
        (let ((_%self127224%_ _%self127221%_))
          (letrec ((_%linux-variant?127234%_
                    (lambda (_%sys-type127334%_)
                      (let* ((_%g127335127343%_
                              (__string-split
                               (symbol->string _%sys-type127334%_)
                               '#\-))
                             (_%else127337127351%_ (lambda () '#f))
                             (_%K127339127356%_
                              (lambda (_%rest127354%_)
                                (not (null? _%rest127354%_)))))
                        (if (##pair? _%g127335127343%_)
                            (let ((_%hd127340127359%_
                                   (##car _%g127335127343%_))
                                  (_%tl127341127361%_
                                   (##cdr _%g127335127343%_)))
                              (if (equal? _%hd127340127359%_ '"linux")
                                  (let ((_%rest127364%_ _%tl127341127361%_))
                                    (_%K127339127356%_ _%rest127364%_))
                                  (_%else127337127351%_)))
                            (_%else127337127351%_)))))
                   (_%bsd-variant127235%_
                    (lambda (_%sys-type127293%_)
                      (let ((_%sys-type-str127295%_
                             (symbol->string _%sys-type127293%_)))
                        (let _%lp127297%_ ((_%rest127299%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest127300127308%_ _%rest127299%_)
                                 (_%else127302127316%_ (lambda () '#f))
                                 (_%K127304127322%_
                                  (lambda (_%rest127319%_ _%sys127320%_)
                                    (if (string-prefix?
                                         _%sys127320%_
                                         _%sys-type-str127295%_)
                                        _%sys127320%_
                                        (_%lp127297%_ _%rest127319%_)))))
                            (if (##pair? _%rest127300127308%_)
                                (let ((_%hd127305127325%_
                                       (##car _%rest127300127308%_))
                                      (_%tl127306127327%_
                                       (##cdr _%rest127300127308%_)))
                                  (let* ((_%sys127330%_ _%hd127305127325%_)
                                         (_%rest127332%_ _%tl127306127327%_))
                                    (_%K127304127322%_
                                     _%rest127332%_
                                     _%sys127330%_)))
                                (_%else127302127316%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self127224%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self127224%_)
            (let* ((_%g127236127248%_ (system-type))
                   (_%else127238127256%_ (lambda () '#!void))
                   (_%K127240127269%_
                    (lambda (_%sys-type127259%_
                             _%sys-vendor127260%_
                             _%sys-cpu127261%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu127261%_
                       '#f
                       '0
                       _%self127224%_)
                      (gx#core-bind-feature!__%
                       _%sys-type127259%_
                       '#f
                       '0
                       _%self127224%_)
                      (if (_%linux-variant?127234%_ _%sys-type127259%_)
                          (let ()
                            (gx#core-bind-feature!__%
                             (##string->symbol '"linux")
                             '#f
                             '0
                             _%self127224%_))
                          (let ((_%$e127264%_
                                 (_%bsd-variant127235%_ _%sys-type127259%_)))
                            (if _%$e127264%_
                                ((lambda (_%sys-prefix127267%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self127224%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix127267%_)
                                    '#f
                                    '0
                                    _%self127224%_))
                                 _%$e127264%_)
                                '#!void))))))
              (if (##pair? _%g127236127248%_)
                  (let ((_%hd127241127272%_ (##car _%g127236127248%_))
                        (_%tl127242127274%_ (##cdr _%g127236127248%_)))
                    (let ((_%sys-cpu127277%_ _%hd127241127272%_))
                      (if (##pair? _%tl127242127274%_)
                          (let ((_%hd127243127279%_ (##car _%tl127242127274%_))
                                (_%tl127244127281%_
                                 (##cdr _%tl127242127274%_)))
                            (let ((_%sys-vendor127284%_ _%hd127243127279%_))
                              (if (##pair? _%tl127244127281%_)
                                  (let ((_%hd127245127286%_
                                         (##car _%tl127244127281%_))
                                        (_%tl127246127288%_
                                         (##cdr _%tl127244127281%_)))
                                    (let ((_%sys-type127291%_
                                           _%hd127245127286%_))
                                      (if (##null? _%tl127246127288%_)
                                          (_%K127240127269%_
                                           _%sys-type127291%_
                                           _%sys-vendor127284%_
                                           _%sys-cpu127277%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self127224%_)
                '#!void)))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
