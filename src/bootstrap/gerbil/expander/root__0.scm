(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1710170107)
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
      (lambda (_self95439_ _bind?95440_)
        (if (##fx< '2 (##structure-length _self95439_))
            (begin
              (##unchecked-structure-set!
               _self95439_
               'root
               '1
               (##structure-type _self95439_)
               '#f)
              (##unchecked-structure-set!
               _self95439_
               (make-hash-table-eq)
               '2
               (##structure-type _self95439_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self95439_
                   '2
                   (##vector-length _self95439_)))
        (if _bind?95440_
            (begin
              (let ((__method95491
                     (method-ref _self95439_ 'bind-core-syntax-expanders!)))
                (if __method95491
                    (__method95491 _self95439_)
                    (error '"Missing method"
                           _self95439_
                           'bind-core-syntax-expanders!)))
              (let ((__method95492
                     (method-ref _self95439_ 'bind-core-macro-expanders!)))
                (if __method95492
                    (__method95492 _self95439_)
                    (error '"Missing method"
                           _self95439_
                           'bind-core-macro-expanders!)))
              (let ((__method95493
                     (method-ref _self95439_ 'bind-core-features!)))
                (if __method95493
                    (__method95493 _self95439_)
                    (error '"Missing method"
                           _self95439_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self95445_)
        (let ((_bind?95447_ '#t))
          (gx#root-context:::init!__% _self95445_ _bind?95447_))))
    (define gx#root-context:::init!
      (lambda _g95496_
        (let ((_g95495_ (##length _g95496_)))
          (cond ((##fx= _g95495_ 1)
                 (apply (lambda (_self95445_)
                          (gx#root-context:::init!__0 _self95445_))
                        _g95496_))
                ((##fx= _g95495_ 2)
                 (apply (lambda (_self95449_ _bind?95450_)
                          (gx#root-context:::init!__%
                           _self95449_
                           _bind?95450_))
                        _g95496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g95496_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass95451 __method-table95452)
        (let ((__bind-core-syntax-expanders!95453
               (make-promise
                (lambda ()
                  (let ((__method95456
                         (symbolic-table-ref
                          __method-table95452
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method95456
                        __method95456
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!95454
               (make-promise
                (lambda ()
                  (let ((__method95457
                         (symbolic-table-ref
                          __method-table95452
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method95457
                        __method95457
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!95455
               (make-promise
                (lambda ()
                  (let ((__method95458
                         (symbolic-table-ref
                          __method-table95452
                          'bind-core-features!
                          '#f)))
                    (if __method95458
                        __method95458
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda9543795442_
                 (lambda (_self95439_ _bind?95440_)
                   (if (##fx< '2 (##structure-length _self95439_))
                       (begin
                         (##unchecked-structure-set!
                          _self95439_
                          'root
                          '1
                          (##structure-type _self95439_)
                          '#f)
                         (##unchecked-structure-set!
                          _self95439_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self95439_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self95439_
                              '2
                              (##vector-length _self95439_)))
                   (if _bind?95440_
                       (begin
                         ((force __bind-core-syntax-expanders!95453)
                          _self95439_)
                         ((force __bind-core-macro-expanders!95454)
                          _self95439_)
                         ((force __bind-core-features!95455) _self95439_))
                       '#!void))))
            (lambda _g95498_
              (let ((_g95497_ (##length _g95498_)))
                (cond ((##fx= _g95497_ 1)
                       (apply (lambda (_self95445_)
                                (let ((_bind?95447_ '#t))
                                  (_opt-lambda9543795442_
                                   _self95445_
                                   _bind?95447_)))
                              _g95498_))
                      ((##fx= _g95497_ 2)
                       (apply (lambda (_self95449_ _bind?95450_)
                                (_opt-lambda9543795442_
                                 _self95449_
                                 _bind?95450_))
                              _g95498_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g95498_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self95295_ _super95296_)
        (let ((_super95304_
               (let ((_$e95298_ _super95296_))
                 (if _$e95298_
                     _$e95298_
                     (let ((_$e95301_ (gx#core-context-root__0)))
                       (if _$e95301_
                           _$e95301_
                           (let ((__obj95494
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj95494)
                             __obj95494)))))))
          (if (##fx< '5 (##structure-length _self95295_))
              (begin
                (##unchecked-structure-set!
                 _self95295_
                 'top
                 '1
                 (##structure-type _self95295_)
                 '#f)
                (##unchecked-structure-set!
                 _self95295_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self95295_)
                 '#f)
                (##unchecked-structure-set!
                 _self95295_
                 _super95304_
                 '3
                 (##structure-type _self95295_)
                 '#f)
                (##unchecked-structure-set!
                 _self95295_
                 '#f
                 '4
                 (##structure-type _self95295_)
                 '#f)
                (##unchecked-structure-set!
                 _self95295_
                 '#f
                 '5
                 (##structure-type _self95295_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self95295_
                     '5
                     (##vector-length _self95295_))))))
    (define gx#top-context:::init!__0
      (lambda (_self95309_)
        (let ((_super95311_ '#f))
          (gx#top-context:::init!__% _self95309_ _super95311_))))
    (define gx#top-context:::init!
      (lambda _g95500_
        (let ((_g95499_ (##length _g95500_)))
          (cond ((##fx= _g95499_ 1)
                 (apply (lambda (_self95309_)
                          (gx#top-context:::init!__0 _self95309_))
                        _g95500_))
                ((##fx= _g95499_ 2)
                 (apply (lambda (_self95313_ _super95314_)
                          (gx#top-context:::init!__% _self95313_ _super95314_))
                        _g95500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g95500_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self95026_ _bindings95027_)
        (for-each
         (lambda (_bind95029_)
           (let* ((_bind9503095037_ _bind95029_)
                  (_E9503295041_
                   (lambda () (error '"No clause matching" _bind9503095037_)))
                  (_K9503395150_
                   (lambda (_rest95044_ _id95045_)
                     (gx#core-context-put!
                      _self95026_
                      _id95045_
                      (##structure
                       gx#syntax-binding::t
                       _id95045_
                       _id95045_
                       '#f
                       (let* ((_rest9504695057_ _rest95044_)
                              (_E9504895061_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9504695057_)))
                              (_K9504995126_
                               (lambda (_compiler95064_
                                        _expander95065_
                                        _key95066_)
                                 ((let* ((_key9506795080_ _key95066_)
                                         (_E9507395084_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9506795080_))))
                                    (let ((_K9507895120_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9507795113_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9507695105_
                                           (lambda () gx#make-definition-form))
                                          (_K9507595097_
                                           (lambda () gx#make-special-form))
                                          (_K9507495089_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9507295092_
                                              (lambda ()
                                                (if (##eq? _key9506795080_
                                                           'expr:)
                                                    (_K9507495089_)
                                                    (_E9507395084_))))
                                             (_try-match9507195100_
                                              (lambda ()
                                                (if (##eq? _key9506795080_
                                                           'special:)
                                                    (_K9507595097_)
                                                    (_try-match9507295092_))))
                                             (_try-match9507095108_
                                              (lambda ()
                                                (if (##eq? _key9506795080_
                                                           'define:)
                                                    (_K9507695105_)
                                                    (_try-match9507195100_))))
                                             (_try-match9506995116_
                                              (lambda ()
                                                (if (##eq? _key9506795080_
                                                           'module:)
                                                    (_K9507795113_)
                                                    (_try-match9507095108_)))))
                                        (if (##eq? _key9506795080_ 'top:)
                                            (_K9507895120_)
                                            (_try-match9506995116_)))))
                                  _expander95065_
                                  _id95045_
                                  (let ((_$e95123_ _compiler95064_))
                                    (if _$e95123_
                                        _$e95123_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9504695057_)
                             (let ((_hd9505095129_ (##car _rest9504695057_))
                                   (_tl9505195131_ (##cdr _rest9504695057_)))
                               (let ((_key95134_ _hd9505095129_))
                                 (if (##pair? _tl9505195131_)
                                     (let ((_hd9505295136_
                                            (##car _tl9505195131_))
                                           (_tl9505395138_
                                            (##cdr _tl9505195131_)))
                                       (let ((_expander95141_ _hd9505295136_))
                                         (if (##pair? _tl9505395138_)
                                             (let ((_hd9505495143_
                                                    (##car _tl9505395138_))
                                                   (_tl9505595145_
                                                    (##cdr _tl9505395138_)))
                                               (let ((_compiler95148_
                                                      _hd9505495143_))
                                                 (if (##null? _tl9505595145_)
                                                     (_K9504995126_
                                                      _compiler95148_
                                                      _expander95141_
                                                      _key95134_)
                                                     (_E9504895061_))))
                                             (_E9504895061_))))
                                     (_E9504895061_))))
                             (_E9504895061_))))))))
             (if (##pair? _bind9503095037_)
                 (let ((_hd9503495153_ (##car _bind9503095037_))
                       (_tl9503595155_ (##cdr _bind9503095037_)))
                   (let* ((_id95158_ _hd9503495153_)
                          (_rest95160_ _tl9503595155_))
                     (_K9503395150_ _rest95160_ _id95158_)))
                 (_E9503295041_))))
         _bindings95027_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self95165_)
        (let ((_bindings95167_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self95165_
           _bindings95167_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g95502_
        (let ((_g95501_ (##length _g95502_)))
          (cond ((##fx= _g95501_ 1)
                 (apply (lambda (_self95165_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self95165_))
                        _g95502_))
                ((##fx= _g95501_ 2)
                 (apply (lambda (_self95169_ _bindings95170_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self95169_
                           _bindings95170_))
                        _g95502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g95502_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self94798_ _bindings94799_)
        (for-each
         (lambda (_bind94801_)
           (let* ((_bind9480294809_ _bind94801_)
                  (_E9480494813_
                   (lambda () (error '"No clause matching" _bind9480294809_)))
                  (_K9480594881_
                   (lambda (_rest94816_ _id94817_)
                     (gx#core-context-put!
                      _self94798_
                      _id94817_
                      (##structure
                       gx#syntax-binding::t
                       _id94817_
                       _id94817_
                       '#f
                       (let* ((_rest9481894833_ _rest94816_)
                              (_E9482294837_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9481894833_))))
                         (let ((_K9482794866_
                                (lambda (_core-id94864_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id94864_)))
                               (_K9482494851_
                                (lambda (_proc94849_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc94849_)))
                               (_K9482394842_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id94817_))))
                           (let ((_try-match9482194845_
                                  (lambda ()
                                    (if (##null? _rest9481894833_)
                                        (_K9482394842_)
                                        (_E9482294837_)))))
                             (if (##pair? _rest9481894833_)
                                 (let ((_tl9482994871_
                                        (##cdr _rest9481894833_))
                                       (_hd9482894869_
                                        (##car _rest9481894833_)))
                                   (if (##eq? _hd9482894869_ '=>)
                                       (if (##pair? _tl9482994871_)
                                           (let ((_tl9483194876_
                                                  (##cdr _tl9482994871_))
                                                 (_hd9483094874_
                                                  (##car _tl9482994871_)))
                                             (if (##null? _tl9483194876_)
                                                 (let ((_core-id94879_
                                                        _hd9483094874_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id94879_))
                                                 (_E9482294837_)))
                                           (if (##null? _tl9482994871_)
                                               (let ((_proc94859_
                                                      _hd9482894869_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc94859_))
                                               (_E9482294837_)))
                                       (if (##null? _tl9482994871_)
                                           (let ((_proc94859_ _hd9482894869_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc94859_))
                                           (_E9482294837_))))
                                 (_try-match9482194845_))))))))))
             (if (##pair? _bind9480294809_)
                 (let ((_hd9480694884_ (##car _bind9480294809_))
                       (_tl9480794886_ (##cdr _bind9480294809_)))
                   (let* ((_id94889_ _hd9480694884_)
                          (_rest94891_ _tl9480794886_))
                     (_K9480594881_ _rest94891_ _id94889_)))
                 (_E9480494813_))))
         _bindings94799_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self94896_)
        (let ((_bindings94898_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self94896_
           _bindings94898_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g95504_
        (let ((_g95503_ (##length _g95504_)))
          (cond ((##fx= _g95503_ 1)
                 (apply (lambda (_self94896_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self94896_))
                        _g95504_))
                ((##fx= _g95503_ 2)
                 (apply (lambda (_self94900_ _bindings94901_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self94900_
                           _bindings94901_))
                        _g95504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g95504_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self94542_)
        (letrec ((_linux-variant?94544_
                  (lambda (_sys-type94643_)
                    (let* ((_g9464494652_
                            (string-split
                             (symbol->string _sys-type94643_)
                             '#\-))
                           (_else9464694660_ (lambda () '#f))
                           (_K9464894665_
                            (lambda (_rest94663_) (not (null? _rest94663_)))))
                      (if (##pair? _g9464494652_)
                          (let ((_hd9464994668_ (##car _g9464494652_))
                                (_tl9465094670_ (##cdr _g9464494652_)))
                            (if (equal? _hd9464994668_ '"linux")
                                (let ((_rest94673_ _tl9465094670_))
                                  (_K9464894665_ _rest94673_))
                                (_else9464694660_)))
                          (_else9464694660_)))))
                 (_bsd-variant94545_
                  (lambda (_sys-type94602_)
                    (let ((_sys-type-str94604_
                           (symbol->string _sys-type94602_)))
                      (let _lp94606_ ((_rest94608_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9460994617_ _rest94608_)
                               (_else9461194625_ (lambda () '#f))
                               (_K9461394631_
                                (lambda (_rest94628_ _sys94629_)
                                  (if (string-prefix?
                                       _sys94629_
                                       _sys-type-str94604_)
                                      _sys94629_
                                      (_lp94606_ _rest94628_)))))
                          (if (##pair? _rest9460994617_)
                              (let ((_hd9461494634_ (##car _rest9460994617_))
                                    (_tl9461594636_ (##cdr _rest9460994617_)))
                                (let* ((_sys94639_ _hd9461494634_)
                                       (_rest94641_ _tl9461594636_))
                                  (_K9461394631_ _rest94641_ _sys94639_)))
                              (_else9461194625_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self94542_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self94542_)
          (let* ((_g9454694558_ (system-type))
                 (_else9454894566_ (lambda () '#!void))
                 (_K9455094578_
                  (lambda (_sys-type94569_ _sys-vendor94570_ _sys-cpu94571_)
                    (gx#core-bind-feature!__%
                     _sys-cpu94571_
                     '#f
                     '0
                     _self94542_)
                    (gx#core-bind-feature!__%
                     _sys-type94569_
                     '#f
                     '0
                     _self94542_)
                    (if (_linux-variant?94544_ _sys-type94569_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self94542_)
                        (let ((_$e94573_ (_bsd-variant94545_ _sys-type94569_)))
                          (if _$e94573_
                              ((lambda (_sys-prefix94576_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self94542_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix94576_)
                                  '#f
                                  '0
                                  _self94542_))
                               _$e94573_)
                              '#!void))))))
            (if (##pair? _g9454694558_)
                (let ((_hd9455194581_ (##car _g9454694558_))
                      (_tl9455294583_ (##cdr _g9454694558_)))
                  (let ((_sys-cpu94586_ _hd9455194581_))
                    (if (##pair? _tl9455294583_)
                        (let ((_hd9455394588_ (##car _tl9455294583_))
                              (_tl9455494590_ (##cdr _tl9455294583_)))
                          (let ((_sys-vendor94593_ _hd9455394588_))
                            (if (##pair? _tl9455494590_)
                                (let ((_hd9455594595_ (##car _tl9455494590_))
                                      (_tl9455694597_ (##cdr _tl9455494590_)))
                                  (let ((_sys-type94600_ _hd9455594595_))
                                    (if (##null? _tl9455694597_)
                                        (_K9455094578_
                                         _sys-type94600_
                                         _sys-vendor94593_
                                         _sys-cpu94586_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self94542_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
