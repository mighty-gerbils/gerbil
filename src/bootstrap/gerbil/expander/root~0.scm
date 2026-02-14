(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1771092629)
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
      (lambda (_%self187934%_ _%bind?187935%_)
        (let ((_%self187938%_ _%self187934%_))
          (if (##fx< '2 (##structure-length _%self187938%_))
              (begin
                (##unchecked-structure-set! _%self187938%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self187938%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self187938%_
                     '2
                     (##structure-length _%self187938%_)))
          (if _%bind?187935%_
              (begin
                (let ((__method188002
                       (__method-ref
                        _%self187938%_
                        'bind-core-syntax-expanders!)))
                  (if __method188002
                      (__method188002 _%self187938%_)
                      (begin
                        (error '"Missing method"
                               _%self187938%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method188003
                       (__method-ref
                        _%self187938%_
                        'bind-core-macro-expanders!)))
                  (if __method188003
                      (__method188003 _%self187938%_)
                      (begin
                        (error '"Missing method"
                               _%self187938%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method188004
                       (__method-ref _%self187938%_ 'bind-core-features!)))
                  (if __method188004
                      (__method188004 _%self187938%_)
                      (begin
                        (error '"Missing method"
                               _%self187938%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self187952%_)
        (let ((_%bind?187954%_ '#t))
          (gx#root-context:::init!__% _%self187952%_ _%bind?187954%_))))
    (define gx#root-context:::init!
      (lambda _g188008_
        (let ((_g188009_ (##length _g188008_)))
          (cond ((##fx= _g188009_ 1)
                 (apply gx#root-context:::init!__0 _g188008_))
                ((##fx= _g188009_ 2)
                 (apply gx#root-context:::init!__% _g188008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g188008_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass187958 __method-table187959)
        (let ((__bind-core-syntax-expanders!187960
               (__make-promise
                (lambda ()
                  (let ((__method187963
                         (symbolic-table-ref
                          __method-table187959
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method187963
                        __method187963
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!187961
               (__make-promise
                (lambda ()
                  (let ((__method187964
                         (symbolic-table-ref
                          __method-table187959
                          'bind-core-features!
                          '#f)))
                    (if __method187964
                        __method187964
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!187962
               (__make-promise
                (lambda ()
                  (let ((__method187965
                         (symbolic-table-ref
                          __method-table187959
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method187965
                        __method187965
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda187932187949%_
                 (lambda (_%self187934%_ _%bind?187935%_)
                   (let ((_%self187938%_ _%self187934%_))
                     (if (##fx< '2 (##structure-length _%self187938%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self187938%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self187938%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self187938%_
                                '2
                                (##structure-length _%self187938%_)))
                     (if _%bind?187935%_
                         (begin
                           ((force __bind-core-syntax-expanders!187960)
                            _%self187938%_)
                           ((force __bind-core-macro-expanders!187962)
                            _%self187938%_)
                           ((force __bind-core-features!187961)
                            _%self187938%_))
                         '#!void)))))
            (lambda _g188010_
              (let ((_g188011_ (##length _g188010_)))
                (cond ((##fx= _g188011_ 1)
                       (apply (lambda (_%self187952%_)
                                (let ((_%bind?187954%_ '#t))
                                  (_%opt-lambda187932187949%_
                                   _%self187952%_
                                   _%bind?187954%_)))
                              _g188010_))
                      ((##fx= _g188011_ 2)
                       (apply _%opt-lambda187932187949%_ _g188010_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g188010_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self187779%_ _%super187780%_)
        (let* ((_%self187783%_ _%self187779%_)
               (_%super187799%_
                (let ((_%$e187793%_ _%super187780%_))
                  (if _%$e187793%_
                      _%$e187793%_
                      (let ((_%$e187796%_ (gx#core-context-root__0)))
                        (if _%$e187796%_
                            _%$e187796%_
                            (let ((__obj188005
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj188005)
                              __obj188005)))))))
          (if (##fx< '5 (##structure-length _%self187783%_))
              (begin
                (##unchecked-structure-set! _%self187783%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self187783%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187783%_
                 _%super187799%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self187783%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self187783%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self187783%_
                     '5
                     (##structure-length _%self187783%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self187804%_)
        (let ((_%super187806%_ '#f))
          (gx#top-context:::init!__% _%self187804%_ _%super187806%_))))
    (define gx#top-context:::init!
      (lambda _g188012_
        (let ((_g188013_ (##length _g188012_)))
          (cond ((##fx= _g188013_ 1)
                 (apply gx#top-context:::init!__0 _g188012_))
                ((##fx= _g188013_ 2)
                 (apply gx#top-context:::init!__% _g188012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g188012_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self187500%_ _%bindings187501%_)
        (let ((_%self187504%_ _%self187500%_))
          (for-each
           (lambda (_%bind187514%_)
             (let* ((_%bind187515187522%_ _%bind187514%_)
                    (_%E187517187525%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind187515187522%_
                              '([id . rest]))
                       '#!void))
                    (_%K187518187634%_
                     (lambda (_%rest187528%_ _%id187529%_)
                       (gx#core-context-put!
                        _%self187504%_
                        _%id187529%_
                        (let ((__obj188006
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj188006
                           _%id187529%_
                           _%id187529%_
                           '#f
                           (let* ((_%rest187530187541%_ _%rest187528%_)
                                  (_%E187532187545%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest187530187541%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K187533187610%_
                                   (lambda (_%compiler187548%_
                                            _%expander187549%_
                                            _%key187550%_)
                                     ((let* ((_%key187551187564%_
                                              _%key187550%_)
                                             (_%E187557187568%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key187551187564%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K187562187604%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K187561187597%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K187560187589%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K187559187581%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K187558187573%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match187556187576%_
                                                  (lambda ()
                                                    (if (##eq? _%key187551187564%_
                                                               'expr:)
                                                        (_%K187558187573%_)
                                                        (_%E187557187568%_))))
                                                 (_%try-match187555187584%_
                                                  (lambda ()
                                                    (if (##eq? _%key187551187564%_
                                                               'special:)
                                                        (_%K187559187581%_)
                                                        (_%try-match187556187576%_))))
                                                 (_%try-match187554187592%_
                                                  (lambda ()
                                                    (if (##eq? _%key187551187564%_
                                                               'define:)
                                                        (_%K187560187589%_)
                                                        (_%try-match187555187584%_))))
                                                 (_%try-match187553187600%_
                                                  (lambda ()
                                                    (if (##eq? _%key187551187564%_
                                                               'module:)
                                                        (_%K187561187597%_)
                                                        (_%try-match187554187592%_)))))
                                            (if (##eq? _%key187551187564%_
                                                       'top:)
                                                (_%K187562187604%_)
                                                (_%try-match187553187600%_)))))
                                      _%expander187549%_
                                      _%id187529%_
                                      (let ((_%$e187607%_ _%compiler187548%_))
                                        (if _%$e187607%_
                                            _%$e187607%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest187530187541%_)
                                 (let ((_%hd187534187613%_
                                        (##car _%rest187530187541%_))
                                       (_%tl187535187615%_
                                        (##cdr _%rest187530187541%_)))
                                   (let ((_%key187618%_ _%hd187534187613%_))
                                     (if (pair? _%tl187535187615%_)
                                         (let ((_%hd187536187620%_
                                                (##car _%tl187535187615%_))
                                               (_%tl187537187622%_
                                                (##cdr _%tl187535187615%_)))
                                           (let ((_%expander187625%_
                                                  _%hd187536187620%_))
                                             (if (pair? _%tl187537187622%_)
                                                 (let ((_%hd187538187627%_
                                                        (##car _%tl187537187622%_))
                                                       (_%tl187539187629%_
                                                        (##cdr _%tl187537187622%_)))
                                                   (let ((_%compiler187632%_
                                                          _%hd187538187627%_))
                                                     (if (null? _%tl187539187629%_)
                                                         (_%K187533187610%_
                                                          _%compiler187632%_
                                                          _%expander187625%_
                                                          _%key187618%_)
                                                         (_%E187532187545%_))))
                                                 (_%E187532187545%_))))
                                         (_%E187532187545%_))))
                                 (_%E187532187545%_))))
                          __obj188006)))))
               (if (pair? _%bind187515187522%_)
                   (let ((_%hd187519187637%_ (##car _%bind187515187522%_))
                         (_%tl187520187639%_ (##cdr _%bind187515187522%_)))
                     (let* ((_%id187642%_ _%hd187519187637%_)
                            (_%rest187644%_ _%tl187520187639%_))
                       (_%K187518187634%_ _%rest187644%_ _%id187642%_)))
                   (_%E187517187525%_))))
           _%bindings187501%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self187649%_)
        (let ((_%bindings187651%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self187649%_
           _%bindings187651%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g188014_
        (let ((_g188015_ (##length _g188014_)))
          (cond ((##fx= _g188015_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g188014_))
                ((##fx= _g188015_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g188014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g188014_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self187262%_ _%bindings187263%_)
        (let ((_%self187266%_ _%self187262%_))
          (for-each
           (lambda (_%bind187276%_)
             (let* ((_%bind187277187284%_ _%bind187276%_)
                    (_%E187279187287%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind187277187284%_
                              '([id . rest]))
                       '#!void))
                    (_%K187280187355%_
                     (lambda (_%rest187290%_ _%id187291%_)
                       (gx#core-context-put!
                        _%self187266%_
                        _%id187291%_
                        (let ((__obj188007
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj188007
                           _%id187291%_
                           _%id187291%_
                           '#f
                           (let* ((_%rest187292187307%_ _%rest187290%_)
                                  (_%E187296187311%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest187292187307%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K187301187340%_
                                    (lambda (_%core-id187338%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id187338%_)))
                                   (_%K187298187325%_
                                    (lambda (_%proc187323%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc187323%_)))
                                   (_%K187297187316%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id187291%_))))
                               (let ((_%try-match187295187319%_
                                      (lambda ()
                                        (if (null? _%rest187292187307%_)
                                            (_%K187297187316%_)
                                            (_%E187296187311%_)))))
                                 (if (pair? _%rest187292187307%_)
                                     (let ((_%tl187303187345%_
                                            (##cdr _%rest187292187307%_))
                                           (_%hd187302187343%_
                                            (##car _%rest187292187307%_)))
                                       (if (##eq? _%hd187302187343%_ '=>)
                                           (if (pair? _%tl187303187345%_)
                                               (let ((_%tl187305187350%_
                                                      (##cdr _%tl187303187345%_))
                                                     (_%hd187304187348%_
                                                      (##car _%tl187303187345%_)))
                                                 (if (null? _%tl187305187350%_)
                                                     (let ((_%core-id187353%_
                                                            _%hd187304187348%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id187353%_))
                                                     (_%E187296187311%_)))
                                               (if (null? _%tl187303187345%_)
                                                   (let ((_%proc187333%_
                                                          _%hd187302187343%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc187333%_))
                                                   (_%E187296187311%_)))
                                           (if (null? _%tl187303187345%_)
                                               (let ((_%proc187333%_
                                                      _%hd187302187343%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc187333%_))
                                               (_%E187296187311%_))))
                                     (_%try-match187295187319%_))))))
                          __obj188007)))))
               (if (pair? _%bind187277187284%_)
                   (let ((_%hd187281187358%_ (##car _%bind187277187284%_))
                         (_%tl187282187360%_ (##cdr _%bind187277187284%_)))
                     (let* ((_%id187363%_ _%hd187281187358%_)
                            (_%rest187365%_ _%tl187282187360%_))
                       (_%K187280187355%_ _%rest187365%_ _%id187363%_)))
                   (_%E187279187287%_))))
           _%bindings187263%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self187370%_)
        (let ((_%bindings187372%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self187370%_
           _%bindings187372%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g188016_
        (let ((_g188017_ (##length _g188016_)))
          (cond ((##fx= _g188017_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g188016_))
                ((##fx= _g188017_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g188016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g188016_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self186993%_)
        (let ((_%self186996%_ _%self186993%_))
          (letrec ((_%linux-variant?187007%_
                    (lambda (_%sys-type187107%_)
                      (let* ((_%g187108187116%_
                              (__string-split
                               (symbol->string _%sys-type187107%_)
                               '#\-))
                             (_%else187110187124%_ (lambda () '#f))
                             (_%K187112187129%_
                              (lambda (_%rest187127%_)
                                (not (null? _%rest187127%_)))))
                        (if (pair? _%g187108187116%_)
                            (let ((_%hd187113187132%_
                                   (##car _%g187108187116%_))
                                  (_%tl187114187134%_
                                   (##cdr _%g187108187116%_)))
                              (if (equal? _%hd187113187132%_ '"linux")
                                  (let ((_%rest187137%_ _%tl187114187134%_))
                                    (_%K187112187129%_ _%rest187137%_))
                                  (_%else187110187124%_)))
                            (_%else187110187124%_)))))
                   (_%bsd-variant187008%_
                    (lambda (_%sys-type187066%_)
                      (let ((_%sys-type-str187068%_
                             (symbol->string _%sys-type187066%_)))
                        (let _%lp187070%_ ((_%rest187072%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest187073187081%_ _%rest187072%_)
                                 (_%else187075187089%_ (lambda () '#f))
                                 (_%K187077187095%_
                                  (lambda (_%rest187092%_ _%sys187093%_)
                                    (if (string-prefix?
                                         _%sys187093%_
                                         _%sys-type-str187068%_)
                                        _%sys187093%_
                                        (_%lp187070%_ _%rest187092%_)))))
                            (if (pair? _%rest187073187081%_)
                                (let ((_%hd187078187098%_
                                       (##car _%rest187073187081%_))
                                      (_%tl187079187100%_
                                       (##cdr _%rest187073187081%_)))
                                  (let* ((_%sys187103%_ _%hd187078187098%_)
                                         (_%rest187105%_ _%tl187079187100%_))
                                    (_%K187077187095%_
                                     _%rest187105%_
                                     _%sys187103%_)))
                                (_%else187075187089%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self186996%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self186996%_)
            (let* ((_%g187009187021%_ (system-type))
                   (_%else187011187029%_ (lambda () '#!void))
                   (_%K187013187042%_
                    (lambda (_%sys-type187032%_
                             _%sys-vendor187033%_
                             _%sys-cpu187034%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu187034%_
                       '#f
                       '0
                       _%self186996%_)
                      (gx#core-bind-feature!__%
                       _%sys-type187032%_
                       '#f
                       '0
                       _%self186996%_)
                      (if (_%linux-variant?187007%_ _%sys-type187032%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self186996%_)
                          (let ((_%$e187037%_
                                 (_%bsd-variant187008%_ _%sys-type187032%_)))
                            (if _%$e187037%_
                                ((lambda (_%sys-prefix187040%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self186996%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix187040%_)
                                    '#f
                                    '0
                                    _%self186996%_))
                                 _%$e187037%_)
                                '#!void))))))
              (if (pair? _%g187009187021%_)
                  (let ((_%hd187014187045%_ (##car _%g187009187021%_))
                        (_%tl187015187047%_ (##cdr _%g187009187021%_)))
                    (let ((_%sys-cpu187050%_ _%hd187014187045%_))
                      (if (pair? _%tl187015187047%_)
                          (let ((_%hd187016187052%_ (##car _%tl187015187047%_))
                                (_%tl187017187054%_
                                 (##cdr _%tl187015187047%_)))
                            (let ((_%sys-vendor187057%_ _%hd187016187052%_))
                              (if (pair? _%tl187017187054%_)
                                  (let ((_%hd187018187059%_
                                         (##car _%tl187017187054%_))
                                        (_%tl187019187061%_
                                         (##cdr _%tl187017187054%_)))
                                    (let ((_%sys-type187064%_
                                           _%hd187018187059%_))
                                      (if (null? _%tl187019187061%_)
                                          (_%K187013187042%_
                                           _%sys-type187064%_
                                           _%sys-vendor187057%_
                                           _%sys-cpu187050%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self186996%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
