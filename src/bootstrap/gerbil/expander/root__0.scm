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
    (define gx#root-context:::init!__opt-lambda13132
      (lambda (_self13134_ _bind?13135_)
        (begin
          (struct-instance-init! _self13134_ 'root (make-hash-table-eq))
          (if _bind?13135_
              (begin
                (call-method _self13134_ 'bind-core-syntax-expanders!)
                (call-method _self13134_ 'bind-core-macro-expanders!)
                (call-method _self13134_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self13140_)
          (let ((_bind?13142_ '#t))
            (gx#root-context:::init!__opt-lambda13132
             _self13140_
             _bind?13142_))))
      (define gx#root-context:::init!
        (lambda _g13148_
          (let ((_g13147_ (length _g13148_)))
            (cond ((fx= _g13147_ 1)
                   (apply gx#root-context:::init!__0 _g13148_))
                  ((fx= _g13147_ 2)
                   (apply gx#root-context:::init!__opt-lambda13132 _g13148_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g13148_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda13110
      (lambda (_self13112_ _super13113_)
        (let ((_super13121_
               (let ((_$e13115_ _super13113_))
                 (if _$e13115_
                     _$e13115_
                     (let ((_$e13118_ (gx#core-context-root__0)))
                       (if _$e13118_
                           _$e13118_
                           (let ((__obj13146
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj13146)
                               __obj13146))))))))
          (struct-instance-init!
           _self13112_
           'top
           (make-hash-table-eq)
           _super13121_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self13126_)
          (let ((_super13128_ '#f))
            (gx#top-context:::init!__opt-lambda13110
             _self13126_
             _super13128_))))
      (define gx#top-context:::init!
        (lambda _g13150_
          (let ((_g13149_ (length _g13150_)))
            (cond ((fx= _g13149_ 1) (apply gx#top-context:::init!__0 _g13150_))
                  ((fx= _g13149_ 2)
                   (apply gx#top-context:::init!__opt-lambda13110 _g13150_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g13150_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12963
      (lambda (_self12965_ _bindings12966_)
        (for-each
         (lambda (_bind12968_)
           (let* ((_bind1296912976_ _bind12968_)
                  (_E1297112980_
                   (lambda () (error '"No clause matching" _bind1296912976_)))
                  (_K1297213089_
                   (lambda (_rest12983_ _id12984_)
                     (gx#core-context-put!
                      _self12965_
                      _id12984_
                      (##structure
                       gx#syntax-binding::t
                       _id12984_
                       _id12984_
                       '#f
                       (let* ((_rest1298512996_ _rest12983_)
                              (_E1298713000_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1298512996_)))
                              (_K1298813065_
                               (lambda (_compiler13003_
                                        _expander13004_
                                        _key13005_)
                                 ((let* ((_key1300613019_ _key13005_)
                                         (_E1301213023_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1300613019_)))
                                         (_try-match1301113031_
                                          (lambda ()
                                            (let ((_K1301313028_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1300613019_
                                                         'expr:)
                                                  (_K1301313028_)
                                                  (_E1301213023_)))))
                                         (_try-match1301013039_
                                          (lambda ()
                                            (let ((_K1301413036_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1300613019_
                                                         'special:)
                                                  (_K1301413036_)
                                                  (_try-match1301113031_)))))
                                         (_try-match1300913047_
                                          (lambda ()
                                            (let ((_K1301513044_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1300613019_
                                                         'define:)
                                                  (_K1301513044_)
                                                  (_try-match1301013039_)))))
                                         (_try-match1300813055_
                                          (lambda ()
                                            (let ((_K1301613052_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1300613019_
                                                         'module:)
                                                  (_K1301613052_)
                                                  (_try-match1300913047_)))))
                                         (_K1301713059_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1300613019_ 'top:)
                                        (_K1301713059_)
                                        (_try-match1300813055_)))
                                  _expander13004_
                                  _id12984_
                                  (let ((_$e13062_ _compiler13003_))
                                    (if _$e13062_
                                        _$e13062_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1298512996_)
                             (let ((_hd1298913068_ (##car _rest1298512996_))
                                   (_tl1299013070_ (##cdr _rest1298512996_)))
                               (let ((_key13073_ _hd1298913068_))
                                 (if (##pair? _tl1299013070_)
                                     (let ((_hd1299113075_
                                            (##car _tl1299013070_))
                                           (_tl1299213077_
                                            (##cdr _tl1299013070_)))
                                       (let ((_expander13080_ _hd1299113075_))
                                         (if (##pair? _tl1299213077_)
                                             (let ((_hd1299313082_
                                                    (##car _tl1299213077_))
                                                   (_tl1299413084_
                                                    (##cdr _tl1299213077_)))
                                               (let ((_compiler13087_
                                                      _hd1299313082_))
                                                 (if (##null? _tl1299413084_)
                                                     (_K1298813065_
                                                      _compiler13087_
                                                      _expander13080_
                                                      _key13073_)
                                                     (_E1298713000_))))
                                             (_E1298713000_))))
                                     (_E1298713000_))))
                             (_E1298713000_))))))))
             (if (##pair? _bind1296912976_)
                 (let ((_hd1297313092_ (##car _bind1296912976_))
                       (_tl1297413094_ (##cdr _bind1296912976_)))
                   (let* ((_id13097_ _hd1297313092_)
                          (_rest13099_ _tl1297413094_))
                     (_K1297213089_ _rest13099_ _id13097_)))
                 (_E1297112980_))))
         _bindings12966_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self13104_)
          (let ((_bindings13106_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12963
             _self13104_
             _bindings13106_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g13152_
          (let ((_g13151_ (length _g13152_)))
            (cond ((fx= _g13151_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g13152_))
                  ((fx= _g13151_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12963
                          _g13152_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g13152_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12857
      (lambda (_self12859_ _bindings12860_)
        (for-each
         (lambda (_bind12862_)
           (let* ((_bind1286312870_ _bind12862_)
                  (_E1286512874_
                   (lambda () (error '"No clause matching" _bind1286312870_)))
                  (_K1286612942_
                   (lambda (_rest12877_ _id12878_)
                     (gx#core-context-put!
                      _self12859_
                      _id12878_
                      (##structure
                       gx#syntax-binding::t
                       _id12878_
                       _id12878_
                       '#f
                       (let* ((_rest1287912894_ _rest12877_)
                              (_E1288312898_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1287912894_)))
                              (_try-match1288212906_
                               (lambda ()
                                 (let ((_K1288412903_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id12878_))))
                                   (if (##null? _rest1287912894_)
                                       (_K1288412903_)
                                       (_E1288312898_)))))
                              (_try-match1288112922_
                               (lambda ()
                                 (let ((_K1288512912_
                                        (lambda (_proc12910_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc12910_))))
                                   (if (##pair? _rest1287912894_)
                                       (let ((_hd1288612915_
                                              (##car _rest1287912894_))
                                             (_tl1288712917_
                                              (##cdr _rest1287912894_)))
                                         (let ((_proc12920_ _hd1288612915_))
                                           (if (##null? _tl1288712917_)
                                               (_K1288512912_ _proc12920_)
                                               (_try-match1288212906_))))
                                       (_try-match1288212906_)))))
                              (_K1288812927_
                               (lambda (_core-id12925_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id12925_))))
                         (if (##pair? _rest1287912894_)
                             (let ((_hd1288912930_ (##car _rest1287912894_))
                                   (_tl1289012932_ (##cdr _rest1287912894_)))
                               (if (##eq? _hd1288912930_ '=>)
                                   (if (##pair? _tl1289012932_)
                                       (let ((_hd1289112935_
                                              (##car _tl1289012932_))
                                             (_tl1289212937_
                                              (##cdr _tl1289012932_)))
                                         (let ((_core-id12940_ _hd1289112935_))
                                           (if (##null? _tl1289212937_)
                                               (_K1288812927_ _core-id12940_)
                                               (_try-match1288112922_))))
                                       (_try-match1288112922_))
                                   (_try-match1288112922_)))
                             (_try-match1288112922_))))))))
             (if (##pair? _bind1286312870_)
                 (let ((_hd1286712945_ (##car _bind1286312870_))
                       (_tl1286812947_ (##cdr _bind1286312870_)))
                   (let* ((_id12950_ _hd1286712945_)
                          (_rest12952_ _tl1286812947_))
                     (_K1286612942_ _rest12952_ _id12950_)))
                 (_E1286512874_))))
         _bindings12860_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12957_)
          (let ((_bindings12959_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12857
             _self12957_
             _bindings12959_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g13154_
          (let ((_g13153_ (length _g13154_)))
            (cond ((fx= _g13153_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g13154_))
                  ((fx= _g13153_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12857
                          _g13154_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g13154_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self12772_)
      (letrec ((_linux-variant?12774_
                (lambda (_sys-type12826_)
                  (let* ((_g1282712835_
                          (string-split (symbol->string _sys-type12826_) '#\-))
                         (_E1283012839_
                          (lambda ()
                            (error '"No clause matching" _g1282712835_)))
                         (_else1282912843_ (lambda () '#f))
                         (_K1283112848_
                          (lambda (_rest12846_) (not (null? _rest12846_)))))
                    (if (##pair? _g1282712835_)
                        (let ((_hd1283212851_ (##car _g1282712835_))
                              (_tl1283312853_ (##cdr _g1282712835_)))
                          (if (equal? _hd1283212851_ '"linux")
                              (let ((_rest12856_ _tl1283312853_))
                                (_K1283112848_ _rest12856_))
                              (_else1282912843_)))
                        (_else1282912843_))))))
        (begin
          (gx#core-bind-feature!__opt-lambda9153 'gerbil '#f '0 _self12772_)
          (gx#core-bind-feature!__opt-lambda9153
           (gerbil-system)
           '#f
           '0
           _self12772_)
          (let* ((_g1277512787_ (system-type))
                 (_E1277812791_
                  (lambda () (error '"No clause matching" _g1277512787_)))
                 (_else1277712795_ (lambda () '#!void))
                 (_K1277912802_
                  (lambda (_sys-type12798_ _sys-vendor12799_ _sys-cpu12800_)
                    (begin
                      (gx#core-bind-feature!__opt-lambda9153
                       _sys-cpu12800_
                       '#f
                       '0
                       _self12772_)
                      (gx#core-bind-feature!__opt-lambda9153
                       _sys-type12798_
                       '#f
                       '0
                       _self12772_)
                      (if (_linux-variant?12774_ _sys-type12798_)
                          (gx#core-bind-feature!__opt-lambda9153
                           'linux
                           '#f
                           '0
                           _self12772_)
                          '#!void)))))
            (if (##pair? _g1277512787_)
                (let ((_hd1278012805_ (##car _g1277512787_))
                      (_tl1278112807_ (##cdr _g1277512787_)))
                  (let ((_sys-cpu12810_ _hd1278012805_))
                    (if (##pair? _tl1278112807_)
                        (let ((_hd1278212812_ (##car _tl1278112807_))
                              (_tl1278312814_ (##cdr _tl1278112807_)))
                          (let ((_sys-vendor12817_ _hd1278212812_))
                            (if (##pair? _tl1278312814_)
                                (let ((_hd1278412819_ (##car _tl1278312814_))
                                      (_tl1278512821_ (##cdr _tl1278312814_)))
                                  (let ((_sys-type12824_ _hd1278412819_))
                                    (if (##null? _tl1278512821_)
                                        (_K1277912802_
                                         _sys-type12824_
                                         _sys-vendor12817_
                                         _sys-cpu12810_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
