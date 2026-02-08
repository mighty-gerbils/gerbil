(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1770513297)
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
      (lambda (_%self184963%_ _%bind?184964%_)
        (let ((_%self184967%_ _%self184963%_))
          (if (##fx< '2 (##structure-length _%self184967%_))
              (begin
                (##unchecked-structure-set! _%self184967%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self184967%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self184967%_
                     '2
                     (##structure-length _%self184967%_)))
          (if _%bind?184964%_
              (begin
                (let ((__method185031
                       (__method-ref
                        _%self184967%_
                        'bind-core-syntax-expanders!)))
                  (if __method185031
                      (__method185031 _%self184967%_)
                      (begin
                        (error '"Missing method"
                               _%self184967%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method185032
                       (__method-ref
                        _%self184967%_
                        'bind-core-macro-expanders!)))
                  (if __method185032
                      (__method185032 _%self184967%_)
                      (begin
                        (error '"Missing method"
                               _%self184967%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method185033
                       (__method-ref _%self184967%_ 'bind-core-features!)))
                  (if __method185033
                      (__method185033 _%self184967%_)
                      (begin
                        (error '"Missing method"
                               _%self184967%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self184981%_)
        (let ((_%bind?184983%_ '#t))
          (gx#root-context:::init!__% _%self184981%_ _%bind?184983%_))))
    (define gx#root-context:::init!
      (lambda _g185037_
        (let ((_g185038_ (##length _g185037_)))
          (cond ((##fx= _g185038_ 1)
                 (apply gx#root-context:::init!__0 _g185037_))
                ((##fx= _g185038_ 2)
                 (apply gx#root-context:::init!__% _g185037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g185037_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass184987 __method-table184988)
        (let ((__bind-core-features!184989
               (__make-promise
                (lambda ()
                  (let ((__method184992
                         (symbolic-table-ref
                          __method-table184988
                          'bind-core-features!
                          '#f)))
                    (if __method184992
                        __method184992
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!184990
               (__make-promise
                (lambda ()
                  (let ((__method184993
                         (symbolic-table-ref
                          __method-table184988
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method184993
                        __method184993
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!184991
               (__make-promise
                (lambda ()
                  (let ((__method184994
                         (symbolic-table-ref
                          __method-table184988
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method184994
                        __method184994
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda184961184978%_
                 (lambda (_%self184963%_ _%bind?184964%_)
                   (let ((_%self184967%_ _%self184963%_))
                     (if (##fx< '2 (##structure-length _%self184967%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self184967%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self184967%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self184967%_
                                '2
                                (##structure-length _%self184967%_)))
                     (if _%bind?184964%_
                         (begin
                           ((force __bind-core-syntax-expanders!184990)
                            _%self184967%_)
                           ((force __bind-core-macro-expanders!184991)
                            _%self184967%_)
                           ((force __bind-core-features!184989)
                            _%self184967%_))
                         '#!void)))))
            (lambda _g185039_
              (let ((_g185040_ (##length _g185039_)))
                (cond ((##fx= _g185040_ 1)
                       (apply (lambda (_%self184981%_)
                                (let ((_%bind?184983%_ '#t))
                                  (_%opt-lambda184961184978%_
                                   _%self184981%_
                                   _%bind?184983%_)))
                              _g185039_))
                      ((##fx= _g185040_ 2)
                       (apply _%opt-lambda184961184978%_ _g185039_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g185039_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self184808%_ _%super184809%_)
        (let* ((_%self184812%_ _%self184808%_)
               (_%super184828%_
                (let ((_%$e184822%_ _%super184809%_))
                  (if _%$e184822%_
                      _%$e184822%_
                      (let ((_%$e184825%_ (gx#core-context-root__0)))
                        (if _%$e184825%_
                            _%$e184825%_
                            (let ((__obj185034
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj185034)
                              __obj185034)))))))
          (if (##fx< '5 (##structure-length _%self184812%_))
              (begin
                (##unchecked-structure-set! _%self184812%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self184812%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self184812%_
                 _%super184828%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self184812%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self184812%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self184812%_
                     '5
                     (##structure-length _%self184812%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self184833%_)
        (let ((_%super184835%_ '#f))
          (gx#top-context:::init!__% _%self184833%_ _%super184835%_))))
    (define gx#top-context:::init!
      (lambda _g185041_
        (let ((_g185042_ (##length _g185041_)))
          (cond ((##fx= _g185042_ 1)
                 (apply gx#top-context:::init!__0 _g185041_))
                ((##fx= _g185042_ 2)
                 (apply gx#top-context:::init!__% _g185041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g185041_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self184529%_ _%bindings184530%_)
        (let ((_%self184533%_ _%self184529%_))
          (for-each
           (lambda (_%bind184543%_)
             (let* ((_%bind184544184551%_ _%bind184543%_)
                    (_%E184546184554%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind184544184551%_
                              '([id . rest]))
                       '#!void))
                    (_%K184547184663%_
                     (lambda (_%rest184557%_ _%id184558%_)
                       (gx#core-context-put!
                        _%self184533%_
                        _%id184558%_
                        (let ((__obj185035
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj185035
                           _%id184558%_
                           _%id184558%_
                           '#f
                           (let* ((_%rest184559184570%_ _%rest184557%_)
                                  (_%E184561184574%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest184559184570%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K184562184639%_
                                   (lambda (_%compiler184577%_
                                            _%expander184578%_
                                            _%key184579%_)
                                     ((let* ((_%key184580184593%_
                                              _%key184579%_)
                                             (_%E184586184597%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key184580184593%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K184591184633%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K184590184626%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K184589184618%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K184588184610%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K184587184602%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match184585184605%_
                                                  (lambda ()
                                                    (if (##eq? _%key184580184593%_
                                                               'expr:)
                                                        (_%K184587184602%_)
                                                        (_%E184586184597%_))))
                                                 (_%try-match184584184613%_
                                                  (lambda ()
                                                    (if (##eq? _%key184580184593%_
                                                               'special:)
                                                        (_%K184588184610%_)
                                                        (_%try-match184585184605%_))))
                                                 (_%try-match184583184621%_
                                                  (lambda ()
                                                    (if (##eq? _%key184580184593%_
                                                               'define:)
                                                        (_%K184589184618%_)
                                                        (_%try-match184584184613%_))))
                                                 (_%try-match184582184629%_
                                                  (lambda ()
                                                    (if (##eq? _%key184580184593%_
                                                               'module:)
                                                        (_%K184590184626%_)
                                                        (_%try-match184583184621%_)))))
                                            (if (##eq? _%key184580184593%_
                                                       'top:)
                                                (_%K184591184633%_)
                                                (_%try-match184582184629%_)))))
                                      _%expander184578%_
                                      _%id184558%_
                                      (let ((_%$e184636%_ _%compiler184577%_))
                                        (if _%$e184636%_
                                            _%$e184636%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest184559184570%_)
                                 (let ((_%hd184563184642%_
                                        (##car _%rest184559184570%_))
                                       (_%tl184564184644%_
                                        (##cdr _%rest184559184570%_)))
                                   (let ((_%key184647%_ _%hd184563184642%_))
                                     (if (pair? _%tl184564184644%_)
                                         (let ((_%hd184565184649%_
                                                (##car _%tl184564184644%_))
                                               (_%tl184566184651%_
                                                (##cdr _%tl184564184644%_)))
                                           (let ((_%expander184654%_
                                                  _%hd184565184649%_))
                                             (if (pair? _%tl184566184651%_)
                                                 (let ((_%hd184567184656%_
                                                        (##car _%tl184566184651%_))
                                                       (_%tl184568184658%_
                                                        (##cdr _%tl184566184651%_)))
                                                   (let ((_%compiler184661%_
                                                          _%hd184567184656%_))
                                                     (if (null? _%tl184568184658%_)
                                                         (_%K184562184639%_
                                                          _%compiler184661%_
                                                          _%expander184654%_
                                                          _%key184647%_)
                                                         (_%E184561184574%_))))
                                                 (_%E184561184574%_))))
                                         (_%E184561184574%_))))
                                 (_%E184561184574%_))))
                          __obj185035)))))
               (if (pair? _%bind184544184551%_)
                   (let ((_%hd184548184666%_ (##car _%bind184544184551%_))
                         (_%tl184549184668%_ (##cdr _%bind184544184551%_)))
                     (let* ((_%id184671%_ _%hd184548184666%_)
                            (_%rest184673%_ _%tl184549184668%_))
                       (_%K184547184663%_ _%rest184673%_ _%id184671%_)))
                   (_%E184546184554%_))))
           _%bindings184530%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self184678%_)
        (let ((_%bindings184680%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self184678%_
           _%bindings184680%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g185043_
        (let ((_g185044_ (##length _g185043_)))
          (cond ((##fx= _g185044_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g185043_))
                ((##fx= _g185044_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g185043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g185043_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self184291%_ _%bindings184292%_)
        (let ((_%self184295%_ _%self184291%_))
          (for-each
           (lambda (_%bind184305%_)
             (let* ((_%bind184306184313%_ _%bind184305%_)
                    (_%E184308184316%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind184306184313%_
                              '([id . rest]))
                       '#!void))
                    (_%K184309184384%_
                     (lambda (_%rest184319%_ _%id184320%_)
                       (gx#core-context-put!
                        _%self184295%_
                        _%id184320%_
                        (let ((__obj185036
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj185036
                           _%id184320%_
                           _%id184320%_
                           '#f
                           (let* ((_%rest184321184336%_ _%rest184319%_)
                                  (_%E184325184340%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest184321184336%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K184330184369%_
                                    (lambda (_%core-id184367%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id184367%_)))
                                   (_%K184327184354%_
                                    (lambda (_%proc184352%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc184352%_)))
                                   (_%K184326184345%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id184320%_))))
                               (let ((_%try-match184324184348%_
                                      (lambda ()
                                        (if (null? _%rest184321184336%_)
                                            (_%K184326184345%_)
                                            (_%E184325184340%_)))))
                                 (if (pair? _%rest184321184336%_)
                                     (let ((_%tl184332184374%_
                                            (##cdr _%rest184321184336%_))
                                           (_%hd184331184372%_
                                            (##car _%rest184321184336%_)))
                                       (if (##eq? _%hd184331184372%_ '=>)
                                           (if (pair? _%tl184332184374%_)
                                               (let ((_%tl184334184379%_
                                                      (##cdr _%tl184332184374%_))
                                                     (_%hd184333184377%_
                                                      (##car _%tl184332184374%_)))
                                                 (if (null? _%tl184334184379%_)
                                                     (let ((_%core-id184382%_
                                                            _%hd184333184377%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id184382%_))
                                                     (_%E184325184340%_)))
                                               (if (null? _%tl184332184374%_)
                                                   (let ((_%proc184362%_
                                                          _%hd184331184372%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc184362%_))
                                                   (_%E184325184340%_)))
                                           (if (null? _%tl184332184374%_)
                                               (let ((_%proc184362%_
                                                      _%hd184331184372%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc184362%_))
                                               (_%E184325184340%_))))
                                     (_%try-match184324184348%_))))))
                          __obj185036)))))
               (if (pair? _%bind184306184313%_)
                   (let ((_%hd184310184387%_ (##car _%bind184306184313%_))
                         (_%tl184311184389%_ (##cdr _%bind184306184313%_)))
                     (let* ((_%id184392%_ _%hd184310184387%_)
                            (_%rest184394%_ _%tl184311184389%_))
                       (_%K184309184384%_ _%rest184394%_ _%id184392%_)))
                   (_%E184308184316%_))))
           _%bindings184292%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self184399%_)
        (let ((_%bindings184401%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self184399%_
           _%bindings184401%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g185045_
        (let ((_g185046_ (##length _g185045_)))
          (cond ((##fx= _g185046_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g185045_))
                ((##fx= _g185046_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g185045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g185045_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self184022%_)
        (let ((_%self184025%_ _%self184022%_))
          (letrec ((_%linux-variant?184036%_
                    (lambda (_%sys-type184136%_)
                      (let* ((_%g184137184145%_
                              (__string-split
                               (symbol->string _%sys-type184136%_)
                               '#\-))
                             (_%else184139184153%_ (lambda () '#f))
                             (_%K184141184158%_
                              (lambda (_%rest184156%_)
                                (not (null? _%rest184156%_)))))
                        (if (pair? _%g184137184145%_)
                            (let ((_%hd184142184161%_
                                   (##car _%g184137184145%_))
                                  (_%tl184143184163%_
                                   (##cdr _%g184137184145%_)))
                              (if (equal? _%hd184142184161%_ '"linux")
                                  (let ((_%rest184166%_ _%tl184143184163%_))
                                    (_%K184141184158%_ _%rest184166%_))
                                  (_%else184139184153%_)))
                            (_%else184139184153%_)))))
                   (_%bsd-variant184037%_
                    (lambda (_%sys-type184095%_)
                      (let ((_%sys-type-str184097%_
                             (symbol->string _%sys-type184095%_)))
                        (let _%lp184099%_ ((_%rest184101%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest184102184110%_ _%rest184101%_)
                                 (_%else184104184118%_ (lambda () '#f))
                                 (_%K184106184124%_
                                  (lambda (_%rest184121%_ _%sys184122%_)
                                    (if (string-prefix?
                                         _%sys184122%_
                                         _%sys-type-str184097%_)
                                        _%sys184122%_
                                        (_%lp184099%_ _%rest184121%_)))))
                            (if (pair? _%rest184102184110%_)
                                (let ((_%hd184107184127%_
                                       (##car _%rest184102184110%_))
                                      (_%tl184108184129%_
                                       (##cdr _%rest184102184110%_)))
                                  (let* ((_%sys184132%_ _%hd184107184127%_)
                                         (_%rest184134%_ _%tl184108184129%_))
                                    (_%K184106184124%_
                                     _%rest184134%_
                                     _%sys184132%_)))
                                (_%else184104184118%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self184025%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self184025%_)
            (let* ((_%g184038184050%_ (system-type))
                   (_%else184040184058%_ (lambda () '#!void))
                   (_%K184042184071%_
                    (lambda (_%sys-type184061%_
                             _%sys-vendor184062%_
                             _%sys-cpu184063%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu184063%_
                       '#f
                       '0
                       _%self184025%_)
                      (gx#core-bind-feature!__%
                       _%sys-type184061%_
                       '#f
                       '0
                       _%self184025%_)
                      (if (_%linux-variant?184036%_ _%sys-type184061%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self184025%_)
                          (let ((_%$e184066%_
                                 (_%bsd-variant184037%_ _%sys-type184061%_)))
                            (if _%$e184066%_
                                ((lambda (_%sys-prefix184069%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self184025%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix184069%_)
                                    '#f
                                    '0
                                    _%self184025%_))
                                 _%$e184066%_)
                                '#!void))))))
              (if (pair? _%g184038184050%_)
                  (let ((_%hd184043184074%_ (##car _%g184038184050%_))
                        (_%tl184044184076%_ (##cdr _%g184038184050%_)))
                    (let ((_%sys-cpu184079%_ _%hd184043184074%_))
                      (if (pair? _%tl184044184076%_)
                          (let ((_%hd184045184081%_ (##car _%tl184044184076%_))
                                (_%tl184046184083%_
                                 (##cdr _%tl184044184076%_)))
                            (let ((_%sys-vendor184086%_ _%hd184045184081%_))
                              (if (pair? _%tl184046184083%_)
                                  (let ((_%hd184047184088%_
                                         (##car _%tl184046184083%_))
                                        (_%tl184048184090%_
                                         (##cdr _%tl184046184083%_)))
                                    (let ((_%sys-type184093%_
                                           _%hd184047184088%_))
                                      (if (null? _%tl184048184090%_)
                                          (_%K184042184071%_
                                           _%sys-type184093%_
                                           _%sys-vendor184086%_
                                           _%sys-cpu184079%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self184025%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
