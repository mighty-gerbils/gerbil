(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707847728)
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
      (lambda (_self175632_ _bind?175633_)
        (if (##fx< '2 (##structure-length _self175632_))
            (begin
              (##unchecked-structure-set!
               _self175632_
               'root
               '1
               (##structure-type _self175632_)
               '#f)
              (##unchecked-structure-set!
               _self175632_
               (make-table 'test: eq?)
               '2
               (##structure-type _self175632_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self175632_
                   '2
                   (##vector-length _self175632_)))
        (if _bind?175633_
            (begin
              (let ((__method180251
                     (method-ref _self175632_ 'bind-core-syntax-expanders!)))
                (if __method180251
                    (__method180251 _self175632_)
                    (error '"Missing method"
                           _self175632_
                           'bind-core-syntax-expanders!)))
              (let ((__method180252
                     (method-ref _self175632_ 'bind-core-macro-expanders!)))
                (if __method180252
                    (__method180252 _self175632_)
                    (error '"Missing method"
                           _self175632_
                           'bind-core-macro-expanders!)))
              (let ((__method180253
                     (method-ref _self175632_ 'bind-core-features!)))
                (if __method180253
                    (__method180253 _self175632_)
                    (error '"Missing method"
                           _self175632_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self175638_)
        (let ((_bind?175640_ '#t))
          (gx#root-context:::init!__% _self175638_ _bind?175640_))))
    (define gx#root-context:::init!
      (lambda _g180256_
        (let ((_g180255_ (##length _g180256_)))
          (cond ((##fx= _g180255_ 1)
                 (apply (lambda (_self175638_)
                          (gx#root-context:::init!__0 _self175638_))
                        _g180256_))
                ((##fx= _g180255_ 2)
                 (apply (lambda (_self175642_ _bind?175643_)
                          (gx#root-context:::init!__%
                           _self175642_
                           _bind?175643_))
                        _g180256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g180256_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t180212)
        (let ((__bind-core-features!180213
               (make-promise
                (lambda ()
                  (let ((__tmp180216
                         (direct-method-ref
                          __t180212
                          '#f
                          'bind-core-features!)))
                    (if __tmp180216
                        __tmp180216
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!180214
               (make-promise
                (lambda ()
                  (let ((__tmp180217
                         (direct-method-ref
                          __t180212
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp180217
                        __tmp180217
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!180215
               (make-promise
                (lambda ()
                  (let ((__tmp180218
                         (direct-method-ref
                          __t180212
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp180218
                        __tmp180218
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda175630175635_
                 (lambda (_self175632_ _bind?175633_)
                   (if (##fx< '2 (##structure-length _self175632_))
                       (begin
                         (##unchecked-structure-set!
                          _self175632_
                          'root
                          '1
                          (##structure-type _self175632_)
                          '#f)
                         (##unchecked-structure-set!
                          _self175632_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self175632_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self175632_
                              '2
                              (##vector-length _self175632_)))
                   (if _bind?175633_
                       (begin
                         ((force __bind-core-syntax-expanders!180214)
                          _self175632_)
                         ((force __bind-core-macro-expanders!180215)
                          _self175632_)
                         ((force __bind-core-features!180213) _self175632_))
                       '#!void))))
            (lambda _g180258_
              (let ((_g180257_ (##length _g180258_)))
                (cond ((##fx= _g180257_ 1)
                       (apply (lambda (_self175638_)
                                (let ((_bind?175640_ '#t))
                                  (_opt-lambda175630175635_
                                   _self175638_
                                   _bind?175640_)))
                              _g180258_))
                      ((##fx= _g180257_ 2)
                       (apply (lambda (_self175642_ _bind?175643_)
                                (_opt-lambda175630175635_
                                 _self175642_
                                 _bind?175643_))
                              _g180258_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g180258_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self175488_ _super175489_)
        (let ((_super175497_
               (let ((_$e175491_ _super175489_))
                 (if _$e175491_
                     _$e175491_
                     (let ((_$e175494_ (gx#core-context-root__0)))
                       (if _$e175494_
                           _$e175494_
                           (let ((__obj180254
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj180254)
                             __obj180254)))))))
          (if (##fx< '5 (##structure-length _self175488_))
              (begin
                (##unchecked-structure-set!
                 _self175488_
                 'top
                 '1
                 (##structure-type _self175488_)
                 '#f)
                (##unchecked-structure-set!
                 _self175488_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self175488_)
                 '#f)
                (##unchecked-structure-set!
                 _self175488_
                 _super175497_
                 '3
                 (##structure-type _self175488_)
                 '#f)
                (##unchecked-structure-set!
                 _self175488_
                 '#f
                 '4
                 (##structure-type _self175488_)
                 '#f)
                (##unchecked-structure-set!
                 _self175488_
                 '#f
                 '5
                 (##structure-type _self175488_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self175488_
                     '5
                     (##vector-length _self175488_))))))
    (define gx#top-context:::init!__0
      (lambda (_self175502_)
        (let ((_super175504_ '#f))
          (gx#top-context:::init!__% _self175502_ _super175504_))))
    (define gx#top-context:::init!
      (lambda _g180260_
        (let ((_g180259_ (##length _g180260_)))
          (cond ((##fx= _g180259_ 1)
                 (apply (lambda (_self175502_)
                          (gx#top-context:::init!__0 _self175502_))
                        _g180260_))
                ((##fx= _g180259_ 2)
                 (apply (lambda (_self175506_ _super175507_)
                          (gx#top-context:::init!__%
                           _self175506_
                           _super175507_))
                        _g180260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g180260_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self175219_ _bindings175220_)
        (for-each
         (lambda (_bind175222_)
           (let* ((_bind175223175230_ _bind175222_)
                  (_E175225175234_
                   (lambda ()
                     (error '"No clause matching" _bind175223175230_)))
                  (_K175226175343_
                   (lambda (_rest175237_ _id175238_)
                     (gx#core-context-put!
                      _self175219_
                      _id175238_
                      (##structure
                       gx#syntax-binding::t
                       _id175238_
                       _id175238_
                       '#f
                       (let* ((_rest175239175250_ _rest175237_)
                              (_E175241175254_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest175239175250_)))
                              (_K175242175319_
                               (lambda (_compiler175257_
                                        _expander175258_
                                        _key175259_)
                                 ((let* ((_key175260175273_ _key175259_)
                                         (_E175266175277_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key175260175273_))))
                                    (let ((_K175271175313_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K175270175306_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K175269175298_
                                           (lambda () gx#make-definition-form))
                                          (_K175268175290_
                                           (lambda () gx#make-special-form))
                                          (_K175267175282_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match175265175285_
                                              (lambda ()
                                                (if (##eq? _key175260175273_
                                                           'expr:)
                                                    (_K175267175282_)
                                                    (_E175266175277_))))
                                             (_try-match175264175293_
                                              (lambda ()
                                                (if (##eq? _key175260175273_
                                                           'special:)
                                                    (_K175268175290_)
                                                    (_try-match175265175285_))))
                                             (_try-match175263175301_
                                              (lambda ()
                                                (if (##eq? _key175260175273_
                                                           'define:)
                                                    (_K175269175298_)
                                                    (_try-match175264175293_))))
                                             (_try-match175262175309_
                                              (lambda ()
                                                (if (##eq? _key175260175273_
                                                           'module:)
                                                    (_K175270175306_)
                                                    (_try-match175263175301_)))))
                                        (if (##eq? _key175260175273_ 'top:)
                                            (_K175271175313_)
                                            (_try-match175262175309_)))))
                                  _expander175258_
                                  _id175238_
                                  (let ((_$e175316_ _compiler175257_))
                                    (if _$e175316_
                                        _$e175316_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest175239175250_)
                             (let ((_hd175243175322_
                                    (##car _rest175239175250_))
                                   (_tl175244175324_
                                    (##cdr _rest175239175250_)))
                               (let ((_key175327_ _hd175243175322_))
                                 (if (##pair? _tl175244175324_)
                                     (let ((_hd175245175329_
                                            (##car _tl175244175324_))
                                           (_tl175246175331_
                                            (##cdr _tl175244175324_)))
                                       (let ((_expander175334_
                                              _hd175245175329_))
                                         (if (##pair? _tl175246175331_)
                                             (let ((_hd175247175336_
                                                    (##car _tl175246175331_))
                                                   (_tl175248175338_
                                                    (##cdr _tl175246175331_)))
                                               (let ((_compiler175341_
                                                      _hd175247175336_))
                                                 (if (##null? _tl175248175338_)
                                                     (_K175242175319_
                                                      _compiler175341_
                                                      _expander175334_
                                                      _key175327_)
                                                     (_E175241175254_))))
                                             (_E175241175254_))))
                                     (_E175241175254_))))
                             (_E175241175254_))))))))
             (if (##pair? _bind175223175230_)
                 (let ((_hd175227175346_ (##car _bind175223175230_))
                       (_tl175228175348_ (##cdr _bind175223175230_)))
                   (let* ((_id175351_ _hd175227175346_)
                          (_rest175353_ _tl175228175348_))
                     (_K175226175343_ _rest175353_ _id175351_)))
                 (_E175225175234_))))
         _bindings175220_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self175358_)
        (let ((_bindings175360_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self175358_
           _bindings175360_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g180262_
        (let ((_g180261_ (##length _g180262_)))
          (cond ((##fx= _g180261_ 1)
                 (apply (lambda (_self175358_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self175358_))
                        _g180262_))
                ((##fx= _g180261_ 2)
                 (apply (lambda (_self175362_ _bindings175363_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self175362_
                           _bindings175363_))
                        _g180262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g180262_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self174991_ _bindings174992_)
        (for-each
         (lambda (_bind174994_)
           (let* ((_bind174995175002_ _bind174994_)
                  (_E174997175006_
                   (lambda ()
                     (error '"No clause matching" _bind174995175002_)))
                  (_K174998175074_
                   (lambda (_rest175009_ _id175010_)
                     (gx#core-context-put!
                      _self174991_
                      _id175010_
                      (##structure
                       gx#syntax-binding::t
                       _id175010_
                       _id175010_
                       '#f
                       (let* ((_rest175011175026_ _rest175009_)
                              (_E175015175030_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest175011175026_))))
                         (let ((_K175020175059_
                                (lambda (_core-id175057_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id175057_)))
                               (_K175017175044_
                                (lambda (_proc175042_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc175042_)))
                               (_K175016175035_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id175010_))))
                           (let ((_try-match175014175038_
                                  (lambda ()
                                    (if (##null? _rest175011175026_)
                                        (_K175016175035_)
                                        (_E175015175030_)))))
                             (if (##pair? _rest175011175026_)
                                 (let ((_tl175022175064_
                                        (##cdr _rest175011175026_))
                                       (_hd175021175062_
                                        (##car _rest175011175026_)))
                                   (if (##eq? _hd175021175062_ '=>)
                                       (if (##pair? _tl175022175064_)
                                           (let ((_tl175024175069_
                                                  (##cdr _tl175022175064_))
                                                 (_hd175023175067_
                                                  (##car _tl175022175064_)))
                                             (if (##null? _tl175024175069_)
                                                 (let ((_core-id175072_
                                                        _hd175023175067_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id175072_))
                                                 (_E175015175030_)))
                                           (if (##null? _tl175022175064_)
                                               (let ((_proc175052_
                                                      _hd175021175062_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc175052_))
                                               (_E175015175030_)))
                                       (if (##null? _tl175022175064_)
                                           (let ((_proc175052_
                                                  _hd175021175062_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc175052_))
                                           (_E175015175030_))))
                                 (_try-match175014175038_))))))))))
             (if (##pair? _bind174995175002_)
                 (let ((_hd174999175077_ (##car _bind174995175002_))
                       (_tl175000175079_ (##cdr _bind174995175002_)))
                   (let* ((_id175082_ _hd174999175077_)
                          (_rest175084_ _tl175000175079_))
                     (_K174998175074_ _rest175084_ _id175082_)))
                 (_E174997175006_))))
         _bindings174992_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self175089_)
        (let ((_bindings175091_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self175089_
           _bindings175091_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g180264_
        (let ((_g180263_ (##length _g180264_)))
          (cond ((##fx= _g180263_ 1)
                 (apply (lambda (_self175089_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self175089_))
                        _g180264_))
                ((##fx= _g180263_ 2)
                 (apply (lambda (_self175093_ _bindings175094_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self175093_
                           _bindings175094_))
                        _g180264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g180264_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self174735_)
        (letrec ((_linux-variant?174737_
                  (lambda (_sys-type174836_)
                    (let* ((_g174837174845_
                            (string-split
                             (symbol->string _sys-type174836_)
                             '#\-))
                           (_else174839174853_ (lambda () '#f))
                           (_K174841174858_
                            (lambda (_rest174856_)
                              (not (null? _rest174856_)))))
                      (if (##pair? _g174837174845_)
                          (let ((_hd174842174861_ (##car _g174837174845_))
                                (_tl174843174863_ (##cdr _g174837174845_)))
                            (if (equal? _hd174842174861_ '"linux")
                                (let ((_rest174866_ _tl174843174863_))
                                  (_K174841174858_ _rest174866_))
                                (_else174839174853_)))
                          (_else174839174853_)))))
                 (_bsd-variant174738_
                  (lambda (_sys-type174795_)
                    (let ((_sys-type-str174797_
                           (symbol->string _sys-type174795_)))
                      (let _lp174799_ ((_rest174801_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest174802174810_ _rest174801_)
                               (_else174804174818_ (lambda () '#f))
                               (_K174806174824_
                                (lambda (_rest174821_ _sys174822_)
                                  (if (string-prefix?
                                       _sys174822_
                                       _sys-type-str174797_)
                                      _sys174822_
                                      (_lp174799_ _rest174821_)))))
                          (if (##pair? _rest174802174810_)
                              (let ((_hd174807174827_
                                     (##car _rest174802174810_))
                                    (_tl174808174829_
                                     (##cdr _rest174802174810_)))
                                (let* ((_sys174832_ _hd174807174827_)
                                       (_rest174834_ _tl174808174829_))
                                  (_K174806174824_ _rest174834_ _sys174832_)))
                              (_else174804174818_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self174735_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self174735_)
          (let* ((_g174739174751_ (system-type))
                 (_else174741174759_ (lambda () '#!void))
                 (_K174743174771_
                  (lambda (_sys-type174762_ _sys-vendor174763_ _sys-cpu174764_)
                    (gx#core-bind-feature!__%
                     _sys-cpu174764_
                     '#f
                     '0
                     _self174735_)
                    (gx#core-bind-feature!__%
                     _sys-type174762_
                     '#f
                     '0
                     _self174735_)
                    (if (_linux-variant?174737_ _sys-type174762_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self174735_)
                        (let ((_$e174766_
                               (_bsd-variant174738_ _sys-type174762_)))
                          (if _$e174766_
                              ((lambda (_sys-prefix174769_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self174735_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix174769_)
                                  '#f
                                  '0
                                  _self174735_))
                               _$e174766_)
                              '#!void))))))
            (if (##pair? _g174739174751_)
                (let ((_hd174744174774_ (##car _g174739174751_))
                      (_tl174745174776_ (##cdr _g174739174751_)))
                  (let ((_sys-cpu174779_ _hd174744174774_))
                    (if (##pair? _tl174745174776_)
                        (let ((_hd174746174781_ (##car _tl174745174776_))
                              (_tl174747174783_ (##cdr _tl174745174776_)))
                          (let ((_sys-vendor174786_ _hd174746174781_))
                            (if (##pair? _tl174747174783_)
                                (let ((_hd174748174788_
                                       (##car _tl174747174783_))
                                      (_tl174749174790_
                                       (##cdr _tl174747174783_)))
                                  (let ((_sys-type174793_ _hd174748174788_))
                                    (if (##null? _tl174749174790_)
                                        (_K174743174771_
                                         _sys-type174793_
                                         _sys-vendor174786_
                                         _sys-cpu174779_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self174735_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
