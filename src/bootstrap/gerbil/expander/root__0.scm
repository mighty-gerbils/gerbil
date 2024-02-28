(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1709111636)
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
      (lambda (_self95495_ _bind?95496_)
        (if (##fx< '2 (##structure-length _self95495_))
            (begin
              (##unchecked-structure-set!
               _self95495_
               'root
               '1
               (##structure-type _self95495_)
               '#f)
              (##unchecked-structure-set!
               _self95495_
               (make-hash-table-eq)
               '2
               (##structure-type _self95495_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self95495_
                   '2
                   (##vector-length _self95495_)))
        (if _bind?95496_
            (begin
              (let ((__method95547
                     (method-ref _self95495_ 'bind-core-syntax-expanders!)))
                (if __method95547
                    (__method95547 _self95495_)
                    (error '"Missing method"
                           _self95495_
                           'bind-core-syntax-expanders!)))
              (let ((__method95548
                     (method-ref _self95495_ 'bind-core-macro-expanders!)))
                (if __method95548
                    (__method95548 _self95495_)
                    (error '"Missing method"
                           _self95495_
                           'bind-core-macro-expanders!)))
              (let ((__method95549
                     (method-ref _self95495_ 'bind-core-features!)))
                (if __method95549
                    (__method95549 _self95495_)
                    (error '"Missing method"
                           _self95495_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self95501_)
        (let ((_bind?95503_ '#t))
          (gx#root-context:::init!__% _self95501_ _bind?95503_))))
    (define gx#root-context:::init!
      (lambda _g95552_
        (let ((_g95551_ (##length _g95552_)))
          (cond ((##fx= _g95551_ 1)
                 (apply (lambda (_self95501_)
                          (gx#root-context:::init!__0 _self95501_))
                        _g95552_))
                ((##fx= _g95551_ 2)
                 (apply (lambda (_self95505_ _bind?95506_)
                          (gx#root-context:::init!__%
                           _self95505_
                           _bind?95506_))
                        _g95552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g95552_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass95507 __method-table95508)
        (let ((__bind-core-features!95509
               (make-promise
                (lambda ()
                  (let ((__method95512
                         (symbolic-table-ref
                          __method-table95508
                          'bind-core-features!
                          '#f)))
                    (if __method95512
                        __method95512
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!95510
               (make-promise
                (lambda ()
                  (let ((__method95513
                         (symbolic-table-ref
                          __method-table95508
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method95513
                        __method95513
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!95511
               (make-promise
                (lambda ()
                  (let ((__method95514
                         (symbolic-table-ref
                          __method-table95508
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method95514
                        __method95514
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda9549395498_
                 (lambda (_self95495_ _bind?95496_)
                   (if (##fx< '2 (##structure-length _self95495_))
                       (begin
                         (##unchecked-structure-set!
                          _self95495_
                          'root
                          '1
                          (##structure-type _self95495_)
                          '#f)
                         (##unchecked-structure-set!
                          _self95495_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self95495_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self95495_
                              '2
                              (##vector-length _self95495_)))
                   (if _bind?95496_
                       (begin
                         ((force __bind-core-syntax-expanders!95510)
                          _self95495_)
                         ((force __bind-core-macro-expanders!95511)
                          _self95495_)
                         ((force __bind-core-features!95509) _self95495_))
                       '#!void))))
            (lambda _g95554_
              (let ((_g95553_ (##length _g95554_)))
                (cond ((##fx= _g95553_ 1)
                       (apply (lambda (_self95501_)
                                (let ((_bind?95503_ '#t))
                                  (_opt-lambda9549395498_
                                   _self95501_
                                   _bind?95503_)))
                              _g95554_))
                      ((##fx= _g95553_ 2)
                       (apply (lambda (_self95505_ _bind?95506_)
                                (_opt-lambda9549395498_
                                 _self95505_
                                 _bind?95506_))
                              _g95554_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g95554_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self95351_ _super95352_)
        (let ((_super95360_
               (let ((_$e95354_ _super95352_))
                 (if _$e95354_
                     _$e95354_
                     (let ((_$e95357_ (gx#core-context-root__0)))
                       (if _$e95357_
                           _$e95357_
                           (let ((__obj95550
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj95550)
                             __obj95550)))))))
          (if (##fx< '5 (##structure-length _self95351_))
              (begin
                (##unchecked-structure-set!
                 _self95351_
                 'top
                 '1
                 (##structure-type _self95351_)
                 '#f)
                (##unchecked-structure-set!
                 _self95351_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self95351_)
                 '#f)
                (##unchecked-structure-set!
                 _self95351_
                 _super95360_
                 '3
                 (##structure-type _self95351_)
                 '#f)
                (##unchecked-structure-set!
                 _self95351_
                 '#f
                 '4
                 (##structure-type _self95351_)
                 '#f)
                (##unchecked-structure-set!
                 _self95351_
                 '#f
                 '5
                 (##structure-type _self95351_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self95351_
                     '5
                     (##vector-length _self95351_))))))
    (define gx#top-context:::init!__0
      (lambda (_self95365_)
        (let ((_super95367_ '#f))
          (gx#top-context:::init!__% _self95365_ _super95367_))))
    (define gx#top-context:::init!
      (lambda _g95556_
        (let ((_g95555_ (##length _g95556_)))
          (cond ((##fx= _g95555_ 1)
                 (apply (lambda (_self95365_)
                          (gx#top-context:::init!__0 _self95365_))
                        _g95556_))
                ((##fx= _g95555_ 2)
                 (apply (lambda (_self95369_ _super95370_)
                          (gx#top-context:::init!__% _self95369_ _super95370_))
                        _g95556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g95556_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self95082_ _bindings95083_)
        (for-each
         (lambda (_bind95085_)
           (let* ((_bind9508695093_ _bind95085_)
                  (_E9508895097_
                   (lambda () (error '"No clause matching" _bind9508695093_)))
                  (_K9508995206_
                   (lambda (_rest95100_ _id95101_)
                     (gx#core-context-put!
                      _self95082_
                      _id95101_
                      (##structure
                       gx#syntax-binding::t
                       _id95101_
                       _id95101_
                       '#f
                       (let* ((_rest9510295113_ _rest95100_)
                              (_E9510495117_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9510295113_)))
                              (_K9510595182_
                               (lambda (_compiler95120_
                                        _expander95121_
                                        _key95122_)
                                 ((let* ((_key9512395136_ _key95122_)
                                         (_E9512995140_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9512395136_))))
                                    (let ((_K9513495176_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9513395169_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9513295161_
                                           (lambda () gx#make-definition-form))
                                          (_K9513195153_
                                           (lambda () gx#make-special-form))
                                          (_K9513095145_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9512895148_
                                              (lambda ()
                                                (if (##eq? _key9512395136_
                                                           'expr:)
                                                    (_K9513095145_)
                                                    (_E9512995140_))))
                                             (_try-match9512795156_
                                              (lambda ()
                                                (if (##eq? _key9512395136_
                                                           'special:)
                                                    (_K9513195153_)
                                                    (_try-match9512895148_))))
                                             (_try-match9512695164_
                                              (lambda ()
                                                (if (##eq? _key9512395136_
                                                           'define:)
                                                    (_K9513295161_)
                                                    (_try-match9512795156_))))
                                             (_try-match9512595172_
                                              (lambda ()
                                                (if (##eq? _key9512395136_
                                                           'module:)
                                                    (_K9513395169_)
                                                    (_try-match9512695164_)))))
                                        (if (##eq? _key9512395136_ 'top:)
                                            (_K9513495176_)
                                            (_try-match9512595172_)))))
                                  _expander95121_
                                  _id95101_
                                  (let ((_$e95179_ _compiler95120_))
                                    (if _$e95179_
                                        _$e95179_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9510295113_)
                             (let ((_hd9510695185_ (##car _rest9510295113_))
                                   (_tl9510795187_ (##cdr _rest9510295113_)))
                               (let ((_key95190_ _hd9510695185_))
                                 (if (##pair? _tl9510795187_)
                                     (let ((_hd9510895192_
                                            (##car _tl9510795187_))
                                           (_tl9510995194_
                                            (##cdr _tl9510795187_)))
                                       (let ((_expander95197_ _hd9510895192_))
                                         (if (##pair? _tl9510995194_)
                                             (let ((_hd9511095199_
                                                    (##car _tl9510995194_))
                                                   (_tl9511195201_
                                                    (##cdr _tl9510995194_)))
                                               (let ((_compiler95204_
                                                      _hd9511095199_))
                                                 (if (##null? _tl9511195201_)
                                                     (_K9510595182_
                                                      _compiler95204_
                                                      _expander95197_
                                                      _key95190_)
                                                     (_E9510495117_))))
                                             (_E9510495117_))))
                                     (_E9510495117_))))
                             (_E9510495117_))))))))
             (if (##pair? _bind9508695093_)
                 (let ((_hd9509095209_ (##car _bind9508695093_))
                       (_tl9509195211_ (##cdr _bind9508695093_)))
                   (let* ((_id95214_ _hd9509095209_)
                          (_rest95216_ _tl9509195211_))
                     (_K9508995206_ _rest95216_ _id95214_)))
                 (_E9508895097_))))
         _bindings95083_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self95221_)
        (let ((_bindings95223_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self95221_
           _bindings95223_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g95558_
        (let ((_g95557_ (##length _g95558_)))
          (cond ((##fx= _g95557_ 1)
                 (apply (lambda (_self95221_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self95221_))
                        _g95558_))
                ((##fx= _g95557_ 2)
                 (apply (lambda (_self95225_ _bindings95226_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self95225_
                           _bindings95226_))
                        _g95558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g95558_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self94854_ _bindings94855_)
        (for-each
         (lambda (_bind94857_)
           (let* ((_bind9485894865_ _bind94857_)
                  (_E9486094869_
                   (lambda () (error '"No clause matching" _bind9485894865_)))
                  (_K9486194937_
                   (lambda (_rest94872_ _id94873_)
                     (gx#core-context-put!
                      _self94854_
                      _id94873_
                      (##structure
                       gx#syntax-binding::t
                       _id94873_
                       _id94873_
                       '#f
                       (let* ((_rest9487494889_ _rest94872_)
                              (_E9487894893_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9487494889_))))
                         (let ((_K9488394922_
                                (lambda (_core-id94920_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id94920_)))
                               (_K9488094907_
                                (lambda (_proc94905_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc94905_)))
                               (_K9487994898_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id94873_))))
                           (let ((_try-match9487794901_
                                  (lambda ()
                                    (if (##null? _rest9487494889_)
                                        (_K9487994898_)
                                        (_E9487894893_)))))
                             (if (##pair? _rest9487494889_)
                                 (let ((_tl9488594927_
                                        (##cdr _rest9487494889_))
                                       (_hd9488494925_
                                        (##car _rest9487494889_)))
                                   (if (##eq? _hd9488494925_ '=>)
                                       (if (##pair? _tl9488594927_)
                                           (let ((_tl9488794932_
                                                  (##cdr _tl9488594927_))
                                                 (_hd9488694930_
                                                  (##car _tl9488594927_)))
                                             (if (##null? _tl9488794932_)
                                                 (let ((_core-id94935_
                                                        _hd9488694930_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id94935_))
                                                 (_E9487894893_)))
                                           (if (##null? _tl9488594927_)
                                               (let ((_proc94915_
                                                      _hd9488494925_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc94915_))
                                               (_E9487894893_)))
                                       (if (##null? _tl9488594927_)
                                           (let ((_proc94915_ _hd9488494925_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc94915_))
                                           (_E9487894893_))))
                                 (_try-match9487794901_))))))))))
             (if (##pair? _bind9485894865_)
                 (let ((_hd9486294940_ (##car _bind9485894865_))
                       (_tl9486394942_ (##cdr _bind9485894865_)))
                   (let* ((_id94945_ _hd9486294940_)
                          (_rest94947_ _tl9486394942_))
                     (_K9486194937_ _rest94947_ _id94945_)))
                 (_E9486094869_))))
         _bindings94855_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self94952_)
        (let ((_bindings94954_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self94952_
           _bindings94954_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g95560_
        (let ((_g95559_ (##length _g95560_)))
          (cond ((##fx= _g95559_ 1)
                 (apply (lambda (_self94952_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self94952_))
                        _g95560_))
                ((##fx= _g95559_ 2)
                 (apply (lambda (_self94956_ _bindings94957_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self94956_
                           _bindings94957_))
                        _g95560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g95560_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self94598_)
        (letrec ((_linux-variant?94600_
                  (lambda (_sys-type94699_)
                    (let* ((_g9470094708_
                            (string-split
                             (symbol->string _sys-type94699_)
                             '#\-))
                           (_else9470294716_ (lambda () '#f))
                           (_K9470494721_
                            (lambda (_rest94719_) (not (null? _rest94719_)))))
                      (if (##pair? _g9470094708_)
                          (let ((_hd9470594724_ (##car _g9470094708_))
                                (_tl9470694726_ (##cdr _g9470094708_)))
                            (if (equal? _hd9470594724_ '"linux")
                                (let ((_rest94729_ _tl9470694726_))
                                  (_K9470494721_ _rest94729_))
                                (_else9470294716_)))
                          (_else9470294716_)))))
                 (_bsd-variant94601_
                  (lambda (_sys-type94658_)
                    (let ((_sys-type-str94660_
                           (symbol->string _sys-type94658_)))
                      (let _lp94662_ ((_rest94664_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9466594673_ _rest94664_)
                               (_else9466794681_ (lambda () '#f))
                               (_K9466994687_
                                (lambda (_rest94684_ _sys94685_)
                                  (if (string-prefix?
                                       _sys94685_
                                       _sys-type-str94660_)
                                      _sys94685_
                                      (_lp94662_ _rest94684_)))))
                          (if (##pair? _rest9466594673_)
                              (let ((_hd9467094690_ (##car _rest9466594673_))
                                    (_tl9467194692_ (##cdr _rest9466594673_)))
                                (let* ((_sys94695_ _hd9467094690_)
                                       (_rest94697_ _tl9467194692_))
                                  (_K9466994687_ _rest94697_ _sys94695_)))
                              (_else9466794681_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self94598_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self94598_)
          (let* ((_g9460294614_ (system-type))
                 (_else9460494622_ (lambda () '#!void))
                 (_K9460694634_
                  (lambda (_sys-type94625_ _sys-vendor94626_ _sys-cpu94627_)
                    (gx#core-bind-feature!__%
                     _sys-cpu94627_
                     '#f
                     '0
                     _self94598_)
                    (gx#core-bind-feature!__%
                     _sys-type94625_
                     '#f
                     '0
                     _self94598_)
                    (if (_linux-variant?94600_ _sys-type94625_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self94598_)
                        (let ((_$e94629_ (_bsd-variant94601_ _sys-type94625_)))
                          (if _$e94629_
                              ((lambda (_sys-prefix94632_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self94598_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix94632_)
                                  '#f
                                  '0
                                  _self94598_))
                               _$e94629_)
                              '#!void))))))
            (if (##pair? _g9460294614_)
                (let ((_hd9460794637_ (##car _g9460294614_))
                      (_tl9460894639_ (##cdr _g9460294614_)))
                  (let ((_sys-cpu94642_ _hd9460794637_))
                    (if (##pair? _tl9460894639_)
                        (let ((_hd9460994644_ (##car _tl9460894639_))
                              (_tl9461094646_ (##cdr _tl9460894639_)))
                          (let ((_sys-vendor94649_ _hd9460994644_))
                            (if (##pair? _tl9461094646_)
                                (let ((_hd9461194651_ (##car _tl9461094646_))
                                      (_tl9461294653_ (##cdr _tl9461094646_)))
                                  (let ((_sys-type94656_ _hd9461194651_))
                                    (if (##null? _tl9461294653_)
                                        (_K9460694634_
                                         _sys-type94656_
                                         _sys-vendor94649_
                                         _sys-cpu94642_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self94598_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
