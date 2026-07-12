(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1783878478)
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
                                (cons (cons '%#bind-runtime-properties!
                                            (cons 'special:
                                                  (cons gx#core-expand-bind-runtime-properties%
                                                        (cons '#f '()))))
                                      '())))))))))))))))))))))))))))))))))
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
      (lambda (_%self194436%_ _%bind?194437%_)
        (let ((_%self194440%_ _%self194436%_))
          (if (##fx< '2 (##structure-length _%self194440%_))
              (begin
                (##unchecked-structure-set! _%self194440%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self194440%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self194440%_
                     '2
                     (##structure-length _%self194440%_)))
          (if _%bind?194437%_
              (begin
                (let ((__method194504
                       (__method-ref
                        _%self194440%_
                        'bind-core-syntax-expanders!)))
                  (if __method194504
                      (__method194504 _%self194440%_)
                      (begin
                        (error '"Missing method"
                               _%self194440%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method194505
                       (__method-ref
                        _%self194440%_
                        'bind-core-macro-expanders!)))
                  (if __method194505
                      (__method194505 _%self194440%_)
                      (begin
                        (error '"Missing method"
                               _%self194440%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method194506
                       (__method-ref _%self194440%_ 'bind-core-features!)))
                  (if __method194506
                      (__method194506 _%self194440%_)
                      (begin
                        (error '"Missing method"
                               _%self194440%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self194454%_)
        (let ((_%bind?194456%_ '#t))
          (gx#root-context:::init!__% _%self194454%_ _%bind?194456%_))))
    (define gx#root-context:::init!
      (lambda _g194510_
        (let ((_g194511_ (##length _g194510_)))
          (cond ((##fx= _g194511_ 1)
                 (apply gx#root-context:::init!__0 _g194510_))
                ((##fx= _g194511_ 2)
                 (apply gx#root-context:::init!__% _g194510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g194510_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass194460 __method-table194461)
        (let ((__bind-core-syntax-expanders!194462
               (__make-promise
                (lambda ()
                  (let ((__method194465
                         (symbolic-table-ref
                          __method-table194461
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method194465
                        __method194465
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!194463
               (__make-promise
                (lambda ()
                  (let ((__method194466
                         (symbolic-table-ref
                          __method-table194461
                          'bind-core-features!
                          '#f)))
                    (if __method194466
                        __method194466
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!194464
               (__make-promise
                (lambda ()
                  (let ((__method194467
                         (symbolic-table-ref
                          __method-table194461
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method194467
                        __method194467
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%$%opt-lambda194434194451%_
                 (lambda (_%self194436%_ _%bind?194437%_)
                   (let ((_%self194440%_ _%self194436%_))
                     (if (##fx< '2 (##structure-length _%self194440%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self194440%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self194440%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self194440%_
                                '2
                                (##structure-length _%self194440%_)))
                     (if _%bind?194437%_
                         (begin
                           ((force __bind-core-syntax-expanders!194462)
                            _%self194440%_)
                           ((force __bind-core-macro-expanders!194464)
                            _%self194440%_)
                           ((force __bind-core-features!194463)
                            _%self194440%_))
                         '#!void)))))
            (lambda _g194512_
              (let ((_g194513_ (##length _g194512_)))
                (cond ((##fx= _g194513_ 1)
                       (apply (lambda (_%self194454%_)
                                (let ((_%bind?194456%_ '#t))
                                  (_%$%opt-lambda194434194451%_
                                   _%self194454%_
                                   _%bind?194456%_)))
                              _g194512_))
                      ((##fx= _g194513_ 2)
                       (apply _%$%opt-lambda194434194451%_ _g194512_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g194512_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self194281%_ _%super194282%_)
        (let* ((_%self194285%_ _%self194281%_)
               (_%super194301%_
                (let ((_%$e194295%_ _%super194282%_))
                  (if _%$e194295%_
                      _%$e194295%_
                      (let ((_%$e194298%_ (gx#core-context-root__0)))
                        (if _%$e194298%_
                            _%$e194298%_
                            (let ((__obj194507
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj194507)
                              __obj194507)))))))
          (if (##fx< '5 (##structure-length _%self194285%_))
              (begin
                (##unchecked-structure-set! _%self194285%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self194285%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self194285%_
                 _%super194301%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self194285%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self194285%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self194285%_
                     '5
                     (##structure-length _%self194285%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self194306%_)
        (let ((_%super194308%_ '#f))
          (gx#top-context:::init!__% _%self194306%_ _%super194308%_))))
    (define gx#top-context:::init!
      (lambda _g194514_
        (let ((_g194515_ (##length _g194514_)))
          (cond ((##fx= _g194515_ 1)
                 (apply gx#top-context:::init!__0 _g194514_))
                ((##fx= _g194515_ 2)
                 (apply gx#top-context:::init!__% _g194514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g194514_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self194002%_ _%bindings194003%_)
        (let ((_%self194006%_ _%self194002%_))
          (for-each
           (lambda (_%bind194016%_)
             (let* ((_%$%bind194017194024%_ _%bind194016%_)
                    (_%$%E194019194027%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind194017194024%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K194020194136%_
                     (lambda (_%rest194030%_ _%id194031%_)
                       (gx#core-context-put!
                        _%self194006%_
                        _%id194031%_
                        (let ((__obj194508
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj194508
                           _%id194031%_
                           _%id194031%_
                           '#f
                           (let* ((_%$%rest194032194043%_ _%rest194030%_)
                                  (_%$%E194034194047%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest194032194043%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%$%K194035194112%_
                                   (lambda (_%compiler194050%_
                                            _%expander194051%_
                                            _%key194052%_)
                                     ((let* ((_%$%key194053194066%_
                                              _%key194052%_)
                                             (_%$%E194059194070%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%$%key194053194066%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%$%K194064194106%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%$%K194063194099%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%$%K194062194091%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%$%K194061194083%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%$%K194060194075%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%$%try-match194058194078%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key194053194066%_
                                                               'expr:)
                                                        (_%$%K194060194075%_)
                                                        (_%$%E194059194070%_))))
                                                 (_%$%try-match194057194086%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key194053194066%_
                                                               'special:)
                                                        (_%$%K194061194083%_)
                                                        (_%$%try-match194058194078%_))))
                                                 (_%$%try-match194056194094%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key194053194066%_
                                                               'define:)
                                                        (_%$%K194062194091%_)
                                                        (_%$%try-match194057194086%_))))
                                                 (_%$%try-match194055194102%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key194053194066%_
                                                               'module:)
                                                        (_%$%K194063194099%_)
                                                        (_%$%try-match194056194094%_)))))
                                            (if (##eq? _%$%key194053194066%_
                                                       'top:)
                                                (_%$%K194064194106%_)
                                                (_%$%try-match194055194102%_)))))
                                      _%expander194051%_
                                      _%id194031%_
                                      (let ((_%$e194109%_ _%compiler194050%_))
                                        (if _%$e194109%_
                                            _%$e194109%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%$%rest194032194043%_)
                                 (let ((_%$%hd194036194115%_
                                        (##car _%$%rest194032194043%_))
                                       (_%$%tl194037194117%_
                                        (##cdr _%$%rest194032194043%_)))
                                   (let ((_%key194120%_ _%$%hd194036194115%_))
                                     (if (pair? _%$%tl194037194117%_)
                                         (let ((_%$%hd194038194122%_
                                                (##car _%$%tl194037194117%_))
                                               (_%$%tl194039194124%_
                                                (##cdr _%$%tl194037194117%_)))
                                           (let ((_%expander194127%_
                                                  _%$%hd194038194122%_))
                                             (if (pair? _%$%tl194039194124%_)
                                                 (let ((_%$%hd194040194129%_
                                                        (##car _%$%tl194039194124%_))
                                                       (_%$%tl194041194131%_
                                                        (##cdr _%$%tl194039194124%_)))
                                                   (let ((_%compiler194134%_
                                                          _%$%hd194040194129%_))
                                                     (if (null? _%$%tl194041194131%_)
                                                         (_%$%K194035194112%_
                                                          _%compiler194134%_
                                                          _%expander194127%_
                                                          _%key194120%_)
                                                         (_%$%E194034194047%_))))
                                                 (_%$%E194034194047%_))))
                                         (_%$%E194034194047%_))))
                                 (_%$%E194034194047%_))))
                          __obj194508)))))
               (if (pair? _%$%bind194017194024%_)
                   (let ((_%$%hd194021194139%_ (##car _%$%bind194017194024%_))
                         (_%$%tl194022194141%_ (##cdr _%$%bind194017194024%_)))
                     (let* ((_%id194144%_ _%$%hd194021194139%_)
                            (_%rest194146%_ _%$%tl194022194141%_))
                       (_%$%K194020194136%_ _%rest194146%_ _%id194144%_)))
                   (_%$%E194019194027%_))))
           _%bindings194003%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self194151%_)
        (let ((_%bindings194153%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self194151%_
           _%bindings194153%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g194516_
        (let ((_g194517_ (##length _g194516_)))
          (cond ((##fx= _g194517_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g194516_))
                ((##fx= _g194517_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g194516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g194516_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self193764%_ _%bindings193765%_)
        (let ((_%self193768%_ _%self193764%_))
          (for-each
           (lambda (_%bind193778%_)
             (let* ((_%$%bind193779193786%_ _%bind193778%_)
                    (_%$%E193781193789%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind193779193786%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K193782193857%_
                     (lambda (_%rest193792%_ _%id193793%_)
                       (gx#core-context-put!
                        _%self193768%_
                        _%id193793%_
                        (let ((__obj194509
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj194509
                           _%id193793%_
                           _%id193793%_
                           '#f
                           (let* ((_%$%rest193794193809%_ _%rest193792%_)
                                  (_%$%E193798193813%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest193794193809%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%$%K193803193842%_
                                    (lambda (_%core-id193840%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id193840%_)))
                                   (_%$%K193800193827%_
                                    (lambda (_%proc193825%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc193825%_)))
                                   (_%$%K193799193818%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id193793%_))))
                               (let ((_%$%try-match193797193821%_
                                      (lambda ()
                                        (if (null? _%$%rest193794193809%_)
                                            (_%$%K193799193818%_)
                                            (_%$%E193798193813%_)))))
                                 (if (pair? _%$%rest193794193809%_)
                                     (let ((_%$%tl193805193847%_
                                            (##cdr _%$%rest193794193809%_))
                                           (_%$%hd193804193845%_
                                            (##car _%$%rest193794193809%_)))
                                       (if (##eq? _%$%hd193804193845%_ '=>)
                                           (if (pair? _%$%tl193805193847%_)
                                               (let ((_%$%tl193807193852%_
                                                      (##cdr _%$%tl193805193847%_))
                                                     (_%$%hd193806193850%_
                                                      (##car _%$%tl193805193847%_)))
                                                 (if (null? _%$%tl193807193852%_)
                                                     (let ((_%core-id193855%_
                                                            _%$%hd193806193850%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id193855%_))
                                                     (_%$%E193798193813%_)))
                                               (if (null? _%$%tl193805193847%_)
                                                   (let ((_%proc193835%_
                                                          _%$%hd193804193845%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc193835%_))
                                                   (_%$%E193798193813%_)))
                                           (if (null? _%$%tl193805193847%_)
                                               (let ((_%proc193835%_
                                                      _%$%hd193804193845%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc193835%_))
                                               (_%$%E193798193813%_))))
                                     (_%$%try-match193797193821%_))))))
                          __obj194509)))))
               (if (pair? _%$%bind193779193786%_)
                   (let ((_%$%hd193783193860%_ (##car _%$%bind193779193786%_))
                         (_%$%tl193784193862%_ (##cdr _%$%bind193779193786%_)))
                     (let* ((_%id193865%_ _%$%hd193783193860%_)
                            (_%rest193867%_ _%$%tl193784193862%_))
                       (_%$%K193782193857%_ _%rest193867%_ _%id193865%_)))
                   (_%$%E193781193789%_))))
           _%bindings193765%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self193872%_)
        (let ((_%bindings193874%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self193872%_
           _%bindings193874%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g194518_
        (let ((_g194519_ (##length _g194518_)))
          (cond ((##fx= _g194519_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g194518_))
                ((##fx= _g194519_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g194518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g194518_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self193495%_)
        (let ((_%self193498%_ _%self193495%_))
          (letrec ((_%linux-variant?193509%_
                    (lambda (_%sys-type193609%_)
                      (let* ((_%$%g193610193618%_
                              (__string-split
                               (symbol->string _%sys-type193609%_)
                               '#\-))
                             (_%$%else193612193626%_ (lambda () '#f))
                             (_%$%K193614193631%_
                              (lambda (_%rest193629%_)
                                (not (null? _%rest193629%_)))))
                        (if (pair? _%$%g193610193618%_)
                            (let ((_%$%hd193615193634%_
                                   (##car _%$%g193610193618%_))
                                  (_%$%tl193616193636%_
                                   (##cdr _%$%g193610193618%_)))
                              (if (equal? _%$%hd193615193634%_ '"linux")
                                  (let ((_%rest193639%_ _%$%tl193616193636%_))
                                    (_%$%K193614193631%_ _%rest193639%_))
                                  (_%$%else193612193626%_)))
                            (_%$%else193612193626%_)))))
                   (_%bsd-variant193510%_
                    (lambda (_%sys-type193568%_)
                      (let ((_%sys-type-str193570%_
                             (symbol->string _%sys-type193568%_)))
                        (let _%lp193572%_ ((_%rest193574%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%$%rest193575193583%_ _%rest193574%_)
                                 (_%$%else193577193591%_ (lambda () '#f))
                                 (_%$%K193579193597%_
                                  (lambda (_%rest193594%_ _%sys193595%_)
                                    (if (string-prefix?
                                         _%sys193595%_
                                         _%sys-type-str193570%_)
                                        _%sys193595%_
                                        (_%lp193572%_ _%rest193594%_)))))
                            (if (pair? _%$%rest193575193583%_)
                                (let ((_%$%hd193580193600%_
                                       (##car _%$%rest193575193583%_))
                                      (_%$%tl193581193602%_
                                       (##cdr _%$%rest193575193583%_)))
                                  (let* ((_%sys193605%_ _%$%hd193580193600%_)
                                         (_%rest193607%_ _%$%tl193581193602%_))
                                    (_%$%K193579193597%_
                                     _%rest193607%_
                                     _%sys193605%_)))
                                (_%$%else193577193591%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self193498%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self193498%_)
            (let* ((_%$%g193511193523%_ (system-type))
                   (_%$%else193513193531%_ (lambda () '#!void))
                   (_%$%K193515193544%_
                    (lambda (_%sys-type193534%_
                             _%sys-vendor193535%_
                             _%sys-cpu193536%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu193536%_
                       '#f
                       '0
                       _%self193498%_)
                      (gx#core-bind-feature!__%
                       _%sys-type193534%_
                       '#f
                       '0
                       _%self193498%_)
                      (if (_%linux-variant?193509%_ _%sys-type193534%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self193498%_)
                          (let ((_%$e193539%_
                                 (_%bsd-variant193510%_ _%sys-type193534%_)))
                            (if _%$e193539%_
                                (let ()
                                  (gx#core-bind-feature!__%
                                   (##string->symbol '"bsd")
                                   '#f
                                   '0
                                   _%self193498%_)
                                  (gx#core-bind-feature!__%
                                   (string->symbol _%$e193539%_)
                                   '#f
                                   '0
                                   _%self193498%_))
                                '#!void))))))
              (if (pair? _%$%g193511193523%_)
                  (let ((_%$%hd193516193547%_ (##car _%$%g193511193523%_))
                        (_%$%tl193517193549%_ (##cdr _%$%g193511193523%_)))
                    (let ((_%sys-cpu193552%_ _%$%hd193516193547%_))
                      (if (pair? _%$%tl193517193549%_)
                          (let ((_%$%hd193518193554%_
                                 (##car _%$%tl193517193549%_))
                                (_%$%tl193519193556%_
                                 (##cdr _%$%tl193517193549%_)))
                            (let ((_%sys-vendor193559%_ _%$%hd193518193554%_))
                              (if (pair? _%$%tl193519193556%_)
                                  (let ((_%$%hd193520193561%_
                                         (##car _%$%tl193519193556%_))
                                        (_%$%tl193521193563%_
                                         (##cdr _%$%tl193519193556%_)))
                                    (let ((_%sys-type193566%_
                                           _%$%hd193520193561%_))
                                      (if (null? _%$%tl193521193563%_)
                                          (_%$%K193515193544%_
                                           _%sys-type193566%_
                                           _%sys-vendor193559%_
                                           _%sys-cpu193552%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self193498%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
