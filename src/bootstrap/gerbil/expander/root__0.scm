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
    (define gx#root-context:::init!__opt-lambda12855
      (lambda (_self12857_ _bind?12858_)
        (begin
          (direct-struct-instance-init! _self12857_ 'root (make-hash-table-eq))
          (if _bind?12858_
              (begin
                (call-method _self12857_ 'bind-core-syntax-expanders!)
                (call-method _self12857_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self12863_)
          (let ((_bind?12865_ '#t))
            (gx#root-context:::init!__opt-lambda12855
             _self12863_
             _bind?12865_))))
      (define gx#root-context:::init!
        (lambda _g12871_
          (let ((_g12870_ (length _g12871_)))
            (cond ((fx= _g12870_ 1)
                   (apply gx#root-context:::init!__0 _g12871_))
                  ((fx= _g12870_ 2)
                   (apply gx#root-context:::init!__opt-lambda12855 _g12871_))
                  (else (error "No clause matching arguments" _g12871_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12833
      (lambda (_self12835_ _super12836_)
        (let ((_super12844_
               (let ((_$e12838_ _super12836_))
                 (if _$e12838_
                     _$e12838_
                     (let ((_$e12841_ (gx#core-context-root__0)))
                       (if _$e12841_
                           _$e12841_
                           (let ((__obj12869
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj12869)
                               __obj12869))))))))
          (direct-struct-instance-init!
           _self12835_
           'top
           (make-hash-table-eq)
           _super12844_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self12849_)
          (let ((_super12851_ '#f))
            (gx#top-context:::init!__opt-lambda12833
             _self12849_
             _super12851_))))
      (define gx#top-context:::init!
        (lambda _g12873_
          (let ((_g12872_ (length _g12873_)))
            (cond ((fx= _g12872_ 1) (apply gx#top-context:::init!__0 _g12873_))
                  ((fx= _g12872_ 2)
                   (apply gx#top-context:::init!__opt-lambda12833 _g12873_))
                  (else (error "No clause matching arguments" _g12873_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12686
      (lambda (_self12688_ _bindings12689_)
        (for-each
         (lambda (_bind12691_)
           (let ((_bind1269212699_ _bind12691_))
             (let ((_E1269412703_
                    (lambda ()
                      (error '"No clause matching" _bind1269212699_))))
               (let ((_K1269512812_
                      (lambda (_rest12706_ _id12707_)
                        (gx#core-context-put!
                         _self12688_
                         _id12707_
                         (##structure
                          gx#syntax-binding::t
                          _id12707_
                          _id12707_
                          '#f
                          (let ((_rest1270812719_ _rest12706_))
                            (let ((_E1271012723_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1270812719_))))
                              (let ((_K1271112788_
                                     (lambda (_compiler12726_
                                              _expander12727_
                                              _key12728_)
                                       ((let ((_key1272912742_ _key12728_))
                                          (let ((_E1273512746_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1272912742_))))
                                            (let ((_try-match1273412754_
                                                   (lambda ()
                                                     (let ((_K1273612751_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1272912742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1273612751_)
                   (_E1273512746_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1273312762_
                                                     (lambda ()
                                                       (let ((_K1273712759_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1272912742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1273712759_)
                     (_try-match1273412754_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1273212770_
                                                       (lambda ()
                                                         (let ((_K1273812767_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1272912742_ 'define:)
                       (_K1273812767_)
                       (_try-match1273312762_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1273112778_
                                                         (lambda ()
                                                           (let ((_K1273912775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1272912742_ 'module:)
                         (_K1273912775_)
                         (_try-match1273212770_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1274012782_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1272912742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1274012782_)
                  (_try-match1273112778_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12727_
                                        _id12707_
                                        (let ((_$e12785_ _compiler12726_))
                                          (if _$e12785_
                                              _$e12785_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1270812719_)
                                    (let ((_hd1271212791_
                                           (##car _rest1270812719_))
                                          (_tl1271312793_
                                           (##cdr _rest1270812719_)))
                                      (let ((_key12796_ _hd1271212791_))
                                        (if (##pair? _tl1271312793_)
                                            (let ((_hd1271412798_
                                                   (##car _tl1271312793_))
                                                  (_tl1271512800_
                                                   (##cdr _tl1271312793_)))
                                              (let ((_expander12803_
                                                     _hd1271412798_))
                                                (if (##pair? _tl1271512800_)
                                                    (let ((_hd1271612805_
                                                           (##car _tl1271512800_))
                                                          (_tl1271712807_
                                                           (##cdr _tl1271512800_)))
                                                      (let ((_compiler12810_
                                                             _hd1271612805_))
                                                        (if (##null? _tl1271712807_)
                                                            (_K1271112788_
                                                             _compiler12810_
                                                             _expander12803_
                                                             _key12796_)
                                                            (_E1271012723_))))
                                                    (_E1271012723_))))
                                            (_E1271012723_))))
                                    (_E1271012723_))))))))))
                 (if (##pair? _bind1269212699_)
                     (let ((_hd1269612815_ (##car _bind1269212699_))
                           (_tl1269712817_ (##cdr _bind1269212699_)))
                       (let ((_id12820_ _hd1269612815_))
                         (let ((_rest12822_ _tl1269712817_))
                           (_K1269512812_ _rest12822_ _id12820_))))
                     (_E1269412703_))))))
         _bindings12689_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12827_)
          (let ((_bindings12829_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12686
             _self12827_
             _bindings12829_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g12875_
          (let ((_g12874_ (length _g12875_)))
            (cond ((fx= _g12874_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g12875_))
                  ((fx= _g12874_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12686
                          _g12875_))
                  (else (error "No clause matching arguments" _g12875_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12580
      (lambda (_self12582_ _bindings12583_)
        (for-each
         (lambda (_bind12585_)
           (let ((_bind1258612593_ _bind12585_))
             (let ((_E1258812597_
                    (lambda ()
                      (error '"No clause matching" _bind1258612593_))))
               (let ((_K1258912665_
                      (lambda (_rest12600_ _id12601_)
                        (gx#core-context-put!
                         _self12582_
                         _id12601_
                         (##structure
                          gx#syntax-binding::t
                          _id12601_
                          _id12601_
                          '#f
                          (let ((_rest1260212617_ _rest12600_))
                            (let ((_E1260612621_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1260212617_))))
                              (let ((_try-match1260512629_
                                     (lambda ()
                                       (let ((_K1260712626_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12601_))))
                                         (if (##null? _rest1260212617_)
                                             (_K1260712626_)
                                             (_E1260612621_))))))
                                (let ((_try-match1260412645_
                                       (lambda ()
                                         (let ((_K1260812635_
                                                (lambda (_proc12633_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12633_))))
                                           (if (##pair? _rest1260212617_)
                                               (let ((_hd1260912638_
                                                      (##car _rest1260212617_))
                                                     (_tl1261012640_
                                                      (##cdr _rest1260212617_)))
                                                 (let ((_proc12643_
                                                        _hd1260912638_))
                                                   (if (##null? _tl1261012640_)
                                                       (_K1260812635_
                                                        _proc12643_)
                                                       (_try-match1260512629_))))
                                               (_try-match1260512629_))))))
                                  (let ((_K1261112650_
                                         (lambda (_core-id12648_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12648_))))
                                    (if (##pair? _rest1260212617_)
                                        (let ((_hd1261212653_
                                               (##car _rest1260212617_))
                                              (_tl1261312655_
                                               (##cdr _rest1260212617_)))
                                          (if (##eq? _hd1261212653_ '=>)
                                              (if (##pair? _tl1261312655_)
                                                  (let ((_hd1261412658_
                                                         (##car _tl1261312655_))
                                                        (_tl1261512660_
                                                         (##cdr _tl1261312655_)))
                                                    (let ((_core-id12663_
                                                           _hd1261412658_))
                                                      (if (##null? _tl1261512660_)
                                                          (_K1261112650_
                                                           _core-id12663_)
                                                          (_try-match1260412645_))))
                                                  (_try-match1260412645_))
                                              (_try-match1260412645_)))
                                        (_try-match1260412645_))))))))))))
                 (if (##pair? _bind1258612593_)
                     (let ((_hd1259012668_ (##car _bind1258612593_))
                           (_tl1259112670_ (##cdr _bind1258612593_)))
                       (let ((_id12673_ _hd1259012668_))
                         (let ((_rest12675_ _tl1259112670_))
                           (_K1258912665_ _rest12675_ _id12673_))))
                     (_E1258812597_))))))
         _bindings12583_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12680_)
          (let ((_bindings12682_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12580
             _self12680_
             _bindings12682_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g12877_
          (let ((_g12876_ (length _g12877_)))
            (cond ((fx= _g12876_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g12877_))
                  ((fx= _g12876_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12580
                          _g12877_))
                  (else (error "No clause matching arguments" _g12877_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
