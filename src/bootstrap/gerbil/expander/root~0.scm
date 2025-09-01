(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1756721296)
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
      (lambda (_%self139959%_ _%bind?139960%_)
        (let ((_%self139963%_ _%self139959%_))
          (if (##fx< '2 (##structure-length _%self139963%_))
              (begin
                (##unchecked-structure-set! _%self139963%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self139963%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self139963%_
                     '2
                     (##structure-length _%self139963%_)))
          (if _%bind?139960%_
              (begin
                (let ((__method140027
                       (__method-ref
                        _%self139963%_
                        'bind-core-syntax-expanders!)))
                  (if __method140027
                      (__method140027 _%self139963%_)
                      (begin
                        (error '"Missing method"
                               _%self139963%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method140028
                       (__method-ref
                        _%self139963%_
                        'bind-core-macro-expanders!)))
                  (if __method140028
                      (__method140028 _%self139963%_)
                      (begin
                        (error '"Missing method"
                               _%self139963%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method140029
                       (__method-ref _%self139963%_ 'bind-core-features!)))
                  (if __method140029
                      (__method140029 _%self139963%_)
                      (begin
                        (error '"Missing method"
                               _%self139963%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self139977%_)
        (let ((_%bind?139979%_ '#t))
          (gx#root-context:::init!__% _%self139977%_ _%bind?139979%_))))
    (define gx#root-context:::init!
      (lambda _g140031_
        (let ((_g140032_ (##length _g140031_)))
          (cond ((##fx= _g140032_ 1)
                 (apply gx#root-context:::init!__0 _g140031_))
                ((##fx= _g140032_ 2)
                 (apply gx#root-context:::init!__% _g140031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g140031_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass139983 __method-table139984)
        (let ((__bind-core-macro-expanders!139985
               (__make-promise
                (lambda ()
                  (let ((__method139988
                         (symbolic-table-ref
                          __method-table139984
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method139988
                        __method139988
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!139986
               (__make-promise
                (lambda ()
                  (let ((__method139989
                         (symbolic-table-ref
                          __method-table139984
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method139989
                        __method139989
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!139987
               (__make-promise
                (lambda ()
                  (let ((__method139990
                         (symbolic-table-ref
                          __method-table139984
                          'bind-core-features!
                          '#f)))
                    (if __method139990
                        __method139990
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda139957139974%_
                 (lambda (_%self139959%_ _%bind?139960%_)
                   (let ((_%self139963%_ _%self139959%_))
                     (if (##fx< '2 (##structure-length _%self139963%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self139963%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self139963%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self139963%_
                                '2
                                (##structure-length _%self139963%_)))
                     (if _%bind?139960%_
                         (begin
                           ((force __bind-core-syntax-expanders!139986)
                            _%self139963%_)
                           ((force __bind-core-macro-expanders!139985)
                            _%self139963%_)
                           ((force __bind-core-features!139987)
                            _%self139963%_))
                         '#!void)))))
            (lambda _g140033_
              (let ((_g140034_ (##length _g140033_)))
                (cond ((##fx= _g140034_ 1)
                       (apply (lambda (_%self139977%_)
                                (let ((_%bind?139979%_ '#t))
                                  (_%opt-lambda139957139974%_
                                   _%self139977%_
                                   _%bind?139979%_)))
                              _g140033_))
                      ((##fx= _g140034_ 2)
                       (apply _%opt-lambda139957139974%_ _g140033_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g140033_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self139804%_ _%super139805%_)
        (let* ((_%self139808%_ _%self139804%_)
               (_%super139824%_
                (let ((_%$e139818%_ _%super139805%_))
                  (if _%$e139818%_
                      _%$e139818%_
                      (let ((_%$e139821%_ (gx#core-context-root__0)))
                        (if _%$e139821%_
                            _%$e139821%_
                            (let ((__obj140030
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj140030)
                              __obj140030)))))))
          (if (##fx< '5 (##structure-length _%self139808%_))
              (begin
                (##unchecked-structure-set! _%self139808%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self139808%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self139808%_
                 _%super139824%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self139808%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self139808%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self139808%_
                     '5
                     (##structure-length _%self139808%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self139829%_)
        (let ((_%super139831%_ '#f))
          (gx#top-context:::init!__% _%self139829%_ _%super139831%_))))
    (define gx#top-context:::init!
      (lambda _g140035_
        (let ((_g140036_ (##length _g140035_)))
          (cond ((##fx= _g140036_ 1)
                 (apply gx#top-context:::init!__0 _g140035_))
                ((##fx= _g140036_ 2)
                 (apply gx#top-context:::init!__% _g140035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g140035_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self139524%_ _%bindings139525%_)
        (let ((_%self139528%_ _%self139524%_))
          (for-each
           (lambda (_%bind139538%_)
             (let* ((_%bind139539139546%_ _%bind139538%_)
                    (_%E139541139550%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind139539139546%_
                              '([id . rest]))
                       '#!void))
                    (_%K139542139659%_
                     (lambda (_%rest139553%_ _%id139554%_)
                       (gx#core-context-put!
                        _%self139528%_
                        _%id139554%_
                        (##structure
                         gx#syntax-binding::t
                         _%id139554%_
                         _%id139554%_
                         '#f
                         (let* ((_%rest139555139566%_ _%rest139553%_)
                                (_%E139557139570%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest139555139566%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K139558139635%_
                                 (lambda (_%compiler139573%_
                                          _%expander139574%_
                                          _%key139575%_)
                                   ((let* ((_%key139576139589%_ _%key139575%_)
                                           (_%E139582139593%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key139576139589%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K139587139629%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K139586139622%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K139585139614%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K139584139606%_
                                             (lambda () gx#make-special-form))
                                            (_%K139583139598%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match139581139601%_
                                                (lambda ()
                                                  (if (##eq? _%key139576139589%_
                                                             'expr:)
                                                      (_%K139583139598%_)
                                                      (_%E139582139593%_))))
                                               (_%try-match139580139609%_
                                                (lambda ()
                                                  (if (##eq? _%key139576139589%_
                                                             'special:)
                                                      (_%K139584139606%_)
                                                      (_%try-match139581139601%_))))
                                               (_%try-match139579139617%_
                                                (lambda ()
                                                  (if (##eq? _%key139576139589%_
                                                             'define:)
                                                      (_%K139585139614%_)
                                                      (_%try-match139580139609%_))))
                                               (_%try-match139578139625%_
                                                (lambda ()
                                                  (if (##eq? _%key139576139589%_
                                                             'module:)
                                                      (_%K139586139622%_)
                                                      (_%try-match139579139617%_)))))
                                          (if (##eq? _%key139576139589%_ 'top:)
                                              (_%K139587139629%_)
                                              (_%try-match139578139625%_)))))
                                    _%expander139574%_
                                    _%id139554%_
                                    (let ((_%$e139632%_ _%compiler139573%_))
                                      (if _%$e139632%_
                                          _%$e139632%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest139555139566%_)
                               (let ((_%hd139559139638%_
                                      (##car _%rest139555139566%_))
                                     (_%tl139560139640%_
                                      (##cdr _%rest139555139566%_)))
                                 (let ((_%key139643%_ _%hd139559139638%_))
                                   (if (pair? _%tl139560139640%_)
                                       (let ((_%hd139561139645%_
                                              (##car _%tl139560139640%_))
                                             (_%tl139562139647%_
                                              (##cdr _%tl139560139640%_)))
                                         (let ((_%expander139650%_
                                                _%hd139561139645%_))
                                           (if (pair? _%tl139562139647%_)
                                               (let ((_%hd139563139652%_
                                                      (##car _%tl139562139647%_))
                                                     (_%tl139564139654%_
                                                      (##cdr _%tl139562139647%_)))
                                                 (let ((_%compiler139657%_
                                                        _%hd139563139652%_))
                                                   (if (null? _%tl139564139654%_)
                                                       (_%K139558139635%_
                                                        _%compiler139657%_
                                                        _%expander139650%_
                                                        _%key139643%_)
                                                       (_%E139557139570%_))))
                                               (_%E139557139570%_))))
                                       (_%E139557139570%_))))
                               (_%E139557139570%_))))))))
               (if (pair? _%bind139539139546%_)
                   (let ((_%hd139543139662%_ (##car _%bind139539139546%_))
                         (_%tl139544139664%_ (##cdr _%bind139539139546%_)))
                     (let* ((_%id139667%_ _%hd139543139662%_)
                            (_%rest139669%_ _%tl139544139664%_))
                       (_%K139542139659%_ _%rest139669%_ _%id139667%_)))
                   (_%E139541139550%_))))
           _%bindings139525%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self139674%_)
        (let ((_%bindings139676%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self139674%_
           _%bindings139676%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g140037_
        (let ((_g140038_ (##length _g140037_)))
          (cond ((##fx= _g140038_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g140037_))
                ((##fx= _g140038_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g140037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g140037_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self139285%_ _%bindings139286%_)
        (let ((_%self139289%_ _%self139285%_))
          (for-each
           (lambda (_%bind139299%_)
             (let* ((_%bind139300139307%_ _%bind139299%_)
                    (_%E139302139311%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind139300139307%_
                              '([id . rest]))
                       '#!void))
                    (_%K139303139379%_
                     (lambda (_%rest139314%_ _%id139315%_)
                       (gx#core-context-put!
                        _%self139289%_
                        _%id139315%_
                        (##structure
                         gx#syntax-binding::t
                         _%id139315%_
                         _%id139315%_
                         '#f
                         (let* ((_%rest139316139331%_ _%rest139314%_)
                                (_%E139320139335%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest139316139331%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K139325139364%_
                                  (lambda (_%core-id139362%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id139362%_)))
                                 (_%K139322139349%_
                                  (lambda (_%proc139347%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc139347%_)))
                                 (_%K139321139340%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id139315%_))))
                             (let ((_%try-match139319139343%_
                                    (lambda ()
                                      (if (null? _%rest139316139331%_)
                                          (_%K139321139340%_)
                                          (_%E139320139335%_)))))
                               (if (pair? _%rest139316139331%_)
                                   (let ((_%tl139327139369%_
                                          (##cdr _%rest139316139331%_))
                                         (_%hd139326139367%_
                                          (##car _%rest139316139331%_)))
                                     (if (##eq? _%hd139326139367%_ '=>)
                                         (if (pair? _%tl139327139369%_)
                                             (let ((_%tl139329139374%_
                                                    (##cdr _%tl139327139369%_))
                                                   (_%hd139328139372%_
                                                    (##car _%tl139327139369%_)))
                                               (if (null? _%tl139329139374%_)
                                                   (let ((_%core-id139377%_
                                                          _%hd139328139372%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id139377%_))
                                                   (_%E139320139335%_)))
                                             (if (null? _%tl139327139369%_)
                                                 (let ((_%proc139357%_
                                                        _%hd139326139367%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc139357%_))
                                                 (_%E139320139335%_)))
                                         (if (null? _%tl139327139369%_)
                                             (let ((_%proc139357%_
                                                    _%hd139326139367%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc139357%_))
                                             (_%E139320139335%_))))
                                   (_%try-match139319139343%_))))))))))
               (if (pair? _%bind139300139307%_)
                   (let ((_%hd139304139382%_ (##car _%bind139300139307%_))
                         (_%tl139305139384%_ (##cdr _%bind139300139307%_)))
                     (let* ((_%id139387%_ _%hd139304139382%_)
                            (_%rest139389%_ _%tl139305139384%_))
                       (_%K139303139379%_ _%rest139389%_ _%id139387%_)))
                   (_%E139302139311%_))))
           _%bindings139286%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self139394%_)
        (let ((_%bindings139396%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self139394%_
           _%bindings139396%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g140039_
        (let ((_g140040_ (##length _g140039_)))
          (cond ((##fx= _g140040_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g140039_))
                ((##fx= _g140040_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g140039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g140039_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self139016%_)
        (let ((_%self139019%_ _%self139016%_))
          (letrec ((_%linux-variant?139030%_
                    (lambda (_%sys-type139130%_)
                      (let* ((_%g139131139139%_
                              (__string-split
                               (symbol->string _%sys-type139130%_)
                               '#\-))
                             (_%else139133139147%_ (lambda () '#f))
                             (_%K139135139152%_
                              (lambda (_%rest139150%_)
                                (not (null? _%rest139150%_)))))
                        (if (pair? _%g139131139139%_)
                            (let ((_%hd139136139155%_
                                   (##car _%g139131139139%_))
                                  (_%tl139137139157%_
                                   (##cdr _%g139131139139%_)))
                              (if (equal? _%hd139136139155%_ '"linux")
                                  (let ((_%rest139160%_ _%tl139137139157%_))
                                    (_%K139135139152%_ _%rest139160%_))
                                  (_%else139133139147%_)))
                            (_%else139133139147%_)))))
                   (_%bsd-variant139031%_
                    (lambda (_%sys-type139089%_)
                      (let ((_%sys-type-str139091%_
                             (symbol->string _%sys-type139089%_)))
                        (let _%lp139093%_ ((_%rest139095%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest139096139104%_ _%rest139095%_)
                                 (_%else139098139112%_ (lambda () '#f))
                                 (_%K139100139118%_
                                  (lambda (_%rest139115%_ _%sys139116%_)
                                    (if (string-prefix?
                                         _%sys139116%_
                                         _%sys-type-str139091%_)
                                        _%sys139116%_
                                        (_%lp139093%_ _%rest139115%_)))))
                            (if (pair? _%rest139096139104%_)
                                (let ((_%hd139101139121%_
                                       (##car _%rest139096139104%_))
                                      (_%tl139102139123%_
                                       (##cdr _%rest139096139104%_)))
                                  (let* ((_%sys139126%_ _%hd139101139121%_)
                                         (_%rest139128%_ _%tl139102139123%_))
                                    (_%K139100139118%_
                                     _%rest139128%_
                                     _%sys139126%_)))
                                (_%else139098139112%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self139019%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self139019%_)
            (let* ((_%g139032139044%_ (system-type))
                   (_%else139034139052%_ (lambda () '#!void))
                   (_%K139036139065%_
                    (lambda (_%sys-type139055%_
                             _%sys-vendor139056%_
                             _%sys-cpu139057%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu139057%_
                       '#f
                       '0
                       _%self139019%_)
                      (gx#core-bind-feature!__%
                       _%sys-type139055%_
                       '#f
                       '0
                       _%self139019%_)
                      (if (_%linux-variant?139030%_ _%sys-type139055%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self139019%_)
                          (let ((_%$e139060%_
                                 (_%bsd-variant139031%_ _%sys-type139055%_)))
                            (if _%$e139060%_
                                ((lambda (_%sys-prefix139063%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self139019%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix139063%_)
                                    '#f
                                    '0
                                    _%self139019%_))
                                 _%$e139060%_)
                                '#!void))))))
              (if (pair? _%g139032139044%_)
                  (let ((_%hd139037139068%_ (##car _%g139032139044%_))
                        (_%tl139038139070%_ (##cdr _%g139032139044%_)))
                    (let ((_%sys-cpu139073%_ _%hd139037139068%_))
                      (if (pair? _%tl139038139070%_)
                          (let ((_%hd139039139075%_ (##car _%tl139038139070%_))
                                (_%tl139040139077%_
                                 (##cdr _%tl139038139070%_)))
                            (let ((_%sys-vendor139080%_ _%hd139039139075%_))
                              (if (pair? _%tl139040139077%_)
                                  (let ((_%hd139041139082%_
                                         (##car _%tl139040139077%_))
                                        (_%tl139042139084%_
                                         (##cdr _%tl139040139077%_)))
                                    (let ((_%sys-type139087%_
                                           _%hd139041139082%_))
                                      (if (null? _%tl139042139084%_)
                                          (_%K139036139065%_
                                           _%sys-type139087%_
                                           _%sys-vendor139080%_
                                           _%sys-cpu139073%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self139019%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
