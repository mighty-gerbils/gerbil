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
    (define gx#root-context:::init!__opt-lambda12954
      (lambda (_self12956_ _bind?12957_)
        (begin
          (direct-struct-instance-init! _self12956_ 'root (make-hash-table-eq))
          (if _bind?12957_
              (begin
                (call-method _self12956_ 'bind-core-syntax-expanders!)
                (call-method _self12956_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self12962_)
          (let ((_bind?12964_ '#t))
            (gx#root-context:::init!__opt-lambda12954
             _self12962_
             _bind?12964_))))
      (define gx#root-context:::init!
        (lambda _g12970_
          (let ((_g12969_ (length _g12970_)))
            (cond ((fx= _g12969_ 1)
                   (apply gx#root-context:::init!__0 _g12970_))
                  ((fx= _g12969_ 2)
                   (apply gx#root-context:::init!__opt-lambda12954 _g12970_))
                  (else (error "No clause matching arguments" _g12970_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12932
      (lambda (_self12934_ _super12935_)
        (let ((_super12943_
               (let ((_$e12937_ _super12935_))
                 (if _$e12937_
                     _$e12937_
                     (let ((_$e12940_ (gx#core-context-root__0)))
                       (if _$e12940_
                           _$e12940_
                           (let ((__obj12968
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj12968)
                               __obj12968))))))))
          (direct-struct-instance-init!
           _self12934_
           'top
           (make-hash-table-eq)
           _super12943_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self12948_)
          (let ((_super12950_ '#f))
            (gx#top-context:::init!__opt-lambda12932
             _self12948_
             _super12950_))))
      (define gx#top-context:::init!
        (lambda _g12972_
          (let ((_g12971_ (length _g12972_)))
            (cond ((fx= _g12971_ 1) (apply gx#top-context:::init!__0 _g12972_))
                  ((fx= _g12971_ 2)
                   (apply gx#top-context:::init!__opt-lambda12932 _g12972_))
                  (else (error "No clause matching arguments" _g12972_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12785
      (lambda (_self12787_ _bindings12788_)
        (for-each
         (lambda (_bind12790_)
           (let ((_bind1279112798_ _bind12790_))
             (let ((_E1279312802_
                    (lambda ()
                      (error '"No clause matching" _bind1279112798_))))
               (let ((_K1279412911_
                      (lambda (_rest12805_ _id12806_)
                        (gx#core-context-put!
                         _self12787_
                         _id12806_
                         (##structure
                          gx#syntax-binding::t
                          _id12806_
                          _id12806_
                          '#f
                          (let ((_rest1280712818_ _rest12805_))
                            (let ((_E1280912822_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1280712818_))))
                              (let ((_K1281012887_
                                     (lambda (_compiler12825_
                                              _expander12826_
                                              _key12827_)
                                       ((let ((_key1282812841_ _key12827_))
                                          (let ((_E1283412845_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1282812841_))))
                                            (let ((_try-match1283312853_
                                                   (lambda ()
                                                     (let ((_K1283512850_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1282812841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1283512850_)
                   (_E1283412845_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1283212861_
                                                     (lambda ()
                                                       (let ((_K1283612858_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1282812841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1283612858_)
                     (_try-match1283312853_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1283112869_
                                                       (lambda ()
                                                         (let ((_K1283712866_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1282812841_ 'define:)
                       (_K1283712866_)
                       (_try-match1283212861_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1283012877_
                                                         (lambda ()
                                                           (let ((_K1283812874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1282812841_ 'module:)
                         (_K1283812874_)
                         (_try-match1283112869_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1283912881_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1282812841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1283912881_)
                  (_try-match1283012877_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12826_
                                        _id12806_
                                        (let ((_$e12884_ _compiler12825_))
                                          (if _$e12884_
                                              _$e12884_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1280712818_)
                                    (let ((_hd1281112890_
                                           (##car _rest1280712818_))
                                          (_tl1281212892_
                                           (##cdr _rest1280712818_)))
                                      (let ((_key12895_ _hd1281112890_))
                                        (if (##pair? _tl1281212892_)
                                            (let ((_hd1281312897_
                                                   (##car _tl1281212892_))
                                                  (_tl1281412899_
                                                   (##cdr _tl1281212892_)))
                                              (let ((_expander12902_
                                                     _hd1281312897_))
                                                (if (##pair? _tl1281412899_)
                                                    (let ((_hd1281512904_
                                                           (##car _tl1281412899_))
                                                          (_tl1281612906_
                                                           (##cdr _tl1281412899_)))
                                                      (let ((_compiler12909_
                                                             _hd1281512904_))
                                                        (if (##null? _tl1281612906_)
                                                            (_K1281012887_
                                                             _compiler12909_
                                                             _expander12902_
                                                             _key12895_)
                                                            (_E1280912822_))))
                                                    (_E1280912822_))))
                                            (_E1280912822_))))
                                    (_E1280912822_))))))))))
                 (if (##pair? _bind1279112798_)
                     (let ((_hd1279512914_ (##car _bind1279112798_))
                           (_tl1279612916_ (##cdr _bind1279112798_)))
                       (let ((_id12919_ _hd1279512914_))
                         (let ((_rest12921_ _tl1279612916_))
                           (_K1279412911_ _rest12921_ _id12919_))))
                     (_E1279312802_))))))
         _bindings12788_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12926_)
          (let ((_bindings12928_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12785
             _self12926_
             _bindings12928_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g12974_
          (let ((_g12973_ (length _g12974_)))
            (cond ((fx= _g12973_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g12974_))
                  ((fx= _g12973_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12785
                          _g12974_))
                  (else (error "No clause matching arguments" _g12974_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12679
      (lambda (_self12681_ _bindings12682_)
        (for-each
         (lambda (_bind12684_)
           (let ((_bind1268512692_ _bind12684_))
             (let ((_E1268712696_
                    (lambda ()
                      (error '"No clause matching" _bind1268512692_))))
               (let ((_K1268812764_
                      (lambda (_rest12699_ _id12700_)
                        (gx#core-context-put!
                         _self12681_
                         _id12700_
                         (##structure
                          gx#syntax-binding::t
                          _id12700_
                          _id12700_
                          '#f
                          (let ((_rest1270112716_ _rest12699_))
                            (let ((_E1270512720_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1270112716_))))
                              (let ((_try-match1270412728_
                                     (lambda ()
                                       (let ((_K1270612725_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12700_))))
                                         (if (##null? _rest1270112716_)
                                             (_K1270612725_)
                                             (_E1270512720_))))))
                                (let ((_try-match1270312744_
                                       (lambda ()
                                         (let ((_K1270712734_
                                                (lambda (_proc12732_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12732_))))
                                           (if (##pair? _rest1270112716_)
                                               (let ((_hd1270812737_
                                                      (##car _rest1270112716_))
                                                     (_tl1270912739_
                                                      (##cdr _rest1270112716_)))
                                                 (let ((_proc12742_
                                                        _hd1270812737_))
                                                   (if (##null? _tl1270912739_)
                                                       (_K1270712734_
                                                        _proc12742_)
                                                       (_try-match1270412728_))))
                                               (_try-match1270412728_))))))
                                  (let ((_K1271012749_
                                         (lambda (_core-id12747_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12747_))))
                                    (if (##pair? _rest1270112716_)
                                        (let ((_hd1271112752_
                                               (##car _rest1270112716_))
                                              (_tl1271212754_
                                               (##cdr _rest1270112716_)))
                                          (if (##eq? _hd1271112752_ '=>)
                                              (if (##pair? _tl1271212754_)
                                                  (let ((_hd1271312757_
                                                         (##car _tl1271212754_))
                                                        (_tl1271412759_
                                                         (##cdr _tl1271212754_)))
                                                    (let ((_core-id12762_
                                                           _hd1271312757_))
                                                      (if (##null? _tl1271412759_)
                                                          (_K1271012749_
                                                           _core-id12762_)
                                                          (_try-match1270312744_))))
                                                  (_try-match1270312744_))
                                              (_try-match1270312744_)))
                                        (_try-match1270312744_))))))))))))
                 (if (##pair? _bind1268512692_)
                     (let ((_hd1268912767_ (##car _bind1268512692_))
                           (_tl1269012769_ (##cdr _bind1268512692_)))
                       (let ((_id12772_ _hd1268912767_))
                         (let ((_rest12774_ _tl1269012769_))
                           (_K1268812764_ _rest12774_ _id12772_))))
                     (_E1268712696_))))))
         _bindings12682_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12779_)
          (let ((_bindings12781_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12679
             _self12779_
             _bindings12781_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g12976_
          (let ((_g12975_ (length _g12976_)))
            (cond ((fx= _g12975_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g12976_))
                  ((fx= _g12975_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12679
                          _g12976_))
                  (else (error "No clause matching arguments" _g12976_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
