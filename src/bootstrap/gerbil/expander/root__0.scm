(declare (block) (standard-bindings) (extended-bindings))
(begin
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
                                                                '()))))
                                        (cons (cons '%#module
                                                    (cons 'top:
                                                          (cons gx#core-expand-module%
                                                                (cons gx#core-compile-top-module%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons '%#export
                                                          (cons 'module:
                                                                (cons gx#core-expand-export%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-compile-top-export% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#provide
                                                                (cons 'module:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-expand-provide%
                                    (cons gx#core-compile-top-provide% '()))))
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
                                (cons gx#core-compile-top-define-alias% '()))))
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
                                                                '()))))
                                        (cons (cons '%#call
                                                    (cons 'expr:
                                                          (cons gx#core-expand-call%
                                                                (cons gx#core-compile-top-call%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons '%#if
                                                          (cons 'expr:
                                                                (cons gx#core-expand-if%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-compile-top-if% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#ref
                                                                (cons 'expr:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
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
                                              (cons '=> (cons '%#module '())))
                                        (cons (cons 'export
                                                    (cons '=>
                                                          (cons '%#export
                                                                '())))
                                              (cons (cons 'provide
                                                          (cons '=>
                                                                (cons '%#provide
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'declare
                                                                (cons '=>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '%#declare '())))
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
                                      (cons gx#macro-expand-define-syntax '()))
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
                                                                (cons '%#begin-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '_ '())
                                                          (cons (cons '... '())
                                                                (cons (cons 'else
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
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
  (begin
    (define gx#root-context:::init!__%
      (lambda (_self16822_ _bind?16823_)
        (begin
          (if (##fx< '2 (##vector-length _self16822_))
              (begin
                (##vector-set! _self16822_ '1 'root)
                (##vector-set! _self16822_ '2 (make-hash-table-eq)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16822_))
          (if _bind?16823_
              (begin
                (call-method _self16822_ 'bind-core-syntax-expanders!)
                (call-method _self16822_ 'bind-core-macro-expanders!)
                (call-method _self16822_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self16828_)
          (let ((_bind?16830_ '#t))
            (gx#root-context:::init!__% _self16828_ _bind?16830_))))
      (define gx#root-context:::init!
        (lambda _g16836_
          (let ((_g16835_ (length _g16836_)))
            (cond ((fx= _g16835_ 1)
                   (apply gx#root-context:::init!__0 _g16836_))
                  ((fx= _g16835_ 2)
                   (apply gx#root-context:::init!__% _g16836_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g16836_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__%
      (lambda (_self16678_ _super16679_)
        (let ((_super16687_
               (let ((_$e16681_ _super16679_))
                 (if _$e16681_
                     _$e16681_
                     (let ((_$e16684_ (gx#core-context-root__0)))
                       (if _$e16684_
                           _$e16684_
                           (let ((__obj16834
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj16834)
                               __obj16834))))))))
          (if (##fx< '5 (##vector-length _self16678_))
              (begin
                (##vector-set! _self16678_ '1 'top)
                (##vector-set! _self16678_ '2 (make-hash-table-eq))
                (##vector-set! _self16678_ '3 _super16687_)
                (##vector-set! _self16678_ '4 '#f)
                (##vector-set! _self16678_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16678_)))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self16692_)
          (let ((_super16694_ '#f))
            (gx#top-context:::init!__% _self16692_ _super16694_))))
      (define gx#top-context:::init!
        (lambda _g16838_
          (let ((_g16837_ (length _g16838_)))
            (cond ((fx= _g16837_ 1) (apply gx#top-context:::init!__0 _g16838_))
                  ((fx= _g16837_ 2) (apply gx#top-context:::init!__% _g16838_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g16838_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self16409_ _bindings16410_)
        (for-each
         (lambda (_bind16412_)
           (let* ((_bind1641316420_ _bind16412_)
                  (_E1641516424_
                   (lambda () (error '"No clause matching" _bind1641316420_)))
                  (_K1641616533_
                   (lambda (_rest16427_ _id16428_)
                     (gx#core-context-put!
                      _self16409_
                      _id16428_
                      (##structure
                       gx#syntax-binding::t
                       _id16428_
                       _id16428_
                       '#f
                       (let* ((_rest1642916440_ _rest16427_)
                              (_E1643116444_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1642916440_)))
                              (_K1643216509_
                               (lambda (_compiler16447_
                                        _expander16448_
                                        _key16449_)
                                 ((let* ((_key1645016463_ _key16449_)
                                         (_E1645616467_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1645016463_)))
                                         (_try-match1645516475_
                                          (lambda ()
                                            (let ((_K1645716472_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1645016463_
                                                         'expr:)
                                                  (_K1645716472_)
                                                  (_E1645616467_)))))
                                         (_try-match1645416483_
                                          (lambda ()
                                            (let ((_K1645816480_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1645016463_
                                                         'special:)
                                                  (_K1645816480_)
                                                  (_try-match1645516475_)))))
                                         (_try-match1645316491_
                                          (lambda ()
                                            (let ((_K1645916488_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1645016463_
                                                         'define:)
                                                  (_K1645916488_)
                                                  (_try-match1645416483_)))))
                                         (_try-match1645216499_
                                          (lambda ()
                                            (let ((_K1646016496_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1645016463_
                                                         'module:)
                                                  (_K1646016496_)
                                                  (_try-match1645316491_)))))
                                         (_K1646116503_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1645016463_ 'top:)
                                        (_K1646116503_)
                                        (_try-match1645216499_)))
                                  _expander16448_
                                  _id16428_
                                  (let ((_$e16506_ _compiler16447_))
                                    (if _$e16506_
                                        _$e16506_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1642916440_)
                             (let ((_hd1643316512_ (##car _rest1642916440_))
                                   (_tl1643416514_ (##cdr _rest1642916440_)))
                               (let ((_key16517_ _hd1643316512_))
                                 (if (##pair? _tl1643416514_)
                                     (let ((_hd1643516519_
                                            (##car _tl1643416514_))
                                           (_tl1643616521_
                                            (##cdr _tl1643416514_)))
                                       (let ((_expander16524_ _hd1643516519_))
                                         (if (##pair? _tl1643616521_)
                                             (let ((_hd1643716526_
                                                    (##car _tl1643616521_))
                                                   (_tl1643816528_
                                                    (##cdr _tl1643616521_)))
                                               (let ((_compiler16531_
                                                      _hd1643716526_))
                                                 (if (##null? _tl1643816528_)
                                                     (_K1643216509_
                                                      _compiler16531_
                                                      _expander16524_
                                                      _key16517_)
                                                     (_E1643116444_))))
                                             (_E1643116444_))))
                                     (_E1643116444_))))
                             (_E1643116444_))))))))
             (if (##pair? _bind1641316420_)
                 (let ((_hd1641716536_ (##car _bind1641316420_))
                       (_tl1641816538_ (##cdr _bind1641316420_)))
                   (let* ((_id16541_ _hd1641716536_)
                          (_rest16543_ _tl1641816538_))
                     (_K1641616533_ _rest16543_ _id16541_)))
                 (_E1641516424_))))
         _bindings16410_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self16548_)
          (let ((_bindings16550_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__%
             _self16548_
             _bindings16550_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g16840_
          (let ((_g16839_ (length _g16840_)))
            (cond ((fx= _g16839_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g16840_))
                  ((fx= _g16839_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__%
                          _g16840_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g16840_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self16181_ _bindings16182_)
        (for-each
         (lambda (_bind16184_)
           (let* ((_bind1618516192_ _bind16184_)
                  (_E1618716196_
                   (lambda () (error '"No clause matching" _bind1618516192_)))
                  (_K1618816264_
                   (lambda (_rest16199_ _id16200_)
                     (gx#core-context-put!
                      _self16181_
                      _id16200_
                      (##structure
                       gx#syntax-binding::t
                       _id16200_
                       _id16200_
                       '#f
                       (let* ((_rest1620116216_ _rest16199_)
                              (_E1620516220_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1620116216_)))
                              (_try-match1620416228_
                               (lambda ()
                                 (let ((_K1620616225_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id16200_))))
                                   (if (##null? _rest1620116216_)
                                       (_K1620616225_)
                                       (_E1620516220_)))))
                              (_try-match1620316244_
                               (lambda ()
                                 (let ((_K1620716234_
                                        (lambda (_proc16232_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc16232_))))
                                   (if (##pair? _rest1620116216_)
                                       (let ((_hd1620816237_
                                              (##car _rest1620116216_))
                                             (_tl1620916239_
                                              (##cdr _rest1620116216_)))
                                         (let ((_proc16242_ _hd1620816237_))
                                           (if (##null? _tl1620916239_)
                                               (_K1620716234_ _proc16242_)
                                               (_try-match1620416228_))))
                                       (_try-match1620416228_)))))
                              (_K1621016249_
                               (lambda (_core-id16247_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id16247_))))
                         (if (##pair? _rest1620116216_)
                             (let ((_hd1621116252_ (##car _rest1620116216_))
                                   (_tl1621216254_ (##cdr _rest1620116216_)))
                               (if (##eq? _hd1621116252_ '=>)
                                   (if (##pair? _tl1621216254_)
                                       (let ((_hd1621316257_
                                              (##car _tl1621216254_))
                                             (_tl1621416259_
                                              (##cdr _tl1621216254_)))
                                         (let ((_core-id16262_ _hd1621316257_))
                                           (if (##null? _tl1621416259_)
                                               (_K1621016249_ _core-id16262_)
                                               (_try-match1620316244_))))
                                       (_try-match1620316244_))
                                   (_try-match1620316244_)))
                             (_try-match1620316244_))))))))
             (if (##pair? _bind1618516192_)
                 (let ((_hd1618916267_ (##car _bind1618516192_))
                       (_tl1619016269_ (##cdr _bind1618516192_)))
                   (let* ((_id16272_ _hd1618916267_)
                          (_rest16274_ _tl1619016269_))
                     (_K1618816264_ _rest16274_ _id16272_)))
                 (_E1618716196_))))
         _bindings16182_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self16279_)
          (let ((_bindings16281_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__%
             _self16279_
             _bindings16281_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g16842_
          (let ((_g16841_ (length _g16842_)))
            (cond ((fx= _g16841_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g16842_))
                  ((fx= _g16841_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__%
                          _g16842_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g16842_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self15972_)
      (letrec ((_linux-variant?15974_
                (lambda (_sys-type16026_)
                  (let* ((_g1602716035_
                          (string-split (symbol->string _sys-type16026_) '#\-))
                         (_E1603016039_
                          (lambda ()
                            (error '"No clause matching" _g1602716035_)))
                         (_else1602916043_ (lambda () '#f))
                         (_K1603116048_
                          (lambda (_rest16046_) (not (null? _rest16046_)))))
                    (if (##pair? _g1602716035_)
                        (let ((_hd1603216051_ (##car _g1602716035_))
                              (_tl1603316053_ (##cdr _g1602716035_)))
                          (if (equal? _hd1603216051_ '"linux")
                              (let ((_rest16056_ _tl1603316053_))
                                (_K1603116048_ _rest16056_))
                              (_else1602916043_)))
                        (_else1602916043_))))))
        (begin
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self15972_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self15972_)
          (let* ((_g1597515987_ (system-type))
                 (_E1597815991_
                  (lambda () (error '"No clause matching" _g1597515987_)))
                 (_else1597715995_ (lambda () '#!void))
                 (_K1597916002_
                  (lambda (_sys-type15998_ _sys-vendor15999_ _sys-cpu16000_)
                    (begin
                      (gx#core-bind-feature!__%
                       _sys-cpu16000_
                       '#f
                       '0
                       _self15972_)
                      (gx#core-bind-feature!__%
                       _sys-type15998_
                       '#f
                       '0
                       _self15972_)
                      (if (_linux-variant?15974_ _sys-type15998_)
                          (gx#core-bind-feature!__% 'linux '#f '0 _self15972_)
                          '#!void)))))
            (if (##pair? _g1597515987_)
                (let ((_hd1598016005_ (##car _g1597515987_))
                      (_tl1598116007_ (##cdr _g1597515987_)))
                  (let ((_sys-cpu16010_ _hd1598016005_))
                    (if (##pair? _tl1598116007_)
                        (let ((_hd1598216012_ (##car _tl1598116007_))
                              (_tl1598316014_ (##cdr _tl1598116007_)))
                          (let ((_sys-vendor16017_ _hd1598216012_))
                            (if (##pair? _tl1598316014_)
                                (let ((_hd1598416019_ (##car _tl1598316014_))
                                      (_tl1598516021_ (##cdr _tl1598316014_)))
                                  (let ((_sys-type16024_ _hd1598416019_))
                                    (if (##null? _tl1598516021_)
                                        (_K1597916002_
                                         _sys-type16024_
                                         _sys-vendor16017_
                                         _sys-cpu16010_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self15972_)
              '#!void)))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
