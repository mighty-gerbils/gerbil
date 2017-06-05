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
                              (cons 'special:
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
    (define gx#root-context:::init!__opt-lambda13008
      (lambda (_self13010_ _bind?13011_)
        (begin
          (struct-instance-init! _self13010_ 'root (make-hash-table-eq))
          (if _bind?13011_
              (begin
                (call-method _self13010_ 'bind-core-syntax-expanders!)
                (call-method _self13010_ 'bind-core-macro-expanders!)
                (call-method _self13010_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self13016_)
          (let ((_bind?13018_ '#t))
            (gx#root-context:::init!__opt-lambda13008
             _self13016_
             _bind?13018_))))
      (define gx#root-context:::init!
        (lambda _g13024_
          (let ((_g13023_ (length _g13024_)))
            (cond ((fx= _g13023_ 1)
                   (apply gx#root-context:::init!__0 _g13024_))
                  ((fx= _g13023_ 2)
                   (apply gx#root-context:::init!__opt-lambda13008 _g13024_))
                  (else (error "No clause matching arguments" _g13024_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12986
      (lambda (_self12988_ _super12989_)
        (let ((_super12997_
               (let ((_$e12991_ _super12989_))
                 (if _$e12991_
                     _$e12991_
                     (let ((_$e12994_ (gx#core-context-root__0)))
                       (if _$e12994_
                           _$e12994_
                           (let ((__obj13022
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj13022)
                               __obj13022))))))))
          (struct-instance-init!
           _self12988_
           'top
           (make-hash-table-eq)
           _super12997_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self13002_)
          (let ((_super13004_ '#f))
            (gx#top-context:::init!__opt-lambda12986
             _self13002_
             _super13004_))))
      (define gx#top-context:::init!
        (lambda _g13026_
          (let ((_g13025_ (length _g13026_)))
            (cond ((fx= _g13025_ 1) (apply gx#top-context:::init!__0 _g13026_))
                  ((fx= _g13025_ 2)
                   (apply gx#top-context:::init!__opt-lambda12986 _g13026_))
                  (else (error "No clause matching arguments" _g13026_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12839
      (lambda (_self12841_ _bindings12842_)
        (for-each
         (lambda (_bind12844_)
           (let ((_bind1284512852_ _bind12844_))
             (let ((_E1284712856_
                    (lambda ()
                      (error '"No clause matching" _bind1284512852_))))
               (let ((_K1284812965_
                      (lambda (_rest12859_ _id12860_)
                        (gx#core-context-put!
                         _self12841_
                         _id12860_
                         (##structure
                          gx#syntax-binding::t
                          _id12860_
                          _id12860_
                          '#f
                          (let ((_rest1286112872_ _rest12859_))
                            (let ((_E1286312876_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1286112872_))))
                              (let ((_K1286412941_
                                     (lambda (_compiler12879_
                                              _expander12880_
                                              _key12881_)
                                       ((let ((_key1288212895_ _key12881_))
                                          (let ((_E1288812899_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1288212895_))))
                                            (let ((_try-match1288712907_
                                                   (lambda ()
                                                     (let ((_K1288912904_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1288212895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1288912904_)
                   (_E1288812899_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1288612915_
                                                     (lambda ()
                                                       (let ((_K1289012912_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1288212895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1289012912_)
                     (_try-match1288712907_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1288512923_
                                                       (lambda ()
                                                         (let ((_K1289112920_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1288212895_ 'define:)
                       (_K1289112920_)
                       (_try-match1288612915_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1288412931_
                                                         (lambda ()
                                                           (let ((_K1289212928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1288212895_ 'module:)
                         (_K1289212928_)
                         (_try-match1288512923_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1289312935_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1288212895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1289312935_)
                  (_try-match1288412931_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12880_
                                        _id12860_
                                        (let ((_$e12938_ _compiler12879_))
                                          (if _$e12938_
                                              _$e12938_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1286112872_)
                                    (let ((_hd1286512944_
                                           (##car _rest1286112872_))
                                          (_tl1286612946_
                                           (##cdr _rest1286112872_)))
                                      (let ((_key12949_ _hd1286512944_))
                                        (if (##pair? _tl1286612946_)
                                            (let ((_hd1286712951_
                                                   (##car _tl1286612946_))
                                                  (_tl1286812953_
                                                   (##cdr _tl1286612946_)))
                                              (let ((_expander12956_
                                                     _hd1286712951_))
                                                (if (##pair? _tl1286812953_)
                                                    (let ((_hd1286912958_
                                                           (##car _tl1286812953_))
                                                          (_tl1287012960_
                                                           (##cdr _tl1286812953_)))
                                                      (let ((_compiler12963_
                                                             _hd1286912958_))
                                                        (if (##null? _tl1287012960_)
                                                            (_K1286412941_
                                                             _compiler12963_
                                                             _expander12956_
                                                             _key12949_)
                                                            (_E1286312876_))))
                                                    (_E1286312876_))))
                                            (_E1286312876_))))
                                    (_E1286312876_))))))))))
                 (if (##pair? _bind1284512852_)
                     (let ((_hd1284912968_ (##car _bind1284512852_))
                           (_tl1285012970_ (##cdr _bind1284512852_)))
                       (let ((_id12973_ _hd1284912968_))
                         (let ((_rest12975_ _tl1285012970_))
                           (_K1284812965_ _rest12975_ _id12973_))))
                     (_E1284712856_))))))
         _bindings12842_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12980_)
          (let ((_bindings12982_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12839
             _self12980_
             _bindings12982_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g13028_
          (let ((_g13027_ (length _g13028_)))
            (cond ((fx= _g13027_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g13028_))
                  ((fx= _g13027_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12839
                          _g13028_))
                  (else (error "No clause matching arguments" _g13028_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12733
      (lambda (_self12735_ _bindings12736_)
        (for-each
         (lambda (_bind12738_)
           (let ((_bind1273912746_ _bind12738_))
             (let ((_E1274112750_
                    (lambda ()
                      (error '"No clause matching" _bind1273912746_))))
               (let ((_K1274212818_
                      (lambda (_rest12753_ _id12754_)
                        (gx#core-context-put!
                         _self12735_
                         _id12754_
                         (##structure
                          gx#syntax-binding::t
                          _id12754_
                          _id12754_
                          '#f
                          (let ((_rest1275512770_ _rest12753_))
                            (let ((_E1275912774_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1275512770_))))
                              (let ((_try-match1275812782_
                                     (lambda ()
                                       (let ((_K1276012779_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12754_))))
                                         (if (##null? _rest1275512770_)
                                             (_K1276012779_)
                                             (_E1275912774_))))))
                                (let ((_try-match1275712798_
                                       (lambda ()
                                         (let ((_K1276112788_
                                                (lambda (_proc12786_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12786_))))
                                           (if (##pair? _rest1275512770_)
                                               (let ((_hd1276212791_
                                                      (##car _rest1275512770_))
                                                     (_tl1276312793_
                                                      (##cdr _rest1275512770_)))
                                                 (let ((_proc12796_
                                                        _hd1276212791_))
                                                   (if (##null? _tl1276312793_)
                                                       (_K1276112788_
                                                        _proc12796_)
                                                       (_try-match1275812782_))))
                                               (_try-match1275812782_))))))
                                  (let ((_K1276412803_
                                         (lambda (_core-id12801_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12801_))))
                                    (if (##pair? _rest1275512770_)
                                        (let ((_hd1276512806_
                                               (##car _rest1275512770_))
                                              (_tl1276612808_
                                               (##cdr _rest1275512770_)))
                                          (if (##eq? _hd1276512806_ '=>)
                                              (if (##pair? _tl1276612808_)
                                                  (let ((_hd1276712811_
                                                         (##car _tl1276612808_))
                                                        (_tl1276812813_
                                                         (##cdr _tl1276612808_)))
                                                    (let ((_core-id12816_
                                                           _hd1276712811_))
                                                      (if (##null? _tl1276812813_)
                                                          (_K1276412803_
                                                           _core-id12816_)
                                                          (_try-match1275712798_))))
                                                  (_try-match1275712798_))
                                              (_try-match1275712798_)))
                                        (_try-match1275712798_))))))))))))
                 (if (##pair? _bind1273912746_)
                     (let ((_hd1274312821_ (##car _bind1273912746_))
                           (_tl1274412823_ (##cdr _bind1273912746_)))
                       (let ((_id12826_ _hd1274312821_))
                         (let ((_rest12828_ _tl1274412823_))
                           (_K1274212818_ _rest12828_ _id12826_))))
                     (_E1274112750_))))))
         _bindings12736_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12833_)
          (let ((_bindings12835_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12733
             _self12833_
             _bindings12835_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g13030_
          (let ((_g13029_ (length _g13030_)))
            (cond ((fx= _g13029_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g13030_))
                  ((fx= _g13029_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12733
                          _g13030_))
                  (else (error "No clause matching arguments" _g13030_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self12682_)
      (begin
        (gx#core-bind-feature!__opt-lambda9121 'gerbil '#f '0 _self12682_)
        (gx#core-bind-feature!__opt-lambda9121
         (gerbil-system)
         '#f
         '0
         _self12682_)
        (let ((_g1268312695_ (system-type)))
          (let ((_E1268612699_
                 (lambda () (error '"No clause matching" _g1268312695_))))
            (let ((_else1268512703_ (lambda () '#!void)))
              (let ((_K1268712710_
                     (lambda (_sys-type12706_ _sys-vendor12707_ _sys-cpu12708_)
                       (begin
                         (gx#core-bind-feature!__opt-lambda9121
                          _sys-cpu12708_
                          '#f
                          '0
                          _self12682_)
                         (gx#core-bind-feature!__opt-lambda9121
                          _sys-type12706_
                          '#f
                          '0
                          _self12682_)))))
                (if (##pair? _g1268312695_)
                    (let ((_hd1268812713_ (##car _g1268312695_))
                          (_tl1268912715_ (##cdr _g1268312695_)))
                      (let ((_sys-cpu12718_ _hd1268812713_))
                        (if (##pair? _tl1268912715_)
                            (let ((_hd1269012720_ (##car _tl1268912715_))
                                  (_tl1269112722_ (##cdr _tl1268912715_)))
                              (let ((_sys-vendor12725_ _hd1269012720_))
                                (if (##pair? _tl1269112722_)
                                    (let ((_hd1269212727_
                                           (##car _tl1269112722_))
                                          (_tl1269312729_
                                           (##cdr _tl1269112722_)))
                                      (let ((_sys-type12732_ _hd1269212727_))
                                        (if (##null? _tl1269312729_)
                                            (_K1268712710_
                                             _sys-type12732_
                                             _sys-vendor12725_
                                             _sys-cpu12718_)
                                            '#!void)))
                                    '#!void)))
                            '#!void)))
                    '#!void))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
