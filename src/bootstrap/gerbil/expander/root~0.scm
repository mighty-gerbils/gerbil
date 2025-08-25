(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1756142920)
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
      (lambda (_%self138559%_ _%bind?138560%_)
        (let ((_%self138563%_ _%self138559%_))
          (if (##fx< '2 (##structure-length _%self138563%_))
              (begin
                (##unchecked-structure-set! _%self138563%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self138563%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self138563%_
                     '2
                     (##structure-length _%self138563%_)))
          (if _%bind?138560%_
              (begin
                (let ((__method138627
                       (__method-ref
                        _%self138563%_
                        'bind-core-syntax-expanders!)))
                  (if __method138627
                      (__method138627 _%self138563%_)
                      (begin
                        (error '"Missing method"
                               _%self138563%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method138628
                       (__method-ref
                        _%self138563%_
                        'bind-core-macro-expanders!)))
                  (if __method138628
                      (__method138628 _%self138563%_)
                      (begin
                        (error '"Missing method"
                               _%self138563%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method138629
                       (__method-ref _%self138563%_ 'bind-core-features!)))
                  (if __method138629
                      (__method138629 _%self138563%_)
                      (begin
                        (error '"Missing method"
                               _%self138563%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self138577%_)
        (let ((_%bind?138579%_ '#t))
          (gx#root-context:::init!__% _%self138577%_ _%bind?138579%_))))
    (define gx#root-context:::init!
      (lambda _g138631_
        (let ((_g138632_ (##length _g138631_)))
          (cond ((##fx= _g138632_ 1)
                 (apply gx#root-context:::init!__0 _g138631_))
                ((##fx= _g138632_ 2)
                 (apply gx#root-context:::init!__% _g138631_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g138631_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass138583 __method-table138584)
        (let ((__bind-core-features!138585
               (__make-promise
                (lambda ()
                  (let ((__method138588
                         (symbolic-table-ref
                          __method-table138584
                          'bind-core-features!
                          '#f)))
                    (if __method138588
                        __method138588
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!138586
               (__make-promise
                (lambda ()
                  (let ((__method138589
                         (symbolic-table-ref
                          __method-table138584
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method138589
                        __method138589
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!138587
               (__make-promise
                (lambda ()
                  (let ((__method138590
                         (symbolic-table-ref
                          __method-table138584
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method138590
                        __method138590
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda138557138574%_
                 (lambda (_%self138559%_ _%bind?138560%_)
                   (let ((_%self138563%_ _%self138559%_))
                     (if (##fx< '2 (##structure-length _%self138563%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self138563%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self138563%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self138563%_
                                '2
                                (##structure-length _%self138563%_)))
                     (if _%bind?138560%_
                         (begin
                           ((force __bind-core-syntax-expanders!138586)
                            _%self138563%_)
                           ((force __bind-core-macro-expanders!138587)
                            _%self138563%_)
                           ((force __bind-core-features!138585)
                            _%self138563%_))
                         '#!void)))))
            (lambda _g138633_
              (let ((_g138634_ (##length _g138633_)))
                (cond ((##fx= _g138634_ 1)
                       (apply (lambda (_%self138577%_)
                                (let ((_%bind?138579%_ '#t))
                                  (_%opt-lambda138557138574%_
                                   _%self138577%_
                                   _%bind?138579%_)))
                              _g138633_))
                      ((##fx= _g138634_ 2)
                       (apply _%opt-lambda138557138574%_ _g138633_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g138633_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self138404%_ _%super138405%_)
        (let* ((_%self138408%_ _%self138404%_)
               (_%super138424%_
                (let ((_%$e138418%_ _%super138405%_))
                  (if _%$e138418%_
                      _%$e138418%_
                      (let ((_%$e138421%_ (gx#core-context-root__0)))
                        (if _%$e138421%_
                            _%$e138421%_
                            (let ((__obj138630
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj138630)
                              __obj138630)))))))
          (if (##fx< '5 (##structure-length _%self138408%_))
              (begin
                (##unchecked-structure-set! _%self138408%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self138408%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self138408%_
                 _%super138424%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self138408%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self138408%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self138408%_
                     '5
                     (##structure-length _%self138408%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self138429%_)
        (let ((_%super138431%_ '#f))
          (gx#top-context:::init!__% _%self138429%_ _%super138431%_))))
    (define gx#top-context:::init!
      (lambda _g138635_
        (let ((_g138636_ (##length _g138635_)))
          (cond ((##fx= _g138636_ 1)
                 (apply gx#top-context:::init!__0 _g138635_))
                ((##fx= _g138636_ 2)
                 (apply gx#top-context:::init!__% _g138635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g138635_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self138124%_ _%bindings138125%_)
        (let ((_%self138128%_ _%self138124%_))
          (for-each
           (lambda (_%bind138138%_)
             (let* ((_%bind138139138146%_ _%bind138138%_)
                    (_%E138141138150%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind138139138146%_
                              '([id . rest]))
                       '#!void))
                    (_%K138142138259%_
                     (lambda (_%rest138153%_ _%id138154%_)
                       (gx#core-context-put!
                        _%self138128%_
                        _%id138154%_
                        (##structure
                         gx#syntax-binding::t
                         _%id138154%_
                         _%id138154%_
                         '#f
                         (let* ((_%rest138155138166%_ _%rest138153%_)
                                (_%E138157138170%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest138155138166%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K138158138235%_
                                 (lambda (_%compiler138173%_
                                          _%expander138174%_
                                          _%key138175%_)
                                   ((let* ((_%key138176138189%_ _%key138175%_)
                                           (_%E138182138193%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key138176138189%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K138187138229%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K138186138222%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K138185138214%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K138184138206%_
                                             (lambda () gx#make-special-form))
                                            (_%K138183138198%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match138181138201%_
                                                (lambda ()
                                                  (if (##eq? _%key138176138189%_
                                                             'expr:)
                                                      (_%K138183138198%_)
                                                      (_%E138182138193%_))))
                                               (_%try-match138180138209%_
                                                (lambda ()
                                                  (if (##eq? _%key138176138189%_
                                                             'special:)
                                                      (_%K138184138206%_)
                                                      (_%try-match138181138201%_))))
                                               (_%try-match138179138217%_
                                                (lambda ()
                                                  (if (##eq? _%key138176138189%_
                                                             'define:)
                                                      (_%K138185138214%_)
                                                      (_%try-match138180138209%_))))
                                               (_%try-match138178138225%_
                                                (lambda ()
                                                  (if (##eq? _%key138176138189%_
                                                             'module:)
                                                      (_%K138186138222%_)
                                                      (_%try-match138179138217%_)))))
                                          (if (##eq? _%key138176138189%_ 'top:)
                                              (_%K138187138229%_)
                                              (_%try-match138178138225%_)))))
                                    _%expander138174%_
                                    _%id138154%_
                                    (let ((_%$e138232%_ _%compiler138173%_))
                                      (if _%$e138232%_
                                          _%$e138232%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest138155138166%_)
                               (let ((_%hd138159138238%_
                                      (##car _%rest138155138166%_))
                                     (_%tl138160138240%_
                                      (##cdr _%rest138155138166%_)))
                                 (let ((_%key138243%_ _%hd138159138238%_))
                                   (if (pair? _%tl138160138240%_)
                                       (let ((_%hd138161138245%_
                                              (##car _%tl138160138240%_))
                                             (_%tl138162138247%_
                                              (##cdr _%tl138160138240%_)))
                                         (let ((_%expander138250%_
                                                _%hd138161138245%_))
                                           (if (pair? _%tl138162138247%_)
                                               (let ((_%hd138163138252%_
                                                      (##car _%tl138162138247%_))
                                                     (_%tl138164138254%_
                                                      (##cdr _%tl138162138247%_)))
                                                 (let ((_%compiler138257%_
                                                        _%hd138163138252%_))
                                                   (if (null? _%tl138164138254%_)
                                                       (_%K138158138235%_
                                                        _%compiler138257%_
                                                        _%expander138250%_
                                                        _%key138243%_)
                                                       (_%E138157138170%_))))
                                               (_%E138157138170%_))))
                                       (_%E138157138170%_))))
                               (_%E138157138170%_))))))))
               (if (pair? _%bind138139138146%_)
                   (let ((_%hd138143138262%_ (##car _%bind138139138146%_))
                         (_%tl138144138264%_ (##cdr _%bind138139138146%_)))
                     (let* ((_%id138267%_ _%hd138143138262%_)
                            (_%rest138269%_ _%tl138144138264%_))
                       (_%K138142138259%_ _%rest138269%_ _%id138267%_)))
                   (_%E138141138150%_))))
           _%bindings138125%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self138274%_)
        (let ((_%bindings138276%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self138274%_
           _%bindings138276%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g138637_
        (let ((_g138638_ (##length _g138637_)))
          (cond ((##fx= _g138638_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g138637_))
                ((##fx= _g138638_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g138637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g138637_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self137885%_ _%bindings137886%_)
        (let ((_%self137889%_ _%self137885%_))
          (for-each
           (lambda (_%bind137899%_)
             (let* ((_%bind137900137907%_ _%bind137899%_)
                    (_%E137902137911%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind137900137907%_
                              '([id . rest]))
                       '#!void))
                    (_%K137903137979%_
                     (lambda (_%rest137914%_ _%id137915%_)
                       (gx#core-context-put!
                        _%self137889%_
                        _%id137915%_
                        (##structure
                         gx#syntax-binding::t
                         _%id137915%_
                         _%id137915%_
                         '#f
                         (let* ((_%rest137916137931%_ _%rest137914%_)
                                (_%E137920137935%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest137916137931%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K137925137964%_
                                  (lambda (_%core-id137962%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id137962%_)))
                                 (_%K137922137949%_
                                  (lambda (_%proc137947%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc137947%_)))
                                 (_%K137921137940%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id137915%_))))
                             (let ((_%try-match137919137943%_
                                    (lambda ()
                                      (if (null? _%rest137916137931%_)
                                          (_%K137921137940%_)
                                          (_%E137920137935%_)))))
                               (if (pair? _%rest137916137931%_)
                                   (let ((_%tl137927137969%_
                                          (##cdr _%rest137916137931%_))
                                         (_%hd137926137967%_
                                          (##car _%rest137916137931%_)))
                                     (if (##eq? _%hd137926137967%_ '=>)
                                         (if (pair? _%tl137927137969%_)
                                             (let ((_%tl137929137974%_
                                                    (##cdr _%tl137927137969%_))
                                                   (_%hd137928137972%_
                                                    (##car _%tl137927137969%_)))
                                               (if (null? _%tl137929137974%_)
                                                   (let ((_%core-id137977%_
                                                          _%hd137928137972%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id137977%_))
                                                   (_%E137920137935%_)))
                                             (if (null? _%tl137927137969%_)
                                                 (let ((_%proc137957%_
                                                        _%hd137926137967%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc137957%_))
                                                 (_%E137920137935%_)))
                                         (if (null? _%tl137927137969%_)
                                             (let ((_%proc137957%_
                                                    _%hd137926137967%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc137957%_))
                                             (_%E137920137935%_))))
                                   (_%try-match137919137943%_))))))))))
               (if (pair? _%bind137900137907%_)
                   (let ((_%hd137904137982%_ (##car _%bind137900137907%_))
                         (_%tl137905137984%_ (##cdr _%bind137900137907%_)))
                     (let* ((_%id137987%_ _%hd137904137982%_)
                            (_%rest137989%_ _%tl137905137984%_))
                       (_%K137903137979%_ _%rest137989%_ _%id137987%_)))
                   (_%E137902137911%_))))
           _%bindings137886%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self137994%_)
        (let ((_%bindings137996%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self137994%_
           _%bindings137996%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g138639_
        (let ((_g138640_ (##length _g138639_)))
          (cond ((##fx= _g138640_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g138639_))
                ((##fx= _g138640_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g138639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g138639_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self137616%_)
        (let ((_%self137619%_ _%self137616%_))
          (letrec ((_%linux-variant?137630%_
                    (lambda (_%sys-type137730%_)
                      (let* ((_%g137731137739%_
                              (__string-split
                               (symbol->string _%sys-type137730%_)
                               '#\-))
                             (_%else137733137747%_ (lambda () '#f))
                             (_%K137735137752%_
                              (lambda (_%rest137750%_)
                                (not (null? _%rest137750%_)))))
                        (if (pair? _%g137731137739%_)
                            (let ((_%hd137736137755%_
                                   (##car _%g137731137739%_))
                                  (_%tl137737137757%_
                                   (##cdr _%g137731137739%_)))
                              (if (equal? _%hd137736137755%_ '"linux")
                                  (let ((_%rest137760%_ _%tl137737137757%_))
                                    (_%K137735137752%_ _%rest137760%_))
                                  (_%else137733137747%_)))
                            (_%else137733137747%_)))))
                   (_%bsd-variant137631%_
                    (lambda (_%sys-type137689%_)
                      (let ((_%sys-type-str137691%_
                             (symbol->string _%sys-type137689%_)))
                        (let _%lp137693%_ ((_%rest137695%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest137696137704%_ _%rest137695%_)
                                 (_%else137698137712%_ (lambda () '#f))
                                 (_%K137700137718%_
                                  (lambda (_%rest137715%_ _%sys137716%_)
                                    (if (string-prefix?
                                         _%sys137716%_
                                         _%sys-type-str137691%_)
                                        _%sys137716%_
                                        (_%lp137693%_ _%rest137715%_)))))
                            (if (pair? _%rest137696137704%_)
                                (let ((_%hd137701137721%_
                                       (##car _%rest137696137704%_))
                                      (_%tl137702137723%_
                                       (##cdr _%rest137696137704%_)))
                                  (let* ((_%sys137726%_ _%hd137701137721%_)
                                         (_%rest137728%_ _%tl137702137723%_))
                                    (_%K137700137718%_
                                     _%rest137728%_
                                     _%sys137726%_)))
                                (_%else137698137712%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self137619%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self137619%_)
            (let* ((_%g137632137644%_ (system-type))
                   (_%else137634137652%_ (lambda () '#!void))
                   (_%K137636137665%_
                    (lambda (_%sys-type137655%_
                             _%sys-vendor137656%_
                             _%sys-cpu137657%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu137657%_
                       '#f
                       '0
                       _%self137619%_)
                      (gx#core-bind-feature!__%
                       _%sys-type137655%_
                       '#f
                       '0
                       _%self137619%_)
                      (if (_%linux-variant?137630%_ _%sys-type137655%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self137619%_)
                          (let ((_%$e137660%_
                                 (_%bsd-variant137631%_ _%sys-type137655%_)))
                            (if _%$e137660%_
                                ((lambda (_%sys-prefix137663%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self137619%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix137663%_)
                                    '#f
                                    '0
                                    _%self137619%_))
                                 _%$e137660%_)
                                '#!void))))))
              (if (pair? _%g137632137644%_)
                  (let ((_%hd137637137668%_ (##car _%g137632137644%_))
                        (_%tl137638137670%_ (##cdr _%g137632137644%_)))
                    (let ((_%sys-cpu137673%_ _%hd137637137668%_))
                      (if (pair? _%tl137638137670%_)
                          (let ((_%hd137639137675%_ (##car _%tl137638137670%_))
                                (_%tl137640137677%_
                                 (##cdr _%tl137638137670%_)))
                            (let ((_%sys-vendor137680%_ _%hd137639137675%_))
                              (if (pair? _%tl137640137677%_)
                                  (let ((_%hd137641137682%_
                                         (##car _%tl137640137677%_))
                                        (_%tl137642137684%_
                                         (##cdr _%tl137640137677%_)))
                                    (let ((_%sys-type137687%_
                                           _%hd137641137682%_))
                                      (if (null? _%tl137642137684%_)
                                          (_%K137636137665%_
                                           _%sys-type137687%_
                                           _%sys-vendor137680%_
                                           _%sys-cpu137673%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self137619%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
