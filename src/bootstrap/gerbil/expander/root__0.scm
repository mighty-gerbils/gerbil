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
    (define gx#root-context:::init!__opt-lambda13047
      (lambda (_self13049_ _bind?13050_)
        (begin
          (struct-instance-init! _self13049_ 'root (make-hash-table-eq))
          (if _bind?13050_
              (begin
                (call-method _self13049_ 'bind-core-syntax-expanders!)
                (call-method _self13049_ 'bind-core-macro-expanders!)
                (call-method _self13049_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self13055_)
          (let ((_bind?13057_ '#t))
            (gx#root-context:::init!__opt-lambda13047
             _self13055_
             _bind?13057_))))
      (define gx#root-context:::init!
        (lambda _g13063_
          (let ((_g13062_ (length _g13063_)))
            (cond ((fx= _g13062_ 1)
                   (apply gx#root-context:::init!__0 _g13063_))
                  ((fx= _g13062_ 2)
                   (apply gx#root-context:::init!__opt-lambda13047 _g13063_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g13063_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda13025
      (lambda (_self13027_ _super13028_)
        (let ((_super13036_
               (let ((_$e13030_ _super13028_))
                 (if _$e13030_
                     _$e13030_
                     (let ((_$e13033_ (gx#core-context-root__0)))
                       (if _$e13033_
                           _$e13033_
                           (let ((__obj13061
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj13061)
                               __obj13061))))))))
          (struct-instance-init!
           _self13027_
           'top
           (make-hash-table-eq)
           _super13036_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self13041_)
          (let ((_super13043_ '#f))
            (gx#top-context:::init!__opt-lambda13025
             _self13041_
             _super13043_))))
      (define gx#top-context:::init!
        (lambda _g13065_
          (let ((_g13064_ (length _g13065_)))
            (cond ((fx= _g13064_ 1) (apply gx#top-context:::init!__0 _g13065_))
                  ((fx= _g13064_ 2)
                   (apply gx#top-context:::init!__opt-lambda13025 _g13065_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g13065_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12878
      (lambda (_self12880_ _bindings12881_)
        (for-each
         (lambda (_bind12883_)
           (let* ((_bind1288412891_ _bind12883_)
                  (_E1288612895_
                   (lambda () (error '"No clause matching" _bind1288412891_)))
                  (_K1288713004_
                   (lambda (_rest12898_ _id12899_)
                     (gx#core-context-put!
                      _self12880_
                      _id12899_
                      (##structure
                       gx#syntax-binding::t
                       _id12899_
                       _id12899_
                       '#f
                       (let* ((_rest1290012911_ _rest12898_)
                              (_E1290212915_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1290012911_)))
                              (_K1290312980_
                               (lambda (_compiler12918_
                                        _expander12919_
                                        _key12920_)
                                 ((let* ((_key1292112934_ _key12920_)
                                         (_E1292712938_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1292112934_)))
                                         (_try-match1292612946_
                                          (lambda ()
                                            (let ((_K1292812943_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1292112934_
                                                         'expr:)
                                                  (_K1292812943_)
                                                  (_E1292712938_)))))
                                         (_try-match1292512954_
                                          (lambda ()
                                            (let ((_K1292912951_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1292112934_
                                                         'special:)
                                                  (_K1292912951_)
                                                  (_try-match1292612946_)))))
                                         (_try-match1292412962_
                                          (lambda ()
                                            (let ((_K1293012959_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1292112934_
                                                         'define:)
                                                  (_K1293012959_)
                                                  (_try-match1292512954_)))))
                                         (_try-match1292312970_
                                          (lambda ()
                                            (let ((_K1293112967_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1292112934_
                                                         'module:)
                                                  (_K1293112967_)
                                                  (_try-match1292412962_)))))
                                         (_K1293212974_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1292112934_ 'top:)
                                        (_K1293212974_)
                                        (_try-match1292312970_)))
                                  _expander12919_
                                  _id12899_
                                  (let ((_$e12977_ _compiler12918_))
                                    (if _$e12977_
                                        _$e12977_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1290012911_)
                             (let ((_hd1290412983_ (##car _rest1290012911_))
                                   (_tl1290512985_ (##cdr _rest1290012911_)))
                               (let ((_key12988_ _hd1290412983_))
                                 (if (##pair? _tl1290512985_)
                                     (let ((_hd1290612990_
                                            (##car _tl1290512985_))
                                           (_tl1290712992_
                                            (##cdr _tl1290512985_)))
                                       (let ((_expander12995_ _hd1290612990_))
                                         (if (##pair? _tl1290712992_)
                                             (let ((_hd1290812997_
                                                    (##car _tl1290712992_))
                                                   (_tl1290912999_
                                                    (##cdr _tl1290712992_)))
                                               (let ((_compiler13002_
                                                      _hd1290812997_))
                                                 (if (##null? _tl1290912999_)
                                                     (_K1290312980_
                                                      _compiler13002_
                                                      _expander12995_
                                                      _key12988_)
                                                     (_E1290212915_))))
                                             (_E1290212915_))))
                                     (_E1290212915_))))
                             (_E1290212915_))))))))
             (if (##pair? _bind1288412891_)
                 (let ((_hd1288813007_ (##car _bind1288412891_))
                       (_tl1288913009_ (##cdr _bind1288412891_)))
                   (let* ((_id13012_ _hd1288813007_)
                          (_rest13014_ _tl1288913009_))
                     (_K1288713004_ _rest13014_ _id13012_)))
                 (_E1288612895_))))
         _bindings12881_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self13019_)
          (let ((_bindings13021_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12878
             _self13019_
             _bindings13021_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g13067_
          (let ((_g13066_ (length _g13067_)))
            (cond ((fx= _g13066_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g13067_))
                  ((fx= _g13066_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12878
                          _g13067_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g13067_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12772
      (lambda (_self12774_ _bindings12775_)
        (for-each
         (lambda (_bind12777_)
           (let* ((_bind1277812785_ _bind12777_)
                  (_E1278012789_
                   (lambda () (error '"No clause matching" _bind1277812785_)))
                  (_K1278112857_
                   (lambda (_rest12792_ _id12793_)
                     (gx#core-context-put!
                      _self12774_
                      _id12793_
                      (##structure
                       gx#syntax-binding::t
                       _id12793_
                       _id12793_
                       '#f
                       (let* ((_rest1279412809_ _rest12792_)
                              (_E1279812813_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1279412809_)))
                              (_try-match1279712821_
                               (lambda ()
                                 (let ((_K1279912818_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id12793_))))
                                   (if (##null? _rest1279412809_)
                                       (_K1279912818_)
                                       (_E1279812813_)))))
                              (_try-match1279612837_
                               (lambda ()
                                 (let ((_K1280012827_
                                        (lambda (_proc12825_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc12825_))))
                                   (if (##pair? _rest1279412809_)
                                       (let ((_hd1280112830_
                                              (##car _rest1279412809_))
                                             (_tl1280212832_
                                              (##cdr _rest1279412809_)))
                                         (let ((_proc12835_ _hd1280112830_))
                                           (if (##null? _tl1280212832_)
                                               (_K1280012827_ _proc12835_)
                                               (_try-match1279712821_))))
                                       (_try-match1279712821_)))))
                              (_K1280312842_
                               (lambda (_core-id12840_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id12840_))))
                         (if (##pair? _rest1279412809_)
                             (let ((_hd1280412845_ (##car _rest1279412809_))
                                   (_tl1280512847_ (##cdr _rest1279412809_)))
                               (if (##eq? _hd1280412845_ '=>)
                                   (if (##pair? _tl1280512847_)
                                       (let ((_hd1280612850_
                                              (##car _tl1280512847_))
                                             (_tl1280712852_
                                              (##cdr _tl1280512847_)))
                                         (let ((_core-id12855_ _hd1280612850_))
                                           (if (##null? _tl1280712852_)
                                               (_K1280312842_ _core-id12855_)
                                               (_try-match1279612837_))))
                                       (_try-match1279612837_))
                                   (_try-match1279612837_)))
                             (_try-match1279612837_))))))))
             (if (##pair? _bind1277812785_)
                 (let ((_hd1278212860_ (##car _bind1277812785_))
                       (_tl1278312862_ (##cdr _bind1277812785_)))
                   (let* ((_id12865_ _hd1278212860_)
                          (_rest12867_ _tl1278312862_))
                     (_K1278112857_ _rest12867_ _id12865_)))
                 (_E1278012789_))))
         _bindings12775_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12872_)
          (let ((_bindings12874_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12772
             _self12872_
             _bindings12874_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g13069_
          (let ((_g13068_ (length _g13069_)))
            (cond ((fx= _g13068_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g13069_))
                  ((fx= _g13068_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12772
                          _g13069_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g13069_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self12687_)
      (letrec ((_linux-variant?12689_
                (lambda (_sys-type12741_)
                  (let* ((_g1274212750_
                          (string-split (symbol->string _sys-type12741_) '#\-))
                         (_E1274512754_
                          (lambda ()
                            (error '"No clause matching" _g1274212750_)))
                         (_else1274412758_ (lambda () '#f))
                         (_K1274612763_
                          (lambda (_rest12761_) (not (null? _rest12761_)))))
                    (if (##pair? _g1274212750_)
                        (let ((_hd1274712766_ (##car _g1274212750_))
                              (_tl1274812768_ (##cdr _g1274212750_)))
                          (if (equal? _hd1274712766_ '"linux")
                              (let ((_rest12771_ _tl1274812768_))
                                (_K1274612763_ _rest12771_))
                              (_else1274412758_)))
                        (_else1274412758_))))))
        (begin
          (gx#core-bind-feature!__opt-lambda9126 'gerbil '#f '0 _self12687_)
          (gx#core-bind-feature!__opt-lambda9126
           (gerbil-system)
           '#f
           '0
           _self12687_)
          (let* ((_g1269012702_ (system-type))
                 (_E1269312706_
                  (lambda () (error '"No clause matching" _g1269012702_)))
                 (_else1269212710_ (lambda () '#!void))
                 (_K1269412717_
                  (lambda (_sys-type12713_ _sys-vendor12714_ _sys-cpu12715_)
                    (begin
                      (gx#core-bind-feature!__opt-lambda9126
                       _sys-cpu12715_
                       '#f
                       '0
                       _self12687_)
                      (gx#core-bind-feature!__opt-lambda9126
                       _sys-type12713_
                       '#f
                       '0
                       _self12687_)
                      (if (_linux-variant?12689_ _sys-type12713_)
                          (gx#core-bind-feature!__opt-lambda9126
                           'linux
                           '#f
                           '0
                           _self12687_)
                          '#!void)))))
            (if (##pair? _g1269012702_)
                (let ((_hd1269512720_ (##car _g1269012702_))
                      (_tl1269612722_ (##cdr _g1269012702_)))
                  (let ((_sys-cpu12725_ _hd1269512720_))
                    (if (##pair? _tl1269612722_)
                        (let ((_hd1269712727_ (##car _tl1269612722_))
                              (_tl1269812729_ (##cdr _tl1269612722_)))
                          (let ((_sys-vendor12732_ _hd1269712727_))
                            (if (##pair? _tl1269812729_)
                                (let ((_hd1269912734_ (##car _tl1269812729_))
                                      (_tl1270012736_ (##cdr _tl1269812729_)))
                                  (let ((_sys-type12739_ _hd1269912734_))
                                    (if (##null? _tl1270012736_)
                                        (_K1269412717_
                                         _sys-type12739_
                                         _sys-vendor12732_
                                         _sys-cpu12725_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
