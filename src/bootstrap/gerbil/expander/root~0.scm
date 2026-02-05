(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1770313936)
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
      (lambda (_%self155163%_ _%bind?155164%_)
        (let ((_%self155167%_ _%self155163%_))
          (if (##fx< '2 (##structure-length _%self155167%_))
              (begin
                (##unchecked-structure-set! _%self155167%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self155167%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self155167%_
                     '2
                     (##structure-length _%self155167%_)))
          (if _%bind?155164%_
              (begin
                (let ((__method155231
                       (__method-ref
                        _%self155167%_
                        'bind-core-syntax-expanders!)))
                  (if __method155231
                      (__method155231 _%self155167%_)
                      (begin
                        (error '"Missing method"
                               _%self155167%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method155232
                       (__method-ref
                        _%self155167%_
                        'bind-core-macro-expanders!)))
                  (if __method155232
                      (__method155232 _%self155167%_)
                      (begin
                        (error '"Missing method"
                               _%self155167%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method155233
                       (__method-ref _%self155167%_ 'bind-core-features!)))
                  (if __method155233
                      (__method155233 _%self155167%_)
                      (begin
                        (error '"Missing method"
                               _%self155167%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self155181%_)
        (let ((_%bind?155183%_ '#t))
          (gx#root-context:::init!__% _%self155181%_ _%bind?155183%_))))
    (define gx#root-context:::init!
      (lambda _g155237_
        (let ((_g155238_ (##length _g155237_)))
          (cond ((##fx= _g155238_ 1)
                 (apply gx#root-context:::init!__0 _g155237_))
                ((##fx= _g155238_ 2)
                 (apply gx#root-context:::init!__% _g155237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g155237_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass155187 __method-table155188)
        (let ((__bind-core-syntax-expanders!155189
               (__make-promise
                (lambda ()
                  (let ((__method155192
                         (symbolic-table-ref
                          __method-table155188
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method155192
                        __method155192
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!155190
               (__make-promise
                (lambda ()
                  (let ((__method155193
                         (symbolic-table-ref
                          __method-table155188
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method155193
                        __method155193
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!155191
               (__make-promise
                (lambda ()
                  (let ((__method155194
                         (symbolic-table-ref
                          __method-table155188
                          'bind-core-features!
                          '#f)))
                    (if __method155194
                        __method155194
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda155161155178%_
                 (lambda (_%self155163%_ _%bind?155164%_)
                   (let ((_%self155167%_ _%self155163%_))
                     (if (##fx< '2 (##structure-length _%self155167%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self155167%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self155167%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self155167%_
                                '2
                                (##structure-length _%self155167%_)))
                     (if _%bind?155164%_
                         (begin
                           ((force __bind-core-syntax-expanders!155189)
                            _%self155167%_)
                           ((force __bind-core-macro-expanders!155190)
                            _%self155167%_)
                           ((force __bind-core-features!155191)
                            _%self155167%_))
                         '#!void)))))
            (lambda _g155239_
              (let ((_g155240_ (##length _g155239_)))
                (cond ((##fx= _g155240_ 1)
                       (apply (lambda (_%self155181%_)
                                (let ((_%bind?155183%_ '#t))
                                  (_%opt-lambda155161155178%_
                                   _%self155181%_
                                   _%bind?155183%_)))
                              _g155239_))
                      ((##fx= _g155240_ 2)
                       (apply _%opt-lambda155161155178%_ _g155239_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g155239_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self155008%_ _%super155009%_)
        (let* ((_%self155012%_ _%self155008%_)
               (_%super155028%_
                (let ((_%$e155022%_ _%super155009%_))
                  (if _%$e155022%_
                      _%$e155022%_
                      (let ((_%$e155025%_ (gx#core-context-root__0)))
                        (if _%$e155025%_
                            _%$e155025%_
                            (let ((__obj155234
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj155234)
                              __obj155234)))))))
          (if (##fx< '5 (##structure-length _%self155012%_))
              (begin
                (##unchecked-structure-set! _%self155012%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self155012%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self155012%_
                 _%super155028%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self155012%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self155012%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self155012%_
                     '5
                     (##structure-length _%self155012%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self155033%_)
        (let ((_%super155035%_ '#f))
          (gx#top-context:::init!__% _%self155033%_ _%super155035%_))))
    (define gx#top-context:::init!
      (lambda _g155241_
        (let ((_g155242_ (##length _g155241_)))
          (cond ((##fx= _g155242_ 1)
                 (apply gx#top-context:::init!__0 _g155241_))
                ((##fx= _g155242_ 2)
                 (apply gx#top-context:::init!__% _g155241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g155241_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self154729%_ _%bindings154730%_)
        (let ((_%self154733%_ _%self154729%_))
          (for-each
           (lambda (_%bind154743%_)
             (let* ((_%bind154744154751%_ _%bind154743%_)
                    (_%E154746154754%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind154744154751%_
                              '([id . rest]))
                       '#!void))
                    (_%K154747154863%_
                     (lambda (_%rest154757%_ _%id154758%_)
                       (gx#core-context-put!
                        _%self154733%_
                        _%id154758%_
                        (let ((__obj155235
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj155235
                           _%id154758%_
                           _%id154758%_
                           '#f
                           (let* ((_%rest154759154770%_ _%rest154757%_)
                                  (_%E154761154774%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest154759154770%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K154762154839%_
                                   (lambda (_%compiler154777%_
                                            _%expander154778%_
                                            _%key154779%_)
                                     ((let* ((_%key154780154793%_
                                              _%key154779%_)
                                             (_%E154786154797%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key154780154793%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K154791154833%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K154790154826%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K154789154818%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K154788154810%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K154787154802%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match154785154805%_
                                                  (lambda ()
                                                    (if (##eq? _%key154780154793%_
                                                               'expr:)
                                                        (_%K154787154802%_)
                                                        (_%E154786154797%_))))
                                                 (_%try-match154784154813%_
                                                  (lambda ()
                                                    (if (##eq? _%key154780154793%_
                                                               'special:)
                                                        (_%K154788154810%_)
                                                        (_%try-match154785154805%_))))
                                                 (_%try-match154783154821%_
                                                  (lambda ()
                                                    (if (##eq? _%key154780154793%_
                                                               'define:)
                                                        (_%K154789154818%_)
                                                        (_%try-match154784154813%_))))
                                                 (_%try-match154782154829%_
                                                  (lambda ()
                                                    (if (##eq? _%key154780154793%_
                                                               'module:)
                                                        (_%K154790154826%_)
                                                        (_%try-match154783154821%_)))))
                                            (if (##eq? _%key154780154793%_
                                                       'top:)
                                                (_%K154791154833%_)
                                                (_%try-match154782154829%_)))))
                                      _%expander154778%_
                                      _%id154758%_
                                      (let ((_%$e154836%_ _%compiler154777%_))
                                        (if _%$e154836%_
                                            _%$e154836%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest154759154770%_)
                                 (let ((_%hd154763154842%_
                                        (##car _%rest154759154770%_))
                                       (_%tl154764154844%_
                                        (##cdr _%rest154759154770%_)))
                                   (let ((_%key154847%_ _%hd154763154842%_))
                                     (if (pair? _%tl154764154844%_)
                                         (let ((_%hd154765154849%_
                                                (##car _%tl154764154844%_))
                                               (_%tl154766154851%_
                                                (##cdr _%tl154764154844%_)))
                                           (let ((_%expander154854%_
                                                  _%hd154765154849%_))
                                             (if (pair? _%tl154766154851%_)
                                                 (let ((_%hd154767154856%_
                                                        (##car _%tl154766154851%_))
                                                       (_%tl154768154858%_
                                                        (##cdr _%tl154766154851%_)))
                                                   (let ((_%compiler154861%_
                                                          _%hd154767154856%_))
                                                     (if (null? _%tl154768154858%_)
                                                         (_%K154762154839%_
                                                          _%compiler154861%_
                                                          _%expander154854%_
                                                          _%key154847%_)
                                                         (_%E154761154774%_))))
                                                 (_%E154761154774%_))))
                                         (_%E154761154774%_))))
                                 (_%E154761154774%_))))
                          __obj155235)))))
               (if (pair? _%bind154744154751%_)
                   (let ((_%hd154748154866%_ (##car _%bind154744154751%_))
                         (_%tl154749154868%_ (##cdr _%bind154744154751%_)))
                     (let* ((_%id154871%_ _%hd154748154866%_)
                            (_%rest154873%_ _%tl154749154868%_))
                       (_%K154747154863%_ _%rest154873%_ _%id154871%_)))
                   (_%E154746154754%_))))
           _%bindings154730%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self154878%_)
        (let ((_%bindings154880%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self154878%_
           _%bindings154880%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g155243_
        (let ((_g155244_ (##length _g155243_)))
          (cond ((##fx= _g155244_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g155243_))
                ((##fx= _g155244_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g155243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g155243_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self154491%_ _%bindings154492%_)
        (let ((_%self154495%_ _%self154491%_))
          (for-each
           (lambda (_%bind154505%_)
             (let* ((_%bind154506154513%_ _%bind154505%_)
                    (_%E154508154516%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind154506154513%_
                              '([id . rest]))
                       '#!void))
                    (_%K154509154584%_
                     (lambda (_%rest154519%_ _%id154520%_)
                       (gx#core-context-put!
                        _%self154495%_
                        _%id154520%_
                        (let ((__obj155236
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj155236
                           _%id154520%_
                           _%id154520%_
                           '#f
                           (let* ((_%rest154521154536%_ _%rest154519%_)
                                  (_%E154525154540%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest154521154536%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K154530154569%_
                                    (lambda (_%core-id154567%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id154567%_)))
                                   (_%K154527154554%_
                                    (lambda (_%proc154552%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc154552%_)))
                                   (_%K154526154545%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id154520%_))))
                               (let ((_%try-match154524154548%_
                                      (lambda ()
                                        (if (null? _%rest154521154536%_)
                                            (_%K154526154545%_)
                                            (_%E154525154540%_)))))
                                 (if (pair? _%rest154521154536%_)
                                     (let ((_%tl154532154574%_
                                            (##cdr _%rest154521154536%_))
                                           (_%hd154531154572%_
                                            (##car _%rest154521154536%_)))
                                       (if (##eq? _%hd154531154572%_ '=>)
                                           (if (pair? _%tl154532154574%_)
                                               (let ((_%tl154534154579%_
                                                      (##cdr _%tl154532154574%_))
                                                     (_%hd154533154577%_
                                                      (##car _%tl154532154574%_)))
                                                 (if (null? _%tl154534154579%_)
                                                     (let ((_%core-id154582%_
                                                            _%hd154533154577%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id154582%_))
                                                     (_%E154525154540%_)))
                                               (if (null? _%tl154532154574%_)
                                                   (let ((_%proc154562%_
                                                          _%hd154531154572%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc154562%_))
                                                   (_%E154525154540%_)))
                                           (if (null? _%tl154532154574%_)
                                               (let ((_%proc154562%_
                                                      _%hd154531154572%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc154562%_))
                                               (_%E154525154540%_))))
                                     (_%try-match154524154548%_))))))
                          __obj155236)))))
               (if (pair? _%bind154506154513%_)
                   (let ((_%hd154510154587%_ (##car _%bind154506154513%_))
                         (_%tl154511154589%_ (##cdr _%bind154506154513%_)))
                     (let* ((_%id154592%_ _%hd154510154587%_)
                            (_%rest154594%_ _%tl154511154589%_))
                       (_%K154509154584%_ _%rest154594%_ _%id154592%_)))
                   (_%E154508154516%_))))
           _%bindings154492%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self154599%_)
        (let ((_%bindings154601%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self154599%_
           _%bindings154601%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g155245_
        (let ((_g155246_ (##length _g155245_)))
          (cond ((##fx= _g155246_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g155245_))
                ((##fx= _g155246_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g155245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g155245_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self154222%_)
        (let ((_%self154225%_ _%self154222%_))
          (letrec ((_%linux-variant?154236%_
                    (lambda (_%sys-type154336%_)
                      (let* ((_%g154337154345%_
                              (__string-split
                               (symbol->string _%sys-type154336%_)
                               '#\-))
                             (_%else154339154353%_ (lambda () '#f))
                             (_%K154341154358%_
                              (lambda (_%rest154356%_)
                                (not (null? _%rest154356%_)))))
                        (if (pair? _%g154337154345%_)
                            (let ((_%hd154342154361%_
                                   (##car _%g154337154345%_))
                                  (_%tl154343154363%_
                                   (##cdr _%g154337154345%_)))
                              (if (equal? _%hd154342154361%_ '"linux")
                                  (let ((_%rest154366%_ _%tl154343154363%_))
                                    (_%K154341154358%_ _%rest154366%_))
                                  (_%else154339154353%_)))
                            (_%else154339154353%_)))))
                   (_%bsd-variant154237%_
                    (lambda (_%sys-type154295%_)
                      (let ((_%sys-type-str154297%_
                             (symbol->string _%sys-type154295%_)))
                        (let _%lp154299%_ ((_%rest154301%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest154302154310%_ _%rest154301%_)
                                 (_%else154304154318%_ (lambda () '#f))
                                 (_%K154306154324%_
                                  (lambda (_%rest154321%_ _%sys154322%_)
                                    (if (string-prefix?
                                         _%sys154322%_
                                         _%sys-type-str154297%_)
                                        _%sys154322%_
                                        (_%lp154299%_ _%rest154321%_)))))
                            (if (pair? _%rest154302154310%_)
                                (let ((_%hd154307154327%_
                                       (##car _%rest154302154310%_))
                                      (_%tl154308154329%_
                                       (##cdr _%rest154302154310%_)))
                                  (let* ((_%sys154332%_ _%hd154307154327%_)
                                         (_%rest154334%_ _%tl154308154329%_))
                                    (_%K154306154324%_
                                     _%rest154334%_
                                     _%sys154332%_)))
                                (_%else154304154318%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self154225%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self154225%_)
            (let* ((_%g154238154250%_ (system-type))
                   (_%else154240154258%_ (lambda () '#!void))
                   (_%K154242154271%_
                    (lambda (_%sys-type154261%_
                             _%sys-vendor154262%_
                             _%sys-cpu154263%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu154263%_
                       '#f
                       '0
                       _%self154225%_)
                      (gx#core-bind-feature!__%
                       _%sys-type154261%_
                       '#f
                       '0
                       _%self154225%_)
                      (if (_%linux-variant?154236%_ _%sys-type154261%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self154225%_)
                          (let ((_%$e154266%_
                                 (_%bsd-variant154237%_ _%sys-type154261%_)))
                            (if _%$e154266%_
                                ((lambda (_%sys-prefix154269%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self154225%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix154269%_)
                                    '#f
                                    '0
                                    _%self154225%_))
                                 _%$e154266%_)
                                '#!void))))))
              (if (pair? _%g154238154250%_)
                  (let ((_%hd154243154274%_ (##car _%g154238154250%_))
                        (_%tl154244154276%_ (##cdr _%g154238154250%_)))
                    (let ((_%sys-cpu154279%_ _%hd154243154274%_))
                      (if (pair? _%tl154244154276%_)
                          (let ((_%hd154245154281%_ (##car _%tl154244154276%_))
                                (_%tl154246154283%_
                                 (##cdr _%tl154244154276%_)))
                            (let ((_%sys-vendor154286%_ _%hd154245154281%_))
                              (if (pair? _%tl154246154283%_)
                                  (let ((_%hd154247154288%_
                                         (##car _%tl154246154283%_))
                                        (_%tl154248154290%_
                                         (##cdr _%tl154246154283%_)))
                                    (let ((_%sys-type154293%_
                                           _%hd154247154288%_))
                                      (if (null? _%tl154248154290%_)
                                          (_%K154242154271%_
                                           _%sys-type154293%_
                                           _%sys-vendor154286%_
                                           _%sys-cpu154279%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self154225%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
