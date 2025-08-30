(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1756224516)
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
      (lambda (_%self139544%_ _%bind?139545%_)
        (let ((_%self139548%_ _%self139544%_))
          (if (##fx< '2 (##structure-length _%self139548%_))
              (begin
                (##unchecked-structure-set! _%self139548%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self139548%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self139548%_
                     '2
                     (##structure-length _%self139548%_)))
          (if _%bind?139545%_
              (begin
                (let ((__method139612
                       (__method-ref
                        _%self139548%_
                        'bind-core-syntax-expanders!)))
                  (if __method139612
                      (__method139612 _%self139548%_)
                      (begin
                        (error '"Missing method"
                               _%self139548%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method139613
                       (__method-ref
                        _%self139548%_
                        'bind-core-macro-expanders!)))
                  (if __method139613
                      (__method139613 _%self139548%_)
                      (begin
                        (error '"Missing method"
                               _%self139548%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method139614
                       (__method-ref _%self139548%_ 'bind-core-features!)))
                  (if __method139614
                      (__method139614 _%self139548%_)
                      (begin
                        (error '"Missing method"
                               _%self139548%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self139562%_)
        (let ((_%bind?139564%_ '#t))
          (gx#root-context:::init!__% _%self139562%_ _%bind?139564%_))))
    (define gx#root-context:::init!
      (lambda _g139616_
        (let ((_g139617_ (##length _g139616_)))
          (cond ((##fx= _g139617_ 1)
                 (apply gx#root-context:::init!__0 _g139616_))
                ((##fx= _g139617_ 2)
                 (apply gx#root-context:::init!__% _g139616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g139616_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass139568 __method-table139569)
        (let ((__bind-core-syntax-expanders!139570
               (__make-promise
                (lambda ()
                  (let ((__method139573
                         (symbolic-table-ref
                          __method-table139569
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method139573
                        __method139573
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!139571
               (__make-promise
                (lambda ()
                  (let ((__method139574
                         (symbolic-table-ref
                          __method-table139569
                          'bind-core-features!
                          '#f)))
                    (if __method139574
                        __method139574
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!139572
               (__make-promise
                (lambda ()
                  (let ((__method139575
                         (symbolic-table-ref
                          __method-table139569
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method139575
                        __method139575
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda139542139559%_
                 (lambda (_%self139544%_ _%bind?139545%_)
                   (let ((_%self139548%_ _%self139544%_))
                     (if (##fx< '2 (##structure-length _%self139548%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self139548%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self139548%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self139548%_
                                '2
                                (##structure-length _%self139548%_)))
                     (if _%bind?139545%_
                         (begin
                           ((force __bind-core-syntax-expanders!139570)
                            _%self139548%_)
                           ((force __bind-core-macro-expanders!139572)
                            _%self139548%_)
                           ((force __bind-core-features!139571)
                            _%self139548%_))
                         '#!void)))))
            (lambda _g139618_
              (let ((_g139619_ (##length _g139618_)))
                (cond ((##fx= _g139619_ 1)
                       (apply (lambda (_%self139562%_)
                                (let ((_%bind?139564%_ '#t))
                                  (_%opt-lambda139542139559%_
                                   _%self139562%_
                                   _%bind?139564%_)))
                              _g139618_))
                      ((##fx= _g139619_ 2)
                       (apply _%opt-lambda139542139559%_ _g139618_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g139618_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self139389%_ _%super139390%_)
        (let* ((_%self139393%_ _%self139389%_)
               (_%super139409%_
                (let ((_%$e139403%_ _%super139390%_))
                  (if _%$e139403%_
                      _%$e139403%_
                      (let ((_%$e139406%_ (gx#core-context-root__0)))
                        (if _%$e139406%_
                            _%$e139406%_
                            (let ((__obj139615
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj139615)
                              __obj139615)))))))
          (if (##fx< '5 (##structure-length _%self139393%_))
              (begin
                (##unchecked-structure-set! _%self139393%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self139393%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self139393%_
                 _%super139409%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self139393%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self139393%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self139393%_
                     '5
                     (##structure-length _%self139393%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self139414%_)
        (let ((_%super139416%_ '#f))
          (gx#top-context:::init!__% _%self139414%_ _%super139416%_))))
    (define gx#top-context:::init!
      (lambda _g139620_
        (let ((_g139621_ (##length _g139620_)))
          (cond ((##fx= _g139621_ 1)
                 (apply gx#top-context:::init!__0 _g139620_))
                ((##fx= _g139621_ 2)
                 (apply gx#top-context:::init!__% _g139620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g139620_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self139109%_ _%bindings139110%_)
        (let ((_%self139113%_ _%self139109%_))
          (for-each
           (lambda (_%bind139123%_)
             (let* ((_%bind139124139131%_ _%bind139123%_)
                    (_%E139126139135%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind139124139131%_
                              '([id . rest]))
                       '#!void))
                    (_%K139127139244%_
                     (lambda (_%rest139138%_ _%id139139%_)
                       (gx#core-context-put!
                        _%self139113%_
                        _%id139139%_
                        (##structure
                         gx#syntax-binding::t
                         _%id139139%_
                         _%id139139%_
                         '#f
                         (let* ((_%rest139140139151%_ _%rest139138%_)
                                (_%E139142139155%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest139140139151%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K139143139220%_
                                 (lambda (_%compiler139158%_
                                          _%expander139159%_
                                          _%key139160%_)
                                   ((let* ((_%key139161139174%_ _%key139160%_)
                                           (_%E139167139178%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key139161139174%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K139172139214%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K139171139207%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K139170139199%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K139169139191%_
                                             (lambda () gx#make-special-form))
                                            (_%K139168139183%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match139166139186%_
                                                (lambda ()
                                                  (if (##eq? _%key139161139174%_
                                                             'expr:)
                                                      (_%K139168139183%_)
                                                      (_%E139167139178%_))))
                                               (_%try-match139165139194%_
                                                (lambda ()
                                                  (if (##eq? _%key139161139174%_
                                                             'special:)
                                                      (_%K139169139191%_)
                                                      (_%try-match139166139186%_))))
                                               (_%try-match139164139202%_
                                                (lambda ()
                                                  (if (##eq? _%key139161139174%_
                                                             'define:)
                                                      (_%K139170139199%_)
                                                      (_%try-match139165139194%_))))
                                               (_%try-match139163139210%_
                                                (lambda ()
                                                  (if (##eq? _%key139161139174%_
                                                             'module:)
                                                      (_%K139171139207%_)
                                                      (_%try-match139164139202%_)))))
                                          (if (##eq? _%key139161139174%_ 'top:)
                                              (_%K139172139214%_)
                                              (_%try-match139163139210%_)))))
                                    _%expander139159%_
                                    _%id139139%_
                                    (let ((_%$e139217%_ _%compiler139158%_))
                                      (if _%$e139217%_
                                          _%$e139217%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest139140139151%_)
                               (let ((_%hd139144139223%_
                                      (##car _%rest139140139151%_))
                                     (_%tl139145139225%_
                                      (##cdr _%rest139140139151%_)))
                                 (let ((_%key139228%_ _%hd139144139223%_))
                                   (if (pair? _%tl139145139225%_)
                                       (let ((_%hd139146139230%_
                                              (##car _%tl139145139225%_))
                                             (_%tl139147139232%_
                                              (##cdr _%tl139145139225%_)))
                                         (let ((_%expander139235%_
                                                _%hd139146139230%_))
                                           (if (pair? _%tl139147139232%_)
                                               (let ((_%hd139148139237%_
                                                      (##car _%tl139147139232%_))
                                                     (_%tl139149139239%_
                                                      (##cdr _%tl139147139232%_)))
                                                 (let ((_%compiler139242%_
                                                        _%hd139148139237%_))
                                                   (if (null? _%tl139149139239%_)
                                                       (_%K139143139220%_
                                                        _%compiler139242%_
                                                        _%expander139235%_
                                                        _%key139228%_)
                                                       (_%E139142139155%_))))
                                               (_%E139142139155%_))))
                                       (_%E139142139155%_))))
                               (_%E139142139155%_))))))))
               (if (pair? _%bind139124139131%_)
                   (let ((_%hd139128139247%_ (##car _%bind139124139131%_))
                         (_%tl139129139249%_ (##cdr _%bind139124139131%_)))
                     (let* ((_%id139252%_ _%hd139128139247%_)
                            (_%rest139254%_ _%tl139129139249%_))
                       (_%K139127139244%_ _%rest139254%_ _%id139252%_)))
                   (_%E139126139135%_))))
           _%bindings139110%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self139259%_)
        (let ((_%bindings139261%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self139259%_
           _%bindings139261%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g139622_
        (let ((_g139623_ (##length _g139622_)))
          (cond ((##fx= _g139623_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g139622_))
                ((##fx= _g139623_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g139622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g139622_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self138870%_ _%bindings138871%_)
        (let ((_%self138874%_ _%self138870%_))
          (for-each
           (lambda (_%bind138884%_)
             (let* ((_%bind138885138892%_ _%bind138884%_)
                    (_%E138887138896%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind138885138892%_
                              '([id . rest]))
                       '#!void))
                    (_%K138888138964%_
                     (lambda (_%rest138899%_ _%id138900%_)
                       (gx#core-context-put!
                        _%self138874%_
                        _%id138900%_
                        (##structure
                         gx#syntax-binding::t
                         _%id138900%_
                         _%id138900%_
                         '#f
                         (let* ((_%rest138901138916%_ _%rest138899%_)
                                (_%E138905138920%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest138901138916%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K138910138949%_
                                  (lambda (_%core-id138947%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id138947%_)))
                                 (_%K138907138934%_
                                  (lambda (_%proc138932%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc138932%_)))
                                 (_%K138906138925%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id138900%_))))
                             (let ((_%try-match138904138928%_
                                    (lambda ()
                                      (if (null? _%rest138901138916%_)
                                          (_%K138906138925%_)
                                          (_%E138905138920%_)))))
                               (if (pair? _%rest138901138916%_)
                                   (let ((_%tl138912138954%_
                                          (##cdr _%rest138901138916%_))
                                         (_%hd138911138952%_
                                          (##car _%rest138901138916%_)))
                                     (if (##eq? _%hd138911138952%_ '=>)
                                         (if (pair? _%tl138912138954%_)
                                             (let ((_%tl138914138959%_
                                                    (##cdr _%tl138912138954%_))
                                                   (_%hd138913138957%_
                                                    (##car _%tl138912138954%_)))
                                               (if (null? _%tl138914138959%_)
                                                   (let ((_%core-id138962%_
                                                          _%hd138913138957%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id138962%_))
                                                   (_%E138905138920%_)))
                                             (if (null? _%tl138912138954%_)
                                                 (let ((_%proc138942%_
                                                        _%hd138911138952%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc138942%_))
                                                 (_%E138905138920%_)))
                                         (if (null? _%tl138912138954%_)
                                             (let ((_%proc138942%_
                                                    _%hd138911138952%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc138942%_))
                                             (_%E138905138920%_))))
                                   (_%try-match138904138928%_))))))))))
               (if (pair? _%bind138885138892%_)
                   (let ((_%hd138889138967%_ (##car _%bind138885138892%_))
                         (_%tl138890138969%_ (##cdr _%bind138885138892%_)))
                     (let* ((_%id138972%_ _%hd138889138967%_)
                            (_%rest138974%_ _%tl138890138969%_))
                       (_%K138888138964%_ _%rest138974%_ _%id138972%_)))
                   (_%E138887138896%_))))
           _%bindings138871%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self138979%_)
        (let ((_%bindings138981%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self138979%_
           _%bindings138981%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g139624_
        (let ((_g139625_ (##length _g139624_)))
          (cond ((##fx= _g139625_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g139624_))
                ((##fx= _g139625_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g139624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g139624_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self138601%_)
        (let ((_%self138604%_ _%self138601%_))
          (letrec ((_%linux-variant?138615%_
                    (lambda (_%sys-type138715%_)
                      (let* ((_%g138716138724%_
                              (__string-split
                               (symbol->string _%sys-type138715%_)
                               '#\-))
                             (_%else138718138732%_ (lambda () '#f))
                             (_%K138720138737%_
                              (lambda (_%rest138735%_)
                                (not (null? _%rest138735%_)))))
                        (if (pair? _%g138716138724%_)
                            (let ((_%hd138721138740%_
                                   (##car _%g138716138724%_))
                                  (_%tl138722138742%_
                                   (##cdr _%g138716138724%_)))
                              (if (equal? _%hd138721138740%_ '"linux")
                                  (let ((_%rest138745%_ _%tl138722138742%_))
                                    (_%K138720138737%_ _%rest138745%_))
                                  (_%else138718138732%_)))
                            (_%else138718138732%_)))))
                   (_%bsd-variant138616%_
                    (lambda (_%sys-type138674%_)
                      (let ((_%sys-type-str138676%_
                             (symbol->string _%sys-type138674%_)))
                        (let _%lp138678%_ ((_%rest138680%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest138681138689%_ _%rest138680%_)
                                 (_%else138683138697%_ (lambda () '#f))
                                 (_%K138685138703%_
                                  (lambda (_%rest138700%_ _%sys138701%_)
                                    (if (string-prefix?
                                         _%sys138701%_
                                         _%sys-type-str138676%_)
                                        _%sys138701%_
                                        (_%lp138678%_ _%rest138700%_)))))
                            (if (pair? _%rest138681138689%_)
                                (let ((_%hd138686138706%_
                                       (##car _%rest138681138689%_))
                                      (_%tl138687138708%_
                                       (##cdr _%rest138681138689%_)))
                                  (let* ((_%sys138711%_ _%hd138686138706%_)
                                         (_%rest138713%_ _%tl138687138708%_))
                                    (_%K138685138703%_
                                     _%rest138713%_
                                     _%sys138711%_)))
                                (_%else138683138697%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self138604%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self138604%_)
            (let* ((_%g138617138629%_ (system-type))
                   (_%else138619138637%_ (lambda () '#!void))
                   (_%K138621138650%_
                    (lambda (_%sys-type138640%_
                             _%sys-vendor138641%_
                             _%sys-cpu138642%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu138642%_
                       '#f
                       '0
                       _%self138604%_)
                      (gx#core-bind-feature!__%
                       _%sys-type138640%_
                       '#f
                       '0
                       _%self138604%_)
                      (if (_%linux-variant?138615%_ _%sys-type138640%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self138604%_)
                          (let ((_%$e138645%_
                                 (_%bsd-variant138616%_ _%sys-type138640%_)))
                            (if _%$e138645%_
                                ((lambda (_%sys-prefix138648%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self138604%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix138648%_)
                                    '#f
                                    '0
                                    _%self138604%_))
                                 _%$e138645%_)
                                '#!void))))))
              (if (pair? _%g138617138629%_)
                  (let ((_%hd138622138653%_ (##car _%g138617138629%_))
                        (_%tl138623138655%_ (##cdr _%g138617138629%_)))
                    (let ((_%sys-cpu138658%_ _%hd138622138653%_))
                      (if (pair? _%tl138623138655%_)
                          (let ((_%hd138624138660%_ (##car _%tl138623138655%_))
                                (_%tl138625138662%_
                                 (##cdr _%tl138623138655%_)))
                            (let ((_%sys-vendor138665%_ _%hd138624138660%_))
                              (if (pair? _%tl138625138662%_)
                                  (let ((_%hd138626138667%_
                                         (##car _%tl138625138662%_))
                                        (_%tl138627138669%_
                                         (##cdr _%tl138625138662%_)))
                                    (let ((_%sys-type138672%_
                                           _%hd138626138667%_))
                                      (if (null? _%tl138627138669%_)
                                          (_%K138621138650%_
                                           _%sys-type138672%_
                                           _%sys-vendor138665%_
                                           _%sys-cpu138658%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self138604%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
