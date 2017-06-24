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
                                            (cons '#f '()))))
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
    (define gx#root-context:::init!__opt-lambda13049
      (lambda (_self13051_ _bind?13052_)
        (begin
          (struct-instance-init! _self13051_ 'root (make-hash-table-eq))
          (if _bind?13052_
              (begin
                (call-method _self13051_ 'bind-core-syntax-expanders!)
                (call-method _self13051_ 'bind-core-macro-expanders!)
                (call-method _self13051_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self13057_)
          (let ((_bind?13059_ '#t))
            (gx#root-context:::init!__opt-lambda13049
             _self13057_
             _bind?13059_))))
      (define gx#root-context:::init!
        (lambda _g13065_
          (let ((_g13064_ (length _g13065_)))
            (cond ((fx= _g13064_ 1)
                   (apply gx#root-context:::init!__0 _g13065_))
                  ((fx= _g13064_ 2)
                   (apply gx#root-context:::init!__opt-lambda13049 _g13065_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g13065_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda13027
      (lambda (_self13029_ _super13030_)
        (let ((_super13038_
               (let ((_$e13032_ _super13030_))
                 (if _$e13032_
                     _$e13032_
                     (let ((_$e13035_ (gx#core-context-root__0)))
                       (if _$e13035_
                           _$e13035_
                           (let ((__obj13063
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj13063)
                               __obj13063))))))))
          (struct-instance-init!
           _self13029_
           'top
           (make-hash-table-eq)
           _super13038_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self13043_)
          (let ((_super13045_ '#f))
            (gx#top-context:::init!__opt-lambda13027
             _self13043_
             _super13045_))))
      (define gx#top-context:::init!
        (lambda _g13067_
          (let ((_g13066_ (length _g13067_)))
            (cond ((fx= _g13066_ 1) (apply gx#top-context:::init!__0 _g13067_))
                  ((fx= _g13066_ 2)
                   (apply gx#top-context:::init!__opt-lambda13027 _g13067_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g13067_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12880
      (lambda (_self12882_ _bindings12883_)
        (for-each
         (lambda (_bind12885_)
           (let ((_bind1288612893_ _bind12885_))
             (let ((_E1288812897_
                    (lambda ()
                      (error '"No clause matching" _bind1288612893_))))
               (let ((_K1288913006_
                      (lambda (_rest12900_ _id12901_)
                        (gx#core-context-put!
                         _self12882_
                         _id12901_
                         (##structure
                          gx#syntax-binding::t
                          _id12901_
                          _id12901_
                          '#f
                          (let ((_rest1290212913_ _rest12900_))
                            (let ((_E1290412917_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1290212913_))))
                              (let ((_K1290512982_
                                     (lambda (_compiler12920_
                                              _expander12921_
                                              _key12922_)
                                       ((let ((_key1292312936_ _key12922_))
                                          (let ((_E1292912940_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1292312936_))))
                                            (let ((_try-match1292812948_
                                                   (lambda ()
                                                     (let ((_K1293012945_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1292312936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1293012945_)
                   (_E1292912940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1292712956_
                                                     (lambda ()
                                                       (let ((_K1293112953_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1292312936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1293112953_)
                     (_try-match1292812948_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1292612964_
                                                       (lambda ()
                                                         (let ((_K1293212961_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1292312936_ 'define:)
                       (_K1293212961_)
                       (_try-match1292712956_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1292512972_
                                                         (lambda ()
                                                           (let ((_K1293312969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1292312936_ 'module:)
                         (_K1293312969_)
                         (_try-match1292612964_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1293412976_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1292312936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1293412976_)
                  (_try-match1292512972_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12921_
                                        _id12901_
                                        (let ((_$e12979_ _compiler12920_))
                                          (if _$e12979_
                                              _$e12979_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1290212913_)
                                    (let ((_hd1290612985_
                                           (##car _rest1290212913_))
                                          (_tl1290712987_
                                           (##cdr _rest1290212913_)))
                                      (let ((_key12990_ _hd1290612985_))
                                        (if (##pair? _tl1290712987_)
                                            (let ((_hd1290812992_
                                                   (##car _tl1290712987_))
                                                  (_tl1290912994_
                                                   (##cdr _tl1290712987_)))
                                              (let ((_expander12997_
                                                     _hd1290812992_))
                                                (if (##pair? _tl1290912994_)
                                                    (let ((_hd1291012999_
                                                           (##car _tl1290912994_))
                                                          (_tl1291113001_
                                                           (##cdr _tl1290912994_)))
                                                      (let ((_compiler13004_
                                                             _hd1291012999_))
                                                        (if (##null? _tl1291113001_)
                                                            (_K1290512982_
                                                             _compiler13004_
                                                             _expander12997_
                                                             _key12990_)
                                                            (_E1290412917_))))
                                                    (_E1290412917_))))
                                            (_E1290412917_))))
                                    (_E1290412917_))))))))))
                 (if (##pair? _bind1288612893_)
                     (let ((_hd1289013009_ (##car _bind1288612893_))
                           (_tl1289113011_ (##cdr _bind1288612893_)))
                       (let ((_id13014_ _hd1289013009_))
                         (let ((_rest13016_ _tl1289113011_))
                           (_K1288913006_ _rest13016_ _id13014_))))
                     (_E1288812897_))))))
         _bindings12883_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self13021_)
          (let ((_bindings13023_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12880
             _self13021_
             _bindings13023_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g13069_
          (let ((_g13068_ (length _g13069_)))
            (cond ((fx= _g13068_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g13069_))
                  ((fx= _g13068_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12880
                          _g13069_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g13069_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12774
      (lambda (_self12776_ _bindings12777_)
        (for-each
         (lambda (_bind12779_)
           (let ((_bind1278012787_ _bind12779_))
             (let ((_E1278212791_
                    (lambda ()
                      (error '"No clause matching" _bind1278012787_))))
               (let ((_K1278312859_
                      (lambda (_rest12794_ _id12795_)
                        (gx#core-context-put!
                         _self12776_
                         _id12795_
                         (##structure
                          gx#syntax-binding::t
                          _id12795_
                          _id12795_
                          '#f
                          (let ((_rest1279612811_ _rest12794_))
                            (let ((_E1280012815_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1279612811_))))
                              (let ((_try-match1279912823_
                                     (lambda ()
                                       (let ((_K1280112820_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12795_))))
                                         (if (##null? _rest1279612811_)
                                             (_K1280112820_)
                                             (_E1280012815_))))))
                                (let ((_try-match1279812839_
                                       (lambda ()
                                         (let ((_K1280212829_
                                                (lambda (_proc12827_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12827_))))
                                           (if (##pair? _rest1279612811_)
                                               (let ((_hd1280312832_
                                                      (##car _rest1279612811_))
                                                     (_tl1280412834_
                                                      (##cdr _rest1279612811_)))
                                                 (let ((_proc12837_
                                                        _hd1280312832_))
                                                   (if (##null? _tl1280412834_)
                                                       (_K1280212829_
                                                        _proc12837_)
                                                       (_try-match1279912823_))))
                                               (_try-match1279912823_))))))
                                  (let ((_K1280512844_
                                         (lambda (_core-id12842_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12842_))))
                                    (if (##pair? _rest1279612811_)
                                        (let ((_hd1280612847_
                                               (##car _rest1279612811_))
                                              (_tl1280712849_
                                               (##cdr _rest1279612811_)))
                                          (if (##eq? _hd1280612847_ '=>)
                                              (if (##pair? _tl1280712849_)
                                                  (let ((_hd1280812852_
                                                         (##car _tl1280712849_))
                                                        (_tl1280912854_
                                                         (##cdr _tl1280712849_)))
                                                    (let ((_core-id12857_
                                                           _hd1280812852_))
                                                      (if (##null? _tl1280912854_)
                                                          (_K1280512844_
                                                           _core-id12857_)
                                                          (_try-match1279812839_))))
                                                  (_try-match1279812839_))
                                              (_try-match1279812839_)))
                                        (_try-match1279812839_))))))))))))
                 (if (##pair? _bind1278012787_)
                     (let ((_hd1278412862_ (##car _bind1278012787_))
                           (_tl1278512864_ (##cdr _bind1278012787_)))
                       (let ((_id12867_ _hd1278412862_))
                         (let ((_rest12869_ _tl1278512864_))
                           (_K1278312859_ _rest12869_ _id12867_))))
                     (_E1278212791_))))))
         _bindings12777_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12874_)
          (let ((_bindings12876_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12774
             _self12874_
             _bindings12876_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g13071_
          (let ((_g13070_ (length _g13071_)))
            (cond ((fx= _g13070_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g13071_))
                  ((fx= _g13070_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12774
                          _g13071_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g13071_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self12689_)
      (let ((_linux-variant?12691_
             (lambda (_sys-type12743_)
               (let ((_g1274412752_
                      (string-split (symbol->string _sys-type12743_) '#\-)))
                 (let ((_E1274712756_
                        (lambda ()
                          (error '"No clause matching" _g1274412752_))))
                   (let ((_else1274612760_ (lambda () '#f)))
                     (let ((_K1274812765_
                            (lambda (_rest12763_) (not (null? _rest12763_)))))
                       (if (##pair? _g1274412752_)
                           (let ((_hd1274912768_ (##car _g1274412752_))
                                 (_tl1275012770_ (##cdr _g1274412752_)))
                             (if (equal? _hd1274912768_ '"linux")
                                 (let ((_rest12773_ _tl1275012770_))
                                   (_K1274812765_ _rest12773_))
                                 (_else1274612760_)))
                           (_else1274612760_)))))))))
        (begin
          (gx#core-bind-feature!__opt-lambda9128 'gerbil '#f '0 _self12689_)
          (gx#core-bind-feature!__opt-lambda9128
           (gerbil-system)
           '#f
           '0
           _self12689_)
          (let ((_g1269212704_ (system-type)))
            (let ((_E1269512708_
                   (lambda () (error '"No clause matching" _g1269212704_))))
              (let ((_else1269412712_ (lambda () '#!void)))
                (let ((_K1269612719_
                       (lambda (_sys-type12715_
                                _sys-vendor12716_
                                _sys-cpu12717_)
                         (begin
                           (gx#core-bind-feature!__opt-lambda9128
                            _sys-cpu12717_
                            '#f
                            '0
                            _self12689_)
                           (gx#core-bind-feature!__opt-lambda9128
                            _sys-type12715_
                            '#f
                            '0
                            _self12689_)
                           (if (_linux-variant?12691_ _sys-type12715_)
                               (gx#core-bind-feature!__opt-lambda9128
                                'linux
                                '#f
                                '0
                                _self12689_)
                               '#!void)))))
                  (if (##pair? _g1269212704_)
                      (let ((_hd1269712722_ (##car _g1269212704_))
                            (_tl1269812724_ (##cdr _g1269212704_)))
                        (let ((_sys-cpu12727_ _hd1269712722_))
                          (if (##pair? _tl1269812724_)
                              (let ((_hd1269912729_ (##car _tl1269812724_))
                                    (_tl1270012731_ (##cdr _tl1269812724_)))
                                (let ((_sys-vendor12734_ _hd1269912729_))
                                  (if (##pair? _tl1270012731_)
                                      (let ((_hd1270112736_
                                             (##car _tl1270012731_))
                                            (_tl1270212738_
                                             (##cdr _tl1270012731_)))
                                        (let ((_sys-type12741_ _hd1270112736_))
                                          (if (##null? _tl1270212738_)
                                              (_K1269612719_
                                               _sys-type12741_
                                               _sys-vendor12734_
                                               _sys-cpu12727_)
                                              '#!void)))
                                      '#!void)))
                              '#!void)))
                      '#!void)))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
