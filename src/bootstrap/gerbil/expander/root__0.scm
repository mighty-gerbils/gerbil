(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708387688)
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
      (lambda (_self94855_ _bind?94856_)
        (if (##fx< '2 (##structure-length _self94855_))
            (begin
              (##unchecked-structure-set!
               _self94855_
               'root
               '1
               (##structure-type _self94855_)
               '#f)
              (##unchecked-structure-set!
               _self94855_
               (make-hash-table-eq)
               '2
               (##structure-type _self94855_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94855_
                   '2
                   (##vector-length _self94855_)))
        (if _bind?94856_
            (begin
              (let ((__method94906
                     (method-ref _self94855_ 'bind-core-syntax-expanders!)))
                (if __method94906
                    (__method94906 _self94855_)
                    (error '"Missing method"
                           _self94855_
                           'bind-core-syntax-expanders!)))
              (let ((__method94907
                     (method-ref _self94855_ 'bind-core-macro-expanders!)))
                (if __method94907
                    (__method94907 _self94855_)
                    (error '"Missing method"
                           _self94855_
                           'bind-core-macro-expanders!)))
              (let ((__method94908
                     (method-ref _self94855_ 'bind-core-features!)))
                (if __method94908
                    (__method94908 _self94855_)
                    (error '"Missing method"
                           _self94855_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self94861_)
        (let ((_bind?94863_ '#t))
          (gx#root-context:::init!__% _self94861_ _bind?94863_))))
    (define gx#root-context:::init!
      (lambda _g94911_
        (let ((_g94910_ (##length _g94911_)))
          (cond ((##fx= _g94910_ 1)
                 (apply (lambda (_self94861_)
                          (gx#root-context:::init!__0 _self94861_))
                        _g94911_))
                ((##fx= _g94910_ 2)
                 (apply (lambda (_self94865_ _bind?94866_)
                          (gx#root-context:::init!__%
                           _self94865_
                           _bind?94866_))
                        _g94911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g94911_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t94867)
        (let ((__bind-core-syntax-expanders!94868
               (make-promise
                (lambda ()
                  (let ((__tmp94871
                         (direct-method-ref
                          __t94867
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp94871
                        __tmp94871
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!94869
               (make-promise
                (lambda ()
                  (let ((__tmp94872
                         (direct-method-ref
                          __t94867
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp94872
                        __tmp94872
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!94870
               (make-promise
                (lambda ()
                  (let ((__tmp94873
                         (direct-method-ref
                          __t94867
                          '#f
                          'bind-core-features!)))
                    (if __tmp94873
                        __tmp94873
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda9485394858_
                 (lambda (_self94855_ _bind?94856_)
                   (if (##fx< '2 (##structure-length _self94855_))
                       (begin
                         (##unchecked-structure-set!
                          _self94855_
                          'root
                          '1
                          (##structure-type _self94855_)
                          '#f)
                         (##unchecked-structure-set!
                          _self94855_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self94855_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self94855_
                              '2
                              (##vector-length _self94855_)))
                   (if _bind?94856_
                       (begin
                         ((force __bind-core-syntax-expanders!94868)
                          _self94855_)
                         ((force __bind-core-macro-expanders!94869)
                          _self94855_)
                         ((force __bind-core-features!94870) _self94855_))
                       '#!void))))
            (lambda _g94913_
              (let ((_g94912_ (##length _g94913_)))
                (cond ((##fx= _g94912_ 1)
                       (apply (lambda (_self94861_)
                                (let ((_bind?94863_ '#t))
                                  (_opt-lambda9485394858_
                                   _self94861_
                                   _bind?94863_)))
                              _g94913_))
                      ((##fx= _g94912_ 2)
                       (apply (lambda (_self94865_ _bind?94866_)
                                (_opt-lambda9485394858_
                                 _self94865_
                                 _bind?94866_))
                              _g94913_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g94913_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self94711_ _super94712_)
        (let ((_super94720_
               (let ((_$e94714_ _super94712_))
                 (if _$e94714_
                     _$e94714_
                     (let ((_$e94717_ (gx#core-context-root__0)))
                       (if _$e94717_
                           _$e94717_
                           (let ((__obj94909
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj94909)
                             __obj94909)))))))
          (if (##fx< '5 (##structure-length _self94711_))
              (begin
                (##unchecked-structure-set!
                 _self94711_
                 'top
                 '1
                 (##structure-type _self94711_)
                 '#f)
                (##unchecked-structure-set!
                 _self94711_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self94711_)
                 '#f)
                (##unchecked-structure-set!
                 _self94711_
                 _super94720_
                 '3
                 (##structure-type _self94711_)
                 '#f)
                (##unchecked-structure-set!
                 _self94711_
                 '#f
                 '4
                 (##structure-type _self94711_)
                 '#f)
                (##unchecked-structure-set!
                 _self94711_
                 '#f
                 '5
                 (##structure-type _self94711_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self94711_
                     '5
                     (##vector-length _self94711_))))))
    (define gx#top-context:::init!__0
      (lambda (_self94725_)
        (let ((_super94727_ '#f))
          (gx#top-context:::init!__% _self94725_ _super94727_))))
    (define gx#top-context:::init!
      (lambda _g94915_
        (let ((_g94914_ (##length _g94915_)))
          (cond ((##fx= _g94914_ 1)
                 (apply (lambda (_self94725_)
                          (gx#top-context:::init!__0 _self94725_))
                        _g94915_))
                ((##fx= _g94914_ 2)
                 (apply (lambda (_self94729_ _super94730_)
                          (gx#top-context:::init!__% _self94729_ _super94730_))
                        _g94915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g94915_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self94442_ _bindings94443_)
        (for-each
         (lambda (_bind94445_)
           (let* ((_bind9444694453_ _bind94445_)
                  (_E9444894457_
                   (lambda () (error '"No clause matching" _bind9444694453_)))
                  (_K9444994566_
                   (lambda (_rest94460_ _id94461_)
                     (gx#core-context-put!
                      _self94442_
                      _id94461_
                      (##structure
                       gx#syntax-binding::t
                       _id94461_
                       _id94461_
                       '#f
                       (let* ((_rest9446294473_ _rest94460_)
                              (_E9446494477_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9446294473_)))
                              (_K9446594542_
                               (lambda (_compiler94480_
                                        _expander94481_
                                        _key94482_)
                                 ((let* ((_key9448394496_ _key94482_)
                                         (_E9448994500_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9448394496_))))
                                    (let ((_K9449494536_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9449394529_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9449294521_
                                           (lambda () gx#make-definition-form))
                                          (_K9449194513_
                                           (lambda () gx#make-special-form))
                                          (_K9449094505_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9448894508_
                                              (lambda ()
                                                (if (##eq? _key9448394496_
                                                           'expr:)
                                                    (_K9449094505_)
                                                    (_E9448994500_))))
                                             (_try-match9448794516_
                                              (lambda ()
                                                (if (##eq? _key9448394496_
                                                           'special:)
                                                    (_K9449194513_)
                                                    (_try-match9448894508_))))
                                             (_try-match9448694524_
                                              (lambda ()
                                                (if (##eq? _key9448394496_
                                                           'define:)
                                                    (_K9449294521_)
                                                    (_try-match9448794516_))))
                                             (_try-match9448594532_
                                              (lambda ()
                                                (if (##eq? _key9448394496_
                                                           'module:)
                                                    (_K9449394529_)
                                                    (_try-match9448694524_)))))
                                        (if (##eq? _key9448394496_ 'top:)
                                            (_K9449494536_)
                                            (_try-match9448594532_)))))
                                  _expander94481_
                                  _id94461_
                                  (let ((_$e94539_ _compiler94480_))
                                    (if _$e94539_
                                        _$e94539_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9446294473_)
                             (let ((_hd9446694545_ (##car _rest9446294473_))
                                   (_tl9446794547_ (##cdr _rest9446294473_)))
                               (let ((_key94550_ _hd9446694545_))
                                 (if (##pair? _tl9446794547_)
                                     (let ((_hd9446894552_
                                            (##car _tl9446794547_))
                                           (_tl9446994554_
                                            (##cdr _tl9446794547_)))
                                       (let ((_expander94557_ _hd9446894552_))
                                         (if (##pair? _tl9446994554_)
                                             (let ((_hd9447094559_
                                                    (##car _tl9446994554_))
                                                   (_tl9447194561_
                                                    (##cdr _tl9446994554_)))
                                               (let ((_compiler94564_
                                                      _hd9447094559_))
                                                 (if (##null? _tl9447194561_)
                                                     (_K9446594542_
                                                      _compiler94564_
                                                      _expander94557_
                                                      _key94550_)
                                                     (_E9446494477_))))
                                             (_E9446494477_))))
                                     (_E9446494477_))))
                             (_E9446494477_))))))))
             (if (##pair? _bind9444694453_)
                 (let ((_hd9445094569_ (##car _bind9444694453_))
                       (_tl9445194571_ (##cdr _bind9444694453_)))
                   (let* ((_id94574_ _hd9445094569_)
                          (_rest94576_ _tl9445194571_))
                     (_K9444994566_ _rest94576_ _id94574_)))
                 (_E9444894457_))))
         _bindings94443_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self94581_)
        (let ((_bindings94583_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self94581_
           _bindings94583_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g94917_
        (let ((_g94916_ (##length _g94917_)))
          (cond ((##fx= _g94916_ 1)
                 (apply (lambda (_self94581_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self94581_))
                        _g94917_))
                ((##fx= _g94916_ 2)
                 (apply (lambda (_self94585_ _bindings94586_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self94585_
                           _bindings94586_))
                        _g94917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g94917_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self94214_ _bindings94215_)
        (for-each
         (lambda (_bind94217_)
           (let* ((_bind9421894225_ _bind94217_)
                  (_E9422094229_
                   (lambda () (error '"No clause matching" _bind9421894225_)))
                  (_K9422194297_
                   (lambda (_rest94232_ _id94233_)
                     (gx#core-context-put!
                      _self94214_
                      _id94233_
                      (##structure
                       gx#syntax-binding::t
                       _id94233_
                       _id94233_
                       '#f
                       (let* ((_rest9423494249_ _rest94232_)
                              (_E9423894253_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9423494249_))))
                         (let ((_K9424394282_
                                (lambda (_core-id94280_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id94280_)))
                               (_K9424094267_
                                (lambda (_proc94265_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc94265_)))
                               (_K9423994258_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id94233_))))
                           (let ((_try-match9423794261_
                                  (lambda ()
                                    (if (##null? _rest9423494249_)
                                        (_K9423994258_)
                                        (_E9423894253_)))))
                             (if (##pair? _rest9423494249_)
                                 (let ((_tl9424594287_
                                        (##cdr _rest9423494249_))
                                       (_hd9424494285_
                                        (##car _rest9423494249_)))
                                   (if (##eq? _hd9424494285_ '=>)
                                       (if (##pair? _tl9424594287_)
                                           (let ((_tl9424794292_
                                                  (##cdr _tl9424594287_))
                                                 (_hd9424694290_
                                                  (##car _tl9424594287_)))
                                             (if (##null? _tl9424794292_)
                                                 (let ((_core-id94295_
                                                        _hd9424694290_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id94295_))
                                                 (_E9423894253_)))
                                           (if (##null? _tl9424594287_)
                                               (let ((_proc94275_
                                                      _hd9424494285_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc94275_))
                                               (_E9423894253_)))
                                       (if (##null? _tl9424594287_)
                                           (let ((_proc94275_ _hd9424494285_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc94275_))
                                           (_E9423894253_))))
                                 (_try-match9423794261_))))))))))
             (if (##pair? _bind9421894225_)
                 (let ((_hd9422294300_ (##car _bind9421894225_))
                       (_tl9422394302_ (##cdr _bind9421894225_)))
                   (let* ((_id94305_ _hd9422294300_)
                          (_rest94307_ _tl9422394302_))
                     (_K9422194297_ _rest94307_ _id94305_)))
                 (_E9422094229_))))
         _bindings94215_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self94312_)
        (let ((_bindings94314_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self94312_
           _bindings94314_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g94919_
        (let ((_g94918_ (##length _g94919_)))
          (cond ((##fx= _g94918_ 1)
                 (apply (lambda (_self94312_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self94312_))
                        _g94919_))
                ((##fx= _g94918_ 2)
                 (apply (lambda (_self94316_ _bindings94317_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self94316_
                           _bindings94317_))
                        _g94919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g94919_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self93958_)
        (letrec ((_linux-variant?93960_
                  (lambda (_sys-type94059_)
                    (let* ((_g9406094068_
                            (string-split
                             (symbol->string _sys-type94059_)
                             '#\-))
                           (_else9406294076_ (lambda () '#f))
                           (_K9406494081_
                            (lambda (_rest94079_) (not (null? _rest94079_)))))
                      (if (##pair? _g9406094068_)
                          (let ((_hd9406594084_ (##car _g9406094068_))
                                (_tl9406694086_ (##cdr _g9406094068_)))
                            (if (equal? _hd9406594084_ '"linux")
                                (let ((_rest94089_ _tl9406694086_))
                                  (_K9406494081_ _rest94089_))
                                (_else9406294076_)))
                          (_else9406294076_)))))
                 (_bsd-variant93961_
                  (lambda (_sys-type94018_)
                    (let ((_sys-type-str94020_
                           (symbol->string _sys-type94018_)))
                      (let _lp94022_ ((_rest94024_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9402594033_ _rest94024_)
                               (_else9402794041_ (lambda () '#f))
                               (_K9402994047_
                                (lambda (_rest94044_ _sys94045_)
                                  (if (string-prefix?
                                       _sys94045_
                                       _sys-type-str94020_)
                                      _sys94045_
                                      (_lp94022_ _rest94044_)))))
                          (if (##pair? _rest9402594033_)
                              (let ((_hd9403094050_ (##car _rest9402594033_))
                                    (_tl9403194052_ (##cdr _rest9402594033_)))
                                (let* ((_sys94055_ _hd9403094050_)
                                       (_rest94057_ _tl9403194052_))
                                  (_K9402994047_ _rest94057_ _sys94055_)))
                              (_else9402794041_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self93958_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self93958_)
          (let* ((_g9396293974_ (system-type))
                 (_else9396493982_ (lambda () '#!void))
                 (_K9396693994_
                  (lambda (_sys-type93985_ _sys-vendor93986_ _sys-cpu93987_)
                    (gx#core-bind-feature!__%
                     _sys-cpu93987_
                     '#f
                     '0
                     _self93958_)
                    (gx#core-bind-feature!__%
                     _sys-type93985_
                     '#f
                     '0
                     _self93958_)
                    (if (_linux-variant?93960_ _sys-type93985_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self93958_)
                        (let ((_$e93989_ (_bsd-variant93961_ _sys-type93985_)))
                          (if _$e93989_
                              ((lambda (_sys-prefix93992_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self93958_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix93992_)
                                  '#f
                                  '0
                                  _self93958_))
                               _$e93989_)
                              '#!void))))))
            (if (##pair? _g9396293974_)
                (let ((_hd9396793997_ (##car _g9396293974_))
                      (_tl9396893999_ (##cdr _g9396293974_)))
                  (let ((_sys-cpu94002_ _hd9396793997_))
                    (if (##pair? _tl9396893999_)
                        (let ((_hd9396994004_ (##car _tl9396893999_))
                              (_tl9397094006_ (##cdr _tl9396893999_)))
                          (let ((_sys-vendor94009_ _hd9396994004_))
                            (if (##pair? _tl9397094006_)
                                (let ((_hd9397194011_ (##car _tl9397094006_))
                                      (_tl9397294013_ (##cdr _tl9397094006_)))
                                  (let ((_sys-type94016_ _hd9397194011_))
                                    (if (##null? _tl9397294013_)
                                        (_K9396693994_
                                         _sys-type94016_
                                         _sys-vendor94009_
                                         _sys-cpu94002_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self93958_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
