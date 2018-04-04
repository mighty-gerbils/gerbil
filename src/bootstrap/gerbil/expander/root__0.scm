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
      (lambda (_self18334_ _bind?18335_)
        (begin
          (struct-instance-init! _self18334_ 'root (make-table 'test: eq?))
          (if _bind?18335_
              (begin
                (call-method _self18334_ 'bind-core-syntax-expanders!)
                (call-method _self18334_ 'bind-core-macro-expanders!)
                (call-method _self18334_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self18340_)
          (let ((_bind?18342_ '#t))
            (gx#root-context:::init!__% _self18340_ _bind?18342_))))
      (define gx#root-context:::init!
        (lambda _g18380_
          (let ((_g18379_ (length _g18380_)))
            (cond ((##fx= _g18379_ 1)
                   (apply gx#root-context:::init!__0 _g18380_))
                  ((##fx= _g18379_ 2)
                   (apply gx#root-context:::init!__% _g18380_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g18380_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__%
      (lambda (_self18190_ _super18191_)
        (let ((_super18199_
               (let ((_$e18193_ _super18191_))
                 (if _$e18193_
                     _$e18193_
                     (let ((_$e18196_ (gx#core-context-root__0)))
                       (if _$e18196_
                           _$e18196_
                           (let ((__obj18378
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj18378)
                               __obj18378))))))))
          (struct-instance-init!
           _self18190_
           'top
           (make-table 'test: eq?)
           _super18199_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self18204_)
          (let ((_super18206_ '#f))
            (gx#top-context:::init!__% _self18204_ _super18206_))))
      (define gx#top-context:::init!
        (lambda _g18382_
          (let ((_g18381_ (length _g18382_)))
            (cond ((##fx= _g18381_ 1)
                   (apply gx#top-context:::init!__0 _g18382_))
                  ((##fx= _g18381_ 2)
                   (apply gx#top-context:::init!__% _g18382_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g18382_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self17921_ _bindings17922_)
        (for-each
         (lambda (_bind17924_)
           (let* ((_bind1792517932_ _bind17924_)
                  (_E1792717936_
                   (lambda () (error '"No clause matching" _bind1792517932_)))
                  (_K1792818045_
                   (lambda (_rest17939_ _id17940_)
                     (gx#core-context-put!
                      _self17921_
                      _id17940_
                      (##structure
                       gx#syntax-binding::t
                       _id17940_
                       _id17940_
                       '#f
                       (let* ((_rest1794117952_ _rest17939_)
                              (_E1794317956_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1794117952_)))
                              (_K1794418021_
                               (lambda (_compiler17959_
                                        _expander17960_
                                        _key17961_)
                                 ((let* ((_key1796217975_ _key17961_)
                                         (_E1796817979_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1796217975_))))
                                    (let ((_K1797318015_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K1797218008_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K1797118000_
                                           (lambda () gx#make-definition-form))
                                          (_K1797017992_
                                           (lambda () gx#make-special-form))
                                          (_K1796917984_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match1796717987_
                                              (lambda ()
                                                (if (##eq? _key1796217975_
                                                           'expr:)
                                                    (_K1796917984_)
                                                    (_E1796817979_))))
                                             (_try-match1796617995_
                                              (lambda ()
                                                (if (##eq? _key1796217975_
                                                           'special:)
                                                    (_K1797017992_)
                                                    (_try-match1796717987_))))
                                             (_try-match1796518003_
                                              (lambda ()
                                                (if (##eq? _key1796217975_
                                                           'define:)
                                                    (_K1797118000_)
                                                    (_try-match1796617995_))))
                                             (_try-match1796418011_
                                              (lambda ()
                                                (if (##eq? _key1796217975_
                                                           'module:)
                                                    (_K1797218008_)
                                                    (_try-match1796518003_)))))
                                        (if (##eq? _key1796217975_ 'top:)
                                            (_K1797318015_)
                                            (_try-match1796418011_)))))
                                  _expander17960_
                                  _id17940_
                                  (let ((_$e18018_ _compiler17959_))
                                    (if _$e18018_
                                        _$e18018_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1794117952_)
                             (let ((_hd1794518024_ (##car _rest1794117952_))
                                   (_tl1794618026_ (##cdr _rest1794117952_)))
                               (let ((_key18029_ _hd1794518024_))
                                 (if (##pair? _tl1794618026_)
                                     (let ((_hd1794718031_
                                            (##car _tl1794618026_))
                                           (_tl1794818033_
                                            (##cdr _tl1794618026_)))
                                       (let ((_expander18036_ _hd1794718031_))
                                         (if (##pair? _tl1794818033_)
                                             (let ((_hd1794918038_
                                                    (##car _tl1794818033_))
                                                   (_tl1795018040_
                                                    (##cdr _tl1794818033_)))
                                               (let ((_compiler18043_
                                                      _hd1794918038_))
                                                 (if (##null? _tl1795018040_)
                                                     (_K1794418021_
                                                      _compiler18043_
                                                      _expander18036_
                                                      _key18029_)
                                                     (_E1794317956_))))
                                             (_E1794317956_))))
                                     (_E1794317956_))))
                             (_E1794317956_))))))))
             (if (##pair? _bind1792517932_)
                 (let ((_hd1792918048_ (##car _bind1792517932_))
                       (_tl1793018050_ (##cdr _bind1792517932_)))
                   (let* ((_id18053_ _hd1792918048_)
                          (_rest18055_ _tl1793018050_))
                     (_K1792818045_ _rest18055_ _id18053_)))
                 (_E1792717936_))))
         _bindings17922_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self18060_)
          (let ((_bindings18062_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__%
             _self18060_
             _bindings18062_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g18384_
          (let ((_g18383_ (length _g18384_)))
            (cond ((##fx= _g18383_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g18384_))
                  ((##fx= _g18383_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__%
                          _g18384_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g18384_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self17693_ _bindings17694_)
        (for-each
         (lambda (_bind17696_)
           (let* ((_bind1769717704_ _bind17696_)
                  (_E1769917708_
                   (lambda () (error '"No clause matching" _bind1769717704_)))
                  (_K1770017776_
                   (lambda (_rest17711_ _id17712_)
                     (gx#core-context-put!
                      _self17693_
                      _id17712_
                      (##structure
                       gx#syntax-binding::t
                       _id17712_
                       _id17712_
                       '#f
                       (let* ((_rest1771317728_ _rest17711_)
                              (_E1771717732_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1771317728_))))
                         (let ((_K1772217761_
                                (lambda (_core-id17759_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id17759_)))
                               (_K1771917746_
                                (lambda (_proc17744_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc17744_)))
                               (_K1771817737_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id17712_))))
                           (let ((_try-match1771617740_
                                  (lambda ()
                                    (if (##null? _rest1771317728_)
                                        (_K1771817737_)
                                        (_E1771717732_)))))
                             (if (##pair? _rest1771317728_)
                                 (let ((_tl1772417766_
                                        (##cdr _rest1771317728_))
                                       (_hd1772317764_
                                        (##car _rest1771317728_)))
                                   (if (##eq? _hd1772317764_ '=>)
                                       (if (##pair? _tl1772417766_)
                                           (let ((_tl1772617771_
                                                  (##cdr _tl1772417766_))
                                                 (_hd1772517769_
                                                  (##car _tl1772417766_)))
                                             (if (##null? _tl1772617771_)
                                                 (let ((_core-id17774_
                                                        _hd1772517769_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id17774_))
                                                 (_E1771717732_)))
                                           (if (##null? _tl1772417766_)
                                               (let ((_proc17754_
                                                      _hd1772317764_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc17754_))
                                               (_E1771717732_)))
                                       (if (##null? _tl1772417766_)
                                           (let ((_proc17754_ _hd1772317764_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc17754_))
                                           (_E1771717732_))))
                                 (_try-match1771617740_))))))))))
             (if (##pair? _bind1769717704_)
                 (let ((_hd1770117779_ (##car _bind1769717704_))
                       (_tl1770217781_ (##cdr _bind1769717704_)))
                   (let* ((_id17784_ _hd1770117779_)
                          (_rest17786_ _tl1770217781_))
                     (_K1770017776_ _rest17786_ _id17784_)))
                 (_E1769917708_))))
         _bindings17694_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self17791_)
          (let ((_bindings17793_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__%
             _self17791_
             _bindings17793_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g18386_
          (let ((_g18385_ (length _g18386_)))
            (cond ((##fx= _g18385_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g18386_))
                  ((##fx= _g18385_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__%
                          _g18386_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g18386_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self17484_)
      (letrec ((_linux-variant?17486_
                (lambda (_sys-type17538_)
                  (let* ((_g1753917547_
                          (string-split (symbol->string _sys-type17538_) '#\-))
                         (_else1754117555_ (lambda () '#f))
                         (_K1754317560_
                          (lambda (_rest17558_) (not (null? _rest17558_)))))
                    (if (##pair? _g1753917547_)
                        (let ((_hd1754417563_ (##car _g1753917547_))
                              (_tl1754517565_ (##cdr _g1753917547_)))
                          (if (equal? _hd1754417563_ '"linux")
                              (let ((_rest17568_ _tl1754517565_))
                                (_K1754317560_ _rest17568_))
                              (_else1754117555_)))
                        (_else1754117555_))))))
        (begin
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self17484_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self17484_)
          (let* ((_g1748717499_ (system-type))
                 (_else1748917507_ (lambda () '#!void))
                 (_K1749117514_
                  (lambda (_sys-type17510_ _sys-vendor17511_ _sys-cpu17512_)
                    (begin
                      (gx#core-bind-feature!__%
                       _sys-cpu17512_
                       '#f
                       '0
                       _self17484_)
                      (gx#core-bind-feature!__%
                       _sys-type17510_
                       '#f
                       '0
                       _self17484_)
                      (if (_linux-variant?17486_ _sys-type17510_)
                          (gx#core-bind-feature!__% 'linux '#f '0 _self17484_)
                          '#!void)))))
            (if (##pair? _g1748717499_)
                (let ((_hd1749217517_ (##car _g1748717499_))
                      (_tl1749317519_ (##cdr _g1748717499_)))
                  (let ((_sys-cpu17522_ _hd1749217517_))
                    (if (##pair? _tl1749317519_)
                        (let ((_hd1749417524_ (##car _tl1749317519_))
                              (_tl1749517526_ (##cdr _tl1749317519_)))
                          (let ((_sys-vendor17529_ _hd1749417524_))
                            (if (##pair? _tl1749517526_)
                                (let ((_hd1749617531_ (##car _tl1749517526_))
                                      (_tl1749717533_ (##cdr _tl1749517526_)))
                                  (let ((_sys-type17536_ _hd1749617531_))
                                    (if (##null? _tl1749717533_)
                                        (_K1749117514_
                                         _sys-type17536_
                                         _sys-vendor17529_
                                         _sys-cpu17522_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self17484_)
              '#!void)))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
