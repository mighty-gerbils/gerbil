(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1771093449)
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
      (lambda (_%self187938%_ _%bind?187939%_)
        (let ((_%self187942%_ _%self187938%_))
          (if (##fx< '2 (##structure-length _%self187942%_))
              (begin
                (##unchecked-structure-set! _%self187942%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self187942%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self187942%_
                     '2
                     (##structure-length _%self187942%_)))
          (if _%bind?187939%_
              (begin
                (let ((__method188006
                       (__method-ref
                        _%self187942%_
                        'bind-core-syntax-expanders!)))
                  (if __method188006
                      (__method188006 _%self187942%_)
                      (begin
                        (error '"Missing method"
                               _%self187942%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method188007
                       (__method-ref
                        _%self187942%_
                        'bind-core-macro-expanders!)))
                  (if __method188007
                      (__method188007 _%self187942%_)
                      (begin
                        (error '"Missing method"
                               _%self187942%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method188008
                       (__method-ref _%self187942%_ 'bind-core-features!)))
                  (if __method188008
                      (__method188008 _%self187942%_)
                      (begin
                        (error '"Missing method"
                               _%self187942%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self187956%_)
        (let ((_%bind?187958%_ '#t))
          (gx#root-context:::init!__% _%self187956%_ _%bind?187958%_))))
    (define gx#root-context:::init!
      (lambda _g188012_
        (let ((_g188013_ (##length _g188012_)))
          (cond ((##fx= _g188013_ 1)
                 (apply gx#root-context:::init!__0 _g188012_))
                ((##fx= _g188013_ 2)
                 (apply gx#root-context:::init!__% _g188012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g188012_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass187962 __method-table187963)
        (let ((__bind-core-syntax-expanders!187964
               (__make-promise
                (lambda ()
                  (let ((__method187967
                         (symbolic-table-ref
                          __method-table187963
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method187967
                        __method187967
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!187965
               (__make-promise
                (lambda ()
                  (let ((__method187968
                         (symbolic-table-ref
                          __method-table187963
                          'bind-core-features!
                          '#f)))
                    (if __method187968
                        __method187968
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!187966
               (__make-promise
                (lambda ()
                  (let ((__method187969
                         (symbolic-table-ref
                          __method-table187963
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method187969
                        __method187969
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda187936187953%_
                 (lambda (_%self187938%_ _%bind?187939%_)
                   (let ((_%self187942%_ _%self187938%_))
                     (if (##fx< '2 (##structure-length _%self187942%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self187942%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self187942%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self187942%_
                                '2
                                (##structure-length _%self187942%_)))
                     (if _%bind?187939%_
                         (begin
                           ((force __bind-core-syntax-expanders!187964)
                            _%self187942%_)
                           ((force __bind-core-macro-expanders!187966)
                            _%self187942%_)
                           ((force __bind-core-features!187965)
                            _%self187942%_))
                         '#!void)))))
            (lambda _g188014_
              (let ((_g188015_ (##length _g188014_)))
                (cond ((##fx= _g188015_ 1)
                       (apply (lambda (_%self187956%_)
                                (let ((_%bind?187958%_ '#t))
                                  (_%opt-lambda187936187953%_
                                   _%self187956%_
                                   _%bind?187958%_)))
                              _g188014_))
                      ((##fx= _g188015_ 2)
                       (apply _%opt-lambda187936187953%_ _g188014_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g188014_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self187783%_ _%super187784%_)
        (let* ((_%self187787%_ _%self187783%_)
               (_%super187803%_
                (let ((_%$e187797%_ _%super187784%_))
                  (if _%$e187797%_
                      _%$e187797%_
                      (let ((_%$e187800%_ (gx#core-context-root__0)))
                        (if _%$e187800%_
                            _%$e187800%_
                            (let ((__obj188009
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj188009)
                              __obj188009)))))))
          (if (##fx< '5 (##structure-length _%self187787%_))
              (begin
                (##unchecked-structure-set! _%self187787%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self187787%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187787%_
                 _%super187803%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self187787%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self187787%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self187787%_
                     '5
                     (##structure-length _%self187787%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self187808%_)
        (let ((_%super187810%_ '#f))
          (gx#top-context:::init!__% _%self187808%_ _%super187810%_))))
    (define gx#top-context:::init!
      (lambda _g188016_
        (let ((_g188017_ (##length _g188016_)))
          (cond ((##fx= _g188017_ 1)
                 (apply gx#top-context:::init!__0 _g188016_))
                ((##fx= _g188017_ 2)
                 (apply gx#top-context:::init!__% _g188016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g188016_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self187504%_ _%bindings187505%_)
        (let ((_%self187508%_ _%self187504%_))
          (for-each
           (lambda (_%bind187518%_)
             (let* ((_%bind187519187526%_ _%bind187518%_)
                    (_%E187521187529%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind187519187526%_
                              '([id . rest]))
                       '#!void))
                    (_%K187522187638%_
                     (lambda (_%rest187532%_ _%id187533%_)
                       (gx#core-context-put!
                        _%self187508%_
                        _%id187533%_
                        (let ((__obj188010
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj188010
                           _%id187533%_
                           _%id187533%_
                           '#f
                           (let* ((_%rest187534187545%_ _%rest187532%_)
                                  (_%E187536187549%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest187534187545%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K187537187614%_
                                   (lambda (_%compiler187552%_
                                            _%expander187553%_
                                            _%key187554%_)
                                     ((let* ((_%key187555187568%_
                                              _%key187554%_)
                                             (_%E187561187572%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key187555187568%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K187566187608%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K187565187601%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K187564187593%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K187563187585%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K187562187577%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match187560187580%_
                                                  (lambda ()
                                                    (if (##eq? _%key187555187568%_
                                                               'expr:)
                                                        (_%K187562187577%_)
                                                        (_%E187561187572%_))))
                                                 (_%try-match187559187588%_
                                                  (lambda ()
                                                    (if (##eq? _%key187555187568%_
                                                               'special:)
                                                        (_%K187563187585%_)
                                                        (_%try-match187560187580%_))))
                                                 (_%try-match187558187596%_
                                                  (lambda ()
                                                    (if (##eq? _%key187555187568%_
                                                               'define:)
                                                        (_%K187564187593%_)
                                                        (_%try-match187559187588%_))))
                                                 (_%try-match187557187604%_
                                                  (lambda ()
                                                    (if (##eq? _%key187555187568%_
                                                               'module:)
                                                        (_%K187565187601%_)
                                                        (_%try-match187558187596%_)))))
                                            (if (##eq? _%key187555187568%_
                                                       'top:)
                                                (_%K187566187608%_)
                                                (_%try-match187557187604%_)))))
                                      _%expander187553%_
                                      _%id187533%_
                                      (let ((_%$e187611%_ _%compiler187552%_))
                                        (if _%$e187611%_
                                            _%$e187611%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest187534187545%_)
                                 (let ((_%hd187538187617%_
                                        (##car _%rest187534187545%_))
                                       (_%tl187539187619%_
                                        (##cdr _%rest187534187545%_)))
                                   (let ((_%key187622%_ _%hd187538187617%_))
                                     (if (pair? _%tl187539187619%_)
                                         (let ((_%hd187540187624%_
                                                (##car _%tl187539187619%_))
                                               (_%tl187541187626%_
                                                (##cdr _%tl187539187619%_)))
                                           (let ((_%expander187629%_
                                                  _%hd187540187624%_))
                                             (if (pair? _%tl187541187626%_)
                                                 (let ((_%hd187542187631%_
                                                        (##car _%tl187541187626%_))
                                                       (_%tl187543187633%_
                                                        (##cdr _%tl187541187626%_)))
                                                   (let ((_%compiler187636%_
                                                          _%hd187542187631%_))
                                                     (if (null? _%tl187543187633%_)
                                                         (_%K187537187614%_
                                                          _%compiler187636%_
                                                          _%expander187629%_
                                                          _%key187622%_)
                                                         (_%E187536187549%_))))
                                                 (_%E187536187549%_))))
                                         (_%E187536187549%_))))
                                 (_%E187536187549%_))))
                          __obj188010)))))
               (if (pair? _%bind187519187526%_)
                   (let ((_%hd187523187641%_ (##car _%bind187519187526%_))
                         (_%tl187524187643%_ (##cdr _%bind187519187526%_)))
                     (let* ((_%id187646%_ _%hd187523187641%_)
                            (_%rest187648%_ _%tl187524187643%_))
                       (_%K187522187638%_ _%rest187648%_ _%id187646%_)))
                   (_%E187521187529%_))))
           _%bindings187505%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self187653%_)
        (let ((_%bindings187655%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self187653%_
           _%bindings187655%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g188018_
        (let ((_g188019_ (##length _g188018_)))
          (cond ((##fx= _g188019_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g188018_))
                ((##fx= _g188019_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g188018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g188018_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self187266%_ _%bindings187267%_)
        (let ((_%self187270%_ _%self187266%_))
          (for-each
           (lambda (_%bind187280%_)
             (let* ((_%bind187281187288%_ _%bind187280%_)
                    (_%E187283187291%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind187281187288%_
                              '([id . rest]))
                       '#!void))
                    (_%K187284187359%_
                     (lambda (_%rest187294%_ _%id187295%_)
                       (gx#core-context-put!
                        _%self187270%_
                        _%id187295%_
                        (let ((__obj188011
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj188011
                           _%id187295%_
                           _%id187295%_
                           '#f
                           (let* ((_%rest187296187311%_ _%rest187294%_)
                                  (_%E187300187315%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest187296187311%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K187305187344%_
                                    (lambda (_%core-id187342%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id187342%_)))
                                   (_%K187302187329%_
                                    (lambda (_%proc187327%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc187327%_)))
                                   (_%K187301187320%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id187295%_))))
                               (let ((_%try-match187299187323%_
                                      (lambda ()
                                        (if (null? _%rest187296187311%_)
                                            (_%K187301187320%_)
                                            (_%E187300187315%_)))))
                                 (if (pair? _%rest187296187311%_)
                                     (let ((_%tl187307187349%_
                                            (##cdr _%rest187296187311%_))
                                           (_%hd187306187347%_
                                            (##car _%rest187296187311%_)))
                                       (if (##eq? _%hd187306187347%_ '=>)
                                           (if (pair? _%tl187307187349%_)
                                               (let ((_%tl187309187354%_
                                                      (##cdr _%tl187307187349%_))
                                                     (_%hd187308187352%_
                                                      (##car _%tl187307187349%_)))
                                                 (if (null? _%tl187309187354%_)
                                                     (let ((_%core-id187357%_
                                                            _%hd187308187352%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id187357%_))
                                                     (_%E187300187315%_)))
                                               (if (null? _%tl187307187349%_)
                                                   (let ((_%proc187337%_
                                                          _%hd187306187347%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc187337%_))
                                                   (_%E187300187315%_)))
                                           (if (null? _%tl187307187349%_)
                                               (let ((_%proc187337%_
                                                      _%hd187306187347%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc187337%_))
                                               (_%E187300187315%_))))
                                     (_%try-match187299187323%_))))))
                          __obj188011)))))
               (if (pair? _%bind187281187288%_)
                   (let ((_%hd187285187362%_ (##car _%bind187281187288%_))
                         (_%tl187286187364%_ (##cdr _%bind187281187288%_)))
                     (let* ((_%id187367%_ _%hd187285187362%_)
                            (_%rest187369%_ _%tl187286187364%_))
                       (_%K187284187359%_ _%rest187369%_ _%id187367%_)))
                   (_%E187283187291%_))))
           _%bindings187267%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self187374%_)
        (let ((_%bindings187376%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self187374%_
           _%bindings187376%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g188020_
        (let ((_g188021_ (##length _g188020_)))
          (cond ((##fx= _g188021_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g188020_))
                ((##fx= _g188021_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g188020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g188020_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self186997%_)
        (let ((_%self187000%_ _%self186997%_))
          (letrec ((_%linux-variant?187011%_
                    (lambda (_%sys-type187111%_)
                      (let* ((_%g187112187120%_
                              (__string-split
                               (symbol->string _%sys-type187111%_)
                               '#\-))
                             (_%else187114187128%_ (lambda () '#f))
                             (_%K187116187133%_
                              (lambda (_%rest187131%_)
                                (not (null? _%rest187131%_)))))
                        (if (pair? _%g187112187120%_)
                            (let ((_%hd187117187136%_
                                   (##car _%g187112187120%_))
                                  (_%tl187118187138%_
                                   (##cdr _%g187112187120%_)))
                              (if (equal? _%hd187117187136%_ '"linux")
                                  (let ((_%rest187141%_ _%tl187118187138%_))
                                    (_%K187116187133%_ _%rest187141%_))
                                  (_%else187114187128%_)))
                            (_%else187114187128%_)))))
                   (_%bsd-variant187012%_
                    (lambda (_%sys-type187070%_)
                      (let ((_%sys-type-str187072%_
                             (symbol->string _%sys-type187070%_)))
                        (let _%lp187074%_ ((_%rest187076%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest187077187085%_ _%rest187076%_)
                                 (_%else187079187093%_ (lambda () '#f))
                                 (_%K187081187099%_
                                  (lambda (_%rest187096%_ _%sys187097%_)
                                    (if (string-prefix?
                                         _%sys187097%_
                                         _%sys-type-str187072%_)
                                        _%sys187097%_
                                        (_%lp187074%_ _%rest187096%_)))))
                            (if (pair? _%rest187077187085%_)
                                (let ((_%hd187082187102%_
                                       (##car _%rest187077187085%_))
                                      (_%tl187083187104%_
                                       (##cdr _%rest187077187085%_)))
                                  (let* ((_%sys187107%_ _%hd187082187102%_)
                                         (_%rest187109%_ _%tl187083187104%_))
                                    (_%K187081187099%_
                                     _%rest187109%_
                                     _%sys187107%_)))
                                (_%else187079187093%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self187000%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self187000%_)
            (let* ((_%g187013187025%_ (system-type))
                   (_%else187015187033%_ (lambda () '#!void))
                   (_%K187017187046%_
                    (lambda (_%sys-type187036%_
                             _%sys-vendor187037%_
                             _%sys-cpu187038%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu187038%_
                       '#f
                       '0
                       _%self187000%_)
                      (gx#core-bind-feature!__%
                       _%sys-type187036%_
                       '#f
                       '0
                       _%self187000%_)
                      (if (_%linux-variant?187011%_ _%sys-type187036%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self187000%_)
                          (let ((_%$e187041%_
                                 (_%bsd-variant187012%_ _%sys-type187036%_)))
                            (if _%$e187041%_
                                ((lambda (_%sys-prefix187044%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self187000%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix187044%_)
                                    '#f
                                    '0
                                    _%self187000%_))
                                 _%$e187041%_)
                                '#!void))))))
              (if (pair? _%g187013187025%_)
                  (let ((_%hd187018187049%_ (##car _%g187013187025%_))
                        (_%tl187019187051%_ (##cdr _%g187013187025%_)))
                    (let ((_%sys-cpu187054%_ _%hd187018187049%_))
                      (if (pair? _%tl187019187051%_)
                          (let ((_%hd187020187056%_ (##car _%tl187019187051%_))
                                (_%tl187021187058%_
                                 (##cdr _%tl187019187051%_)))
                            (let ((_%sys-vendor187061%_ _%hd187020187056%_))
                              (if (pair? _%tl187021187058%_)
                                  (let ((_%hd187022187063%_
                                         (##car _%tl187021187058%_))
                                        (_%tl187023187065%_
                                         (##cdr _%tl187021187058%_)))
                                    (let ((_%sys-type187068%_
                                           _%hd187022187063%_))
                                      (if (null? _%tl187023187065%_)
                                          (_%K187017187046%_
                                           _%sys-type187068%_
                                           _%sys-vendor187061%_
                                           _%sys-cpu187054%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self187000%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
