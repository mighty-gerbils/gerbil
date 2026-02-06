(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1770405374)
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
      (lambda (_%self184871%_ _%bind?184872%_)
        (let ((_%self184875%_ _%self184871%_))
          (if (##fx< '2 (##structure-length _%self184875%_))
              (begin
                (##unchecked-structure-set! _%self184875%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self184875%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self184875%_
                     '2
                     (##structure-length _%self184875%_)))
          (if _%bind?184872%_
              (begin
                (let ((__method184939
                       (__method-ref
                        _%self184875%_
                        'bind-core-syntax-expanders!)))
                  (if __method184939
                      (__method184939 _%self184875%_)
                      (begin
                        (error '"Missing method"
                               _%self184875%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method184940
                       (__method-ref
                        _%self184875%_
                        'bind-core-macro-expanders!)))
                  (if __method184940
                      (__method184940 _%self184875%_)
                      (begin
                        (error '"Missing method"
                               _%self184875%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method184941
                       (__method-ref _%self184875%_ 'bind-core-features!)))
                  (if __method184941
                      (__method184941 _%self184875%_)
                      (begin
                        (error '"Missing method"
                               _%self184875%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self184889%_)
        (let ((_%bind?184891%_ '#t))
          (gx#root-context:::init!__% _%self184889%_ _%bind?184891%_))))
    (define gx#root-context:::init!
      (lambda _g184945_
        (let ((_g184946_ (##length _g184945_)))
          (cond ((##fx= _g184946_ 1)
                 (apply gx#root-context:::init!__0 _g184945_))
                ((##fx= _g184946_ 2)
                 (apply gx#root-context:::init!__% _g184945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g184945_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass184895 __method-table184896)
        (let ((__bind-core-macro-expanders!184897
               (__make-promise
                (lambda ()
                  (let ((__method184900
                         (symbolic-table-ref
                          __method-table184896
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method184900
                        __method184900
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!184898
               (__make-promise
                (lambda ()
                  (let ((__method184901
                         (symbolic-table-ref
                          __method-table184896
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method184901
                        __method184901
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!184899
               (__make-promise
                (lambda ()
                  (let ((__method184902
                         (symbolic-table-ref
                          __method-table184896
                          'bind-core-features!
                          '#f)))
                    (if __method184902
                        __method184902
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda184869184886%_
                 (lambda (_%self184871%_ _%bind?184872%_)
                   (let ((_%self184875%_ _%self184871%_))
                     (if (##fx< '2 (##structure-length _%self184875%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self184875%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self184875%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self184875%_
                                '2
                                (##structure-length _%self184875%_)))
                     (if _%bind?184872%_
                         (begin
                           ((force __bind-core-syntax-expanders!184898)
                            _%self184875%_)
                           ((force __bind-core-macro-expanders!184897)
                            _%self184875%_)
                           ((force __bind-core-features!184899)
                            _%self184875%_))
                         '#!void)))))
            (lambda _g184947_
              (let ((_g184948_ (##length _g184947_)))
                (cond ((##fx= _g184948_ 1)
                       (apply (lambda (_%self184889%_)
                                (let ((_%bind?184891%_ '#t))
                                  (_%opt-lambda184869184886%_
                                   _%self184889%_
                                   _%bind?184891%_)))
                              _g184947_))
                      ((##fx= _g184948_ 2)
                       (apply _%opt-lambda184869184886%_ _g184947_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g184947_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self184716%_ _%super184717%_)
        (let* ((_%self184720%_ _%self184716%_)
               (_%super184736%_
                (let ((_%$e184730%_ _%super184717%_))
                  (if _%$e184730%_
                      _%$e184730%_
                      (let ((_%$e184733%_ (gx#core-context-root__0)))
                        (if _%$e184733%_
                            _%$e184733%_
                            (let ((__obj184942
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj184942)
                              __obj184942)))))))
          (if (##fx< '5 (##structure-length _%self184720%_))
              (begin
                (##unchecked-structure-set! _%self184720%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self184720%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self184720%_
                 _%super184736%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self184720%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self184720%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self184720%_
                     '5
                     (##structure-length _%self184720%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self184741%_)
        (let ((_%super184743%_ '#f))
          (gx#top-context:::init!__% _%self184741%_ _%super184743%_))))
    (define gx#top-context:::init!
      (lambda _g184949_
        (let ((_g184950_ (##length _g184949_)))
          (cond ((##fx= _g184950_ 1)
                 (apply gx#top-context:::init!__0 _g184949_))
                ((##fx= _g184950_ 2)
                 (apply gx#top-context:::init!__% _g184949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g184949_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self184437%_ _%bindings184438%_)
        (let ((_%self184441%_ _%self184437%_))
          (for-each
           (lambda (_%bind184451%_)
             (let* ((_%bind184452184459%_ _%bind184451%_)
                    (_%E184454184462%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind184452184459%_
                              '([id . rest]))
                       '#!void))
                    (_%K184455184571%_
                     (lambda (_%rest184465%_ _%id184466%_)
                       (gx#core-context-put!
                        _%self184441%_
                        _%id184466%_
                        (let ((__obj184943
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj184943
                           _%id184466%_
                           _%id184466%_
                           '#f
                           (let* ((_%rest184467184478%_ _%rest184465%_)
                                  (_%E184469184482%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest184467184478%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K184470184547%_
                                   (lambda (_%compiler184485%_
                                            _%expander184486%_
                                            _%key184487%_)
                                     ((let* ((_%key184488184501%_
                                              _%key184487%_)
                                             (_%E184494184505%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key184488184501%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K184499184541%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K184498184534%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K184497184526%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K184496184518%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K184495184510%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match184493184513%_
                                                  (lambda ()
                                                    (if (##eq? _%key184488184501%_
                                                               'expr:)
                                                        (_%K184495184510%_)
                                                        (_%E184494184505%_))))
                                                 (_%try-match184492184521%_
                                                  (lambda ()
                                                    (if (##eq? _%key184488184501%_
                                                               'special:)
                                                        (_%K184496184518%_)
                                                        (_%try-match184493184513%_))))
                                                 (_%try-match184491184529%_
                                                  (lambda ()
                                                    (if (##eq? _%key184488184501%_
                                                               'define:)
                                                        (_%K184497184526%_)
                                                        (_%try-match184492184521%_))))
                                                 (_%try-match184490184537%_
                                                  (lambda ()
                                                    (if (##eq? _%key184488184501%_
                                                               'module:)
                                                        (_%K184498184534%_)
                                                        (_%try-match184491184529%_)))))
                                            (if (##eq? _%key184488184501%_
                                                       'top:)
                                                (_%K184499184541%_)
                                                (_%try-match184490184537%_)))))
                                      _%expander184486%_
                                      _%id184466%_
                                      (let ((_%$e184544%_ _%compiler184485%_))
                                        (if _%$e184544%_
                                            _%$e184544%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest184467184478%_)
                                 (let ((_%hd184471184550%_
                                        (##car _%rest184467184478%_))
                                       (_%tl184472184552%_
                                        (##cdr _%rest184467184478%_)))
                                   (let ((_%key184555%_ _%hd184471184550%_))
                                     (if (pair? _%tl184472184552%_)
                                         (let ((_%hd184473184557%_
                                                (##car _%tl184472184552%_))
                                               (_%tl184474184559%_
                                                (##cdr _%tl184472184552%_)))
                                           (let ((_%expander184562%_
                                                  _%hd184473184557%_))
                                             (if (pair? _%tl184474184559%_)
                                                 (let ((_%hd184475184564%_
                                                        (##car _%tl184474184559%_))
                                                       (_%tl184476184566%_
                                                        (##cdr _%tl184474184559%_)))
                                                   (let ((_%compiler184569%_
                                                          _%hd184475184564%_))
                                                     (if (null? _%tl184476184566%_)
                                                         (_%K184470184547%_
                                                          _%compiler184569%_
                                                          _%expander184562%_
                                                          _%key184555%_)
                                                         (_%E184469184482%_))))
                                                 (_%E184469184482%_))))
                                         (_%E184469184482%_))))
                                 (_%E184469184482%_))))
                          __obj184943)))))
               (if (pair? _%bind184452184459%_)
                   (let ((_%hd184456184574%_ (##car _%bind184452184459%_))
                         (_%tl184457184576%_ (##cdr _%bind184452184459%_)))
                     (let* ((_%id184579%_ _%hd184456184574%_)
                            (_%rest184581%_ _%tl184457184576%_))
                       (_%K184455184571%_ _%rest184581%_ _%id184579%_)))
                   (_%E184454184462%_))))
           _%bindings184438%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self184586%_)
        (let ((_%bindings184588%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self184586%_
           _%bindings184588%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g184951_
        (let ((_g184952_ (##length _g184951_)))
          (cond ((##fx= _g184952_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g184951_))
                ((##fx= _g184952_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g184951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g184951_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self184199%_ _%bindings184200%_)
        (let ((_%self184203%_ _%self184199%_))
          (for-each
           (lambda (_%bind184213%_)
             (let* ((_%bind184214184221%_ _%bind184213%_)
                    (_%E184216184224%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind184214184221%_
                              '([id . rest]))
                       '#!void))
                    (_%K184217184292%_
                     (lambda (_%rest184227%_ _%id184228%_)
                       (gx#core-context-put!
                        _%self184203%_
                        _%id184228%_
                        (let ((__obj184944
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj184944
                           _%id184228%_
                           _%id184228%_
                           '#f
                           (let* ((_%rest184229184244%_ _%rest184227%_)
                                  (_%E184233184248%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest184229184244%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K184238184277%_
                                    (lambda (_%core-id184275%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id184275%_)))
                                   (_%K184235184262%_
                                    (lambda (_%proc184260%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc184260%_)))
                                   (_%K184234184253%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id184228%_))))
                               (let ((_%try-match184232184256%_
                                      (lambda ()
                                        (if (null? _%rest184229184244%_)
                                            (_%K184234184253%_)
                                            (_%E184233184248%_)))))
                                 (if (pair? _%rest184229184244%_)
                                     (let ((_%tl184240184282%_
                                            (##cdr _%rest184229184244%_))
                                           (_%hd184239184280%_
                                            (##car _%rest184229184244%_)))
                                       (if (##eq? _%hd184239184280%_ '=>)
                                           (if (pair? _%tl184240184282%_)
                                               (let ((_%tl184242184287%_
                                                      (##cdr _%tl184240184282%_))
                                                     (_%hd184241184285%_
                                                      (##car _%tl184240184282%_)))
                                                 (if (null? _%tl184242184287%_)
                                                     (let ((_%core-id184290%_
                                                            _%hd184241184285%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id184290%_))
                                                     (_%E184233184248%_)))
                                               (if (null? _%tl184240184282%_)
                                                   (let ((_%proc184270%_
                                                          _%hd184239184280%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc184270%_))
                                                   (_%E184233184248%_)))
                                           (if (null? _%tl184240184282%_)
                                               (let ((_%proc184270%_
                                                      _%hd184239184280%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc184270%_))
                                               (_%E184233184248%_))))
                                     (_%try-match184232184256%_))))))
                          __obj184944)))))
               (if (pair? _%bind184214184221%_)
                   (let ((_%hd184218184295%_ (##car _%bind184214184221%_))
                         (_%tl184219184297%_ (##cdr _%bind184214184221%_)))
                     (let* ((_%id184300%_ _%hd184218184295%_)
                            (_%rest184302%_ _%tl184219184297%_))
                       (_%K184217184292%_ _%rest184302%_ _%id184300%_)))
                   (_%E184216184224%_))))
           _%bindings184200%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self184307%_)
        (let ((_%bindings184309%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self184307%_
           _%bindings184309%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g184953_
        (let ((_g184954_ (##length _g184953_)))
          (cond ((##fx= _g184954_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g184953_))
                ((##fx= _g184954_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g184953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g184953_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self183930%_)
        (let ((_%self183933%_ _%self183930%_))
          (letrec ((_%linux-variant?183944%_
                    (lambda (_%sys-type184044%_)
                      (let* ((_%g184045184053%_
                              (__string-split
                               (symbol->string _%sys-type184044%_)
                               '#\-))
                             (_%else184047184061%_ (lambda () '#f))
                             (_%K184049184066%_
                              (lambda (_%rest184064%_)
                                (not (null? _%rest184064%_)))))
                        (if (pair? _%g184045184053%_)
                            (let ((_%hd184050184069%_
                                   (##car _%g184045184053%_))
                                  (_%tl184051184071%_
                                   (##cdr _%g184045184053%_)))
                              (if (equal? _%hd184050184069%_ '"linux")
                                  (let ((_%rest184074%_ _%tl184051184071%_))
                                    (_%K184049184066%_ _%rest184074%_))
                                  (_%else184047184061%_)))
                            (_%else184047184061%_)))))
                   (_%bsd-variant183945%_
                    (lambda (_%sys-type184003%_)
                      (let ((_%sys-type-str184005%_
                             (symbol->string _%sys-type184003%_)))
                        (let _%lp184007%_ ((_%rest184009%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest184010184018%_ _%rest184009%_)
                                 (_%else184012184026%_ (lambda () '#f))
                                 (_%K184014184032%_
                                  (lambda (_%rest184029%_ _%sys184030%_)
                                    (if (string-prefix?
                                         _%sys184030%_
                                         _%sys-type-str184005%_)
                                        _%sys184030%_
                                        (_%lp184007%_ _%rest184029%_)))))
                            (if (pair? _%rest184010184018%_)
                                (let ((_%hd184015184035%_
                                       (##car _%rest184010184018%_))
                                      (_%tl184016184037%_
                                       (##cdr _%rest184010184018%_)))
                                  (let* ((_%sys184040%_ _%hd184015184035%_)
                                         (_%rest184042%_ _%tl184016184037%_))
                                    (_%K184014184032%_
                                     _%rest184042%_
                                     _%sys184040%_)))
                                (_%else184012184026%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self183933%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self183933%_)
            (let* ((_%g183946183958%_ (system-type))
                   (_%else183948183966%_ (lambda () '#!void))
                   (_%K183950183979%_
                    (lambda (_%sys-type183969%_
                             _%sys-vendor183970%_
                             _%sys-cpu183971%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu183971%_
                       '#f
                       '0
                       _%self183933%_)
                      (gx#core-bind-feature!__%
                       _%sys-type183969%_
                       '#f
                       '0
                       _%self183933%_)
                      (if (_%linux-variant?183944%_ _%sys-type183969%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self183933%_)
                          (let ((_%$e183974%_
                                 (_%bsd-variant183945%_ _%sys-type183969%_)))
                            (if _%$e183974%_
                                ((lambda (_%sys-prefix183977%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self183933%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix183977%_)
                                    '#f
                                    '0
                                    _%self183933%_))
                                 _%$e183974%_)
                                '#!void))))))
              (if (pair? _%g183946183958%_)
                  (let ((_%hd183951183982%_ (##car _%g183946183958%_))
                        (_%tl183952183984%_ (##cdr _%g183946183958%_)))
                    (let ((_%sys-cpu183987%_ _%hd183951183982%_))
                      (if (pair? _%tl183952183984%_)
                          (let ((_%hd183953183989%_ (##car _%tl183952183984%_))
                                (_%tl183954183991%_
                                 (##cdr _%tl183952183984%_)))
                            (let ((_%sys-vendor183994%_ _%hd183953183989%_))
                              (if (pair? _%tl183954183991%_)
                                  (let ((_%hd183955183996%_
                                         (##car _%tl183954183991%_))
                                        (_%tl183956183998%_
                                         (##cdr _%tl183954183991%_)))
                                    (let ((_%sys-type184001%_
                                           _%hd183955183996%_))
                                      (if (null? _%tl183956183998%_)
                                          (_%K183950183979%_
                                           _%sys-type184001%_
                                           _%sys-vendor183994%_
                                           _%sys-cpu183987%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self183933%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
