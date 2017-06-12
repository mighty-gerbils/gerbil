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
    (define gx#root-context:::init!__opt-lambda13014
      (lambda (_self13016_ _bind?13017_)
        (begin
          (struct-instance-init! _self13016_ 'root (make-hash-table-eq))
          (if _bind?13017_
              (begin
                (call-method _self13016_ 'bind-core-syntax-expanders!)
                (call-method _self13016_ 'bind-core-macro-expanders!)
                (call-method _self13016_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self13022_)
          (let ((_bind?13024_ '#t))
            (gx#root-context:::init!__opt-lambda13014
             _self13022_
             _bind?13024_))))
      (define gx#root-context:::init!
        (lambda _g13030_
          (let ((_g13029_ (length _g13030_)))
            (cond ((fx= _g13029_ 1)
                   (apply gx#root-context:::init!__0 _g13030_))
                  ((fx= _g13029_ 2)
                   (apply gx#root-context:::init!__opt-lambda13014 _g13030_))
                  (else (error "No clause matching arguments" _g13030_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12992
      (lambda (_self12994_ _super12995_)
        (let ((_super13003_
               (let ((_$e12997_ _super12995_))
                 (if _$e12997_
                     _$e12997_
                     (let ((_$e13000_ (gx#core-context-root__0)))
                       (if _$e13000_
                           _$e13000_
                           (let ((__obj13028
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj13028)
                               __obj13028))))))))
          (struct-instance-init!
           _self12994_
           'top
           (make-hash-table-eq)
           _super13003_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self13008_)
          (let ((_super13010_ '#f))
            (gx#top-context:::init!__opt-lambda12992
             _self13008_
             _super13010_))))
      (define gx#top-context:::init!
        (lambda _g13032_
          (let ((_g13031_ (length _g13032_)))
            (cond ((fx= _g13031_ 1) (apply gx#top-context:::init!__0 _g13032_))
                  ((fx= _g13031_ 2)
                   (apply gx#top-context:::init!__opt-lambda12992 _g13032_))
                  (else (error "No clause matching arguments" _g13032_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12845
      (lambda (_self12847_ _bindings12848_)
        (for-each
         (lambda (_bind12850_)
           (let ((_bind1285112858_ _bind12850_))
             (let ((_E1285312862_
                    (lambda ()
                      (error '"No clause matching" _bind1285112858_))))
               (let ((_K1285412971_
                      (lambda (_rest12865_ _id12866_)
                        (gx#core-context-put!
                         _self12847_
                         _id12866_
                         (##structure
                          gx#syntax-binding::t
                          _id12866_
                          _id12866_
                          '#f
                          (let ((_rest1286712878_ _rest12865_))
                            (let ((_E1286912882_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1286712878_))))
                              (let ((_K1287012947_
                                     (lambda (_compiler12885_
                                              _expander12886_
                                              _key12887_)
                                       ((let ((_key1288812901_ _key12887_))
                                          (let ((_E1289412905_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1288812901_))))
                                            (let ((_try-match1289312913_
                                                   (lambda ()
                                                     (let ((_K1289512910_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1288812901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1289512910_)
                   (_E1289412905_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1289212921_
                                                     (lambda ()
                                                       (let ((_K1289612918_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1288812901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1289612918_)
                     (_try-match1289312913_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1289112929_
                                                       (lambda ()
                                                         (let ((_K1289712926_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1288812901_ 'define:)
                       (_K1289712926_)
                       (_try-match1289212921_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1289012937_
                                                         (lambda ()
                                                           (let ((_K1289812934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1288812901_ 'module:)
                         (_K1289812934_)
                         (_try-match1289112929_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1289912941_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1288812901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1289912941_)
                  (_try-match1289012937_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12886_
                                        _id12866_
                                        (let ((_$e12944_ _compiler12885_))
                                          (if _$e12944_
                                              _$e12944_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1286712878_)
                                    (let ((_hd1287112950_
                                           (##car _rest1286712878_))
                                          (_tl1287212952_
                                           (##cdr _rest1286712878_)))
                                      (let ((_key12955_ _hd1287112950_))
                                        (if (##pair? _tl1287212952_)
                                            (let ((_hd1287312957_
                                                   (##car _tl1287212952_))
                                                  (_tl1287412959_
                                                   (##cdr _tl1287212952_)))
                                              (let ((_expander12962_
                                                     _hd1287312957_))
                                                (if (##pair? _tl1287412959_)
                                                    (let ((_hd1287512964_
                                                           (##car _tl1287412959_))
                                                          (_tl1287612966_
                                                           (##cdr _tl1287412959_)))
                                                      (let ((_compiler12969_
                                                             _hd1287512964_))
                                                        (if (##null? _tl1287612966_)
                                                            (_K1287012947_
                                                             _compiler12969_
                                                             _expander12962_
                                                             _key12955_)
                                                            (_E1286912882_))))
                                                    (_E1286912882_))))
                                            (_E1286912882_))))
                                    (_E1286912882_))))))))))
                 (if (##pair? _bind1285112858_)
                     (let ((_hd1285512974_ (##car _bind1285112858_))
                           (_tl1285612976_ (##cdr _bind1285112858_)))
                       (let ((_id12979_ _hd1285512974_))
                         (let ((_rest12981_ _tl1285612976_))
                           (_K1285412971_ _rest12981_ _id12979_))))
                     (_E1285312862_))))))
         _bindings12848_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12986_)
          (let ((_bindings12988_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12845
             _self12986_
             _bindings12988_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g13034_
          (let ((_g13033_ (length _g13034_)))
            (cond ((fx= _g13033_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g13034_))
                  ((fx= _g13033_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12845
                          _g13034_))
                  (else (error "No clause matching arguments" _g13034_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12739
      (lambda (_self12741_ _bindings12742_)
        (for-each
         (lambda (_bind12744_)
           (let ((_bind1274512752_ _bind12744_))
             (let ((_E1274712756_
                    (lambda ()
                      (error '"No clause matching" _bind1274512752_))))
               (let ((_K1274812824_
                      (lambda (_rest12759_ _id12760_)
                        (gx#core-context-put!
                         _self12741_
                         _id12760_
                         (##structure
                          gx#syntax-binding::t
                          _id12760_
                          _id12760_
                          '#f
                          (let ((_rest1276112776_ _rest12759_))
                            (let ((_E1276512780_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1276112776_))))
                              (let ((_try-match1276412788_
                                     (lambda ()
                                       (let ((_K1276612785_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12760_))))
                                         (if (##null? _rest1276112776_)
                                             (_K1276612785_)
                                             (_E1276512780_))))))
                                (let ((_try-match1276312804_
                                       (lambda ()
                                         (let ((_K1276712794_
                                                (lambda (_proc12792_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12792_))))
                                           (if (##pair? _rest1276112776_)
                                               (let ((_hd1276812797_
                                                      (##car _rest1276112776_))
                                                     (_tl1276912799_
                                                      (##cdr _rest1276112776_)))
                                                 (let ((_proc12802_
                                                        _hd1276812797_))
                                                   (if (##null? _tl1276912799_)
                                                       (_K1276712794_
                                                        _proc12802_)
                                                       (_try-match1276412788_))))
                                               (_try-match1276412788_))))))
                                  (let ((_K1277012809_
                                         (lambda (_core-id12807_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12807_))))
                                    (if (##pair? _rest1276112776_)
                                        (let ((_hd1277112812_
                                               (##car _rest1276112776_))
                                              (_tl1277212814_
                                               (##cdr _rest1276112776_)))
                                          (if (##eq? _hd1277112812_ '=>)
                                              (if (##pair? _tl1277212814_)
                                                  (let ((_hd1277312817_
                                                         (##car _tl1277212814_))
                                                        (_tl1277412819_
                                                         (##cdr _tl1277212814_)))
                                                    (let ((_core-id12822_
                                                           _hd1277312817_))
                                                      (if (##null? _tl1277412819_)
                                                          (_K1277012809_
                                                           _core-id12822_)
                                                          (_try-match1276312804_))))
                                                  (_try-match1276312804_))
                                              (_try-match1276312804_)))
                                        (_try-match1276312804_))))))))))))
                 (if (##pair? _bind1274512752_)
                     (let ((_hd1274912827_ (##car _bind1274512752_))
                           (_tl1275012829_ (##cdr _bind1274512752_)))
                       (let ((_id12832_ _hd1274912827_))
                         (let ((_rest12834_ _tl1275012829_))
                           (_K1274812824_ _rest12834_ _id12832_))))
                     (_E1274712756_))))))
         _bindings12742_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12839_)
          (let ((_bindings12841_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12739
             _self12839_
             _bindings12841_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g13036_
          (let ((_g13035_ (length _g13036_)))
            (cond ((fx= _g13035_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g13036_))
                  ((fx= _g13035_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12739
                          _g13036_))
                  (else (error "No clause matching arguments" _g13036_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self12688_)
      (begin
        (gx#core-bind-feature!__opt-lambda9127 'gerbil '#f '0 _self12688_)
        (gx#core-bind-feature!__opt-lambda9127
         (gerbil-system)
         '#f
         '0
         _self12688_)
        (let ((_g1268912701_ (system-type)))
          (let ((_E1269212705_
                 (lambda () (error '"No clause matching" _g1268912701_))))
            (let ((_else1269112709_ (lambda () '#!void)))
              (let ((_K1269312716_
                     (lambda (_sys-type12712_ _sys-vendor12713_ _sys-cpu12714_)
                       (begin
                         (gx#core-bind-feature!__opt-lambda9127
                          _sys-cpu12714_
                          '#f
                          '0
                          _self12688_)
                         (gx#core-bind-feature!__opt-lambda9127
                          _sys-type12712_
                          '#f
                          '0
                          _self12688_)))))
                (if (##pair? _g1268912701_)
                    (let ((_hd1269412719_ (##car _g1268912701_))
                          (_tl1269512721_ (##cdr _g1268912701_)))
                      (let ((_sys-cpu12724_ _hd1269412719_))
                        (if (##pair? _tl1269512721_)
                            (let ((_hd1269612726_ (##car _tl1269512721_))
                                  (_tl1269712728_ (##cdr _tl1269512721_)))
                              (let ((_sys-vendor12731_ _hd1269612726_))
                                (if (##pair? _tl1269712728_)
                                    (let ((_hd1269812733_
                                           (##car _tl1269712728_))
                                          (_tl1269912735_
                                           (##cdr _tl1269712728_)))
                                      (let ((_sys-type12738_ _hd1269812733_))
                                        (if (##null? _tl1269912735_)
                                            (_K1269312716_
                                             _sys-type12738_
                                             _sys-vendor12731_
                                             _sys-cpu12724_)
                                            '#!void)))
                                    '#!void)))
                            '#!void)))
                    '#!void))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
