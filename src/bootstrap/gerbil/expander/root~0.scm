(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1713000278)
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
      (lambda (_%self129770130850%_ _%bind?130852%_)
        (let* ((_%self130854%_ _%self129770130850%_)
               (_%self130856%_ _%self130854%_))
          (if (##fx< '2 (##structure-length _%self130856%_))
              (begin
                (##unchecked-structure-set! _%self130856%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self130856%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self130856%_
                     '2
                     (##vector-length _%self130856%_)))
          (if _%bind?130852%_
              (begin
                (let ((__method130919
                       (__method-ref
                        _%self130856%_
                        'bind-core-syntax-expanders!)))
                  (if __method130919
                      (__method130919 _%self130856%_)
                      (begin
                        (error '"Missing method"
                               _%self130856%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method130920
                       (__method-ref
                        _%self130856%_
                        'bind-core-macro-expanders!)))
                  (if __method130920
                      (__method130920 _%self130856%_)
                      (begin
                        (error '"Missing method"
                               _%self130856%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method130921
                       (__method-ref _%self130856%_ 'bind-core-features!)))
                  (if __method130921
                      (__method130921 _%self130856%_)
                      (begin
                        (error '"Missing method"
                               _%self130856%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self129770130869%_)
        (let ((_%bind?130871%_ '#t))
          (gx#root-context:::init!__% _%self129770130869%_ _%bind?130871%_))))
    (define gx#root-context:::init!
      (lambda _g130924_
        (let ((_g130923_ (##length _g130924_)))
          (cond ((##fx= _g130923_ 1)
                 (apply gx#root-context:::init!__0 _g130924_))
                ((##fx= _g130923_ 2)
                 (apply gx#root-context:::init!__% _g130924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g130924_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass130875 __method-table130876)
        (let ((__bind-core-features!130877
               (__make-promise
                (lambda ()
                  (let ((__method130880
                         (symbolic-table-ref
                          __method-table130876
                          'bind-core-features!
                          '#f)))
                    (if __method130880
                        __method130880
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!130878
               (__make-promise
                (lambda ()
                  (let ((__method130881
                         (symbolic-table-ref
                          __method-table130876
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method130881
                        __method130881
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!130879
               (__make-promise
                (lambda ()
                  (let ((__method130882
                         (symbolic-table-ref
                          __method-table130876
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method130882
                        __method130882
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda130848130866%_
                 (lambda (_%self129770130850%_ _%bind?130852%_)
                   (let* ((_%self130854%_ _%self129770130850%_)
                          (_%self130856%_ _%self130854%_))
                     (if (##fx< '2 (##structure-length _%self130856%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self130856%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self130856%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self130856%_
                                '2
                                (##vector-length _%self130856%_)))
                     (if _%bind?130852%_
                         (begin
                           ((force __bind-core-syntax-expanders!130878)
                            _%self130856%_)
                           ((force __bind-core-macro-expanders!130879)
                            _%self130856%_)
                           ((force __bind-core-features!130877)
                            _%self130856%_))
                         '#!void)))))
            (lambda _g130926_
              (let ((_g130925_ (##length _g130926_)))
                (cond ((##fx= _g130925_ 1)
                       (apply (lambda (_%self129770130869%_)
                                (let ((_%bind?130871%_ '#t))
                                  (_%opt-lambda130848130866%_
                                   _%self129770130869%_
                                   _%bind?130871%_)))
                              _g130926_))
                      ((##fx= _g130925_ 2)
                       (apply _%opt-lambda130848130866%_ _g130926_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g130926_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self129771130693%_ _%super130695%_)
        (let* ((_%self130697%_ _%self129771130693%_)
               (_%self130699%_ _%self130697%_)
               (_%super130715%_
                (let ((_%$e130709%_ _%super130695%_))
                  (if _%$e130709%_
                      _%$e130709%_
                      (let ((_%$e130712%_ (gx#core-context-root__0)))
                        (if _%$e130712%_
                            _%$e130712%_
                            (let ((__obj130922
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj130922)
                              __obj130922)))))))
          (if (##fx< '5 (##structure-length _%self130699%_))
              (begin
                (##unchecked-structure-set! _%self130699%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self130699%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self130699%_
                 _%super130715%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self130699%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self130699%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self130699%_
                     '5
                     (##vector-length _%self130699%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self129771130720%_)
        (let ((_%super130722%_ '#f))
          (gx#top-context:::init!__% _%self129771130720%_ _%super130722%_))))
    (define gx#top-context:::init!
      (lambda _g130928_
        (let ((_g130927_ (##length _g130928_)))
          (cond ((##fx= _g130927_ 1)
                 (apply gx#top-context:::init!__0 _g130928_))
                ((##fx= _g130927_ 2)
                 (apply gx#top-context:::init!__% _g130928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g130928_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self129772130411%_ _%bindings130413%_)
        (let* ((_%self130415%_ _%self129772130411%_)
               (_%self130417%_ _%self130415%_))
          (for-each
           (lambda (_%bind130427%_)
             (let* ((_%bind130428130435%_ _%bind130427%_)
                    (_%E130430130439%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind130428130435%_
                              '([id . rest]))
                       '#!void))
                    (_%K130431130548%_
                     (lambda (_%rest130442%_ _%id130443%_)
                       (gx#core-context-put!
                        _%self130417%_
                        _%id130443%_
                        (##structure
                         gx#syntax-binding::t
                         _%id130443%_
                         _%id130443%_
                         '#f
                         (let* ((_%rest130444130455%_ _%rest130442%_)
                                (_%E130446130459%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest130444130455%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K130447130524%_
                                 (lambda (_%compiler130462%_
                                          _%expander130463%_
                                          _%key130464%_)
                                   ((let* ((_%key130465130478%_ _%key130464%_)
                                           (_%E130471130482%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key130465130478%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K130476130518%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K130475130511%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K130474130503%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K130473130495%_
                                             (lambda () gx#make-special-form))
                                            (_%K130472130487%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match130470130490%_
                                                (lambda ()
                                                  (if (##eq? _%key130465130478%_
                                                             'expr:)
                                                      (_%K130472130487%_)
                                                      (_%E130471130482%_))))
                                               (_%try-match130469130498%_
                                                (lambda ()
                                                  (if (##eq? _%key130465130478%_
                                                             'special:)
                                                      (_%K130473130495%_)
                                                      (_%try-match130470130490%_))))
                                               (_%try-match130468130506%_
                                                (lambda ()
                                                  (if (##eq? _%key130465130478%_
                                                             'define:)
                                                      (_%K130474130503%_)
                                                      (_%try-match130469130498%_))))
                                               (_%try-match130467130514%_
                                                (lambda ()
                                                  (if (##eq? _%key130465130478%_
                                                             'module:)
                                                      (_%K130475130511%_)
                                                      (_%try-match130468130506%_)))))
                                          (if (##eq? _%key130465130478%_ 'top:)
                                              (_%K130476130518%_)
                                              (_%try-match130467130514%_)))))
                                    _%expander130463%_
                                    _%id130443%_
                                    (let ((_%$e130521%_ _%compiler130462%_))
                                      (if _%$e130521%_
                                          _%$e130521%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest130444130455%_)
                               (let ((_%hd130448130527%_
                                      (##car _%rest130444130455%_))
                                     (_%tl130449130529%_
                                      (##cdr _%rest130444130455%_)))
                                 (let ((_%key130532%_ _%hd130448130527%_))
                                   (if (##pair? _%tl130449130529%_)
                                       (let ((_%hd130450130534%_
                                              (##car _%tl130449130529%_))
                                             (_%tl130451130536%_
                                              (##cdr _%tl130449130529%_)))
                                         (let ((_%expander130539%_
                                                _%hd130450130534%_))
                                           (if (##pair? _%tl130451130536%_)
                                               (let ((_%hd130452130541%_
                                                      (##car _%tl130451130536%_))
                                                     (_%tl130453130543%_
                                                      (##cdr _%tl130451130536%_)))
                                                 (let ((_%compiler130546%_
                                                        _%hd130452130541%_))
                                                   (if (##null? _%tl130453130543%_)
                                                       (_%K130447130524%_
                                                        _%compiler130546%_
                                                        _%expander130539%_
                                                        _%key130532%_)
                                                       (_%E130446130459%_))))
                                               (_%E130446130459%_))))
                                       (_%E130446130459%_))))
                               (_%E130446130459%_))))))))
               (if (##pair? _%bind130428130435%_)
                   (let ((_%hd130432130551%_ (##car _%bind130428130435%_))
                         (_%tl130433130553%_ (##cdr _%bind130428130435%_)))
                     (let* ((_%id130556%_ _%hd130432130551%_)
                            (_%rest130558%_ _%tl130433130553%_))
                       (_%K130431130548%_ _%rest130558%_ _%id130556%_)))
                   (_%E130430130439%_))))
           _%bindings130413%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self129772130563%_)
        (let ((_%bindings130565%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self129772130563%_
           _%bindings130565%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g130930_
        (let ((_g130929_ (##length _g130930_)))
          (cond ((##fx= _g130929_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g130930_))
                ((##fx= _g130929_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g130930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g130930_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self129773130170%_ _%bindings130172%_)
        (let* ((_%self130174%_ _%self129773130170%_)
               (_%self130176%_ _%self130174%_))
          (for-each
           (lambda (_%bind130186%_)
             (let* ((_%bind130187130194%_ _%bind130186%_)
                    (_%E130189130198%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind130187130194%_
                              '([id . rest]))
                       '#!void))
                    (_%K130190130266%_
                     (lambda (_%rest130201%_ _%id130202%_)
                       (gx#core-context-put!
                        _%self130176%_
                        _%id130202%_
                        (##structure
                         gx#syntax-binding::t
                         _%id130202%_
                         _%id130202%_
                         '#f
                         (let* ((_%rest130203130218%_ _%rest130201%_)
                                (_%E130207130222%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest130203130218%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K130212130251%_
                                  (lambda (_%core-id130249%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id130249%_)))
                                 (_%K130209130236%_
                                  (lambda (_%proc130234%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc130234%_)))
                                 (_%K130208130227%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id130202%_))))
                             (let ((_%try-match130206130230%_
                                    (lambda ()
                                      (if (##null? _%rest130203130218%_)
                                          (_%K130208130227%_)
                                          (_%E130207130222%_)))))
                               (if (##pair? _%rest130203130218%_)
                                   (let ((_%tl130214130256%_
                                          (##cdr _%rest130203130218%_))
                                         (_%hd130213130254%_
                                          (##car _%rest130203130218%_)))
                                     (if (##eq? _%hd130213130254%_ '=>)
                                         (if (##pair? _%tl130214130256%_)
                                             (let ((_%tl130216130261%_
                                                    (##cdr _%tl130214130256%_))
                                                   (_%hd130215130259%_
                                                    (##car _%tl130214130256%_)))
                                               (if (##null? _%tl130216130261%_)
                                                   (let ((_%core-id130264%_
                                                          _%hd130215130259%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id130264%_))
                                                   (_%E130207130222%_)))
                                             (if (##null? _%tl130214130256%_)
                                                 (let ((_%proc130244%_
                                                        _%hd130213130254%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc130244%_))
                                                 (_%E130207130222%_)))
                                         (if (##null? _%tl130214130256%_)
                                             (let ((_%proc130244%_
                                                    _%hd130213130254%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc130244%_))
                                             (_%E130207130222%_))))
                                   (_%try-match130206130230%_))))))))))
               (if (##pair? _%bind130187130194%_)
                   (let ((_%hd130191130269%_ (##car _%bind130187130194%_))
                         (_%tl130192130271%_ (##cdr _%bind130187130194%_)))
                     (let* ((_%id130274%_ _%hd130191130269%_)
                            (_%rest130276%_ _%tl130192130271%_))
                       (_%K130190130266%_ _%rest130276%_ _%id130274%_)))
                   (_%E130189130198%_))))
           _%bindings130172%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self129773130281%_)
        (let ((_%bindings130283%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self129773130281%_
           _%bindings130283%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g130932_
        (let ((_g130931_ (##length _g130932_)))
          (cond ((##fx= _g130931_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g130932_))
                ((##fx= _g130931_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g130932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g130932_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self129774129900%_)
        (let* ((_%self129903%_ _%self129774129900%_)
               (_%self129905%_ _%self129903%_))
          (letrec ((_%linux-variant?129915%_
                    (lambda (_%sys-type130015%_)
                      (let* ((_%g130016130024%_
                              (__string-split
                               (symbol->string _%sys-type130015%_)
                               '#\-))
                             (_%else130018130032%_ (lambda () '#f))
                             (_%K130020130037%_
                              (lambda (_%rest130035%_)
                                (not (null? _%rest130035%_)))))
                        (if (##pair? _%g130016130024%_)
                            (let ((_%hd130021130040%_
                                   (##car _%g130016130024%_))
                                  (_%tl130022130042%_
                                   (##cdr _%g130016130024%_)))
                              (if (equal? _%hd130021130040%_ '"linux")
                                  (let ((_%rest130045%_ _%tl130022130042%_))
                                    (_%K130020130037%_ _%rest130045%_))
                                  (_%else130018130032%_)))
                            (_%else130018130032%_)))))
                   (_%bsd-variant129916%_
                    (lambda (_%sys-type129974%_)
                      (let ((_%sys-type-str129976%_
                             (symbol->string _%sys-type129974%_)))
                        (let _%lp129978%_ ((_%rest129980%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest129981129989%_ _%rest129980%_)
                                 (_%else129983129997%_ (lambda () '#f))
                                 (_%K129985130003%_
                                  (lambda (_%rest130000%_ _%sys130001%_)
                                    (if (string-prefix?
                                         _%sys130001%_
                                         _%sys-type-str129976%_)
                                        _%sys130001%_
                                        (_%lp129978%_ _%rest130000%_)))))
                            (if (##pair? _%rest129981129989%_)
                                (let ((_%hd129986130006%_
                                       (##car _%rest129981129989%_))
                                      (_%tl129987130008%_
                                       (##cdr _%rest129981129989%_)))
                                  (let* ((_%sys130011%_ _%hd129986130006%_)
                                         (_%rest130013%_ _%tl129987130008%_))
                                    (_%K129985130003%_
                                     _%rest130013%_
                                     _%sys130011%_)))
                                (_%else129983129997%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self129905%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self129905%_)
            (let* ((_%g129917129929%_ (system-type))
                   (_%else129919129937%_ (lambda () '#!void))
                   (_%K129921129950%_
                    (lambda (_%sys-type129940%_
                             _%sys-vendor129941%_
                             _%sys-cpu129942%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu129942%_
                       '#f
                       '0
                       _%self129905%_)
                      (gx#core-bind-feature!__%
                       _%sys-type129940%_
                       '#f
                       '0
                       _%self129905%_)
                      (if (_%linux-variant?129915%_ _%sys-type129940%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self129905%_)
                          (let ((_%$e129945%_
                                 (_%bsd-variant129916%_ _%sys-type129940%_)))
                            (if _%$e129945%_
                                ((lambda (_%sys-prefix129948%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self129905%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix129948%_)
                                    '#f
                                    '0
                                    _%self129905%_))
                                 _%$e129945%_)
                                '#!void))))))
              (if (##pair? _%g129917129929%_)
                  (let ((_%hd129922129953%_ (##car _%g129917129929%_))
                        (_%tl129923129955%_ (##cdr _%g129917129929%_)))
                    (let ((_%sys-cpu129958%_ _%hd129922129953%_))
                      (if (##pair? _%tl129923129955%_)
                          (let ((_%hd129924129960%_ (##car _%tl129923129955%_))
                                (_%tl129925129962%_
                                 (##cdr _%tl129923129955%_)))
                            (let ((_%sys-vendor129965%_ _%hd129924129960%_))
                              (if (##pair? _%tl129925129962%_)
                                  (let ((_%hd129926129967%_
                                         (##car _%tl129925129962%_))
                                        (_%tl129927129969%_
                                         (##cdr _%tl129925129962%_)))
                                    (let ((_%sys-type129972%_
                                           _%hd129926129967%_))
                                      (if (##null? _%tl129927129969%_)
                                          (_%K129921129950%_
                                           _%sys-type129972%_
                                           _%sys-vendor129965%_
                                           _%sys-cpu129958%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self129905%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
