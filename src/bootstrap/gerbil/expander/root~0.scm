(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712696213)
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
      (lambda (_%self128188%_ _%bind?128189%_)
        (let ((_%self128192%_ _%self128188%_))
          (if (##fx< '2 (##structure-length _%self128192%_))
              (begin
                (##unchecked-structure-set! _%self128192%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self128192%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self128192%_
                     '2
                     (##vector-length _%self128192%_)))
          (if _%bind?128189%_
              (begin
                (let ((__method128247
                       (__method-ref
                        _%self128192%_
                        'bind-core-syntax-expanders!)))
                  (if __method128247
                      (__method128247 _%self128192%_)
                      (error '"Missing method"
                             _%self128192%_
                             'bind-core-syntax-expanders!)))
                (let ((__method128248
                       (__method-ref
                        _%self128192%_
                        'bind-core-macro-expanders!)))
                  (if __method128248
                      (__method128248 _%self128192%_)
                      (error '"Missing method"
                             _%self128192%_
                             'bind-core-macro-expanders!)))
                (let ((__method128249
                       (__method-ref _%self128192%_ 'bind-core-features!)))
                  (if __method128249
                      (__method128249 _%self128192%_)
                      (error '"Missing method"
                             _%self128192%_
                             'bind-core-features!))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self128205%_)
        (let ((_%bind?128207%_ '#t))
          (gx#root-context:::init!__% _%self128205%_ _%bind?128207%_))))
    (define gx#root-context:::init!
      (lambda _g128252_
        (let ((_g128251_ (##length _g128252_)))
          (cond ((##fx= _g128251_ 1)
                 (apply (lambda (_%self128205%_)
                          (gx#root-context:::init!__0 _%self128205%_))
                        _g128252_))
                ((##fx= _g128251_ 2)
                 (apply (lambda (_%self128209%_ _%bind?128210%_)
                          (gx#root-context:::init!__%
                           _%self128209%_
                           _%bind?128210%_))
                        _g128252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g128252_))))))
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self128033%_ _%super128034%_)
        (let ()
          (let* ((_%self128037%_ _%self128033%_)
                 (_%super128053%_
                  (let ((_%$e128047%_ _%super128034%_))
                    (if _%$e128047%_
                        _%$e128047%_
                        (let ((_%$e128050%_ (gx#core-context-root__0)))
                          (if _%$e128050%_
                              _%$e128050%_
                              (let ((__obj128250
                                     (##structure gx#root-context::t '#f '#f)))
                                (gx#root-context:::init! __obj128250)
                                __obj128250)))))))
            (if (##fx< '5 (##structure-length _%self128037%_))
                (begin
                  (##unchecked-structure-set! _%self128037%_ 'top '1 '#f '#f)
                  (##unchecked-structure-set!
                   _%self128037%_
                   (make-hash-table-eq)
                   '2
                   '#f
                   '#f)
                  (##unchecked-structure-set!
                   _%self128037%_
                   _%super128053%_
                   '3
                   '#f
                   '#f)
                  (##unchecked-structure-set! _%self128037%_ '#f '4 '#f '#f)
                  (##unchecked-structure-set! _%self128037%_ '#f '5 '#f '#f)
                  '#!void)
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self128037%_
                       '5
                       (##vector-length _%self128037%_)))))))
    (define gx#top-context:::init!__0
      (lambda (_%self128058%_)
        (let ((_%super128060%_ '#f))
          (gx#top-context:::init!__% _%self128058%_ _%super128060%_))))
    (define gx#top-context:::init!
      (lambda _g128254_
        (let ((_g128253_ (##length _g128254_)))
          (cond ((##fx= _g128253_ 1)
                 (apply (lambda (_%self128058%_)
                          (gx#top-context:::init!__0 _%self128058%_))
                        _g128254_))
                ((##fx= _g128253_ 2)
                 (apply (lambda (_%self128062%_ _%super128063%_)
                          (gx#top-context:::init!__%
                           _%self128062%_
                           _%super128063%_))
                        _g128254_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g128254_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self127753%_ _%bindings127754%_)
        (let ((_%self127757%_ _%self127753%_))
          (for-each
           (lambda (_%bind127767%_)
             (let* ((_%bind127768127775%_ _%bind127767%_)
                    (_%E127770127779%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127768127775%_
                              '([id . rest]))
                       '#!void))
                    (_%K127771127888%_
                     (lambda (_%rest127782%_ _%id127783%_)
                       (gx#core-context-put!
                        _%self127757%_
                        _%id127783%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127783%_
                         _%id127783%_
                         '#f
                         (let* ((_%rest127784127795%_ _%rest127782%_)
                                (_%E127786127799%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127784127795%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K127787127864%_
                                 (lambda (_%compiler127802%_
                                          _%expander127803%_
                                          _%key127804%_)
                                   ((let* ((_%key127805127818%_ _%key127804%_)
                                           (_%E127811127822%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key127805127818%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K127816127858%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K127815127851%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K127814127843%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K127813127835%_
                                             (lambda () gx#make-special-form))
                                            (_%K127812127827%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match127810127830%_
                                                (lambda ()
                                                  (if (##eq? _%key127805127818%_
                                                             'expr:)
                                                      (_%K127812127827%_)
                                                      (_%E127811127822%_))))
                                               (_%try-match127809127838%_
                                                (lambda ()
                                                  (if (##eq? _%key127805127818%_
                                                             'special:)
                                                      (_%K127813127835%_)
                                                      (_%try-match127810127830%_))))
                                               (_%try-match127808127846%_
                                                (lambda ()
                                                  (if (##eq? _%key127805127818%_
                                                             'define:)
                                                      (_%K127814127843%_)
                                                      (_%try-match127809127838%_))))
                                               (_%try-match127807127854%_
                                                (lambda ()
                                                  (if (##eq? _%key127805127818%_
                                                             'module:)
                                                      (_%K127815127851%_)
                                                      (_%try-match127808127846%_)))))
                                          (if (##eq? _%key127805127818%_ 'top:)
                                              (_%K127816127858%_)
                                              (_%try-match127807127854%_)))))
                                    _%expander127803%_
                                    _%id127783%_
                                    (let ((_%$e127861%_ _%compiler127802%_))
                                      (if _%$e127861%_
                                          _%$e127861%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest127784127795%_)
                               (let ((_%hd127788127867%_
                                      (##car _%rest127784127795%_))
                                     (_%tl127789127869%_
                                      (##cdr _%rest127784127795%_)))
                                 (let ((_%key127872%_ _%hd127788127867%_))
                                   (if (##pair? _%tl127789127869%_)
                                       (let ((_%hd127790127874%_
                                              (##car _%tl127789127869%_))
                                             (_%tl127791127876%_
                                              (##cdr _%tl127789127869%_)))
                                         (let ((_%expander127879%_
                                                _%hd127790127874%_))
                                           (if (##pair? _%tl127791127876%_)
                                               (let ((_%hd127792127881%_
                                                      (##car _%tl127791127876%_))
                                                     (_%tl127793127883%_
                                                      (##cdr _%tl127791127876%_)))
                                                 (let ((_%compiler127886%_
                                                        _%hd127792127881%_))
                                                   (if (##null? _%tl127793127883%_)
                                                       (_%K127787127864%_
                                                        _%compiler127886%_
                                                        _%expander127879%_
                                                        _%key127872%_)
                                                       (_%E127786127799%_))))
                                               (_%E127786127799%_))))
                                       (_%E127786127799%_))))
                               (_%E127786127799%_))))))))
               (if (##pair? _%bind127768127775%_)
                   (let ((_%hd127772127891%_ (##car _%bind127768127775%_))
                         (_%tl127773127893%_ (##cdr _%bind127768127775%_)))
                     (let* ((_%id127896%_ _%hd127772127891%_)
                            (_%rest127898%_ _%tl127773127893%_))
                       (_%K127771127888%_ _%rest127898%_ _%id127896%_)))
                   (_%E127770127779%_))))
           _%bindings127754%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127903%_)
        (let ((_%bindings127905%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127903%_
           _%bindings127905%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g128256_
        (let ((_g128255_ (##length _g128256_)))
          (cond ((##fx= _g128255_ 1)
                 (apply (lambda (_%self127903%_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _%self127903%_))
                        _g128256_))
                ((##fx= _g128255_ 2)
                 (apply (lambda (_%self127907%_ _%bindings127908%_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _%self127907%_
                           _%bindings127908%_))
                        _g128256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g128256_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self127514%_ _%bindings127515%_)
        (let ((_%self127518%_ _%self127514%_))
          (for-each
           (lambda (_%bind127528%_)
             (let* ((_%bind127529127536%_ _%bind127528%_)
                    (_%E127531127540%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127529127536%_
                              '([id . rest]))
                       '#!void))
                    (_%K127532127608%_
                     (lambda (_%rest127543%_ _%id127544%_)
                       (gx#core-context-put!
                        _%self127518%_
                        _%id127544%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127544%_
                         _%id127544%_
                         '#f
                         (let* ((_%rest127545127560%_ _%rest127543%_)
                                (_%E127549127564%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127545127560%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K127554127593%_
                                  (lambda (_%core-id127591%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id127591%_)))
                                 (_%K127551127578%_
                                  (lambda (_%proc127576%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc127576%_)))
                                 (_%K127550127569%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id127544%_))))
                             (let ((_%try-match127548127572%_
                                    (lambda ()
                                      (if (##null? _%rest127545127560%_)
                                          (_%K127550127569%_)
                                          (_%E127549127564%_)))))
                               (if (##pair? _%rest127545127560%_)
                                   (let ((_%tl127556127598%_
                                          (##cdr _%rest127545127560%_))
                                         (_%hd127555127596%_
                                          (##car _%rest127545127560%_)))
                                     (if (##eq? _%hd127555127596%_ '=>)
                                         (if (##pair? _%tl127556127598%_)
                                             (let ((_%tl127558127603%_
                                                    (##cdr _%tl127556127598%_))
                                                   (_%hd127557127601%_
                                                    (##car _%tl127556127598%_)))
                                               (if (##null? _%tl127558127603%_)
                                                   (let ((_%core-id127606%_
                                                          _%hd127557127601%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id127606%_))
                                                   (_%E127549127564%_)))
                                             (if (##null? _%tl127556127598%_)
                                                 (let ((_%proc127586%_
                                                        _%hd127555127596%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc127586%_))
                                                 (_%E127549127564%_)))
                                         (if (##null? _%tl127556127598%_)
                                             (let ((_%proc127586%_
                                                    _%hd127555127596%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc127586%_))
                                             (_%E127549127564%_))))
                                   (_%try-match127548127572%_))))))))))
               (if (##pair? _%bind127529127536%_)
                   (let ((_%hd127533127611%_ (##car _%bind127529127536%_))
                         (_%tl127534127613%_ (##cdr _%bind127529127536%_)))
                     (let* ((_%id127616%_ _%hd127533127611%_)
                            (_%rest127618%_ _%tl127534127613%_))
                       (_%K127532127608%_ _%rest127618%_ _%id127616%_)))
                   (_%E127531127540%_))))
           _%bindings127515%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self127623%_)
        (let ((_%bindings127625%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self127623%_
           _%bindings127625%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g128258_
        (let ((_g128257_ (##length _g128258_)))
          (cond ((##fx= _g128257_ 1)
                 (apply (lambda (_%self127623%_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _%self127623%_))
                        _g128258_))
                ((##fx= _g128257_ 2)
                 (apply (lambda (_%self127627%_ _%bindings127628%_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _%self127627%_
                           _%bindings127628%_))
                        _g128258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g128258_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self127246%_)
        (let ((_%self127249%_ _%self127246%_))
          (letrec ((_%linux-variant?127259%_
                    (lambda (_%sys-type127359%_)
                      (let* ((_%g127360127368%_
                              (__string-split
                               (symbol->string _%sys-type127359%_)
                               '#\-))
                             (_%else127362127376%_ (lambda () '#f))
                             (_%K127364127381%_
                              (lambda (_%rest127379%_)
                                (not (null? _%rest127379%_)))))
                        (if (##pair? _%g127360127368%_)
                            (let ((_%hd127365127384%_
                                   (##car _%g127360127368%_))
                                  (_%tl127366127386%_
                                   (##cdr _%g127360127368%_)))
                              (if (equal? _%hd127365127384%_ '"linux")
                                  (let ((_%rest127389%_ _%tl127366127386%_))
                                    (_%K127364127381%_ _%rest127389%_))
                                  (_%else127362127376%_)))
                            (_%else127362127376%_)))))
                   (_%bsd-variant127260%_
                    (lambda (_%sys-type127318%_)
                      (let ((_%sys-type-str127320%_
                             (symbol->string _%sys-type127318%_)))
                        (let _%lp127322%_ ((_%rest127324%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest127325127333%_ _%rest127324%_)
                                 (_%else127327127341%_ (lambda () '#f))
                                 (_%K127329127347%_
                                  (lambda (_%rest127344%_ _%sys127345%_)
                                    (if (string-prefix?
                                         _%sys127345%_
                                         _%sys-type-str127320%_)
                                        _%sys127345%_
                                        (_%lp127322%_ _%rest127344%_)))))
                            (if (##pair? _%rest127325127333%_)
                                (let ((_%hd127330127350%_
                                       (##car _%rest127325127333%_))
                                      (_%tl127331127352%_
                                       (##cdr _%rest127325127333%_)))
                                  (let* ((_%sys127355%_ _%hd127330127350%_)
                                         (_%rest127357%_ _%tl127331127352%_))
                                    (_%K127329127347%_
                                     _%rest127357%_
                                     _%sys127355%_)))
                                (_%else127327127341%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self127249%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self127249%_)
            (let* ((_%g127261127273%_ (system-type))
                   (_%else127263127281%_ (lambda () '#!void))
                   (_%K127265127294%_
                    (lambda (_%sys-type127284%_
                             _%sys-vendor127285%_
                             _%sys-cpu127286%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu127286%_
                       '#f
                       '0
                       _%self127249%_)
                      (gx#core-bind-feature!__%
                       _%sys-type127284%_
                       '#f
                       '0
                       _%self127249%_)
                      (if (_%linux-variant?127259%_ _%sys-type127284%_)
                          (let ()
                            (gx#core-bind-feature!__%
                             (##string->symbol '"linux")
                             '#f
                             '0
                             _%self127249%_))
                          (let ((_%$e127289%_
                                 (_%bsd-variant127260%_ _%sys-type127284%_)))
                            (if _%$e127289%_
                                ((lambda (_%sys-prefix127292%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self127249%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix127292%_)
                                    '#f
                                    '0
                                    _%self127249%_))
                                 _%$e127289%_)
                                '#!void))))))
              (if (##pair? _%g127261127273%_)
                  (let ((_%hd127266127297%_ (##car _%g127261127273%_))
                        (_%tl127267127299%_ (##cdr _%g127261127273%_)))
                    (let ((_%sys-cpu127302%_ _%hd127266127297%_))
                      (if (##pair? _%tl127267127299%_)
                          (let ((_%hd127268127304%_ (##car _%tl127267127299%_))
                                (_%tl127269127306%_
                                 (##cdr _%tl127267127299%_)))
                            (let ((_%sys-vendor127309%_ _%hd127268127304%_))
                              (if (##pair? _%tl127269127306%_)
                                  (let ((_%hd127270127311%_
                                         (##car _%tl127269127306%_))
                                        (_%tl127271127313%_
                                         (##cdr _%tl127269127306%_)))
                                    (let ((_%sys-type127316%_
                                           _%hd127270127311%_))
                                      (if (##null? _%tl127271127313%_)
                                          (_%K127265127294%_
                                           _%sys-type127316%_
                                           _%sys-vendor127309%_
                                           _%sys-cpu127302%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self127249%_)
                '#!void)))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
