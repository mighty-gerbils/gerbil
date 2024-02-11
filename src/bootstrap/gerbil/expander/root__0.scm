(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707610214)
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
      (lambda (_self172598_ _bind?172599_)
        (if (##fx< '2 (##structure-length _self172598_))
            (begin
              (##unchecked-structure-set!
               _self172598_
               'root
               '1
               (##structure-type _self172598_)
               '#f)
              (##unchecked-structure-set!
               _self172598_
               (make-table 'test: eq?)
               '2
               (##structure-type _self172598_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self172598_
                   '2
                   (##vector-length _self172598_)))
        (if _bind?172599_
            (begin
              (let ((__method177117
                     (method-ref _self172598_ 'bind-core-syntax-expanders!)))
                (if __method177117
                    (__method177117 _self172598_)
                    (error '"Missing method"
                           _self172598_
                           'bind-core-syntax-expanders!)))
              (let ((__method177118
                     (method-ref _self172598_ 'bind-core-macro-expanders!)))
                (if __method177118
                    (__method177118 _self172598_)
                    (error '"Missing method"
                           _self172598_
                           'bind-core-macro-expanders!)))
              (let ((__method177119
                     (method-ref _self172598_ 'bind-core-features!)))
                (if __method177119
                    (__method177119 _self172598_)
                    (error '"Missing method"
                           _self172598_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self172604_)
        (let ((_bind?172606_ '#t))
          (gx#root-context:::init!__% _self172604_ _bind?172606_))))
    (define gx#root-context:::init!
      (lambda _g177122_
        (let ((_g177121_ (##length _g177122_)))
          (cond ((##fx= _g177121_ 1)
                 (apply (lambda (_self172604_)
                          (gx#root-context:::init!__0 _self172604_))
                        _g177122_))
                ((##fx= _g177121_ 2)
                 (apply (lambda (_self172608_ _bind?172609_)
                          (gx#root-context:::init!__%
                           _self172608_
                           _bind?172609_))
                        _g177122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g177122_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t177078)
        (let ((__bind-core-syntax-expanders!177079
               (make-promise
                (lambda ()
                  (let ((__tmp177082
                         (direct-method-ref
                          __t177078
                          'bind-core-syntax-expanders!)))
                    (if __tmp177082
                        __tmp177082
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!177080
               (make-promise
                (lambda ()
                  (let ((__tmp177083
                         (direct-method-ref
                          __t177078
                          'bind-core-macro-expanders!)))
                    (if __tmp177083
                        __tmp177083
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!177081
               (make-promise
                (lambda ()
                  (let ((__tmp177084
                         (direct-method-ref __t177078 'bind-core-features!)))
                    (if __tmp177084
                        __tmp177084
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda172596172601_
                 (lambda (_self172598_ _bind?172599_)
                   (if (##fx< '2 (##structure-length _self172598_))
                       (begin
                         (##unchecked-structure-set!
                          _self172598_
                          'root
                          '1
                          (##structure-type _self172598_)
                          '#f)
                         (##unchecked-structure-set!
                          _self172598_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self172598_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self172598_
                              '2
                              (##vector-length _self172598_)))
                   (if _bind?172599_
                       (begin
                         ((force __bind-core-syntax-expanders!177079)
                          _self172598_)
                         ((force __bind-core-macro-expanders!177080)
                          _self172598_)
                         ((force __bind-core-features!177081) _self172598_))
                       '#!void))))
            (lambda _g177124_
              (let ((_g177123_ (##length _g177124_)))
                (cond ((##fx= _g177123_ 1)
                       (apply (lambda (_self172604_)
                                (let ((_bind?172606_ '#t))
                                  (_opt-lambda172596172601_
                                   _self172604_
                                   _bind?172606_)))
                              _g177124_))
                      ((##fx= _g177123_ 2)
                       (apply (lambda (_self172608_ _bind?172609_)
                                (_opt-lambda172596172601_
                                 _self172608_
                                 _bind?172609_))
                              _g177124_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g177124_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self172454_ _super172455_)
        (let ((_super172463_
               (let ((_$e172457_ _super172455_))
                 (if _$e172457_
                     _$e172457_
                     (let ((_$e172460_ (gx#core-context-root__0)))
                       (if _$e172460_
                           _$e172460_
                           (let ((__obj177120
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj177120)
                             __obj177120)))))))
          (if (##fx< '5 (##structure-length _self172454_))
              (begin
                (##unchecked-structure-set!
                 _self172454_
                 'top
                 '1
                 (##structure-type _self172454_)
                 '#f)
                (##unchecked-structure-set!
                 _self172454_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self172454_)
                 '#f)
                (##unchecked-structure-set!
                 _self172454_
                 _super172463_
                 '3
                 (##structure-type _self172454_)
                 '#f)
                (##unchecked-structure-set!
                 _self172454_
                 '#f
                 '4
                 (##structure-type _self172454_)
                 '#f)
                (##unchecked-structure-set!
                 _self172454_
                 '#f
                 '5
                 (##structure-type _self172454_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self172454_
                     '5
                     (##vector-length _self172454_))))))
    (define gx#top-context:::init!__0
      (lambda (_self172468_)
        (let ((_super172470_ '#f))
          (gx#top-context:::init!__% _self172468_ _super172470_))))
    (define gx#top-context:::init!
      (lambda _g177126_
        (let ((_g177125_ (##length _g177126_)))
          (cond ((##fx= _g177125_ 1)
                 (apply (lambda (_self172468_)
                          (gx#top-context:::init!__0 _self172468_))
                        _g177126_))
                ((##fx= _g177125_ 2)
                 (apply (lambda (_self172472_ _super172473_)
                          (gx#top-context:::init!__%
                           _self172472_
                           _super172473_))
                        _g177126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g177126_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self172185_ _bindings172186_)
        (for-each
         (lambda (_bind172188_)
           (let* ((_bind172189172196_ _bind172188_)
                  (_E172191172200_
                   (lambda ()
                     (error '"No clause matching" _bind172189172196_)))
                  (_K172192172309_
                   (lambda (_rest172203_ _id172204_)
                     (gx#core-context-put!
                      _self172185_
                      _id172204_
                      (##structure
                       gx#syntax-binding::t
                       _id172204_
                       _id172204_
                       '#f
                       (let* ((_rest172205172216_ _rest172203_)
                              (_E172207172220_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest172205172216_)))
                              (_K172208172285_
                               (lambda (_compiler172223_
                                        _expander172224_
                                        _key172225_)
                                 ((let* ((_key172226172239_ _key172225_)
                                         (_E172232172243_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key172226172239_))))
                                    (let ((_K172237172279_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K172236172272_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K172235172264_
                                           (lambda () gx#make-definition-form))
                                          (_K172234172256_
                                           (lambda () gx#make-special-form))
                                          (_K172233172248_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match172231172251_
                                              (lambda ()
                                                (if (##eq? _key172226172239_
                                                           'expr:)
                                                    (_K172233172248_)
                                                    (_E172232172243_))))
                                             (_try-match172230172259_
                                              (lambda ()
                                                (if (##eq? _key172226172239_
                                                           'special:)
                                                    (_K172234172256_)
                                                    (_try-match172231172251_))))
                                             (_try-match172229172267_
                                              (lambda ()
                                                (if (##eq? _key172226172239_
                                                           'define:)
                                                    (_K172235172264_)
                                                    (_try-match172230172259_))))
                                             (_try-match172228172275_
                                              (lambda ()
                                                (if (##eq? _key172226172239_
                                                           'module:)
                                                    (_K172236172272_)
                                                    (_try-match172229172267_)))))
                                        (if (##eq? _key172226172239_ 'top:)
                                            (_K172237172279_)
                                            (_try-match172228172275_)))))
                                  _expander172224_
                                  _id172204_
                                  (let ((_$e172282_ _compiler172223_))
                                    (if _$e172282_
                                        _$e172282_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest172205172216_)
                             (let ((_hd172209172288_
                                    (##car _rest172205172216_))
                                   (_tl172210172290_
                                    (##cdr _rest172205172216_)))
                               (let ((_key172293_ _hd172209172288_))
                                 (if (##pair? _tl172210172290_)
                                     (let ((_hd172211172295_
                                            (##car _tl172210172290_))
                                           (_tl172212172297_
                                            (##cdr _tl172210172290_)))
                                       (let ((_expander172300_
                                              _hd172211172295_))
                                         (if (##pair? _tl172212172297_)
                                             (let ((_hd172213172302_
                                                    (##car _tl172212172297_))
                                                   (_tl172214172304_
                                                    (##cdr _tl172212172297_)))
                                               (let ((_compiler172307_
                                                      _hd172213172302_))
                                                 (if (##null? _tl172214172304_)
                                                     (_K172208172285_
                                                      _compiler172307_
                                                      _expander172300_
                                                      _key172293_)
                                                     (_E172207172220_))))
                                             (_E172207172220_))))
                                     (_E172207172220_))))
                             (_E172207172220_))))))))
             (if (##pair? _bind172189172196_)
                 (let ((_hd172193172312_ (##car _bind172189172196_))
                       (_tl172194172314_ (##cdr _bind172189172196_)))
                   (let* ((_id172317_ _hd172193172312_)
                          (_rest172319_ _tl172194172314_))
                     (_K172192172309_ _rest172319_ _id172317_)))
                 (_E172191172200_))))
         _bindings172186_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self172324_)
        (let ((_bindings172326_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self172324_
           _bindings172326_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g177128_
        (let ((_g177127_ (##length _g177128_)))
          (cond ((##fx= _g177127_ 1)
                 (apply (lambda (_self172324_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self172324_))
                        _g177128_))
                ((##fx= _g177127_ 2)
                 (apply (lambda (_self172328_ _bindings172329_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self172328_
                           _bindings172329_))
                        _g177128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g177128_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self171957_ _bindings171958_)
        (for-each
         (lambda (_bind171960_)
           (let* ((_bind171961171968_ _bind171960_)
                  (_E171963171972_
                   (lambda ()
                     (error '"No clause matching" _bind171961171968_)))
                  (_K171964172040_
                   (lambda (_rest171975_ _id171976_)
                     (gx#core-context-put!
                      _self171957_
                      _id171976_
                      (##structure
                       gx#syntax-binding::t
                       _id171976_
                       _id171976_
                       '#f
                       (let* ((_rest171977171992_ _rest171975_)
                              (_E171981171996_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest171977171992_))))
                         (let ((_K171986172025_
                                (lambda (_core-id172023_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id172023_)))
                               (_K171983172010_
                                (lambda (_proc172008_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc172008_)))
                               (_K171982172001_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id171976_))))
                           (let ((_try-match171980172004_
                                  (lambda ()
                                    (if (##null? _rest171977171992_)
                                        (_K171982172001_)
                                        (_E171981171996_)))))
                             (if (##pair? _rest171977171992_)
                                 (let ((_tl171988172030_
                                        (##cdr _rest171977171992_))
                                       (_hd171987172028_
                                        (##car _rest171977171992_)))
                                   (if (##eq? _hd171987172028_ '=>)
                                       (if (##pair? _tl171988172030_)
                                           (let ((_tl171990172035_
                                                  (##cdr _tl171988172030_))
                                                 (_hd171989172033_
                                                  (##car _tl171988172030_)))
                                             (if (##null? _tl171990172035_)
                                                 (let ((_core-id172038_
                                                        _hd171989172033_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id172038_))
                                                 (_E171981171996_)))
                                           (if (##null? _tl171988172030_)
                                               (let ((_proc172018_
                                                      _hd171987172028_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc172018_))
                                               (_E171981171996_)))
                                       (if (##null? _tl171988172030_)
                                           (let ((_proc172018_
                                                  _hd171987172028_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc172018_))
                                           (_E171981171996_))))
                                 (_try-match171980172004_))))))))))
             (if (##pair? _bind171961171968_)
                 (let ((_hd171965172043_ (##car _bind171961171968_))
                       (_tl171966172045_ (##cdr _bind171961171968_)))
                   (let* ((_id172048_ _hd171965172043_)
                          (_rest172050_ _tl171966172045_))
                     (_K171964172040_ _rest172050_ _id172048_)))
                 (_E171963171972_))))
         _bindings171958_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self172055_)
        (let ((_bindings172057_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self172055_
           _bindings172057_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g177130_
        (let ((_g177129_ (##length _g177130_)))
          (cond ((##fx= _g177129_ 1)
                 (apply (lambda (_self172055_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self172055_))
                        _g177130_))
                ((##fx= _g177129_ 2)
                 (apply (lambda (_self172059_ _bindings172060_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self172059_
                           _bindings172060_))
                        _g177130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g177130_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self171701_)
        (letrec ((_linux-variant?171703_
                  (lambda (_sys-type171802_)
                    (let* ((_g171803171811_
                            (string-split
                             (symbol->string _sys-type171802_)
                             '#\-))
                           (_else171805171819_ (lambda () '#f))
                           (_K171807171824_
                            (lambda (_rest171822_)
                              (not (null? _rest171822_)))))
                      (if (##pair? _g171803171811_)
                          (let ((_hd171808171827_ (##car _g171803171811_))
                                (_tl171809171829_ (##cdr _g171803171811_)))
                            (if (equal? _hd171808171827_ '"linux")
                                (let ((_rest171832_ _tl171809171829_))
                                  (_K171807171824_ _rest171832_))
                                (_else171805171819_)))
                          (_else171805171819_)))))
                 (_bsd-variant171704_
                  (lambda (_sys-type171761_)
                    (let ((_sys-type-str171763_
                           (symbol->string _sys-type171761_)))
                      (let _lp171765_ ((_rest171767_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest171768171776_ _rest171767_)
                               (_else171770171784_ (lambda () '#f))
                               (_K171772171790_
                                (lambda (_rest171787_ _sys171788_)
                                  (if (string-prefix?
                                       _sys171788_
                                       _sys-type-str171763_)
                                      _sys171788_
                                      (_lp171765_ _rest171787_)))))
                          (if (##pair? _rest171768171776_)
                              (let ((_hd171773171793_
                                     (##car _rest171768171776_))
                                    (_tl171774171795_
                                     (##cdr _rest171768171776_)))
                                (let* ((_sys171798_ _hd171773171793_)
                                       (_rest171800_ _tl171774171795_))
                                  (_K171772171790_ _rest171800_ _sys171798_)))
                              (_else171770171784_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self171701_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self171701_)
          (let* ((_g171705171717_ (system-type))
                 (_else171707171725_ (lambda () '#!void))
                 (_K171709171737_
                  (lambda (_sys-type171728_ _sys-vendor171729_ _sys-cpu171730_)
                    (gx#core-bind-feature!__%
                     _sys-cpu171730_
                     '#f
                     '0
                     _self171701_)
                    (gx#core-bind-feature!__%
                     _sys-type171728_
                     '#f
                     '0
                     _self171701_)
                    (if (_linux-variant?171703_ _sys-type171728_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self171701_)
                        (let ((_$e171732_
                               (_bsd-variant171704_ _sys-type171728_)))
                          (if _$e171732_
                              ((lambda (_sys-prefix171735_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self171701_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix171735_)
                                  '#f
                                  '0
                                  _self171701_))
                               _$e171732_)
                              '#!void))))))
            (if (##pair? _g171705171717_)
                (let ((_hd171710171740_ (##car _g171705171717_))
                      (_tl171711171742_ (##cdr _g171705171717_)))
                  (let ((_sys-cpu171745_ _hd171710171740_))
                    (if (##pair? _tl171711171742_)
                        (let ((_hd171712171747_ (##car _tl171711171742_))
                              (_tl171713171749_ (##cdr _tl171711171742_)))
                          (let ((_sys-vendor171752_ _hd171712171747_))
                            (if (##pair? _tl171713171749_)
                                (let ((_hd171714171754_
                                       (##car _tl171713171749_))
                                      (_tl171715171756_
                                       (##cdr _tl171713171749_)))
                                  (let ((_sys-type171759_ _hd171714171754_))
                                    (if (##null? _tl171715171756_)
                                        (_K171709171737_
                                         _sys-type171759_
                                         _sys-vendor171752_
                                         _sys-cpu171745_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self171701_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
