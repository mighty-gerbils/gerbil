(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708247275)
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
      (lambda (_self177052_ _bind?177053_)
        (if (##fx< '2 (##structure-length _self177052_))
            (begin
              (##unchecked-structure-set!
               _self177052_
               'root
               '1
               (##structure-type _self177052_)
               '#f)
              (##unchecked-structure-set!
               _self177052_
               (make-hash-table-eq)
               '2
               (##structure-type _self177052_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self177052_
                   '2
                   (##vector-length _self177052_)))
        (if _bind?177053_
            (begin
              (let ((__method181170
                     (method-ref _self177052_ 'bind-core-syntax-expanders!)))
                (if __method181170
                    (__method181170 _self177052_)
                    (error '"Missing method"
                           _self177052_
                           'bind-core-syntax-expanders!)))
              (let ((__method181171
                     (method-ref _self177052_ 'bind-core-macro-expanders!)))
                (if __method181171
                    (__method181171 _self177052_)
                    (error '"Missing method"
                           _self177052_
                           'bind-core-macro-expanders!)))
              (let ((__method181172
                     (method-ref _self177052_ 'bind-core-features!)))
                (if __method181172
                    (__method181172 _self177052_)
                    (error '"Missing method"
                           _self177052_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self177058_)
        (let ((_bind?177060_ '#t))
          (gx#root-context:::init!__% _self177058_ _bind?177060_))))
    (define gx#root-context:::init!
      (lambda _g181175_
        (let ((_g181174_ (##length _g181175_)))
          (cond ((##fx= _g181174_ 1)
                 (apply (lambda (_self177058_)
                          (gx#root-context:::init!__0 _self177058_))
                        _g181175_))
                ((##fx= _g181174_ 2)
                 (apply (lambda (_self177062_ _bind?177063_)
                          (gx#root-context:::init!__%
                           _self177062_
                           _bind?177063_))
                        _g181175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g181175_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t181131)
        (let ((__bind-core-macro-expanders!181132
               (make-promise
                (lambda ()
                  (let ((__tmp181135
                         (direct-method-ref
                          __t181131
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp181135
                        __tmp181135
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!181133
               (make-promise
                (lambda ()
                  (let ((__tmp181136
                         (direct-method-ref
                          __t181131
                          '#f
                          'bind-core-features!)))
                    (if __tmp181136
                        __tmp181136
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!181134
               (make-promise
                (lambda ()
                  (let ((__tmp181137
                         (direct-method-ref
                          __t181131
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp181137
                        __tmp181137
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda177050177055_
                 (lambda (_self177052_ _bind?177053_)
                   (if (##fx< '2 (##structure-length _self177052_))
                       (begin
                         (##unchecked-structure-set!
                          _self177052_
                          'root
                          '1
                          (##structure-type _self177052_)
                          '#f)
                         (##unchecked-structure-set!
                          _self177052_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self177052_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self177052_
                              '2
                              (##vector-length _self177052_)))
                   (if _bind?177053_
                       (begin
                         ((force __bind-core-syntax-expanders!181134)
                          _self177052_)
                         ((force __bind-core-macro-expanders!181132)
                          _self177052_)
                         ((force __bind-core-features!181133) _self177052_))
                       '#!void))))
            (lambda _g181177_
              (let ((_g181176_ (##length _g181177_)))
                (cond ((##fx= _g181176_ 1)
                       (apply (lambda (_self177058_)
                                (let ((_bind?177060_ '#t))
                                  (_opt-lambda177050177055_
                                   _self177058_
                                   _bind?177060_)))
                              _g181177_))
                      ((##fx= _g181176_ 2)
                       (apply (lambda (_self177062_ _bind?177063_)
                                (_opt-lambda177050177055_
                                 _self177062_
                                 _bind?177063_))
                              _g181177_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g181177_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self176908_ _super176909_)
        (let ((_super176917_
               (let ((_$e176911_ _super176909_))
                 (if _$e176911_
                     _$e176911_
                     (let ((_$e176914_ (gx#core-context-root__0)))
                       (if _$e176914_
                           _$e176914_
                           (let ((__obj181173
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj181173)
                             __obj181173)))))))
          (if (##fx< '5 (##structure-length _self176908_))
              (begin
                (##unchecked-structure-set!
                 _self176908_
                 'top
                 '1
                 (##structure-type _self176908_)
                 '#f)
                (##unchecked-structure-set!
                 _self176908_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self176908_)
                 '#f)
                (##unchecked-structure-set!
                 _self176908_
                 _super176917_
                 '3
                 (##structure-type _self176908_)
                 '#f)
                (##unchecked-structure-set!
                 _self176908_
                 '#f
                 '4
                 (##structure-type _self176908_)
                 '#f)
                (##unchecked-structure-set!
                 _self176908_
                 '#f
                 '5
                 (##structure-type _self176908_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self176908_
                     '5
                     (##vector-length _self176908_))))))
    (define gx#top-context:::init!__0
      (lambda (_self176922_)
        (let ((_super176924_ '#f))
          (gx#top-context:::init!__% _self176922_ _super176924_))))
    (define gx#top-context:::init!
      (lambda _g181179_
        (let ((_g181178_ (##length _g181179_)))
          (cond ((##fx= _g181178_ 1)
                 (apply (lambda (_self176922_)
                          (gx#top-context:::init!__0 _self176922_))
                        _g181179_))
                ((##fx= _g181178_ 2)
                 (apply (lambda (_self176926_ _super176927_)
                          (gx#top-context:::init!__%
                           _self176926_
                           _super176927_))
                        _g181179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g181179_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self176639_ _bindings176640_)
        (for-each
         (lambda (_bind176642_)
           (let* ((_bind176643176650_ _bind176642_)
                  (_E176645176654_
                   (lambda ()
                     (error '"No clause matching" _bind176643176650_)))
                  (_K176646176763_
                   (lambda (_rest176657_ _id176658_)
                     (gx#core-context-put!
                      _self176639_
                      _id176658_
                      (##structure
                       gx#syntax-binding::t
                       _id176658_
                       _id176658_
                       '#f
                       (let* ((_rest176659176670_ _rest176657_)
                              (_E176661176674_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest176659176670_)))
                              (_K176662176739_
                               (lambda (_compiler176677_
                                        _expander176678_
                                        _key176679_)
                                 ((let* ((_key176680176693_ _key176679_)
                                         (_E176686176697_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key176680176693_))))
                                    (let ((_K176691176733_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K176690176726_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K176689176718_
                                           (lambda () gx#make-definition-form))
                                          (_K176688176710_
                                           (lambda () gx#make-special-form))
                                          (_K176687176702_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match176685176705_
                                              (lambda ()
                                                (if (##eq? _key176680176693_
                                                           'expr:)
                                                    (_K176687176702_)
                                                    (_E176686176697_))))
                                             (_try-match176684176713_
                                              (lambda ()
                                                (if (##eq? _key176680176693_
                                                           'special:)
                                                    (_K176688176710_)
                                                    (_try-match176685176705_))))
                                             (_try-match176683176721_
                                              (lambda ()
                                                (if (##eq? _key176680176693_
                                                           'define:)
                                                    (_K176689176718_)
                                                    (_try-match176684176713_))))
                                             (_try-match176682176729_
                                              (lambda ()
                                                (if (##eq? _key176680176693_
                                                           'module:)
                                                    (_K176690176726_)
                                                    (_try-match176683176721_)))))
                                        (if (##eq? _key176680176693_ 'top:)
                                            (_K176691176733_)
                                            (_try-match176682176729_)))))
                                  _expander176678_
                                  _id176658_
                                  (let ((_$e176736_ _compiler176677_))
                                    (if _$e176736_
                                        _$e176736_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest176659176670_)
                             (let ((_hd176663176742_
                                    (##car _rest176659176670_))
                                   (_tl176664176744_
                                    (##cdr _rest176659176670_)))
                               (let ((_key176747_ _hd176663176742_))
                                 (if (##pair? _tl176664176744_)
                                     (let ((_hd176665176749_
                                            (##car _tl176664176744_))
                                           (_tl176666176751_
                                            (##cdr _tl176664176744_)))
                                       (let ((_expander176754_
                                              _hd176665176749_))
                                         (if (##pair? _tl176666176751_)
                                             (let ((_hd176667176756_
                                                    (##car _tl176666176751_))
                                                   (_tl176668176758_
                                                    (##cdr _tl176666176751_)))
                                               (let ((_compiler176761_
                                                      _hd176667176756_))
                                                 (if (##null? _tl176668176758_)
                                                     (_K176662176739_
                                                      _compiler176761_
                                                      _expander176754_
                                                      _key176747_)
                                                     (_E176661176674_))))
                                             (_E176661176674_))))
                                     (_E176661176674_))))
                             (_E176661176674_))))))))
             (if (##pair? _bind176643176650_)
                 (let ((_hd176647176766_ (##car _bind176643176650_))
                       (_tl176648176768_ (##cdr _bind176643176650_)))
                   (let* ((_id176771_ _hd176647176766_)
                          (_rest176773_ _tl176648176768_))
                     (_K176646176763_ _rest176773_ _id176771_)))
                 (_E176645176654_))))
         _bindings176640_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self176778_)
        (let ((_bindings176780_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self176778_
           _bindings176780_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g181181_
        (let ((_g181180_ (##length _g181181_)))
          (cond ((##fx= _g181180_ 1)
                 (apply (lambda (_self176778_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self176778_))
                        _g181181_))
                ((##fx= _g181180_ 2)
                 (apply (lambda (_self176782_ _bindings176783_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self176782_
                           _bindings176783_))
                        _g181181_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g181181_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self176411_ _bindings176412_)
        (for-each
         (lambda (_bind176414_)
           (let* ((_bind176415176422_ _bind176414_)
                  (_E176417176426_
                   (lambda ()
                     (error '"No clause matching" _bind176415176422_)))
                  (_K176418176494_
                   (lambda (_rest176429_ _id176430_)
                     (gx#core-context-put!
                      _self176411_
                      _id176430_
                      (##structure
                       gx#syntax-binding::t
                       _id176430_
                       _id176430_
                       '#f
                       (let* ((_rest176431176446_ _rest176429_)
                              (_E176435176450_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest176431176446_))))
                         (let ((_K176440176479_
                                (lambda (_core-id176477_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id176477_)))
                               (_K176437176464_
                                (lambda (_proc176462_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc176462_)))
                               (_K176436176455_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id176430_))))
                           (let ((_try-match176434176458_
                                  (lambda ()
                                    (if (##null? _rest176431176446_)
                                        (_K176436176455_)
                                        (_E176435176450_)))))
                             (if (##pair? _rest176431176446_)
                                 (let ((_tl176442176484_
                                        (##cdr _rest176431176446_))
                                       (_hd176441176482_
                                        (##car _rest176431176446_)))
                                   (if (##eq? _hd176441176482_ '=>)
                                       (if (##pair? _tl176442176484_)
                                           (let ((_tl176444176489_
                                                  (##cdr _tl176442176484_))
                                                 (_hd176443176487_
                                                  (##car _tl176442176484_)))
                                             (if (##null? _tl176444176489_)
                                                 (let ((_core-id176492_
                                                        _hd176443176487_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id176492_))
                                                 (_E176435176450_)))
                                           (if (##null? _tl176442176484_)
                                               (let ((_proc176472_
                                                      _hd176441176482_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc176472_))
                                               (_E176435176450_)))
                                       (if (##null? _tl176442176484_)
                                           (let ((_proc176472_
                                                  _hd176441176482_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc176472_))
                                           (_E176435176450_))))
                                 (_try-match176434176458_))))))))))
             (if (##pair? _bind176415176422_)
                 (let ((_hd176419176497_ (##car _bind176415176422_))
                       (_tl176420176499_ (##cdr _bind176415176422_)))
                   (let* ((_id176502_ _hd176419176497_)
                          (_rest176504_ _tl176420176499_))
                     (_K176418176494_ _rest176504_ _id176502_)))
                 (_E176417176426_))))
         _bindings176412_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self176509_)
        (let ((_bindings176511_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self176509_
           _bindings176511_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g181183_
        (let ((_g181182_ (##length _g181183_)))
          (cond ((##fx= _g181182_ 1)
                 (apply (lambda (_self176509_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self176509_))
                        _g181183_))
                ((##fx= _g181182_ 2)
                 (apply (lambda (_self176513_ _bindings176514_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self176513_
                           _bindings176514_))
                        _g181183_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g181183_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self176155_)
        (letrec ((_linux-variant?176157_
                  (lambda (_sys-type176256_)
                    (let* ((_g176257176265_
                            (string-split
                             (symbol->string _sys-type176256_)
                             '#\-))
                           (_else176259176273_ (lambda () '#f))
                           (_K176261176278_
                            (lambda (_rest176276_)
                              (not (null? _rest176276_)))))
                      (if (##pair? _g176257176265_)
                          (let ((_hd176262176281_ (##car _g176257176265_))
                                (_tl176263176283_ (##cdr _g176257176265_)))
                            (if (equal? _hd176262176281_ '"linux")
                                (let ((_rest176286_ _tl176263176283_))
                                  (_K176261176278_ _rest176286_))
                                (_else176259176273_)))
                          (_else176259176273_)))))
                 (_bsd-variant176158_
                  (lambda (_sys-type176215_)
                    (let ((_sys-type-str176217_
                           (symbol->string _sys-type176215_)))
                      (let _lp176219_ ((_rest176221_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest176222176230_ _rest176221_)
                               (_else176224176238_ (lambda () '#f))
                               (_K176226176244_
                                (lambda (_rest176241_ _sys176242_)
                                  (if (string-prefix?
                                       _sys176242_
                                       _sys-type-str176217_)
                                      _sys176242_
                                      (_lp176219_ _rest176241_)))))
                          (if (##pair? _rest176222176230_)
                              (let ((_hd176227176247_
                                     (##car _rest176222176230_))
                                    (_tl176228176249_
                                     (##cdr _rest176222176230_)))
                                (let* ((_sys176252_ _hd176227176247_)
                                       (_rest176254_ _tl176228176249_))
                                  (_K176226176244_ _rest176254_ _sys176252_)))
                              (_else176224176238_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self176155_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self176155_)
          (let* ((_g176159176171_ (system-type))
                 (_else176161176179_ (lambda () '#!void))
                 (_K176163176191_
                  (lambda (_sys-type176182_ _sys-vendor176183_ _sys-cpu176184_)
                    (gx#core-bind-feature!__%
                     _sys-cpu176184_
                     '#f
                     '0
                     _self176155_)
                    (gx#core-bind-feature!__%
                     _sys-type176182_
                     '#f
                     '0
                     _self176155_)
                    (if (_linux-variant?176157_ _sys-type176182_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self176155_)
                        (let ((_$e176186_
                               (_bsd-variant176158_ _sys-type176182_)))
                          (if _$e176186_
                              ((lambda (_sys-prefix176189_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self176155_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix176189_)
                                  '#f
                                  '0
                                  _self176155_))
                               _$e176186_)
                              '#!void))))))
            (if (##pair? _g176159176171_)
                (let ((_hd176164176194_ (##car _g176159176171_))
                      (_tl176165176196_ (##cdr _g176159176171_)))
                  (let ((_sys-cpu176199_ _hd176164176194_))
                    (if (##pair? _tl176165176196_)
                        (let ((_hd176166176201_ (##car _tl176165176196_))
                              (_tl176167176203_ (##cdr _tl176165176196_)))
                          (let ((_sys-vendor176206_ _hd176166176201_))
                            (if (##pair? _tl176167176203_)
                                (let ((_hd176168176208_
                                       (##car _tl176167176203_))
                                      (_tl176169176210_
                                       (##cdr _tl176167176203_)))
                                  (let ((_sys-type176213_ _hd176168176208_))
                                    (if (##null? _tl176169176210_)
                                        (_K176163176191_
                                         _sys-type176213_
                                         _sys-vendor176206_
                                         _sys-cpu176199_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self176155_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
