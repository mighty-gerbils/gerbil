(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1755903076)
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
      (lambda (_%self134831135911%_ _%bind?135913%_)
        (let* ((_%self135915%_ _%self134831135911%_)
               (_%self135917%_ _%self135915%_))
          (if (##fx< '2 (##structure-length _%self135917%_))
              (begin
                (##unchecked-structure-set! _%self135917%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self135917%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self135917%_
                     '2
                     (##structure-length _%self135917%_)))
          (if _%bind?135913%_
              (begin
                (let ((__method135980
                       (__method-ref
                        _%self135917%_
                        'bind-core-syntax-expanders!)))
                  (if __method135980
                      (__method135980 _%self135917%_)
                      (begin
                        (error '"Missing method"
                               _%self135917%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method135981
                       (__method-ref
                        _%self135917%_
                        'bind-core-macro-expanders!)))
                  (if __method135981
                      (__method135981 _%self135917%_)
                      (begin
                        (error '"Missing method"
                               _%self135917%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method135982
                       (__method-ref _%self135917%_ 'bind-core-features!)))
                  (if __method135982
                      (__method135982 _%self135917%_)
                      (begin
                        (error '"Missing method"
                               _%self135917%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self134831135930%_)
        (let ((_%bind?135932%_ '#t))
          (gx#root-context:::init!__% _%self134831135930%_ _%bind?135932%_))))
    (define gx#root-context:::init!
      (lambda _g135984_
        (let ((_g135985_ (##length _g135984_)))
          (cond ((##fx= _g135985_ 1)
                 (apply gx#root-context:::init!__0 _g135984_))
                ((##fx= _g135985_ 2)
                 (apply gx#root-context:::init!__% _g135984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g135984_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass135936 __method-table135937)
        (let ((__bind-core-features!135938
               (__make-promise
                (lambda ()
                  (let ((__method135941
                         (symbolic-table-ref
                          __method-table135937
                          'bind-core-features!
                          '#f)))
                    (if __method135941
                        __method135941
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!135939
               (__make-promise
                (lambda ()
                  (let ((__method135942
                         (symbolic-table-ref
                          __method-table135937
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method135942
                        __method135942
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!135940
               (__make-promise
                (lambda ()
                  (let ((__method135943
                         (symbolic-table-ref
                          __method-table135937
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method135943
                        __method135943
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda135909135927%_
                 (lambda (_%self134831135911%_ _%bind?135913%_)
                   (let* ((_%self135915%_ _%self134831135911%_)
                          (_%self135917%_ _%self135915%_))
                     (if (##fx< '2 (##structure-length _%self135917%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self135917%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self135917%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self135917%_
                                '2
                                (##structure-length _%self135917%_)))
                     (if _%bind?135913%_
                         (begin
                           ((force __bind-core-syntax-expanders!135939)
                            _%self135917%_)
                           ((force __bind-core-macro-expanders!135940)
                            _%self135917%_)
                           ((force __bind-core-features!135938)
                            _%self135917%_))
                         '#!void)))))
            (lambda _g135986_
              (let ((_g135987_ (##length _g135986_)))
                (cond ((##fx= _g135987_ 1)
                       (apply (lambda (_%self134831135930%_)
                                (let ((_%bind?135932%_ '#t))
                                  (_%opt-lambda135909135927%_
                                   _%self134831135930%_
                                   _%bind?135932%_)))
                              _g135986_))
                      ((##fx= _g135987_ 2)
                       (apply _%opt-lambda135909135927%_ _g135986_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g135986_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self134832135754%_ _%super135756%_)
        (let* ((_%self135758%_ _%self134832135754%_)
               (_%self135760%_ _%self135758%_)
               (_%super135776%_
                (let ((_%$e135770%_ _%super135756%_))
                  (if _%$e135770%_
                      _%$e135770%_
                      (let ((_%$e135773%_ (gx#core-context-root__0)))
                        (if _%$e135773%_
                            _%$e135773%_
                            (let ((__obj135983
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj135983)
                              __obj135983)))))))
          (if (##fx< '5 (##structure-length _%self135760%_))
              (begin
                (##unchecked-structure-set! _%self135760%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self135760%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self135760%_
                 _%super135776%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self135760%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self135760%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self135760%_
                     '5
                     (##structure-length _%self135760%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self134832135781%_)
        (let ((_%super135783%_ '#f))
          (gx#top-context:::init!__% _%self134832135781%_ _%super135783%_))))
    (define gx#top-context:::init!
      (lambda _g135988_
        (let ((_g135989_ (##length _g135988_)))
          (cond ((##fx= _g135989_ 1)
                 (apply gx#top-context:::init!__0 _g135988_))
                ((##fx= _g135989_ 2)
                 (apply gx#top-context:::init!__% _g135988_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g135988_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self134833135472%_ _%bindings135474%_)
        (let* ((_%self135476%_ _%self134833135472%_)
               (_%self135478%_ _%self135476%_))
          (for-each
           (lambda (_%bind135488%_)
             (let* ((_%bind135489135496%_ _%bind135488%_)
                    (_%E135491135500%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind135489135496%_
                              '([id . rest]))
                       '#!void))
                    (_%K135492135609%_
                     (lambda (_%rest135503%_ _%id135504%_)
                       (gx#core-context-put!
                        _%self135478%_
                        _%id135504%_
                        (##structure
                         gx#syntax-binding::t
                         _%id135504%_
                         _%id135504%_
                         '#f
                         (let* ((_%rest135505135516%_ _%rest135503%_)
                                (_%E135507135520%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest135505135516%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K135508135585%_
                                 (lambda (_%compiler135523%_
                                          _%expander135524%_
                                          _%key135525%_)
                                   ((let* ((_%key135526135539%_ _%key135525%_)
                                           (_%E135532135543%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key135526135539%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K135537135579%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K135536135572%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K135535135564%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K135534135556%_
                                             (lambda () gx#make-special-form))
                                            (_%K135533135548%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match135531135551%_
                                                (lambda ()
                                                  (if (##eq? _%key135526135539%_
                                                             'expr:)
                                                      (_%K135533135548%_)
                                                      (_%E135532135543%_))))
                                               (_%try-match135530135559%_
                                                (lambda ()
                                                  (if (##eq? _%key135526135539%_
                                                             'special:)
                                                      (_%K135534135556%_)
                                                      (_%try-match135531135551%_))))
                                               (_%try-match135529135567%_
                                                (lambda ()
                                                  (if (##eq? _%key135526135539%_
                                                             'define:)
                                                      (_%K135535135564%_)
                                                      (_%try-match135530135559%_))))
                                               (_%try-match135528135575%_
                                                (lambda ()
                                                  (if (##eq? _%key135526135539%_
                                                             'module:)
                                                      (_%K135536135572%_)
                                                      (_%try-match135529135567%_)))))
                                          (if (##eq? _%key135526135539%_ 'top:)
                                              (_%K135537135579%_)
                                              (_%try-match135528135575%_)))))
                                    _%expander135524%_
                                    _%id135504%_
                                    (let ((_%$e135582%_ _%compiler135523%_))
                                      (if _%$e135582%_
                                          _%$e135582%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest135505135516%_)
                               (let ((_%hd135509135588%_
                                      (##car _%rest135505135516%_))
                                     (_%tl135510135590%_
                                      (##cdr _%rest135505135516%_)))
                                 (let ((_%key135593%_ _%hd135509135588%_))
                                   (if (pair? _%tl135510135590%_)
                                       (let ((_%hd135511135595%_
                                              (##car _%tl135510135590%_))
                                             (_%tl135512135597%_
                                              (##cdr _%tl135510135590%_)))
                                         (let ((_%expander135600%_
                                                _%hd135511135595%_))
                                           (if (pair? _%tl135512135597%_)
                                               (let ((_%hd135513135602%_
                                                      (##car _%tl135512135597%_))
                                                     (_%tl135514135604%_
                                                      (##cdr _%tl135512135597%_)))
                                                 (let ((_%compiler135607%_
                                                        _%hd135513135602%_))
                                                   (if (null? _%tl135514135604%_)
                                                       (_%K135508135585%_
                                                        _%compiler135607%_
                                                        _%expander135600%_
                                                        _%key135593%_)
                                                       (_%E135507135520%_))))
                                               (_%E135507135520%_))))
                                       (_%E135507135520%_))))
                               (_%E135507135520%_))))))))
               (if (pair? _%bind135489135496%_)
                   (let ((_%hd135493135612%_ (##car _%bind135489135496%_))
                         (_%tl135494135614%_ (##cdr _%bind135489135496%_)))
                     (let* ((_%id135617%_ _%hd135493135612%_)
                            (_%rest135619%_ _%tl135494135614%_))
                       (_%K135492135609%_ _%rest135619%_ _%id135617%_)))
                   (_%E135491135500%_))))
           _%bindings135474%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self134833135624%_)
        (let ((_%bindings135626%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self134833135624%_
           _%bindings135626%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g135990_
        (let ((_g135991_ (##length _g135990_)))
          (cond ((##fx= _g135991_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g135990_))
                ((##fx= _g135991_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g135990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g135990_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self134834135231%_ _%bindings135233%_)
        (let* ((_%self135235%_ _%self134834135231%_)
               (_%self135237%_ _%self135235%_))
          (for-each
           (lambda (_%bind135247%_)
             (let* ((_%bind135248135255%_ _%bind135247%_)
                    (_%E135250135259%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind135248135255%_
                              '([id . rest]))
                       '#!void))
                    (_%K135251135327%_
                     (lambda (_%rest135262%_ _%id135263%_)
                       (gx#core-context-put!
                        _%self135237%_
                        _%id135263%_
                        (##structure
                         gx#syntax-binding::t
                         _%id135263%_
                         _%id135263%_
                         '#f
                         (let* ((_%rest135264135279%_ _%rest135262%_)
                                (_%E135268135283%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest135264135279%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K135273135312%_
                                  (lambda (_%core-id135310%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id135310%_)))
                                 (_%K135270135297%_
                                  (lambda (_%proc135295%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc135295%_)))
                                 (_%K135269135288%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id135263%_))))
                             (let ((_%try-match135267135291%_
                                    (lambda ()
                                      (if (null? _%rest135264135279%_)
                                          (_%K135269135288%_)
                                          (_%E135268135283%_)))))
                               (if (pair? _%rest135264135279%_)
                                   (let ((_%tl135275135317%_
                                          (##cdr _%rest135264135279%_))
                                         (_%hd135274135315%_
                                          (##car _%rest135264135279%_)))
                                     (if (##eq? _%hd135274135315%_ '=>)
                                         (if (pair? _%tl135275135317%_)
                                             (let ((_%tl135277135322%_
                                                    (##cdr _%tl135275135317%_))
                                                   (_%hd135276135320%_
                                                    (##car _%tl135275135317%_)))
                                               (if (null? _%tl135277135322%_)
                                                   (let ((_%core-id135325%_
                                                          _%hd135276135320%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id135325%_))
                                                   (_%E135268135283%_)))
                                             (if (null? _%tl135275135317%_)
                                                 (let ((_%proc135305%_
                                                        _%hd135274135315%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc135305%_))
                                                 (_%E135268135283%_)))
                                         (if (null? _%tl135275135317%_)
                                             (let ((_%proc135305%_
                                                    _%hd135274135315%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc135305%_))
                                             (_%E135268135283%_))))
                                   (_%try-match135267135291%_))))))))))
               (if (pair? _%bind135248135255%_)
                   (let ((_%hd135252135330%_ (##car _%bind135248135255%_))
                         (_%tl135253135332%_ (##cdr _%bind135248135255%_)))
                     (let* ((_%id135335%_ _%hd135252135330%_)
                            (_%rest135337%_ _%tl135253135332%_))
                       (_%K135251135327%_ _%rest135337%_ _%id135335%_)))
                   (_%E135250135259%_))))
           _%bindings135233%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self134834135342%_)
        (let ((_%bindings135344%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self134834135342%_
           _%bindings135344%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g135992_
        (let ((_g135993_ (##length _g135992_)))
          (cond ((##fx= _g135993_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g135992_))
                ((##fx= _g135993_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g135992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g135992_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self134835134961%_)
        (let* ((_%self134964%_ _%self134835134961%_)
               (_%self134966%_ _%self134964%_))
          (letrec ((_%linux-variant?134976%_
                    (lambda (_%sys-type135076%_)
                      (let* ((_%g135077135085%_
                              (__string-split
                               (symbol->string _%sys-type135076%_)
                               '#\-))
                             (_%else135079135093%_ (lambda () '#f))
                             (_%K135081135098%_
                              (lambda (_%rest135096%_)
                                (not (null? _%rest135096%_)))))
                        (if (pair? _%g135077135085%_)
                            (let ((_%hd135082135101%_
                                   (##car _%g135077135085%_))
                                  (_%tl135083135103%_
                                   (##cdr _%g135077135085%_)))
                              (if (equal? _%hd135082135101%_ '"linux")
                                  (let ((_%rest135106%_ _%tl135083135103%_))
                                    (_%K135081135098%_ _%rest135106%_))
                                  (_%else135079135093%_)))
                            (_%else135079135093%_)))))
                   (_%bsd-variant134977%_
                    (lambda (_%sys-type135035%_)
                      (let ((_%sys-type-str135037%_
                             (symbol->string _%sys-type135035%_)))
                        (let _%lp135039%_ ((_%rest135041%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest135042135050%_ _%rest135041%_)
                                 (_%else135044135058%_ (lambda () '#f))
                                 (_%K135046135064%_
                                  (lambda (_%rest135061%_ _%sys135062%_)
                                    (if (string-prefix?
                                         _%sys135062%_
                                         _%sys-type-str135037%_)
                                        _%sys135062%_
                                        (_%lp135039%_ _%rest135061%_)))))
                            (if (pair? _%rest135042135050%_)
                                (let ((_%hd135047135067%_
                                       (##car _%rest135042135050%_))
                                      (_%tl135048135069%_
                                       (##cdr _%rest135042135050%_)))
                                  (let* ((_%sys135072%_ _%hd135047135067%_)
                                         (_%rest135074%_ _%tl135048135069%_))
                                    (_%K135046135064%_
                                     _%rest135074%_
                                     _%sys135072%_)))
                                (_%else135044135058%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self134966%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self134966%_)
            (let* ((_%g134978134990%_ (system-type))
                   (_%else134980134998%_ (lambda () '#!void))
                   (_%K134982135011%_
                    (lambda (_%sys-type135001%_
                             _%sys-vendor135002%_
                             _%sys-cpu135003%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu135003%_
                       '#f
                       '0
                       _%self134966%_)
                      (gx#core-bind-feature!__%
                       _%sys-type135001%_
                       '#f
                       '0
                       _%self134966%_)
                      (if (_%linux-variant?134976%_ _%sys-type135001%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self134966%_)
                          (let ((_%$e135006%_
                                 (_%bsd-variant134977%_ _%sys-type135001%_)))
                            (if _%$e135006%_
                                ((lambda (_%sys-prefix135009%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self134966%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix135009%_)
                                    '#f
                                    '0
                                    _%self134966%_))
                                 _%$e135006%_)
                                '#!void))))))
              (if (pair? _%g134978134990%_)
                  (let ((_%hd134983135014%_ (##car _%g134978134990%_))
                        (_%tl134984135016%_ (##cdr _%g134978134990%_)))
                    (let ((_%sys-cpu135019%_ _%hd134983135014%_))
                      (if (pair? _%tl134984135016%_)
                          (let ((_%hd134985135021%_ (##car _%tl134984135016%_))
                                (_%tl134986135023%_
                                 (##cdr _%tl134984135016%_)))
                            (let ((_%sys-vendor135026%_ _%hd134985135021%_))
                              (if (pair? _%tl134986135023%_)
                                  (let ((_%hd134987135028%_
                                         (##car _%tl134986135023%_))
                                        (_%tl134988135030%_
                                         (##cdr _%tl134986135023%_)))
                                    (let ((_%sys-type135033%_
                                           _%hd134987135028%_))
                                      (if (null? _%tl134988135030%_)
                                          (_%K134982135011%_
                                           _%sys-type135033%_
                                           _%sys-vendor135026%_
                                           _%sys-cpu135019%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self134966%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
