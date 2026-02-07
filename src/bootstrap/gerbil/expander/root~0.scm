(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1770505719)
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
      (lambda (_%self184879%_ _%bind?184880%_)
        (let ((_%self184883%_ _%self184879%_))
          (if (##fx< '2 (##structure-length _%self184883%_))
              (begin
                (##unchecked-structure-set! _%self184883%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self184883%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self184883%_
                     '2
                     (##structure-length _%self184883%_)))
          (if _%bind?184880%_
              (begin
                (let ((__method184947
                       (__method-ref
                        _%self184883%_
                        'bind-core-syntax-expanders!)))
                  (if __method184947
                      (__method184947 _%self184883%_)
                      (begin
                        (error '"Missing method"
                               _%self184883%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method184948
                       (__method-ref
                        _%self184883%_
                        'bind-core-macro-expanders!)))
                  (if __method184948
                      (__method184948 _%self184883%_)
                      (begin
                        (error '"Missing method"
                               _%self184883%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method184949
                       (__method-ref _%self184883%_ 'bind-core-features!)))
                  (if __method184949
                      (__method184949 _%self184883%_)
                      (begin
                        (error '"Missing method"
                               _%self184883%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self184897%_)
        (let ((_%bind?184899%_ '#t))
          (gx#root-context:::init!__% _%self184897%_ _%bind?184899%_))))
    (define gx#root-context:::init!
      (lambda _g184953_
        (let ((_g184954_ (##length _g184953_)))
          (cond ((##fx= _g184954_ 1)
                 (apply gx#root-context:::init!__0 _g184953_))
                ((##fx= _g184954_ 2)
                 (apply gx#root-context:::init!__% _g184953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g184953_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass184903 __method-table184904)
        (let ((__bind-core-macro-expanders!184905
               (__make-promise
                (lambda ()
                  (let ((__method184908
                         (symbolic-table-ref
                          __method-table184904
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method184908
                        __method184908
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!184906
               (__make-promise
                (lambda ()
                  (let ((__method184909
                         (symbolic-table-ref
                          __method-table184904
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method184909
                        __method184909
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!184907
               (__make-promise
                (lambda ()
                  (let ((__method184910
                         (symbolic-table-ref
                          __method-table184904
                          'bind-core-features!
                          '#f)))
                    (if __method184910
                        __method184910
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda184877184894%_
                 (lambda (_%self184879%_ _%bind?184880%_)
                   (let ((_%self184883%_ _%self184879%_))
                     (if (##fx< '2 (##structure-length _%self184883%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self184883%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self184883%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self184883%_
                                '2
                                (##structure-length _%self184883%_)))
                     (if _%bind?184880%_
                         (begin
                           ((force __bind-core-syntax-expanders!184906)
                            _%self184883%_)
                           ((force __bind-core-macro-expanders!184905)
                            _%self184883%_)
                           ((force __bind-core-features!184907)
                            _%self184883%_))
                         '#!void)))))
            (lambda _g184955_
              (let ((_g184956_ (##length _g184955_)))
                (cond ((##fx= _g184956_ 1)
                       (apply (lambda (_%self184897%_)
                                (let ((_%bind?184899%_ '#t))
                                  (_%opt-lambda184877184894%_
                                   _%self184897%_
                                   _%bind?184899%_)))
                              _g184955_))
                      ((##fx= _g184956_ 2)
                       (apply _%opt-lambda184877184894%_ _g184955_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g184955_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self184724%_ _%super184725%_)
        (let* ((_%self184728%_ _%self184724%_)
               (_%super184744%_
                (let ((_%$e184738%_ _%super184725%_))
                  (if _%$e184738%_
                      _%$e184738%_
                      (let ((_%$e184741%_ (gx#core-context-root__0)))
                        (if _%$e184741%_
                            _%$e184741%_
                            (let ((__obj184950
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj184950)
                              __obj184950)))))))
          (if (##fx< '5 (##structure-length _%self184728%_))
              (begin
                (##unchecked-structure-set! _%self184728%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self184728%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self184728%_
                 _%super184744%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self184728%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self184728%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self184728%_
                     '5
                     (##structure-length _%self184728%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self184749%_)
        (let ((_%super184751%_ '#f))
          (gx#top-context:::init!__% _%self184749%_ _%super184751%_))))
    (define gx#top-context:::init!
      (lambda _g184957_
        (let ((_g184958_ (##length _g184957_)))
          (cond ((##fx= _g184958_ 1)
                 (apply gx#top-context:::init!__0 _g184957_))
                ((##fx= _g184958_ 2)
                 (apply gx#top-context:::init!__% _g184957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g184957_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self184445%_ _%bindings184446%_)
        (let ((_%self184449%_ _%self184445%_))
          (for-each
           (lambda (_%bind184459%_)
             (let* ((_%bind184460184467%_ _%bind184459%_)
                    (_%E184462184470%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind184460184467%_
                              '([id . rest]))
                       '#!void))
                    (_%K184463184579%_
                     (lambda (_%rest184473%_ _%id184474%_)
                       (gx#core-context-put!
                        _%self184449%_
                        _%id184474%_
                        (let ((__obj184951
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj184951
                           _%id184474%_
                           _%id184474%_
                           '#f
                           (let* ((_%rest184475184486%_ _%rest184473%_)
                                  (_%E184477184490%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest184475184486%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K184478184555%_
                                   (lambda (_%compiler184493%_
                                            _%expander184494%_
                                            _%key184495%_)
                                     ((let* ((_%key184496184509%_
                                              _%key184495%_)
                                             (_%E184502184513%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key184496184509%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K184507184549%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K184506184542%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K184505184534%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K184504184526%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K184503184518%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match184501184521%_
                                                  (lambda ()
                                                    (if (##eq? _%key184496184509%_
                                                               'expr:)
                                                        (_%K184503184518%_)
                                                        (_%E184502184513%_))))
                                                 (_%try-match184500184529%_
                                                  (lambda ()
                                                    (if (##eq? _%key184496184509%_
                                                               'special:)
                                                        (_%K184504184526%_)
                                                        (_%try-match184501184521%_))))
                                                 (_%try-match184499184537%_
                                                  (lambda ()
                                                    (if (##eq? _%key184496184509%_
                                                               'define:)
                                                        (_%K184505184534%_)
                                                        (_%try-match184500184529%_))))
                                                 (_%try-match184498184545%_
                                                  (lambda ()
                                                    (if (##eq? _%key184496184509%_
                                                               'module:)
                                                        (_%K184506184542%_)
                                                        (_%try-match184499184537%_)))))
                                            (if (##eq? _%key184496184509%_
                                                       'top:)
                                                (_%K184507184549%_)
                                                (_%try-match184498184545%_)))))
                                      _%expander184494%_
                                      _%id184474%_
                                      (let ((_%$e184552%_ _%compiler184493%_))
                                        (if _%$e184552%_
                                            _%$e184552%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest184475184486%_)
                                 (let ((_%hd184479184558%_
                                        (##car _%rest184475184486%_))
                                       (_%tl184480184560%_
                                        (##cdr _%rest184475184486%_)))
                                   (let ((_%key184563%_ _%hd184479184558%_))
                                     (if (pair? _%tl184480184560%_)
                                         (let ((_%hd184481184565%_
                                                (##car _%tl184480184560%_))
                                               (_%tl184482184567%_
                                                (##cdr _%tl184480184560%_)))
                                           (let ((_%expander184570%_
                                                  _%hd184481184565%_))
                                             (if (pair? _%tl184482184567%_)
                                                 (let ((_%hd184483184572%_
                                                        (##car _%tl184482184567%_))
                                                       (_%tl184484184574%_
                                                        (##cdr _%tl184482184567%_)))
                                                   (let ((_%compiler184577%_
                                                          _%hd184483184572%_))
                                                     (if (null? _%tl184484184574%_)
                                                         (_%K184478184555%_
                                                          _%compiler184577%_
                                                          _%expander184570%_
                                                          _%key184563%_)
                                                         (_%E184477184490%_))))
                                                 (_%E184477184490%_))))
                                         (_%E184477184490%_))))
                                 (_%E184477184490%_))))
                          __obj184951)))))
               (if (pair? _%bind184460184467%_)
                   (let ((_%hd184464184582%_ (##car _%bind184460184467%_))
                         (_%tl184465184584%_ (##cdr _%bind184460184467%_)))
                     (let* ((_%id184587%_ _%hd184464184582%_)
                            (_%rest184589%_ _%tl184465184584%_))
                       (_%K184463184579%_ _%rest184589%_ _%id184587%_)))
                   (_%E184462184470%_))))
           _%bindings184446%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self184594%_)
        (let ((_%bindings184596%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self184594%_
           _%bindings184596%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g184959_
        (let ((_g184960_ (##length _g184959_)))
          (cond ((##fx= _g184960_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g184959_))
                ((##fx= _g184960_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g184959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g184959_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self184207%_ _%bindings184208%_)
        (let ((_%self184211%_ _%self184207%_))
          (for-each
           (lambda (_%bind184221%_)
             (let* ((_%bind184222184229%_ _%bind184221%_)
                    (_%E184224184232%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind184222184229%_
                              '([id . rest]))
                       '#!void))
                    (_%K184225184300%_
                     (lambda (_%rest184235%_ _%id184236%_)
                       (gx#core-context-put!
                        _%self184211%_
                        _%id184236%_
                        (let ((__obj184952
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj184952
                           _%id184236%_
                           _%id184236%_
                           '#f
                           (let* ((_%rest184237184252%_ _%rest184235%_)
                                  (_%E184241184256%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest184237184252%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K184246184285%_
                                    (lambda (_%core-id184283%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id184283%_)))
                                   (_%K184243184270%_
                                    (lambda (_%proc184268%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc184268%_)))
                                   (_%K184242184261%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id184236%_))))
                               (let ((_%try-match184240184264%_
                                      (lambda ()
                                        (if (null? _%rest184237184252%_)
                                            (_%K184242184261%_)
                                            (_%E184241184256%_)))))
                                 (if (pair? _%rest184237184252%_)
                                     (let ((_%tl184248184290%_
                                            (##cdr _%rest184237184252%_))
                                           (_%hd184247184288%_
                                            (##car _%rest184237184252%_)))
                                       (if (##eq? _%hd184247184288%_ '=>)
                                           (if (pair? _%tl184248184290%_)
                                               (let ((_%tl184250184295%_
                                                      (##cdr _%tl184248184290%_))
                                                     (_%hd184249184293%_
                                                      (##car _%tl184248184290%_)))
                                                 (if (null? _%tl184250184295%_)
                                                     (let ((_%core-id184298%_
                                                            _%hd184249184293%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id184298%_))
                                                     (_%E184241184256%_)))
                                               (if (null? _%tl184248184290%_)
                                                   (let ((_%proc184278%_
                                                          _%hd184247184288%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc184278%_))
                                                   (_%E184241184256%_)))
                                           (if (null? _%tl184248184290%_)
                                               (let ((_%proc184278%_
                                                      _%hd184247184288%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc184278%_))
                                               (_%E184241184256%_))))
                                     (_%try-match184240184264%_))))))
                          __obj184952)))))
               (if (pair? _%bind184222184229%_)
                   (let ((_%hd184226184303%_ (##car _%bind184222184229%_))
                         (_%tl184227184305%_ (##cdr _%bind184222184229%_)))
                     (let* ((_%id184308%_ _%hd184226184303%_)
                            (_%rest184310%_ _%tl184227184305%_))
                       (_%K184225184300%_ _%rest184310%_ _%id184308%_)))
                   (_%E184224184232%_))))
           _%bindings184208%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self184315%_)
        (let ((_%bindings184317%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self184315%_
           _%bindings184317%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g184961_
        (let ((_g184962_ (##length _g184961_)))
          (cond ((##fx= _g184962_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g184961_))
                ((##fx= _g184962_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g184961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g184961_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self183938%_)
        (let ((_%self183941%_ _%self183938%_))
          (letrec ((_%linux-variant?183952%_
                    (lambda (_%sys-type184052%_)
                      (let* ((_%g184053184061%_
                              (__string-split
                               (symbol->string _%sys-type184052%_)
                               '#\-))
                             (_%else184055184069%_ (lambda () '#f))
                             (_%K184057184074%_
                              (lambda (_%rest184072%_)
                                (not (null? _%rest184072%_)))))
                        (if (pair? _%g184053184061%_)
                            (let ((_%hd184058184077%_
                                   (##car _%g184053184061%_))
                                  (_%tl184059184079%_
                                   (##cdr _%g184053184061%_)))
                              (if (equal? _%hd184058184077%_ '"linux")
                                  (let ((_%rest184082%_ _%tl184059184079%_))
                                    (_%K184057184074%_ _%rest184082%_))
                                  (_%else184055184069%_)))
                            (_%else184055184069%_)))))
                   (_%bsd-variant183953%_
                    (lambda (_%sys-type184011%_)
                      (let ((_%sys-type-str184013%_
                             (symbol->string _%sys-type184011%_)))
                        (let _%lp184015%_ ((_%rest184017%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest184018184026%_ _%rest184017%_)
                                 (_%else184020184034%_ (lambda () '#f))
                                 (_%K184022184040%_
                                  (lambda (_%rest184037%_ _%sys184038%_)
                                    (if (string-prefix?
                                         _%sys184038%_
                                         _%sys-type-str184013%_)
                                        _%sys184038%_
                                        (_%lp184015%_ _%rest184037%_)))))
                            (if (pair? _%rest184018184026%_)
                                (let ((_%hd184023184043%_
                                       (##car _%rest184018184026%_))
                                      (_%tl184024184045%_
                                       (##cdr _%rest184018184026%_)))
                                  (let* ((_%sys184048%_ _%hd184023184043%_)
                                         (_%rest184050%_ _%tl184024184045%_))
                                    (_%K184022184040%_
                                     _%rest184050%_
                                     _%sys184048%_)))
                                (_%else184020184034%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self183941%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self183941%_)
            (let* ((_%g183954183966%_ (system-type))
                   (_%else183956183974%_ (lambda () '#!void))
                   (_%K183958183987%_
                    (lambda (_%sys-type183977%_
                             _%sys-vendor183978%_
                             _%sys-cpu183979%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu183979%_
                       '#f
                       '0
                       _%self183941%_)
                      (gx#core-bind-feature!__%
                       _%sys-type183977%_
                       '#f
                       '0
                       _%self183941%_)
                      (if (_%linux-variant?183952%_ _%sys-type183977%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self183941%_)
                          (let ((_%$e183982%_
                                 (_%bsd-variant183953%_ _%sys-type183977%_)))
                            (if _%$e183982%_
                                ((lambda (_%sys-prefix183985%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self183941%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix183985%_)
                                    '#f
                                    '0
                                    _%self183941%_))
                                 _%$e183982%_)
                                '#!void))))))
              (if (pair? _%g183954183966%_)
                  (let ((_%hd183959183990%_ (##car _%g183954183966%_))
                        (_%tl183960183992%_ (##cdr _%g183954183966%_)))
                    (let ((_%sys-cpu183995%_ _%hd183959183990%_))
                      (if (pair? _%tl183960183992%_)
                          (let ((_%hd183961183997%_ (##car _%tl183960183992%_))
                                (_%tl183962183999%_
                                 (##cdr _%tl183960183992%_)))
                            (let ((_%sys-vendor184002%_ _%hd183961183997%_))
                              (if (pair? _%tl183962183999%_)
                                  (let ((_%hd183963184004%_
                                         (##car _%tl183962183999%_))
                                        (_%tl183964184006%_
                                         (##cdr _%tl183962183999%_)))
                                    (let ((_%sys-type184009%_
                                           _%hd183963184004%_))
                                      (if (null? _%tl183964184006%_)
                                          (_%K183958183987%_
                                           _%sys-type184009%_
                                           _%sys-vendor184002%_
                                           _%sys-cpu183995%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self183941%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
