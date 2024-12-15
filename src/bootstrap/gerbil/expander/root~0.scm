(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1734225194)
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
      (lambda (_%self131406132486%_ _%bind?132488%_)
        (let* ((_%self132490%_ _%self131406132486%_)
               (_%self132492%_ _%self132490%_))
          (if (##fx< '2 (##structure-length _%self132492%_))
              (begin
                (##unchecked-structure-set! _%self132492%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self132492%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self132492%_
                     '2
                     (##vector-length _%self132492%_)))
          (if _%bind?132488%_
              (begin
                (let ((__method132555
                       (__method-ref
                        _%self132492%_
                        'bind-core-syntax-expanders!)))
                  (if __method132555
                      (__method132555 _%self132492%_)
                      (begin
                        (error '"Missing method"
                               _%self132492%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method132556
                       (__method-ref
                        _%self132492%_
                        'bind-core-macro-expanders!)))
                  (if __method132556
                      (__method132556 _%self132492%_)
                      (begin
                        (error '"Missing method"
                               _%self132492%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method132557
                       (__method-ref _%self132492%_ 'bind-core-features!)))
                  (if __method132557
                      (__method132557 _%self132492%_)
                      (begin
                        (error '"Missing method"
                               _%self132492%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self131406132505%_)
        (let ((_%bind?132507%_ '#t))
          (gx#root-context:::init!__% _%self131406132505%_ _%bind?132507%_))))
    (define gx#root-context:::init!
      (lambda _g132560_
        (let ((_g132559_ (##length _g132560_)))
          (cond ((##fx= _g132559_ 1)
                 (apply gx#root-context:::init!__0 _g132560_))
                ((##fx= _g132559_ 2)
                 (apply gx#root-context:::init!__% _g132560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g132560_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass132511 __method-table132512)
        (let ((__bind-core-macro-expanders!132513
               (__make-promise
                (lambda ()
                  (let ((__method132516
                         (symbolic-table-ref
                          __method-table132512
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method132516
                        __method132516
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!132514
               (__make-promise
                (lambda ()
                  (let ((__method132517
                         (symbolic-table-ref
                          __method-table132512
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method132517
                        __method132517
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!132515
               (__make-promise
                (lambda ()
                  (let ((__method132518
                         (symbolic-table-ref
                          __method-table132512
                          'bind-core-features!
                          '#f)))
                    (if __method132518
                        __method132518
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda132484132502%_
                 (lambda (_%self131406132486%_ _%bind?132488%_)
                   (let* ((_%self132490%_ _%self131406132486%_)
                          (_%self132492%_ _%self132490%_))
                     (if (##fx< '2 (##structure-length _%self132492%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self132492%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self132492%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self132492%_
                                '2
                                (##vector-length _%self132492%_)))
                     (if _%bind?132488%_
                         (begin
                           ((force __bind-core-syntax-expanders!132514)
                            _%self132492%_)
                           ((force __bind-core-macro-expanders!132513)
                            _%self132492%_)
                           ((force __bind-core-features!132515)
                            _%self132492%_))
                         '#!void)))))
            (lambda _g132562_
              (let ((_g132561_ (##length _g132562_)))
                (cond ((##fx= _g132561_ 1)
                       (apply (lambda (_%self131406132505%_)
                                (let ((_%bind?132507%_ '#t))
                                  (_%opt-lambda132484132502%_
                                   _%self131406132505%_
                                   _%bind?132507%_)))
                              _g132562_))
                      ((##fx= _g132561_ 2)
                       (apply _%opt-lambda132484132502%_ _g132562_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g132562_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self131407132329%_ _%super132331%_)
        (let* ((_%self132333%_ _%self131407132329%_)
               (_%self132335%_ _%self132333%_)
               (_%super132351%_
                (let ((_%$e132345%_ _%super132331%_))
                  (if _%$e132345%_
                      _%$e132345%_
                      (let ((_%$e132348%_ (gx#core-context-root__0)))
                        (if _%$e132348%_
                            _%$e132348%_
                            (let ((__obj132558
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj132558)
                              __obj132558)))))))
          (if (##fx< '5 (##structure-length _%self132335%_))
              (begin
                (##unchecked-structure-set! _%self132335%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self132335%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self132335%_
                 _%super132351%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self132335%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self132335%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self132335%_
                     '5
                     (##vector-length _%self132335%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self131407132356%_)
        (let ((_%super132358%_ '#f))
          (gx#top-context:::init!__% _%self131407132356%_ _%super132358%_))))
    (define gx#top-context:::init!
      (lambda _g132564_
        (let ((_g132563_ (##length _g132564_)))
          (cond ((##fx= _g132563_ 1)
                 (apply gx#top-context:::init!__0 _g132564_))
                ((##fx= _g132563_ 2)
                 (apply gx#top-context:::init!__% _g132564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g132564_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self131408132047%_ _%bindings132049%_)
        (let* ((_%self132051%_ _%self131408132047%_)
               (_%self132053%_ _%self132051%_))
          (for-each
           (lambda (_%bind132063%_)
             (let* ((_%bind132064132071%_ _%bind132063%_)
                    (_%E132066132075%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind132064132071%_
                              '([id . rest]))
                       '#!void))
                    (_%K132067132184%_
                     (lambda (_%rest132078%_ _%id132079%_)
                       (gx#core-context-put!
                        _%self132053%_
                        _%id132079%_
                        (##structure
                         gx#syntax-binding::t
                         _%id132079%_
                         _%id132079%_
                         '#f
                         (let* ((_%rest132080132091%_ _%rest132078%_)
                                (_%E132082132095%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest132080132091%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K132083132160%_
                                 (lambda (_%compiler132098%_
                                          _%expander132099%_
                                          _%key132100%_)
                                   ((let* ((_%key132101132114%_ _%key132100%_)
                                           (_%E132107132118%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key132101132114%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K132112132154%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K132111132147%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K132110132139%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K132109132131%_
                                             (lambda () gx#make-special-form))
                                            (_%K132108132123%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match132106132126%_
                                                (lambda ()
                                                  (if (##eq? _%key132101132114%_
                                                             'expr:)
                                                      (_%K132108132123%_)
                                                      (_%E132107132118%_))))
                                               (_%try-match132105132134%_
                                                (lambda ()
                                                  (if (##eq? _%key132101132114%_
                                                             'special:)
                                                      (_%K132109132131%_)
                                                      (_%try-match132106132126%_))))
                                               (_%try-match132104132142%_
                                                (lambda ()
                                                  (if (##eq? _%key132101132114%_
                                                             'define:)
                                                      (_%K132110132139%_)
                                                      (_%try-match132105132134%_))))
                                               (_%try-match132103132150%_
                                                (lambda ()
                                                  (if (##eq? _%key132101132114%_
                                                             'module:)
                                                      (_%K132111132147%_)
                                                      (_%try-match132104132142%_)))))
                                          (if (##eq? _%key132101132114%_ 'top:)
                                              (_%K132112132154%_)
                                              (_%try-match132103132150%_)))))
                                    _%expander132099%_
                                    _%id132079%_
                                    (let ((_%$e132157%_ _%compiler132098%_))
                                      (if _%$e132157%_
                                          _%$e132157%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest132080132091%_)
                               (let ((_%hd132084132163%_
                                      (##car _%rest132080132091%_))
                                     (_%tl132085132165%_
                                      (##cdr _%rest132080132091%_)))
                                 (let ((_%key132168%_ _%hd132084132163%_))
                                   (if (pair? _%tl132085132165%_)
                                       (let ((_%hd132086132170%_
                                              (##car _%tl132085132165%_))
                                             (_%tl132087132172%_
                                              (##cdr _%tl132085132165%_)))
                                         (let ((_%expander132175%_
                                                _%hd132086132170%_))
                                           (if (pair? _%tl132087132172%_)
                                               (let ((_%hd132088132177%_
                                                      (##car _%tl132087132172%_))
                                                     (_%tl132089132179%_
                                                      (##cdr _%tl132087132172%_)))
                                                 (let ((_%compiler132182%_
                                                        _%hd132088132177%_))
                                                   (if (null? _%tl132089132179%_)
                                                       (_%K132083132160%_
                                                        _%compiler132182%_
                                                        _%expander132175%_
                                                        _%key132168%_)
                                                       (_%E132082132095%_))))
                                               (_%E132082132095%_))))
                                       (_%E132082132095%_))))
                               (_%E132082132095%_))))))))
               (if (pair? _%bind132064132071%_)
                   (let ((_%hd132068132187%_ (##car _%bind132064132071%_))
                         (_%tl132069132189%_ (##cdr _%bind132064132071%_)))
                     (let* ((_%id132192%_ _%hd132068132187%_)
                            (_%rest132194%_ _%tl132069132189%_))
                       (_%K132067132184%_ _%rest132194%_ _%id132192%_)))
                   (_%E132066132075%_))))
           _%bindings132049%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self131408132199%_)
        (let ((_%bindings132201%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self131408132199%_
           _%bindings132201%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g132566_
        (let ((_g132565_ (##length _g132566_)))
          (cond ((##fx= _g132565_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g132566_))
                ((##fx= _g132565_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g132566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g132566_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self131409131806%_ _%bindings131808%_)
        (let* ((_%self131810%_ _%self131409131806%_)
               (_%self131812%_ _%self131810%_))
          (for-each
           (lambda (_%bind131822%_)
             (let* ((_%bind131823131830%_ _%bind131822%_)
                    (_%E131825131834%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind131823131830%_
                              '([id . rest]))
                       '#!void))
                    (_%K131826131902%_
                     (lambda (_%rest131837%_ _%id131838%_)
                       (gx#core-context-put!
                        _%self131812%_
                        _%id131838%_
                        (##structure
                         gx#syntax-binding::t
                         _%id131838%_
                         _%id131838%_
                         '#f
                         (let* ((_%rest131839131854%_ _%rest131837%_)
                                (_%E131843131858%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest131839131854%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K131848131887%_
                                  (lambda (_%core-id131885%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id131885%_)))
                                 (_%K131845131872%_
                                  (lambda (_%proc131870%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc131870%_)))
                                 (_%K131844131863%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id131838%_))))
                             (let ((_%try-match131842131866%_
                                    (lambda ()
                                      (if (null? _%rest131839131854%_)
                                          (_%K131844131863%_)
                                          (_%E131843131858%_)))))
                               (if (pair? _%rest131839131854%_)
                                   (let ((_%tl131850131892%_
                                          (##cdr _%rest131839131854%_))
                                         (_%hd131849131890%_
                                          (##car _%rest131839131854%_)))
                                     (if (##eq? _%hd131849131890%_ '=>)
                                         (if (pair? _%tl131850131892%_)
                                             (let ((_%tl131852131897%_
                                                    (##cdr _%tl131850131892%_))
                                                   (_%hd131851131895%_
                                                    (##car _%tl131850131892%_)))
                                               (if (null? _%tl131852131897%_)
                                                   (let ((_%core-id131900%_
                                                          _%hd131851131895%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id131900%_))
                                                   (_%E131843131858%_)))
                                             (if (null? _%tl131850131892%_)
                                                 (let ((_%proc131880%_
                                                        _%hd131849131890%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc131880%_))
                                                 (_%E131843131858%_)))
                                         (if (null? _%tl131850131892%_)
                                             (let ((_%proc131880%_
                                                    _%hd131849131890%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc131880%_))
                                             (_%E131843131858%_))))
                                   (_%try-match131842131866%_))))))))))
               (if (pair? _%bind131823131830%_)
                   (let ((_%hd131827131905%_ (##car _%bind131823131830%_))
                         (_%tl131828131907%_ (##cdr _%bind131823131830%_)))
                     (let* ((_%id131910%_ _%hd131827131905%_)
                            (_%rest131912%_ _%tl131828131907%_))
                       (_%K131826131902%_ _%rest131912%_ _%id131910%_)))
                   (_%E131825131834%_))))
           _%bindings131808%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self131409131917%_)
        (let ((_%bindings131919%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self131409131917%_
           _%bindings131919%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g132568_
        (let ((_g132567_ (##length _g132568_)))
          (cond ((##fx= _g132567_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g132568_))
                ((##fx= _g132567_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g132568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g132568_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self131410131536%_)
        (let* ((_%self131539%_ _%self131410131536%_)
               (_%self131541%_ _%self131539%_))
          (letrec ((_%linux-variant?131551%_
                    (lambda (_%sys-type131651%_)
                      (let* ((_%g131652131660%_
                              (__string-split
                               (symbol->string _%sys-type131651%_)
                               '#\-))
                             (_%else131654131668%_ (lambda () '#f))
                             (_%K131656131673%_
                              (lambda (_%rest131671%_)
                                (not (null? _%rest131671%_)))))
                        (if (pair? _%g131652131660%_)
                            (let ((_%hd131657131676%_
                                   (##car _%g131652131660%_))
                                  (_%tl131658131678%_
                                   (##cdr _%g131652131660%_)))
                              (if (equal? _%hd131657131676%_ '"linux")
                                  (let ((_%rest131681%_ _%tl131658131678%_))
                                    (_%K131656131673%_ _%rest131681%_))
                                  (_%else131654131668%_)))
                            (_%else131654131668%_)))))
                   (_%bsd-variant131552%_
                    (lambda (_%sys-type131610%_)
                      (let ((_%sys-type-str131612%_
                             (symbol->string _%sys-type131610%_)))
                        (let _%lp131614%_ ((_%rest131616%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest131617131625%_ _%rest131616%_)
                                 (_%else131619131633%_ (lambda () '#f))
                                 (_%K131621131639%_
                                  (lambda (_%rest131636%_ _%sys131637%_)
                                    (if (string-prefix?
                                         _%sys131637%_
                                         _%sys-type-str131612%_)
                                        _%sys131637%_
                                        (_%lp131614%_ _%rest131636%_)))))
                            (if (pair? _%rest131617131625%_)
                                (let ((_%hd131622131642%_
                                       (##car _%rest131617131625%_))
                                      (_%tl131623131644%_
                                       (##cdr _%rest131617131625%_)))
                                  (let* ((_%sys131647%_ _%hd131622131642%_)
                                         (_%rest131649%_ _%tl131623131644%_))
                                    (_%K131621131639%_
                                     _%rest131649%_
                                     _%sys131647%_)))
                                (_%else131619131633%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self131541%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self131541%_)
            (let* ((_%g131553131565%_ (system-type))
                   (_%else131555131573%_ (lambda () '#!void))
                   (_%K131557131586%_
                    (lambda (_%sys-type131576%_
                             _%sys-vendor131577%_
                             _%sys-cpu131578%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu131578%_
                       '#f
                       '0
                       _%self131541%_)
                      (gx#core-bind-feature!__%
                       _%sys-type131576%_
                       '#f
                       '0
                       _%self131541%_)
                      (if (_%linux-variant?131551%_ _%sys-type131576%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self131541%_)
                          (let ((_%$e131581%_
                                 (_%bsd-variant131552%_ _%sys-type131576%_)))
                            (if _%$e131581%_
                                ((lambda (_%sys-prefix131584%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self131541%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix131584%_)
                                    '#f
                                    '0
                                    _%self131541%_))
                                 _%$e131581%_)
                                '#!void))))))
              (if (pair? _%g131553131565%_)
                  (let ((_%hd131558131589%_ (##car _%g131553131565%_))
                        (_%tl131559131591%_ (##cdr _%g131553131565%_)))
                    (let ((_%sys-cpu131594%_ _%hd131558131589%_))
                      (if (pair? _%tl131559131591%_)
                          (let ((_%hd131560131596%_ (##car _%tl131559131591%_))
                                (_%tl131561131598%_
                                 (##cdr _%tl131559131591%_)))
                            (let ((_%sys-vendor131601%_ _%hd131560131596%_))
                              (if (pair? _%tl131561131598%_)
                                  (let ((_%hd131562131603%_
                                         (##car _%tl131561131598%_))
                                        (_%tl131563131605%_
                                         (##cdr _%tl131561131598%_)))
                                    (let ((_%sys-type131608%_
                                           _%hd131562131603%_))
                                      (if (null? _%tl131563131605%_)
                                          (_%K131557131586%_
                                           _%sys-type131608%_
                                           _%sys-vendor131601%_
                                           _%sys-cpu131594%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self131541%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
