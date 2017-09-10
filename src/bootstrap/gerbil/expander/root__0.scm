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
    (define gx#root-context:::init!__opt-lambda13050
      (lambda (_self13052_ _bind?13053_)
        (begin
          (struct-instance-init! _self13052_ 'root (make-hash-table-eq))
          (if _bind?13053_
              (begin
                (call-method _self13052_ 'bind-core-syntax-expanders!)
                (call-method _self13052_ 'bind-core-macro-expanders!)
                (call-method _self13052_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self13058_)
          (let ((_bind?13060_ '#t))
            (gx#root-context:::init!__opt-lambda13050
             _self13058_
             _bind?13060_))))
      (define gx#root-context:::init!
        (lambda _g13066_
          (let ((_g13065_ (length _g13066_)))
            (cond ((fx= _g13065_ 1)
                   (apply gx#root-context:::init!__0 _g13066_))
                  ((fx= _g13065_ 2)
                   (apply gx#root-context:::init!__opt-lambda13050 _g13066_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g13066_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda13028
      (lambda (_self13030_ _super13031_)
        (let ((_super13039_
               (let ((_$e13033_ _super13031_))
                 (if _$e13033_
                     _$e13033_
                     (let ((_$e13036_ (gx#core-context-root__0)))
                       (if _$e13036_
                           _$e13036_
                           (let ((__obj13064
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj13064)
                               __obj13064))))))))
          (struct-instance-init!
           _self13030_
           'top
           (make-hash-table-eq)
           _super13039_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self13044_)
          (let ((_super13046_ '#f))
            (gx#top-context:::init!__opt-lambda13028
             _self13044_
             _super13046_))))
      (define gx#top-context:::init!
        (lambda _g13068_
          (let ((_g13067_ (length _g13068_)))
            (cond ((fx= _g13067_ 1) (apply gx#top-context:::init!__0 _g13068_))
                  ((fx= _g13067_ 2)
                   (apply gx#top-context:::init!__opt-lambda13028 _g13068_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g13068_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12881
      (lambda (_self12883_ _bindings12884_)
        (for-each
         (lambda (_bind12886_)
           (let* ((_bind1288712894_ _bind12886_)
                  (_E1288912898_
                   (lambda () (error '"No clause matching" _bind1288712894_)))
                  (_K1289013007_
                   (lambda (_rest12901_ _id12902_)
                     (gx#core-context-put!
                      _self12883_
                      _id12902_
                      (##structure
                       gx#syntax-binding::t
                       _id12902_
                       _id12902_
                       '#f
                       (let* ((_rest1290312914_ _rest12901_)
                              (_E1290512918_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1290312914_)))
                              (_K1290612983_
                               (lambda (_compiler12921_
                                        _expander12922_
                                        _key12923_)
                                 ((let* ((_key1292412937_ _key12923_)
                                         (_E1293012941_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1292412937_)))
                                         (_try-match1292912949_
                                          (lambda ()
                                            (let ((_K1293112946_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1292412937_
                                                         'expr:)
                                                  (_K1293112946_)
                                                  (_E1293012941_)))))
                                         (_try-match1292812957_
                                          (lambda ()
                                            (let ((_K1293212954_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1292412937_
                                                         'special:)
                                                  (_K1293212954_)
                                                  (_try-match1292912949_)))))
                                         (_try-match1292712965_
                                          (lambda ()
                                            (let ((_K1293312962_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1292412937_
                                                         'define:)
                                                  (_K1293312962_)
                                                  (_try-match1292812957_)))))
                                         (_try-match1292612973_
                                          (lambda ()
                                            (let ((_K1293412970_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1292412937_
                                                         'module:)
                                                  (_K1293412970_)
                                                  (_try-match1292712965_)))))
                                         (_K1293512977_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1292412937_ 'top:)
                                        (_K1293512977_)
                                        (_try-match1292612973_)))
                                  _expander12922_
                                  _id12902_
                                  (let ((_$e12980_ _compiler12921_))
                                    (if _$e12980_
                                        _$e12980_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1290312914_)
                             (let ((_hd1290712986_ (##car _rest1290312914_))
                                   (_tl1290812988_ (##cdr _rest1290312914_)))
                               (let ((_key12991_ _hd1290712986_))
                                 (if (##pair? _tl1290812988_)
                                     (let ((_hd1290912993_
                                            (##car _tl1290812988_))
                                           (_tl1291012995_
                                            (##cdr _tl1290812988_)))
                                       (let ((_expander12998_ _hd1290912993_))
                                         (if (##pair? _tl1291012995_)
                                             (let ((_hd1291113000_
                                                    (##car _tl1291012995_))
                                                   (_tl1291213002_
                                                    (##cdr _tl1291012995_)))
                                               (let ((_compiler13005_
                                                      _hd1291113000_))
                                                 (if (##null? _tl1291213002_)
                                                     (_K1290612983_
                                                      _compiler13005_
                                                      _expander12998_
                                                      _key12991_)
                                                     (_E1290512918_))))
                                             (_E1290512918_))))
                                     (_E1290512918_))))
                             (_E1290512918_))))))))
             (if (##pair? _bind1288712894_)
                 (let ((_hd1289113010_ (##car _bind1288712894_))
                       (_tl1289213012_ (##cdr _bind1288712894_)))
                   (let* ((_id13015_ _hd1289113010_)
                          (_rest13017_ _tl1289213012_))
                     (_K1289013007_ _rest13017_ _id13015_)))
                 (_E1288912898_))))
         _bindings12884_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self13022_)
          (let ((_bindings13024_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12881
             _self13022_
             _bindings13024_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g13070_
          (let ((_g13069_ (length _g13070_)))
            (cond ((fx= _g13069_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g13070_))
                  ((fx= _g13069_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12881
                          _g13070_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g13070_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12775
      (lambda (_self12777_ _bindings12778_)
        (for-each
         (lambda (_bind12780_)
           (let* ((_bind1278112788_ _bind12780_)
                  (_E1278312792_
                   (lambda () (error '"No clause matching" _bind1278112788_)))
                  (_K1278412860_
                   (lambda (_rest12795_ _id12796_)
                     (gx#core-context-put!
                      _self12777_
                      _id12796_
                      (##structure
                       gx#syntax-binding::t
                       _id12796_
                       _id12796_
                       '#f
                       (let* ((_rest1279712812_ _rest12795_)
                              (_E1280112816_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1279712812_)))
                              (_try-match1280012824_
                               (lambda ()
                                 (let ((_K1280212821_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id12796_))))
                                   (if (##null? _rest1279712812_)
                                       (_K1280212821_)
                                       (_E1280112816_)))))
                              (_try-match1279912840_
                               (lambda ()
                                 (let ((_K1280312830_
                                        (lambda (_proc12828_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc12828_))))
                                   (if (##pair? _rest1279712812_)
                                       (let ((_hd1280412833_
                                              (##car _rest1279712812_))
                                             (_tl1280512835_
                                              (##cdr _rest1279712812_)))
                                         (let ((_proc12838_ _hd1280412833_))
                                           (if (##null? _tl1280512835_)
                                               (_K1280312830_ _proc12838_)
                                               (_try-match1280012824_))))
                                       (_try-match1280012824_)))))
                              (_K1280612845_
                               (lambda (_core-id12843_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id12843_))))
                         (if (##pair? _rest1279712812_)
                             (let ((_hd1280712848_ (##car _rest1279712812_))
                                   (_tl1280812850_ (##cdr _rest1279712812_)))
                               (if (##eq? _hd1280712848_ '=>)
                                   (if (##pair? _tl1280812850_)
                                       (let ((_hd1280912853_
                                              (##car _tl1280812850_))
                                             (_tl1281012855_
                                              (##cdr _tl1280812850_)))
                                         (let ((_core-id12858_ _hd1280912853_))
                                           (if (##null? _tl1281012855_)
                                               (_K1280612845_ _core-id12858_)
                                               (_try-match1279912840_))))
                                       (_try-match1279912840_))
                                   (_try-match1279912840_)))
                             (_try-match1279912840_))))))))
             (if (##pair? _bind1278112788_)
                 (let ((_hd1278512863_ (##car _bind1278112788_))
                       (_tl1278612865_ (##cdr _bind1278112788_)))
                   (let* ((_id12868_ _hd1278512863_)
                          (_rest12870_ _tl1278612865_))
                     (_K1278412860_ _rest12870_ _id12868_)))
                 (_E1278312792_))))
         _bindings12778_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12875_)
          (let ((_bindings12877_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12775
             _self12875_
             _bindings12877_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g13072_
          (let ((_g13071_ (length _g13072_)))
            (cond ((fx= _g13071_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g13072_))
                  ((fx= _g13071_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12775
                          _g13072_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g13072_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self12690_)
      (letrec ((_linux-variant?12692_
                (lambda (_sys-type12744_)
                  (let* ((_g1274512753_
                          (string-split (symbol->string _sys-type12744_) '#\-))
                         (_E1274812757_
                          (lambda ()
                            (error '"No clause matching" _g1274512753_)))
                         (_else1274712761_ (lambda () '#f))
                         (_K1274912766_
                          (lambda (_rest12764_) (not (null? _rest12764_)))))
                    (if (##pair? _g1274512753_)
                        (let ((_hd1275012769_ (##car _g1274512753_))
                              (_tl1275112771_ (##cdr _g1274512753_)))
                          (if (equal? _hd1275012769_ '"linux")
                              (let ((_rest12774_ _tl1275112771_))
                                (_K1274912766_ _rest12774_))
                              (_else1274712761_)))
                        (_else1274712761_))))))
        (begin
          (gx#core-bind-feature!__opt-lambda9129 'gerbil '#f '0 _self12690_)
          (gx#core-bind-feature!__opt-lambda9129
           (gerbil-system)
           '#f
           '0
           _self12690_)
          (let* ((_g1269312705_ (system-type))
                 (_E1269612709_
                  (lambda () (error '"No clause matching" _g1269312705_)))
                 (_else1269512713_ (lambda () '#!void))
                 (_K1269712720_
                  (lambda (_sys-type12716_ _sys-vendor12717_ _sys-cpu12718_)
                    (begin
                      (gx#core-bind-feature!__opt-lambda9129
                       _sys-cpu12718_
                       '#f
                       '0
                       _self12690_)
                      (gx#core-bind-feature!__opt-lambda9129
                       _sys-type12716_
                       '#f
                       '0
                       _self12690_)
                      (if (_linux-variant?12692_ _sys-type12716_)
                          (gx#core-bind-feature!__opt-lambda9129
                           'linux
                           '#f
                           '0
                           _self12690_)
                          '#!void)))))
            (if (##pair? _g1269312705_)
                (let ((_hd1269812723_ (##car _g1269312705_))
                      (_tl1269912725_ (##cdr _g1269312705_)))
                  (let ((_sys-cpu12728_ _hd1269812723_))
                    (if (##pair? _tl1269912725_)
                        (let ((_hd1270012730_ (##car _tl1269912725_))
                              (_tl1270112732_ (##cdr _tl1269912725_)))
                          (let ((_sys-vendor12735_ _hd1270012730_))
                            (if (##pair? _tl1270112732_)
                                (let ((_hd1270212737_ (##car _tl1270112732_))
                                      (_tl1270312739_ (##cdr _tl1270112732_)))
                                  (let ((_sys-type12742_ _hd1270212737_))
                                    (if (##null? _tl1270312739_)
                                        (_K1269712720_
                                         _sys-type12742_
                                         _sys-vendor12735_
                                         _sys-cpu12728_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
