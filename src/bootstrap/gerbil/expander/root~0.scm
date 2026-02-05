(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1770326748)
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
      (lambda (_%self155001%_ _%bind?155002%_)
        (let ((_%self155005%_ _%self155001%_))
          (if (##fx< '2 (##structure-length _%self155005%_))
              (begin
                (##unchecked-structure-set! _%self155005%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self155005%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self155005%_
                     '2
                     (##structure-length _%self155005%_)))
          (if _%bind?155002%_
              (begin
                (let ((__method155069
                       (__method-ref
                        _%self155005%_
                        'bind-core-syntax-expanders!)))
                  (if __method155069
                      (__method155069 _%self155005%_)
                      (begin
                        (error '"Missing method"
                               _%self155005%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method155070
                       (__method-ref
                        _%self155005%_
                        'bind-core-macro-expanders!)))
                  (if __method155070
                      (__method155070 _%self155005%_)
                      (begin
                        (error '"Missing method"
                               _%self155005%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method155071
                       (__method-ref _%self155005%_ 'bind-core-features!)))
                  (if __method155071
                      (__method155071 _%self155005%_)
                      (begin
                        (error '"Missing method"
                               _%self155005%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self155019%_)
        (let ((_%bind?155021%_ '#t))
          (gx#root-context:::init!__% _%self155019%_ _%bind?155021%_))))
    (define gx#root-context:::init!
      (lambda _g155075_
        (let ((_g155076_ (##length _g155075_)))
          (cond ((##fx= _g155076_ 1)
                 (apply gx#root-context:::init!__0 _g155075_))
                ((##fx= _g155076_ 2)
                 (apply gx#root-context:::init!__% _g155075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g155075_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass155025 __method-table155026)
        (let ((__bind-core-macro-expanders!155027
               (__make-promise
                (lambda ()
                  (let ((__method155030
                         (symbolic-table-ref
                          __method-table155026
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method155030
                        __method155030
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!155028
               (__make-promise
                (lambda ()
                  (let ((__method155031
                         (symbolic-table-ref
                          __method-table155026
                          'bind-core-features!
                          '#f)))
                    (if __method155031
                        __method155031
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!155029
               (__make-promise
                (lambda ()
                  (let ((__method155032
                         (symbolic-table-ref
                          __method-table155026
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method155032
                        __method155032
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_%opt-lambda154999155016%_
                 (lambda (_%self155001%_ _%bind?155002%_)
                   (let ((_%self155005%_ _%self155001%_))
                     (if (##fx< '2 (##structure-length _%self155005%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self155005%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self155005%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self155005%_
                                '2
                                (##structure-length _%self155005%_)))
                     (if _%bind?155002%_
                         (begin
                           ((force __bind-core-syntax-expanders!155029)
                            _%self155005%_)
                           ((force __bind-core-macro-expanders!155027)
                            _%self155005%_)
                           ((force __bind-core-features!155028)
                            _%self155005%_))
                         '#!void)))))
            (lambda _g155077_
              (let ((_g155078_ (##length _g155077_)))
                (cond ((##fx= _g155078_ 1)
                       (apply (lambda (_%self155019%_)
                                (let ((_%bind?155021%_ '#t))
                                  (_%opt-lambda154999155016%_
                                   _%self155019%_
                                   _%bind?155021%_)))
                              _g155077_))
                      ((##fx= _g155078_ 2)
                       (apply _%opt-lambda154999155016%_ _g155077_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g155077_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self154846%_ _%super154847%_)
        (let* ((_%self154850%_ _%self154846%_)
               (_%super154866%_
                (let ((_%$e154860%_ _%super154847%_))
                  (if _%$e154860%_
                      _%$e154860%_
                      (let ((_%$e154863%_ (gx#core-context-root__0)))
                        (if _%$e154863%_
                            _%$e154863%_
                            (let ((__obj155072
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj155072)
                              __obj155072)))))))
          (if (##fx< '5 (##structure-length _%self154850%_))
              (begin
                (##unchecked-structure-set! _%self154850%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self154850%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self154850%_
                 _%super154866%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self154850%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self154850%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self154850%_
                     '5
                     (##structure-length _%self154850%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self154871%_)
        (let ((_%super154873%_ '#f))
          (gx#top-context:::init!__% _%self154871%_ _%super154873%_))))
    (define gx#top-context:::init!
      (lambda _g155079_
        (let ((_g155080_ (##length _g155079_)))
          (cond ((##fx= _g155080_ 1)
                 (apply gx#top-context:::init!__0 _g155079_))
                ((##fx= _g155080_ 2)
                 (apply gx#top-context:::init!__% _g155079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g155079_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self154567%_ _%bindings154568%_)
        (let ((_%self154571%_ _%self154567%_))
          (for-each
           (lambda (_%bind154581%_)
             (let* ((_%bind154582154589%_ _%bind154581%_)
                    (_%E154584154592%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind154582154589%_
                              '([id . rest]))
                       '#!void))
                    (_%K154585154701%_
                     (lambda (_%rest154595%_ _%id154596%_)
                       (gx#core-context-put!
                        _%self154571%_
                        _%id154596%_
                        (let ((__obj155073
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj155073
                           _%id154596%_
                           _%id154596%_
                           '#f
                           (let* ((_%rest154597154608%_ _%rest154595%_)
                                  (_%E154599154612%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest154597154608%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K154600154677%_
                                   (lambda (_%compiler154615%_
                                            _%expander154616%_
                                            _%key154617%_)
                                     ((let* ((_%key154618154631%_
                                              _%key154617%_)
                                             (_%E154624154635%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key154618154631%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K154629154671%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K154628154664%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K154627154656%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K154626154648%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K154625154640%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match154623154643%_
                                                  (lambda ()
                                                    (if (##eq? _%key154618154631%_
                                                               'expr:)
                                                        (_%K154625154640%_)
                                                        (_%E154624154635%_))))
                                                 (_%try-match154622154651%_
                                                  (lambda ()
                                                    (if (##eq? _%key154618154631%_
                                                               'special:)
                                                        (_%K154626154648%_)
                                                        (_%try-match154623154643%_))))
                                                 (_%try-match154621154659%_
                                                  (lambda ()
                                                    (if (##eq? _%key154618154631%_
                                                               'define:)
                                                        (_%K154627154656%_)
                                                        (_%try-match154622154651%_))))
                                                 (_%try-match154620154667%_
                                                  (lambda ()
                                                    (if (##eq? _%key154618154631%_
                                                               'module:)
                                                        (_%K154628154664%_)
                                                        (_%try-match154621154659%_)))))
                                            (if (##eq? _%key154618154631%_
                                                       'top:)
                                                (_%K154629154671%_)
                                                (_%try-match154620154667%_)))))
                                      _%expander154616%_
                                      _%id154596%_
                                      (let ((_%$e154674%_ _%compiler154615%_))
                                        (if _%$e154674%_
                                            _%$e154674%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest154597154608%_)
                                 (let ((_%hd154601154680%_
                                        (##car _%rest154597154608%_))
                                       (_%tl154602154682%_
                                        (##cdr _%rest154597154608%_)))
                                   (let ((_%key154685%_ _%hd154601154680%_))
                                     (if (pair? _%tl154602154682%_)
                                         (let ((_%hd154603154687%_
                                                (##car _%tl154602154682%_))
                                               (_%tl154604154689%_
                                                (##cdr _%tl154602154682%_)))
                                           (let ((_%expander154692%_
                                                  _%hd154603154687%_))
                                             (if (pair? _%tl154604154689%_)
                                                 (let ((_%hd154605154694%_
                                                        (##car _%tl154604154689%_))
                                                       (_%tl154606154696%_
                                                        (##cdr _%tl154604154689%_)))
                                                   (let ((_%compiler154699%_
                                                          _%hd154605154694%_))
                                                     (if (null? _%tl154606154696%_)
                                                         (_%K154600154677%_
                                                          _%compiler154699%_
                                                          _%expander154692%_
                                                          _%key154685%_)
                                                         (_%E154599154612%_))))
                                                 (_%E154599154612%_))))
                                         (_%E154599154612%_))))
                                 (_%E154599154612%_))))
                          __obj155073)))))
               (if (pair? _%bind154582154589%_)
                   (let ((_%hd154586154704%_ (##car _%bind154582154589%_))
                         (_%tl154587154706%_ (##cdr _%bind154582154589%_)))
                     (let* ((_%id154709%_ _%hd154586154704%_)
                            (_%rest154711%_ _%tl154587154706%_))
                       (_%K154585154701%_ _%rest154711%_ _%id154709%_)))
                   (_%E154584154592%_))))
           _%bindings154568%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self154716%_)
        (let ((_%bindings154718%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self154716%_
           _%bindings154718%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g155081_
        (let ((_g155082_ (##length _g155081_)))
          (cond ((##fx= _g155082_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g155081_))
                ((##fx= _g155082_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g155081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g155081_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self154329%_ _%bindings154330%_)
        (let ((_%self154333%_ _%self154329%_))
          (for-each
           (lambda (_%bind154343%_)
             (let* ((_%bind154344154351%_ _%bind154343%_)
                    (_%E154346154354%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind154344154351%_
                              '([id . rest]))
                       '#!void))
                    (_%K154347154422%_
                     (lambda (_%rest154357%_ _%id154358%_)
                       (gx#core-context-put!
                        _%self154333%_
                        _%id154358%_
                        (let ((__obj155074
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj155074
                           _%id154358%_
                           _%id154358%_
                           '#f
                           (let* ((_%rest154359154374%_ _%rest154357%_)
                                  (_%E154363154378%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest154359154374%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K154368154407%_
                                    (lambda (_%core-id154405%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id154405%_)))
                                   (_%K154365154392%_
                                    (lambda (_%proc154390%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc154390%_)))
                                   (_%K154364154383%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id154358%_))))
                               (let ((_%try-match154362154386%_
                                      (lambda ()
                                        (if (null? _%rest154359154374%_)
                                            (_%K154364154383%_)
                                            (_%E154363154378%_)))))
                                 (if (pair? _%rest154359154374%_)
                                     (let ((_%tl154370154412%_
                                            (##cdr _%rest154359154374%_))
                                           (_%hd154369154410%_
                                            (##car _%rest154359154374%_)))
                                       (if (##eq? _%hd154369154410%_ '=>)
                                           (if (pair? _%tl154370154412%_)
                                               (let ((_%tl154372154417%_
                                                      (##cdr _%tl154370154412%_))
                                                     (_%hd154371154415%_
                                                      (##car _%tl154370154412%_)))
                                                 (if (null? _%tl154372154417%_)
                                                     (let ((_%core-id154420%_
                                                            _%hd154371154415%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id154420%_))
                                                     (_%E154363154378%_)))
                                               (if (null? _%tl154370154412%_)
                                                   (let ((_%proc154400%_
                                                          _%hd154369154410%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc154400%_))
                                                   (_%E154363154378%_)))
                                           (if (null? _%tl154370154412%_)
                                               (let ((_%proc154400%_
                                                      _%hd154369154410%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc154400%_))
                                               (_%E154363154378%_))))
                                     (_%try-match154362154386%_))))))
                          __obj155074)))))
               (if (pair? _%bind154344154351%_)
                   (let ((_%hd154348154425%_ (##car _%bind154344154351%_))
                         (_%tl154349154427%_ (##cdr _%bind154344154351%_)))
                     (let* ((_%id154430%_ _%hd154348154425%_)
                            (_%rest154432%_ _%tl154349154427%_))
                       (_%K154347154422%_ _%rest154432%_ _%id154430%_)))
                   (_%E154346154354%_))))
           _%bindings154330%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self154437%_)
        (let ((_%bindings154439%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self154437%_
           _%bindings154439%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g155083_
        (let ((_g155084_ (##length _g155083_)))
          (cond ((##fx= _g155084_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g155083_))
                ((##fx= _g155084_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g155083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g155083_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self154060%_)
        (let ((_%self154063%_ _%self154060%_))
          (letrec ((_%linux-variant?154074%_
                    (lambda (_%sys-type154174%_)
                      (let* ((_%g154175154183%_
                              (__string-split
                               (symbol->string _%sys-type154174%_)
                               '#\-))
                             (_%else154177154191%_ (lambda () '#f))
                             (_%K154179154196%_
                              (lambda (_%rest154194%_)
                                (not (null? _%rest154194%_)))))
                        (if (pair? _%g154175154183%_)
                            (let ((_%hd154180154199%_
                                   (##car _%g154175154183%_))
                                  (_%tl154181154201%_
                                   (##cdr _%g154175154183%_)))
                              (if (equal? _%hd154180154199%_ '"linux")
                                  (let ((_%rest154204%_ _%tl154181154201%_))
                                    (_%K154179154196%_ _%rest154204%_))
                                  (_%else154177154191%_)))
                            (_%else154177154191%_)))))
                   (_%bsd-variant154075%_
                    (lambda (_%sys-type154133%_)
                      (let ((_%sys-type-str154135%_
                             (symbol->string _%sys-type154133%_)))
                        (let _%lp154137%_ ((_%rest154139%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest154140154148%_ _%rest154139%_)
                                 (_%else154142154156%_ (lambda () '#f))
                                 (_%K154144154162%_
                                  (lambda (_%rest154159%_ _%sys154160%_)
                                    (if (string-prefix?
                                         _%sys154160%_
                                         _%sys-type-str154135%_)
                                        _%sys154160%_
                                        (_%lp154137%_ _%rest154159%_)))))
                            (if (pair? _%rest154140154148%_)
                                (let ((_%hd154145154165%_
                                       (##car _%rest154140154148%_))
                                      (_%tl154146154167%_
                                       (##cdr _%rest154140154148%_)))
                                  (let* ((_%sys154170%_ _%hd154145154165%_)
                                         (_%rest154172%_ _%tl154146154167%_))
                                    (_%K154144154162%_
                                     _%rest154172%_
                                     _%sys154170%_)))
                                (_%else154142154156%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self154063%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self154063%_)
            (let* ((_%g154076154088%_ (system-type))
                   (_%else154078154096%_ (lambda () '#!void))
                   (_%K154080154109%_
                    (lambda (_%sys-type154099%_
                             _%sys-vendor154100%_
                             _%sys-cpu154101%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu154101%_
                       '#f
                       '0
                       _%self154063%_)
                      (gx#core-bind-feature!__%
                       _%sys-type154099%_
                       '#f
                       '0
                       _%self154063%_)
                      (if (_%linux-variant?154074%_ _%sys-type154099%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self154063%_)
                          (let ((_%$e154104%_
                                 (_%bsd-variant154075%_ _%sys-type154099%_)))
                            (if _%$e154104%_
                                ((lambda (_%sys-prefix154107%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self154063%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix154107%_)
                                    '#f
                                    '0
                                    _%self154063%_))
                                 _%$e154104%_)
                                '#!void))))))
              (if (pair? _%g154076154088%_)
                  (let ((_%hd154081154112%_ (##car _%g154076154088%_))
                        (_%tl154082154114%_ (##cdr _%g154076154088%_)))
                    (let ((_%sys-cpu154117%_ _%hd154081154112%_))
                      (if (pair? _%tl154082154114%_)
                          (let ((_%hd154083154119%_ (##car _%tl154082154114%_))
                                (_%tl154084154121%_
                                 (##cdr _%tl154082154114%_)))
                            (let ((_%sys-vendor154124%_ _%hd154083154119%_))
                              (if (pair? _%tl154084154121%_)
                                  (let ((_%hd154085154126%_
                                         (##car _%tl154084154121%_))
                                        (_%tl154086154128%_
                                         (##cdr _%tl154084154121%_)))
                                    (let ((_%sys-type154131%_
                                           _%hd154085154126%_))
                                      (if (null? _%tl154086154128%_)
                                          (_%K154080154109%_
                                           _%sys-type154131%_
                                           _%sys-vendor154124%_
                                           _%sys-cpu154117%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self154063%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
