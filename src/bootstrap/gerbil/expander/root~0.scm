(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1769382895)
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
      (lambda (_%self143655%_ _%bind?143656%_)
        (let ((_%self143659%_ _%self143655%_))
          (if (##fx< '2 (##structure-length _%self143659%_))
              (begin
                (##unchecked-structure-set! _%self143659%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self143659%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self143659%_
                     '2
                     (##structure-length _%self143659%_)))
          (if _%bind?143656%_
              (begin
                (let ((__method143723
                       (__method-ref
                        _%self143659%_
                        'bind-core-syntax-expanders!)))
                  (if __method143723
                      (__method143723 _%self143659%_)
                      (begin
                        (error '"Missing method"
                               _%self143659%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method143724
                       (__method-ref
                        _%self143659%_
                        'bind-core-macro-expanders!)))
                  (if __method143724
                      (__method143724 _%self143659%_)
                      (begin
                        (error '"Missing method"
                               _%self143659%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method143725
                       (__method-ref _%self143659%_ 'bind-core-features!)))
                  (if __method143725
                      (__method143725 _%self143659%_)
                      (begin
                        (error '"Missing method"
                               _%self143659%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self143673%_)
        (let ((_%bind?143675%_ '#t))
          (gx#root-context:::init!__% _%self143673%_ _%bind?143675%_))))
    (define gx#root-context:::init!
      (lambda _g143727_
        (let ((_g143728_ (##length _g143727_)))
          (cond ((##fx= _g143728_ 1)
                 (apply gx#root-context:::init!__0 _g143727_))
                ((##fx= _g143728_ 2)
                 (apply gx#root-context:::init!__% _g143727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g143727_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass143679 __method-table143680)
        (let ((__bind-core-syntax-expanders!143681
               (__make-promise
                (lambda ()
                  (let ((__method143684
                         (symbolic-table-ref
                          __method-table143680
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method143684
                        __method143684
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!143682
               (__make-promise
                (lambda ()
                  (let ((__method143685
                         (symbolic-table-ref
                          __method-table143680
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method143685
                        __method143685
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!143683
               (__make-promise
                (lambda ()
                  (let ((__method143686
                         (symbolic-table-ref
                          __method-table143680
                          'bind-core-features!
                          '#f)))
                    (if __method143686
                        __method143686
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda143653143670%_
                 (lambda (_%self143655%_ _%bind?143656%_)
                   (let ((_%self143659%_ _%self143655%_))
                     (if (##fx< '2 (##structure-length _%self143659%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self143659%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self143659%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self143659%_
                                '2
                                (##structure-length _%self143659%_)))
                     (if _%bind?143656%_
                         (begin
                           ((force __bind-core-syntax-expanders!143681)
                            _%self143659%_)
                           ((force __bind-core-macro-expanders!143682)
                            _%self143659%_)
                           ((force __bind-core-features!143683)
                            _%self143659%_))
                         '#!void)))))
            (lambda _g143729_
              (let ((_g143730_ (##length _g143729_)))
                (cond ((##fx= _g143730_ 1)
                       (apply (lambda (_%self143673%_)
                                (let ((_%bind?143675%_ '#t))
                                  (_%opt-lambda143653143670%_
                                   _%self143673%_
                                   _%bind?143675%_)))
                              _g143729_))
                      ((##fx= _g143730_ 2)
                       (apply _%opt-lambda143653143670%_ _g143729_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g143729_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self143500%_ _%super143501%_)
        (let* ((_%self143504%_ _%self143500%_)
               (_%super143520%_
                (let ((_%$e143514%_ _%super143501%_))
                  (if _%$e143514%_
                      _%$e143514%_
                      (let ((_%$e143517%_ (gx#core-context-root__0)))
                        (if _%$e143517%_
                            _%$e143517%_
                            (let ((__obj143726
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj143726)
                              __obj143726)))))))
          (if (##fx< '5 (##structure-length _%self143504%_))
              (begin
                (##unchecked-structure-set! _%self143504%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self143504%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self143504%_
                 _%super143520%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self143504%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self143504%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self143504%_
                     '5
                     (##structure-length _%self143504%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self143525%_)
        (let ((_%super143527%_ '#f))
          (gx#top-context:::init!__% _%self143525%_ _%super143527%_))))
    (define gx#top-context:::init!
      (lambda _g143731_
        (let ((_g143732_ (##length _g143731_)))
          (cond ((##fx= _g143732_ 1)
                 (apply gx#top-context:::init!__0 _g143731_))
                ((##fx= _g143732_ 2)
                 (apply gx#top-context:::init!__% _g143731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g143731_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self143221%_ _%bindings143222%_)
        (let ((_%self143225%_ _%self143221%_))
          (for-each
           (lambda (_%bind143235%_)
             (let* ((_%bind143236143243%_ _%bind143235%_)
                    (_%E143238143246%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind143236143243%_
                              '([id . rest]))
                       '#!void))
                    (_%K143239143355%_
                     (lambda (_%rest143249%_ _%id143250%_)
                       (gx#core-context-put!
                        _%self143225%_
                        _%id143250%_
                        (##structure
                         gx#syntax-binding::t
                         _%id143250%_
                         _%id143250%_
                         '#f
                         (let* ((_%rest143251143262%_ _%rest143249%_)
                                (_%E143253143266%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest143251143262%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K143254143331%_
                                 (lambda (_%compiler143269%_
                                          _%expander143270%_
                                          _%key143271%_)
                                   ((let* ((_%key143272143285%_ _%key143271%_)
                                           (_%E143278143289%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key143272143285%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K143283143325%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K143282143318%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K143281143310%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K143280143302%_
                                             (lambda () gx#make-special-form))
                                            (_%K143279143294%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match143277143297%_
                                                (lambda ()
                                                  (if (##eq? _%key143272143285%_
                                                             'expr:)
                                                      (_%K143279143294%_)
                                                      (_%E143278143289%_))))
                                               (_%try-match143276143305%_
                                                (lambda ()
                                                  (if (##eq? _%key143272143285%_
                                                             'special:)
                                                      (_%K143280143302%_)
                                                      (_%try-match143277143297%_))))
                                               (_%try-match143275143313%_
                                                (lambda ()
                                                  (if (##eq? _%key143272143285%_
                                                             'define:)
                                                      (_%K143281143310%_)
                                                      (_%try-match143276143305%_))))
                                               (_%try-match143274143321%_
                                                (lambda ()
                                                  (if (##eq? _%key143272143285%_
                                                             'module:)
                                                      (_%K143282143318%_)
                                                      (_%try-match143275143313%_)))))
                                          (if (##eq? _%key143272143285%_ 'top:)
                                              (_%K143283143325%_)
                                              (_%try-match143274143321%_)))))
                                    _%expander143270%_
                                    _%id143250%_
                                    (let ((_%$e143328%_ _%compiler143269%_))
                                      (if _%$e143328%_
                                          _%$e143328%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest143251143262%_)
                               (let ((_%hd143255143334%_
                                      (##car _%rest143251143262%_))
                                     (_%tl143256143336%_
                                      (##cdr _%rest143251143262%_)))
                                 (let ((_%key143339%_ _%hd143255143334%_))
                                   (if (pair? _%tl143256143336%_)
                                       (let ((_%hd143257143341%_
                                              (##car _%tl143256143336%_))
                                             (_%tl143258143343%_
                                              (##cdr _%tl143256143336%_)))
                                         (let ((_%expander143346%_
                                                _%hd143257143341%_))
                                           (if (pair? _%tl143258143343%_)
                                               (let ((_%hd143259143348%_
                                                      (##car _%tl143258143343%_))
                                                     (_%tl143260143350%_
                                                      (##cdr _%tl143258143343%_)))
                                                 (let ((_%compiler143353%_
                                                        _%hd143259143348%_))
                                                   (if (null? _%tl143260143350%_)
                                                       (_%K143254143331%_
                                                        _%compiler143353%_
                                                        _%expander143346%_
                                                        _%key143339%_)
                                                       (_%E143253143266%_))))
                                               (_%E143253143266%_))))
                                       (_%E143253143266%_))))
                               (_%E143253143266%_))))))))
               (if (pair? _%bind143236143243%_)
                   (let ((_%hd143240143358%_ (##car _%bind143236143243%_))
                         (_%tl143241143360%_ (##cdr _%bind143236143243%_)))
                     (let* ((_%id143363%_ _%hd143240143358%_)
                            (_%rest143365%_ _%tl143241143360%_))
                       (_%K143239143355%_ _%rest143365%_ _%id143363%_)))
                   (_%E143238143246%_))))
           _%bindings143222%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self143370%_)
        (let ((_%bindings143372%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self143370%_
           _%bindings143372%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g143733_
        (let ((_g143734_ (##length _g143733_)))
          (cond ((##fx= _g143734_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g143733_))
                ((##fx= _g143734_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g143733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g143733_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self142983%_ _%bindings142984%_)
        (let ((_%self142987%_ _%self142983%_))
          (for-each
           (lambda (_%bind142997%_)
             (let* ((_%bind142998143005%_ _%bind142997%_)
                    (_%E143000143008%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind142998143005%_
                              '([id . rest]))
                       '#!void))
                    (_%K143001143076%_
                     (lambda (_%rest143011%_ _%id143012%_)
                       (gx#core-context-put!
                        _%self142987%_
                        _%id143012%_
                        (##structure
                         gx#syntax-binding::t
                         _%id143012%_
                         _%id143012%_
                         '#f
                         (let* ((_%rest143013143028%_ _%rest143011%_)
                                (_%E143017143032%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest143013143028%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K143022143061%_
                                  (lambda (_%core-id143059%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id143059%_)))
                                 (_%K143019143046%_
                                  (lambda (_%proc143044%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc143044%_)))
                                 (_%K143018143037%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id143012%_))))
                             (let ((_%try-match143016143040%_
                                    (lambda ()
                                      (if (null? _%rest143013143028%_)
                                          (_%K143018143037%_)
                                          (_%E143017143032%_)))))
                               (if (pair? _%rest143013143028%_)
                                   (let ((_%tl143024143066%_
                                          (##cdr _%rest143013143028%_))
                                         (_%hd143023143064%_
                                          (##car _%rest143013143028%_)))
                                     (if (##eq? _%hd143023143064%_ '=>)
                                         (if (pair? _%tl143024143066%_)
                                             (let ((_%tl143026143071%_
                                                    (##cdr _%tl143024143066%_))
                                                   (_%hd143025143069%_
                                                    (##car _%tl143024143066%_)))
                                               (if (null? _%tl143026143071%_)
                                                   (let ((_%core-id143074%_
                                                          _%hd143025143069%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id143074%_))
                                                   (_%E143017143032%_)))
                                             (if (null? _%tl143024143066%_)
                                                 (let ((_%proc143054%_
                                                        _%hd143023143064%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc143054%_))
                                                 (_%E143017143032%_)))
                                         (if (null? _%tl143024143066%_)
                                             (let ((_%proc143054%_
                                                    _%hd143023143064%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc143054%_))
                                             (_%E143017143032%_))))
                                   (_%try-match143016143040%_))))))))))
               (if (pair? _%bind142998143005%_)
                   (let ((_%hd143002143079%_ (##car _%bind142998143005%_))
                         (_%tl143003143081%_ (##cdr _%bind142998143005%_)))
                     (let* ((_%id143084%_ _%hd143002143079%_)
                            (_%rest143086%_ _%tl143003143081%_))
                       (_%K143001143076%_ _%rest143086%_ _%id143084%_)))
                   (_%E143000143008%_))))
           _%bindings142984%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self143091%_)
        (let ((_%bindings143093%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self143091%_
           _%bindings143093%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g143735_
        (let ((_g143736_ (##length _g143735_)))
          (cond ((##fx= _g143736_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g143735_))
                ((##fx= _g143736_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g143735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g143735_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self142714%_)
        (let ((_%self142717%_ _%self142714%_))
          (letrec ((_%linux-variant?142728%_
                    (lambda (_%sys-type142828%_)
                      (let* ((_%g142829142837%_
                              (__string-split
                               (symbol->string _%sys-type142828%_)
                               '#\-))
                             (_%else142831142845%_ (lambda () '#f))
                             (_%K142833142850%_
                              (lambda (_%rest142848%_)
                                (not (null? _%rest142848%_)))))
                        (if (pair? _%g142829142837%_)
                            (let ((_%hd142834142853%_
                                   (##car _%g142829142837%_))
                                  (_%tl142835142855%_
                                   (##cdr _%g142829142837%_)))
                              (if (equal? _%hd142834142853%_ '"linux")
                                  (let ((_%rest142858%_ _%tl142835142855%_))
                                    (_%K142833142850%_ _%rest142858%_))
                                  (_%else142831142845%_)))
                            (_%else142831142845%_)))))
                   (_%bsd-variant142729%_
                    (lambda (_%sys-type142787%_)
                      (let ((_%sys-type-str142789%_
                             (symbol->string _%sys-type142787%_)))
                        (let _%lp142791%_ ((_%rest142793%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest142794142802%_ _%rest142793%_)
                                 (_%else142796142810%_ (lambda () '#f))
                                 (_%K142798142816%_
                                  (lambda (_%rest142813%_ _%sys142814%_)
                                    (if (string-prefix?
                                         _%sys142814%_
                                         _%sys-type-str142789%_)
                                        _%sys142814%_
                                        (_%lp142791%_ _%rest142813%_)))))
                            (if (pair? _%rest142794142802%_)
                                (let ((_%hd142799142819%_
                                       (##car _%rest142794142802%_))
                                      (_%tl142800142821%_
                                       (##cdr _%rest142794142802%_)))
                                  (let* ((_%sys142824%_ _%hd142799142819%_)
                                         (_%rest142826%_ _%tl142800142821%_))
                                    (_%K142798142816%_
                                     _%rest142826%_
                                     _%sys142824%_)))
                                (_%else142796142810%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self142717%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self142717%_)
            (let* ((_%g142730142742%_ (system-type))
                   (_%else142732142750%_ (lambda () '#!void))
                   (_%K142734142763%_
                    (lambda (_%sys-type142753%_
                             _%sys-vendor142754%_
                             _%sys-cpu142755%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu142755%_
                       '#f
                       '0
                       _%self142717%_)
                      (gx#core-bind-feature!__%
                       _%sys-type142753%_
                       '#f
                       '0
                       _%self142717%_)
                      (if (_%linux-variant?142728%_ _%sys-type142753%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self142717%_)
                          (let ((_%$e142758%_
                                 (_%bsd-variant142729%_ _%sys-type142753%_)))
                            (if _%$e142758%_
                                ((lambda (_%sys-prefix142761%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self142717%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix142761%_)
                                    '#f
                                    '0
                                    _%self142717%_))
                                 _%$e142758%_)
                                '#!void))))))
              (if (pair? _%g142730142742%_)
                  (let ((_%hd142735142766%_ (##car _%g142730142742%_))
                        (_%tl142736142768%_ (##cdr _%g142730142742%_)))
                    (let ((_%sys-cpu142771%_ _%hd142735142766%_))
                      (if (pair? _%tl142736142768%_)
                          (let ((_%hd142737142773%_ (##car _%tl142736142768%_))
                                (_%tl142738142775%_
                                 (##cdr _%tl142736142768%_)))
                            (let ((_%sys-vendor142778%_ _%hd142737142773%_))
                              (if (pair? _%tl142738142775%_)
                                  (let ((_%hd142739142780%_
                                         (##car _%tl142738142775%_))
                                        (_%tl142740142782%_
                                         (##cdr _%tl142738142775%_)))
                                    (let ((_%sys-type142785%_
                                           _%hd142739142780%_))
                                      (if (null? _%tl142740142782%_)
                                          (_%K142734142763%_
                                           _%sys-type142785%_
                                           _%sys-vendor142778%_
                                           _%sys-cpu142771%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self142717%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
