(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1709127356)
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
      (lambda (_self95912_ _bind?95913_)
        (if (##fx< '2 (##structure-length _self95912_))
            (begin
              (##unchecked-structure-set!
               _self95912_
               'root
               '1
               (##structure-type _self95912_)
               '#f)
              (##unchecked-structure-set!
               _self95912_
               (make-hash-table-eq)
               '2
               (##structure-type _self95912_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self95912_
                   '2
                   (##vector-length _self95912_)))
        (if _bind?95913_
            (begin
              (let ((__method95964
                     (method-ref _self95912_ 'bind-core-syntax-expanders!)))
                (if __method95964
                    (__method95964 _self95912_)
                    (error '"Missing method"
                           _self95912_
                           'bind-core-syntax-expanders!)))
              (let ((__method95965
                     (method-ref _self95912_ 'bind-core-macro-expanders!)))
                (if __method95965
                    (__method95965 _self95912_)
                    (error '"Missing method"
                           _self95912_
                           'bind-core-macro-expanders!)))
              (let ((__method95966
                     (method-ref _self95912_ 'bind-core-features!)))
                (if __method95966
                    (__method95966 _self95912_)
                    (error '"Missing method"
                           _self95912_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self95918_)
        (let ((_bind?95920_ '#t))
          (gx#root-context:::init!__% _self95918_ _bind?95920_))))
    (define gx#root-context:::init!
      (lambda _g95969_
        (let ((_g95968_ (##length _g95969_)))
          (cond ((##fx= _g95968_ 1)
                 (apply (lambda (_self95918_)
                          (gx#root-context:::init!__0 _self95918_))
                        _g95969_))
                ((##fx= _g95968_ 2)
                 (apply (lambda (_self95922_ _bind?95923_)
                          (gx#root-context:::init!__%
                           _self95922_
                           _bind?95923_))
                        _g95969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g95969_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass95924 __method-table95925)
        (let ((__bind-core-features!95926
               (make-promise
                (lambda ()
                  (let ((__method95929
                         (symbolic-table-ref
                          __method-table95925
                          'bind-core-features!
                          '#f)))
                    (if __method95929
                        __method95929
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!95927
               (make-promise
                (lambda ()
                  (let ((__method95930
                         (symbolic-table-ref
                          __method-table95925
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method95930
                        __method95930
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!95928
               (make-promise
                (lambda ()
                  (let ((__method95931
                         (symbolic-table-ref
                          __method-table95925
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method95931
                        __method95931
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda9591095915_
                 (lambda (_self95912_ _bind?95913_)
                   (if (##fx< '2 (##structure-length _self95912_))
                       (begin
                         (##unchecked-structure-set!
                          _self95912_
                          'root
                          '1
                          (##structure-type _self95912_)
                          '#f)
                         (##unchecked-structure-set!
                          _self95912_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self95912_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self95912_
                              '2
                              (##vector-length _self95912_)))
                   (if _bind?95913_
                       (begin
                         ((force __bind-core-syntax-expanders!95928)
                          _self95912_)
                         ((force __bind-core-macro-expanders!95927)
                          _self95912_)
                         ((force __bind-core-features!95926) _self95912_))
                       '#!void))))
            (lambda _g95971_
              (let ((_g95970_ (##length _g95971_)))
                (cond ((##fx= _g95970_ 1)
                       (apply (lambda (_self95918_)
                                (let ((_bind?95920_ '#t))
                                  (_opt-lambda9591095915_
                                   _self95918_
                                   _bind?95920_)))
                              _g95971_))
                      ((##fx= _g95970_ 2)
                       (apply (lambda (_self95922_ _bind?95923_)
                                (_opt-lambda9591095915_
                                 _self95922_
                                 _bind?95923_))
                              _g95971_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g95971_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self95768_ _super95769_)
        (let ((_super95777_
               (let ((_$e95771_ _super95769_))
                 (if _$e95771_
                     _$e95771_
                     (let ((_$e95774_ (gx#core-context-root__0)))
                       (if _$e95774_
                           _$e95774_
                           (let ((__obj95967
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj95967)
                             __obj95967)))))))
          (if (##fx< '5 (##structure-length _self95768_))
              (begin
                (##unchecked-structure-set!
                 _self95768_
                 'top
                 '1
                 (##structure-type _self95768_)
                 '#f)
                (##unchecked-structure-set!
                 _self95768_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self95768_)
                 '#f)
                (##unchecked-structure-set!
                 _self95768_
                 _super95777_
                 '3
                 (##structure-type _self95768_)
                 '#f)
                (##unchecked-structure-set!
                 _self95768_
                 '#f
                 '4
                 (##structure-type _self95768_)
                 '#f)
                (##unchecked-structure-set!
                 _self95768_
                 '#f
                 '5
                 (##structure-type _self95768_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self95768_
                     '5
                     (##vector-length _self95768_))))))
    (define gx#top-context:::init!__0
      (lambda (_self95782_)
        (let ((_super95784_ '#f))
          (gx#top-context:::init!__% _self95782_ _super95784_))))
    (define gx#top-context:::init!
      (lambda _g95973_
        (let ((_g95972_ (##length _g95973_)))
          (cond ((##fx= _g95972_ 1)
                 (apply (lambda (_self95782_)
                          (gx#top-context:::init!__0 _self95782_))
                        _g95973_))
                ((##fx= _g95972_ 2)
                 (apply (lambda (_self95786_ _super95787_)
                          (gx#top-context:::init!__% _self95786_ _super95787_))
                        _g95973_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g95973_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self95499_ _bindings95500_)
        (for-each
         (lambda (_bind95502_)
           (let* ((_bind9550395510_ _bind95502_)
                  (_E9550595514_
                   (lambda () (error '"No clause matching" _bind9550395510_)))
                  (_K9550695623_
                   (lambda (_rest95517_ _id95518_)
                     (gx#core-context-put!
                      _self95499_
                      _id95518_
                      (##structure
                       gx#syntax-binding::t
                       _id95518_
                       _id95518_
                       '#f
                       (let* ((_rest9551995530_ _rest95517_)
                              (_E9552195534_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9551995530_)))
                              (_K9552295599_
                               (lambda (_compiler95537_
                                        _expander95538_
                                        _key95539_)
                                 ((let* ((_key9554095553_ _key95539_)
                                         (_E9554695557_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9554095553_))))
                                    (let ((_K9555195593_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9555095586_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9554995578_
                                           (lambda () gx#make-definition-form))
                                          (_K9554895570_
                                           (lambda () gx#make-special-form))
                                          (_K9554795562_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9554595565_
                                              (lambda ()
                                                (if (##eq? _key9554095553_
                                                           'expr:)
                                                    (_K9554795562_)
                                                    (_E9554695557_))))
                                             (_try-match9554495573_
                                              (lambda ()
                                                (if (##eq? _key9554095553_
                                                           'special:)
                                                    (_K9554895570_)
                                                    (_try-match9554595565_))))
                                             (_try-match9554395581_
                                              (lambda ()
                                                (if (##eq? _key9554095553_
                                                           'define:)
                                                    (_K9554995578_)
                                                    (_try-match9554495573_))))
                                             (_try-match9554295589_
                                              (lambda ()
                                                (if (##eq? _key9554095553_
                                                           'module:)
                                                    (_K9555095586_)
                                                    (_try-match9554395581_)))))
                                        (if (##eq? _key9554095553_ 'top:)
                                            (_K9555195593_)
                                            (_try-match9554295589_)))))
                                  _expander95538_
                                  _id95518_
                                  (let ((_$e95596_ _compiler95537_))
                                    (if _$e95596_
                                        _$e95596_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9551995530_)
                             (let ((_hd9552395602_ (##car _rest9551995530_))
                                   (_tl9552495604_ (##cdr _rest9551995530_)))
                               (let ((_key95607_ _hd9552395602_))
                                 (if (##pair? _tl9552495604_)
                                     (let ((_hd9552595609_
                                            (##car _tl9552495604_))
                                           (_tl9552695611_
                                            (##cdr _tl9552495604_)))
                                       (let ((_expander95614_ _hd9552595609_))
                                         (if (##pair? _tl9552695611_)
                                             (let ((_hd9552795616_
                                                    (##car _tl9552695611_))
                                                   (_tl9552895618_
                                                    (##cdr _tl9552695611_)))
                                               (let ((_compiler95621_
                                                      _hd9552795616_))
                                                 (if (##null? _tl9552895618_)
                                                     (_K9552295599_
                                                      _compiler95621_
                                                      _expander95614_
                                                      _key95607_)
                                                     (_E9552195534_))))
                                             (_E9552195534_))))
                                     (_E9552195534_))))
                             (_E9552195534_))))))))
             (if (##pair? _bind9550395510_)
                 (let ((_hd9550795626_ (##car _bind9550395510_))
                       (_tl9550895628_ (##cdr _bind9550395510_)))
                   (let* ((_id95631_ _hd9550795626_)
                          (_rest95633_ _tl9550895628_))
                     (_K9550695623_ _rest95633_ _id95631_)))
                 (_E9550595514_))))
         _bindings95500_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self95638_)
        (let ((_bindings95640_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self95638_
           _bindings95640_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g95975_
        (let ((_g95974_ (##length _g95975_)))
          (cond ((##fx= _g95974_ 1)
                 (apply (lambda (_self95638_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self95638_))
                        _g95975_))
                ((##fx= _g95974_ 2)
                 (apply (lambda (_self95642_ _bindings95643_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self95642_
                           _bindings95643_))
                        _g95975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g95975_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self95271_ _bindings95272_)
        (for-each
         (lambda (_bind95274_)
           (let* ((_bind9527595282_ _bind95274_)
                  (_E9527795286_
                   (lambda () (error '"No clause matching" _bind9527595282_)))
                  (_K9527895354_
                   (lambda (_rest95289_ _id95290_)
                     (gx#core-context-put!
                      _self95271_
                      _id95290_
                      (##structure
                       gx#syntax-binding::t
                       _id95290_
                       _id95290_
                       '#f
                       (let* ((_rest9529195306_ _rest95289_)
                              (_E9529595310_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9529195306_))))
                         (let ((_K9530095339_
                                (lambda (_core-id95337_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id95337_)))
                               (_K9529795324_
                                (lambda (_proc95322_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc95322_)))
                               (_K9529695315_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id95290_))))
                           (let ((_try-match9529495318_
                                  (lambda ()
                                    (if (##null? _rest9529195306_)
                                        (_K9529695315_)
                                        (_E9529595310_)))))
                             (if (##pair? _rest9529195306_)
                                 (let ((_tl9530295344_
                                        (##cdr _rest9529195306_))
                                       (_hd9530195342_
                                        (##car _rest9529195306_)))
                                   (if (##eq? _hd9530195342_ '=>)
                                       (if (##pair? _tl9530295344_)
                                           (let ((_tl9530495349_
                                                  (##cdr _tl9530295344_))
                                                 (_hd9530395347_
                                                  (##car _tl9530295344_)))
                                             (if (##null? _tl9530495349_)
                                                 (let ((_core-id95352_
                                                        _hd9530395347_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id95352_))
                                                 (_E9529595310_)))
                                           (if (##null? _tl9530295344_)
                                               (let ((_proc95332_
                                                      _hd9530195342_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc95332_))
                                               (_E9529595310_)))
                                       (if (##null? _tl9530295344_)
                                           (let ((_proc95332_ _hd9530195342_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc95332_))
                                           (_E9529595310_))))
                                 (_try-match9529495318_))))))))))
             (if (##pair? _bind9527595282_)
                 (let ((_hd9527995357_ (##car _bind9527595282_))
                       (_tl9528095359_ (##cdr _bind9527595282_)))
                   (let* ((_id95362_ _hd9527995357_)
                          (_rest95364_ _tl9528095359_))
                     (_K9527895354_ _rest95364_ _id95362_)))
                 (_E9527795286_))))
         _bindings95272_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self95369_)
        (let ((_bindings95371_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self95369_
           _bindings95371_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g95977_
        (let ((_g95976_ (##length _g95977_)))
          (cond ((##fx= _g95976_ 1)
                 (apply (lambda (_self95369_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self95369_))
                        _g95977_))
                ((##fx= _g95976_ 2)
                 (apply (lambda (_self95373_ _bindings95374_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self95373_
                           _bindings95374_))
                        _g95977_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g95977_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self95015_)
        (letrec ((_linux-variant?95017_
                  (lambda (_sys-type95116_)
                    (let* ((_g9511795125_
                            (string-split
                             (symbol->string _sys-type95116_)
                             '#\-))
                           (_else9511995133_ (lambda () '#f))
                           (_K9512195138_
                            (lambda (_rest95136_) (not (null? _rest95136_)))))
                      (if (##pair? _g9511795125_)
                          (let ((_hd9512295141_ (##car _g9511795125_))
                                (_tl9512395143_ (##cdr _g9511795125_)))
                            (if (equal? _hd9512295141_ '"linux")
                                (let ((_rest95146_ _tl9512395143_))
                                  (_K9512195138_ _rest95146_))
                                (_else9511995133_)))
                          (_else9511995133_)))))
                 (_bsd-variant95018_
                  (lambda (_sys-type95075_)
                    (let ((_sys-type-str95077_
                           (symbol->string _sys-type95075_)))
                      (let _lp95079_ ((_rest95081_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9508295090_ _rest95081_)
                               (_else9508495098_ (lambda () '#f))
                               (_K9508695104_
                                (lambda (_rest95101_ _sys95102_)
                                  (if (string-prefix?
                                       _sys95102_
                                       _sys-type-str95077_)
                                      _sys95102_
                                      (_lp95079_ _rest95101_)))))
                          (if (##pair? _rest9508295090_)
                              (let ((_hd9508795107_ (##car _rest9508295090_))
                                    (_tl9508895109_ (##cdr _rest9508295090_)))
                                (let* ((_sys95112_ _hd9508795107_)
                                       (_rest95114_ _tl9508895109_))
                                  (_K9508695104_ _rest95114_ _sys95112_)))
                              (_else9508495098_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self95015_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self95015_)
          (let* ((_g9501995031_ (system-type))
                 (_else9502195039_ (lambda () '#!void))
                 (_K9502395051_
                  (lambda (_sys-type95042_ _sys-vendor95043_ _sys-cpu95044_)
                    (gx#core-bind-feature!__%
                     _sys-cpu95044_
                     '#f
                     '0
                     _self95015_)
                    (gx#core-bind-feature!__%
                     _sys-type95042_
                     '#f
                     '0
                     _self95015_)
                    (if (_linux-variant?95017_ _sys-type95042_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self95015_)
                        (let ((_$e95046_ (_bsd-variant95018_ _sys-type95042_)))
                          (if _$e95046_
                              ((lambda (_sys-prefix95049_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self95015_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix95049_)
                                  '#f
                                  '0
                                  _self95015_))
                               _$e95046_)
                              '#!void))))))
            (if (##pair? _g9501995031_)
                (let ((_hd9502495054_ (##car _g9501995031_))
                      (_tl9502595056_ (##cdr _g9501995031_)))
                  (let ((_sys-cpu95059_ _hd9502495054_))
                    (if (##pair? _tl9502595056_)
                        (let ((_hd9502695061_ (##car _tl9502595056_))
                              (_tl9502795063_ (##cdr _tl9502595056_)))
                          (let ((_sys-vendor95066_ _hd9502695061_))
                            (if (##pair? _tl9502795063_)
                                (let ((_hd9502895068_ (##car _tl9502795063_))
                                      (_tl9502995070_ (##cdr _tl9502795063_)))
                                  (let ((_sys-type95073_ _hd9502895068_))
                                    (if (##null? _tl9502995070_)
                                        (_K9502395051_
                                         _sys-type95073_
                                         _sys-vendor95066_
                                         _sys-cpu95059_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self95015_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
