(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1709994213)
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
      (lambda (_self96171_ _bind?96172_)
        (if (##fx< '2 (##structure-length _self96171_))
            (begin
              (##unchecked-structure-set!
               _self96171_
               'root
               '1
               (##structure-type _self96171_)
               '#f)
              (##unchecked-structure-set!
               _self96171_
               (make-hash-table-eq)
               '2
               (##structure-type _self96171_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self96171_
                   '2
                   (##vector-length _self96171_)))
        (if _bind?96172_
            (begin
              (let ((__method96223
                     (method-ref _self96171_ 'bind-core-syntax-expanders!)))
                (if __method96223
                    (__method96223 _self96171_)
                    (error '"Missing method"
                           _self96171_
                           'bind-core-syntax-expanders!)))
              (let ((__method96224
                     (method-ref _self96171_ 'bind-core-macro-expanders!)))
                (if __method96224
                    (__method96224 _self96171_)
                    (error '"Missing method"
                           _self96171_
                           'bind-core-macro-expanders!)))
              (let ((__method96225
                     (method-ref _self96171_ 'bind-core-features!)))
                (if __method96225
                    (__method96225 _self96171_)
                    (error '"Missing method"
                           _self96171_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self96177_)
        (let ((_bind?96179_ '#t))
          (gx#root-context:::init!__% _self96177_ _bind?96179_))))
    (define gx#root-context:::init!
      (lambda _g96228_
        (let ((_g96227_ (##length _g96228_)))
          (cond ((##fx= _g96227_ 1)
                 (apply (lambda (_self96177_)
                          (gx#root-context:::init!__0 _self96177_))
                        _g96228_))
                ((##fx= _g96227_ 2)
                 (apply (lambda (_self96181_ _bind?96182_)
                          (gx#root-context:::init!__%
                           _self96181_
                           _bind?96182_))
                        _g96228_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g96228_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass96183 __method-table96184)
        (let ((__bind-core-features!96185
               (make-promise
                (lambda ()
                  (let ((__method96188
                         (symbolic-table-ref
                          __method-table96184
                          'bind-core-features!
                          '#f)))
                    (if __method96188
                        __method96188
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!96186
               (make-promise
                (lambda ()
                  (let ((__method96189
                         (symbolic-table-ref
                          __method-table96184
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method96189
                        __method96189
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!96187
               (make-promise
                (lambda ()
                  (let ((__method96190
                         (symbolic-table-ref
                          __method-table96184
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method96190
                        __method96190
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda9616996174_
                 (lambda (_self96171_ _bind?96172_)
                   (if (##fx< '2 (##structure-length _self96171_))
                       (begin
                         (##unchecked-structure-set!
                          _self96171_
                          'root
                          '1
                          (##structure-type _self96171_)
                          '#f)
                         (##unchecked-structure-set!
                          _self96171_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self96171_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self96171_
                              '2
                              (##vector-length _self96171_)))
                   (if _bind?96172_
                       (begin
                         ((force __bind-core-syntax-expanders!96186)
                          _self96171_)
                         ((force __bind-core-macro-expanders!96187)
                          _self96171_)
                         ((force __bind-core-features!96185) _self96171_))
                       '#!void))))
            (lambda _g96230_
              (let ((_g96229_ (##length _g96230_)))
                (cond ((##fx= _g96229_ 1)
                       (apply (lambda (_self96177_)
                                (let ((_bind?96179_ '#t))
                                  (_opt-lambda9616996174_
                                   _self96177_
                                   _bind?96179_)))
                              _g96230_))
                      ((##fx= _g96229_ 2)
                       (apply (lambda (_self96181_ _bind?96182_)
                                (_opt-lambda9616996174_
                                 _self96181_
                                 _bind?96182_))
                              _g96230_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g96230_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self96027_ _super96028_)
        (let ((_super96036_
               (let ((_$e96030_ _super96028_))
                 (if _$e96030_
                     _$e96030_
                     (let ((_$e96033_ (gx#core-context-root__0)))
                       (if _$e96033_
                           _$e96033_
                           (let ((__obj96226
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj96226)
                             __obj96226)))))))
          (if (##fx< '5 (##structure-length _self96027_))
              (begin
                (##unchecked-structure-set!
                 _self96027_
                 'top
                 '1
                 (##structure-type _self96027_)
                 '#f)
                (##unchecked-structure-set!
                 _self96027_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self96027_)
                 '#f)
                (##unchecked-structure-set!
                 _self96027_
                 _super96036_
                 '3
                 (##structure-type _self96027_)
                 '#f)
                (##unchecked-structure-set!
                 _self96027_
                 '#f
                 '4
                 (##structure-type _self96027_)
                 '#f)
                (##unchecked-structure-set!
                 _self96027_
                 '#f
                 '5
                 (##structure-type _self96027_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self96027_
                     '5
                     (##vector-length _self96027_))))))
    (define gx#top-context:::init!__0
      (lambda (_self96041_)
        (let ((_super96043_ '#f))
          (gx#top-context:::init!__% _self96041_ _super96043_))))
    (define gx#top-context:::init!
      (lambda _g96232_
        (let ((_g96231_ (##length _g96232_)))
          (cond ((##fx= _g96231_ 1)
                 (apply (lambda (_self96041_)
                          (gx#top-context:::init!__0 _self96041_))
                        _g96232_))
                ((##fx= _g96231_ 2)
                 (apply (lambda (_self96045_ _super96046_)
                          (gx#top-context:::init!__% _self96045_ _super96046_))
                        _g96232_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g96232_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self95758_ _bindings95759_)
        (for-each
         (lambda (_bind95761_)
           (let* ((_bind9576295769_ _bind95761_)
                  (_E9576495773_
                   (lambda () (error '"No clause matching" _bind9576295769_)))
                  (_K9576595882_
                   (lambda (_rest95776_ _id95777_)
                     (gx#core-context-put!
                      _self95758_
                      _id95777_
                      (##structure
                       gx#syntax-binding::t
                       _id95777_
                       _id95777_
                       '#f
                       (let* ((_rest9577895789_ _rest95776_)
                              (_E9578095793_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9577895789_)))
                              (_K9578195858_
                               (lambda (_compiler95796_
                                        _expander95797_
                                        _key95798_)
                                 ((let* ((_key9579995812_ _key95798_)
                                         (_E9580595816_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9579995812_))))
                                    (let ((_K9581095852_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9580995845_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9580895837_
                                           (lambda () gx#make-definition-form))
                                          (_K9580795829_
                                           (lambda () gx#make-special-form))
                                          (_K9580695821_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9580495824_
                                              (lambda ()
                                                (if (##eq? _key9579995812_
                                                           'expr:)
                                                    (_K9580695821_)
                                                    (_E9580595816_))))
                                             (_try-match9580395832_
                                              (lambda ()
                                                (if (##eq? _key9579995812_
                                                           'special:)
                                                    (_K9580795829_)
                                                    (_try-match9580495824_))))
                                             (_try-match9580295840_
                                              (lambda ()
                                                (if (##eq? _key9579995812_
                                                           'define:)
                                                    (_K9580895837_)
                                                    (_try-match9580395832_))))
                                             (_try-match9580195848_
                                              (lambda ()
                                                (if (##eq? _key9579995812_
                                                           'module:)
                                                    (_K9580995845_)
                                                    (_try-match9580295840_)))))
                                        (if (##eq? _key9579995812_ 'top:)
                                            (_K9581095852_)
                                            (_try-match9580195848_)))))
                                  _expander95797_
                                  _id95777_
                                  (let ((_$e95855_ _compiler95796_))
                                    (if _$e95855_
                                        _$e95855_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9577895789_)
                             (let ((_hd9578295861_ (##car _rest9577895789_))
                                   (_tl9578395863_ (##cdr _rest9577895789_)))
                               (let ((_key95866_ _hd9578295861_))
                                 (if (##pair? _tl9578395863_)
                                     (let ((_hd9578495868_
                                            (##car _tl9578395863_))
                                           (_tl9578595870_
                                            (##cdr _tl9578395863_)))
                                       (let ((_expander95873_ _hd9578495868_))
                                         (if (##pair? _tl9578595870_)
                                             (let ((_hd9578695875_
                                                    (##car _tl9578595870_))
                                                   (_tl9578795877_
                                                    (##cdr _tl9578595870_)))
                                               (let ((_compiler95880_
                                                      _hd9578695875_))
                                                 (if (##null? _tl9578795877_)
                                                     (_K9578195858_
                                                      _compiler95880_
                                                      _expander95873_
                                                      _key95866_)
                                                     (_E9578095793_))))
                                             (_E9578095793_))))
                                     (_E9578095793_))))
                             (_E9578095793_))))))))
             (if (##pair? _bind9576295769_)
                 (let ((_hd9576695885_ (##car _bind9576295769_))
                       (_tl9576795887_ (##cdr _bind9576295769_)))
                   (let* ((_id95890_ _hd9576695885_)
                          (_rest95892_ _tl9576795887_))
                     (_K9576595882_ _rest95892_ _id95890_)))
                 (_E9576495773_))))
         _bindings95759_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self95897_)
        (let ((_bindings95899_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self95897_
           _bindings95899_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g96234_
        (let ((_g96233_ (##length _g96234_)))
          (cond ((##fx= _g96233_ 1)
                 (apply (lambda (_self95897_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self95897_))
                        _g96234_))
                ((##fx= _g96233_ 2)
                 (apply (lambda (_self95901_ _bindings95902_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self95901_
                           _bindings95902_))
                        _g96234_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g96234_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self95530_ _bindings95531_)
        (for-each
         (lambda (_bind95533_)
           (let* ((_bind9553495541_ _bind95533_)
                  (_E9553695545_
                   (lambda () (error '"No clause matching" _bind9553495541_)))
                  (_K9553795613_
                   (lambda (_rest95548_ _id95549_)
                     (gx#core-context-put!
                      _self95530_
                      _id95549_
                      (##structure
                       gx#syntax-binding::t
                       _id95549_
                       _id95549_
                       '#f
                       (let* ((_rest9555095565_ _rest95548_)
                              (_E9555495569_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9555095565_))))
                         (let ((_K9555995598_
                                (lambda (_core-id95596_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id95596_)))
                               (_K9555695583_
                                (lambda (_proc95581_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc95581_)))
                               (_K9555595574_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id95549_))))
                           (let ((_try-match9555395577_
                                  (lambda ()
                                    (if (##null? _rest9555095565_)
                                        (_K9555595574_)
                                        (_E9555495569_)))))
                             (if (##pair? _rest9555095565_)
                                 (let ((_tl9556195603_
                                        (##cdr _rest9555095565_))
                                       (_hd9556095601_
                                        (##car _rest9555095565_)))
                                   (if (##eq? _hd9556095601_ '=>)
                                       (if (##pair? _tl9556195603_)
                                           (let ((_tl9556395608_
                                                  (##cdr _tl9556195603_))
                                                 (_hd9556295606_
                                                  (##car _tl9556195603_)))
                                             (if (##null? _tl9556395608_)
                                                 (let ((_core-id95611_
                                                        _hd9556295606_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id95611_))
                                                 (_E9555495569_)))
                                           (if (##null? _tl9556195603_)
                                               (let ((_proc95591_
                                                      _hd9556095601_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc95591_))
                                               (_E9555495569_)))
                                       (if (##null? _tl9556195603_)
                                           (let ((_proc95591_ _hd9556095601_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc95591_))
                                           (_E9555495569_))))
                                 (_try-match9555395577_))))))))))
             (if (##pair? _bind9553495541_)
                 (let ((_hd9553895616_ (##car _bind9553495541_))
                       (_tl9553995618_ (##cdr _bind9553495541_)))
                   (let* ((_id95621_ _hd9553895616_)
                          (_rest95623_ _tl9553995618_))
                     (_K9553795613_ _rest95623_ _id95621_)))
                 (_E9553695545_))))
         _bindings95531_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self95628_)
        (let ((_bindings95630_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self95628_
           _bindings95630_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g96236_
        (let ((_g96235_ (##length _g96236_)))
          (cond ((##fx= _g96235_ 1)
                 (apply (lambda (_self95628_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self95628_))
                        _g96236_))
                ((##fx= _g96235_ 2)
                 (apply (lambda (_self95632_ _bindings95633_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self95632_
                           _bindings95633_))
                        _g96236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g96236_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self95274_)
        (letrec ((_linux-variant?95276_
                  (lambda (_sys-type95375_)
                    (let* ((_g9537695384_
                            (string-split
                             (symbol->string _sys-type95375_)
                             '#\-))
                           (_else9537895392_ (lambda () '#f))
                           (_K9538095397_
                            (lambda (_rest95395_) (not (null? _rest95395_)))))
                      (if (##pair? _g9537695384_)
                          (let ((_hd9538195400_ (##car _g9537695384_))
                                (_tl9538295402_ (##cdr _g9537695384_)))
                            (if (equal? _hd9538195400_ '"linux")
                                (let ((_rest95405_ _tl9538295402_))
                                  (_K9538095397_ _rest95405_))
                                (_else9537895392_)))
                          (_else9537895392_)))))
                 (_bsd-variant95277_
                  (lambda (_sys-type95334_)
                    (let ((_sys-type-str95336_
                           (symbol->string _sys-type95334_)))
                      (let _lp95338_ ((_rest95340_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9534195349_ _rest95340_)
                               (_else9534395357_ (lambda () '#f))
                               (_K9534595363_
                                (lambda (_rest95360_ _sys95361_)
                                  (if (string-prefix?
                                       _sys95361_
                                       _sys-type-str95336_)
                                      _sys95361_
                                      (_lp95338_ _rest95360_)))))
                          (if (##pair? _rest9534195349_)
                              (let ((_hd9534695366_ (##car _rest9534195349_))
                                    (_tl9534795368_ (##cdr _rest9534195349_)))
                                (let* ((_sys95371_ _hd9534695366_)
                                       (_rest95373_ _tl9534795368_))
                                  (_K9534595363_ _rest95373_ _sys95371_)))
                              (_else9534395357_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self95274_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self95274_)
          (let* ((_g9527895290_ (system-type))
                 (_else9528095298_ (lambda () '#!void))
                 (_K9528295310_
                  (lambda (_sys-type95301_ _sys-vendor95302_ _sys-cpu95303_)
                    (gx#core-bind-feature!__%
                     _sys-cpu95303_
                     '#f
                     '0
                     _self95274_)
                    (gx#core-bind-feature!__%
                     _sys-type95301_
                     '#f
                     '0
                     _self95274_)
                    (if (_linux-variant?95276_ _sys-type95301_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self95274_)
                        (let ((_$e95305_ (_bsd-variant95277_ _sys-type95301_)))
                          (if _$e95305_
                              ((lambda (_sys-prefix95308_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self95274_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix95308_)
                                  '#f
                                  '0
                                  _self95274_))
                               _$e95305_)
                              '#!void))))))
            (if (##pair? _g9527895290_)
                (let ((_hd9528395313_ (##car _g9527895290_))
                      (_tl9528495315_ (##cdr _g9527895290_)))
                  (let ((_sys-cpu95318_ _hd9528395313_))
                    (if (##pair? _tl9528495315_)
                        (let ((_hd9528595320_ (##car _tl9528495315_))
                              (_tl9528695322_ (##cdr _tl9528495315_)))
                          (let ((_sys-vendor95325_ _hd9528595320_))
                            (if (##pair? _tl9528695322_)
                                (let ((_hd9528795327_ (##car _tl9528695322_))
                                      (_tl9528895329_ (##cdr _tl9528695322_)))
                                  (let ((_sys-type95332_ _hd9528795327_))
                                    (if (##null? _tl9528895329_)
                                        (_K9528295310_
                                         _sys-type95332_
                                         _sys-vendor95325_
                                         _sys-cpu95318_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self95274_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
