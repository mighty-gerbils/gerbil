(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1756156301)
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
      (lambda (_%self139541%_ _%bind?139542%_)
        (let ((_%self139545%_ _%self139541%_))
          (if (##fx< '2 (##structure-length _%self139545%_))
              (begin
                (##unchecked-structure-set! _%self139545%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self139545%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self139545%_
                     '2
                     (##structure-length _%self139545%_)))
          (if _%bind?139542%_
              (begin
                (let ((__method139609
                       (__method-ref
                        _%self139545%_
                        'bind-core-syntax-expanders!)))
                  (if __method139609
                      (__method139609 _%self139545%_)
                      (begin
                        (error '"Missing method"
                               _%self139545%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method139610
                       (__method-ref
                        _%self139545%_
                        'bind-core-macro-expanders!)))
                  (if __method139610
                      (__method139610 _%self139545%_)
                      (begin
                        (error '"Missing method"
                               _%self139545%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method139611
                       (__method-ref _%self139545%_ 'bind-core-features!)))
                  (if __method139611
                      (__method139611 _%self139545%_)
                      (begin
                        (error '"Missing method"
                               _%self139545%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self139559%_)
        (let ((_%bind?139561%_ '#t))
          (gx#root-context:::init!__% _%self139559%_ _%bind?139561%_))))
    (define gx#root-context:::init!
      (lambda _g139613_
        (let ((_g139614_ (##length _g139613_)))
          (cond ((##fx= _g139614_ 1)
                 (apply gx#root-context:::init!__0 _g139613_))
                ((##fx= _g139614_ 2)
                 (apply gx#root-context:::init!__% _g139613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g139613_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass139565 __method-table139566)
        (let ((__bind-core-syntax-expanders!139567
               (__make-promise
                (lambda ()
                  (let ((__method139570
                         (symbolic-table-ref
                          __method-table139566
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method139570
                        __method139570
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!139568
               (__make-promise
                (lambda ()
                  (let ((__method139571
                         (symbolic-table-ref
                          __method-table139566
                          'bind-core-features!
                          '#f)))
                    (if __method139571
                        __method139571
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!139569
               (__make-promise
                (lambda ()
                  (let ((__method139572
                         (symbolic-table-ref
                          __method-table139566
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method139572
                        __method139572
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda139539139556%_
                 (lambda (_%self139541%_ _%bind?139542%_)
                   (let ((_%self139545%_ _%self139541%_))
                     (if (##fx< '2 (##structure-length _%self139545%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self139545%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self139545%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self139545%_
                                '2
                                (##structure-length _%self139545%_)))
                     (if _%bind?139542%_
                         (begin
                           ((force __bind-core-syntax-expanders!139567)
                            _%self139545%_)
                           ((force __bind-core-macro-expanders!139569)
                            _%self139545%_)
                           ((force __bind-core-features!139568)
                            _%self139545%_))
                         '#!void)))))
            (lambda _g139615_
              (let ((_g139616_ (##length _g139615_)))
                (cond ((##fx= _g139616_ 1)
                       (apply (lambda (_%self139559%_)
                                (let ((_%bind?139561%_ '#t))
                                  (_%opt-lambda139539139556%_
                                   _%self139559%_
                                   _%bind?139561%_)))
                              _g139615_))
                      ((##fx= _g139616_ 2)
                       (apply _%opt-lambda139539139556%_ _g139615_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g139615_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self139386%_ _%super139387%_)
        (let* ((_%self139390%_ _%self139386%_)
               (_%super139406%_
                (let ((_%$e139400%_ _%super139387%_))
                  (if _%$e139400%_
                      _%$e139400%_
                      (let ((_%$e139403%_ (gx#core-context-root__0)))
                        (if _%$e139403%_
                            _%$e139403%_
                            (let ((__obj139612
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj139612)
                              __obj139612)))))))
          (if (##fx< '5 (##structure-length _%self139390%_))
              (begin
                (##unchecked-structure-set! _%self139390%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self139390%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self139390%_
                 _%super139406%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self139390%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self139390%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self139390%_
                     '5
                     (##structure-length _%self139390%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self139411%_)
        (let ((_%super139413%_ '#f))
          (gx#top-context:::init!__% _%self139411%_ _%super139413%_))))
    (define gx#top-context:::init!
      (lambda _g139617_
        (let ((_g139618_ (##length _g139617_)))
          (cond ((##fx= _g139618_ 1)
                 (apply gx#top-context:::init!__0 _g139617_))
                ((##fx= _g139618_ 2)
                 (apply gx#top-context:::init!__% _g139617_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g139617_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self139106%_ _%bindings139107%_)
        (let ((_%self139110%_ _%self139106%_))
          (for-each
           (lambda (_%bind139120%_)
             (let* ((_%bind139121139128%_ _%bind139120%_)
                    (_%E139123139132%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind139121139128%_
                              '([id . rest]))
                       '#!void))
                    (_%K139124139241%_
                     (lambda (_%rest139135%_ _%id139136%_)
                       (gx#core-context-put!
                        _%self139110%_
                        _%id139136%_
                        (##structure
                         gx#syntax-binding::t
                         _%id139136%_
                         _%id139136%_
                         '#f
                         (let* ((_%rest139137139148%_ _%rest139135%_)
                                (_%E139139139152%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest139137139148%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K139140139217%_
                                 (lambda (_%compiler139155%_
                                          _%expander139156%_
                                          _%key139157%_)
                                   ((let* ((_%key139158139171%_ _%key139157%_)
                                           (_%E139164139175%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key139158139171%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K139169139211%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K139168139204%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K139167139196%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K139166139188%_
                                             (lambda () gx#make-special-form))
                                            (_%K139165139180%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match139163139183%_
                                                (lambda ()
                                                  (if (##eq? _%key139158139171%_
                                                             'expr:)
                                                      (_%K139165139180%_)
                                                      (_%E139164139175%_))))
                                               (_%try-match139162139191%_
                                                (lambda ()
                                                  (if (##eq? _%key139158139171%_
                                                             'special:)
                                                      (_%K139166139188%_)
                                                      (_%try-match139163139183%_))))
                                               (_%try-match139161139199%_
                                                (lambda ()
                                                  (if (##eq? _%key139158139171%_
                                                             'define:)
                                                      (_%K139167139196%_)
                                                      (_%try-match139162139191%_))))
                                               (_%try-match139160139207%_
                                                (lambda ()
                                                  (if (##eq? _%key139158139171%_
                                                             'module:)
                                                      (_%K139168139204%_)
                                                      (_%try-match139161139199%_)))))
                                          (if (##eq? _%key139158139171%_ 'top:)
                                              (_%K139169139211%_)
                                              (_%try-match139160139207%_)))))
                                    _%expander139156%_
                                    _%id139136%_
                                    (let ((_%$e139214%_ _%compiler139155%_))
                                      (if _%$e139214%_
                                          _%$e139214%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest139137139148%_)
                               (let ((_%hd139141139220%_
                                      (##car _%rest139137139148%_))
                                     (_%tl139142139222%_
                                      (##cdr _%rest139137139148%_)))
                                 (let ((_%key139225%_ _%hd139141139220%_))
                                   (if (pair? _%tl139142139222%_)
                                       (let ((_%hd139143139227%_
                                              (##car _%tl139142139222%_))
                                             (_%tl139144139229%_
                                              (##cdr _%tl139142139222%_)))
                                         (let ((_%expander139232%_
                                                _%hd139143139227%_))
                                           (if (pair? _%tl139144139229%_)
                                               (let ((_%hd139145139234%_
                                                      (##car _%tl139144139229%_))
                                                     (_%tl139146139236%_
                                                      (##cdr _%tl139144139229%_)))
                                                 (let ((_%compiler139239%_
                                                        _%hd139145139234%_))
                                                   (if (null? _%tl139146139236%_)
                                                       (_%K139140139217%_
                                                        _%compiler139239%_
                                                        _%expander139232%_
                                                        _%key139225%_)
                                                       (_%E139139139152%_))))
                                               (_%E139139139152%_))))
                                       (_%E139139139152%_))))
                               (_%E139139139152%_))))))))
               (if (pair? _%bind139121139128%_)
                   (let ((_%hd139125139244%_ (##car _%bind139121139128%_))
                         (_%tl139126139246%_ (##cdr _%bind139121139128%_)))
                     (let* ((_%id139249%_ _%hd139125139244%_)
                            (_%rest139251%_ _%tl139126139246%_))
                       (_%K139124139241%_ _%rest139251%_ _%id139249%_)))
                   (_%E139123139132%_))))
           _%bindings139107%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self139256%_)
        (let ((_%bindings139258%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self139256%_
           _%bindings139258%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g139619_
        (let ((_g139620_ (##length _g139619_)))
          (cond ((##fx= _g139620_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g139619_))
                ((##fx= _g139620_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g139619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g139619_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self138867%_ _%bindings138868%_)
        (let ((_%self138871%_ _%self138867%_))
          (for-each
           (lambda (_%bind138881%_)
             (let* ((_%bind138882138889%_ _%bind138881%_)
                    (_%E138884138893%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind138882138889%_
                              '([id . rest]))
                       '#!void))
                    (_%K138885138961%_
                     (lambda (_%rest138896%_ _%id138897%_)
                       (gx#core-context-put!
                        _%self138871%_
                        _%id138897%_
                        (##structure
                         gx#syntax-binding::t
                         _%id138897%_
                         _%id138897%_
                         '#f
                         (let* ((_%rest138898138913%_ _%rest138896%_)
                                (_%E138902138917%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest138898138913%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K138907138946%_
                                  (lambda (_%core-id138944%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id138944%_)))
                                 (_%K138904138931%_
                                  (lambda (_%proc138929%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc138929%_)))
                                 (_%K138903138922%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id138897%_))))
                             (let ((_%try-match138901138925%_
                                    (lambda ()
                                      (if (null? _%rest138898138913%_)
                                          (_%K138903138922%_)
                                          (_%E138902138917%_)))))
                               (if (pair? _%rest138898138913%_)
                                   (let ((_%tl138909138951%_
                                          (##cdr _%rest138898138913%_))
                                         (_%hd138908138949%_
                                          (##car _%rest138898138913%_)))
                                     (if (##eq? _%hd138908138949%_ '=>)
                                         (if (pair? _%tl138909138951%_)
                                             (let ((_%tl138911138956%_
                                                    (##cdr _%tl138909138951%_))
                                                   (_%hd138910138954%_
                                                    (##car _%tl138909138951%_)))
                                               (if (null? _%tl138911138956%_)
                                                   (let ((_%core-id138959%_
                                                          _%hd138910138954%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id138959%_))
                                                   (_%E138902138917%_)))
                                             (if (null? _%tl138909138951%_)
                                                 (let ((_%proc138939%_
                                                        _%hd138908138949%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc138939%_))
                                                 (_%E138902138917%_)))
                                         (if (null? _%tl138909138951%_)
                                             (let ((_%proc138939%_
                                                    _%hd138908138949%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc138939%_))
                                             (_%E138902138917%_))))
                                   (_%try-match138901138925%_))))))))))
               (if (pair? _%bind138882138889%_)
                   (let ((_%hd138886138964%_ (##car _%bind138882138889%_))
                         (_%tl138887138966%_ (##cdr _%bind138882138889%_)))
                     (let* ((_%id138969%_ _%hd138886138964%_)
                            (_%rest138971%_ _%tl138887138966%_))
                       (_%K138885138961%_ _%rest138971%_ _%id138969%_)))
                   (_%E138884138893%_))))
           _%bindings138868%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self138976%_)
        (let ((_%bindings138978%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self138976%_
           _%bindings138978%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g139621_
        (let ((_g139622_ (##length _g139621_)))
          (cond ((##fx= _g139622_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g139621_))
                ((##fx= _g139622_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g139621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g139621_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self138598%_)
        (let ((_%self138601%_ _%self138598%_))
          (letrec ((_%linux-variant?138612%_
                    (lambda (_%sys-type138712%_)
                      (let* ((_%g138713138721%_
                              (__string-split
                               (symbol->string _%sys-type138712%_)
                               '#\-))
                             (_%else138715138729%_ (lambda () '#f))
                             (_%K138717138734%_
                              (lambda (_%rest138732%_)
                                (not (null? _%rest138732%_)))))
                        (if (pair? _%g138713138721%_)
                            (let ((_%hd138718138737%_
                                   (##car _%g138713138721%_))
                                  (_%tl138719138739%_
                                   (##cdr _%g138713138721%_)))
                              (if (equal? _%hd138718138737%_ '"linux")
                                  (let ((_%rest138742%_ _%tl138719138739%_))
                                    (_%K138717138734%_ _%rest138742%_))
                                  (_%else138715138729%_)))
                            (_%else138715138729%_)))))
                   (_%bsd-variant138613%_
                    (lambda (_%sys-type138671%_)
                      (let ((_%sys-type-str138673%_
                             (symbol->string _%sys-type138671%_)))
                        (let _%lp138675%_ ((_%rest138677%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest138678138686%_ _%rest138677%_)
                                 (_%else138680138694%_ (lambda () '#f))
                                 (_%K138682138700%_
                                  (lambda (_%rest138697%_ _%sys138698%_)
                                    (if (string-prefix?
                                         _%sys138698%_
                                         _%sys-type-str138673%_)
                                        _%sys138698%_
                                        (_%lp138675%_ _%rest138697%_)))))
                            (if (pair? _%rest138678138686%_)
                                (let ((_%hd138683138703%_
                                       (##car _%rest138678138686%_))
                                      (_%tl138684138705%_
                                       (##cdr _%rest138678138686%_)))
                                  (let* ((_%sys138708%_ _%hd138683138703%_)
                                         (_%rest138710%_ _%tl138684138705%_))
                                    (_%K138682138700%_
                                     _%rest138710%_
                                     _%sys138708%_)))
                                (_%else138680138694%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self138601%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self138601%_)
            (let* ((_%g138614138626%_ (system-type))
                   (_%else138616138634%_ (lambda () '#!void))
                   (_%K138618138647%_
                    (lambda (_%sys-type138637%_
                             _%sys-vendor138638%_
                             _%sys-cpu138639%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu138639%_
                       '#f
                       '0
                       _%self138601%_)
                      (gx#core-bind-feature!__%
                       _%sys-type138637%_
                       '#f
                       '0
                       _%self138601%_)
                      (if (_%linux-variant?138612%_ _%sys-type138637%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self138601%_)
                          (let ((_%$e138642%_
                                 (_%bsd-variant138613%_ _%sys-type138637%_)))
                            (if _%$e138642%_
                                ((lambda (_%sys-prefix138645%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self138601%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix138645%_)
                                    '#f
                                    '0
                                    _%self138601%_))
                                 _%$e138642%_)
                                '#!void))))))
              (if (pair? _%g138614138626%_)
                  (let ((_%hd138619138650%_ (##car _%g138614138626%_))
                        (_%tl138620138652%_ (##cdr _%g138614138626%_)))
                    (let ((_%sys-cpu138655%_ _%hd138619138650%_))
                      (if (pair? _%tl138620138652%_)
                          (let ((_%hd138621138657%_ (##car _%tl138620138652%_))
                                (_%tl138622138659%_
                                 (##cdr _%tl138620138652%_)))
                            (let ((_%sys-vendor138662%_ _%hd138621138657%_))
                              (if (pair? _%tl138622138659%_)
                                  (let ((_%hd138623138664%_
                                         (##car _%tl138622138659%_))
                                        (_%tl138624138666%_
                                         (##cdr _%tl138622138659%_)))
                                    (let ((_%sys-type138669%_
                                           _%hd138623138664%_))
                                      (if (null? _%tl138624138666%_)
                                          (_%K138618138647%_
                                           _%sys-type138669%_
                                           _%sys-vendor138662%_
                                           _%sys-cpu138655%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self138601%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
