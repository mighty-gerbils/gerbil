(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1709213450)
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
      (lambda (_self95922_ _bind?95923_)
        (if (##fx< '2 (##structure-length _self95922_))
            (begin
              (##unchecked-structure-set!
               _self95922_
               'root
               '1
               (##structure-type _self95922_)
               '#f)
              (##unchecked-structure-set!
               _self95922_
               (make-hash-table-eq)
               '2
               (##structure-type _self95922_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self95922_
                   '2
                   (##vector-length _self95922_)))
        (if _bind?95923_
            (begin
              (let ((__method95974
                     (method-ref _self95922_ 'bind-core-syntax-expanders!)))
                (if __method95974
                    (__method95974 _self95922_)
                    (error '"Missing method"
                           _self95922_
                           'bind-core-syntax-expanders!)))
              (let ((__method95975
                     (method-ref _self95922_ 'bind-core-macro-expanders!)))
                (if __method95975
                    (__method95975 _self95922_)
                    (error '"Missing method"
                           _self95922_
                           'bind-core-macro-expanders!)))
              (let ((__method95976
                     (method-ref _self95922_ 'bind-core-features!)))
                (if __method95976
                    (__method95976 _self95922_)
                    (error '"Missing method"
                           _self95922_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self95928_)
        (let ((_bind?95930_ '#t))
          (gx#root-context:::init!__% _self95928_ _bind?95930_))))
    (define gx#root-context:::init!
      (lambda _g95979_
        (let ((_g95978_ (##length _g95979_)))
          (cond ((##fx= _g95978_ 1)
                 (apply (lambda (_self95928_)
                          (gx#root-context:::init!__0 _self95928_))
                        _g95979_))
                ((##fx= _g95978_ 2)
                 (apply (lambda (_self95932_ _bind?95933_)
                          (gx#root-context:::init!__%
                           _self95932_
                           _bind?95933_))
                        _g95979_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g95979_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass95934 __method-table95935)
        (let ((__bind-core-macro-expanders!95936
               (make-promise
                (lambda ()
                  (let ((__method95939
                         (symbolic-table-ref
                          __method-table95935
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method95939
                        __method95939
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!95937
               (make-promise
                (lambda ()
                  (let ((__method95940
                         (symbolic-table-ref
                          __method-table95935
                          'bind-core-features!
                          '#f)))
                    (if __method95940
                        __method95940
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!95938
               (make-promise
                (lambda ()
                  (let ((__method95941
                         (symbolic-table-ref
                          __method-table95935
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method95941
                        __method95941
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda9592095925_
                 (lambda (_self95922_ _bind?95923_)
                   (if (##fx< '2 (##structure-length _self95922_))
                       (begin
                         (##unchecked-structure-set!
                          _self95922_
                          'root
                          '1
                          (##structure-type _self95922_)
                          '#f)
                         (##unchecked-structure-set!
                          _self95922_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self95922_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self95922_
                              '2
                              (##vector-length _self95922_)))
                   (if _bind?95923_
                       (begin
                         ((force __bind-core-syntax-expanders!95938)
                          _self95922_)
                         ((force __bind-core-macro-expanders!95936)
                          _self95922_)
                         ((force __bind-core-features!95937) _self95922_))
                       '#!void))))
            (lambda _g95981_
              (let ((_g95980_ (##length _g95981_)))
                (cond ((##fx= _g95980_ 1)
                       (apply (lambda (_self95928_)
                                (let ((_bind?95930_ '#t))
                                  (_opt-lambda9592095925_
                                   _self95928_
                                   _bind?95930_)))
                              _g95981_))
                      ((##fx= _g95980_ 2)
                       (apply (lambda (_self95932_ _bind?95933_)
                                (_opt-lambda9592095925_
                                 _self95932_
                                 _bind?95933_))
                              _g95981_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g95981_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self95778_ _super95779_)
        (let ((_super95787_
               (let ((_$e95781_ _super95779_))
                 (if _$e95781_
                     _$e95781_
                     (let ((_$e95784_ (gx#core-context-root__0)))
                       (if _$e95784_
                           _$e95784_
                           (let ((__obj95977
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj95977)
                             __obj95977)))))))
          (if (##fx< '5 (##structure-length _self95778_))
              (begin
                (##unchecked-structure-set!
                 _self95778_
                 'top
                 '1
                 (##structure-type _self95778_)
                 '#f)
                (##unchecked-structure-set!
                 _self95778_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self95778_)
                 '#f)
                (##unchecked-structure-set!
                 _self95778_
                 _super95787_
                 '3
                 (##structure-type _self95778_)
                 '#f)
                (##unchecked-structure-set!
                 _self95778_
                 '#f
                 '4
                 (##structure-type _self95778_)
                 '#f)
                (##unchecked-structure-set!
                 _self95778_
                 '#f
                 '5
                 (##structure-type _self95778_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self95778_
                     '5
                     (##vector-length _self95778_))))))
    (define gx#top-context:::init!__0
      (lambda (_self95792_)
        (let ((_super95794_ '#f))
          (gx#top-context:::init!__% _self95792_ _super95794_))))
    (define gx#top-context:::init!
      (lambda _g95983_
        (let ((_g95982_ (##length _g95983_)))
          (cond ((##fx= _g95982_ 1)
                 (apply (lambda (_self95792_)
                          (gx#top-context:::init!__0 _self95792_))
                        _g95983_))
                ((##fx= _g95982_ 2)
                 (apply (lambda (_self95796_ _super95797_)
                          (gx#top-context:::init!__% _self95796_ _super95797_))
                        _g95983_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g95983_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self95509_ _bindings95510_)
        (for-each
         (lambda (_bind95512_)
           (let* ((_bind9551395520_ _bind95512_)
                  (_E9551595524_
                   (lambda () (error '"No clause matching" _bind9551395520_)))
                  (_K9551695633_
                   (lambda (_rest95527_ _id95528_)
                     (gx#core-context-put!
                      _self95509_
                      _id95528_
                      (##structure
                       gx#syntax-binding::t
                       _id95528_
                       _id95528_
                       '#f
                       (let* ((_rest9552995540_ _rest95527_)
                              (_E9553195544_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9552995540_)))
                              (_K9553295609_
                               (lambda (_compiler95547_
                                        _expander95548_
                                        _key95549_)
                                 ((let* ((_key9555095563_ _key95549_)
                                         (_E9555695567_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9555095563_))))
                                    (let ((_K9556195603_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9556095596_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9555995588_
                                           (lambda () gx#make-definition-form))
                                          (_K9555895580_
                                           (lambda () gx#make-special-form))
                                          (_K9555795572_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9555595575_
                                              (lambda ()
                                                (if (##eq? _key9555095563_
                                                           'expr:)
                                                    (_K9555795572_)
                                                    (_E9555695567_))))
                                             (_try-match9555495583_
                                              (lambda ()
                                                (if (##eq? _key9555095563_
                                                           'special:)
                                                    (_K9555895580_)
                                                    (_try-match9555595575_))))
                                             (_try-match9555395591_
                                              (lambda ()
                                                (if (##eq? _key9555095563_
                                                           'define:)
                                                    (_K9555995588_)
                                                    (_try-match9555495583_))))
                                             (_try-match9555295599_
                                              (lambda ()
                                                (if (##eq? _key9555095563_
                                                           'module:)
                                                    (_K9556095596_)
                                                    (_try-match9555395591_)))))
                                        (if (##eq? _key9555095563_ 'top:)
                                            (_K9556195603_)
                                            (_try-match9555295599_)))))
                                  _expander95548_
                                  _id95528_
                                  (let ((_$e95606_ _compiler95547_))
                                    (if _$e95606_
                                        _$e95606_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9552995540_)
                             (let ((_hd9553395612_ (##car _rest9552995540_))
                                   (_tl9553495614_ (##cdr _rest9552995540_)))
                               (let ((_key95617_ _hd9553395612_))
                                 (if (##pair? _tl9553495614_)
                                     (let ((_hd9553595619_
                                            (##car _tl9553495614_))
                                           (_tl9553695621_
                                            (##cdr _tl9553495614_)))
                                       (let ((_expander95624_ _hd9553595619_))
                                         (if (##pair? _tl9553695621_)
                                             (let ((_hd9553795626_
                                                    (##car _tl9553695621_))
                                                   (_tl9553895628_
                                                    (##cdr _tl9553695621_)))
                                               (let ((_compiler95631_
                                                      _hd9553795626_))
                                                 (if (##null? _tl9553895628_)
                                                     (_K9553295609_
                                                      _compiler95631_
                                                      _expander95624_
                                                      _key95617_)
                                                     (_E9553195544_))))
                                             (_E9553195544_))))
                                     (_E9553195544_))))
                             (_E9553195544_))))))))
             (if (##pair? _bind9551395520_)
                 (let ((_hd9551795636_ (##car _bind9551395520_))
                       (_tl9551895638_ (##cdr _bind9551395520_)))
                   (let* ((_id95641_ _hd9551795636_)
                          (_rest95643_ _tl9551895638_))
                     (_K9551695633_ _rest95643_ _id95641_)))
                 (_E9551595524_))))
         _bindings95510_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self95648_)
        (let ((_bindings95650_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self95648_
           _bindings95650_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g95985_
        (let ((_g95984_ (##length _g95985_)))
          (cond ((##fx= _g95984_ 1)
                 (apply (lambda (_self95648_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self95648_))
                        _g95985_))
                ((##fx= _g95984_ 2)
                 (apply (lambda (_self95652_ _bindings95653_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self95652_
                           _bindings95653_))
                        _g95985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g95985_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self95281_ _bindings95282_)
        (for-each
         (lambda (_bind95284_)
           (let* ((_bind9528595292_ _bind95284_)
                  (_E9528795296_
                   (lambda () (error '"No clause matching" _bind9528595292_)))
                  (_K9528895364_
                   (lambda (_rest95299_ _id95300_)
                     (gx#core-context-put!
                      _self95281_
                      _id95300_
                      (##structure
                       gx#syntax-binding::t
                       _id95300_
                       _id95300_
                       '#f
                       (let* ((_rest9530195316_ _rest95299_)
                              (_E9530595320_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9530195316_))))
                         (let ((_K9531095349_
                                (lambda (_core-id95347_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id95347_)))
                               (_K9530795334_
                                (lambda (_proc95332_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc95332_)))
                               (_K9530695325_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id95300_))))
                           (let ((_try-match9530495328_
                                  (lambda ()
                                    (if (##null? _rest9530195316_)
                                        (_K9530695325_)
                                        (_E9530595320_)))))
                             (if (##pair? _rest9530195316_)
                                 (let ((_tl9531295354_
                                        (##cdr _rest9530195316_))
                                       (_hd9531195352_
                                        (##car _rest9530195316_)))
                                   (if (##eq? _hd9531195352_ '=>)
                                       (if (##pair? _tl9531295354_)
                                           (let ((_tl9531495359_
                                                  (##cdr _tl9531295354_))
                                                 (_hd9531395357_
                                                  (##car _tl9531295354_)))
                                             (if (##null? _tl9531495359_)
                                                 (let ((_core-id95362_
                                                        _hd9531395357_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id95362_))
                                                 (_E9530595320_)))
                                           (if (##null? _tl9531295354_)
                                               (let ((_proc95342_
                                                      _hd9531195352_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc95342_))
                                               (_E9530595320_)))
                                       (if (##null? _tl9531295354_)
                                           (let ((_proc95342_ _hd9531195352_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc95342_))
                                           (_E9530595320_))))
                                 (_try-match9530495328_))))))))))
             (if (##pair? _bind9528595292_)
                 (let ((_hd9528995367_ (##car _bind9528595292_))
                       (_tl9529095369_ (##cdr _bind9528595292_)))
                   (let* ((_id95372_ _hd9528995367_)
                          (_rest95374_ _tl9529095369_))
                     (_K9528895364_ _rest95374_ _id95372_)))
                 (_E9528795296_))))
         _bindings95282_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self95379_)
        (let ((_bindings95381_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self95379_
           _bindings95381_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g95987_
        (let ((_g95986_ (##length _g95987_)))
          (cond ((##fx= _g95986_ 1)
                 (apply (lambda (_self95379_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self95379_))
                        _g95987_))
                ((##fx= _g95986_ 2)
                 (apply (lambda (_self95383_ _bindings95384_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self95383_
                           _bindings95384_))
                        _g95987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g95987_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self95025_)
        (letrec ((_linux-variant?95027_
                  (lambda (_sys-type95126_)
                    (let* ((_g9512795135_
                            (string-split
                             (symbol->string _sys-type95126_)
                             '#\-))
                           (_else9512995143_ (lambda () '#f))
                           (_K9513195148_
                            (lambda (_rest95146_) (not (null? _rest95146_)))))
                      (if (##pair? _g9512795135_)
                          (let ((_hd9513295151_ (##car _g9512795135_))
                                (_tl9513395153_ (##cdr _g9512795135_)))
                            (if (equal? _hd9513295151_ '"linux")
                                (let ((_rest95156_ _tl9513395153_))
                                  (_K9513195148_ _rest95156_))
                                (_else9512995143_)))
                          (_else9512995143_)))))
                 (_bsd-variant95028_
                  (lambda (_sys-type95085_)
                    (let ((_sys-type-str95087_
                           (symbol->string _sys-type95085_)))
                      (let _lp95089_ ((_rest95091_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9509295100_ _rest95091_)
                               (_else9509495108_ (lambda () '#f))
                               (_K9509695114_
                                (lambda (_rest95111_ _sys95112_)
                                  (if (string-prefix?
                                       _sys95112_
                                       _sys-type-str95087_)
                                      _sys95112_
                                      (_lp95089_ _rest95111_)))))
                          (if (##pair? _rest9509295100_)
                              (let ((_hd9509795117_ (##car _rest9509295100_))
                                    (_tl9509895119_ (##cdr _rest9509295100_)))
                                (let* ((_sys95122_ _hd9509795117_)
                                       (_rest95124_ _tl9509895119_))
                                  (_K9509695114_ _rest95124_ _sys95122_)))
                              (_else9509495108_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self95025_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self95025_)
          (let* ((_g9502995041_ (system-type))
                 (_else9503195049_ (lambda () '#!void))
                 (_K9503395061_
                  (lambda (_sys-type95052_ _sys-vendor95053_ _sys-cpu95054_)
                    (gx#core-bind-feature!__%
                     _sys-cpu95054_
                     '#f
                     '0
                     _self95025_)
                    (gx#core-bind-feature!__%
                     _sys-type95052_
                     '#f
                     '0
                     _self95025_)
                    (if (_linux-variant?95027_ _sys-type95052_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self95025_)
                        (let ((_$e95056_ (_bsd-variant95028_ _sys-type95052_)))
                          (if _$e95056_
                              ((lambda (_sys-prefix95059_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self95025_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix95059_)
                                  '#f
                                  '0
                                  _self95025_))
                               _$e95056_)
                              '#!void))))))
            (if (##pair? _g9502995041_)
                (let ((_hd9503495064_ (##car _g9502995041_))
                      (_tl9503595066_ (##cdr _g9502995041_)))
                  (let ((_sys-cpu95069_ _hd9503495064_))
                    (if (##pair? _tl9503595066_)
                        (let ((_hd9503695071_ (##car _tl9503595066_))
                              (_tl9503795073_ (##cdr _tl9503595066_)))
                          (let ((_sys-vendor95076_ _hd9503695071_))
                            (if (##pair? _tl9503795073_)
                                (let ((_hd9503895078_ (##car _tl9503795073_))
                                      (_tl9503995080_ (##cdr _tl9503795073_)))
                                  (let ((_sys-type95083_ _hd9503895078_))
                                    (if (##null? _tl9503995080_)
                                        (_K9503395061_
                                         _sys-type95083_
                                         _sys-vendor95076_
                                         _sys-cpu95069_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self95025_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
