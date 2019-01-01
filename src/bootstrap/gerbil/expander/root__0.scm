(declare (block) (standard-bindings) (extended-bindings))
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
  (define gx#root-context:::init!__%
    (lambda (_self18254_ _bind?18255_)
      (if (##fx< '2 (##vector-length _self18254_))
          (begin
            (##vector-set! _self18254_ '1 'root)
            (##vector-set! _self18254_ '2 (make-table 'test: eq?)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self18254_))
      (if _bind?18255_
          (begin
            (call-method _self18254_ 'bind-core-syntax-expanders!)
            (call-method _self18254_ 'bind-core-macro-expanders!)
            (call-method _self18254_ 'bind-core-features!))
          '#!void)))
  (define gx#root-context:::init!__0
    (lambda (_self18260_)
      (let ((_bind?18262_ '#t))
        (gx#root-context:::init!__% _self18260_ _bind?18262_))))
  (define gx#root-context:::init!
    (lambda _g18300_
      (let ((_g18299_ (length _g18300_)))
        (cond ((##fx= _g18299_ 1) (apply gx#root-context:::init!__0 _g18300_))
              ((##fx= _g18299_ 2) (apply gx#root-context:::init!__% _g18300_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#root-context:::init!
                _g18300_))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (define gx#top-context:::init!__%
    (lambda (_self18110_ _super18111_)
      (let ((_super18119_
             (let ((_$e18113_ _super18111_))
               (if _$e18113_
                   _$e18113_
                   (let ((_$e18116_ (gx#core-context-root__0)))
                     (if _$e18116_
                         _$e18116_
                         (let ((__obj18298
                                (make-object gx#root-context::t '2)))
                           (gx#root-context:::init!__0 __obj18298)
                           __obj18298)))))))
        (if (##fx< '5 (##vector-length _self18110_))
            (begin
              (##vector-set! _self18110_ '1 'top)
              (##vector-set! _self18110_ '2 (make-table 'test: eq?))
              (##vector-set! _self18110_ '3 _super18119_)
              (##vector-set! _self18110_ '4 '#f)
              (##vector-set! _self18110_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self18110_)))))
  (define gx#top-context:::init!__0
    (lambda (_self18124_)
      (let ((_super18126_ '#f))
        (gx#top-context:::init!__% _self18124_ _super18126_))))
  (define gx#top-context:::init!
    (lambda _g18302_
      (let ((_g18301_ (length _g18302_)))
        (cond ((##fx= _g18301_ 1) (apply gx#top-context:::init!__0 _g18302_))
              ((##fx= _g18301_ 2) (apply gx#top-context:::init!__% _g18302_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#top-context:::init!
                _g18302_))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (define gx#expander-context::bind-core-syntax-expanders!__%
    (lambda (_self17841_ _bindings17842_)
      (for-each
       (lambda (_bind17844_)
         (let* ((_bind1784517852_ _bind17844_)
                (_E1784717856_
                 (lambda () (error '"No clause matching" _bind1784517852_)))
                (_K1784817965_
                 (lambda (_rest17859_ _id17860_)
                   (gx#core-context-put!
                    _self17841_
                    _id17860_
                    (##structure
                     gx#syntax-binding::t
                     _id17860_
                     _id17860_
                     '#f
                     (let* ((_rest1786117872_ _rest17859_)
                            (_E1786317876_
                             (lambda ()
                               (error '"No clause matching" _rest1786117872_)))
                            (_K1786417941_
                             (lambda (_compiler17879_
                                      _expander17880_
                                      _key17881_)
                               ((let* ((_key1788217895_ _key17881_)
                                       (_E1788817899_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _key1788217895_))))
                                  (let ((_K1789317935_
                                         (lambda () gx#make-top-special-form))
                                        (_K1789217928_
                                         (lambda ()
                                           gx#make-module-special-form))
                                        (_K1789117920_
                                         (lambda () gx#make-definition-form))
                                        (_K1789017912_
                                         (lambda () gx#make-special-form))
                                        (_K1788917904_
                                         (lambda () gx#make-expression-form)))
                                    (let* ((_try-match1788717907_
                                            (lambda ()
                                              (if (##eq? _key1788217895_
                                                         'expr:)
                                                  (_K1788917904_)
                                                  (_E1788817899_))))
                                           (_try-match1788617915_
                                            (lambda ()
                                              (if (##eq? _key1788217895_
                                                         'special:)
                                                  (_K1789017912_)
                                                  (_try-match1788717907_))))
                                           (_try-match1788517923_
                                            (lambda ()
                                              (if (##eq? _key1788217895_
                                                         'define:)
                                                  (_K1789117920_)
                                                  (_try-match1788617915_))))
                                           (_try-match1788417931_
                                            (lambda ()
                                              (if (##eq? _key1788217895_
                                                         'module:)
                                                  (_K1789217928_)
                                                  (_try-match1788517923_)))))
                                      (if (##eq? _key1788217895_ 'top:)
                                          (_K1789317935_)
                                          (_try-match1788417931_)))))
                                _expander17880_
                                _id17860_
                                (let ((_$e17938_ _compiler17879_))
                                  (if _$e17938_
                                      _$e17938_
                                      gx#core-compile-top-error))))))
                       (if (##pair? _rest1786117872_)
                           (let ((_hd1786517944_ (##car _rest1786117872_))
                                 (_tl1786617946_ (##cdr _rest1786117872_)))
                             (let ((_key17949_ _hd1786517944_))
                               (if (##pair? _tl1786617946_)
                                   (let ((_hd1786717951_
                                          (##car _tl1786617946_))
                                         (_tl1786817953_
                                          (##cdr _tl1786617946_)))
                                     (let ((_expander17956_ _hd1786717951_))
                                       (if (##pair? _tl1786817953_)
                                           (let ((_hd1786917958_
                                                  (##car _tl1786817953_))
                                                 (_tl1787017960_
                                                  (##cdr _tl1786817953_)))
                                             (let ((_compiler17963_
                                                    _hd1786917958_))
                                               (if (##null? _tl1787017960_)
                                                   (_K1786417941_
                                                    _compiler17963_
                                                    _expander17956_
                                                    _key17949_)
                                                   (_E1786317876_))))
                                           (_E1786317876_))))
                                   (_E1786317876_))))
                           (_E1786317876_))))))))
           (if (##pair? _bind1784517852_)
               (let ((_hd1784917968_ (##car _bind1784517852_))
                     (_tl1785017970_ (##cdr _bind1784517852_)))
                 (let* ((_id17973_ _hd1784917968_)
                        (_rest17975_ _tl1785017970_))
                   (_K1784817965_ _rest17975_ _id17973_)))
               (_E1784717856_))))
       _bindings17842_)))
  (define gx#expander-context::bind-core-syntax-expanders!__0
    (lambda (_self17980_)
      (let ((_bindings17982_ gx#*core-syntax-expanders*))
        (gx#expander-context::bind-core-syntax-expanders!__%
         _self17980_
         _bindings17982_))))
  (define gx#expander-context::bind-core-syntax-expanders!
    (lambda _g18304_
      (let ((_g18303_ (length _g18304_)))
        (cond ((##fx= _g18303_ 1)
               (apply gx#expander-context::bind-core-syntax-expanders!__0
                      _g18304_))
              ((##fx= _g18303_ 2)
               (apply gx#expander-context::bind-core-syntax-expanders!__%
                      _g18304_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#expander-context::bind-core-syntax-expanders!
                _g18304_))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (define gx#expander-context::bind-core-macro-expanders!__%
    (lambda (_self17613_ _bindings17614_)
      (for-each
       (lambda (_bind17616_)
         (let* ((_bind1761717624_ _bind17616_)
                (_E1761917628_
                 (lambda () (error '"No clause matching" _bind1761717624_)))
                (_K1762017696_
                 (lambda (_rest17631_ _id17632_)
                   (gx#core-context-put!
                    _self17613_
                    _id17632_
                    (##structure
                     gx#syntax-binding::t
                     _id17632_
                     _id17632_
                     '#f
                     (let* ((_rest1763317648_ _rest17631_)
                            (_E1763717652_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest1763317648_))))
                       (let ((_K1764217681_
                              (lambda (_core-id17679_)
                                (##structure
                                 gx#rename-macro-expander::t
                                 _core-id17679_)))
                             (_K1763917666_
                              (lambda (_proc17664_)
                                (##structure
                                 gx#macro-expander::t
                                 _proc17664_)))
                             (_K1763817657_
                              (lambda ()
                                (##structure
                                 gx#reserved-expander::t
                                 _id17632_))))
                         (let ((_try-match1763617660_
                                (lambda ()
                                  (if (##null? _rest1763317648_)
                                      (_K1763817657_)
                                      (_E1763717652_)))))
                           (if (##pair? _rest1763317648_)
                               (let ((_tl1764417686_ (##cdr _rest1763317648_))
                                     (_hd1764317684_ (##car _rest1763317648_)))
                                 (if (##eq? _hd1764317684_ '=>)
                                     (if (##pair? _tl1764417686_)
                                         (let ((_tl1764617691_
                                                (##cdr _tl1764417686_))
                                               (_hd1764517689_
                                                (##car _tl1764417686_)))
                                           (if (##null? _tl1764617691_)
                                               (let ((_core-id17694_
                                                      _hd1764517689_))
                                                 (##structure
                                                  gx#rename-macro-expander::t
                                                  _core-id17694_))
                                               (_E1763717652_)))
                                         (if (##null? _tl1764417686_)
                                             (let ((_proc17674_
                                                    _hd1764317684_))
                                               (##structure
                                                gx#macro-expander::t
                                                _proc17674_))
                                             (_E1763717652_)))
                                     (if (##null? _tl1764417686_)
                                         (let ((_proc17674_ _hd1764317684_))
                                           (##structure
                                            gx#macro-expander::t
                                            _proc17674_))
                                         (_E1763717652_))))
                               (_try-match1763617660_))))))))))
           (if (##pair? _bind1761717624_)
               (let ((_hd1762117699_ (##car _bind1761717624_))
                     (_tl1762217701_ (##cdr _bind1761717624_)))
                 (let* ((_id17704_ _hd1762117699_)
                        (_rest17706_ _tl1762217701_))
                   (_K1762017696_ _rest17706_ _id17704_)))
               (_E1761917628_))))
       _bindings17614_)))
  (define gx#expander-context::bind-core-macro-expanders!__0
    (lambda (_self17711_)
      (let ((_bindings17713_ gx#*core-macro-expanders*))
        (gx#expander-context::bind-core-macro-expanders!__%
         _self17711_
         _bindings17713_))))
  (define gx#expander-context::bind-core-macro-expanders!
    (lambda _g18306_
      (let ((_g18305_ (length _g18306_)))
        (cond ((##fx= _g18305_ 1)
               (apply gx#expander-context::bind-core-macro-expanders!__0
                      _g18306_))
              ((##fx= _g18305_ 2)
               (apply gx#expander-context::bind-core-macro-expanders!__%
                      _g18306_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#expander-context::bind-core-macro-expanders!
                _g18306_))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self17394_)
      (letrec ((_linux-variant?17396_
                (lambda (_sys-type17458_)
                  (let* ((_g1745917467_
                          (string-split (symbol->string _sys-type17458_) '#\-))
                         (_else1746117475_ (lambda () '#f))
                         (_K1746317480_
                          (lambda (_rest17478_) (not (null? _rest17478_)))))
                    (if (##pair? _g1745917467_)
                        (let ((_hd1746417483_ (##car _g1745917467_))
                              (_tl1746517485_ (##cdr _g1745917467_)))
                          (if (equal? _hd1746417483_ '"linux")
                              (let ((_rest17488_ _tl1746517485_))
                                (_K1746317480_ _rest17488_))
                              (_else1746117475_)))
                        (_else1746117475_)))))
               (_bsd-variant17397_
                (lambda (_sys-type17454_)
                  (let ((_sys-prefix17456_
                         (list->string
                          (filter char-alphabetic?
                                  (string->list
                                   (symbol->string _sys-type17454_))))))
                    (if (member _sys-prefix17456_
                                (cons '"openbsd"
                                      (cons '"netbsd"
                                            (cons '"freebsd"
                                                  (cons '"darwin" '())))))
                        _sys-prefix17456_
                        '#f)))))
        (gx#core-bind-feature!__% 'gerbil '#f '0 _self17394_)
        (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self17394_)
        (let* ((_g1739817410_ (system-type))
               (_else1740017418_ (lambda () '#!void))
               (_K1740217430_
                (lambda (_sys-type17421_ _sys-vendor17422_ _sys-cpu17423_)
                  (gx#core-bind-feature!__% _sys-cpu17423_ '#f '0 _self17394_)
                  (gx#core-bind-feature!__% _sys-type17421_ '#f '0 _self17394_)
                  (if (_linux-variant?17396_ _sys-type17421_)
                      (gx#core-bind-feature!__%
                       (string->symbol '"linux")
                       '#f
                       '0
                       _self17394_)
                      (let ((_$e17425_ (_bsd-variant17397_ _sys-type17421_)))
                        (if _$e17425_
                            ((lambda (_sys-prefix17428_)
                               (gx#core-bind-feature!__%
                                (string->symbol '"bsd")
                                '#f
                                '0
                                _self17394_)
                               (gx#core-bind-feature!__%
                                (string->symbol _sys-prefix17428_)
                                '#f
                                '0
                                _self17394_))
                             _$e17425_)
                            '#!void))))))
          (if (##pair? _g1739817410_)
              (let ((_hd1740317433_ (##car _g1739817410_))
                    (_tl1740417435_ (##cdr _g1739817410_)))
                (let ((_sys-cpu17438_ _hd1740317433_))
                  (if (##pair? _tl1740417435_)
                      (let ((_hd1740517440_ (##car _tl1740417435_))
                            (_tl1740617442_ (##cdr _tl1740417435_)))
                        (let ((_sys-vendor17445_ _hd1740517440_))
                          (if (##pair? _tl1740617442_)
                              (let ((_hd1740717447_ (##car _tl1740617442_))
                                    (_tl1740817449_ (##cdr _tl1740617442_)))
                                (let ((_sys-type17452_ _hd1740717447_))
                                  (if (##null? _tl1740817449_)
                                      (_K1740217430_
                                       _sys-type17452_
                                       _sys-vendor17445_
                                       _sys-cpu17438_)
                                      '#!void)))
                              '#!void)))
                      '#!void)))
              '#!void))
        (if (gerbil-runtime-smp?)
            (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self17394_)
            '#!void))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
