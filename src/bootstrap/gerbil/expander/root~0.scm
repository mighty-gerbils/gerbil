(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1779435582)
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
      (lambda (_%self189739%_ _%bind?189740%_)
        (let ((_%self189743%_ _%self189739%_))
          (if (##fx< '2 (##structure-length _%self189743%_))
              (begin
                (##unchecked-structure-set! _%self189743%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self189743%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self189743%_
                     '2
                     (##structure-length _%self189743%_)))
          (if _%bind?189740%_
              (begin
                (let ((__method189807
                       (__method-ref
                        _%self189743%_
                        'bind-core-syntax-expanders!)))
                  (if __method189807
                      (__method189807 _%self189743%_)
                      (begin
                        (error '"Missing method"
                               _%self189743%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method189808
                       (__method-ref
                        _%self189743%_
                        'bind-core-macro-expanders!)))
                  (if __method189808
                      (__method189808 _%self189743%_)
                      (begin
                        (error '"Missing method"
                               _%self189743%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method189809
                       (__method-ref _%self189743%_ 'bind-core-features!)))
                  (if __method189809
                      (__method189809 _%self189743%_)
                      (begin
                        (error '"Missing method"
                               _%self189743%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self189757%_)
        (let ((_%bind?189759%_ '#t))
          (gx#root-context:::init!__% _%self189757%_ _%bind?189759%_))))
    (define gx#root-context:::init!
      (lambda _g189813_
        (let ((_g189814_ (##length _g189813_)))
          (cond ((##fx= _g189814_ 1)
                 (apply gx#root-context:::init!__0 _g189813_))
                ((##fx= _g189814_ 2)
                 (apply gx#root-context:::init!__% _g189813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g189813_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass189763 __method-table189764)
        (let ((__bind-core-syntax-expanders!189765
               (__make-promise
                (lambda ()
                  (let ((__method189768
                         (symbolic-table-ref
                          __method-table189764
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method189768
                        __method189768
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!189766
               (__make-promise
                (lambda ()
                  (let ((__method189769
                         (symbolic-table-ref
                          __method-table189764
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method189769
                        __method189769
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!189767
               (__make-promise
                (lambda ()
                  (let ((__method189770
                         (symbolic-table-ref
                          __method-table189764
                          'bind-core-features!
                          '#f)))
                    (if __method189770
                        __method189770
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda189737189754%_
                 (lambda (_%self189739%_ _%bind?189740%_)
                   (let ((_%self189743%_ _%self189739%_))
                     (if (##fx< '2 (##structure-length _%self189743%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self189743%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self189743%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self189743%_
                                '2
                                (##structure-length _%self189743%_)))
                     (if _%bind?189740%_
                         (begin
                           ((force __bind-core-syntax-expanders!189765)
                            _%self189743%_)
                           ((force __bind-core-macro-expanders!189766)
                            _%self189743%_)
                           ((force __bind-core-features!189767)
                            _%self189743%_))
                         '#!void)))))
            (lambda _g189815_
              (let ((_g189816_ (##length _g189815_)))
                (cond ((##fx= _g189816_ 1)
                       (apply (lambda (_%self189757%_)
                                (let ((_%bind?189759%_ '#t))
                                  (_%opt-lambda189737189754%_
                                   _%self189757%_
                                   _%bind?189759%_)))
                              _g189815_))
                      ((##fx= _g189816_ 2)
                       (apply _%opt-lambda189737189754%_ _g189815_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g189815_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self189584%_ _%super189585%_)
        (let* ((_%self189588%_ _%self189584%_)
               (_%super189604%_
                (let ((_%$e189598%_ _%super189585%_))
                  (if _%$e189598%_
                      _%$e189598%_
                      (let ((_%$e189601%_ (gx#core-context-root__0)))
                        (if _%$e189601%_
                            _%$e189601%_
                            (let ((__obj189810
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj189810)
                              __obj189810)))))))
          (if (##fx< '5 (##structure-length _%self189588%_))
              (begin
                (##unchecked-structure-set! _%self189588%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self189588%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self189588%_
                 _%super189604%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self189588%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self189588%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self189588%_
                     '5
                     (##structure-length _%self189588%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self189609%_)
        (let ((_%super189611%_ '#f))
          (gx#top-context:::init!__% _%self189609%_ _%super189611%_))))
    (define gx#top-context:::init!
      (lambda _g189817_
        (let ((_g189818_ (##length _g189817_)))
          (cond ((##fx= _g189818_ 1)
                 (apply gx#top-context:::init!__0 _g189817_))
                ((##fx= _g189818_ 2)
                 (apply gx#top-context:::init!__% _g189817_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g189817_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self189305%_ _%bindings189306%_)
        (let ((_%self189309%_ _%self189305%_))
          (for-each
           (lambda (_%bind189319%_)
             (let* ((_%bind189320189327%_ _%bind189319%_)
                    (_%E189322189330%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind189320189327%_
                              '([id . rest]))
                       '#!void))
                    (_%K189323189439%_
                     (lambda (_%rest189333%_ _%id189334%_)
                       (gx#core-context-put!
                        _%self189309%_
                        _%id189334%_
                        (let ((__obj189811
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj189811
                           _%id189334%_
                           _%id189334%_
                           '#f
                           (let* ((_%rest189335189346%_ _%rest189333%_)
                                  (_%E189337189350%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest189335189346%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K189338189415%_
                                   (lambda (_%compiler189353%_
                                            _%expander189354%_
                                            _%key189355%_)
                                     ((let* ((_%key189356189369%_
                                              _%key189355%_)
                                             (_%E189362189373%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key189356189369%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K189367189409%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K189366189402%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K189365189394%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K189364189386%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K189363189378%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match189361189381%_
                                                  (lambda ()
                                                    (if (##eq? _%key189356189369%_
                                                               'expr:)
                                                        (_%K189363189378%_)
                                                        (_%E189362189373%_))))
                                                 (_%try-match189360189389%_
                                                  (lambda ()
                                                    (if (##eq? _%key189356189369%_
                                                               'special:)
                                                        (_%K189364189386%_)
                                                        (_%try-match189361189381%_))))
                                                 (_%try-match189359189397%_
                                                  (lambda ()
                                                    (if (##eq? _%key189356189369%_
                                                               'define:)
                                                        (_%K189365189394%_)
                                                        (_%try-match189360189389%_))))
                                                 (_%try-match189358189405%_
                                                  (lambda ()
                                                    (if (##eq? _%key189356189369%_
                                                               'module:)
                                                        (_%K189366189402%_)
                                                        (_%try-match189359189397%_)))))
                                            (if (##eq? _%key189356189369%_
                                                       'top:)
                                                (_%K189367189409%_)
                                                (_%try-match189358189405%_)))))
                                      _%expander189354%_
                                      _%id189334%_
                                      (let ((_%$e189412%_ _%compiler189353%_))
                                        (if _%$e189412%_
                                            _%$e189412%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest189335189346%_)
                                 (let ((_%hd189339189418%_
                                        (##car _%rest189335189346%_))
                                       (_%tl189340189420%_
                                        (##cdr _%rest189335189346%_)))
                                   (let ((_%key189423%_ _%hd189339189418%_))
                                     (if (pair? _%tl189340189420%_)
                                         (let ((_%hd189341189425%_
                                                (##car _%tl189340189420%_))
                                               (_%tl189342189427%_
                                                (##cdr _%tl189340189420%_)))
                                           (let ((_%expander189430%_
                                                  _%hd189341189425%_))
                                             (if (pair? _%tl189342189427%_)
                                                 (let ((_%hd189343189432%_
                                                        (##car _%tl189342189427%_))
                                                       (_%tl189344189434%_
                                                        (##cdr _%tl189342189427%_)))
                                                   (let ((_%compiler189437%_
                                                          _%hd189343189432%_))
                                                     (if (null? _%tl189344189434%_)
                                                         (_%K189338189415%_
                                                          _%compiler189437%_
                                                          _%expander189430%_
                                                          _%key189423%_)
                                                         (_%E189337189350%_))))
                                                 (_%E189337189350%_))))
                                         (_%E189337189350%_))))
                                 (_%E189337189350%_))))
                          __obj189811)))))
               (if (pair? _%bind189320189327%_)
                   (let ((_%hd189324189442%_ (##car _%bind189320189327%_))
                         (_%tl189325189444%_ (##cdr _%bind189320189327%_)))
                     (let* ((_%id189447%_ _%hd189324189442%_)
                            (_%rest189449%_ _%tl189325189444%_))
                       (_%K189323189439%_ _%rest189449%_ _%id189447%_)))
                   (_%E189322189330%_))))
           _%bindings189306%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self189454%_)
        (let ((_%bindings189456%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self189454%_
           _%bindings189456%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g189819_
        (let ((_g189820_ (##length _g189819_)))
          (cond ((##fx= _g189820_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g189819_))
                ((##fx= _g189820_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g189819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g189819_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self189067%_ _%bindings189068%_)
        (let ((_%self189071%_ _%self189067%_))
          (for-each
           (lambda (_%bind189081%_)
             (let* ((_%bind189082189089%_ _%bind189081%_)
                    (_%E189084189092%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind189082189089%_
                              '([id . rest]))
                       '#!void))
                    (_%K189085189160%_
                     (lambda (_%rest189095%_ _%id189096%_)
                       (gx#core-context-put!
                        _%self189071%_
                        _%id189096%_
                        (let ((__obj189812
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj189812
                           _%id189096%_
                           _%id189096%_
                           '#f
                           (let* ((_%rest189097189112%_ _%rest189095%_)
                                  (_%E189101189116%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest189097189112%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K189106189145%_
                                    (lambda (_%core-id189143%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id189143%_)))
                                   (_%K189103189130%_
                                    (lambda (_%proc189128%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc189128%_)))
                                   (_%K189102189121%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id189096%_))))
                               (let ((_%try-match189100189124%_
                                      (lambda ()
                                        (if (null? _%rest189097189112%_)
                                            (_%K189102189121%_)
                                            (_%E189101189116%_)))))
                                 (if (pair? _%rest189097189112%_)
                                     (let ((_%tl189108189150%_
                                            (##cdr _%rest189097189112%_))
                                           (_%hd189107189148%_
                                            (##car _%rest189097189112%_)))
                                       (if (##eq? _%hd189107189148%_ '=>)
                                           (if (pair? _%tl189108189150%_)
                                               (let ((_%tl189110189155%_
                                                      (##cdr _%tl189108189150%_))
                                                     (_%hd189109189153%_
                                                      (##car _%tl189108189150%_)))
                                                 (if (null? _%tl189110189155%_)
                                                     (let ((_%core-id189158%_
                                                            _%hd189109189153%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id189158%_))
                                                     (_%E189101189116%_)))
                                               (if (null? _%tl189108189150%_)
                                                   (let ((_%proc189138%_
                                                          _%hd189107189148%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc189138%_))
                                                   (_%E189101189116%_)))
                                           (if (null? _%tl189108189150%_)
                                               (let ((_%proc189138%_
                                                      _%hd189107189148%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc189138%_))
                                               (_%E189101189116%_))))
                                     (_%try-match189100189124%_))))))
                          __obj189812)))))
               (if (pair? _%bind189082189089%_)
                   (let ((_%hd189086189163%_ (##car _%bind189082189089%_))
                         (_%tl189087189165%_ (##cdr _%bind189082189089%_)))
                     (let* ((_%id189168%_ _%hd189086189163%_)
                            (_%rest189170%_ _%tl189087189165%_))
                       (_%K189085189160%_ _%rest189170%_ _%id189168%_)))
                   (_%E189084189092%_))))
           _%bindings189068%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self189175%_)
        (let ((_%bindings189177%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self189175%_
           _%bindings189177%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g189821_
        (let ((_g189822_ (##length _g189821_)))
          (cond ((##fx= _g189822_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g189821_))
                ((##fx= _g189822_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g189821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g189821_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self188798%_)
        (let ((_%self188801%_ _%self188798%_))
          (letrec ((_%linux-variant?188812%_
                    (lambda (_%sys-type188912%_)
                      (let* ((_%g188913188921%_
                              (__string-split
                               (symbol->string _%sys-type188912%_)
                               '#\-))
                             (_%else188915188929%_ (lambda () '#f))
                             (_%K188917188934%_
                              (lambda (_%rest188932%_)
                                (not (null? _%rest188932%_)))))
                        (if (pair? _%g188913188921%_)
                            (let ((_%hd188918188937%_
                                   (##car _%g188913188921%_))
                                  (_%tl188919188939%_
                                   (##cdr _%g188913188921%_)))
                              (if (equal? _%hd188918188937%_ '"linux")
                                  (let ((_%rest188942%_ _%tl188919188939%_))
                                    (_%K188917188934%_ _%rest188942%_))
                                  (_%else188915188929%_)))
                            (_%else188915188929%_)))))
                   (_%bsd-variant188813%_
                    (lambda (_%sys-type188871%_)
                      (let ((_%sys-type-str188873%_
                             (symbol->string _%sys-type188871%_)))
                        (let _%lp188875%_ ((_%rest188877%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest188878188886%_ _%rest188877%_)
                                 (_%else188880188894%_ (lambda () '#f))
                                 (_%K188882188900%_
                                  (lambda (_%rest188897%_ _%sys188898%_)
                                    (if (string-prefix?
                                         _%sys188898%_
                                         _%sys-type-str188873%_)
                                        _%sys188898%_
                                        (_%lp188875%_ _%rest188897%_)))))
                            (if (pair? _%rest188878188886%_)
                                (let ((_%hd188883188903%_
                                       (##car _%rest188878188886%_))
                                      (_%tl188884188905%_
                                       (##cdr _%rest188878188886%_)))
                                  (let* ((_%sys188908%_ _%hd188883188903%_)
                                         (_%rest188910%_ _%tl188884188905%_))
                                    (_%K188882188900%_
                                     _%rest188910%_
                                     _%sys188908%_)))
                                (_%else188880188894%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self188801%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self188801%_)
            (let* ((_%g188814188826%_ (system-type))
                   (_%else188816188834%_ (lambda () '#!void))
                   (_%K188818188847%_
                    (lambda (_%sys-type188837%_
                             _%sys-vendor188838%_
                             _%sys-cpu188839%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu188839%_
                       '#f
                       '0
                       _%self188801%_)
                      (gx#core-bind-feature!__%
                       _%sys-type188837%_
                       '#f
                       '0
                       _%self188801%_)
                      (if (_%linux-variant?188812%_ _%sys-type188837%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self188801%_)
                          (let ((_%$e188842%_
                                 (_%bsd-variant188813%_ _%sys-type188837%_)))
                            (if _%$e188842%_
                                (let ()
                                  (gx#core-bind-feature!__%
                                   (##string->symbol '"bsd")
                                   '#f
                                   '0
                                   _%self188801%_)
                                  (gx#core-bind-feature!__%
                                   (string->symbol _%$e188842%_)
                                   '#f
                                   '0
                                   _%self188801%_))
                                '#!void))))))
              (if (pair? _%g188814188826%_)
                  (let ((_%hd188819188850%_ (##car _%g188814188826%_))
                        (_%tl188820188852%_ (##cdr _%g188814188826%_)))
                    (let ((_%sys-cpu188855%_ _%hd188819188850%_))
                      (if (pair? _%tl188820188852%_)
                          (let ((_%hd188821188857%_ (##car _%tl188820188852%_))
                                (_%tl188822188859%_
                                 (##cdr _%tl188820188852%_)))
                            (let ((_%sys-vendor188862%_ _%hd188821188857%_))
                              (if (pair? _%tl188822188859%_)
                                  (let ((_%hd188823188864%_
                                         (##car _%tl188822188859%_))
                                        (_%tl188824188866%_
                                         (##cdr _%tl188822188859%_)))
                                    (let ((_%sys-type188869%_
                                           _%hd188823188864%_))
                                      (if (null? _%tl188824188866%_)
                                          (_%K188818188847%_
                                           _%sys-type188869%_
                                           _%sys-vendor188862%_
                                           _%sys-cpu188855%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self188801%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
