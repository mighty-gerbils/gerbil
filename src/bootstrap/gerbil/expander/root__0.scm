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
  (begin
    (define gx#root-context:::init!__%
      (lambda (_self18305_ _bind?18306_)
        (begin
          (struct-instance-init! _self18305_ 'root (make-table 'test: eq?))
          (if _bind?18306_
              (begin
                (call-method _self18305_ 'bind-core-syntax-expanders!)
                (call-method _self18305_ 'bind-core-macro-expanders!)
                (call-method _self18305_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self18311_)
          (let ((_bind?18313_ '#t))
            (gx#root-context:::init!__% _self18311_ _bind?18313_))))
      (define gx#root-context:::init!
        (lambda _g18351_
          (let ((_g18350_ (length _g18351_)))
            (cond ((##fx= _g18350_ 1)
                   (apply gx#root-context:::init!__0 _g18351_))
                  ((##fx= _g18350_ 2)
                   (apply gx#root-context:::init!__% _g18351_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g18351_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__%
      (lambda (_self18161_ _super18162_)
        (let ((_super18170_
               (let ((_$e18164_ _super18162_))
                 (if _$e18164_
                     _$e18164_
                     (let ((_$e18167_ (gx#core-context-root__0)))
                       (if _$e18167_
                           _$e18167_
                           (let ((__obj18349
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj18349)
                               __obj18349))))))))
          (struct-instance-init!
           _self18161_
           'top
           (make-table 'test: eq?)
           _super18170_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self18175_)
          (let ((_super18177_ '#f))
            (gx#top-context:::init!__% _self18175_ _super18177_))))
      (define gx#top-context:::init!
        (lambda _g18353_
          (let ((_g18352_ (length _g18353_)))
            (cond ((##fx= _g18352_ 1)
                   (apply gx#top-context:::init!__0 _g18353_))
                  ((##fx= _g18352_ 2)
                   (apply gx#top-context:::init!__% _g18353_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g18353_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self17892_ _bindings17893_)
        (for-each
         (lambda (_bind17895_)
           (let* ((_bind1789617903_ _bind17895_)
                  (_E1789817907_
                   (lambda () (error '"No clause matching" _bind1789617903_)))
                  (_K1789918016_
                   (lambda (_rest17910_ _id17911_)
                     (gx#core-context-put!
                      _self17892_
                      _id17911_
                      (##structure
                       gx#syntax-binding::t
                       _id17911_
                       _id17911_
                       '#f
                       (let* ((_rest1791217923_ _rest17910_)
                              (_E1791417927_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1791217923_)))
                              (_K1791517992_
                               (lambda (_compiler17930_
                                        _expander17931_
                                        _key17932_)
                                 ((let* ((_key1793317946_ _key17932_)
                                         (_E1793917950_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1793317946_))))
                                    (let ((_K1794417986_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K1794317979_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K1794217971_
                                           (lambda () gx#make-definition-form))
                                          (_K1794117963_
                                           (lambda () gx#make-special-form))
                                          (_K1794017955_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match1793817958_
                                              (lambda ()
                                                (if (##eq? _key1793317946_
                                                           'expr:)
                                                    (_K1794017955_)
                                                    (_E1793917950_))))
                                             (_try-match1793717966_
                                              (lambda ()
                                                (if (##eq? _key1793317946_
                                                           'special:)
                                                    (_K1794117963_)
                                                    (_try-match1793817958_))))
                                             (_try-match1793617974_
                                              (lambda ()
                                                (if (##eq? _key1793317946_
                                                           'define:)
                                                    (_K1794217971_)
                                                    (_try-match1793717966_))))
                                             (_try-match1793517982_
                                              (lambda ()
                                                (if (##eq? _key1793317946_
                                                           'module:)
                                                    (_K1794317979_)
                                                    (_try-match1793617974_)))))
                                        (if (##eq? _key1793317946_ 'top:)
                                            (_K1794417986_)
                                            (_try-match1793517982_)))))
                                  _expander17931_
                                  _id17911_
                                  (let ((_$e17989_ _compiler17930_))
                                    (if _$e17989_
                                        _$e17989_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1791217923_)
                             (let ((_hd1791617995_ (##car _rest1791217923_))
                                   (_tl1791717997_ (##cdr _rest1791217923_)))
                               (let ((_key18000_ _hd1791617995_))
                                 (if (##pair? _tl1791717997_)
                                     (let ((_hd1791818002_
                                            (##car _tl1791717997_))
                                           (_tl1791918004_
                                            (##cdr _tl1791717997_)))
                                       (let ((_expander18007_ _hd1791818002_))
                                         (if (##pair? _tl1791918004_)
                                             (let ((_hd1792018009_
                                                    (##car _tl1791918004_))
                                                   (_tl1792118011_
                                                    (##cdr _tl1791918004_)))
                                               (let ((_compiler18014_
                                                      _hd1792018009_))
                                                 (if (##null? _tl1792118011_)
                                                     (_K1791517992_
                                                      _compiler18014_
                                                      _expander18007_
                                                      _key18000_)
                                                     (_E1791417927_))))
                                             (_E1791417927_))))
                                     (_E1791417927_))))
                             (_E1791417927_))))))))
             (if (##pair? _bind1789617903_)
                 (let ((_hd1790018019_ (##car _bind1789617903_))
                       (_tl1790118021_ (##cdr _bind1789617903_)))
                   (let* ((_id18024_ _hd1790018019_)
                          (_rest18026_ _tl1790118021_))
                     (_K1789918016_ _rest18026_ _id18024_)))
                 (_E1789817907_))))
         _bindings17893_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self18031_)
          (let ((_bindings18033_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__%
             _self18031_
             _bindings18033_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g18355_
          (let ((_g18354_ (length _g18355_)))
            (cond ((##fx= _g18354_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g18355_))
                  ((##fx= _g18354_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__%
                          _g18355_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g18355_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self17664_ _bindings17665_)
        (for-each
         (lambda (_bind17667_)
           (let* ((_bind1766817675_ _bind17667_)
                  (_E1767017679_
                   (lambda () (error '"No clause matching" _bind1766817675_)))
                  (_K1767117747_
                   (lambda (_rest17682_ _id17683_)
                     (gx#core-context-put!
                      _self17664_
                      _id17683_
                      (##structure
                       gx#syntax-binding::t
                       _id17683_
                       _id17683_
                       '#f
                       (let* ((_rest1768417699_ _rest17682_)
                              (_E1768817703_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1768417699_))))
                         (let ((_K1769317732_
                                (lambda (_core-id17730_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id17730_)))
                               (_K1769017717_
                                (lambda (_proc17715_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc17715_)))
                               (_K1768917708_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id17683_))))
                           (let ((_try-match1768717711_
                                  (lambda ()
                                    (if (##null? _rest1768417699_)
                                        (_K1768917708_)
                                        (_E1768817703_)))))
                             (if (##pair? _rest1768417699_)
                                 (let ((_tl1769517737_
                                        (##cdr _rest1768417699_))
                                       (_hd1769417735_
                                        (##car _rest1768417699_)))
                                   (if (##eq? _hd1769417735_ '=>)
                                       (if (##pair? _tl1769517737_)
                                           (let ((_tl1769717742_
                                                  (##cdr _tl1769517737_))
                                                 (_hd1769617740_
                                                  (##car _tl1769517737_)))
                                             (if (##null? _tl1769717742_)
                                                 (let ((_core-id17745_
                                                        _hd1769617740_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id17745_))
                                                 (_E1768817703_)))
                                           (if (##null? _tl1769517737_)
                                               (let ((_proc17725_
                                                      _hd1769417735_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc17725_))
                                               (_E1768817703_)))
                                       (if (##null? _tl1769517737_)
                                           (let ((_proc17725_ _hd1769417735_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc17725_))
                                           (_E1768817703_))))
                                 (_try-match1768717711_))))))))))
             (if (##pair? _bind1766817675_)
                 (let ((_hd1767217750_ (##car _bind1766817675_))
                       (_tl1767317752_ (##cdr _bind1766817675_)))
                   (let* ((_id17755_ _hd1767217750_)
                          (_rest17757_ _tl1767317752_))
                     (_K1767117747_ _rest17757_ _id17755_)))
                 (_E1767017679_))))
         _bindings17665_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self17762_)
          (let ((_bindings17764_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__%
             _self17762_
             _bindings17764_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g18357_
          (let ((_g18356_ (length _g18357_)))
            (cond ((##fx= _g18356_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g18357_))
                  ((##fx= _g18356_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__%
                          _g18357_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g18357_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self17455_)
      (letrec ((_linux-variant?17457_
                (lambda (_sys-type17509_)
                  (let* ((_g1751017518_
                          (string-split (symbol->string _sys-type17509_) '#\-))
                         (_else1751217526_ (lambda () '#f))
                         (_K1751417531_
                          (lambda (_rest17529_) (not (null? _rest17529_)))))
                    (if (##pair? _g1751017518_)
                        (let ((_hd1751517534_ (##car _g1751017518_))
                              (_tl1751617536_ (##cdr _g1751017518_)))
                          (if (equal? _hd1751517534_ '"linux")
                              (let ((_rest17539_ _tl1751617536_))
                                (_K1751417531_ _rest17539_))
                              (_else1751217526_)))
                        (_else1751217526_))))))
        (begin
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self17455_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self17455_)
          (let* ((_g1745817470_ (system-type))
                 (_else1746017478_ (lambda () '#!void))
                 (_K1746217485_
                  (lambda (_sys-type17481_ _sys-vendor17482_ _sys-cpu17483_)
                    (begin
                      (gx#core-bind-feature!__%
                       _sys-cpu17483_
                       '#f
                       '0
                       _self17455_)
                      (gx#core-bind-feature!__%
                       _sys-type17481_
                       '#f
                       '0
                       _self17455_)
                      (if (_linux-variant?17457_ _sys-type17481_)
                          (gx#core-bind-feature!__% 'linux '#f '0 _self17455_)
                          '#!void)))))
            (if (##pair? _g1745817470_)
                (let ((_hd1746317488_ (##car _g1745817470_))
                      (_tl1746417490_ (##cdr _g1745817470_)))
                  (let ((_sys-cpu17493_ _hd1746317488_))
                    (if (##pair? _tl1746417490_)
                        (let ((_hd1746517495_ (##car _tl1746417490_))
                              (_tl1746617497_ (##cdr _tl1746417490_)))
                          (let ((_sys-vendor17500_ _hd1746517495_))
                            (if (##pair? _tl1746617497_)
                                (let ((_hd1746717502_ (##car _tl1746617497_))
                                      (_tl1746817504_ (##cdr _tl1746617497_)))
                                  (let ((_sys-type17507_ _hd1746717502_))
                                    (if (##null? _tl1746817504_)
                                        (_K1746217485_
                                         _sys-type17507_
                                         _sys-vendor17500_
                                         _sys-cpu17493_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self17455_)
              '#!void)))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
