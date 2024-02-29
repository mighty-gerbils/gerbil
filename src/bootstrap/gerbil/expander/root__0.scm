(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1709229970)
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
      (lambda (_self95909_ _bind?95910_)
        (if (##fx< '2 (##structure-length _self95909_))
            (begin
              (##unchecked-structure-set!
               _self95909_
               'root
               '1
               (##structure-type _self95909_)
               '#f)
              (##unchecked-structure-set!
               _self95909_
               (make-hash-table-eq)
               '2
               (##structure-type _self95909_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self95909_
                   '2
                   (##vector-length _self95909_)))
        (if _bind?95910_
            (begin
              (let ((__method95961
                     (method-ref _self95909_ 'bind-core-syntax-expanders!)))
                (if __method95961
                    (__method95961 _self95909_)
                    (error '"Missing method"
                           _self95909_
                           'bind-core-syntax-expanders!)))
              (let ((__method95962
                     (method-ref _self95909_ 'bind-core-macro-expanders!)))
                (if __method95962
                    (__method95962 _self95909_)
                    (error '"Missing method"
                           _self95909_
                           'bind-core-macro-expanders!)))
              (let ((__method95963
                     (method-ref _self95909_ 'bind-core-features!)))
                (if __method95963
                    (__method95963 _self95909_)
                    (error '"Missing method"
                           _self95909_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self95915_)
        (let ((_bind?95917_ '#t))
          (gx#root-context:::init!__% _self95915_ _bind?95917_))))
    (define gx#root-context:::init!
      (lambda _g95966_
        (let ((_g95965_ (##length _g95966_)))
          (cond ((##fx= _g95965_ 1)
                 (apply (lambda (_self95915_)
                          (gx#root-context:::init!__0 _self95915_))
                        _g95966_))
                ((##fx= _g95965_ 2)
                 (apply (lambda (_self95919_ _bind?95920_)
                          (gx#root-context:::init!__%
                           _self95919_
                           _bind?95920_))
                        _g95966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g95966_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass95921 __method-table95922)
        (let ((__bind-core-features!95923
               (make-promise
                (lambda ()
                  (let ((__method95926
                         (symbolic-table-ref
                          __method-table95922
                          'bind-core-features!
                          '#f)))
                    (if __method95926
                        __method95926
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!95924
               (make-promise
                (lambda ()
                  (let ((__method95927
                         (symbolic-table-ref
                          __method-table95922
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method95927
                        __method95927
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!95925
               (make-promise
                (lambda ()
                  (let ((__method95928
                         (symbolic-table-ref
                          __method-table95922
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method95928
                        __method95928
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda9590795912_
                 (lambda (_self95909_ _bind?95910_)
                   (if (##fx< '2 (##structure-length _self95909_))
                       (begin
                         (##unchecked-structure-set!
                          _self95909_
                          'root
                          '1
                          (##structure-type _self95909_)
                          '#f)
                         (##unchecked-structure-set!
                          _self95909_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self95909_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self95909_
                              '2
                              (##vector-length _self95909_)))
                   (if _bind?95910_
                       (begin
                         ((force __bind-core-syntax-expanders!95925)
                          _self95909_)
                         ((force __bind-core-macro-expanders!95924)
                          _self95909_)
                         ((force __bind-core-features!95923) _self95909_))
                       '#!void))))
            (lambda _g95968_
              (let ((_g95967_ (##length _g95968_)))
                (cond ((##fx= _g95967_ 1)
                       (apply (lambda (_self95915_)
                                (let ((_bind?95917_ '#t))
                                  (_opt-lambda9590795912_
                                   _self95915_
                                   _bind?95917_)))
                              _g95968_))
                      ((##fx= _g95967_ 2)
                       (apply (lambda (_self95919_ _bind?95920_)
                                (_opt-lambda9590795912_
                                 _self95919_
                                 _bind?95920_))
                              _g95968_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g95968_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self95765_ _super95766_)
        (let ((_super95774_
               (let ((_$e95768_ _super95766_))
                 (if _$e95768_
                     _$e95768_
                     (let ((_$e95771_ (gx#core-context-root__0)))
                       (if _$e95771_
                           _$e95771_
                           (let ((__obj95964
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj95964)
                             __obj95964)))))))
          (if (##fx< '5 (##structure-length _self95765_))
              (begin
                (##unchecked-structure-set!
                 _self95765_
                 'top
                 '1
                 (##structure-type _self95765_)
                 '#f)
                (##unchecked-structure-set!
                 _self95765_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self95765_)
                 '#f)
                (##unchecked-structure-set!
                 _self95765_
                 _super95774_
                 '3
                 (##structure-type _self95765_)
                 '#f)
                (##unchecked-structure-set!
                 _self95765_
                 '#f
                 '4
                 (##structure-type _self95765_)
                 '#f)
                (##unchecked-structure-set!
                 _self95765_
                 '#f
                 '5
                 (##structure-type _self95765_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self95765_
                     '5
                     (##vector-length _self95765_))))))
    (define gx#top-context:::init!__0
      (lambda (_self95779_)
        (let ((_super95781_ '#f))
          (gx#top-context:::init!__% _self95779_ _super95781_))))
    (define gx#top-context:::init!
      (lambda _g95970_
        (let ((_g95969_ (##length _g95970_)))
          (cond ((##fx= _g95969_ 1)
                 (apply (lambda (_self95779_)
                          (gx#top-context:::init!__0 _self95779_))
                        _g95970_))
                ((##fx= _g95969_ 2)
                 (apply (lambda (_self95783_ _super95784_)
                          (gx#top-context:::init!__% _self95783_ _super95784_))
                        _g95970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g95970_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self95496_ _bindings95497_)
        (for-each
         (lambda (_bind95499_)
           (let* ((_bind9550095507_ _bind95499_)
                  (_E9550295511_
                   (lambda () (error '"No clause matching" _bind9550095507_)))
                  (_K9550395620_
                   (lambda (_rest95514_ _id95515_)
                     (gx#core-context-put!
                      _self95496_
                      _id95515_
                      (##structure
                       gx#syntax-binding::t
                       _id95515_
                       _id95515_
                       '#f
                       (let* ((_rest9551695527_ _rest95514_)
                              (_E9551895531_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9551695527_)))
                              (_K9551995596_
                               (lambda (_compiler95534_
                                        _expander95535_
                                        _key95536_)
                                 ((let* ((_key9553795550_ _key95536_)
                                         (_E9554395554_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9553795550_))))
                                    (let ((_K9554895590_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9554795583_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9554695575_
                                           (lambda () gx#make-definition-form))
                                          (_K9554595567_
                                           (lambda () gx#make-special-form))
                                          (_K9554495559_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9554295562_
                                              (lambda ()
                                                (if (##eq? _key9553795550_
                                                           'expr:)
                                                    (_K9554495559_)
                                                    (_E9554395554_))))
                                             (_try-match9554195570_
                                              (lambda ()
                                                (if (##eq? _key9553795550_
                                                           'special:)
                                                    (_K9554595567_)
                                                    (_try-match9554295562_))))
                                             (_try-match9554095578_
                                              (lambda ()
                                                (if (##eq? _key9553795550_
                                                           'define:)
                                                    (_K9554695575_)
                                                    (_try-match9554195570_))))
                                             (_try-match9553995586_
                                              (lambda ()
                                                (if (##eq? _key9553795550_
                                                           'module:)
                                                    (_K9554795583_)
                                                    (_try-match9554095578_)))))
                                        (if (##eq? _key9553795550_ 'top:)
                                            (_K9554895590_)
                                            (_try-match9553995586_)))))
                                  _expander95535_
                                  _id95515_
                                  (let ((_$e95593_ _compiler95534_))
                                    (if _$e95593_
                                        _$e95593_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9551695527_)
                             (let ((_hd9552095599_ (##car _rest9551695527_))
                                   (_tl9552195601_ (##cdr _rest9551695527_)))
                               (let ((_key95604_ _hd9552095599_))
                                 (if (##pair? _tl9552195601_)
                                     (let ((_hd9552295606_
                                            (##car _tl9552195601_))
                                           (_tl9552395608_
                                            (##cdr _tl9552195601_)))
                                       (let ((_expander95611_ _hd9552295606_))
                                         (if (##pair? _tl9552395608_)
                                             (let ((_hd9552495613_
                                                    (##car _tl9552395608_))
                                                   (_tl9552595615_
                                                    (##cdr _tl9552395608_)))
                                               (let ((_compiler95618_
                                                      _hd9552495613_))
                                                 (if (##null? _tl9552595615_)
                                                     (_K9551995596_
                                                      _compiler95618_
                                                      _expander95611_
                                                      _key95604_)
                                                     (_E9551895531_))))
                                             (_E9551895531_))))
                                     (_E9551895531_))))
                             (_E9551895531_))))))))
             (if (##pair? _bind9550095507_)
                 (let ((_hd9550495623_ (##car _bind9550095507_))
                       (_tl9550595625_ (##cdr _bind9550095507_)))
                   (let* ((_id95628_ _hd9550495623_)
                          (_rest95630_ _tl9550595625_))
                     (_K9550395620_ _rest95630_ _id95628_)))
                 (_E9550295511_))))
         _bindings95497_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self95635_)
        (let ((_bindings95637_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self95635_
           _bindings95637_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g95972_
        (let ((_g95971_ (##length _g95972_)))
          (cond ((##fx= _g95971_ 1)
                 (apply (lambda (_self95635_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self95635_))
                        _g95972_))
                ((##fx= _g95971_ 2)
                 (apply (lambda (_self95639_ _bindings95640_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self95639_
                           _bindings95640_))
                        _g95972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g95972_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self95268_ _bindings95269_)
        (for-each
         (lambda (_bind95271_)
           (let* ((_bind9527295279_ _bind95271_)
                  (_E9527495283_
                   (lambda () (error '"No clause matching" _bind9527295279_)))
                  (_K9527595351_
                   (lambda (_rest95286_ _id95287_)
                     (gx#core-context-put!
                      _self95268_
                      _id95287_
                      (##structure
                       gx#syntax-binding::t
                       _id95287_
                       _id95287_
                       '#f
                       (let* ((_rest9528895303_ _rest95286_)
                              (_E9529295307_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9528895303_))))
                         (let ((_K9529795336_
                                (lambda (_core-id95334_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id95334_)))
                               (_K9529495321_
                                (lambda (_proc95319_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc95319_)))
                               (_K9529395312_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id95287_))))
                           (let ((_try-match9529195315_
                                  (lambda ()
                                    (if (##null? _rest9528895303_)
                                        (_K9529395312_)
                                        (_E9529295307_)))))
                             (if (##pair? _rest9528895303_)
                                 (let ((_tl9529995341_
                                        (##cdr _rest9528895303_))
                                       (_hd9529895339_
                                        (##car _rest9528895303_)))
                                   (if (##eq? _hd9529895339_ '=>)
                                       (if (##pair? _tl9529995341_)
                                           (let ((_tl9530195346_
                                                  (##cdr _tl9529995341_))
                                                 (_hd9530095344_
                                                  (##car _tl9529995341_)))
                                             (if (##null? _tl9530195346_)
                                                 (let ((_core-id95349_
                                                        _hd9530095344_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id95349_))
                                                 (_E9529295307_)))
                                           (if (##null? _tl9529995341_)
                                               (let ((_proc95329_
                                                      _hd9529895339_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc95329_))
                                               (_E9529295307_)))
                                       (if (##null? _tl9529995341_)
                                           (let ((_proc95329_ _hd9529895339_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc95329_))
                                           (_E9529295307_))))
                                 (_try-match9529195315_))))))))))
             (if (##pair? _bind9527295279_)
                 (let ((_hd9527695354_ (##car _bind9527295279_))
                       (_tl9527795356_ (##cdr _bind9527295279_)))
                   (let* ((_id95359_ _hd9527695354_)
                          (_rest95361_ _tl9527795356_))
                     (_K9527595351_ _rest95361_ _id95359_)))
                 (_E9527495283_))))
         _bindings95269_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self95366_)
        (let ((_bindings95368_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self95366_
           _bindings95368_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g95974_
        (let ((_g95973_ (##length _g95974_)))
          (cond ((##fx= _g95973_ 1)
                 (apply (lambda (_self95366_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self95366_))
                        _g95974_))
                ((##fx= _g95973_ 2)
                 (apply (lambda (_self95370_ _bindings95371_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self95370_
                           _bindings95371_))
                        _g95974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g95974_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self95012_)
        (letrec ((_linux-variant?95014_
                  (lambda (_sys-type95113_)
                    (let* ((_g9511495122_
                            (string-split
                             (symbol->string _sys-type95113_)
                             '#\-))
                           (_else9511695130_ (lambda () '#f))
                           (_K9511895135_
                            (lambda (_rest95133_) (not (null? _rest95133_)))))
                      (if (##pair? _g9511495122_)
                          (let ((_hd9511995138_ (##car _g9511495122_))
                                (_tl9512095140_ (##cdr _g9511495122_)))
                            (if (equal? _hd9511995138_ '"linux")
                                (let ((_rest95143_ _tl9512095140_))
                                  (_K9511895135_ _rest95143_))
                                (_else9511695130_)))
                          (_else9511695130_)))))
                 (_bsd-variant95015_
                  (lambda (_sys-type95072_)
                    (let ((_sys-type-str95074_
                           (symbol->string _sys-type95072_)))
                      (let _lp95076_ ((_rest95078_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9507995087_ _rest95078_)
                               (_else9508195095_ (lambda () '#f))
                               (_K9508395101_
                                (lambda (_rest95098_ _sys95099_)
                                  (if (string-prefix?
                                       _sys95099_
                                       _sys-type-str95074_)
                                      _sys95099_
                                      (_lp95076_ _rest95098_)))))
                          (if (##pair? _rest9507995087_)
                              (let ((_hd9508495104_ (##car _rest9507995087_))
                                    (_tl9508595106_ (##cdr _rest9507995087_)))
                                (let* ((_sys95109_ _hd9508495104_)
                                       (_rest95111_ _tl9508595106_))
                                  (_K9508395101_ _rest95111_ _sys95109_)))
                              (_else9508195095_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self95012_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self95012_)
          (let* ((_g9501695028_ (system-type))
                 (_else9501895036_ (lambda () '#!void))
                 (_K9502095048_
                  (lambda (_sys-type95039_ _sys-vendor95040_ _sys-cpu95041_)
                    (gx#core-bind-feature!__%
                     _sys-cpu95041_
                     '#f
                     '0
                     _self95012_)
                    (gx#core-bind-feature!__%
                     _sys-type95039_
                     '#f
                     '0
                     _self95012_)
                    (if (_linux-variant?95014_ _sys-type95039_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self95012_)
                        (let ((_$e95043_ (_bsd-variant95015_ _sys-type95039_)))
                          (if _$e95043_
                              ((lambda (_sys-prefix95046_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self95012_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix95046_)
                                  '#f
                                  '0
                                  _self95012_))
                               _$e95043_)
                              '#!void))))))
            (if (##pair? _g9501695028_)
                (let ((_hd9502195051_ (##car _g9501695028_))
                      (_tl9502295053_ (##cdr _g9501695028_)))
                  (let ((_sys-cpu95056_ _hd9502195051_))
                    (if (##pair? _tl9502295053_)
                        (let ((_hd9502395058_ (##car _tl9502295053_))
                              (_tl9502495060_ (##cdr _tl9502295053_)))
                          (let ((_sys-vendor95063_ _hd9502395058_))
                            (if (##pair? _tl9502495060_)
                                (let ((_hd9502595065_ (##car _tl9502495060_))
                                      (_tl9502695067_ (##cdr _tl9502495060_)))
                                  (let ((_sys-type95070_ _hd9502595065_))
                                    (if (##null? _tl9502695067_)
                                        (_K9502095048_
                                         _sys-type95070_
                                         _sys-vendor95063_
                                         _sys-cpu95056_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self95012_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
