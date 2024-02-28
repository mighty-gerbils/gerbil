(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1709159707)
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
      (lambda (_self95914_ _bind?95915_)
        (if (##fx< '2 (##structure-length _self95914_))
            (begin
              (##unchecked-structure-set!
               _self95914_
               'root
               '1
               (##structure-type _self95914_)
               '#f)
              (##unchecked-structure-set!
               _self95914_
               (make-hash-table-eq)
               '2
               (##structure-type _self95914_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self95914_
                   '2
                   (##vector-length _self95914_)))
        (if _bind?95915_
            (begin
              (let ((__method95966
                     (method-ref _self95914_ 'bind-core-syntax-expanders!)))
                (if __method95966
                    (__method95966 _self95914_)
                    (error '"Missing method"
                           _self95914_
                           'bind-core-syntax-expanders!)))
              (let ((__method95967
                     (method-ref _self95914_ 'bind-core-macro-expanders!)))
                (if __method95967
                    (__method95967 _self95914_)
                    (error '"Missing method"
                           _self95914_
                           'bind-core-macro-expanders!)))
              (let ((__method95968
                     (method-ref _self95914_ 'bind-core-features!)))
                (if __method95968
                    (__method95968 _self95914_)
                    (error '"Missing method"
                           _self95914_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self95920_)
        (let ((_bind?95922_ '#t))
          (gx#root-context:::init!__% _self95920_ _bind?95922_))))
    (define gx#root-context:::init!
      (lambda _g95971_
        (let ((_g95970_ (##length _g95971_)))
          (cond ((##fx= _g95970_ 1)
                 (apply (lambda (_self95920_)
                          (gx#root-context:::init!__0 _self95920_))
                        _g95971_))
                ((##fx= _g95970_ 2)
                 (apply (lambda (_self95924_ _bind?95925_)
                          (gx#root-context:::init!__%
                           _self95924_
                           _bind?95925_))
                        _g95971_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g95971_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass95926 __method-table95927)
        (let ((__bind-core-macro-expanders!95928
               (make-promise
                (lambda ()
                  (let ((__method95931
                         (symbolic-table-ref
                          __method-table95927
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method95931
                        __method95931
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!95929
               (make-promise
                (lambda ()
                  (let ((__method95932
                         (symbolic-table-ref
                          __method-table95927
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method95932
                        __method95932
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!95930
               (make-promise
                (lambda ()
                  (let ((__method95933
                         (symbolic-table-ref
                          __method-table95927
                          'bind-core-features!
                          '#f)))
                    (if __method95933
                        __method95933
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda9591295917_
                 (lambda (_self95914_ _bind?95915_)
                   (if (##fx< '2 (##structure-length _self95914_))
                       (begin
                         (##unchecked-structure-set!
                          _self95914_
                          'root
                          '1
                          (##structure-type _self95914_)
                          '#f)
                         (##unchecked-structure-set!
                          _self95914_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self95914_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self95914_
                              '2
                              (##vector-length _self95914_)))
                   (if _bind?95915_
                       (begin
                         ((force __bind-core-syntax-expanders!95929)
                          _self95914_)
                         ((force __bind-core-macro-expanders!95928)
                          _self95914_)
                         ((force __bind-core-features!95930) _self95914_))
                       '#!void))))
            (lambda _g95973_
              (let ((_g95972_ (##length _g95973_)))
                (cond ((##fx= _g95972_ 1)
                       (apply (lambda (_self95920_)
                                (let ((_bind?95922_ '#t))
                                  (_opt-lambda9591295917_
                                   _self95920_
                                   _bind?95922_)))
                              _g95973_))
                      ((##fx= _g95972_ 2)
                       (apply (lambda (_self95924_ _bind?95925_)
                                (_opt-lambda9591295917_
                                 _self95924_
                                 _bind?95925_))
                              _g95973_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g95973_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self95770_ _super95771_)
        (let ((_super95779_
               (let ((_$e95773_ _super95771_))
                 (if _$e95773_
                     _$e95773_
                     (let ((_$e95776_ (gx#core-context-root__0)))
                       (if _$e95776_
                           _$e95776_
                           (let ((__obj95969
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj95969)
                             __obj95969)))))))
          (if (##fx< '5 (##structure-length _self95770_))
              (begin
                (##unchecked-structure-set!
                 _self95770_
                 'top
                 '1
                 (##structure-type _self95770_)
                 '#f)
                (##unchecked-structure-set!
                 _self95770_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self95770_)
                 '#f)
                (##unchecked-structure-set!
                 _self95770_
                 _super95779_
                 '3
                 (##structure-type _self95770_)
                 '#f)
                (##unchecked-structure-set!
                 _self95770_
                 '#f
                 '4
                 (##structure-type _self95770_)
                 '#f)
                (##unchecked-structure-set!
                 _self95770_
                 '#f
                 '5
                 (##structure-type _self95770_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self95770_
                     '5
                     (##vector-length _self95770_))))))
    (define gx#top-context:::init!__0
      (lambda (_self95784_)
        (let ((_super95786_ '#f))
          (gx#top-context:::init!__% _self95784_ _super95786_))))
    (define gx#top-context:::init!
      (lambda _g95975_
        (let ((_g95974_ (##length _g95975_)))
          (cond ((##fx= _g95974_ 1)
                 (apply (lambda (_self95784_)
                          (gx#top-context:::init!__0 _self95784_))
                        _g95975_))
                ((##fx= _g95974_ 2)
                 (apply (lambda (_self95788_ _super95789_)
                          (gx#top-context:::init!__% _self95788_ _super95789_))
                        _g95975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g95975_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self95501_ _bindings95502_)
        (for-each
         (lambda (_bind95504_)
           (let* ((_bind9550595512_ _bind95504_)
                  (_E9550795516_
                   (lambda () (error '"No clause matching" _bind9550595512_)))
                  (_K9550895625_
                   (lambda (_rest95519_ _id95520_)
                     (gx#core-context-put!
                      _self95501_
                      _id95520_
                      (##structure
                       gx#syntax-binding::t
                       _id95520_
                       _id95520_
                       '#f
                       (let* ((_rest9552195532_ _rest95519_)
                              (_E9552395536_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9552195532_)))
                              (_K9552495601_
                               (lambda (_compiler95539_
                                        _expander95540_
                                        _key95541_)
                                 ((let* ((_key9554295555_ _key95541_)
                                         (_E9554895559_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9554295555_))))
                                    (let ((_K9555395595_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9555295588_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9555195580_
                                           (lambda () gx#make-definition-form))
                                          (_K9555095572_
                                           (lambda () gx#make-special-form))
                                          (_K9554995564_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9554795567_
                                              (lambda ()
                                                (if (##eq? _key9554295555_
                                                           'expr:)
                                                    (_K9554995564_)
                                                    (_E9554895559_))))
                                             (_try-match9554695575_
                                              (lambda ()
                                                (if (##eq? _key9554295555_
                                                           'special:)
                                                    (_K9555095572_)
                                                    (_try-match9554795567_))))
                                             (_try-match9554595583_
                                              (lambda ()
                                                (if (##eq? _key9554295555_
                                                           'define:)
                                                    (_K9555195580_)
                                                    (_try-match9554695575_))))
                                             (_try-match9554495591_
                                              (lambda ()
                                                (if (##eq? _key9554295555_
                                                           'module:)
                                                    (_K9555295588_)
                                                    (_try-match9554595583_)))))
                                        (if (##eq? _key9554295555_ 'top:)
                                            (_K9555395595_)
                                            (_try-match9554495591_)))))
                                  _expander95540_
                                  _id95520_
                                  (let ((_$e95598_ _compiler95539_))
                                    (if _$e95598_
                                        _$e95598_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9552195532_)
                             (let ((_hd9552595604_ (##car _rest9552195532_))
                                   (_tl9552695606_ (##cdr _rest9552195532_)))
                               (let ((_key95609_ _hd9552595604_))
                                 (if (##pair? _tl9552695606_)
                                     (let ((_hd9552795611_
                                            (##car _tl9552695606_))
                                           (_tl9552895613_
                                            (##cdr _tl9552695606_)))
                                       (let ((_expander95616_ _hd9552795611_))
                                         (if (##pair? _tl9552895613_)
                                             (let ((_hd9552995618_
                                                    (##car _tl9552895613_))
                                                   (_tl9553095620_
                                                    (##cdr _tl9552895613_)))
                                               (let ((_compiler95623_
                                                      _hd9552995618_))
                                                 (if (##null? _tl9553095620_)
                                                     (_K9552495601_
                                                      _compiler95623_
                                                      _expander95616_
                                                      _key95609_)
                                                     (_E9552395536_))))
                                             (_E9552395536_))))
                                     (_E9552395536_))))
                             (_E9552395536_))))))))
             (if (##pair? _bind9550595512_)
                 (let ((_hd9550995628_ (##car _bind9550595512_))
                       (_tl9551095630_ (##cdr _bind9550595512_)))
                   (let* ((_id95633_ _hd9550995628_)
                          (_rest95635_ _tl9551095630_))
                     (_K9550895625_ _rest95635_ _id95633_)))
                 (_E9550795516_))))
         _bindings95502_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self95640_)
        (let ((_bindings95642_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self95640_
           _bindings95642_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g95977_
        (let ((_g95976_ (##length _g95977_)))
          (cond ((##fx= _g95976_ 1)
                 (apply (lambda (_self95640_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self95640_))
                        _g95977_))
                ((##fx= _g95976_ 2)
                 (apply (lambda (_self95644_ _bindings95645_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self95644_
                           _bindings95645_))
                        _g95977_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g95977_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self95273_ _bindings95274_)
        (for-each
         (lambda (_bind95276_)
           (let* ((_bind9527795284_ _bind95276_)
                  (_E9527995288_
                   (lambda () (error '"No clause matching" _bind9527795284_)))
                  (_K9528095356_
                   (lambda (_rest95291_ _id95292_)
                     (gx#core-context-put!
                      _self95273_
                      _id95292_
                      (##structure
                       gx#syntax-binding::t
                       _id95292_
                       _id95292_
                       '#f
                       (let* ((_rest9529395308_ _rest95291_)
                              (_E9529795312_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9529395308_))))
                         (let ((_K9530295341_
                                (lambda (_core-id95339_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id95339_)))
                               (_K9529995326_
                                (lambda (_proc95324_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc95324_)))
                               (_K9529895317_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id95292_))))
                           (let ((_try-match9529695320_
                                  (lambda ()
                                    (if (##null? _rest9529395308_)
                                        (_K9529895317_)
                                        (_E9529795312_)))))
                             (if (##pair? _rest9529395308_)
                                 (let ((_tl9530495346_
                                        (##cdr _rest9529395308_))
                                       (_hd9530395344_
                                        (##car _rest9529395308_)))
                                   (if (##eq? _hd9530395344_ '=>)
                                       (if (##pair? _tl9530495346_)
                                           (let ((_tl9530695351_
                                                  (##cdr _tl9530495346_))
                                                 (_hd9530595349_
                                                  (##car _tl9530495346_)))
                                             (if (##null? _tl9530695351_)
                                                 (let ((_core-id95354_
                                                        _hd9530595349_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id95354_))
                                                 (_E9529795312_)))
                                           (if (##null? _tl9530495346_)
                                               (let ((_proc95334_
                                                      _hd9530395344_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc95334_))
                                               (_E9529795312_)))
                                       (if (##null? _tl9530495346_)
                                           (let ((_proc95334_ _hd9530395344_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc95334_))
                                           (_E9529795312_))))
                                 (_try-match9529695320_))))))))))
             (if (##pair? _bind9527795284_)
                 (let ((_hd9528195359_ (##car _bind9527795284_))
                       (_tl9528295361_ (##cdr _bind9527795284_)))
                   (let* ((_id95364_ _hd9528195359_)
                          (_rest95366_ _tl9528295361_))
                     (_K9528095356_ _rest95366_ _id95364_)))
                 (_E9527995288_))))
         _bindings95274_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self95371_)
        (let ((_bindings95373_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self95371_
           _bindings95373_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g95979_
        (let ((_g95978_ (##length _g95979_)))
          (cond ((##fx= _g95978_ 1)
                 (apply (lambda (_self95371_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self95371_))
                        _g95979_))
                ((##fx= _g95978_ 2)
                 (apply (lambda (_self95375_ _bindings95376_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self95375_
                           _bindings95376_))
                        _g95979_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g95979_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self95017_)
        (letrec ((_linux-variant?95019_
                  (lambda (_sys-type95118_)
                    (let* ((_g9511995127_
                            (string-split
                             (symbol->string _sys-type95118_)
                             '#\-))
                           (_else9512195135_ (lambda () '#f))
                           (_K9512395140_
                            (lambda (_rest95138_) (not (null? _rest95138_)))))
                      (if (##pair? _g9511995127_)
                          (let ((_hd9512495143_ (##car _g9511995127_))
                                (_tl9512595145_ (##cdr _g9511995127_)))
                            (if (equal? _hd9512495143_ '"linux")
                                (let ((_rest95148_ _tl9512595145_))
                                  (_K9512395140_ _rest95148_))
                                (_else9512195135_)))
                          (_else9512195135_)))))
                 (_bsd-variant95020_
                  (lambda (_sys-type95077_)
                    (let ((_sys-type-str95079_
                           (symbol->string _sys-type95077_)))
                      (let _lp95081_ ((_rest95083_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9508495092_ _rest95083_)
                               (_else9508695100_ (lambda () '#f))
                               (_K9508895106_
                                (lambda (_rest95103_ _sys95104_)
                                  (if (string-prefix?
                                       _sys95104_
                                       _sys-type-str95079_)
                                      _sys95104_
                                      (_lp95081_ _rest95103_)))))
                          (if (##pair? _rest9508495092_)
                              (let ((_hd9508995109_ (##car _rest9508495092_))
                                    (_tl9509095111_ (##cdr _rest9508495092_)))
                                (let* ((_sys95114_ _hd9508995109_)
                                       (_rest95116_ _tl9509095111_))
                                  (_K9508895106_ _rest95116_ _sys95114_)))
                              (_else9508695100_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self95017_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self95017_)
          (let* ((_g9502195033_ (system-type))
                 (_else9502395041_ (lambda () '#!void))
                 (_K9502595053_
                  (lambda (_sys-type95044_ _sys-vendor95045_ _sys-cpu95046_)
                    (gx#core-bind-feature!__%
                     _sys-cpu95046_
                     '#f
                     '0
                     _self95017_)
                    (gx#core-bind-feature!__%
                     _sys-type95044_
                     '#f
                     '0
                     _self95017_)
                    (if (_linux-variant?95019_ _sys-type95044_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self95017_)
                        (let ((_$e95048_ (_bsd-variant95020_ _sys-type95044_)))
                          (if _$e95048_
                              ((lambda (_sys-prefix95051_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self95017_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix95051_)
                                  '#f
                                  '0
                                  _self95017_))
                               _$e95048_)
                              '#!void))))))
            (if (##pair? _g9502195033_)
                (let ((_hd9502695056_ (##car _g9502195033_))
                      (_tl9502795058_ (##cdr _g9502195033_)))
                  (let ((_sys-cpu95061_ _hd9502695056_))
                    (if (##pair? _tl9502795058_)
                        (let ((_hd9502895063_ (##car _tl9502795058_))
                              (_tl9502995065_ (##cdr _tl9502795058_)))
                          (let ((_sys-vendor95068_ _hd9502895063_))
                            (if (##pair? _tl9502995065_)
                                (let ((_hd9503095070_ (##car _tl9502995065_))
                                      (_tl9503195072_ (##cdr _tl9502995065_)))
                                  (let ((_sys-type95075_ _hd9503095070_))
                                    (if (##null? _tl9503195072_)
                                        (_K9502595053_
                                         _sys-type95075_
                                         _sys-vendor95068_
                                         _sys-cpu95061_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self95017_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
