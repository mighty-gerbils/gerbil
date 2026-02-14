(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1771036676)
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
      (lambda (_%self370756%_ _%bind?370757%_)
        (let ((_%self370760%_ _%self370756%_))
          (if (##fx< '2 (##structure-length _%self370760%_))
              (begin
                (##unchecked-structure-set! _%self370760%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self370760%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self370760%_
                     '2
                     (##structure-length _%self370760%_)))
          (if _%bind?370757%_
              (begin
                (let ((__method370824
                       (__method-ref
                        _%self370760%_
                        'bind-core-syntax-expanders!)))
                  (if __method370824
                      (__method370824 _%self370760%_)
                      (begin
                        (error '"Missing method"
                               _%self370760%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method370825
                       (__method-ref
                        _%self370760%_
                        'bind-core-macro-expanders!)))
                  (if __method370825
                      (__method370825 _%self370760%_)
                      (begin
                        (error '"Missing method"
                               _%self370760%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method370826
                       (__method-ref _%self370760%_ 'bind-core-features!)))
                  (if __method370826
                      (__method370826 _%self370760%_)
                      (begin
                        (error '"Missing method"
                               _%self370760%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self370774%_)
        (let ((_%bind?370776%_ '#t))
          (gx#root-context:::init!__% _%self370774%_ _%bind?370776%_))))
    (define gx#root-context:::init!
      (lambda _g370830_
        (let ((_g370831_ (##length _g370830_)))
          (cond ((##fx= _g370831_ 1)
                 (apply gx#root-context:::init!__0 _g370830_))
                ((##fx= _g370831_ 2)
                 (apply gx#root-context:::init!__% _g370830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g370830_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass370780 __method-table370781)
        (let ((__bind-core-macro-expanders!370782
               (__make-promise
                (lambda ()
                  (let ((__method370785
                         (symbolic-table-ref
                          __method-table370781
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method370785
                        __method370785
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!370783
               (__make-promise
                (lambda ()
                  (let ((__method370786
                         (symbolic-table-ref
                          __method-table370781
                          'bind-core-features!
                          '#f)))
                    (if __method370786
                        __method370786
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!370784
               (__make-promise
                (lambda ()
                  (let ((__method370787
                         (symbolic-table-ref
                          __method-table370781
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method370787
                        __method370787
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_%opt-lambda370754370771%_
                 (lambda (_%self370756%_ _%bind?370757%_)
                   (let ((_%self370760%_ _%self370756%_))
                     (if (##fx< '2 (##structure-length _%self370760%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self370760%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self370760%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self370760%_
                                '2
                                (##structure-length _%self370760%_)))
                     (if _%bind?370757%_
                         (begin
                           ((force __bind-core-syntax-expanders!370784)
                            _%self370760%_)
                           ((force __bind-core-macro-expanders!370782)
                            _%self370760%_)
                           ((force __bind-core-features!370783)
                            _%self370760%_))
                         '#!void)))))
            (lambda _g370832_
              (let ((_g370833_ (##length _g370832_)))
                (cond ((##fx= _g370833_ 1)
                       (apply (lambda (_%self370774%_)
                                (let ((_%bind?370776%_ '#t))
                                  (_%opt-lambda370754370771%_
                                   _%self370774%_
                                   _%bind?370776%_)))
                              _g370832_))
                      ((##fx= _g370833_ 2)
                       (apply _%opt-lambda370754370771%_ _g370832_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g370832_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self370601%_ _%super370602%_)
        (let* ((_%self370605%_ _%self370601%_)
               (_%super370621%_
                (let ((_%$e370615%_ _%super370602%_))
                  (if _%$e370615%_
                      _%$e370615%_
                      (let ((_%$e370618%_ (gx#core-context-root__0)))
                        (if _%$e370618%_
                            _%$e370618%_
                            (let ((__obj370827
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj370827)
                              __obj370827)))))))
          (if (##fx< '5 (##structure-length _%self370605%_))
              (begin
                (##unchecked-structure-set! _%self370605%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self370605%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self370605%_
                 _%super370621%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self370605%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self370605%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self370605%_
                     '5
                     (##structure-length _%self370605%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self370626%_)
        (let ((_%super370628%_ '#f))
          (gx#top-context:::init!__% _%self370626%_ _%super370628%_))))
    (define gx#top-context:::init!
      (lambda _g370834_
        (let ((_g370835_ (##length _g370834_)))
          (cond ((##fx= _g370835_ 1)
                 (apply gx#top-context:::init!__0 _g370834_))
                ((##fx= _g370835_ 2)
                 (apply gx#top-context:::init!__% _g370834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g370834_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self370322%_ _%bindings370323%_)
        (let ((_%self370326%_ _%self370322%_))
          (for-each
           (lambda (_%bind370336%_)
             (let* ((_%bind370337370344%_ _%bind370336%_)
                    (_%E370339370347%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind370337370344%_
                              '([id . rest]))
                       '#!void))
                    (_%K370340370456%_
                     (lambda (_%rest370350%_ _%id370351%_)
                       (gx#core-context-put!
                        _%self370326%_
                        _%id370351%_
                        (let ((__obj370828
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj370828
                           _%id370351%_
                           _%id370351%_
                           '#f
                           (let* ((_%rest370352370363%_ _%rest370350%_)
                                  (_%E370354370367%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest370352370363%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K370355370432%_
                                   (lambda (_%compiler370370%_
                                            _%expander370371%_
                                            _%key370372%_)
                                     ((let* ((_%key370373370386%_
                                              _%key370372%_)
                                             (_%E370379370390%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key370373370386%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K370384370426%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K370383370419%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K370382370411%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K370381370403%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K370380370395%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match370378370398%_
                                                  (lambda ()
                                                    (if (##eq? _%key370373370386%_
                                                               'expr:)
                                                        (_%K370380370395%_)
                                                        (_%E370379370390%_))))
                                                 (_%try-match370377370406%_
                                                  (lambda ()
                                                    (if (##eq? _%key370373370386%_
                                                               'special:)
                                                        (_%K370381370403%_)
                                                        (_%try-match370378370398%_))))
                                                 (_%try-match370376370414%_
                                                  (lambda ()
                                                    (if (##eq? _%key370373370386%_
                                                               'define:)
                                                        (_%K370382370411%_)
                                                        (_%try-match370377370406%_))))
                                                 (_%try-match370375370422%_
                                                  (lambda ()
                                                    (if (##eq? _%key370373370386%_
                                                               'module:)
                                                        (_%K370383370419%_)
                                                        (_%try-match370376370414%_)))))
                                            (if (##eq? _%key370373370386%_
                                                       'top:)
                                                (_%K370384370426%_)
                                                (_%try-match370375370422%_)))))
                                      _%expander370371%_
                                      _%id370351%_
                                      (let ((_%$e370429%_ _%compiler370370%_))
                                        (if _%$e370429%_
                                            _%$e370429%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest370352370363%_)
                                 (let ((_%hd370356370435%_
                                        (##car _%rest370352370363%_))
                                       (_%tl370357370437%_
                                        (##cdr _%rest370352370363%_)))
                                   (let ((_%key370440%_ _%hd370356370435%_))
                                     (if (pair? _%tl370357370437%_)
                                         (let ((_%hd370358370442%_
                                                (##car _%tl370357370437%_))
                                               (_%tl370359370444%_
                                                (##cdr _%tl370357370437%_)))
                                           (let ((_%expander370447%_
                                                  _%hd370358370442%_))
                                             (if (pair? _%tl370359370444%_)
                                                 (let ((_%hd370360370449%_
                                                        (##car _%tl370359370444%_))
                                                       (_%tl370361370451%_
                                                        (##cdr _%tl370359370444%_)))
                                                   (let ((_%compiler370454%_
                                                          _%hd370360370449%_))
                                                     (if (null? _%tl370361370451%_)
                                                         (_%K370355370432%_
                                                          _%compiler370454%_
                                                          _%expander370447%_
                                                          _%key370440%_)
                                                         (_%E370354370367%_))))
                                                 (_%E370354370367%_))))
                                         (_%E370354370367%_))))
                                 (_%E370354370367%_))))
                          __obj370828)))))
               (if (pair? _%bind370337370344%_)
                   (let ((_%hd370341370459%_ (##car _%bind370337370344%_))
                         (_%tl370342370461%_ (##cdr _%bind370337370344%_)))
                     (let* ((_%id370464%_ _%hd370341370459%_)
                            (_%rest370466%_ _%tl370342370461%_))
                       (_%K370340370456%_ _%rest370466%_ _%id370464%_)))
                   (_%E370339370347%_))))
           _%bindings370323%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self370471%_)
        (let ((_%bindings370473%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self370471%_
           _%bindings370473%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g370836_
        (let ((_g370837_ (##length _g370836_)))
          (cond ((##fx= _g370837_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g370836_))
                ((##fx= _g370837_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g370836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g370836_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self370084%_ _%bindings370085%_)
        (let ((_%self370088%_ _%self370084%_))
          (for-each
           (lambda (_%bind370098%_)
             (let* ((_%bind370099370106%_ _%bind370098%_)
                    (_%E370101370109%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind370099370106%_
                              '([id . rest]))
                       '#!void))
                    (_%K370102370177%_
                     (lambda (_%rest370112%_ _%id370113%_)
                       (gx#core-context-put!
                        _%self370088%_
                        _%id370113%_
                        (let ((__obj370829
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj370829
                           _%id370113%_
                           _%id370113%_
                           '#f
                           (let* ((_%rest370114370129%_ _%rest370112%_)
                                  (_%E370118370133%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest370114370129%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K370123370162%_
                                    (lambda (_%core-id370160%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id370160%_)))
                                   (_%K370120370147%_
                                    (lambda (_%proc370145%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc370145%_)))
                                   (_%K370119370138%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id370113%_))))
                               (let ((_%try-match370117370141%_
                                      (lambda ()
                                        (if (null? _%rest370114370129%_)
                                            (_%K370119370138%_)
                                            (_%E370118370133%_)))))
                                 (if (pair? _%rest370114370129%_)
                                     (let ((_%tl370125370167%_
                                            (##cdr _%rest370114370129%_))
                                           (_%hd370124370165%_
                                            (##car _%rest370114370129%_)))
                                       (if (##eq? _%hd370124370165%_ '=>)
                                           (if (pair? _%tl370125370167%_)
                                               (let ((_%tl370127370172%_
                                                      (##cdr _%tl370125370167%_))
                                                     (_%hd370126370170%_
                                                      (##car _%tl370125370167%_)))
                                                 (if (null? _%tl370127370172%_)
                                                     (let ((_%core-id370175%_
                                                            _%hd370126370170%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id370175%_))
                                                     (_%E370118370133%_)))
                                               (if (null? _%tl370125370167%_)
                                                   (let ((_%proc370155%_
                                                          _%hd370124370165%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc370155%_))
                                                   (_%E370118370133%_)))
                                           (if (null? _%tl370125370167%_)
                                               (let ((_%proc370155%_
                                                      _%hd370124370165%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc370155%_))
                                               (_%E370118370133%_))))
                                     (_%try-match370117370141%_))))))
                          __obj370829)))))
               (if (pair? _%bind370099370106%_)
                   (let ((_%hd370103370180%_ (##car _%bind370099370106%_))
                         (_%tl370104370182%_ (##cdr _%bind370099370106%_)))
                     (let* ((_%id370185%_ _%hd370103370180%_)
                            (_%rest370187%_ _%tl370104370182%_))
                       (_%K370102370177%_ _%rest370187%_ _%id370185%_)))
                   (_%E370101370109%_))))
           _%bindings370085%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self370192%_)
        (let ((_%bindings370194%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self370192%_
           _%bindings370194%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g370838_
        (let ((_g370839_ (##length _g370838_)))
          (cond ((##fx= _g370839_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g370838_))
                ((##fx= _g370839_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g370838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g370838_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self369815%_)
        (let ((_%self369818%_ _%self369815%_))
          (letrec ((_%linux-variant?369829%_
                    (lambda (_%sys-type369929%_)
                      (let* ((_%g369930369938%_
                              (__string-split
                               (symbol->string _%sys-type369929%_)
                               '#\-))
                             (_%else369932369946%_ (lambda () '#f))
                             (_%K369934369951%_
                              (lambda (_%rest369949%_)
                                (not (null? _%rest369949%_)))))
                        (if (pair? _%g369930369938%_)
                            (let ((_%hd369935369954%_
                                   (##car _%g369930369938%_))
                                  (_%tl369936369956%_
                                   (##cdr _%g369930369938%_)))
                              (if (equal? _%hd369935369954%_ '"linux")
                                  (let ((_%rest369959%_ _%tl369936369956%_))
                                    (_%K369934369951%_ _%rest369959%_))
                                  (_%else369932369946%_)))
                            (_%else369932369946%_)))))
                   (_%bsd-variant369830%_
                    (lambda (_%sys-type369888%_)
                      (let ((_%sys-type-str369890%_
                             (symbol->string _%sys-type369888%_)))
                        (let _%lp369892%_ ((_%rest369894%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest369895369903%_ _%rest369894%_)
                                 (_%else369897369911%_ (lambda () '#f))
                                 (_%K369899369917%_
                                  (lambda (_%rest369914%_ _%sys369915%_)
                                    (if (string-prefix?
                                         _%sys369915%_
                                         _%sys-type-str369890%_)
                                        _%sys369915%_
                                        (_%lp369892%_ _%rest369914%_)))))
                            (if (pair? _%rest369895369903%_)
                                (let ((_%hd369900369920%_
                                       (##car _%rest369895369903%_))
                                      (_%tl369901369922%_
                                       (##cdr _%rest369895369903%_)))
                                  (let* ((_%sys369925%_ _%hd369900369920%_)
                                         (_%rest369927%_ _%tl369901369922%_))
                                    (_%K369899369917%_
                                     _%rest369927%_
                                     _%sys369925%_)))
                                (_%else369897369911%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self369818%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self369818%_)
            (let* ((_%g369831369843%_ (system-type))
                   (_%else369833369851%_ (lambda () '#!void))
                   (_%K369835369864%_
                    (lambda (_%sys-type369854%_
                             _%sys-vendor369855%_
                             _%sys-cpu369856%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu369856%_
                       '#f
                       '0
                       _%self369818%_)
                      (gx#core-bind-feature!__%
                       _%sys-type369854%_
                       '#f
                       '0
                       _%self369818%_)
                      (if (_%linux-variant?369829%_ _%sys-type369854%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self369818%_)
                          (let ((_%$e369859%_
                                 (_%bsd-variant369830%_ _%sys-type369854%_)))
                            (if _%$e369859%_
                                ((lambda (_%sys-prefix369862%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self369818%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix369862%_)
                                    '#f
                                    '0
                                    _%self369818%_))
                                 _%$e369859%_)
                                '#!void))))))
              (if (pair? _%g369831369843%_)
                  (let ((_%hd369836369867%_ (##car _%g369831369843%_))
                        (_%tl369837369869%_ (##cdr _%g369831369843%_)))
                    (let ((_%sys-cpu369872%_ _%hd369836369867%_))
                      (if (pair? _%tl369837369869%_)
                          (let ((_%hd369838369874%_ (##car _%tl369837369869%_))
                                (_%tl369839369876%_
                                 (##cdr _%tl369837369869%_)))
                            (let ((_%sys-vendor369879%_ _%hd369838369874%_))
                              (if (pair? _%tl369839369876%_)
                                  (let ((_%hd369840369881%_
                                         (##car _%tl369839369876%_))
                                        (_%tl369841369883%_
                                         (##cdr _%tl369839369876%_)))
                                    (let ((_%sys-type369886%_
                                           _%hd369840369881%_))
                                      (if (null? _%tl369841369883%_)
                                          (_%K369835369864%_
                                           _%sys-type369886%_
                                           _%sys-vendor369879%_
                                           _%sys-cpu369872%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self369818%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
