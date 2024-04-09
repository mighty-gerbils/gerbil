(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712697256)
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
      (lambda (_%self127424%_ _%bind?127425%_)
        (let ((_%self127428%_ _%self127424%_))
          (if (##fx< '2 (##structure-length _%self127428%_))
              (begin
                (##unchecked-structure-set! _%self127428%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self127428%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self127428%_
                     '2
                     (##vector-length _%self127428%_)))
          (if _%bind?127425%_
              (begin
                (let ((__method127483
                       (__method-ref
                        _%self127428%_
                        'bind-core-syntax-expanders!)))
                  (if __method127483
                      (__method127483 _%self127428%_)
                      (error '"Missing method"
                             _%self127428%_
                             'bind-core-syntax-expanders!)))
                (let ((__method127484
                       (__method-ref
                        _%self127428%_
                        'bind-core-macro-expanders!)))
                  (if __method127484
                      (__method127484 _%self127428%_)
                      (error '"Missing method"
                             _%self127428%_
                             'bind-core-macro-expanders!)))
                (let ((__method127485
                       (__method-ref _%self127428%_ 'bind-core-features!)))
                  (if __method127485
                      (__method127485 _%self127428%_)
                      (error '"Missing method"
                             _%self127428%_
                             'bind-core-features!))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self127441%_)
        (let ((_%bind?127443%_ '#t))
          (gx#root-context:::init!__% _%self127441%_ _%bind?127443%_))))
    (define gx#root-context:::init!
      (lambda _g127488_
        (let ((_g127487_ (##length _g127488_)))
          (cond ((##fx= _g127487_ 1)
                 (apply gx#root-context:::init!__0 _g127488_))
                ((##fx= _g127487_ 2)
                 (apply gx#root-context:::init!__% _g127488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g127488_))))))
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self127269%_ _%super127270%_)
        (let* ((_%self127273%_ _%self127269%_)
               (_%super127289%_
                (let ((_%$e127283%_ _%super127270%_))
                  (if _%$e127283%_
                      _%$e127283%_
                      (let ((_%$e127286%_ (gx#core-context-root__0)))
                        (if _%$e127286%_
                            _%$e127286%_
                            (let ((__obj127486
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init! __obj127486)
                              __obj127486)))))))
          (if (##fx< '5 (##structure-length _%self127273%_))
              (begin
                (##unchecked-structure-set! _%self127273%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self127273%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127273%_
                 _%super127289%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self127273%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self127273%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self127273%_
                     '5
                     (##vector-length _%self127273%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self127294%_)
        (let ((_%super127296%_ '#f))
          (gx#top-context:::init!__% _%self127294%_ _%super127296%_))))
    (define gx#top-context:::init!
      (lambda _g127490_
        (let ((_g127489_ (##length _g127490_)))
          (cond ((##fx= _g127489_ 1)
                 (apply gx#top-context:::init!__0 _g127490_))
                ((##fx= _g127489_ 2)
                 (apply gx#top-context:::init!__% _g127490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g127490_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self126989%_ _%bindings126990%_)
        (let ((_%self126993%_ _%self126989%_))
          (for-each
           (lambda (_%bind127003%_)
             (let* ((_%bind127004127011%_ _%bind127003%_)
                    (_%E127006127015%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127004127011%_
                              '([id . rest]))
                       '#!void))
                    (_%K127007127124%_
                     (lambda (_%rest127018%_ _%id127019%_)
                       (gx#core-context-put!
                        _%self126993%_
                        _%id127019%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127019%_
                         _%id127019%_
                         '#f
                         (let* ((_%rest127020127031%_ _%rest127018%_)
                                (_%E127022127035%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127020127031%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K127023127100%_
                                 (lambda (_%compiler127038%_
                                          _%expander127039%_
                                          _%key127040%_)
                                   ((let* ((_%key127041127054%_ _%key127040%_)
                                           (_%E127047127058%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key127041127054%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K127052127094%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K127051127087%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K127050127079%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K127049127071%_
                                             (lambda () gx#make-special-form))
                                            (_%K127048127063%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match127046127066%_
                                                (lambda ()
                                                  (if (##eq? _%key127041127054%_
                                                             'expr:)
                                                      (_%K127048127063%_)
                                                      (_%E127047127058%_))))
                                               (_%try-match127045127074%_
                                                (lambda ()
                                                  (if (##eq? _%key127041127054%_
                                                             'special:)
                                                      (_%K127049127071%_)
                                                      (_%try-match127046127066%_))))
                                               (_%try-match127044127082%_
                                                (lambda ()
                                                  (if (##eq? _%key127041127054%_
                                                             'define:)
                                                      (_%K127050127079%_)
                                                      (_%try-match127045127074%_))))
                                               (_%try-match127043127090%_
                                                (lambda ()
                                                  (if (##eq? _%key127041127054%_
                                                             'module:)
                                                      (_%K127051127087%_)
                                                      (_%try-match127044127082%_)))))
                                          (if (##eq? _%key127041127054%_ 'top:)
                                              (_%K127052127094%_)
                                              (_%try-match127043127090%_)))))
                                    _%expander127039%_
                                    _%id127019%_
                                    (let ((_%$e127097%_ _%compiler127038%_))
                                      (if _%$e127097%_
                                          _%$e127097%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest127020127031%_)
                               (let ((_%hd127024127103%_
                                      (##car _%rest127020127031%_))
                                     (_%tl127025127105%_
                                      (##cdr _%rest127020127031%_)))
                                 (let ((_%key127108%_ _%hd127024127103%_))
                                   (if (##pair? _%tl127025127105%_)
                                       (let ((_%hd127026127110%_
                                              (##car _%tl127025127105%_))
                                             (_%tl127027127112%_
                                              (##cdr _%tl127025127105%_)))
                                         (let ((_%expander127115%_
                                                _%hd127026127110%_))
                                           (if (##pair? _%tl127027127112%_)
                                               (let ((_%hd127028127117%_
                                                      (##car _%tl127027127112%_))
                                                     (_%tl127029127119%_
                                                      (##cdr _%tl127027127112%_)))
                                                 (let ((_%compiler127122%_
                                                        _%hd127028127117%_))
                                                   (if (##null? _%tl127029127119%_)
                                                       (_%K127023127100%_
                                                        _%compiler127122%_
                                                        _%expander127115%_
                                                        _%key127108%_)
                                                       (_%E127022127035%_))))
                                               (_%E127022127035%_))))
                                       (_%E127022127035%_))))
                               (_%E127022127035%_))))))))
               (if (##pair? _%bind127004127011%_)
                   (let ((_%hd127008127127%_ (##car _%bind127004127011%_))
                         (_%tl127009127129%_ (##cdr _%bind127004127011%_)))
                     (let* ((_%id127132%_ _%hd127008127127%_)
                            (_%rest127134%_ _%tl127009127129%_))
                       (_%K127007127124%_ _%rest127134%_ _%id127132%_)))
                   (_%E127006127015%_))))
           _%bindings126990%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127139%_)
        (let ((_%bindings127141%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127139%_
           _%bindings127141%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g127492_
        (let ((_g127491_ (##length _g127492_)))
          (cond ((##fx= _g127491_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g127492_))
                ((##fx= _g127491_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g127492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g127492_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self126750%_ _%bindings126751%_)
        (let ((_%self126754%_ _%self126750%_))
          (for-each
           (lambda (_%bind126764%_)
             (let* ((_%bind126765126772%_ _%bind126764%_)
                    (_%E126767126776%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind126765126772%_
                              '([id . rest]))
                       '#!void))
                    (_%K126768126844%_
                     (lambda (_%rest126779%_ _%id126780%_)
                       (gx#core-context-put!
                        _%self126754%_
                        _%id126780%_
                        (##structure
                         gx#syntax-binding::t
                         _%id126780%_
                         _%id126780%_
                         '#f
                         (let* ((_%rest126781126796%_ _%rest126779%_)
                                (_%E126785126800%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest126781126796%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K126790126829%_
                                  (lambda (_%core-id126827%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id126827%_)))
                                 (_%K126787126814%_
                                  (lambda (_%proc126812%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc126812%_)))
                                 (_%K126786126805%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id126780%_))))
                             (let ((_%try-match126784126808%_
                                    (lambda ()
                                      (if (##null? _%rest126781126796%_)
                                          (_%K126786126805%_)
                                          (_%E126785126800%_)))))
                               (if (##pair? _%rest126781126796%_)
                                   (let ((_%tl126792126834%_
                                          (##cdr _%rest126781126796%_))
                                         (_%hd126791126832%_
                                          (##car _%rest126781126796%_)))
                                     (if (##eq? _%hd126791126832%_ '=>)
                                         (if (##pair? _%tl126792126834%_)
                                             (let ((_%tl126794126839%_
                                                    (##cdr _%tl126792126834%_))
                                                   (_%hd126793126837%_
                                                    (##car _%tl126792126834%_)))
                                               (if (##null? _%tl126794126839%_)
                                                   (let ((_%core-id126842%_
                                                          _%hd126793126837%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id126842%_))
                                                   (_%E126785126800%_)))
                                             (if (##null? _%tl126792126834%_)
                                                 (let ((_%proc126822%_
                                                        _%hd126791126832%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc126822%_))
                                                 (_%E126785126800%_)))
                                         (if (##null? _%tl126792126834%_)
                                             (let ((_%proc126822%_
                                                    _%hd126791126832%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc126822%_))
                                             (_%E126785126800%_))))
                                   (_%try-match126784126808%_))))))))))
               (if (##pair? _%bind126765126772%_)
                   (let ((_%hd126769126847%_ (##car _%bind126765126772%_))
                         (_%tl126770126849%_ (##cdr _%bind126765126772%_)))
                     (let* ((_%id126852%_ _%hd126769126847%_)
                            (_%rest126854%_ _%tl126770126849%_))
                       (_%K126768126844%_ _%rest126854%_ _%id126852%_)))
                   (_%E126767126776%_))))
           _%bindings126751%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self126859%_)
        (let ((_%bindings126861%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self126859%_
           _%bindings126861%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g127494_
        (let ((_g127493_ (##length _g127494_)))
          (cond ((##fx= _g127493_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g127494_))
                ((##fx= _g127493_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g127494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g127494_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self126482%_)
        (let ((_%self126485%_ _%self126482%_))
          (letrec ((_%linux-variant?126495%_
                    (lambda (_%sys-type126595%_)
                      (let* ((_%g126596126604%_
                              (__string-split
                               (symbol->string _%sys-type126595%_)
                               '#\-))
                             (_%else126598126612%_ (lambda () '#f))
                             (_%K126600126617%_
                              (lambda (_%rest126615%_)
                                (not (null? _%rest126615%_)))))
                        (if (##pair? _%g126596126604%_)
                            (let ((_%hd126601126620%_
                                   (##car _%g126596126604%_))
                                  (_%tl126602126622%_
                                   (##cdr _%g126596126604%_)))
                              (if (equal? _%hd126601126620%_ '"linux")
                                  (let ((_%rest126625%_ _%tl126602126622%_))
                                    (_%K126600126617%_ _%rest126625%_))
                                  (_%else126598126612%_)))
                            (_%else126598126612%_)))))
                   (_%bsd-variant126496%_
                    (lambda (_%sys-type126554%_)
                      (let ((_%sys-type-str126556%_
                             (symbol->string _%sys-type126554%_)))
                        (let _%lp126558%_ ((_%rest126560%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest126561126569%_ _%rest126560%_)
                                 (_%else126563126577%_ (lambda () '#f))
                                 (_%K126565126583%_
                                  (lambda (_%rest126580%_ _%sys126581%_)
                                    (if (string-prefix?
                                         _%sys126581%_
                                         _%sys-type-str126556%_)
                                        _%sys126581%_
                                        (_%lp126558%_ _%rest126580%_)))))
                            (if (##pair? _%rest126561126569%_)
                                (let ((_%hd126566126586%_
                                       (##car _%rest126561126569%_))
                                      (_%tl126567126588%_
                                       (##cdr _%rest126561126569%_)))
                                  (let* ((_%sys126591%_ _%hd126566126586%_)
                                         (_%rest126593%_ _%tl126567126588%_))
                                    (_%K126565126583%_
                                     _%rest126593%_
                                     _%sys126591%_)))
                                (_%else126563126577%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self126485%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self126485%_)
            (let* ((_%g126497126509%_ (system-type))
                   (_%else126499126517%_ (lambda () '#!void))
                   (_%K126501126530%_
                    (lambda (_%sys-type126520%_
                             _%sys-vendor126521%_
                             _%sys-cpu126522%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu126522%_
                       '#f
                       '0
                       _%self126485%_)
                      (gx#core-bind-feature!__%
                       _%sys-type126520%_
                       '#f
                       '0
                       _%self126485%_)
                      (if (_%linux-variant?126495%_ _%sys-type126520%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self126485%_)
                          (let ((_%$e126525%_
                                 (_%bsd-variant126496%_ _%sys-type126520%_)))
                            (if _%$e126525%_
                                ((lambda (_%sys-prefix126528%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self126485%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix126528%_)
                                    '#f
                                    '0
                                    _%self126485%_))
                                 _%$e126525%_)
                                '#!void))))))
              (if (##pair? _%g126497126509%_)
                  (let ((_%hd126502126533%_ (##car _%g126497126509%_))
                        (_%tl126503126535%_ (##cdr _%g126497126509%_)))
                    (let ((_%sys-cpu126538%_ _%hd126502126533%_))
                      (if (##pair? _%tl126503126535%_)
                          (let ((_%hd126504126540%_ (##car _%tl126503126535%_))
                                (_%tl126505126542%_
                                 (##cdr _%tl126503126535%_)))
                            (let ((_%sys-vendor126545%_ _%hd126504126540%_))
                              (if (##pair? _%tl126505126542%_)
                                  (let ((_%hd126506126547%_
                                         (##car _%tl126505126542%_))
                                        (_%tl126507126549%_
                                         (##cdr _%tl126505126542%_)))
                                    (let ((_%sys-type126552%_
                                           _%hd126506126547%_))
                                      (if (##null? _%tl126507126549%_)
                                          (_%K126501126530%_
                                           _%sys-type126552%_
                                           _%sys-vendor126545%_
                                           _%sys-cpu126538%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self126485%_)
                '#!void)))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
