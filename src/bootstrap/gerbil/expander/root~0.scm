(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1710781149)
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
      (lambda (_self97231_ _bind?97232_)
        (if (##fx< '2 (##structure-length _self97231_))
            (begin
              (##unchecked-structure-set!
               _self97231_
               'root
               '1
               (##structure-type _self97231_)
               '#f)
              (##unchecked-structure-set!
               _self97231_
               (make-hash-table-eq)
               '2
               (##structure-type _self97231_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self97231_
                   '2
                   (##vector-length _self97231_)))
        (if _bind?97232_
            (begin
              (let ((__method97283
                     (method-ref _self97231_ 'bind-core-syntax-expanders!)))
                (if __method97283
                    (__method97283 _self97231_)
                    (error '"Missing method"
                           _self97231_
                           'bind-core-syntax-expanders!)))
              (let ((__method97284
                     (method-ref _self97231_ 'bind-core-macro-expanders!)))
                (if __method97284
                    (__method97284 _self97231_)
                    (error '"Missing method"
                           _self97231_
                           'bind-core-macro-expanders!)))
              (let ((__method97285
                     (method-ref _self97231_ 'bind-core-features!)))
                (if __method97285
                    (__method97285 _self97231_)
                    (error '"Missing method"
                           _self97231_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self97237_)
        (let ((_bind?97239_ '#t))
          (gx#root-context:::init!__% _self97237_ _bind?97239_))))
    (define gx#root-context:::init!
      (lambda _g97288_
        (let ((_g97287_ (##length _g97288_)))
          (cond ((##fx= _g97287_ 1)
                 (apply (lambda (_self97237_)
                          (gx#root-context:::init!__0 _self97237_))
                        _g97288_))
                ((##fx= _g97287_ 2)
                 (apply (lambda (_self97241_ _bind?97242_)
                          (gx#root-context:::init!__%
                           _self97241_
                           _bind?97242_))
                        _g97288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g97288_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass97243 __method-table97244)
        (let ((__bind-core-macro-expanders!97245
               (make-promise
                (lambda ()
                  (let ((__method97248
                         (symbolic-table-ref
                          __method-table97244
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method97248
                        __method97248
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!97246
               (make-promise
                (lambda ()
                  (let ((__method97249
                         (symbolic-table-ref
                          __method-table97244
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method97249
                        __method97249
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!97247
               (make-promise
                (lambda ()
                  (let ((__method97250
                         (symbolic-table-ref
                          __method-table97244
                          'bind-core-features!
                          '#f)))
                    (if __method97250
                        __method97250
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda9722997234_
                 (lambda (_self97231_ _bind?97232_)
                   (if (##fx< '2 (##structure-length _self97231_))
                       (begin
                         (##unchecked-structure-set!
                          _self97231_
                          'root
                          '1
                          (##structure-type _self97231_)
                          '#f)
                         (##unchecked-structure-set!
                          _self97231_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self97231_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self97231_
                              '2
                              (##vector-length _self97231_)))
                   (if _bind?97232_
                       (begin
                         ((force __bind-core-syntax-expanders!97246)
                          _self97231_)
                         ((force __bind-core-macro-expanders!97245)
                          _self97231_)
                         ((force __bind-core-features!97247) _self97231_))
                       '#!void))))
            (lambda _g97290_
              (let ((_g97289_ (##length _g97290_)))
                (cond ((##fx= _g97289_ 1)
                       (apply (lambda (_self97237_)
                                (let ((_bind?97239_ '#t))
                                  (_opt-lambda9722997234_
                                   _self97237_
                                   _bind?97239_)))
                              _g97290_))
                      ((##fx= _g97289_ 2)
                       (apply (lambda (_self97241_ _bind?97242_)
                                (_opt-lambda9722997234_
                                 _self97241_
                                 _bind?97242_))
                              _g97290_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g97290_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self97087_ _super97088_)
        (let ((_super97096_
               (let ((_$e97090_ _super97088_))
                 (if _$e97090_
                     _$e97090_
                     (let ((_$e97093_ (gx#core-context-root__0)))
                       (if _$e97093_
                           _$e97093_
                           (let ((__obj97286
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj97286)
                             __obj97286)))))))
          (if (##fx< '5 (##structure-length _self97087_))
              (begin
                (##unchecked-structure-set!
                 _self97087_
                 'top
                 '1
                 (##structure-type _self97087_)
                 '#f)
                (##unchecked-structure-set!
                 _self97087_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self97087_)
                 '#f)
                (##unchecked-structure-set!
                 _self97087_
                 _super97096_
                 '3
                 (##structure-type _self97087_)
                 '#f)
                (##unchecked-structure-set!
                 _self97087_
                 '#f
                 '4
                 (##structure-type _self97087_)
                 '#f)
                (##unchecked-structure-set!
                 _self97087_
                 '#f
                 '5
                 (##structure-type _self97087_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self97087_
                     '5
                     (##vector-length _self97087_))))))
    (define gx#top-context:::init!__0
      (lambda (_self97101_)
        (let ((_super97103_ '#f))
          (gx#top-context:::init!__% _self97101_ _super97103_))))
    (define gx#top-context:::init!
      (lambda _g97292_
        (let ((_g97291_ (##length _g97292_)))
          (cond ((##fx= _g97291_ 1)
                 (apply (lambda (_self97101_)
                          (gx#top-context:::init!__0 _self97101_))
                        _g97292_))
                ((##fx= _g97291_ 2)
                 (apply (lambda (_self97105_ _super97106_)
                          (gx#top-context:::init!__% _self97105_ _super97106_))
                        _g97292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g97292_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self96818_ _bindings96819_)
        (for-each
         (lambda (_bind96821_)
           (let* ((_bind9682296829_ _bind96821_)
                  (_E9682496833_
                   (lambda () (error '"No clause matching" _bind9682296829_)))
                  (_K9682596942_
                   (lambda (_rest96836_ _id96837_)
                     (gx#core-context-put!
                      _self96818_
                      _id96837_
                      (##structure
                       gx#syntax-binding::t
                       _id96837_
                       _id96837_
                       '#f
                       (let* ((_rest9683896849_ _rest96836_)
                              (_E9684096853_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9683896849_)))
                              (_K9684196918_
                               (lambda (_compiler96856_
                                        _expander96857_
                                        _key96858_)
                                 ((let* ((_key9685996872_ _key96858_)
                                         (_E9686596876_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9685996872_))))
                                    (let ((_K9687096912_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9686996905_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9686896897_
                                           (lambda () gx#make-definition-form))
                                          (_K9686796889_
                                           (lambda () gx#make-special-form))
                                          (_K9686696881_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9686496884_
                                              (lambda ()
                                                (if (##eq? _key9685996872_
                                                           'expr:)
                                                    (_K9686696881_)
                                                    (_E9686596876_))))
                                             (_try-match9686396892_
                                              (lambda ()
                                                (if (##eq? _key9685996872_
                                                           'special:)
                                                    (_K9686796889_)
                                                    (_try-match9686496884_))))
                                             (_try-match9686296900_
                                              (lambda ()
                                                (if (##eq? _key9685996872_
                                                           'define:)
                                                    (_K9686896897_)
                                                    (_try-match9686396892_))))
                                             (_try-match9686196908_
                                              (lambda ()
                                                (if (##eq? _key9685996872_
                                                           'module:)
                                                    (_K9686996905_)
                                                    (_try-match9686296900_)))))
                                        (if (##eq? _key9685996872_ 'top:)
                                            (_K9687096912_)
                                            (_try-match9686196908_)))))
                                  _expander96857_
                                  _id96837_
                                  (let ((_$e96915_ _compiler96856_))
                                    (if _$e96915_
                                        _$e96915_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9683896849_)
                             (let ((_hd9684296921_ (##car _rest9683896849_))
                                   (_tl9684396923_ (##cdr _rest9683896849_)))
                               (let ((_key96926_ _hd9684296921_))
                                 (if (##pair? _tl9684396923_)
                                     (let ((_hd9684496928_
                                            (##car _tl9684396923_))
                                           (_tl9684596930_
                                            (##cdr _tl9684396923_)))
                                       (let ((_expander96933_ _hd9684496928_))
                                         (if (##pair? _tl9684596930_)
                                             (let ((_hd9684696935_
                                                    (##car _tl9684596930_))
                                                   (_tl9684796937_
                                                    (##cdr _tl9684596930_)))
                                               (let ((_compiler96940_
                                                      _hd9684696935_))
                                                 (if (##null? _tl9684796937_)
                                                     (_K9684196918_
                                                      _compiler96940_
                                                      _expander96933_
                                                      _key96926_)
                                                     (_E9684096853_))))
                                             (_E9684096853_))))
                                     (_E9684096853_))))
                             (_E9684096853_))))))))
             (if (##pair? _bind9682296829_)
                 (let ((_hd9682696945_ (##car _bind9682296829_))
                       (_tl9682796947_ (##cdr _bind9682296829_)))
                   (let* ((_id96950_ _hd9682696945_)
                          (_rest96952_ _tl9682796947_))
                     (_K9682596942_ _rest96952_ _id96950_)))
                 (_E9682496833_))))
         _bindings96819_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self96957_)
        (let ((_bindings96959_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self96957_
           _bindings96959_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g97294_
        (let ((_g97293_ (##length _g97294_)))
          (cond ((##fx= _g97293_ 1)
                 (apply (lambda (_self96957_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self96957_))
                        _g97294_))
                ((##fx= _g97293_ 2)
                 (apply (lambda (_self96961_ _bindings96962_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self96961_
                           _bindings96962_))
                        _g97294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g97294_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self96590_ _bindings96591_)
        (for-each
         (lambda (_bind96593_)
           (let* ((_bind9659496601_ _bind96593_)
                  (_E9659696605_
                   (lambda () (error '"No clause matching" _bind9659496601_)))
                  (_K9659796673_
                   (lambda (_rest96608_ _id96609_)
                     (gx#core-context-put!
                      _self96590_
                      _id96609_
                      (##structure
                       gx#syntax-binding::t
                       _id96609_
                       _id96609_
                       '#f
                       (let* ((_rest9661096625_ _rest96608_)
                              (_E9661496629_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9661096625_))))
                         (let ((_K9661996658_
                                (lambda (_core-id96656_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id96656_)))
                               (_K9661696643_
                                (lambda (_proc96641_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc96641_)))
                               (_K9661596634_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id96609_))))
                           (let ((_try-match9661396637_
                                  (lambda ()
                                    (if (##null? _rest9661096625_)
                                        (_K9661596634_)
                                        (_E9661496629_)))))
                             (if (##pair? _rest9661096625_)
                                 (let ((_tl9662196663_
                                        (##cdr _rest9661096625_))
                                       (_hd9662096661_
                                        (##car _rest9661096625_)))
                                   (if (##eq? _hd9662096661_ '=>)
                                       (if (##pair? _tl9662196663_)
                                           (let ((_tl9662396668_
                                                  (##cdr _tl9662196663_))
                                                 (_hd9662296666_
                                                  (##car _tl9662196663_)))
                                             (if (##null? _tl9662396668_)
                                                 (let ((_core-id96671_
                                                        _hd9662296666_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id96671_))
                                                 (_E9661496629_)))
                                           (if (##null? _tl9662196663_)
                                               (let ((_proc96651_
                                                      _hd9662096661_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc96651_))
                                               (_E9661496629_)))
                                       (if (##null? _tl9662196663_)
                                           (let ((_proc96651_ _hd9662096661_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc96651_))
                                           (_E9661496629_))))
                                 (_try-match9661396637_))))))))))
             (if (##pair? _bind9659496601_)
                 (let ((_hd9659896676_ (##car _bind9659496601_))
                       (_tl9659996678_ (##cdr _bind9659496601_)))
                   (let* ((_id96681_ _hd9659896676_)
                          (_rest96683_ _tl9659996678_))
                     (_K9659796673_ _rest96683_ _id96681_)))
                 (_E9659696605_))))
         _bindings96591_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self96688_)
        (let ((_bindings96690_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self96688_
           _bindings96690_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g97296_
        (let ((_g97295_ (##length _g97296_)))
          (cond ((##fx= _g97295_ 1)
                 (apply (lambda (_self96688_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self96688_))
                        _g97296_))
                ((##fx= _g97295_ 2)
                 (apply (lambda (_self96692_ _bindings96693_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self96692_
                           _bindings96693_))
                        _g97296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g97296_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self96334_)
        (letrec ((_linux-variant?96336_
                  (lambda (_sys-type96435_)
                    (let* ((_g9643696444_
                            (string-split
                             (symbol->string _sys-type96435_)
                             '#\-))
                           (_else9643896452_ (lambda () '#f))
                           (_K9644096457_
                            (lambda (_rest96455_) (not (null? _rest96455_)))))
                      (if (##pair? _g9643696444_)
                          (let ((_hd9644196460_ (##car _g9643696444_))
                                (_tl9644296462_ (##cdr _g9643696444_)))
                            (if (equal? _hd9644196460_ '"linux")
                                (let ((_rest96465_ _tl9644296462_))
                                  (_K9644096457_ _rest96465_))
                                (_else9643896452_)))
                          (_else9643896452_)))))
                 (_bsd-variant96337_
                  (lambda (_sys-type96394_)
                    (let ((_sys-type-str96396_
                           (symbol->string _sys-type96394_)))
                      (let _lp96398_ ((_rest96400_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9640196409_ _rest96400_)
                               (_else9640396417_ (lambda () '#f))
                               (_K9640596423_
                                (lambda (_rest96420_ _sys96421_)
                                  (if (string-prefix?
                                       _sys96421_
                                       _sys-type-str96396_)
                                      _sys96421_
                                      (_lp96398_ _rest96420_)))))
                          (if (##pair? _rest9640196409_)
                              (let ((_hd9640696426_ (##car _rest9640196409_))
                                    (_tl9640796428_ (##cdr _rest9640196409_)))
                                (let* ((_sys96431_ _hd9640696426_)
                                       (_rest96433_ _tl9640796428_))
                                  (_K9640596423_ _rest96433_ _sys96431_)))
                              (_else9640396417_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self96334_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self96334_)
          (let* ((_g9633896350_ (system-type))
                 (_else9634096358_ (lambda () '#!void))
                 (_K9634296370_
                  (lambda (_sys-type96361_ _sys-vendor96362_ _sys-cpu96363_)
                    (gx#core-bind-feature!__%
                     _sys-cpu96363_
                     '#f
                     '0
                     _self96334_)
                    (gx#core-bind-feature!__%
                     _sys-type96361_
                     '#f
                     '0
                     _self96334_)
                    (if (_linux-variant?96336_ _sys-type96361_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self96334_)
                        (let ((_$e96365_ (_bsd-variant96337_ _sys-type96361_)))
                          (if _$e96365_
                              ((lambda (_sys-prefix96368_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self96334_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix96368_)
                                  '#f
                                  '0
                                  _self96334_))
                               _$e96365_)
                              '#!void))))))
            (if (##pair? _g9633896350_)
                (let ((_hd9634396373_ (##car _g9633896350_))
                      (_tl9634496375_ (##cdr _g9633896350_)))
                  (let ((_sys-cpu96378_ _hd9634396373_))
                    (if (##pair? _tl9634496375_)
                        (let ((_hd9634596380_ (##car _tl9634496375_))
                              (_tl9634696382_ (##cdr _tl9634496375_)))
                          (let ((_sys-vendor96385_ _hd9634596380_))
                            (if (##pair? _tl9634696382_)
                                (let ((_hd9634796387_ (##car _tl9634696382_))
                                      (_tl9634896389_ (##cdr _tl9634696382_)))
                                  (let ((_sys-type96392_ _hd9634796387_))
                                    (if (##null? _tl9634896389_)
                                        (_K9634296370_
                                         _sys-type96392_
                                         _sys-vendor96385_
                                         _sys-cpu96378_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self96334_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
