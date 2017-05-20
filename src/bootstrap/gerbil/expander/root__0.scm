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
    (define gx#root-context:::init!__opt-lambda12792
      (lambda (_self12794_ _bind?12795_)
        (begin
          (direct-struct-instance-init! _self12794_ 'root (make-hash-table-eq))
          (if _bind?12795_
              (begin
                (call-method _self12794_ 'bind-core-syntax-expanders!)
                (call-method _self12794_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self12800_)
          (let ((_bind?12802_ '#t))
            (gx#root-context:::init!__opt-lambda12792
             _self12800_
             _bind?12802_))))
      (define gx#root-context:::init!
        (lambda _g12808_
          (let ((_g12807_ (length _g12808_)))
            (cond ((fx= _g12807_ 1)
                   (apply gx#root-context:::init!__0 _g12808_))
                  ((fx= _g12807_ 2)
                   (apply gx#root-context:::init!__opt-lambda12792 _g12808_))
                  (else (error "No clause matching arguments" _g12808_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12770
      (lambda (_self12772_ _super12773_)
        (let ((_super12781_
               (let ((_$e12775_ _super12773_))
                 (if _$e12775_
                     _$e12775_
                     (let ((_$e12778_ (gx#core-context-root__0)))
                       (if _$e12778_
                           _$e12778_
                           (let ((__obj12806
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj12806)
                               __obj12806))))))))
          (direct-struct-instance-init!
           _self12772_
           'top
           (make-hash-table-eq)
           _super12781_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self12786_)
          (let ((_super12788_ '#f))
            (gx#top-context:::init!__opt-lambda12770
             _self12786_
             _super12788_))))
      (define gx#top-context:::init!
        (lambda _g12810_
          (let ((_g12809_ (length _g12810_)))
            (cond ((fx= _g12809_ 1) (apply gx#top-context:::init!__0 _g12810_))
                  ((fx= _g12809_ 2)
                   (apply gx#top-context:::init!__opt-lambda12770 _g12810_))
                  (else (error "No clause matching arguments" _g12810_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12623
      (lambda (_self12625_ _bindings12626_)
        (for-each
         (lambda (_bind12628_)
           (let ((_bind1262912636_ _bind12628_))
             (let ((_E1263112640_
                    (lambda ()
                      (error '"No clause matching" _bind1262912636_))))
               (let ((_K1263212749_
                      (lambda (_rest12643_ _id12644_)
                        (gx#core-context-put!
                         _self12625_
                         _id12644_
                         (##structure
                          gx#syntax-binding::t
                          _id12644_
                          _id12644_
                          '#f
                          (let ((_rest1264512656_ _rest12643_))
                            (let ((_E1264712660_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1264512656_))))
                              (let ((_K1264812725_
                                     (lambda (_compiler12663_
                                              _expander12664_
                                              _key12665_)
                                       ((let ((_key1266612679_ _key12665_))
                                          (let ((_E1267212683_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1266612679_))))
                                            (let ((_try-match1267112691_
                                                   (lambda ()
                                                     (let ((_K1267312688_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1266612679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1267312688_)
                   (_E1267212683_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1267012699_
                                                     (lambda ()
                                                       (let ((_K1267412696_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1266612679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1267412696_)
                     (_try-match1267112691_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1266912707_
                                                       (lambda ()
                                                         (let ((_K1267512704_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1266612679_ 'define:)
                       (_K1267512704_)
                       (_try-match1267012699_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1266812715_
                                                         (lambda ()
                                                           (let ((_K1267612712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1266612679_ 'module:)
                         (_K1267612712_)
                         (_try-match1266912707_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1267712719_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1266612679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1267712719_)
                  (_try-match1266812715_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12664_
                                        _id12644_
                                        (let ((_$e12722_ _compiler12663_))
                                          (if _$e12722_
                                              _$e12722_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1264512656_)
                                    (let ((_hd1264912728_
                                           (##car _rest1264512656_))
                                          (_tl1265012730_
                                           (##cdr _rest1264512656_)))
                                      (let ((_key12733_ _hd1264912728_))
                                        (if (##pair? _tl1265012730_)
                                            (let ((_hd1265112735_
                                                   (##car _tl1265012730_))
                                                  (_tl1265212737_
                                                   (##cdr _tl1265012730_)))
                                              (let ((_expander12740_
                                                     _hd1265112735_))
                                                (if (##pair? _tl1265212737_)
                                                    (let ((_hd1265312742_
                                                           (##car _tl1265212737_))
                                                          (_tl1265412744_
                                                           (##cdr _tl1265212737_)))
                                                      (let ((_compiler12747_
                                                             _hd1265312742_))
                                                        (if (##null? _tl1265412744_)
                                                            (_K1264812725_
                                                             _compiler12747_
                                                             _expander12740_
                                                             _key12733_)
                                                            (_E1264712660_))))
                                                    (_E1264712660_))))
                                            (_E1264712660_))))
                                    (_E1264712660_))))))))))
                 (if (##pair? _bind1262912636_)
                     (let ((_hd1263312752_ (##car _bind1262912636_))
                           (_tl1263412754_ (##cdr _bind1262912636_)))
                       (let ((_id12757_ _hd1263312752_))
                         (let ((_rest12759_ _tl1263412754_))
                           (_K1263212749_ _rest12759_ _id12757_))))
                     (_E1263112640_))))))
         _bindings12626_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12764_)
          (let ((_bindings12766_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12623
             _self12764_
             _bindings12766_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g12812_
          (let ((_g12811_ (length _g12812_)))
            (cond ((fx= _g12811_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g12812_))
                  ((fx= _g12811_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12623
                          _g12812_))
                  (else (error "No clause matching arguments" _g12812_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12517
      (lambda (_self12519_ _bindings12520_)
        (for-each
         (lambda (_bind12522_)
           (let ((_bind1252312530_ _bind12522_))
             (let ((_E1252512534_
                    (lambda ()
                      (error '"No clause matching" _bind1252312530_))))
               (let ((_K1252612602_
                      (lambda (_rest12537_ _id12538_)
                        (gx#core-context-put!
                         _self12519_
                         _id12538_
                         (##structure
                          gx#syntax-binding::t
                          _id12538_
                          _id12538_
                          '#f
                          (let ((_rest1253912554_ _rest12537_))
                            (let ((_E1254312558_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1253912554_))))
                              (let ((_try-match1254212566_
                                     (lambda ()
                                       (let ((_K1254412563_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12538_))))
                                         (if (##null? _rest1253912554_)
                                             (_K1254412563_)
                                             (_E1254312558_))))))
                                (let ((_try-match1254112582_
                                       (lambda ()
                                         (let ((_K1254512572_
                                                (lambda (_proc12570_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12570_))))
                                           (if (##pair? _rest1253912554_)
                                               (let ((_hd1254612575_
                                                      (##car _rest1253912554_))
                                                     (_tl1254712577_
                                                      (##cdr _rest1253912554_)))
                                                 (let ((_proc12580_
                                                        _hd1254612575_))
                                                   (if (##null? _tl1254712577_)
                                                       (_K1254512572_
                                                        _proc12580_)
                                                       (_try-match1254212566_))))
                                               (_try-match1254212566_))))))
                                  (let ((_K1254812587_
                                         (lambda (_core-id12585_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12585_))))
                                    (if (##pair? _rest1253912554_)
                                        (let ((_hd1254912590_
                                               (##car _rest1253912554_))
                                              (_tl1255012592_
                                               (##cdr _rest1253912554_)))
                                          (if (##eq? _hd1254912590_ '=>)
                                              (if (##pair? _tl1255012592_)
                                                  (let ((_hd1255112595_
                                                         (##car _tl1255012592_))
                                                        (_tl1255212597_
                                                         (##cdr _tl1255012592_)))
                                                    (let ((_core-id12600_
                                                           _hd1255112595_))
                                                      (if (##null? _tl1255212597_)
                                                          (_K1254812587_
                                                           _core-id12600_)
                                                          (_try-match1254112582_))))
                                                  (_try-match1254112582_))
                                              (_try-match1254112582_)))
                                        (_try-match1254112582_))))))))))))
                 (if (##pair? _bind1252312530_)
                     (let ((_hd1252712605_ (##car _bind1252312530_))
                           (_tl1252812607_ (##cdr _bind1252312530_)))
                       (let ((_id12610_ _hd1252712605_))
                         (let ((_rest12612_ _tl1252812607_))
                           (_K1252612602_ _rest12612_ _id12610_))))
                     (_E1252512534_))))))
         _bindings12520_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12617_)
          (let ((_bindings12619_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12517
             _self12617_
             _bindings12619_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g12814_
          (let ((_g12813_ (length _g12814_)))
            (cond ((fx= _g12813_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g12814_))
                  ((fx= _g12813_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12517
                          _g12814_))
                  (else (error "No clause matching arguments" _g12814_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
