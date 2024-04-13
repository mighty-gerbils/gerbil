(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712991653)
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
      (lambda (_%self128456129536%_ _%bind?129538%_)
        (let* ((_%self129540%_ _%self128456129536%_)
               (_%self129542%_ _%self129540%_))
          (if (##fx< '2 (##structure-length _%self129542%_))
              (begin
                (##unchecked-structure-set! _%self129542%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self129542%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129542%_
                     '2
                     (##vector-length _%self129542%_)))
          (if _%bind?129538%_
              (begin
                (let ((__method129605
                       (__method-ref
                        _%self129542%_
                        'bind-core-syntax-expanders!)))
                  (if __method129605
                      (__method129605 _%self129542%_)
                      (begin
                        (error '"Missing method"
                               _%self129542%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method129606
                       (__method-ref
                        _%self129542%_
                        'bind-core-macro-expanders!)))
                  (if __method129606
                      (__method129606 _%self129542%_)
                      (begin
                        (error '"Missing method"
                               _%self129542%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method129607
                       (__method-ref _%self129542%_ 'bind-core-features!)))
                  (if __method129607
                      (__method129607 _%self129542%_)
                      (begin
                        (error '"Missing method"
                               _%self129542%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self128456129555%_)
        (let ((_%bind?129557%_ '#t))
          (gx#root-context:::init!__% _%self128456129555%_ _%bind?129557%_))))
    (define gx#root-context:::init!
      (lambda _g129610_
        (let ((_g129609_ (##length _g129610_)))
          (cond ((##fx= _g129609_ 1)
                 (apply gx#root-context:::init!__0 _g129610_))
                ((##fx= _g129609_ 2)
                 (apply gx#root-context:::init!__% _g129610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g129610_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass129561 __method-table129562)
        (let ((__bind-core-syntax-expanders!129563
               (__make-promise
                (lambda ()
                  (let ((__method129566
                         (symbolic-table-ref
                          __method-table129562
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method129566
                        __method129566
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!129564
               (__make-promise
                (lambda ()
                  (let ((__method129567
                         (symbolic-table-ref
                          __method-table129562
                          'bind-core-features!
                          '#f)))
                    (if __method129567
                        __method129567
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!129565
               (__make-promise
                (lambda ()
                  (let ((__method129568
                         (symbolic-table-ref
                          __method-table129562
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method129568
                        __method129568
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda129534129552%_
                 (lambda (_%self128456129536%_ _%bind?129538%_)
                   (let* ((_%self129540%_ _%self128456129536%_)
                          (_%self129542%_ _%self129540%_))
                     (if (##fx< '2 (##structure-length _%self129542%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self129542%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self129542%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self129542%_
                                '2
                                (##vector-length _%self129542%_)))
                     (if _%bind?129538%_
                         (begin
                           ((force __bind-core-syntax-expanders!129563)
                            _%self129542%_)
                           ((force __bind-core-macro-expanders!129565)
                            _%self129542%_)
                           ((force __bind-core-features!129564)
                            _%self129542%_))
                         '#!void)))))
            (lambda _g129612_
              (let ((_g129611_ (##length _g129612_)))
                (cond ((##fx= _g129611_ 1)
                       (apply (lambda (_%self128456129555%_)
                                (let ((_%bind?129557%_ '#t))
                                  (_%opt-lambda129534129552%_
                                   _%self128456129555%_
                                   _%bind?129557%_)))
                              _g129612_))
                      ((##fx= _g129611_ 2)
                       (apply _%opt-lambda129534129552%_ _g129612_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g129612_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self128457129379%_ _%super129381%_)
        (let* ((_%self129383%_ _%self128457129379%_)
               (_%self129385%_ _%self129383%_)
               (_%super129401%_
                (let ((_%$e129395%_ _%super129381%_))
                  (if _%$e129395%_
                      _%$e129395%_
                      (let ((_%$e129398%_ (gx#core-context-root__0)))
                        (if _%$e129398%_
                            _%$e129398%_
                            (let ((__obj129608
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj129608)
                              __obj129608)))))))
          (if (##fx< '5 (##structure-length _%self129385%_))
              (begin
                (##unchecked-structure-set! _%self129385%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self129385%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129385%_
                 _%super129401%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129385%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self129385%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129385%_
                     '5
                     (##vector-length _%self129385%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self128457129406%_)
        (let ((_%super129408%_ '#f))
          (gx#top-context:::init!__% _%self128457129406%_ _%super129408%_))))
    (define gx#top-context:::init!
      (lambda _g129614_
        (let ((_g129613_ (##length _g129614_)))
          (cond ((##fx= _g129613_ 1)
                 (apply gx#top-context:::init!__0 _g129614_))
                ((##fx= _g129613_ 2)
                 (apply gx#top-context:::init!__% _g129614_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g129614_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self128458129097%_ _%bindings129099%_)
        (let* ((_%self129101%_ _%self128458129097%_)
               (_%self129103%_ _%self129101%_))
          (for-each
           (lambda (_%bind129113%_)
             (let* ((_%bind129114129121%_ _%bind129113%_)
                    (_%E129116129125%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind129114129121%_
                              '([id . rest]))
                       '#!void))
                    (_%K129117129234%_
                     (lambda (_%rest129128%_ _%id129129%_)
                       (gx#core-context-put!
                        _%self129103%_
                        _%id129129%_
                        (##structure
                         gx#syntax-binding::t
                         _%id129129%_
                         _%id129129%_
                         '#f
                         (let* ((_%rest129130129141%_ _%rest129128%_)
                                (_%E129132129145%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest129130129141%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K129133129210%_
                                 (lambda (_%compiler129148%_
                                          _%expander129149%_
                                          _%key129150%_)
                                   ((let* ((_%key129151129164%_ _%key129150%_)
                                           (_%E129157129168%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key129151129164%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K129162129204%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K129161129197%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K129160129189%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K129159129181%_
                                             (lambda () gx#make-special-form))
                                            (_%K129158129173%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match129156129176%_
                                                (lambda ()
                                                  (if (##eq? _%key129151129164%_
                                                             'expr:)
                                                      (_%K129158129173%_)
                                                      (_%E129157129168%_))))
                                               (_%try-match129155129184%_
                                                (lambda ()
                                                  (if (##eq? _%key129151129164%_
                                                             'special:)
                                                      (_%K129159129181%_)
                                                      (_%try-match129156129176%_))))
                                               (_%try-match129154129192%_
                                                (lambda ()
                                                  (if (##eq? _%key129151129164%_
                                                             'define:)
                                                      (_%K129160129189%_)
                                                      (_%try-match129155129184%_))))
                                               (_%try-match129153129200%_
                                                (lambda ()
                                                  (if (##eq? _%key129151129164%_
                                                             'module:)
                                                      (_%K129161129197%_)
                                                      (_%try-match129154129192%_)))))
                                          (if (##eq? _%key129151129164%_ 'top:)
                                              (_%K129162129204%_)
                                              (_%try-match129153129200%_)))))
                                    _%expander129149%_
                                    _%id129129%_
                                    (let ((_%$e129207%_ _%compiler129148%_))
                                      (if _%$e129207%_
                                          _%$e129207%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest129130129141%_)
                               (let ((_%hd129134129213%_
                                      (##car _%rest129130129141%_))
                                     (_%tl129135129215%_
                                      (##cdr _%rest129130129141%_)))
                                 (let ((_%key129218%_ _%hd129134129213%_))
                                   (if (##pair? _%tl129135129215%_)
                                       (let ((_%hd129136129220%_
                                              (##car _%tl129135129215%_))
                                             (_%tl129137129222%_
                                              (##cdr _%tl129135129215%_)))
                                         (let ((_%expander129225%_
                                                _%hd129136129220%_))
                                           (if (##pair? _%tl129137129222%_)
                                               (let ((_%hd129138129227%_
                                                      (##car _%tl129137129222%_))
                                                     (_%tl129139129229%_
                                                      (##cdr _%tl129137129222%_)))
                                                 (let ((_%compiler129232%_
                                                        _%hd129138129227%_))
                                                   (if (##null? _%tl129139129229%_)
                                                       (_%K129133129210%_
                                                        _%compiler129232%_
                                                        _%expander129225%_
                                                        _%key129218%_)
                                                       (_%E129132129145%_))))
                                               (_%E129132129145%_))))
                                       (_%E129132129145%_))))
                               (_%E129132129145%_))))))))
               (if (##pair? _%bind129114129121%_)
                   (let ((_%hd129118129237%_ (##car _%bind129114129121%_))
                         (_%tl129119129239%_ (##cdr _%bind129114129121%_)))
                     (let* ((_%id129242%_ _%hd129118129237%_)
                            (_%rest129244%_ _%tl129119129239%_))
                       (_%K129117129234%_ _%rest129244%_ _%id129242%_)))
                   (_%E129116129125%_))))
           _%bindings129099%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self128458129249%_)
        (let ((_%bindings129251%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self128458129249%_
           _%bindings129251%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g129616_
        (let ((_g129615_ (##length _g129616_)))
          (cond ((##fx= _g129615_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g129616_))
                ((##fx= _g129615_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g129616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g129616_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self128459128856%_ _%bindings128858%_)
        (let* ((_%self128860%_ _%self128459128856%_)
               (_%self128862%_ _%self128860%_))
          (for-each
           (lambda (_%bind128872%_)
             (let* ((_%bind128873128880%_ _%bind128872%_)
                    (_%E128875128884%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind128873128880%_
                              '([id . rest]))
                       '#!void))
                    (_%K128876128952%_
                     (lambda (_%rest128887%_ _%id128888%_)
                       (gx#core-context-put!
                        _%self128862%_
                        _%id128888%_
                        (##structure
                         gx#syntax-binding::t
                         _%id128888%_
                         _%id128888%_
                         '#f
                         (let* ((_%rest128889128904%_ _%rest128887%_)
                                (_%E128893128908%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest128889128904%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K128898128937%_
                                  (lambda (_%core-id128935%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id128935%_)))
                                 (_%K128895128922%_
                                  (lambda (_%proc128920%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc128920%_)))
                                 (_%K128894128913%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id128888%_))))
                             (let ((_%try-match128892128916%_
                                    (lambda ()
                                      (if (##null? _%rest128889128904%_)
                                          (_%K128894128913%_)
                                          (_%E128893128908%_)))))
                               (if (##pair? _%rest128889128904%_)
                                   (let ((_%tl128900128942%_
                                          (##cdr _%rest128889128904%_))
                                         (_%hd128899128940%_
                                          (##car _%rest128889128904%_)))
                                     (if (##eq? _%hd128899128940%_ '=>)
                                         (if (##pair? _%tl128900128942%_)
                                             (let ((_%tl128902128947%_
                                                    (##cdr _%tl128900128942%_))
                                                   (_%hd128901128945%_
                                                    (##car _%tl128900128942%_)))
                                               (if (##null? _%tl128902128947%_)
                                                   (let ((_%core-id128950%_
                                                          _%hd128901128945%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id128950%_))
                                                   (_%E128893128908%_)))
                                             (if (##null? _%tl128900128942%_)
                                                 (let ((_%proc128930%_
                                                        _%hd128899128940%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc128930%_))
                                                 (_%E128893128908%_)))
                                         (if (##null? _%tl128900128942%_)
                                             (let ((_%proc128930%_
                                                    _%hd128899128940%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc128930%_))
                                             (_%E128893128908%_))))
                                   (_%try-match128892128916%_))))))))))
               (if (##pair? _%bind128873128880%_)
                   (let ((_%hd128877128955%_ (##car _%bind128873128880%_))
                         (_%tl128878128957%_ (##cdr _%bind128873128880%_)))
                     (let* ((_%id128960%_ _%hd128877128955%_)
                            (_%rest128962%_ _%tl128878128957%_))
                       (_%K128876128952%_ _%rest128962%_ _%id128960%_)))
                   (_%E128875128884%_))))
           _%bindings128858%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self128459128967%_)
        (let ((_%bindings128969%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self128459128967%_
           _%bindings128969%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g129618_
        (let ((_g129617_ (##length _g129618_)))
          (cond ((##fx= _g129617_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g129618_))
                ((##fx= _g129617_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g129618_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g129618_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self128460128586%_)
        (let* ((_%self128589%_ _%self128460128586%_)
               (_%self128591%_ _%self128589%_))
          (letrec ((_%linux-variant?128601%_
                    (lambda (_%sys-type128701%_)
                      (let* ((_%g128702128710%_
                              (__string-split
                               (symbol->string _%sys-type128701%_)
                               '#\-))
                             (_%else128704128718%_ (lambda () '#f))
                             (_%K128706128723%_
                              (lambda (_%rest128721%_)
                                (not (null? _%rest128721%_)))))
                        (if (##pair? _%g128702128710%_)
                            (let ((_%hd128707128726%_
                                   (##car _%g128702128710%_))
                                  (_%tl128708128728%_
                                   (##cdr _%g128702128710%_)))
                              (if (equal? _%hd128707128726%_ '"linux")
                                  (let ((_%rest128731%_ _%tl128708128728%_))
                                    (_%K128706128723%_ _%rest128731%_))
                                  (_%else128704128718%_)))
                            (_%else128704128718%_)))))
                   (_%bsd-variant128602%_
                    (lambda (_%sys-type128660%_)
                      (let ((_%sys-type-str128662%_
                             (symbol->string _%sys-type128660%_)))
                        (let _%lp128664%_ ((_%rest128666%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest128667128675%_ _%rest128666%_)
                                 (_%else128669128683%_ (lambda () '#f))
                                 (_%K128671128689%_
                                  (lambda (_%rest128686%_ _%sys128687%_)
                                    (if (string-prefix?
                                         _%sys128687%_
                                         _%sys-type-str128662%_)
                                        _%sys128687%_
                                        (_%lp128664%_ _%rest128686%_)))))
                            (if (##pair? _%rest128667128675%_)
                                (let ((_%hd128672128692%_
                                       (##car _%rest128667128675%_))
                                      (_%tl128673128694%_
                                       (##cdr _%rest128667128675%_)))
                                  (let* ((_%sys128697%_ _%hd128672128692%_)
                                         (_%rest128699%_ _%tl128673128694%_))
                                    (_%K128671128689%_
                                     _%rest128699%_
                                     _%sys128697%_)))
                                (_%else128669128683%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self128591%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self128591%_)
            (let* ((_%g128603128615%_ (system-type))
                   (_%else128605128623%_ (lambda () '#!void))
                   (_%K128607128636%_
                    (lambda (_%sys-type128626%_
                             _%sys-vendor128627%_
                             _%sys-cpu128628%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu128628%_
                       '#f
                       '0
                       _%self128591%_)
                      (gx#core-bind-feature!__%
                       _%sys-type128626%_
                       '#f
                       '0
                       _%self128591%_)
                      (if (_%linux-variant?128601%_ _%sys-type128626%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self128591%_)
                          (let ((_%$e128631%_
                                 (_%bsd-variant128602%_ _%sys-type128626%_)))
                            (if _%$e128631%_
                                ((lambda (_%sys-prefix128634%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self128591%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix128634%_)
                                    '#f
                                    '0
                                    _%self128591%_))
                                 _%$e128631%_)
                                '#!void))))))
              (if (##pair? _%g128603128615%_)
                  (let ((_%hd128608128639%_ (##car _%g128603128615%_))
                        (_%tl128609128641%_ (##cdr _%g128603128615%_)))
                    (let ((_%sys-cpu128644%_ _%hd128608128639%_))
                      (if (##pair? _%tl128609128641%_)
                          (let ((_%hd128610128646%_ (##car _%tl128609128641%_))
                                (_%tl128611128648%_
                                 (##cdr _%tl128609128641%_)))
                            (let ((_%sys-vendor128651%_ _%hd128610128646%_))
                              (if (##pair? _%tl128611128648%_)
                                  (let ((_%hd128612128653%_
                                         (##car _%tl128611128648%_))
                                        (_%tl128613128655%_
                                         (##cdr _%tl128611128648%_)))
                                    (let ((_%sys-type128658%_
                                           _%hd128612128653%_))
                                      (if (##null? _%tl128613128655%_)
                                          (_%K128607128636%_
                                           _%sys-type128658%_
                                           _%sys-vendor128651%_
                                           _%sys-cpu128644%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self128591%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
