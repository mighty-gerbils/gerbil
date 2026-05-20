(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1779274772)
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
      (lambda (_%self189292%_ _%bind?189293%_)
        (let ((_%self189296%_ _%self189292%_))
          (if (##fx< '2 (##structure-length _%self189296%_))
              (begin
                (##unchecked-structure-set! _%self189296%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self189296%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self189296%_
                     '2
                     (##structure-length _%self189296%_)))
          (if _%bind?189293%_
              (begin
                (let ((__method189360
                       (__method-ref
                        _%self189296%_
                        'bind-core-syntax-expanders!)))
                  (if __method189360
                      (__method189360 _%self189296%_)
                      (begin
                        (error '"Missing method"
                               _%self189296%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method189361
                       (__method-ref
                        _%self189296%_
                        'bind-core-macro-expanders!)))
                  (if __method189361
                      (__method189361 _%self189296%_)
                      (begin
                        (error '"Missing method"
                               _%self189296%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method189362
                       (__method-ref _%self189296%_ 'bind-core-features!)))
                  (if __method189362
                      (__method189362 _%self189296%_)
                      (begin
                        (error '"Missing method"
                               _%self189296%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self189310%_)
        (let ((_%bind?189312%_ '#t))
          (gx#root-context:::init!__% _%self189310%_ _%bind?189312%_))))
    (define gx#root-context:::init!
      (lambda _g189366_
        (let ((_g189367_ (##length _g189366_)))
          (cond ((##fx= _g189367_ 1)
                 (apply gx#root-context:::init!__0 _g189366_))
                ((##fx= _g189367_ 2)
                 (apply gx#root-context:::init!__% _g189366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g189366_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass189316 __method-table189317)
        (let ((__bind-core-macro-expanders!189318
               (__make-promise
                (lambda ()
                  (let ((__method189321
                         (symbolic-table-ref
                          __method-table189317
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method189321
                        __method189321
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!189319
               (__make-promise
                (lambda ()
                  (let ((__method189322
                         (symbolic-table-ref
                          __method-table189317
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method189322
                        __method189322
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!189320
               (__make-promise
                (lambda ()
                  (let ((__method189323
                         (symbolic-table-ref
                          __method-table189317
                          'bind-core-features!
                          '#f)))
                    (if __method189323
                        __method189323
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda189290189307%_
                 (lambda (_%self189292%_ _%bind?189293%_)
                   (let ((_%self189296%_ _%self189292%_))
                     (if (##fx< '2 (##structure-length _%self189296%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self189296%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self189296%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self189296%_
                                '2
                                (##structure-length _%self189296%_)))
                     (if _%bind?189293%_
                         (begin
                           ((force __bind-core-syntax-expanders!189319)
                            _%self189296%_)
                           ((force __bind-core-macro-expanders!189318)
                            _%self189296%_)
                           ((force __bind-core-features!189320)
                            _%self189296%_))
                         '#!void)))))
            (lambda _g189368_
              (let ((_g189369_ (##length _g189368_)))
                (cond ((##fx= _g189369_ 1)
                       (apply (lambda (_%self189310%_)
                                (let ((_%bind?189312%_ '#t))
                                  (_%opt-lambda189290189307%_
                                   _%self189310%_
                                   _%bind?189312%_)))
                              _g189368_))
                      ((##fx= _g189369_ 2)
                       (apply _%opt-lambda189290189307%_ _g189368_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g189368_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self189137%_ _%super189138%_)
        (let* ((_%self189141%_ _%self189137%_)
               (_%super189157%_
                (let ((_%$e189151%_ _%super189138%_))
                  (if _%$e189151%_
                      _%$e189151%_
                      (let ((_%$e189154%_ (gx#core-context-root__0)))
                        (if _%$e189154%_
                            _%$e189154%_
                            (let ((__obj189363
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj189363)
                              __obj189363)))))))
          (if (##fx< '5 (##structure-length _%self189141%_))
              (begin
                (##unchecked-structure-set! _%self189141%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self189141%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self189141%_
                 _%super189157%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self189141%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self189141%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self189141%_
                     '5
                     (##structure-length _%self189141%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self189162%_)
        (let ((_%super189164%_ '#f))
          (gx#top-context:::init!__% _%self189162%_ _%super189164%_))))
    (define gx#top-context:::init!
      (lambda _g189370_
        (let ((_g189371_ (##length _g189370_)))
          (cond ((##fx= _g189371_ 1)
                 (apply gx#top-context:::init!__0 _g189370_))
                ((##fx= _g189371_ 2)
                 (apply gx#top-context:::init!__% _g189370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g189370_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self188858%_ _%bindings188859%_)
        (let ((_%self188862%_ _%self188858%_))
          (for-each
           (lambda (_%bind188872%_)
             (let* ((_%bind188873188880%_ _%bind188872%_)
                    (_%E188875188883%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind188873188880%_
                              '([id . rest]))
                       '#!void))
                    (_%K188876188992%_
                     (lambda (_%rest188886%_ _%id188887%_)
                       (gx#core-context-put!
                        _%self188862%_
                        _%id188887%_
                        (let ((__obj189364
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj189364
                           _%id188887%_
                           _%id188887%_
                           '#f
                           (let* ((_%rest188888188899%_ _%rest188886%_)
                                  (_%E188890188903%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest188888188899%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K188891188968%_
                                   (lambda (_%compiler188906%_
                                            _%expander188907%_
                                            _%key188908%_)
                                     ((let* ((_%key188909188922%_
                                              _%key188908%_)
                                             (_%E188915188926%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key188909188922%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K188920188962%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K188919188955%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K188918188947%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K188917188939%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K188916188931%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match188914188934%_
                                                  (lambda ()
                                                    (if (##eq? _%key188909188922%_
                                                               'expr:)
                                                        (_%K188916188931%_)
                                                        (_%E188915188926%_))))
                                                 (_%try-match188913188942%_
                                                  (lambda ()
                                                    (if (##eq? _%key188909188922%_
                                                               'special:)
                                                        (_%K188917188939%_)
                                                        (_%try-match188914188934%_))))
                                                 (_%try-match188912188950%_
                                                  (lambda ()
                                                    (if (##eq? _%key188909188922%_
                                                               'define:)
                                                        (_%K188918188947%_)
                                                        (_%try-match188913188942%_))))
                                                 (_%try-match188911188958%_
                                                  (lambda ()
                                                    (if (##eq? _%key188909188922%_
                                                               'module:)
                                                        (_%K188919188955%_)
                                                        (_%try-match188912188950%_)))))
                                            (if (##eq? _%key188909188922%_
                                                       'top:)
                                                (_%K188920188962%_)
                                                (_%try-match188911188958%_)))))
                                      _%expander188907%_
                                      _%id188887%_
                                      (let ((_%$e188965%_ _%compiler188906%_))
                                        (if _%$e188965%_
                                            _%$e188965%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest188888188899%_)
                                 (let ((_%hd188892188971%_
                                        (##car _%rest188888188899%_))
                                       (_%tl188893188973%_
                                        (##cdr _%rest188888188899%_)))
                                   (let ((_%key188976%_ _%hd188892188971%_))
                                     (if (pair? _%tl188893188973%_)
                                         (let ((_%hd188894188978%_
                                                (##car _%tl188893188973%_))
                                               (_%tl188895188980%_
                                                (##cdr _%tl188893188973%_)))
                                           (let ((_%expander188983%_
                                                  _%hd188894188978%_))
                                             (if (pair? _%tl188895188980%_)
                                                 (let ((_%hd188896188985%_
                                                        (##car _%tl188895188980%_))
                                                       (_%tl188897188987%_
                                                        (##cdr _%tl188895188980%_)))
                                                   (let ((_%compiler188990%_
                                                          _%hd188896188985%_))
                                                     (if (null? _%tl188897188987%_)
                                                         (_%K188891188968%_
                                                          _%compiler188990%_
                                                          _%expander188983%_
                                                          _%key188976%_)
                                                         (_%E188890188903%_))))
                                                 (_%E188890188903%_))))
                                         (_%E188890188903%_))))
                                 (_%E188890188903%_))))
                          __obj189364)))))
               (if (pair? _%bind188873188880%_)
                   (let ((_%hd188877188995%_ (##car _%bind188873188880%_))
                         (_%tl188878188997%_ (##cdr _%bind188873188880%_)))
                     (let* ((_%id189000%_ _%hd188877188995%_)
                            (_%rest189002%_ _%tl188878188997%_))
                       (_%K188876188992%_ _%rest189002%_ _%id189000%_)))
                   (_%E188875188883%_))))
           _%bindings188859%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self189007%_)
        (let ((_%bindings189009%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self189007%_
           _%bindings189009%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g189372_
        (let ((_g189373_ (##length _g189372_)))
          (cond ((##fx= _g189373_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g189372_))
                ((##fx= _g189373_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g189372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g189372_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self188620%_ _%bindings188621%_)
        (let ((_%self188624%_ _%self188620%_))
          (for-each
           (lambda (_%bind188634%_)
             (let* ((_%bind188635188642%_ _%bind188634%_)
                    (_%E188637188645%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind188635188642%_
                              '([id . rest]))
                       '#!void))
                    (_%K188638188713%_
                     (lambda (_%rest188648%_ _%id188649%_)
                       (gx#core-context-put!
                        _%self188624%_
                        _%id188649%_
                        (let ((__obj189365
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj189365
                           _%id188649%_
                           _%id188649%_
                           '#f
                           (let* ((_%rest188650188665%_ _%rest188648%_)
                                  (_%E188654188669%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest188650188665%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K188659188698%_
                                    (lambda (_%core-id188696%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id188696%_)))
                                   (_%K188656188683%_
                                    (lambda (_%proc188681%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc188681%_)))
                                   (_%K188655188674%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id188649%_))))
                               (let ((_%try-match188653188677%_
                                      (lambda ()
                                        (if (null? _%rest188650188665%_)
                                            (_%K188655188674%_)
                                            (_%E188654188669%_)))))
                                 (if (pair? _%rest188650188665%_)
                                     (let ((_%tl188661188703%_
                                            (##cdr _%rest188650188665%_))
                                           (_%hd188660188701%_
                                            (##car _%rest188650188665%_)))
                                       (if (##eq? _%hd188660188701%_ '=>)
                                           (if (pair? _%tl188661188703%_)
                                               (let ((_%tl188663188708%_
                                                      (##cdr _%tl188661188703%_))
                                                     (_%hd188662188706%_
                                                      (##car _%tl188661188703%_)))
                                                 (if (null? _%tl188663188708%_)
                                                     (let ((_%core-id188711%_
                                                            _%hd188662188706%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id188711%_))
                                                     (_%E188654188669%_)))
                                               (if (null? _%tl188661188703%_)
                                                   (let ((_%proc188691%_
                                                          _%hd188660188701%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc188691%_))
                                                   (_%E188654188669%_)))
                                           (if (null? _%tl188661188703%_)
                                               (let ((_%proc188691%_
                                                      _%hd188660188701%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc188691%_))
                                               (_%E188654188669%_))))
                                     (_%try-match188653188677%_))))))
                          __obj189365)))))
               (if (pair? _%bind188635188642%_)
                   (let ((_%hd188639188716%_ (##car _%bind188635188642%_))
                         (_%tl188640188718%_ (##cdr _%bind188635188642%_)))
                     (let* ((_%id188721%_ _%hd188639188716%_)
                            (_%rest188723%_ _%tl188640188718%_))
                       (_%K188638188713%_ _%rest188723%_ _%id188721%_)))
                   (_%E188637188645%_))))
           _%bindings188621%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self188728%_)
        (let ((_%bindings188730%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self188728%_
           _%bindings188730%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g189374_
        (let ((_g189375_ (##length _g189374_)))
          (cond ((##fx= _g189375_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g189374_))
                ((##fx= _g189375_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g189374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g189374_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self188351%_)
        (let ((_%self188354%_ _%self188351%_))
          (letrec ((_%linux-variant?188365%_
                    (lambda (_%sys-type188465%_)
                      (let* ((_%g188466188474%_
                              (__string-split
                               (symbol->string _%sys-type188465%_)
                               '#\-))
                             (_%else188468188482%_ (lambda () '#f))
                             (_%K188470188487%_
                              (lambda (_%rest188485%_)
                                (not (null? _%rest188485%_)))))
                        (if (pair? _%g188466188474%_)
                            (let ((_%hd188471188490%_
                                   (##car _%g188466188474%_))
                                  (_%tl188472188492%_
                                   (##cdr _%g188466188474%_)))
                              (if (equal? _%hd188471188490%_ '"linux")
                                  (let ((_%rest188495%_ _%tl188472188492%_))
                                    (_%K188470188487%_ _%rest188495%_))
                                  (_%else188468188482%_)))
                            (_%else188468188482%_)))))
                   (_%bsd-variant188366%_
                    (lambda (_%sys-type188424%_)
                      (let ((_%sys-type-str188426%_
                             (symbol->string _%sys-type188424%_)))
                        (let _%lp188428%_ ((_%rest188430%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest188431188439%_ _%rest188430%_)
                                 (_%else188433188447%_ (lambda () '#f))
                                 (_%K188435188453%_
                                  (lambda (_%rest188450%_ _%sys188451%_)
                                    (if (string-prefix?
                                         _%sys188451%_
                                         _%sys-type-str188426%_)
                                        _%sys188451%_
                                        (_%lp188428%_ _%rest188450%_)))))
                            (if (pair? _%rest188431188439%_)
                                (let ((_%hd188436188456%_
                                       (##car _%rest188431188439%_))
                                      (_%tl188437188458%_
                                       (##cdr _%rest188431188439%_)))
                                  (let* ((_%sys188461%_ _%hd188436188456%_)
                                         (_%rest188463%_ _%tl188437188458%_))
                                    (_%K188435188453%_
                                     _%rest188463%_
                                     _%sys188461%_)))
                                (_%else188433188447%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self188354%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self188354%_)
            (let* ((_%g188367188379%_ (system-type))
                   (_%else188369188387%_ (lambda () '#!void))
                   (_%K188371188400%_
                    (lambda (_%sys-type188390%_
                             _%sys-vendor188391%_
                             _%sys-cpu188392%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu188392%_
                       '#f
                       '0
                       _%self188354%_)
                      (gx#core-bind-feature!__%
                       _%sys-type188390%_
                       '#f
                       '0
                       _%self188354%_)
                      (if (_%linux-variant?188365%_ _%sys-type188390%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self188354%_)
                          (let ((_%$e188395%_
                                 (_%bsd-variant188366%_ _%sys-type188390%_)))
                            (if _%$e188395%_
                                ((lambda (_%sys-prefix188398%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self188354%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix188398%_)
                                    '#f
                                    '0
                                    _%self188354%_))
                                 _%$e188395%_)
                                '#!void))))))
              (if (pair? _%g188367188379%_)
                  (let ((_%hd188372188403%_ (##car _%g188367188379%_))
                        (_%tl188373188405%_ (##cdr _%g188367188379%_)))
                    (let ((_%sys-cpu188408%_ _%hd188372188403%_))
                      (if (pair? _%tl188373188405%_)
                          (let ((_%hd188374188410%_ (##car _%tl188373188405%_))
                                (_%tl188375188412%_
                                 (##cdr _%tl188373188405%_)))
                            (let ((_%sys-vendor188415%_ _%hd188374188410%_))
                              (if (pair? _%tl188375188412%_)
                                  (let ((_%hd188376188417%_
                                         (##car _%tl188375188412%_))
                                        (_%tl188377188419%_
                                         (##cdr _%tl188375188412%_)))
                                    (let ((_%sys-type188422%_
                                           _%hd188376188417%_))
                                      (if (null? _%tl188377188419%_)
                                          (_%K188371188400%_
                                           _%sys-type188422%_
                                           _%sys-vendor188415%_
                                           _%sys-cpu188408%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self188354%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
