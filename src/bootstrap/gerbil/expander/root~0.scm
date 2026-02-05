(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1770334640)
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
      (lambda (_%self155138%_ _%bind?155139%_)
        (let ((_%self155142%_ _%self155138%_))
          (if (##fx< '2 (##structure-length _%self155142%_))
              (begin
                (##unchecked-structure-set! _%self155142%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self155142%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self155142%_
                     '2
                     (##structure-length _%self155142%_)))
          (if _%bind?155139%_
              (begin
                (let ((__method155206
                       (__method-ref
                        _%self155142%_
                        'bind-core-syntax-expanders!)))
                  (if __method155206
                      (__method155206 _%self155142%_)
                      (begin
                        (error '"Missing method"
                               _%self155142%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method155207
                       (__method-ref
                        _%self155142%_
                        'bind-core-macro-expanders!)))
                  (if __method155207
                      (__method155207 _%self155142%_)
                      (begin
                        (error '"Missing method"
                               _%self155142%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method155208
                       (__method-ref _%self155142%_ 'bind-core-features!)))
                  (if __method155208
                      (__method155208 _%self155142%_)
                      (begin
                        (error '"Missing method"
                               _%self155142%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self155156%_)
        (let ((_%bind?155158%_ '#t))
          (gx#root-context:::init!__% _%self155156%_ _%bind?155158%_))))
    (define gx#root-context:::init!
      (lambda _g155212_
        (let ((_g155213_ (##length _g155212_)))
          (cond ((##fx= _g155213_ 1)
                 (apply gx#root-context:::init!__0 _g155212_))
                ((##fx= _g155213_ 2)
                 (apply gx#root-context:::init!__% _g155212_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g155212_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass155162 __method-table155163)
        (let ((__bind-core-macro-expanders!155164
               (__make-promise
                (lambda ()
                  (let ((__method155167
                         (symbolic-table-ref
                          __method-table155163
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method155167
                        __method155167
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!155165
               (__make-promise
                (lambda ()
                  (let ((__method155168
                         (symbolic-table-ref
                          __method-table155163
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method155168
                        __method155168
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!155166
               (__make-promise
                (lambda ()
                  (let ((__method155169
                         (symbolic-table-ref
                          __method-table155163
                          'bind-core-features!
                          '#f)))
                    (if __method155169
                        __method155169
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda155136155153%_
                 (lambda (_%self155138%_ _%bind?155139%_)
                   (let ((_%self155142%_ _%self155138%_))
                     (if (##fx< '2 (##structure-length _%self155142%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self155142%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self155142%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self155142%_
                                '2
                                (##structure-length _%self155142%_)))
                     (if _%bind?155139%_
                         (begin
                           ((force __bind-core-syntax-expanders!155165)
                            _%self155142%_)
                           ((force __bind-core-macro-expanders!155164)
                            _%self155142%_)
                           ((force __bind-core-features!155166)
                            _%self155142%_))
                         '#!void)))))
            (lambda _g155214_
              (let ((_g155215_ (##length _g155214_)))
                (cond ((##fx= _g155215_ 1)
                       (apply (lambda (_%self155156%_)
                                (let ((_%bind?155158%_ '#t))
                                  (_%opt-lambda155136155153%_
                                   _%self155156%_
                                   _%bind?155158%_)))
                              _g155214_))
                      ((##fx= _g155215_ 2)
                       (apply _%opt-lambda155136155153%_ _g155214_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g155214_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self154983%_ _%super154984%_)
        (let* ((_%self154987%_ _%self154983%_)
               (_%super155003%_
                (let ((_%$e154997%_ _%super154984%_))
                  (if _%$e154997%_
                      _%$e154997%_
                      (let ((_%$e155000%_ (gx#core-context-root__0)))
                        (if _%$e155000%_
                            _%$e155000%_
                            (let ((__obj155209
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj155209)
                              __obj155209)))))))
          (if (##fx< '5 (##structure-length _%self154987%_))
              (begin
                (##unchecked-structure-set! _%self154987%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self154987%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self154987%_
                 _%super155003%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self154987%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self154987%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self154987%_
                     '5
                     (##structure-length _%self154987%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self155008%_)
        (let ((_%super155010%_ '#f))
          (gx#top-context:::init!__% _%self155008%_ _%super155010%_))))
    (define gx#top-context:::init!
      (lambda _g155216_
        (let ((_g155217_ (##length _g155216_)))
          (cond ((##fx= _g155217_ 1)
                 (apply gx#top-context:::init!__0 _g155216_))
                ((##fx= _g155217_ 2)
                 (apply gx#top-context:::init!__% _g155216_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g155216_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self154704%_ _%bindings154705%_)
        (let ((_%self154708%_ _%self154704%_))
          (for-each
           (lambda (_%bind154718%_)
             (let* ((_%bind154719154726%_ _%bind154718%_)
                    (_%E154721154729%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind154719154726%_
                              '([id . rest]))
                       '#!void))
                    (_%K154722154838%_
                     (lambda (_%rest154732%_ _%id154733%_)
                       (gx#core-context-put!
                        _%self154708%_
                        _%id154733%_
                        (let ((__obj155210
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj155210
                           _%id154733%_
                           _%id154733%_
                           '#f
                           (let* ((_%rest154734154745%_ _%rest154732%_)
                                  (_%E154736154749%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest154734154745%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K154737154814%_
                                   (lambda (_%compiler154752%_
                                            _%expander154753%_
                                            _%key154754%_)
                                     ((let* ((_%key154755154768%_
                                              _%key154754%_)
                                             (_%E154761154772%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key154755154768%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K154766154808%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K154765154801%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K154764154793%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K154763154785%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K154762154777%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match154760154780%_
                                                  (lambda ()
                                                    (if (##eq? _%key154755154768%_
                                                               'expr:)
                                                        (_%K154762154777%_)
                                                        (_%E154761154772%_))))
                                                 (_%try-match154759154788%_
                                                  (lambda ()
                                                    (if (##eq? _%key154755154768%_
                                                               'special:)
                                                        (_%K154763154785%_)
                                                        (_%try-match154760154780%_))))
                                                 (_%try-match154758154796%_
                                                  (lambda ()
                                                    (if (##eq? _%key154755154768%_
                                                               'define:)
                                                        (_%K154764154793%_)
                                                        (_%try-match154759154788%_))))
                                                 (_%try-match154757154804%_
                                                  (lambda ()
                                                    (if (##eq? _%key154755154768%_
                                                               'module:)
                                                        (_%K154765154801%_)
                                                        (_%try-match154758154796%_)))))
                                            (if (##eq? _%key154755154768%_
                                                       'top:)
                                                (_%K154766154808%_)
                                                (_%try-match154757154804%_)))))
                                      _%expander154753%_
                                      _%id154733%_
                                      (let ((_%$e154811%_ _%compiler154752%_))
                                        (if _%$e154811%_
                                            _%$e154811%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest154734154745%_)
                                 (let ((_%hd154738154817%_
                                        (##car _%rest154734154745%_))
                                       (_%tl154739154819%_
                                        (##cdr _%rest154734154745%_)))
                                   (let ((_%key154822%_ _%hd154738154817%_))
                                     (if (pair? _%tl154739154819%_)
                                         (let ((_%hd154740154824%_
                                                (##car _%tl154739154819%_))
                                               (_%tl154741154826%_
                                                (##cdr _%tl154739154819%_)))
                                           (let ((_%expander154829%_
                                                  _%hd154740154824%_))
                                             (if (pair? _%tl154741154826%_)
                                                 (let ((_%hd154742154831%_
                                                        (##car _%tl154741154826%_))
                                                       (_%tl154743154833%_
                                                        (##cdr _%tl154741154826%_)))
                                                   (let ((_%compiler154836%_
                                                          _%hd154742154831%_))
                                                     (if (null? _%tl154743154833%_)
                                                         (_%K154737154814%_
                                                          _%compiler154836%_
                                                          _%expander154829%_
                                                          _%key154822%_)
                                                         (_%E154736154749%_))))
                                                 (_%E154736154749%_))))
                                         (_%E154736154749%_))))
                                 (_%E154736154749%_))))
                          __obj155210)))))
               (if (pair? _%bind154719154726%_)
                   (let ((_%hd154723154841%_ (##car _%bind154719154726%_))
                         (_%tl154724154843%_ (##cdr _%bind154719154726%_)))
                     (let* ((_%id154846%_ _%hd154723154841%_)
                            (_%rest154848%_ _%tl154724154843%_))
                       (_%K154722154838%_ _%rest154848%_ _%id154846%_)))
                   (_%E154721154729%_))))
           _%bindings154705%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self154853%_)
        (let ((_%bindings154855%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self154853%_
           _%bindings154855%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g155218_
        (let ((_g155219_ (##length _g155218_)))
          (cond ((##fx= _g155219_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g155218_))
                ((##fx= _g155219_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g155218_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g155218_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self154466%_ _%bindings154467%_)
        (let ((_%self154470%_ _%self154466%_))
          (for-each
           (lambda (_%bind154480%_)
             (let* ((_%bind154481154488%_ _%bind154480%_)
                    (_%E154483154491%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind154481154488%_
                              '([id . rest]))
                       '#!void))
                    (_%K154484154559%_
                     (lambda (_%rest154494%_ _%id154495%_)
                       (gx#core-context-put!
                        _%self154470%_
                        _%id154495%_
                        (let ((__obj155211
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj155211
                           _%id154495%_
                           _%id154495%_
                           '#f
                           (let* ((_%rest154496154511%_ _%rest154494%_)
                                  (_%E154500154515%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest154496154511%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K154505154544%_
                                    (lambda (_%core-id154542%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id154542%_)))
                                   (_%K154502154529%_
                                    (lambda (_%proc154527%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc154527%_)))
                                   (_%K154501154520%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id154495%_))))
                               (let ((_%try-match154499154523%_
                                      (lambda ()
                                        (if (null? _%rest154496154511%_)
                                            (_%K154501154520%_)
                                            (_%E154500154515%_)))))
                                 (if (pair? _%rest154496154511%_)
                                     (let ((_%tl154507154549%_
                                            (##cdr _%rest154496154511%_))
                                           (_%hd154506154547%_
                                            (##car _%rest154496154511%_)))
                                       (if (##eq? _%hd154506154547%_ '=>)
                                           (if (pair? _%tl154507154549%_)
                                               (let ((_%tl154509154554%_
                                                      (##cdr _%tl154507154549%_))
                                                     (_%hd154508154552%_
                                                      (##car _%tl154507154549%_)))
                                                 (if (null? _%tl154509154554%_)
                                                     (let ((_%core-id154557%_
                                                            _%hd154508154552%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id154557%_))
                                                     (_%E154500154515%_)))
                                               (if (null? _%tl154507154549%_)
                                                   (let ((_%proc154537%_
                                                          _%hd154506154547%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc154537%_))
                                                   (_%E154500154515%_)))
                                           (if (null? _%tl154507154549%_)
                                               (let ((_%proc154537%_
                                                      _%hd154506154547%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc154537%_))
                                               (_%E154500154515%_))))
                                     (_%try-match154499154523%_))))))
                          __obj155211)))))
               (if (pair? _%bind154481154488%_)
                   (let ((_%hd154485154562%_ (##car _%bind154481154488%_))
                         (_%tl154486154564%_ (##cdr _%bind154481154488%_)))
                     (let* ((_%id154567%_ _%hd154485154562%_)
                            (_%rest154569%_ _%tl154486154564%_))
                       (_%K154484154559%_ _%rest154569%_ _%id154567%_)))
                   (_%E154483154491%_))))
           _%bindings154467%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self154574%_)
        (let ((_%bindings154576%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self154574%_
           _%bindings154576%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g155220_
        (let ((_g155221_ (##length _g155220_)))
          (cond ((##fx= _g155221_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g155220_))
                ((##fx= _g155221_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g155220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g155220_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self154197%_)
        (let ((_%self154200%_ _%self154197%_))
          (letrec ((_%linux-variant?154211%_
                    (lambda (_%sys-type154311%_)
                      (let* ((_%g154312154320%_
                              (__string-split
                               (symbol->string _%sys-type154311%_)
                               '#\-))
                             (_%else154314154328%_ (lambda () '#f))
                             (_%K154316154333%_
                              (lambda (_%rest154331%_)
                                (not (null? _%rest154331%_)))))
                        (if (pair? _%g154312154320%_)
                            (let ((_%hd154317154336%_
                                   (##car _%g154312154320%_))
                                  (_%tl154318154338%_
                                   (##cdr _%g154312154320%_)))
                              (if (equal? _%hd154317154336%_ '"linux")
                                  (let ((_%rest154341%_ _%tl154318154338%_))
                                    (_%K154316154333%_ _%rest154341%_))
                                  (_%else154314154328%_)))
                            (_%else154314154328%_)))))
                   (_%bsd-variant154212%_
                    (lambda (_%sys-type154270%_)
                      (let ((_%sys-type-str154272%_
                             (symbol->string _%sys-type154270%_)))
                        (let _%lp154274%_ ((_%rest154276%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest154277154285%_ _%rest154276%_)
                                 (_%else154279154293%_ (lambda () '#f))
                                 (_%K154281154299%_
                                  (lambda (_%rest154296%_ _%sys154297%_)
                                    (if (string-prefix?
                                         _%sys154297%_
                                         _%sys-type-str154272%_)
                                        _%sys154297%_
                                        (_%lp154274%_ _%rest154296%_)))))
                            (if (pair? _%rest154277154285%_)
                                (let ((_%hd154282154302%_
                                       (##car _%rest154277154285%_))
                                      (_%tl154283154304%_
                                       (##cdr _%rest154277154285%_)))
                                  (let* ((_%sys154307%_ _%hd154282154302%_)
                                         (_%rest154309%_ _%tl154283154304%_))
                                    (_%K154281154299%_
                                     _%rest154309%_
                                     _%sys154307%_)))
                                (_%else154279154293%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self154200%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self154200%_)
            (let* ((_%g154213154225%_ (system-type))
                   (_%else154215154233%_ (lambda () '#!void))
                   (_%K154217154246%_
                    (lambda (_%sys-type154236%_
                             _%sys-vendor154237%_
                             _%sys-cpu154238%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu154238%_
                       '#f
                       '0
                       _%self154200%_)
                      (gx#core-bind-feature!__%
                       _%sys-type154236%_
                       '#f
                       '0
                       _%self154200%_)
                      (if (_%linux-variant?154211%_ _%sys-type154236%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self154200%_)
                          (let ((_%$e154241%_
                                 (_%bsd-variant154212%_ _%sys-type154236%_)))
                            (if _%$e154241%_
                                ((lambda (_%sys-prefix154244%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self154200%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix154244%_)
                                    '#f
                                    '0
                                    _%self154200%_))
                                 _%$e154241%_)
                                '#!void))))))
              (if (pair? _%g154213154225%_)
                  (let ((_%hd154218154249%_ (##car _%g154213154225%_))
                        (_%tl154219154251%_ (##cdr _%g154213154225%_)))
                    (let ((_%sys-cpu154254%_ _%hd154218154249%_))
                      (if (pair? _%tl154219154251%_)
                          (let ((_%hd154220154256%_ (##car _%tl154219154251%_))
                                (_%tl154221154258%_
                                 (##cdr _%tl154219154251%_)))
                            (let ((_%sys-vendor154261%_ _%hd154220154256%_))
                              (if (pair? _%tl154221154258%_)
                                  (let ((_%hd154222154263%_
                                         (##car _%tl154221154258%_))
                                        (_%tl154223154265%_
                                         (##cdr _%tl154221154258%_)))
                                    (let ((_%sys-type154268%_
                                           _%hd154222154263%_))
                                      (if (null? _%tl154223154265%_)
                                          (_%K154217154246%_
                                           _%sys-type154268%_
                                           _%sys-vendor154261%_
                                           _%sys-cpu154254%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self154200%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
