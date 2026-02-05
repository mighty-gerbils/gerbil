(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1770333054)
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
      (lambda (_%self155135%_ _%bind?155136%_)
        (let ((_%self155139%_ _%self155135%_))
          (if (##fx< '2 (##structure-length _%self155139%_))
              (begin
                (##unchecked-structure-set! _%self155139%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self155139%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self155139%_
                     '2
                     (##structure-length _%self155139%_)))
          (if _%bind?155136%_
              (begin
                (let ((__method155203
                       (__method-ref
                        _%self155139%_
                        'bind-core-syntax-expanders!)))
                  (if __method155203
                      (__method155203 _%self155139%_)
                      (begin
                        (error '"Missing method"
                               _%self155139%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method155204
                       (__method-ref
                        _%self155139%_
                        'bind-core-macro-expanders!)))
                  (if __method155204
                      (__method155204 _%self155139%_)
                      (begin
                        (error '"Missing method"
                               _%self155139%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method155205
                       (__method-ref _%self155139%_ 'bind-core-features!)))
                  (if __method155205
                      (__method155205 _%self155139%_)
                      (begin
                        (error '"Missing method"
                               _%self155139%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self155153%_)
        (let ((_%bind?155155%_ '#t))
          (gx#root-context:::init!__% _%self155153%_ _%bind?155155%_))))
    (define gx#root-context:::init!
      (lambda _g155209_
        (let ((_g155210_ (##length _g155209_)))
          (cond ((##fx= _g155210_ 1)
                 (apply gx#root-context:::init!__0 _g155209_))
                ((##fx= _g155210_ 2)
                 (apply gx#root-context:::init!__% _g155209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g155209_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass155159 __method-table155160)
        (let ((__bind-core-syntax-expanders!155161
               (__make-promise
                (lambda ()
                  (let ((__method155164
                         (symbolic-table-ref
                          __method-table155160
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method155164
                        __method155164
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!155162
               (__make-promise
                (lambda ()
                  (let ((__method155165
                         (symbolic-table-ref
                          __method-table155160
                          'bind-core-features!
                          '#f)))
                    (if __method155165
                        __method155165
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!155163
               (__make-promise
                (lambda ()
                  (let ((__method155166
                         (symbolic-table-ref
                          __method-table155160
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method155166
                        __method155166
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda155133155150%_
                 (lambda (_%self155135%_ _%bind?155136%_)
                   (let ((_%self155139%_ _%self155135%_))
                     (if (##fx< '2 (##structure-length _%self155139%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self155139%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self155139%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self155139%_
                                '2
                                (##structure-length _%self155139%_)))
                     (if _%bind?155136%_
                         (begin
                           ((force __bind-core-syntax-expanders!155161)
                            _%self155139%_)
                           ((force __bind-core-macro-expanders!155163)
                            _%self155139%_)
                           ((force __bind-core-features!155162)
                            _%self155139%_))
                         '#!void)))))
            (lambda _g155211_
              (let ((_g155212_ (##length _g155211_)))
                (cond ((##fx= _g155212_ 1)
                       (apply (lambda (_%self155153%_)
                                (let ((_%bind?155155%_ '#t))
                                  (_%opt-lambda155133155150%_
                                   _%self155153%_
                                   _%bind?155155%_)))
                              _g155211_))
                      ((##fx= _g155212_ 2)
                       (apply _%opt-lambda155133155150%_ _g155211_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g155211_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self154980%_ _%super154981%_)
        (let* ((_%self154984%_ _%self154980%_)
               (_%super155000%_
                (let ((_%$e154994%_ _%super154981%_))
                  (if _%$e154994%_
                      _%$e154994%_
                      (let ((_%$e154997%_ (gx#core-context-root__0)))
                        (if _%$e154997%_
                            _%$e154997%_
                            (let ((__obj155206
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj155206)
                              __obj155206)))))))
          (if (##fx< '5 (##structure-length _%self154984%_))
              (begin
                (##unchecked-structure-set! _%self154984%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self154984%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self154984%_
                 _%super155000%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self154984%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self154984%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self154984%_
                     '5
                     (##structure-length _%self154984%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self155005%_)
        (let ((_%super155007%_ '#f))
          (gx#top-context:::init!__% _%self155005%_ _%super155007%_))))
    (define gx#top-context:::init!
      (lambda _g155213_
        (let ((_g155214_ (##length _g155213_)))
          (cond ((##fx= _g155214_ 1)
                 (apply gx#top-context:::init!__0 _g155213_))
                ((##fx= _g155214_ 2)
                 (apply gx#top-context:::init!__% _g155213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g155213_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self154701%_ _%bindings154702%_)
        (let ((_%self154705%_ _%self154701%_))
          (for-each
           (lambda (_%bind154715%_)
             (let* ((_%bind154716154723%_ _%bind154715%_)
                    (_%E154718154726%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind154716154723%_
                              '([id . rest]))
                       '#!void))
                    (_%K154719154835%_
                     (lambda (_%rest154729%_ _%id154730%_)
                       (gx#core-context-put!
                        _%self154705%_
                        _%id154730%_
                        (let ((__obj155207
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj155207
                           _%id154730%_
                           _%id154730%_
                           '#f
                           (let* ((_%rest154731154742%_ _%rest154729%_)
                                  (_%E154733154746%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest154731154742%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K154734154811%_
                                   (lambda (_%compiler154749%_
                                            _%expander154750%_
                                            _%key154751%_)
                                     ((let* ((_%key154752154765%_
                                              _%key154751%_)
                                             (_%E154758154769%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key154752154765%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K154763154805%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K154762154798%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K154761154790%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K154760154782%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K154759154774%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match154757154777%_
                                                  (lambda ()
                                                    (if (##eq? _%key154752154765%_
                                                               'expr:)
                                                        (_%K154759154774%_)
                                                        (_%E154758154769%_))))
                                                 (_%try-match154756154785%_
                                                  (lambda ()
                                                    (if (##eq? _%key154752154765%_
                                                               'special:)
                                                        (_%K154760154782%_)
                                                        (_%try-match154757154777%_))))
                                                 (_%try-match154755154793%_
                                                  (lambda ()
                                                    (if (##eq? _%key154752154765%_
                                                               'define:)
                                                        (_%K154761154790%_)
                                                        (_%try-match154756154785%_))))
                                                 (_%try-match154754154801%_
                                                  (lambda ()
                                                    (if (##eq? _%key154752154765%_
                                                               'module:)
                                                        (_%K154762154798%_)
                                                        (_%try-match154755154793%_)))))
                                            (if (##eq? _%key154752154765%_
                                                       'top:)
                                                (_%K154763154805%_)
                                                (_%try-match154754154801%_)))))
                                      _%expander154750%_
                                      _%id154730%_
                                      (let ((_%$e154808%_ _%compiler154749%_))
                                        (if _%$e154808%_
                                            _%$e154808%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest154731154742%_)
                                 (let ((_%hd154735154814%_
                                        (##car _%rest154731154742%_))
                                       (_%tl154736154816%_
                                        (##cdr _%rest154731154742%_)))
                                   (let ((_%key154819%_ _%hd154735154814%_))
                                     (if (pair? _%tl154736154816%_)
                                         (let ((_%hd154737154821%_
                                                (##car _%tl154736154816%_))
                                               (_%tl154738154823%_
                                                (##cdr _%tl154736154816%_)))
                                           (let ((_%expander154826%_
                                                  _%hd154737154821%_))
                                             (if (pair? _%tl154738154823%_)
                                                 (let ((_%hd154739154828%_
                                                        (##car _%tl154738154823%_))
                                                       (_%tl154740154830%_
                                                        (##cdr _%tl154738154823%_)))
                                                   (let ((_%compiler154833%_
                                                          _%hd154739154828%_))
                                                     (if (null? _%tl154740154830%_)
                                                         (_%K154734154811%_
                                                          _%compiler154833%_
                                                          _%expander154826%_
                                                          _%key154819%_)
                                                         (_%E154733154746%_))))
                                                 (_%E154733154746%_))))
                                         (_%E154733154746%_))))
                                 (_%E154733154746%_))))
                          __obj155207)))))
               (if (pair? _%bind154716154723%_)
                   (let ((_%hd154720154838%_ (##car _%bind154716154723%_))
                         (_%tl154721154840%_ (##cdr _%bind154716154723%_)))
                     (let* ((_%id154843%_ _%hd154720154838%_)
                            (_%rest154845%_ _%tl154721154840%_))
                       (_%K154719154835%_ _%rest154845%_ _%id154843%_)))
                   (_%E154718154726%_))))
           _%bindings154702%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self154850%_)
        (let ((_%bindings154852%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self154850%_
           _%bindings154852%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g155215_
        (let ((_g155216_ (##length _g155215_)))
          (cond ((##fx= _g155216_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g155215_))
                ((##fx= _g155216_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g155215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g155215_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self154463%_ _%bindings154464%_)
        (let ((_%self154467%_ _%self154463%_))
          (for-each
           (lambda (_%bind154477%_)
             (let* ((_%bind154478154485%_ _%bind154477%_)
                    (_%E154480154488%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind154478154485%_
                              '([id . rest]))
                       '#!void))
                    (_%K154481154556%_
                     (lambda (_%rest154491%_ _%id154492%_)
                       (gx#core-context-put!
                        _%self154467%_
                        _%id154492%_
                        (let ((__obj155208
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj155208
                           _%id154492%_
                           _%id154492%_
                           '#f
                           (let* ((_%rest154493154508%_ _%rest154491%_)
                                  (_%E154497154512%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest154493154508%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K154502154541%_
                                    (lambda (_%core-id154539%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id154539%_)))
                                   (_%K154499154526%_
                                    (lambda (_%proc154524%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc154524%_)))
                                   (_%K154498154517%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id154492%_))))
                               (let ((_%try-match154496154520%_
                                      (lambda ()
                                        (if (null? _%rest154493154508%_)
                                            (_%K154498154517%_)
                                            (_%E154497154512%_)))))
                                 (if (pair? _%rest154493154508%_)
                                     (let ((_%tl154504154546%_
                                            (##cdr _%rest154493154508%_))
                                           (_%hd154503154544%_
                                            (##car _%rest154493154508%_)))
                                       (if (##eq? _%hd154503154544%_ '=>)
                                           (if (pair? _%tl154504154546%_)
                                               (let ((_%tl154506154551%_
                                                      (##cdr _%tl154504154546%_))
                                                     (_%hd154505154549%_
                                                      (##car _%tl154504154546%_)))
                                                 (if (null? _%tl154506154551%_)
                                                     (let ((_%core-id154554%_
                                                            _%hd154505154549%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id154554%_))
                                                     (_%E154497154512%_)))
                                               (if (null? _%tl154504154546%_)
                                                   (let ((_%proc154534%_
                                                          _%hd154503154544%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc154534%_))
                                                   (_%E154497154512%_)))
                                           (if (null? _%tl154504154546%_)
                                               (let ((_%proc154534%_
                                                      _%hd154503154544%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc154534%_))
                                               (_%E154497154512%_))))
                                     (_%try-match154496154520%_))))))
                          __obj155208)))))
               (if (pair? _%bind154478154485%_)
                   (let ((_%hd154482154559%_ (##car _%bind154478154485%_))
                         (_%tl154483154561%_ (##cdr _%bind154478154485%_)))
                     (let* ((_%id154564%_ _%hd154482154559%_)
                            (_%rest154566%_ _%tl154483154561%_))
                       (_%K154481154556%_ _%rest154566%_ _%id154564%_)))
                   (_%E154480154488%_))))
           _%bindings154464%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self154571%_)
        (let ((_%bindings154573%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self154571%_
           _%bindings154573%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g155217_
        (let ((_g155218_ (##length _g155217_)))
          (cond ((##fx= _g155218_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g155217_))
                ((##fx= _g155218_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g155217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g155217_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self154194%_)
        (let ((_%self154197%_ _%self154194%_))
          (letrec ((_%linux-variant?154208%_
                    (lambda (_%sys-type154308%_)
                      (let* ((_%g154309154317%_
                              (__string-split
                               (symbol->string _%sys-type154308%_)
                               '#\-))
                             (_%else154311154325%_ (lambda () '#f))
                             (_%K154313154330%_
                              (lambda (_%rest154328%_)
                                (not (null? _%rest154328%_)))))
                        (if (pair? _%g154309154317%_)
                            (let ((_%hd154314154333%_
                                   (##car _%g154309154317%_))
                                  (_%tl154315154335%_
                                   (##cdr _%g154309154317%_)))
                              (if (equal? _%hd154314154333%_ '"linux")
                                  (let ((_%rest154338%_ _%tl154315154335%_))
                                    (_%K154313154330%_ _%rest154338%_))
                                  (_%else154311154325%_)))
                            (_%else154311154325%_)))))
                   (_%bsd-variant154209%_
                    (lambda (_%sys-type154267%_)
                      (let ((_%sys-type-str154269%_
                             (symbol->string _%sys-type154267%_)))
                        (let _%lp154271%_ ((_%rest154273%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest154274154282%_ _%rest154273%_)
                                 (_%else154276154290%_ (lambda () '#f))
                                 (_%K154278154296%_
                                  (lambda (_%rest154293%_ _%sys154294%_)
                                    (if (string-prefix?
                                         _%sys154294%_
                                         _%sys-type-str154269%_)
                                        _%sys154294%_
                                        (_%lp154271%_ _%rest154293%_)))))
                            (if (pair? _%rest154274154282%_)
                                (let ((_%hd154279154299%_
                                       (##car _%rest154274154282%_))
                                      (_%tl154280154301%_
                                       (##cdr _%rest154274154282%_)))
                                  (let* ((_%sys154304%_ _%hd154279154299%_)
                                         (_%rest154306%_ _%tl154280154301%_))
                                    (_%K154278154296%_
                                     _%rest154306%_
                                     _%sys154304%_)))
                                (_%else154276154290%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self154197%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self154197%_)
            (let* ((_%g154210154222%_ (system-type))
                   (_%else154212154230%_ (lambda () '#!void))
                   (_%K154214154243%_
                    (lambda (_%sys-type154233%_
                             _%sys-vendor154234%_
                             _%sys-cpu154235%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu154235%_
                       '#f
                       '0
                       _%self154197%_)
                      (gx#core-bind-feature!__%
                       _%sys-type154233%_
                       '#f
                       '0
                       _%self154197%_)
                      (if (_%linux-variant?154208%_ _%sys-type154233%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self154197%_)
                          (let ((_%$e154238%_
                                 (_%bsd-variant154209%_ _%sys-type154233%_)))
                            (if _%$e154238%_
                                ((lambda (_%sys-prefix154241%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self154197%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix154241%_)
                                    '#f
                                    '0
                                    _%self154197%_))
                                 _%$e154238%_)
                                '#!void))))))
              (if (pair? _%g154210154222%_)
                  (let ((_%hd154215154246%_ (##car _%g154210154222%_))
                        (_%tl154216154248%_ (##cdr _%g154210154222%_)))
                    (let ((_%sys-cpu154251%_ _%hd154215154246%_))
                      (if (pair? _%tl154216154248%_)
                          (let ((_%hd154217154253%_ (##car _%tl154216154248%_))
                                (_%tl154218154255%_
                                 (##cdr _%tl154216154248%_)))
                            (let ((_%sys-vendor154258%_ _%hd154217154253%_))
                              (if (pair? _%tl154218154255%_)
                                  (let ((_%hd154219154260%_
                                         (##car _%tl154218154255%_))
                                        (_%tl154220154262%_
                                         (##cdr _%tl154218154255%_)))
                                    (let ((_%sys-type154265%_
                                           _%hd154219154260%_))
                                      (if (null? _%tl154220154262%_)
                                          (_%K154214154243%_
                                           _%sys-type154265%_
                                           _%sys-vendor154258%_
                                           _%sys-cpu154251%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self154197%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
