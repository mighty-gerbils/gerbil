(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707620171)
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
      (lambda (_self172612_ _bind?172613_)
        (if (##fx< '2 (##structure-length _self172612_))
            (begin
              (##unchecked-structure-set!
               _self172612_
               'root
               '1
               (##structure-type _self172612_)
               '#f)
              (##unchecked-structure-set!
               _self172612_
               (make-table 'test: eq?)
               '2
               (##structure-type _self172612_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self172612_
                   '2
                   (##vector-length _self172612_)))
        (if _bind?172613_
            (begin
              (let ((__method177131
                     (method-ref _self172612_ 'bind-core-syntax-expanders!)))
                (if __method177131
                    (__method177131 _self172612_)
                    (error '"Missing method"
                           _self172612_
                           'bind-core-syntax-expanders!)))
              (let ((__method177132
                     (method-ref _self172612_ 'bind-core-macro-expanders!)))
                (if __method177132
                    (__method177132 _self172612_)
                    (error '"Missing method"
                           _self172612_
                           'bind-core-macro-expanders!)))
              (let ((__method177133
                     (method-ref _self172612_ 'bind-core-features!)))
                (if __method177133
                    (__method177133 _self172612_)
                    (error '"Missing method"
                           _self172612_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self172618_)
        (let ((_bind?172620_ '#t))
          (gx#root-context:::init!__% _self172618_ _bind?172620_))))
    (define gx#root-context:::init!
      (lambda _g177136_
        (let ((_g177135_ (##length _g177136_)))
          (cond ((##fx= _g177135_ 1)
                 (apply (lambda (_self172618_)
                          (gx#root-context:::init!__0 _self172618_))
                        _g177136_))
                ((##fx= _g177135_ 2)
                 (apply (lambda (_self172622_ _bind?172623_)
                          (gx#root-context:::init!__%
                           _self172622_
                           _bind?172623_))
                        _g177136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g177136_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t177092)
        (let ((__bind-core-features!177093
               (make-promise
                (lambda ()
                  (let ((__tmp177096
                         (direct-method-ref __t177092 'bind-core-features!)))
                    (if __tmp177096
                        __tmp177096
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!177094
               (make-promise
                (lambda ()
                  (let ((__tmp177097
                         (direct-method-ref
                          __t177092
                          'bind-core-syntax-expanders!)))
                    (if __tmp177097
                        __tmp177097
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!177095
               (make-promise
                (lambda ()
                  (let ((__tmp177098
                         (direct-method-ref
                          __t177092
                          'bind-core-macro-expanders!)))
                    (if __tmp177098
                        __tmp177098
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda172610172615_
                 (lambda (_self172612_ _bind?172613_)
                   (if (##fx< '2 (##structure-length _self172612_))
                       (begin
                         (##unchecked-structure-set!
                          _self172612_
                          'root
                          '1
                          (##structure-type _self172612_)
                          '#f)
                         (##unchecked-structure-set!
                          _self172612_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self172612_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self172612_
                              '2
                              (##vector-length _self172612_)))
                   (if _bind?172613_
                       (begin
                         ((force __bind-core-syntax-expanders!177094)
                          _self172612_)
                         ((force __bind-core-macro-expanders!177095)
                          _self172612_)
                         ((force __bind-core-features!177093) _self172612_))
                       '#!void))))
            (lambda _g177138_
              (let ((_g177137_ (##length _g177138_)))
                (cond ((##fx= _g177137_ 1)
                       (apply (lambda (_self172618_)
                                (let ((_bind?172620_ '#t))
                                  (_opt-lambda172610172615_
                                   _self172618_
                                   _bind?172620_)))
                              _g177138_))
                      ((##fx= _g177137_ 2)
                       (apply (lambda (_self172622_ _bind?172623_)
                                (_opt-lambda172610172615_
                                 _self172622_
                                 _bind?172623_))
                              _g177138_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g177138_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self172468_ _super172469_)
        (let ((_super172477_
               (let ((_$e172471_ _super172469_))
                 (if _$e172471_
                     _$e172471_
                     (let ((_$e172474_ (gx#core-context-root__0)))
                       (if _$e172474_
                           _$e172474_
                           (let ((__obj177134
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj177134)
                             __obj177134)))))))
          (if (##fx< '5 (##structure-length _self172468_))
              (begin
                (##unchecked-structure-set!
                 _self172468_
                 'top
                 '1
                 (##structure-type _self172468_)
                 '#f)
                (##unchecked-structure-set!
                 _self172468_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self172468_)
                 '#f)
                (##unchecked-structure-set!
                 _self172468_
                 _super172477_
                 '3
                 (##structure-type _self172468_)
                 '#f)
                (##unchecked-structure-set!
                 _self172468_
                 '#f
                 '4
                 (##structure-type _self172468_)
                 '#f)
                (##unchecked-structure-set!
                 _self172468_
                 '#f
                 '5
                 (##structure-type _self172468_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self172468_
                     '5
                     (##vector-length _self172468_))))))
    (define gx#top-context:::init!__0
      (lambda (_self172482_)
        (let ((_super172484_ '#f))
          (gx#top-context:::init!__% _self172482_ _super172484_))))
    (define gx#top-context:::init!
      (lambda _g177140_
        (let ((_g177139_ (##length _g177140_)))
          (cond ((##fx= _g177139_ 1)
                 (apply (lambda (_self172482_)
                          (gx#top-context:::init!__0 _self172482_))
                        _g177140_))
                ((##fx= _g177139_ 2)
                 (apply (lambda (_self172486_ _super172487_)
                          (gx#top-context:::init!__%
                           _self172486_
                           _super172487_))
                        _g177140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g177140_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self172199_ _bindings172200_)
        (for-each
         (lambda (_bind172202_)
           (let* ((_bind172203172210_ _bind172202_)
                  (_E172205172214_
                   (lambda ()
                     (error '"No clause matching" _bind172203172210_)))
                  (_K172206172323_
                   (lambda (_rest172217_ _id172218_)
                     (gx#core-context-put!
                      _self172199_
                      _id172218_
                      (##structure
                       gx#syntax-binding::t
                       _id172218_
                       _id172218_
                       '#f
                       (let* ((_rest172219172230_ _rest172217_)
                              (_E172221172234_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest172219172230_)))
                              (_K172222172299_
                               (lambda (_compiler172237_
                                        _expander172238_
                                        _key172239_)
                                 ((let* ((_key172240172253_ _key172239_)
                                         (_E172246172257_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key172240172253_))))
                                    (let ((_K172251172293_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K172250172286_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K172249172278_
                                           (lambda () gx#make-definition-form))
                                          (_K172248172270_
                                           (lambda () gx#make-special-form))
                                          (_K172247172262_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match172245172265_
                                              (lambda ()
                                                (if (##eq? _key172240172253_
                                                           'expr:)
                                                    (_K172247172262_)
                                                    (_E172246172257_))))
                                             (_try-match172244172273_
                                              (lambda ()
                                                (if (##eq? _key172240172253_
                                                           'special:)
                                                    (_K172248172270_)
                                                    (_try-match172245172265_))))
                                             (_try-match172243172281_
                                              (lambda ()
                                                (if (##eq? _key172240172253_
                                                           'define:)
                                                    (_K172249172278_)
                                                    (_try-match172244172273_))))
                                             (_try-match172242172289_
                                              (lambda ()
                                                (if (##eq? _key172240172253_
                                                           'module:)
                                                    (_K172250172286_)
                                                    (_try-match172243172281_)))))
                                        (if (##eq? _key172240172253_ 'top:)
                                            (_K172251172293_)
                                            (_try-match172242172289_)))))
                                  _expander172238_
                                  _id172218_
                                  (let ((_$e172296_ _compiler172237_))
                                    (if _$e172296_
                                        _$e172296_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest172219172230_)
                             (let ((_hd172223172302_
                                    (##car _rest172219172230_))
                                   (_tl172224172304_
                                    (##cdr _rest172219172230_)))
                               (let ((_key172307_ _hd172223172302_))
                                 (if (##pair? _tl172224172304_)
                                     (let ((_hd172225172309_
                                            (##car _tl172224172304_))
                                           (_tl172226172311_
                                            (##cdr _tl172224172304_)))
                                       (let ((_expander172314_
                                              _hd172225172309_))
                                         (if (##pair? _tl172226172311_)
                                             (let ((_hd172227172316_
                                                    (##car _tl172226172311_))
                                                   (_tl172228172318_
                                                    (##cdr _tl172226172311_)))
                                               (let ((_compiler172321_
                                                      _hd172227172316_))
                                                 (if (##null? _tl172228172318_)
                                                     (_K172222172299_
                                                      _compiler172321_
                                                      _expander172314_
                                                      _key172307_)
                                                     (_E172221172234_))))
                                             (_E172221172234_))))
                                     (_E172221172234_))))
                             (_E172221172234_))))))))
             (if (##pair? _bind172203172210_)
                 (let ((_hd172207172326_ (##car _bind172203172210_))
                       (_tl172208172328_ (##cdr _bind172203172210_)))
                   (let* ((_id172331_ _hd172207172326_)
                          (_rest172333_ _tl172208172328_))
                     (_K172206172323_ _rest172333_ _id172331_)))
                 (_E172205172214_))))
         _bindings172200_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self172338_)
        (let ((_bindings172340_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self172338_
           _bindings172340_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g177142_
        (let ((_g177141_ (##length _g177142_)))
          (cond ((##fx= _g177141_ 1)
                 (apply (lambda (_self172338_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self172338_))
                        _g177142_))
                ((##fx= _g177141_ 2)
                 (apply (lambda (_self172342_ _bindings172343_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self172342_
                           _bindings172343_))
                        _g177142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g177142_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self171971_ _bindings171972_)
        (for-each
         (lambda (_bind171974_)
           (let* ((_bind171975171982_ _bind171974_)
                  (_E171977171986_
                   (lambda ()
                     (error '"No clause matching" _bind171975171982_)))
                  (_K171978172054_
                   (lambda (_rest171989_ _id171990_)
                     (gx#core-context-put!
                      _self171971_
                      _id171990_
                      (##structure
                       gx#syntax-binding::t
                       _id171990_
                       _id171990_
                       '#f
                       (let* ((_rest171991172006_ _rest171989_)
                              (_E171995172010_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest171991172006_))))
                         (let ((_K172000172039_
                                (lambda (_core-id172037_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id172037_)))
                               (_K171997172024_
                                (lambda (_proc172022_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc172022_)))
                               (_K171996172015_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id171990_))))
                           (let ((_try-match171994172018_
                                  (lambda ()
                                    (if (##null? _rest171991172006_)
                                        (_K171996172015_)
                                        (_E171995172010_)))))
                             (if (##pair? _rest171991172006_)
                                 (let ((_tl172002172044_
                                        (##cdr _rest171991172006_))
                                       (_hd172001172042_
                                        (##car _rest171991172006_)))
                                   (if (##eq? _hd172001172042_ '=>)
                                       (if (##pair? _tl172002172044_)
                                           (let ((_tl172004172049_
                                                  (##cdr _tl172002172044_))
                                                 (_hd172003172047_
                                                  (##car _tl172002172044_)))
                                             (if (##null? _tl172004172049_)
                                                 (let ((_core-id172052_
                                                        _hd172003172047_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id172052_))
                                                 (_E171995172010_)))
                                           (if (##null? _tl172002172044_)
                                               (let ((_proc172032_
                                                      _hd172001172042_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc172032_))
                                               (_E171995172010_)))
                                       (if (##null? _tl172002172044_)
                                           (let ((_proc172032_
                                                  _hd172001172042_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc172032_))
                                           (_E171995172010_))))
                                 (_try-match171994172018_))))))))))
             (if (##pair? _bind171975171982_)
                 (let ((_hd171979172057_ (##car _bind171975171982_))
                       (_tl171980172059_ (##cdr _bind171975171982_)))
                   (let* ((_id172062_ _hd171979172057_)
                          (_rest172064_ _tl171980172059_))
                     (_K171978172054_ _rest172064_ _id172062_)))
                 (_E171977171986_))))
         _bindings171972_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self172069_)
        (let ((_bindings172071_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self172069_
           _bindings172071_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g177144_
        (let ((_g177143_ (##length _g177144_)))
          (cond ((##fx= _g177143_ 1)
                 (apply (lambda (_self172069_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self172069_))
                        _g177144_))
                ((##fx= _g177143_ 2)
                 (apply (lambda (_self172073_ _bindings172074_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self172073_
                           _bindings172074_))
                        _g177144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g177144_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self171715_)
        (letrec ((_linux-variant?171717_
                  (lambda (_sys-type171816_)
                    (let* ((_g171817171825_
                            (string-split
                             (symbol->string _sys-type171816_)
                             '#\-))
                           (_else171819171833_ (lambda () '#f))
                           (_K171821171838_
                            (lambda (_rest171836_)
                              (not (null? _rest171836_)))))
                      (if (##pair? _g171817171825_)
                          (let ((_hd171822171841_ (##car _g171817171825_))
                                (_tl171823171843_ (##cdr _g171817171825_)))
                            (if (equal? _hd171822171841_ '"linux")
                                (let ((_rest171846_ _tl171823171843_))
                                  (_K171821171838_ _rest171846_))
                                (_else171819171833_)))
                          (_else171819171833_)))))
                 (_bsd-variant171718_
                  (lambda (_sys-type171775_)
                    (let ((_sys-type-str171777_
                           (symbol->string _sys-type171775_)))
                      (let _lp171779_ ((_rest171781_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest171782171790_ _rest171781_)
                               (_else171784171798_ (lambda () '#f))
                               (_K171786171804_
                                (lambda (_rest171801_ _sys171802_)
                                  (if (string-prefix?
                                       _sys171802_
                                       _sys-type-str171777_)
                                      _sys171802_
                                      (_lp171779_ _rest171801_)))))
                          (if (##pair? _rest171782171790_)
                              (let ((_hd171787171807_
                                     (##car _rest171782171790_))
                                    (_tl171788171809_
                                     (##cdr _rest171782171790_)))
                                (let* ((_sys171812_ _hd171787171807_)
                                       (_rest171814_ _tl171788171809_))
                                  (_K171786171804_ _rest171814_ _sys171812_)))
                              (_else171784171798_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self171715_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self171715_)
          (let* ((_g171719171731_ (system-type))
                 (_else171721171739_ (lambda () '#!void))
                 (_K171723171751_
                  (lambda (_sys-type171742_ _sys-vendor171743_ _sys-cpu171744_)
                    (gx#core-bind-feature!__%
                     _sys-cpu171744_
                     '#f
                     '0
                     _self171715_)
                    (gx#core-bind-feature!__%
                     _sys-type171742_
                     '#f
                     '0
                     _self171715_)
                    (if (_linux-variant?171717_ _sys-type171742_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self171715_)
                        (let ((_$e171746_
                               (_bsd-variant171718_ _sys-type171742_)))
                          (if _$e171746_
                              ((lambda (_sys-prefix171749_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self171715_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix171749_)
                                  '#f
                                  '0
                                  _self171715_))
                               _$e171746_)
                              '#!void))))))
            (if (##pair? _g171719171731_)
                (let ((_hd171724171754_ (##car _g171719171731_))
                      (_tl171725171756_ (##cdr _g171719171731_)))
                  (let ((_sys-cpu171759_ _hd171724171754_))
                    (if (##pair? _tl171725171756_)
                        (let ((_hd171726171761_ (##car _tl171725171756_))
                              (_tl171727171763_ (##cdr _tl171725171756_)))
                          (let ((_sys-vendor171766_ _hd171726171761_))
                            (if (##pair? _tl171727171763_)
                                (let ((_hd171728171768_
                                       (##car _tl171727171763_))
                                      (_tl171729171770_
                                       (##cdr _tl171727171763_)))
                                  (let ((_sys-type171773_ _hd171728171768_))
                                    (if (##null? _tl171729171770_)
                                        (_K171723171751_
                                         _sys-type171773_
                                         _sys-vendor171766_
                                         _sys-cpu171759_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self171715_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
