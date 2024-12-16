(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1734131747)
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
      (lambda (_%self130510131590%_ _%bind?131592%_)
        (let* ((_%self131594%_ _%self130510131590%_)
               (_%self131596%_ _%self131594%_))
          (if (##fx< '2 (##structure-length _%self131596%_))
              (begin
                (##unchecked-structure-set! _%self131596%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self131596%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self131596%_
                     '2
                     (##vector-length _%self131596%_)))
          (if _%bind?131592%_
              (begin
                (let ((__method131659
                       (__method-ref
                        _%self131596%_
                        'bind-core-syntax-expanders!)))
                  (if __method131659
                      (__method131659 _%self131596%_)
                      (begin
                        (error '"Missing method"
                               _%self131596%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method131660
                       (__method-ref
                        _%self131596%_
                        'bind-core-macro-expanders!)))
                  (if __method131660
                      (__method131660 _%self131596%_)
                      (begin
                        (error '"Missing method"
                               _%self131596%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method131661
                       (__method-ref _%self131596%_ 'bind-core-features!)))
                  (if __method131661
                      (__method131661 _%self131596%_)
                      (begin
                        (error '"Missing method"
                               _%self131596%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self130510131609%_)
        (let ((_%bind?131611%_ '#t))
          (gx#root-context:::init!__% _%self130510131609%_ _%bind?131611%_))))
    (define gx#root-context:::init!
      (lambda _g131664_
        (let ((_g131663_ (##length _g131664_)))
          (cond ((##fx= _g131663_ 1)
                 (apply gx#root-context:::init!__0 _g131664_))
                ((##fx= _g131663_ 2)
                 (apply gx#root-context:::init!__% _g131664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g131664_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass131615 __method-table131616)
        (let ((__bind-core-syntax-expanders!131617
               (__make-promise
                (lambda ()
                  (let ((__method131620
                         (symbolic-table-ref
                          __method-table131616
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method131620
                        __method131620
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!131618
               (__make-promise
                (lambda ()
                  (let ((__method131621
                         (symbolic-table-ref
                          __method-table131616
                          'bind-core-features!
                          '#f)))
                    (if __method131621
                        __method131621
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!131619
               (__make-promise
                (lambda ()
                  (let ((__method131622
                         (symbolic-table-ref
                          __method-table131616
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method131622
                        __method131622
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda131588131606%_
                 (lambda (_%self130510131590%_ _%bind?131592%_)
                   (let* ((_%self131594%_ _%self130510131590%_)
                          (_%self131596%_ _%self131594%_))
                     (if (##fx< '2 (##structure-length _%self131596%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self131596%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self131596%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self131596%_
                                '2
                                (##vector-length _%self131596%_)))
                     (if _%bind?131592%_
                         (begin
                           ((force __bind-core-syntax-expanders!131617)
                            _%self131596%_)
                           ((force __bind-core-macro-expanders!131619)
                            _%self131596%_)
                           ((force __bind-core-features!131618)
                            _%self131596%_))
                         '#!void)))))
            (lambda _g131666_
              (let ((_g131665_ (##length _g131666_)))
                (cond ((##fx= _g131665_ 1)
                       (apply (lambda (_%self130510131609%_)
                                (let ((_%bind?131611%_ '#t))
                                  (_%opt-lambda131588131606%_
                                   _%self130510131609%_
                                   _%bind?131611%_)))
                              _g131666_))
                      ((##fx= _g131665_ 2)
                       (apply _%opt-lambda131588131606%_ _g131666_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g131666_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self130511131433%_ _%super131435%_)
        (let* ((_%self131437%_ _%self130511131433%_)
               (_%self131439%_ _%self131437%_)
               (_%super131455%_
                (let ((_%$e131449%_ _%super131435%_))
                  (if _%$e131449%_
                      _%$e131449%_
                      (let ((_%$e131452%_ (gx#core-context-root__0)))
                        (if _%$e131452%_
                            _%$e131452%_
                            (let ((__obj131662
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj131662)
                              __obj131662)))))))
          (if (##fx< '5 (##structure-length _%self131439%_))
              (begin
                (##unchecked-structure-set! _%self131439%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self131439%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self131439%_
                 _%super131455%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self131439%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self131439%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self131439%_
                     '5
                     (##vector-length _%self131439%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self130511131460%_)
        (let ((_%super131462%_ '#f))
          (gx#top-context:::init!__% _%self130511131460%_ _%super131462%_))))
    (define gx#top-context:::init!
      (lambda _g131668_
        (let ((_g131667_ (##length _g131668_)))
          (cond ((##fx= _g131667_ 1)
                 (apply gx#top-context:::init!__0 _g131668_))
                ((##fx= _g131667_ 2)
                 (apply gx#top-context:::init!__% _g131668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g131668_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self130512131151%_ _%bindings131153%_)
        (let* ((_%self131155%_ _%self130512131151%_)
               (_%self131157%_ _%self131155%_))
          (for-each
           (lambda (_%bind131167%_)
             (let* ((_%bind131168131175%_ _%bind131167%_)
                    (_%E131170131179%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind131168131175%_
                              '([id . rest]))
                       '#!void))
                    (_%K131171131288%_
                     (lambda (_%rest131182%_ _%id131183%_)
                       (gx#core-context-put!
                        _%self131157%_
                        _%id131183%_
                        (##structure
                         gx#syntax-binding::t
                         _%id131183%_
                         _%id131183%_
                         '#f
                         (let* ((_%rest131184131195%_ _%rest131182%_)
                                (_%E131186131199%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest131184131195%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K131187131264%_
                                 (lambda (_%compiler131202%_
                                          _%expander131203%_
                                          _%key131204%_)
                                   ((let* ((_%key131205131218%_ _%key131204%_)
                                           (_%E131211131222%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key131205131218%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K131216131258%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K131215131251%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K131214131243%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K131213131235%_
                                             (lambda () gx#make-special-form))
                                            (_%K131212131227%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match131210131230%_
                                                (lambda ()
                                                  (if (##eq? _%key131205131218%_
                                                             'expr:)
                                                      (_%K131212131227%_)
                                                      (_%E131211131222%_))))
                                               (_%try-match131209131238%_
                                                (lambda ()
                                                  (if (##eq? _%key131205131218%_
                                                             'special:)
                                                      (_%K131213131235%_)
                                                      (_%try-match131210131230%_))))
                                               (_%try-match131208131246%_
                                                (lambda ()
                                                  (if (##eq? _%key131205131218%_
                                                             'define:)
                                                      (_%K131214131243%_)
                                                      (_%try-match131209131238%_))))
                                               (_%try-match131207131254%_
                                                (lambda ()
                                                  (if (##eq? _%key131205131218%_
                                                             'module:)
                                                      (_%K131215131251%_)
                                                      (_%try-match131208131246%_)))))
                                          (if (##eq? _%key131205131218%_ 'top:)
                                              (_%K131216131258%_)
                                              (_%try-match131207131254%_)))))
                                    _%expander131203%_
                                    _%id131183%_
                                    (let ((_%$e131261%_ _%compiler131202%_))
                                      (if _%$e131261%_
                                          _%$e131261%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest131184131195%_)
                               (let ((_%hd131188131267%_
                                      (##car _%rest131184131195%_))
                                     (_%tl131189131269%_
                                      (##cdr _%rest131184131195%_)))
                                 (let ((_%key131272%_ _%hd131188131267%_))
                                   (if (pair? _%tl131189131269%_)
                                       (let ((_%hd131190131274%_
                                              (##car _%tl131189131269%_))
                                             (_%tl131191131276%_
                                              (##cdr _%tl131189131269%_)))
                                         (let ((_%expander131279%_
                                                _%hd131190131274%_))
                                           (if (pair? _%tl131191131276%_)
                                               (let ((_%hd131192131281%_
                                                      (##car _%tl131191131276%_))
                                                     (_%tl131193131283%_
                                                      (##cdr _%tl131191131276%_)))
                                                 (let ((_%compiler131286%_
                                                        _%hd131192131281%_))
                                                   (if (null? _%tl131193131283%_)
                                                       (_%K131187131264%_
                                                        _%compiler131286%_
                                                        _%expander131279%_
                                                        _%key131272%_)
                                                       (_%E131186131199%_))))
                                               (_%E131186131199%_))))
                                       (_%E131186131199%_))))
                               (_%E131186131199%_))))))))
               (if (pair? _%bind131168131175%_)
                   (let ((_%hd131172131291%_ (##car _%bind131168131175%_))
                         (_%tl131173131293%_ (##cdr _%bind131168131175%_)))
                     (let* ((_%id131296%_ _%hd131172131291%_)
                            (_%rest131298%_ _%tl131173131293%_))
                       (_%K131171131288%_ _%rest131298%_ _%id131296%_)))
                   (_%E131170131179%_))))
           _%bindings131153%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self130512131303%_)
        (let ((_%bindings131305%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self130512131303%_
           _%bindings131305%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g131670_
        (let ((_g131669_ (##length _g131670_)))
          (cond ((##fx= _g131669_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g131670_))
                ((##fx= _g131669_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g131670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g131670_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self130513130910%_ _%bindings130912%_)
        (let* ((_%self130914%_ _%self130513130910%_)
               (_%self130916%_ _%self130914%_))
          (for-each
           (lambda (_%bind130926%_)
             (let* ((_%bind130927130934%_ _%bind130926%_)
                    (_%E130929130938%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind130927130934%_
                              '([id . rest]))
                       '#!void))
                    (_%K130930131006%_
                     (lambda (_%rest130941%_ _%id130942%_)
                       (gx#core-context-put!
                        _%self130916%_
                        _%id130942%_
                        (##structure
                         gx#syntax-binding::t
                         _%id130942%_
                         _%id130942%_
                         '#f
                         (let* ((_%rest130943130958%_ _%rest130941%_)
                                (_%E130947130962%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest130943130958%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K130952130991%_
                                  (lambda (_%core-id130989%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id130989%_)))
                                 (_%K130949130976%_
                                  (lambda (_%proc130974%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc130974%_)))
                                 (_%K130948130967%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id130942%_))))
                             (let ((_%try-match130946130970%_
                                    (lambda ()
                                      (if (null? _%rest130943130958%_)
                                          (_%K130948130967%_)
                                          (_%E130947130962%_)))))
                               (if (pair? _%rest130943130958%_)
                                   (let ((_%tl130954130996%_
                                          (##cdr _%rest130943130958%_))
                                         (_%hd130953130994%_
                                          (##car _%rest130943130958%_)))
                                     (if (##eq? _%hd130953130994%_ '=>)
                                         (if (pair? _%tl130954130996%_)
                                             (let ((_%tl130956131001%_
                                                    (##cdr _%tl130954130996%_))
                                                   (_%hd130955130999%_
                                                    (##car _%tl130954130996%_)))
                                               (if (null? _%tl130956131001%_)
                                                   (let ((_%core-id131004%_
                                                          _%hd130955130999%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id131004%_))
                                                   (_%E130947130962%_)))
                                             (if (null? _%tl130954130996%_)
                                                 (let ((_%proc130984%_
                                                        _%hd130953130994%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc130984%_))
                                                 (_%E130947130962%_)))
                                         (if (null? _%tl130954130996%_)
                                             (let ((_%proc130984%_
                                                    _%hd130953130994%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc130984%_))
                                             (_%E130947130962%_))))
                                   (_%try-match130946130970%_))))))))))
               (if (pair? _%bind130927130934%_)
                   (let ((_%hd130931131009%_ (##car _%bind130927130934%_))
                         (_%tl130932131011%_ (##cdr _%bind130927130934%_)))
                     (let* ((_%id131014%_ _%hd130931131009%_)
                            (_%rest131016%_ _%tl130932131011%_))
                       (_%K130930131006%_ _%rest131016%_ _%id131014%_)))
                   (_%E130929130938%_))))
           _%bindings130912%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self130513131021%_)
        (let ((_%bindings131023%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self130513131021%_
           _%bindings131023%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g131672_
        (let ((_g131671_ (##length _g131672_)))
          (cond ((##fx= _g131671_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g131672_))
                ((##fx= _g131671_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g131672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g131672_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self130514130640%_)
        (let* ((_%self130643%_ _%self130514130640%_)
               (_%self130645%_ _%self130643%_))
          (letrec ((_%linux-variant?130655%_
                    (lambda (_%sys-type130755%_)
                      (let* ((_%g130756130764%_
                              (__string-split
                               (symbol->string _%sys-type130755%_)
                               '#\-))
                             (_%else130758130772%_ (lambda () '#f))
                             (_%K130760130777%_
                              (lambda (_%rest130775%_)
                                (not (null? _%rest130775%_)))))
                        (if (pair? _%g130756130764%_)
                            (let ((_%hd130761130780%_
                                   (##car _%g130756130764%_))
                                  (_%tl130762130782%_
                                   (##cdr _%g130756130764%_)))
                              (if (equal? _%hd130761130780%_ '"linux")
                                  (let ((_%rest130785%_ _%tl130762130782%_))
                                    (_%K130760130777%_ _%rest130785%_))
                                  (_%else130758130772%_)))
                            (_%else130758130772%_)))))
                   (_%bsd-variant130656%_
                    (lambda (_%sys-type130714%_)
                      (let ((_%sys-type-str130716%_
                             (symbol->string _%sys-type130714%_)))
                        (let _%lp130718%_ ((_%rest130720%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest130721130729%_ _%rest130720%_)
                                 (_%else130723130737%_ (lambda () '#f))
                                 (_%K130725130743%_
                                  (lambda (_%rest130740%_ _%sys130741%_)
                                    (if (string-prefix?
                                         _%sys130741%_
                                         _%sys-type-str130716%_)
                                        _%sys130741%_
                                        (_%lp130718%_ _%rest130740%_)))))
                            (if (pair? _%rest130721130729%_)
                                (let ((_%hd130726130746%_
                                       (##car _%rest130721130729%_))
                                      (_%tl130727130748%_
                                       (##cdr _%rest130721130729%_)))
                                  (let* ((_%sys130751%_ _%hd130726130746%_)
                                         (_%rest130753%_ _%tl130727130748%_))
                                    (_%K130725130743%_
                                     _%rest130753%_
                                     _%sys130751%_)))
                                (_%else130723130737%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self130645%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self130645%_)
            (let* ((_%g130657130669%_ (system-type))
                   (_%else130659130677%_ (lambda () '#!void))
                   (_%K130661130690%_
                    (lambda (_%sys-type130680%_
                             _%sys-vendor130681%_
                             _%sys-cpu130682%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu130682%_
                       '#f
                       '0
                       _%self130645%_)
                      (gx#core-bind-feature!__%
                       _%sys-type130680%_
                       '#f
                       '0
                       _%self130645%_)
                      (if (_%linux-variant?130655%_ _%sys-type130680%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self130645%_)
                          (let ((_%$e130685%_
                                 (_%bsd-variant130656%_ _%sys-type130680%_)))
                            (if _%$e130685%_
                                ((lambda (_%sys-prefix130688%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self130645%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix130688%_)
                                    '#f
                                    '0
                                    _%self130645%_))
                                 _%$e130685%_)
                                '#!void))))))
              (if (pair? _%g130657130669%_)
                  (let ((_%hd130662130693%_ (##car _%g130657130669%_))
                        (_%tl130663130695%_ (##cdr _%g130657130669%_)))
                    (let ((_%sys-cpu130698%_ _%hd130662130693%_))
                      (if (pair? _%tl130663130695%_)
                          (let ((_%hd130664130700%_ (##car _%tl130663130695%_))
                                (_%tl130665130702%_
                                 (##cdr _%tl130663130695%_)))
                            (let ((_%sys-vendor130705%_ _%hd130664130700%_))
                              (if (pair? _%tl130665130702%_)
                                  (let ((_%hd130666130707%_
                                         (##car _%tl130665130702%_))
                                        (_%tl130667130709%_
                                         (##cdr _%tl130665130702%_)))
                                    (let ((_%sys-type130712%_
                                           _%hd130666130707%_))
                                      (if (null? _%tl130667130709%_)
                                          (_%K130661130690%_
                                           _%sys-type130712%_
                                           _%sys-vendor130705%_
                                           _%sys-cpu130698%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self130645%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
