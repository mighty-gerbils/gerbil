(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1709125255)
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
      (lambda (_self95902_ _bind?95903_)
        (if (##fx< '2 (##structure-length _self95902_))
            (begin
              (##unchecked-structure-set!
               _self95902_
               'root
               '1
               (##structure-type _self95902_)
               '#f)
              (##unchecked-structure-set!
               _self95902_
               (make-hash-table-eq)
               '2
               (##structure-type _self95902_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self95902_
                   '2
                   (##vector-length _self95902_)))
        (if _bind?95903_
            (begin
              (let ((__method95954
                     (method-ref _self95902_ 'bind-core-syntax-expanders!)))
                (if __method95954
                    (__method95954 _self95902_)
                    (error '"Missing method"
                           _self95902_
                           'bind-core-syntax-expanders!)))
              (let ((__method95955
                     (method-ref _self95902_ 'bind-core-macro-expanders!)))
                (if __method95955
                    (__method95955 _self95902_)
                    (error '"Missing method"
                           _self95902_
                           'bind-core-macro-expanders!)))
              (let ((__method95956
                     (method-ref _self95902_ 'bind-core-features!)))
                (if __method95956
                    (__method95956 _self95902_)
                    (error '"Missing method"
                           _self95902_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self95908_)
        (let ((_bind?95910_ '#t))
          (gx#root-context:::init!__% _self95908_ _bind?95910_))))
    (define gx#root-context:::init!
      (lambda _g95959_
        (let ((_g95958_ (##length _g95959_)))
          (cond ((##fx= _g95958_ 1)
                 (apply (lambda (_self95908_)
                          (gx#root-context:::init!__0 _self95908_))
                        _g95959_))
                ((##fx= _g95958_ 2)
                 (apply (lambda (_self95912_ _bind?95913_)
                          (gx#root-context:::init!__%
                           _self95912_
                           _bind?95913_))
                        _g95959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g95959_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass95914 __method-table95915)
        (let ((__bind-core-macro-expanders!95916
               (make-promise
                (lambda ()
                  (let ((__method95919
                         (symbolic-table-ref
                          __method-table95915
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method95919
                        __method95919
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!95917
               (make-promise
                (lambda ()
                  (let ((__method95920
                         (symbolic-table-ref
                          __method-table95915
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method95920
                        __method95920
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!95918
               (make-promise
                (lambda ()
                  (let ((__method95921
                         (symbolic-table-ref
                          __method-table95915
                          'bind-core-features!
                          '#f)))
                    (if __method95921
                        __method95921
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda9590095905_
                 (lambda (_self95902_ _bind?95903_)
                   (if (##fx< '2 (##structure-length _self95902_))
                       (begin
                         (##unchecked-structure-set!
                          _self95902_
                          'root
                          '1
                          (##structure-type _self95902_)
                          '#f)
                         (##unchecked-structure-set!
                          _self95902_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self95902_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self95902_
                              '2
                              (##vector-length _self95902_)))
                   (if _bind?95903_
                       (begin
                         ((force __bind-core-syntax-expanders!95917)
                          _self95902_)
                         ((force __bind-core-macro-expanders!95916)
                          _self95902_)
                         ((force __bind-core-features!95918) _self95902_))
                       '#!void))))
            (lambda _g95961_
              (let ((_g95960_ (##length _g95961_)))
                (cond ((##fx= _g95960_ 1)
                       (apply (lambda (_self95908_)
                                (let ((_bind?95910_ '#t))
                                  (_opt-lambda9590095905_
                                   _self95908_
                                   _bind?95910_)))
                              _g95961_))
                      ((##fx= _g95960_ 2)
                       (apply (lambda (_self95912_ _bind?95913_)
                                (_opt-lambda9590095905_
                                 _self95912_
                                 _bind?95913_))
                              _g95961_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g95961_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self95758_ _super95759_)
        (let ((_super95767_
               (let ((_$e95761_ _super95759_))
                 (if _$e95761_
                     _$e95761_
                     (let ((_$e95764_ (gx#core-context-root__0)))
                       (if _$e95764_
                           _$e95764_
                           (let ((__obj95957
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj95957)
                             __obj95957)))))))
          (if (##fx< '5 (##structure-length _self95758_))
              (begin
                (##unchecked-structure-set!
                 _self95758_
                 'top
                 '1
                 (##structure-type _self95758_)
                 '#f)
                (##unchecked-structure-set!
                 _self95758_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self95758_)
                 '#f)
                (##unchecked-structure-set!
                 _self95758_
                 _super95767_
                 '3
                 (##structure-type _self95758_)
                 '#f)
                (##unchecked-structure-set!
                 _self95758_
                 '#f
                 '4
                 (##structure-type _self95758_)
                 '#f)
                (##unchecked-structure-set!
                 _self95758_
                 '#f
                 '5
                 (##structure-type _self95758_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self95758_
                     '5
                     (##vector-length _self95758_))))))
    (define gx#top-context:::init!__0
      (lambda (_self95772_)
        (let ((_super95774_ '#f))
          (gx#top-context:::init!__% _self95772_ _super95774_))))
    (define gx#top-context:::init!
      (lambda _g95963_
        (let ((_g95962_ (##length _g95963_)))
          (cond ((##fx= _g95962_ 1)
                 (apply (lambda (_self95772_)
                          (gx#top-context:::init!__0 _self95772_))
                        _g95963_))
                ((##fx= _g95962_ 2)
                 (apply (lambda (_self95776_ _super95777_)
                          (gx#top-context:::init!__% _self95776_ _super95777_))
                        _g95963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g95963_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self95489_ _bindings95490_)
        (for-each
         (lambda (_bind95492_)
           (let* ((_bind9549395500_ _bind95492_)
                  (_E9549595504_
                   (lambda () (error '"No clause matching" _bind9549395500_)))
                  (_K9549695613_
                   (lambda (_rest95507_ _id95508_)
                     (gx#core-context-put!
                      _self95489_
                      _id95508_
                      (##structure
                       gx#syntax-binding::t
                       _id95508_
                       _id95508_
                       '#f
                       (let* ((_rest9550995520_ _rest95507_)
                              (_E9551195524_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9550995520_)))
                              (_K9551295589_
                               (lambda (_compiler95527_
                                        _expander95528_
                                        _key95529_)
                                 ((let* ((_key9553095543_ _key95529_)
                                         (_E9553695547_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9553095543_))))
                                    (let ((_K9554195583_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9554095576_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9553995568_
                                           (lambda () gx#make-definition-form))
                                          (_K9553895560_
                                           (lambda () gx#make-special-form))
                                          (_K9553795552_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9553595555_
                                              (lambda ()
                                                (if (##eq? _key9553095543_
                                                           'expr:)
                                                    (_K9553795552_)
                                                    (_E9553695547_))))
                                             (_try-match9553495563_
                                              (lambda ()
                                                (if (##eq? _key9553095543_
                                                           'special:)
                                                    (_K9553895560_)
                                                    (_try-match9553595555_))))
                                             (_try-match9553395571_
                                              (lambda ()
                                                (if (##eq? _key9553095543_
                                                           'define:)
                                                    (_K9553995568_)
                                                    (_try-match9553495563_))))
                                             (_try-match9553295579_
                                              (lambda ()
                                                (if (##eq? _key9553095543_
                                                           'module:)
                                                    (_K9554095576_)
                                                    (_try-match9553395571_)))))
                                        (if (##eq? _key9553095543_ 'top:)
                                            (_K9554195583_)
                                            (_try-match9553295579_)))))
                                  _expander95528_
                                  _id95508_
                                  (let ((_$e95586_ _compiler95527_))
                                    (if _$e95586_
                                        _$e95586_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9550995520_)
                             (let ((_hd9551395592_ (##car _rest9550995520_))
                                   (_tl9551495594_ (##cdr _rest9550995520_)))
                               (let ((_key95597_ _hd9551395592_))
                                 (if (##pair? _tl9551495594_)
                                     (let ((_hd9551595599_
                                            (##car _tl9551495594_))
                                           (_tl9551695601_
                                            (##cdr _tl9551495594_)))
                                       (let ((_expander95604_ _hd9551595599_))
                                         (if (##pair? _tl9551695601_)
                                             (let ((_hd9551795606_
                                                    (##car _tl9551695601_))
                                                   (_tl9551895608_
                                                    (##cdr _tl9551695601_)))
                                               (let ((_compiler95611_
                                                      _hd9551795606_))
                                                 (if (##null? _tl9551895608_)
                                                     (_K9551295589_
                                                      _compiler95611_
                                                      _expander95604_
                                                      _key95597_)
                                                     (_E9551195524_))))
                                             (_E9551195524_))))
                                     (_E9551195524_))))
                             (_E9551195524_))))))))
             (if (##pair? _bind9549395500_)
                 (let ((_hd9549795616_ (##car _bind9549395500_))
                       (_tl9549895618_ (##cdr _bind9549395500_)))
                   (let* ((_id95621_ _hd9549795616_)
                          (_rest95623_ _tl9549895618_))
                     (_K9549695613_ _rest95623_ _id95621_)))
                 (_E9549595504_))))
         _bindings95490_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self95628_)
        (let ((_bindings95630_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self95628_
           _bindings95630_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g95965_
        (let ((_g95964_ (##length _g95965_)))
          (cond ((##fx= _g95964_ 1)
                 (apply (lambda (_self95628_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self95628_))
                        _g95965_))
                ((##fx= _g95964_ 2)
                 (apply (lambda (_self95632_ _bindings95633_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self95632_
                           _bindings95633_))
                        _g95965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g95965_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self95261_ _bindings95262_)
        (for-each
         (lambda (_bind95264_)
           (let* ((_bind9526595272_ _bind95264_)
                  (_E9526795276_
                   (lambda () (error '"No clause matching" _bind9526595272_)))
                  (_K9526895344_
                   (lambda (_rest95279_ _id95280_)
                     (gx#core-context-put!
                      _self95261_
                      _id95280_
                      (##structure
                       gx#syntax-binding::t
                       _id95280_
                       _id95280_
                       '#f
                       (let* ((_rest9528195296_ _rest95279_)
                              (_E9528595300_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9528195296_))))
                         (let ((_K9529095329_
                                (lambda (_core-id95327_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id95327_)))
                               (_K9528795314_
                                (lambda (_proc95312_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc95312_)))
                               (_K9528695305_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id95280_))))
                           (let ((_try-match9528495308_
                                  (lambda ()
                                    (if (##null? _rest9528195296_)
                                        (_K9528695305_)
                                        (_E9528595300_)))))
                             (if (##pair? _rest9528195296_)
                                 (let ((_tl9529295334_
                                        (##cdr _rest9528195296_))
                                       (_hd9529195332_
                                        (##car _rest9528195296_)))
                                   (if (##eq? _hd9529195332_ '=>)
                                       (if (##pair? _tl9529295334_)
                                           (let ((_tl9529495339_
                                                  (##cdr _tl9529295334_))
                                                 (_hd9529395337_
                                                  (##car _tl9529295334_)))
                                             (if (##null? _tl9529495339_)
                                                 (let ((_core-id95342_
                                                        _hd9529395337_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id95342_))
                                                 (_E9528595300_)))
                                           (if (##null? _tl9529295334_)
                                               (let ((_proc95322_
                                                      _hd9529195332_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc95322_))
                                               (_E9528595300_)))
                                       (if (##null? _tl9529295334_)
                                           (let ((_proc95322_ _hd9529195332_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc95322_))
                                           (_E9528595300_))))
                                 (_try-match9528495308_))))))))))
             (if (##pair? _bind9526595272_)
                 (let ((_hd9526995347_ (##car _bind9526595272_))
                       (_tl9527095349_ (##cdr _bind9526595272_)))
                   (let* ((_id95352_ _hd9526995347_)
                          (_rest95354_ _tl9527095349_))
                     (_K9526895344_ _rest95354_ _id95352_)))
                 (_E9526795276_))))
         _bindings95262_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self95359_)
        (let ((_bindings95361_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self95359_
           _bindings95361_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g95967_
        (let ((_g95966_ (##length _g95967_)))
          (cond ((##fx= _g95966_ 1)
                 (apply (lambda (_self95359_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self95359_))
                        _g95967_))
                ((##fx= _g95966_ 2)
                 (apply (lambda (_self95363_ _bindings95364_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self95363_
                           _bindings95364_))
                        _g95967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g95967_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self95005_)
        (letrec ((_linux-variant?95007_
                  (lambda (_sys-type95106_)
                    (let* ((_g9510795115_
                            (string-split
                             (symbol->string _sys-type95106_)
                             '#\-))
                           (_else9510995123_ (lambda () '#f))
                           (_K9511195128_
                            (lambda (_rest95126_) (not (null? _rest95126_)))))
                      (if (##pair? _g9510795115_)
                          (let ((_hd9511295131_ (##car _g9510795115_))
                                (_tl9511395133_ (##cdr _g9510795115_)))
                            (if (equal? _hd9511295131_ '"linux")
                                (let ((_rest95136_ _tl9511395133_))
                                  (_K9511195128_ _rest95136_))
                                (_else9510995123_)))
                          (_else9510995123_)))))
                 (_bsd-variant95008_
                  (lambda (_sys-type95065_)
                    (let ((_sys-type-str95067_
                           (symbol->string _sys-type95065_)))
                      (let _lp95069_ ((_rest95071_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9507295080_ _rest95071_)
                               (_else9507495088_ (lambda () '#f))
                               (_K9507695094_
                                (lambda (_rest95091_ _sys95092_)
                                  (if (string-prefix?
                                       _sys95092_
                                       _sys-type-str95067_)
                                      _sys95092_
                                      (_lp95069_ _rest95091_)))))
                          (if (##pair? _rest9507295080_)
                              (let ((_hd9507795097_ (##car _rest9507295080_))
                                    (_tl9507895099_ (##cdr _rest9507295080_)))
                                (let* ((_sys95102_ _hd9507795097_)
                                       (_rest95104_ _tl9507895099_))
                                  (_K9507695094_ _rest95104_ _sys95102_)))
                              (_else9507495088_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self95005_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self95005_)
          (let* ((_g9500995021_ (system-type))
                 (_else9501195029_ (lambda () '#!void))
                 (_K9501395041_
                  (lambda (_sys-type95032_ _sys-vendor95033_ _sys-cpu95034_)
                    (gx#core-bind-feature!__%
                     _sys-cpu95034_
                     '#f
                     '0
                     _self95005_)
                    (gx#core-bind-feature!__%
                     _sys-type95032_
                     '#f
                     '0
                     _self95005_)
                    (if (_linux-variant?95007_ _sys-type95032_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self95005_)
                        (let ((_$e95036_ (_bsd-variant95008_ _sys-type95032_)))
                          (if _$e95036_
                              ((lambda (_sys-prefix95039_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self95005_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix95039_)
                                  '#f
                                  '0
                                  _self95005_))
                               _$e95036_)
                              '#!void))))))
            (if (##pair? _g9500995021_)
                (let ((_hd9501495044_ (##car _g9500995021_))
                      (_tl9501595046_ (##cdr _g9500995021_)))
                  (let ((_sys-cpu95049_ _hd9501495044_))
                    (if (##pair? _tl9501595046_)
                        (let ((_hd9501695051_ (##car _tl9501595046_))
                              (_tl9501795053_ (##cdr _tl9501595046_)))
                          (let ((_sys-vendor95056_ _hd9501695051_))
                            (if (##pair? _tl9501795053_)
                                (let ((_hd9501895058_ (##car _tl9501795053_))
                                      (_tl9501995060_ (##cdr _tl9501795053_)))
                                  (let ((_sys-type95063_ _hd9501895058_))
                                    (if (##null? _tl9501995060_)
                                        (_K9501395041_
                                         _sys-type95063_
                                         _sys-vendor95056_
                                         _sys-cpu95049_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self95005_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
