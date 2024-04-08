(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712602656)
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
      (lambda (_%self127399%_ _%bind?127400%_)
        (let ((_%self127403%_ _%self127399%_))
          (if (##fx< '2 (##structure-length _%self127403%_))
              (begin
                (##unchecked-structure-set! _%self127403%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self127403%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self127403%_
                     '2
                     (##vector-length _%self127403%_)))
          (if _%bind?127400%_
              (begin
                (let ((__method127458
                       (__method-ref
                        _%self127403%_
                        'bind-core-syntax-expanders!)))
                  (if __method127458
                      (__method127458 _%self127403%_)
                      (error '"Missing method"
                             _%self127403%_
                             'bind-core-syntax-expanders!)))
                (let ((__method127459
                       (__method-ref
                        _%self127403%_
                        'bind-core-macro-expanders!)))
                  (if __method127459
                      (__method127459 _%self127403%_)
                      (error '"Missing method"
                             _%self127403%_
                             'bind-core-macro-expanders!)))
                (let ((__method127460
                       (__method-ref _%self127403%_ 'bind-core-features!)))
                  (if __method127460
                      (__method127460 _%self127403%_)
                      (error '"Missing method"
                             _%self127403%_
                             'bind-core-features!))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self127416%_)
        (let ((_%bind?127418%_ '#t))
          (gx#root-context:::init!__% _%self127416%_ _%bind?127418%_))))
    (define gx#root-context:::init!
      (lambda _g127463_
        (let ((_g127462_ (##length _g127463_)))
          (cond ((##fx= _g127462_ 1)
                 (apply gx#root-context:::init!__0 _g127463_))
                ((##fx= _g127462_ 2)
                 (apply gx#root-context:::init!__% _g127463_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g127463_))))))
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self127244%_ _%super127245%_)
        (let* ((_%self127248%_ _%self127244%_)
               (_%super127264%_
                (let ((_%$e127258%_ _%super127245%_))
                  (if _%$e127258%_
                      _%$e127258%_
                      (let ((_%$e127261%_ (gx#core-context-root__0)))
                        (if _%$e127261%_
                            _%$e127261%_
                            (let ((__obj127461
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init! __obj127461)
                              __obj127461)))))))
          (if (##fx< '5 (##structure-length _%self127248%_))
              (begin
                (##unchecked-structure-set! _%self127248%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self127248%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127248%_
                 _%super127264%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self127248%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self127248%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self127248%_
                     '5
                     (##vector-length _%self127248%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self127269%_)
        (let ((_%super127271%_ '#f))
          (gx#top-context:::init!__% _%self127269%_ _%super127271%_))))
    (define gx#top-context:::init!
      (lambda _g127465_
        (let ((_g127464_ (##length _g127465_)))
          (cond ((##fx= _g127464_ 1)
                 (apply gx#top-context:::init!__0 _g127465_))
                ((##fx= _g127464_ 2)
                 (apply gx#top-context:::init!__% _g127465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g127465_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self126964%_ _%bindings126965%_)
        (let ((_%self126968%_ _%self126964%_))
          (for-each
           (lambda (_%bind126978%_)
             (let* ((_%bind126979126986%_ _%bind126978%_)
                    (_%E126981126990%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind126979126986%_
                              '([id . rest]))
                       '#!void))
                    (_%K126982127099%_
                     (lambda (_%rest126993%_ _%id126994%_)
                       (gx#core-context-put!
                        _%self126968%_
                        _%id126994%_
                        (##structure
                         gx#syntax-binding::t
                         _%id126994%_
                         _%id126994%_
                         '#f
                         (let* ((_%rest126995127006%_ _%rest126993%_)
                                (_%E126997127010%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest126995127006%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K126998127075%_
                                 (lambda (_%compiler127013%_
                                          _%expander127014%_
                                          _%key127015%_)
                                   ((let* ((_%key127016127029%_ _%key127015%_)
                                           (_%E127022127033%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key127016127029%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K127027127069%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K127026127062%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K127025127054%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K127024127046%_
                                             (lambda () gx#make-special-form))
                                            (_%K127023127038%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match127021127041%_
                                                (lambda ()
                                                  (if (##eq? _%key127016127029%_
                                                             'expr:)
                                                      (_%K127023127038%_)
                                                      (_%E127022127033%_))))
                                               (_%try-match127020127049%_
                                                (lambda ()
                                                  (if (##eq? _%key127016127029%_
                                                             'special:)
                                                      (_%K127024127046%_)
                                                      (_%try-match127021127041%_))))
                                               (_%try-match127019127057%_
                                                (lambda ()
                                                  (if (##eq? _%key127016127029%_
                                                             'define:)
                                                      (_%K127025127054%_)
                                                      (_%try-match127020127049%_))))
                                               (_%try-match127018127065%_
                                                (lambda ()
                                                  (if (##eq? _%key127016127029%_
                                                             'module:)
                                                      (_%K127026127062%_)
                                                      (_%try-match127019127057%_)))))
                                          (if (##eq? _%key127016127029%_ 'top:)
                                              (_%K127027127069%_)
                                              (_%try-match127018127065%_)))))
                                    _%expander127014%_
                                    _%id126994%_
                                    (let ((_%$e127072%_ _%compiler127013%_))
                                      (if _%$e127072%_
                                          _%$e127072%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest126995127006%_)
                               (let ((_%hd126999127078%_
                                      (##car _%rest126995127006%_))
                                     (_%tl127000127080%_
                                      (##cdr _%rest126995127006%_)))
                                 (let ((_%key127083%_ _%hd126999127078%_))
                                   (if (##pair? _%tl127000127080%_)
                                       (let ((_%hd127001127085%_
                                              (##car _%tl127000127080%_))
                                             (_%tl127002127087%_
                                              (##cdr _%tl127000127080%_)))
                                         (let ((_%expander127090%_
                                                _%hd127001127085%_))
                                           (if (##pair? _%tl127002127087%_)
                                               (let ((_%hd127003127092%_
                                                      (##car _%tl127002127087%_))
                                                     (_%tl127004127094%_
                                                      (##cdr _%tl127002127087%_)))
                                                 (let ((_%compiler127097%_
                                                        _%hd127003127092%_))
                                                   (if (##null? _%tl127004127094%_)
                                                       (_%K126998127075%_
                                                        _%compiler127097%_
                                                        _%expander127090%_
                                                        _%key127083%_)
                                                       (_%E126997127010%_))))
                                               (_%E126997127010%_))))
                                       (_%E126997127010%_))))
                               (_%E126997127010%_))))))))
               (if (##pair? _%bind126979126986%_)
                   (let ((_%hd126983127102%_ (##car _%bind126979126986%_))
                         (_%tl126984127104%_ (##cdr _%bind126979126986%_)))
                     (let* ((_%id127107%_ _%hd126983127102%_)
                            (_%rest127109%_ _%tl126984127104%_))
                       (_%K126982127099%_ _%rest127109%_ _%id127107%_)))
                   (_%E126981126990%_))))
           _%bindings126965%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127114%_)
        (let ((_%bindings127116%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127114%_
           _%bindings127116%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g127467_
        (let ((_g127466_ (##length _g127467_)))
          (cond ((##fx= _g127466_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g127467_))
                ((##fx= _g127466_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g127467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g127467_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self126725%_ _%bindings126726%_)
        (let ((_%self126729%_ _%self126725%_))
          (for-each
           (lambda (_%bind126739%_)
             (let* ((_%bind126740126747%_ _%bind126739%_)
                    (_%E126742126751%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind126740126747%_
                              '([id . rest]))
                       '#!void))
                    (_%K126743126819%_
                     (lambda (_%rest126754%_ _%id126755%_)
                       (gx#core-context-put!
                        _%self126729%_
                        _%id126755%_
                        (##structure
                         gx#syntax-binding::t
                         _%id126755%_
                         _%id126755%_
                         '#f
                         (let* ((_%rest126756126771%_ _%rest126754%_)
                                (_%E126760126775%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest126756126771%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K126765126804%_
                                  (lambda (_%core-id126802%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id126802%_)))
                                 (_%K126762126789%_
                                  (lambda (_%proc126787%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc126787%_)))
                                 (_%K126761126780%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id126755%_))))
                             (let ((_%try-match126759126783%_
                                    (lambda ()
                                      (if (##null? _%rest126756126771%_)
                                          (_%K126761126780%_)
                                          (_%E126760126775%_)))))
                               (if (##pair? _%rest126756126771%_)
                                   (let ((_%tl126767126809%_
                                          (##cdr _%rest126756126771%_))
                                         (_%hd126766126807%_
                                          (##car _%rest126756126771%_)))
                                     (if (##eq? _%hd126766126807%_ '=>)
                                         (if (##pair? _%tl126767126809%_)
                                             (let ((_%tl126769126814%_
                                                    (##cdr _%tl126767126809%_))
                                                   (_%hd126768126812%_
                                                    (##car _%tl126767126809%_)))
                                               (if (##null? _%tl126769126814%_)
                                                   (let ((_%core-id126817%_
                                                          _%hd126768126812%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id126817%_))
                                                   (_%E126760126775%_)))
                                             (if (##null? _%tl126767126809%_)
                                                 (let ((_%proc126797%_
                                                        _%hd126766126807%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc126797%_))
                                                 (_%E126760126775%_)))
                                         (if (##null? _%tl126767126809%_)
                                             (let ((_%proc126797%_
                                                    _%hd126766126807%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc126797%_))
                                             (_%E126760126775%_))))
                                   (_%try-match126759126783%_))))))))))
               (if (##pair? _%bind126740126747%_)
                   (let ((_%hd126744126822%_ (##car _%bind126740126747%_))
                         (_%tl126745126824%_ (##cdr _%bind126740126747%_)))
                     (let* ((_%id126827%_ _%hd126744126822%_)
                            (_%rest126829%_ _%tl126745126824%_))
                       (_%K126743126819%_ _%rest126829%_ _%id126827%_)))
                   (_%E126742126751%_))))
           _%bindings126726%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self126834%_)
        (let ((_%bindings126836%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self126834%_
           _%bindings126836%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g127469_
        (let ((_g127468_ (##length _g127469_)))
          (cond ((##fx= _g127468_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g127469_))
                ((##fx= _g127468_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g127469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g127469_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self126457%_)
        (let ((_%self126460%_ _%self126457%_))
          (letrec ((_%linux-variant?126470%_
                    (lambda (_%sys-type126570%_)
                      (let* ((_%g126571126579%_
                              (__string-split
                               (symbol->string _%sys-type126570%_)
                               '#\-))
                             (_%else126573126587%_ (lambda () '#f))
                             (_%K126575126592%_
                              (lambda (_%rest126590%_)
                                (not (null? _%rest126590%_)))))
                        (if (##pair? _%g126571126579%_)
                            (let ((_%hd126576126595%_
                                   (##car _%g126571126579%_))
                                  (_%tl126577126597%_
                                   (##cdr _%g126571126579%_)))
                              (if (equal? _%hd126576126595%_ '"linux")
                                  (let ((_%rest126600%_ _%tl126577126597%_))
                                    (_%K126575126592%_ _%rest126600%_))
                                  (_%else126573126587%_)))
                            (_%else126573126587%_)))))
                   (_%bsd-variant126471%_
                    (lambda (_%sys-type126529%_)
                      (let ((_%sys-type-str126531%_
                             (symbol->string _%sys-type126529%_)))
                        (let _%lp126533%_ ((_%rest126535%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest126536126544%_ _%rest126535%_)
                                 (_%else126538126552%_ (lambda () '#f))
                                 (_%K126540126558%_
                                  (lambda (_%rest126555%_ _%sys126556%_)
                                    (if (string-prefix?
                                         _%sys126556%_
                                         _%sys-type-str126531%_)
                                        _%sys126556%_
                                        (_%lp126533%_ _%rest126555%_)))))
                            (if (##pair? _%rest126536126544%_)
                                (let ((_%hd126541126561%_
                                       (##car _%rest126536126544%_))
                                      (_%tl126542126563%_
                                       (##cdr _%rest126536126544%_)))
                                  (let* ((_%sys126566%_ _%hd126541126561%_)
                                         (_%rest126568%_ _%tl126542126563%_))
                                    (_%K126540126558%_
                                     _%rest126568%_
                                     _%sys126566%_)))
                                (_%else126538126552%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self126460%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self126460%_)
            (let* ((_%g126472126484%_ (system-type))
                   (_%else126474126492%_ (lambda () '#!void))
                   (_%K126476126505%_
                    (lambda (_%sys-type126495%_
                             _%sys-vendor126496%_
                             _%sys-cpu126497%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu126497%_
                       '#f
                       '0
                       _%self126460%_)
                      (gx#core-bind-feature!__%
                       _%sys-type126495%_
                       '#f
                       '0
                       _%self126460%_)
                      (if (_%linux-variant?126470%_ _%sys-type126495%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self126460%_)
                          (let ((_%$e126500%_
                                 (_%bsd-variant126471%_ _%sys-type126495%_)))
                            (if _%$e126500%_
                                ((lambda (_%sys-prefix126503%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self126460%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix126503%_)
                                    '#f
                                    '0
                                    _%self126460%_))
                                 _%$e126500%_)
                                '#!void))))))
              (if (##pair? _%g126472126484%_)
                  (let ((_%hd126477126508%_ (##car _%g126472126484%_))
                        (_%tl126478126510%_ (##cdr _%g126472126484%_)))
                    (let ((_%sys-cpu126513%_ _%hd126477126508%_))
                      (if (##pair? _%tl126478126510%_)
                          (let ((_%hd126479126515%_ (##car _%tl126478126510%_))
                                (_%tl126480126517%_
                                 (##cdr _%tl126478126510%_)))
                            (let ((_%sys-vendor126520%_ _%hd126479126515%_))
                              (if (##pair? _%tl126480126517%_)
                                  (let ((_%hd126481126522%_
                                         (##car _%tl126480126517%_))
                                        (_%tl126482126524%_
                                         (##cdr _%tl126480126517%_)))
                                    (let ((_%sys-type126527%_
                                           _%hd126481126522%_))
                                      (if (##null? _%tl126482126524%_)
                                          (_%K126476126505%_
                                           _%sys-type126527%_
                                           _%sys-vendor126520%_
                                           _%sys-cpu126513%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self126460%_)
                '#!void)))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
