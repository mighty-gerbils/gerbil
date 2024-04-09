(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712702631)
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
      (lambda (_%self127461%_ _%bind?127462%_)
        (let ((_%self127465%_ _%self127461%_))
          (if (##fx< '2 (##structure-length _%self127465%_))
              (begin
                (##unchecked-structure-set! _%self127465%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self127465%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self127465%_
                     '2
                     (##vector-length _%self127465%_)))
          (if _%bind?127462%_
              (begin
                (let ((__method127520
                       (__method-ref
                        _%self127465%_
                        'bind-core-syntax-expanders!)))
                  (if __method127520
                      (__method127520 _%self127465%_)
                      (error '"Missing method"
                             _%self127465%_
                             'bind-core-syntax-expanders!)))
                (let ((__method127521
                       (__method-ref
                        _%self127465%_
                        'bind-core-macro-expanders!)))
                  (if __method127521
                      (__method127521 _%self127465%_)
                      (error '"Missing method"
                             _%self127465%_
                             'bind-core-macro-expanders!)))
                (let ((__method127522
                       (__method-ref _%self127465%_ 'bind-core-features!)))
                  (if __method127522
                      (__method127522 _%self127465%_)
                      (error '"Missing method"
                             _%self127465%_
                             'bind-core-features!))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self127478%_)
        (let ((_%bind?127480%_ '#t))
          (gx#root-context:::init!__% _%self127478%_ _%bind?127480%_))))
    (define gx#root-context:::init!
      (lambda _g127525_
        (let ((_g127524_ (##length _g127525_)))
          (cond ((##fx= _g127524_ 1)
                 (apply gx#root-context:::init!__0 _g127525_))
                ((##fx= _g127524_ 2)
                 (apply gx#root-context:::init!__% _g127525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g127525_))))))
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self127306%_ _%super127307%_)
        (let* ((_%self127310%_ _%self127306%_)
               (_%super127326%_
                (let ((_%$e127320%_ _%super127307%_))
                  (if _%$e127320%_
                      _%$e127320%_
                      (let ((_%$e127323%_ (gx#core-context-root__0)))
                        (if _%$e127323%_
                            _%$e127323%_
                            (let ((__obj127523
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init! __obj127523)
                              __obj127523)))))))
          (if (##fx< '5 (##structure-length _%self127310%_))
              (begin
                (##unchecked-structure-set! _%self127310%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self127310%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127310%_
                 _%super127326%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self127310%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self127310%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self127310%_
                     '5
                     (##vector-length _%self127310%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self127331%_)
        (let ((_%super127333%_ '#f))
          (gx#top-context:::init!__% _%self127331%_ _%super127333%_))))
    (define gx#top-context:::init!
      (lambda _g127527_
        (let ((_g127526_ (##length _g127527_)))
          (cond ((##fx= _g127526_ 1)
                 (apply gx#top-context:::init!__0 _g127527_))
                ((##fx= _g127526_ 2)
                 (apply gx#top-context:::init!__% _g127527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g127527_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self127026%_ _%bindings127027%_)
        (let ((_%self127030%_ _%self127026%_))
          (for-each
           (lambda (_%bind127040%_)
             (let* ((_%bind127041127048%_ _%bind127040%_)
                    (_%E127043127052%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127041127048%_
                              '([id . rest]))
                       '#!void))
                    (_%K127044127161%_
                     (lambda (_%rest127055%_ _%id127056%_)
                       (gx#core-context-put!
                        _%self127030%_
                        _%id127056%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127056%_
                         _%id127056%_
                         '#f
                         (let* ((_%rest127057127068%_ _%rest127055%_)
                                (_%E127059127072%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127057127068%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K127060127137%_
                                 (lambda (_%compiler127075%_
                                          _%expander127076%_
                                          _%key127077%_)
                                   ((let* ((_%key127078127091%_ _%key127077%_)
                                           (_%E127084127095%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key127078127091%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K127089127131%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K127088127124%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K127087127116%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K127086127108%_
                                             (lambda () gx#make-special-form))
                                            (_%K127085127100%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match127083127103%_
                                                (lambda ()
                                                  (if (##eq? _%key127078127091%_
                                                             'expr:)
                                                      (_%K127085127100%_)
                                                      (_%E127084127095%_))))
                                               (_%try-match127082127111%_
                                                (lambda ()
                                                  (if (##eq? _%key127078127091%_
                                                             'special:)
                                                      (_%K127086127108%_)
                                                      (_%try-match127083127103%_))))
                                               (_%try-match127081127119%_
                                                (lambda ()
                                                  (if (##eq? _%key127078127091%_
                                                             'define:)
                                                      (_%K127087127116%_)
                                                      (_%try-match127082127111%_))))
                                               (_%try-match127080127127%_
                                                (lambda ()
                                                  (if (##eq? _%key127078127091%_
                                                             'module:)
                                                      (_%K127088127124%_)
                                                      (_%try-match127081127119%_)))))
                                          (if (##eq? _%key127078127091%_ 'top:)
                                              (_%K127089127131%_)
                                              (_%try-match127080127127%_)))))
                                    _%expander127076%_
                                    _%id127056%_
                                    (let ((_%$e127134%_ _%compiler127075%_))
                                      (if _%$e127134%_
                                          _%$e127134%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest127057127068%_)
                               (let ((_%hd127061127140%_
                                      (##car _%rest127057127068%_))
                                     (_%tl127062127142%_
                                      (##cdr _%rest127057127068%_)))
                                 (let ((_%key127145%_ _%hd127061127140%_))
                                   (if (##pair? _%tl127062127142%_)
                                       (let ((_%hd127063127147%_
                                              (##car _%tl127062127142%_))
                                             (_%tl127064127149%_
                                              (##cdr _%tl127062127142%_)))
                                         (let ((_%expander127152%_
                                                _%hd127063127147%_))
                                           (if (##pair? _%tl127064127149%_)
                                               (let ((_%hd127065127154%_
                                                      (##car _%tl127064127149%_))
                                                     (_%tl127066127156%_
                                                      (##cdr _%tl127064127149%_)))
                                                 (let ((_%compiler127159%_
                                                        _%hd127065127154%_))
                                                   (if (##null? _%tl127066127156%_)
                                                       (_%K127060127137%_
                                                        _%compiler127159%_
                                                        _%expander127152%_
                                                        _%key127145%_)
                                                       (_%E127059127072%_))))
                                               (_%E127059127072%_))))
                                       (_%E127059127072%_))))
                               (_%E127059127072%_))))))))
               (if (##pair? _%bind127041127048%_)
                   (let ((_%hd127045127164%_ (##car _%bind127041127048%_))
                         (_%tl127046127166%_ (##cdr _%bind127041127048%_)))
                     (let* ((_%id127169%_ _%hd127045127164%_)
                            (_%rest127171%_ _%tl127046127166%_))
                       (_%K127044127161%_ _%rest127171%_ _%id127169%_)))
                   (_%E127043127052%_))))
           _%bindings127027%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127176%_)
        (let ((_%bindings127178%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127176%_
           _%bindings127178%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g127529_
        (let ((_g127528_ (##length _g127529_)))
          (cond ((##fx= _g127528_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g127529_))
                ((##fx= _g127528_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g127529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g127529_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self126787%_ _%bindings126788%_)
        (let ((_%self126791%_ _%self126787%_))
          (for-each
           (lambda (_%bind126801%_)
             (let* ((_%bind126802126809%_ _%bind126801%_)
                    (_%E126804126813%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind126802126809%_
                              '([id . rest]))
                       '#!void))
                    (_%K126805126881%_
                     (lambda (_%rest126816%_ _%id126817%_)
                       (gx#core-context-put!
                        _%self126791%_
                        _%id126817%_
                        (##structure
                         gx#syntax-binding::t
                         _%id126817%_
                         _%id126817%_
                         '#f
                         (let* ((_%rest126818126833%_ _%rest126816%_)
                                (_%E126822126837%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest126818126833%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K126827126866%_
                                  (lambda (_%core-id126864%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id126864%_)))
                                 (_%K126824126851%_
                                  (lambda (_%proc126849%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc126849%_)))
                                 (_%K126823126842%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id126817%_))))
                             (let ((_%try-match126821126845%_
                                    (lambda ()
                                      (if (##null? _%rest126818126833%_)
                                          (_%K126823126842%_)
                                          (_%E126822126837%_)))))
                               (if (##pair? _%rest126818126833%_)
                                   (let ((_%tl126829126871%_
                                          (##cdr _%rest126818126833%_))
                                         (_%hd126828126869%_
                                          (##car _%rest126818126833%_)))
                                     (if (##eq? _%hd126828126869%_ '=>)
                                         (if (##pair? _%tl126829126871%_)
                                             (let ((_%tl126831126876%_
                                                    (##cdr _%tl126829126871%_))
                                                   (_%hd126830126874%_
                                                    (##car _%tl126829126871%_)))
                                               (if (##null? _%tl126831126876%_)
                                                   (let ((_%core-id126879%_
                                                          _%hd126830126874%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id126879%_))
                                                   (_%E126822126837%_)))
                                             (if (##null? _%tl126829126871%_)
                                                 (let ((_%proc126859%_
                                                        _%hd126828126869%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc126859%_))
                                                 (_%E126822126837%_)))
                                         (if (##null? _%tl126829126871%_)
                                             (let ((_%proc126859%_
                                                    _%hd126828126869%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc126859%_))
                                             (_%E126822126837%_))))
                                   (_%try-match126821126845%_))))))))))
               (if (##pair? _%bind126802126809%_)
                   (let ((_%hd126806126884%_ (##car _%bind126802126809%_))
                         (_%tl126807126886%_ (##cdr _%bind126802126809%_)))
                     (let* ((_%id126889%_ _%hd126806126884%_)
                            (_%rest126891%_ _%tl126807126886%_))
                       (_%K126805126881%_ _%rest126891%_ _%id126889%_)))
                   (_%E126804126813%_))))
           _%bindings126788%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self126896%_)
        (let ((_%bindings126898%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self126896%_
           _%bindings126898%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g127531_
        (let ((_g127530_ (##length _g127531_)))
          (cond ((##fx= _g127530_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g127531_))
                ((##fx= _g127530_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g127531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g127531_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self126519%_)
        (let ((_%self126522%_ _%self126519%_))
          (letrec ((_%linux-variant?126532%_
                    (lambda (_%sys-type126632%_)
                      (let* ((_%g126633126641%_
                              (__string-split
                               (symbol->string _%sys-type126632%_)
                               '#\-))
                             (_%else126635126649%_ (lambda () '#f))
                             (_%K126637126654%_
                              (lambda (_%rest126652%_)
                                (not (null? _%rest126652%_)))))
                        (if (##pair? _%g126633126641%_)
                            (let ((_%hd126638126657%_
                                   (##car _%g126633126641%_))
                                  (_%tl126639126659%_
                                   (##cdr _%g126633126641%_)))
                              (if (equal? _%hd126638126657%_ '"linux")
                                  (let ((_%rest126662%_ _%tl126639126659%_))
                                    (_%K126637126654%_ _%rest126662%_))
                                  (_%else126635126649%_)))
                            (_%else126635126649%_)))))
                   (_%bsd-variant126533%_
                    (lambda (_%sys-type126591%_)
                      (let ((_%sys-type-str126593%_
                             (symbol->string _%sys-type126591%_)))
                        (let _%lp126595%_ ((_%rest126597%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest126598126606%_ _%rest126597%_)
                                 (_%else126600126614%_ (lambda () '#f))
                                 (_%K126602126620%_
                                  (lambda (_%rest126617%_ _%sys126618%_)
                                    (if (string-prefix?
                                         _%sys126618%_
                                         _%sys-type-str126593%_)
                                        _%sys126618%_
                                        (_%lp126595%_ _%rest126617%_)))))
                            (if (##pair? _%rest126598126606%_)
                                (let ((_%hd126603126623%_
                                       (##car _%rest126598126606%_))
                                      (_%tl126604126625%_
                                       (##cdr _%rest126598126606%_)))
                                  (let* ((_%sys126628%_ _%hd126603126623%_)
                                         (_%rest126630%_ _%tl126604126625%_))
                                    (_%K126602126620%_
                                     _%rest126630%_
                                     _%sys126628%_)))
                                (_%else126600126614%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self126522%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self126522%_)
            (let* ((_%g126534126546%_ (system-type))
                   (_%else126536126554%_ (lambda () '#!void))
                   (_%K126538126567%_
                    (lambda (_%sys-type126557%_
                             _%sys-vendor126558%_
                             _%sys-cpu126559%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu126559%_
                       '#f
                       '0
                       _%self126522%_)
                      (gx#core-bind-feature!__%
                       _%sys-type126557%_
                       '#f
                       '0
                       _%self126522%_)
                      (if (_%linux-variant?126532%_ _%sys-type126557%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self126522%_)
                          (let ((_%$e126562%_
                                 (_%bsd-variant126533%_ _%sys-type126557%_)))
                            (if _%$e126562%_
                                ((lambda (_%sys-prefix126565%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self126522%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix126565%_)
                                    '#f
                                    '0
                                    _%self126522%_))
                                 _%$e126562%_)
                                '#!void))))))
              (if (##pair? _%g126534126546%_)
                  (let ((_%hd126539126570%_ (##car _%g126534126546%_))
                        (_%tl126540126572%_ (##cdr _%g126534126546%_)))
                    (let ((_%sys-cpu126575%_ _%hd126539126570%_))
                      (if (##pair? _%tl126540126572%_)
                          (let ((_%hd126541126577%_ (##car _%tl126540126572%_))
                                (_%tl126542126579%_
                                 (##cdr _%tl126540126572%_)))
                            (let ((_%sys-vendor126582%_ _%hd126541126577%_))
                              (if (##pair? _%tl126542126579%_)
                                  (let ((_%hd126543126584%_
                                         (##car _%tl126542126579%_))
                                        (_%tl126544126586%_
                                         (##cdr _%tl126542126579%_)))
                                    (let ((_%sys-type126589%_
                                           _%hd126543126584%_))
                                      (if (##null? _%tl126544126586%_)
                                          (_%K126538126567%_
                                           _%sys-type126589%_
                                           _%sys-vendor126582%_
                                           _%sys-cpu126575%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self126522%_)
                '#!void)))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
