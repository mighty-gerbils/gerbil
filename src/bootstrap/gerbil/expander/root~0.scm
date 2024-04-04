(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712269046)
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
      (lambda (_%self128162%_ _%bind?128163%_)
        (let ((_%self128166%_ _%self128162%_))
          (if (##fx< '2 (##structure-length _%self128166%_))
              (begin
                (##unchecked-structure-set! _%self128166%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self128166%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128166%_
                     '2
                     (##vector-length _%self128166%_)))
          (if _%bind?128163%_
              (begin
                (let ((__method128221
                       (__method-ref
                        _%self128166%_
                        'bind-core-syntax-expanders!)))
                  (if __method128221
                      (__method128221 _%self128166%_)
                      (error '"Missing method"
                             _%self128166%_
                             'bind-core-syntax-expanders!)))
                (let ((__method128222
                       (__method-ref
                        _%self128166%_
                        'bind-core-macro-expanders!)))
                  (if __method128222
                      (__method128222 _%self128166%_)
                      (error '"Missing method"
                             _%self128166%_
                             'bind-core-macro-expanders!)))
                (let ((__method128223
                       (__method-ref _%self128166%_ 'bind-core-features!)))
                  (if __method128223
                      (__method128223 _%self128166%_)
                      (error '"Missing method"
                             _%self128166%_
                             'bind-core-features!))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self128179%_)
        (let ((_%bind?128181%_ '#t))
          (gx#root-context:::init!__% _%self128179%_ _%bind?128181%_))))
    (define gx#root-context:::init!
      (lambda _g128226_
        (let ((_g128225_ (##length _g128226_)))
          (cond ((##fx= _g128225_ 1)
                 (apply (lambda (_%self128179%_)
                          (gx#root-context:::init!__0 _%self128179%_))
                        _g128226_))
                ((##fx= _g128225_ 2)
                 (apply (lambda (_%self128183%_ _%bind?128184%_)
                          (gx#root-context:::init!__%
                           _%self128183%_
                           _%bind?128184%_))
                        _g128226_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g128226_))))))
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self128007%_ _%super128008%_)
        (let ()
          (let* ((_%self128011%_ _%self128007%_)
                 (_%super128027%_
                  (let ((_%$e128021%_ _%super128008%_))
                    (if _%$e128021%_
                        _%$e128021%_
                        (let ((_%$e128024%_ (gx#core-context-root__0)))
                          (if _%$e128024%_
                              _%$e128024%_
                              (let ((__obj128224
                                     (##structure gx#root-context::t '#f '#f)))
                                (gx#root-context:::init! __obj128224)
                                __obj128224)))))))
            (if (##fx< '5 (##structure-length _%self128011%_))
                (begin
                  (##unchecked-structure-set! _%self128011%_ 'top '1 '#f '#f)
                  (##unchecked-structure-set!
                   _%self128011%_
                   (make-hash-table-eq)
                   '2
                   '#f
                   '#f)
                  (##unchecked-structure-set!
                   _%self128011%_
                   _%super128027%_
                   '3
                   '#f
                   '#f)
                  (##unchecked-structure-set! _%self128011%_ '#f '4 '#f '#f)
                  (##unchecked-structure-set! _%self128011%_ '#f '5 '#f '#f)
                  '#!void)
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self128011%_
                       '5
                       (##vector-length _%self128011%_)))))))
    (define gx#top-context:::init!__0
      (lambda (_%self128032%_)
        (let ((_%super128034%_ '#f))
          (gx#top-context:::init!__% _%self128032%_ _%super128034%_))))
    (define gx#top-context:::init!
      (lambda _g128228_
        (let ((_g128227_ (##length _g128228_)))
          (cond ((##fx= _g128227_ 1)
                 (apply (lambda (_%self128032%_)
                          (gx#top-context:::init!__0 _%self128032%_))
                        _g128228_))
                ((##fx= _g128227_ 2)
                 (apply (lambda (_%self128036%_ _%super128037%_)
                          (gx#top-context:::init!__%
                           _%self128036%_
                           _%super128037%_))
                        _g128228_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g128228_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self127727%_ _%bindings127728%_)
        (let ((_%self127731%_ _%self127727%_))
          (for-each
           (lambda (_%bind127741%_)
             (let* ((_%bind127742127749%_ _%bind127741%_)
                    (_%E127744127753%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127742127749%_
                              '([id . rest]))
                       '#!void))
                    (_%K127745127862%_
                     (lambda (_%rest127756%_ _%id127757%_)
                       (gx#core-context-put!
                        _%self127731%_
                        _%id127757%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127757%_
                         _%id127757%_
                         '#f
                         (let* ((_%rest127758127769%_ _%rest127756%_)
                                (_%E127760127773%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127758127769%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K127761127838%_
                                 (lambda (_%compiler127776%_
                                          _%expander127777%_
                                          _%key127778%_)
                                   ((let* ((_%key127779127792%_ _%key127778%_)
                                           (_%E127785127796%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key127779127792%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K127790127832%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K127789127825%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K127788127817%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K127787127809%_
                                             (lambda () gx#make-special-form))
                                            (_%K127786127801%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match127784127804%_
                                                (lambda ()
                                                  (if (##eq? _%key127779127792%_
                                                             'expr:)
                                                      (_%K127786127801%_)
                                                      (_%E127785127796%_))))
                                               (_%try-match127783127812%_
                                                (lambda ()
                                                  (if (##eq? _%key127779127792%_
                                                             'special:)
                                                      (_%K127787127809%_)
                                                      (_%try-match127784127804%_))))
                                               (_%try-match127782127820%_
                                                (lambda ()
                                                  (if (##eq? _%key127779127792%_
                                                             'define:)
                                                      (_%K127788127817%_)
                                                      (_%try-match127783127812%_))))
                                               (_%try-match127781127828%_
                                                (lambda ()
                                                  (if (##eq? _%key127779127792%_
                                                             'module:)
                                                      (_%K127789127825%_)
                                                      (_%try-match127782127820%_)))))
                                          (if (##eq? _%key127779127792%_ 'top:)
                                              (_%K127790127832%_)
                                              (_%try-match127781127828%_)))))
                                    _%expander127777%_
                                    _%id127757%_
                                    (let ((_%$e127835%_ _%compiler127776%_))
                                      (if _%$e127835%_
                                          _%$e127835%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest127758127769%_)
                               (let ((_%hd127762127841%_
                                      (##car _%rest127758127769%_))
                                     (_%tl127763127843%_
                                      (##cdr _%rest127758127769%_)))
                                 (let ((_%key127846%_ _%hd127762127841%_))
                                   (if (##pair? _%tl127763127843%_)
                                       (let ((_%hd127764127848%_
                                              (##car _%tl127763127843%_))
                                             (_%tl127765127850%_
                                              (##cdr _%tl127763127843%_)))
                                         (let ((_%expander127853%_
                                                _%hd127764127848%_))
                                           (if (##pair? _%tl127765127850%_)
                                               (let ((_%hd127766127855%_
                                                      (##car _%tl127765127850%_))
                                                     (_%tl127767127857%_
                                                      (##cdr _%tl127765127850%_)))
                                                 (let ((_%compiler127860%_
                                                        _%hd127766127855%_))
                                                   (if (##null? _%tl127767127857%_)
                                                       (_%K127761127838%_
                                                        _%compiler127860%_
                                                        _%expander127853%_
                                                        _%key127846%_)
                                                       (_%E127760127773%_))))
                                               (_%E127760127773%_))))
                                       (_%E127760127773%_))))
                               (_%E127760127773%_))))))))
               (if (##pair? _%bind127742127749%_)
                   (let ((_%hd127746127865%_ (##car _%bind127742127749%_))
                         (_%tl127747127867%_ (##cdr _%bind127742127749%_)))
                     (let* ((_%id127870%_ _%hd127746127865%_)
                            (_%rest127872%_ _%tl127747127867%_))
                       (_%K127745127862%_ _%rest127872%_ _%id127870%_)))
                   (_%E127744127753%_))))
           _%bindings127728%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127877%_)
        (let ((_%bindings127879%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127877%_
           _%bindings127879%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g128230_
        (let ((_g128229_ (##length _g128230_)))
          (cond ((##fx= _g128229_ 1)
                 (apply (lambda (_%self127877%_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _%self127877%_))
                        _g128230_))
                ((##fx= _g128229_ 2)
                 (apply (lambda (_%self127881%_ _%bindings127882%_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _%self127881%_
                           _%bindings127882%_))
                        _g128230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g128230_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self127488%_ _%bindings127489%_)
        (let ((_%self127492%_ _%self127488%_))
          (for-each
           (lambda (_%bind127502%_)
             (let* ((_%bind127503127510%_ _%bind127502%_)
                    (_%E127505127514%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127503127510%_
                              '([id . rest]))
                       '#!void))
                    (_%K127506127582%_
                     (lambda (_%rest127517%_ _%id127518%_)
                       (gx#core-context-put!
                        _%self127492%_
                        _%id127518%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127518%_
                         _%id127518%_
                         '#f
                         (let* ((_%rest127519127534%_ _%rest127517%_)
                                (_%E127523127538%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127519127534%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K127528127567%_
                                  (lambda (_%core-id127565%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id127565%_)))
                                 (_%K127525127552%_
                                  (lambda (_%proc127550%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc127550%_)))
                                 (_%K127524127543%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id127518%_))))
                             (let ((_%try-match127522127546%_
                                    (lambda ()
                                      (if (##null? _%rest127519127534%_)
                                          (_%K127524127543%_)
                                          (_%E127523127538%_)))))
                               (if (##pair? _%rest127519127534%_)
                                   (let ((_%tl127530127572%_
                                          (##cdr _%rest127519127534%_))
                                         (_%hd127529127570%_
                                          (##car _%rest127519127534%_)))
                                     (if (##eq? _%hd127529127570%_ '=>)
                                         (if (##pair? _%tl127530127572%_)
                                             (let ((_%tl127532127577%_
                                                    (##cdr _%tl127530127572%_))
                                                   (_%hd127531127575%_
                                                    (##car _%tl127530127572%_)))
                                               (if (##null? _%tl127532127577%_)
                                                   (let ((_%core-id127580%_
                                                          _%hd127531127575%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id127580%_))
                                                   (_%E127523127538%_)))
                                             (if (##null? _%tl127530127572%_)
                                                 (let ((_%proc127560%_
                                                        _%hd127529127570%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc127560%_))
                                                 (_%E127523127538%_)))
                                         (if (##null? _%tl127530127572%_)
                                             (let ((_%proc127560%_
                                                    _%hd127529127570%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc127560%_))
                                             (_%E127523127538%_))))
                                   (_%try-match127522127546%_))))))))))
               (if (##pair? _%bind127503127510%_)
                   (let ((_%hd127507127585%_ (##car _%bind127503127510%_))
                         (_%tl127508127587%_ (##cdr _%bind127503127510%_)))
                     (let* ((_%id127590%_ _%hd127507127585%_)
                            (_%rest127592%_ _%tl127508127587%_))
                       (_%K127506127582%_ _%rest127592%_ _%id127590%_)))
                   (_%E127505127514%_))))
           _%bindings127489%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self127597%_)
        (let ((_%bindings127599%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self127597%_
           _%bindings127599%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g128232_
        (let ((_g128231_ (##length _g128232_)))
          (cond ((##fx= _g128231_ 1)
                 (apply (lambda (_%self127597%_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _%self127597%_))
                        _g128232_))
                ((##fx= _g128231_ 2)
                 (apply (lambda (_%self127601%_ _%bindings127602%_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _%self127601%_
                           _%bindings127602%_))
                        _g128232_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g128232_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self127220%_)
        (let ((_%self127223%_ _%self127220%_))
          (letrec ((_%linux-variant?127233%_
                    (lambda (_%sys-type127333%_)
                      (let* ((_%g127334127342%_
                              (__string-split
                               (symbol->string _%sys-type127333%_)
                               '#\-))
                             (_%else127336127350%_ (lambda () '#f))
                             (_%K127338127355%_
                              (lambda (_%rest127353%_)
                                (not (null? _%rest127353%_)))))
                        (if (##pair? _%g127334127342%_)
                            (let ((_%hd127339127358%_
                                   (##car _%g127334127342%_))
                                  (_%tl127340127360%_
                                   (##cdr _%g127334127342%_)))
                              (if (equal? _%hd127339127358%_ '"linux")
                                  (let ((_%rest127363%_ _%tl127340127360%_))
                                    (_%K127338127355%_ _%rest127363%_))
                                  (_%else127336127350%_)))
                            (_%else127336127350%_)))))
                   (_%bsd-variant127234%_
                    (lambda (_%sys-type127292%_)
                      (let ((_%sys-type-str127294%_
                             (symbol->string _%sys-type127292%_)))
                        (let _%lp127296%_ ((_%rest127298%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest127299127307%_ _%rest127298%_)
                                 (_%else127301127315%_ (lambda () '#f))
                                 (_%K127303127321%_
                                  (lambda (_%rest127318%_ _%sys127319%_)
                                    (if (string-prefix?
                                         _%sys127319%_
                                         _%sys-type-str127294%_)
                                        _%sys127319%_
                                        (_%lp127296%_ _%rest127318%_)))))
                            (if (##pair? _%rest127299127307%_)
                                (let ((_%hd127304127324%_
                                       (##car _%rest127299127307%_))
                                      (_%tl127305127326%_
                                       (##cdr _%rest127299127307%_)))
                                  (let* ((_%sys127329%_ _%hd127304127324%_)
                                         (_%rest127331%_ _%tl127305127326%_))
                                    (_%K127303127321%_
                                     _%rest127331%_
                                     _%sys127329%_)))
                                (_%else127301127315%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self127223%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self127223%_)
            (let* ((_%g127235127247%_ (system-type))
                   (_%else127237127255%_ (lambda () '#!void))
                   (_%K127239127268%_
                    (lambda (_%sys-type127258%_
                             _%sys-vendor127259%_
                             _%sys-cpu127260%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu127260%_
                       '#f
                       '0
                       _%self127223%_)
                      (gx#core-bind-feature!__%
                       _%sys-type127258%_
                       '#f
                       '0
                       _%self127223%_)
                      (if (_%linux-variant?127233%_ _%sys-type127258%_)
                          (let ()
                            (gx#core-bind-feature!__%
                             (##string->symbol '"linux")
                             '#f
                             '0
                             _%self127223%_))
                          (let ((_%$e127263%_
                                 (_%bsd-variant127234%_ _%sys-type127258%_)))
                            (if _%$e127263%_
                                ((lambda (_%sys-prefix127266%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self127223%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix127266%_)
                                    '#f
                                    '0
                                    _%self127223%_))
                                 _%$e127263%_)
                                '#!void))))))
              (if (##pair? _%g127235127247%_)
                  (let ((_%hd127240127271%_ (##car _%g127235127247%_))
                        (_%tl127241127273%_ (##cdr _%g127235127247%_)))
                    (let ((_%sys-cpu127276%_ _%hd127240127271%_))
                      (if (##pair? _%tl127241127273%_)
                          (let ((_%hd127242127278%_ (##car _%tl127241127273%_))
                                (_%tl127243127280%_
                                 (##cdr _%tl127241127273%_)))
                            (let ((_%sys-vendor127283%_ _%hd127242127278%_))
                              (if (##pair? _%tl127243127280%_)
                                  (let ((_%hd127244127285%_
                                         (##car _%tl127243127280%_))
                                        (_%tl127245127287%_
                                         (##cdr _%tl127243127280%_)))
                                    (let ((_%sys-type127290%_
                                           _%hd127244127285%_))
                                      (if (##null? _%tl127245127287%_)
                                          (_%K127239127268%_
                                           _%sys-type127290%_
                                           _%sys-vendor127283%_
                                           _%sys-cpu127276%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self127223%_)
                '#!void)))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
