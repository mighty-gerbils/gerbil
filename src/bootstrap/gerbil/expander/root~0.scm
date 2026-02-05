(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1770327921)
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
      (lambda (_%self155119%_ _%bind?155120%_)
        (let ((_%self155123%_ _%self155119%_))
          (if (##fx< '2 (##structure-length _%self155123%_))
              (begin
                (##unchecked-structure-set! _%self155123%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self155123%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self155123%_
                     '2
                     (##structure-length _%self155123%_)))
          (if _%bind?155120%_
              (begin
                (let ((__method155187
                       (__method-ref
                        _%self155123%_
                        'bind-core-syntax-expanders!)))
                  (if __method155187
                      (__method155187 _%self155123%_)
                      (begin
                        (error '"Missing method"
                               _%self155123%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method155188
                       (__method-ref
                        _%self155123%_
                        'bind-core-macro-expanders!)))
                  (if __method155188
                      (__method155188 _%self155123%_)
                      (begin
                        (error '"Missing method"
                               _%self155123%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method155189
                       (__method-ref _%self155123%_ 'bind-core-features!)))
                  (if __method155189
                      (__method155189 _%self155123%_)
                      (begin
                        (error '"Missing method"
                               _%self155123%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self155137%_)
        (let ((_%bind?155139%_ '#t))
          (gx#root-context:::init!__% _%self155137%_ _%bind?155139%_))))
    (define gx#root-context:::init!
      (lambda _g155193_
        (let ((_g155194_ (##length _g155193_)))
          (cond ((##fx= _g155194_ 1)
                 (apply gx#root-context:::init!__0 _g155193_))
                ((##fx= _g155194_ 2)
                 (apply gx#root-context:::init!__% _g155193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g155193_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass155143 __method-table155144)
        (let ((__bind-core-macro-expanders!155145
               (__make-promise
                (lambda ()
                  (let ((__method155148
                         (symbolic-table-ref
                          __method-table155144
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method155148
                        __method155148
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!155146
               (__make-promise
                (lambda ()
                  (let ((__method155149
                         (symbolic-table-ref
                          __method-table155144
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method155149
                        __method155149
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!155147
               (__make-promise
                (lambda ()
                  (let ((__method155150
                         (symbolic-table-ref
                          __method-table155144
                          'bind-core-features!
                          '#f)))
                    (if __method155150
                        __method155150
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda155117155134%_
                 (lambda (_%self155119%_ _%bind?155120%_)
                   (let ((_%self155123%_ _%self155119%_))
                     (if (##fx< '2 (##structure-length _%self155123%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self155123%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self155123%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self155123%_
                                '2
                                (##structure-length _%self155123%_)))
                     (if _%bind?155120%_
                         (begin
                           ((force __bind-core-syntax-expanders!155146)
                            _%self155123%_)
                           ((force __bind-core-macro-expanders!155145)
                            _%self155123%_)
                           ((force __bind-core-features!155147)
                            _%self155123%_))
                         '#!void)))))
            (lambda _g155195_
              (let ((_g155196_ (##length _g155195_)))
                (cond ((##fx= _g155196_ 1)
                       (apply (lambda (_%self155137%_)
                                (let ((_%bind?155139%_ '#t))
                                  (_%opt-lambda155117155134%_
                                   _%self155137%_
                                   _%bind?155139%_)))
                              _g155195_))
                      ((##fx= _g155196_ 2)
                       (apply _%opt-lambda155117155134%_ _g155195_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g155195_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self154964%_ _%super154965%_)
        (let* ((_%self154968%_ _%self154964%_)
               (_%super154984%_
                (let ((_%$e154978%_ _%super154965%_))
                  (if _%$e154978%_
                      _%$e154978%_
                      (let ((_%$e154981%_ (gx#core-context-root__0)))
                        (if _%$e154981%_
                            _%$e154981%_
                            (let ((__obj155190
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj155190)
                              __obj155190)))))))
          (if (##fx< '5 (##structure-length _%self154968%_))
              (begin
                (##unchecked-structure-set! _%self154968%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self154968%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self154968%_
                 _%super154984%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self154968%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self154968%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self154968%_
                     '5
                     (##structure-length _%self154968%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self154989%_)
        (let ((_%super154991%_ '#f))
          (gx#top-context:::init!__% _%self154989%_ _%super154991%_))))
    (define gx#top-context:::init!
      (lambda _g155197_
        (let ((_g155198_ (##length _g155197_)))
          (cond ((##fx= _g155198_ 1)
                 (apply gx#top-context:::init!__0 _g155197_))
                ((##fx= _g155198_ 2)
                 (apply gx#top-context:::init!__% _g155197_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g155197_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self154685%_ _%bindings154686%_)
        (let ((_%self154689%_ _%self154685%_))
          (for-each
           (lambda (_%bind154699%_)
             (let* ((_%bind154700154707%_ _%bind154699%_)
                    (_%E154702154710%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind154700154707%_
                              '([id . rest]))
                       '#!void))
                    (_%K154703154819%_
                     (lambda (_%rest154713%_ _%id154714%_)
                       (gx#core-context-put!
                        _%self154689%_
                        _%id154714%_
                        (let ((__obj155191
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj155191
                           _%id154714%_
                           _%id154714%_
                           '#f
                           (let* ((_%rest154715154726%_ _%rest154713%_)
                                  (_%E154717154730%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest154715154726%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K154718154795%_
                                   (lambda (_%compiler154733%_
                                            _%expander154734%_
                                            _%key154735%_)
                                     ((let* ((_%key154736154749%_
                                              _%key154735%_)
                                             (_%E154742154753%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key154736154749%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K154747154789%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K154746154782%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K154745154774%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K154744154766%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K154743154758%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match154741154761%_
                                                  (lambda ()
                                                    (if (##eq? _%key154736154749%_
                                                               'expr:)
                                                        (_%K154743154758%_)
                                                        (_%E154742154753%_))))
                                                 (_%try-match154740154769%_
                                                  (lambda ()
                                                    (if (##eq? _%key154736154749%_
                                                               'special:)
                                                        (_%K154744154766%_)
                                                        (_%try-match154741154761%_))))
                                                 (_%try-match154739154777%_
                                                  (lambda ()
                                                    (if (##eq? _%key154736154749%_
                                                               'define:)
                                                        (_%K154745154774%_)
                                                        (_%try-match154740154769%_))))
                                                 (_%try-match154738154785%_
                                                  (lambda ()
                                                    (if (##eq? _%key154736154749%_
                                                               'module:)
                                                        (_%K154746154782%_)
                                                        (_%try-match154739154777%_)))))
                                            (if (##eq? _%key154736154749%_
                                                       'top:)
                                                (_%K154747154789%_)
                                                (_%try-match154738154785%_)))))
                                      _%expander154734%_
                                      _%id154714%_
                                      (let ((_%$e154792%_ _%compiler154733%_))
                                        (if _%$e154792%_
                                            _%$e154792%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest154715154726%_)
                                 (let ((_%hd154719154798%_
                                        (##car _%rest154715154726%_))
                                       (_%tl154720154800%_
                                        (##cdr _%rest154715154726%_)))
                                   (let ((_%key154803%_ _%hd154719154798%_))
                                     (if (pair? _%tl154720154800%_)
                                         (let ((_%hd154721154805%_
                                                (##car _%tl154720154800%_))
                                               (_%tl154722154807%_
                                                (##cdr _%tl154720154800%_)))
                                           (let ((_%expander154810%_
                                                  _%hd154721154805%_))
                                             (if (pair? _%tl154722154807%_)
                                                 (let ((_%hd154723154812%_
                                                        (##car _%tl154722154807%_))
                                                       (_%tl154724154814%_
                                                        (##cdr _%tl154722154807%_)))
                                                   (let ((_%compiler154817%_
                                                          _%hd154723154812%_))
                                                     (if (null? _%tl154724154814%_)
                                                         (_%K154718154795%_
                                                          _%compiler154817%_
                                                          _%expander154810%_
                                                          _%key154803%_)
                                                         (_%E154717154730%_))))
                                                 (_%E154717154730%_))))
                                         (_%E154717154730%_))))
                                 (_%E154717154730%_))))
                          __obj155191)))))
               (if (pair? _%bind154700154707%_)
                   (let ((_%hd154704154822%_ (##car _%bind154700154707%_))
                         (_%tl154705154824%_ (##cdr _%bind154700154707%_)))
                     (let* ((_%id154827%_ _%hd154704154822%_)
                            (_%rest154829%_ _%tl154705154824%_))
                       (_%K154703154819%_ _%rest154829%_ _%id154827%_)))
                   (_%E154702154710%_))))
           _%bindings154686%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self154834%_)
        (let ((_%bindings154836%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self154834%_
           _%bindings154836%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g155199_
        (let ((_g155200_ (##length _g155199_)))
          (cond ((##fx= _g155200_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g155199_))
                ((##fx= _g155200_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g155199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g155199_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self154447%_ _%bindings154448%_)
        (let ((_%self154451%_ _%self154447%_))
          (for-each
           (lambda (_%bind154461%_)
             (let* ((_%bind154462154469%_ _%bind154461%_)
                    (_%E154464154472%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind154462154469%_
                              '([id . rest]))
                       '#!void))
                    (_%K154465154540%_
                     (lambda (_%rest154475%_ _%id154476%_)
                       (gx#core-context-put!
                        _%self154451%_
                        _%id154476%_
                        (let ((__obj155192
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj155192
                           _%id154476%_
                           _%id154476%_
                           '#f
                           (let* ((_%rest154477154492%_ _%rest154475%_)
                                  (_%E154481154496%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest154477154492%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K154486154525%_
                                    (lambda (_%core-id154523%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id154523%_)))
                                   (_%K154483154510%_
                                    (lambda (_%proc154508%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc154508%_)))
                                   (_%K154482154501%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id154476%_))))
                               (let ((_%try-match154480154504%_
                                      (lambda ()
                                        (if (null? _%rest154477154492%_)
                                            (_%K154482154501%_)
                                            (_%E154481154496%_)))))
                                 (if (pair? _%rest154477154492%_)
                                     (let ((_%tl154488154530%_
                                            (##cdr _%rest154477154492%_))
                                           (_%hd154487154528%_
                                            (##car _%rest154477154492%_)))
                                       (if (##eq? _%hd154487154528%_ '=>)
                                           (if (pair? _%tl154488154530%_)
                                               (let ((_%tl154490154535%_
                                                      (##cdr _%tl154488154530%_))
                                                     (_%hd154489154533%_
                                                      (##car _%tl154488154530%_)))
                                                 (if (null? _%tl154490154535%_)
                                                     (let ((_%core-id154538%_
                                                            _%hd154489154533%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id154538%_))
                                                     (_%E154481154496%_)))
                                               (if (null? _%tl154488154530%_)
                                                   (let ((_%proc154518%_
                                                          _%hd154487154528%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc154518%_))
                                                   (_%E154481154496%_)))
                                           (if (null? _%tl154488154530%_)
                                               (let ((_%proc154518%_
                                                      _%hd154487154528%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc154518%_))
                                               (_%E154481154496%_))))
                                     (_%try-match154480154504%_))))))
                          __obj155192)))))
               (if (pair? _%bind154462154469%_)
                   (let ((_%hd154466154543%_ (##car _%bind154462154469%_))
                         (_%tl154467154545%_ (##cdr _%bind154462154469%_)))
                     (let* ((_%id154548%_ _%hd154466154543%_)
                            (_%rest154550%_ _%tl154467154545%_))
                       (_%K154465154540%_ _%rest154550%_ _%id154548%_)))
                   (_%E154464154472%_))))
           _%bindings154448%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self154555%_)
        (let ((_%bindings154557%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self154555%_
           _%bindings154557%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g155201_
        (let ((_g155202_ (##length _g155201_)))
          (cond ((##fx= _g155202_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g155201_))
                ((##fx= _g155202_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g155201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g155201_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self154178%_)
        (let ((_%self154181%_ _%self154178%_))
          (letrec ((_%linux-variant?154192%_
                    (lambda (_%sys-type154292%_)
                      (let* ((_%g154293154301%_
                              (__string-split
                               (symbol->string _%sys-type154292%_)
                               '#\-))
                             (_%else154295154309%_ (lambda () '#f))
                             (_%K154297154314%_
                              (lambda (_%rest154312%_)
                                (not (null? _%rest154312%_)))))
                        (if (pair? _%g154293154301%_)
                            (let ((_%hd154298154317%_
                                   (##car _%g154293154301%_))
                                  (_%tl154299154319%_
                                   (##cdr _%g154293154301%_)))
                              (if (equal? _%hd154298154317%_ '"linux")
                                  (let ((_%rest154322%_ _%tl154299154319%_))
                                    (_%K154297154314%_ _%rest154322%_))
                                  (_%else154295154309%_)))
                            (_%else154295154309%_)))))
                   (_%bsd-variant154193%_
                    (lambda (_%sys-type154251%_)
                      (let ((_%sys-type-str154253%_
                             (symbol->string _%sys-type154251%_)))
                        (let _%lp154255%_ ((_%rest154257%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest154258154266%_ _%rest154257%_)
                                 (_%else154260154274%_ (lambda () '#f))
                                 (_%K154262154280%_
                                  (lambda (_%rest154277%_ _%sys154278%_)
                                    (if (string-prefix?
                                         _%sys154278%_
                                         _%sys-type-str154253%_)
                                        _%sys154278%_
                                        (_%lp154255%_ _%rest154277%_)))))
                            (if (pair? _%rest154258154266%_)
                                (let ((_%hd154263154283%_
                                       (##car _%rest154258154266%_))
                                      (_%tl154264154285%_
                                       (##cdr _%rest154258154266%_)))
                                  (let* ((_%sys154288%_ _%hd154263154283%_)
                                         (_%rest154290%_ _%tl154264154285%_))
                                    (_%K154262154280%_
                                     _%rest154290%_
                                     _%sys154288%_)))
                                (_%else154260154274%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self154181%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self154181%_)
            (let* ((_%g154194154206%_ (system-type))
                   (_%else154196154214%_ (lambda () '#!void))
                   (_%K154198154227%_
                    (lambda (_%sys-type154217%_
                             _%sys-vendor154218%_
                             _%sys-cpu154219%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu154219%_
                       '#f
                       '0
                       _%self154181%_)
                      (gx#core-bind-feature!__%
                       _%sys-type154217%_
                       '#f
                       '0
                       _%self154181%_)
                      (if (_%linux-variant?154192%_ _%sys-type154217%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self154181%_)
                          (let ((_%$e154222%_
                                 (_%bsd-variant154193%_ _%sys-type154217%_)))
                            (if _%$e154222%_
                                ((lambda (_%sys-prefix154225%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self154181%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix154225%_)
                                    '#f
                                    '0
                                    _%self154181%_))
                                 _%$e154222%_)
                                '#!void))))))
              (if (pair? _%g154194154206%_)
                  (let ((_%hd154199154230%_ (##car _%g154194154206%_))
                        (_%tl154200154232%_ (##cdr _%g154194154206%_)))
                    (let ((_%sys-cpu154235%_ _%hd154199154230%_))
                      (if (pair? _%tl154200154232%_)
                          (let ((_%hd154201154237%_ (##car _%tl154200154232%_))
                                (_%tl154202154239%_
                                 (##cdr _%tl154200154232%_)))
                            (let ((_%sys-vendor154242%_ _%hd154201154237%_))
                              (if (pair? _%tl154202154239%_)
                                  (let ((_%hd154203154244%_
                                         (##car _%tl154202154239%_))
                                        (_%tl154204154246%_
                                         (##cdr _%tl154202154239%_)))
                                    (let ((_%sys-type154249%_
                                           _%hd154203154244%_))
                                      (if (null? _%tl154204154246%_)
                                          (_%K154198154227%_
                                           _%sys-type154249%_
                                           _%sys-vendor154242%_
                                           _%sys-cpu154235%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self154181%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
