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
    (define gx#root-context:::init!__opt-lambda12868
      (lambda (_self12870_ _bind?12871_)
        (begin
          (direct-struct-instance-init! _self12870_ 'root (make-hash-table-eq))
          (if _bind?12871_
              (begin
                (call-method _self12870_ 'bind-core-syntax-expanders!)
                (call-method _self12870_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self12876_)
          (let ((_bind?12878_ '#t))
            (gx#root-context:::init!__opt-lambda12868
             _self12876_
             _bind?12878_))))
      (define gx#root-context:::init!
        (lambda _g12884_
          (let ((_g12883_ (length _g12884_)))
            (cond ((fx= _g12883_ 1)
                   (apply gx#root-context:::init!__0 _g12884_))
                  ((fx= _g12883_ 2)
                   (apply gx#root-context:::init!__opt-lambda12868 _g12884_))
                  (else (error "No clause matching arguments" _g12884_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12846
      (lambda (_self12848_ _super12849_)
        (let ((_super12857_
               (let ((_$e12851_ _super12849_))
                 (if _$e12851_
                     _$e12851_
                     (let ((_$e12854_ (gx#core-context-root__0)))
                       (if _$e12854_
                           _$e12854_
                           (let ((__obj12882
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj12882)
                               __obj12882))))))))
          (direct-struct-instance-init!
           _self12848_
           'top
           (make-hash-table-eq)
           _super12857_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self12862_)
          (let ((_super12864_ '#f))
            (gx#top-context:::init!__opt-lambda12846
             _self12862_
             _super12864_))))
      (define gx#top-context:::init!
        (lambda _g12886_
          (let ((_g12885_ (length _g12886_)))
            (cond ((fx= _g12885_ 1) (apply gx#top-context:::init!__0 _g12886_))
                  ((fx= _g12885_ 2)
                   (apply gx#top-context:::init!__opt-lambda12846 _g12886_))
                  (else (error "No clause matching arguments" _g12886_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12699
      (lambda (_self12701_ _bindings12702_)
        (for-each
         (lambda (_bind12704_)
           (let ((_bind1270512712_ _bind12704_))
             (let ((_E1270712716_
                    (lambda ()
                      (error '"No clause matching" _bind1270512712_))))
               (let ((_K1270812825_
                      (lambda (_rest12719_ _id12720_)
                        (gx#core-context-put!
                         _self12701_
                         _id12720_
                         (##structure
                          gx#syntax-binding::t
                          _id12720_
                          _id12720_
                          '#f
                          (let ((_rest1272112732_ _rest12719_))
                            (let ((_E1272312736_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1272112732_))))
                              (let ((_K1272412801_
                                     (lambda (_compiler12739_
                                              _expander12740_
                                              _key12741_)
                                       ((let ((_key1274212755_ _key12741_))
                                          (let ((_E1274812759_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1274212755_))))
                                            (let ((_try-match1274712767_
                                                   (lambda ()
                                                     (let ((_K1274912764_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1274212755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1274912764_)
                   (_E1274812759_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1274612775_
                                                     (lambda ()
                                                       (let ((_K1275012772_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1274212755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1275012772_)
                     (_try-match1274712767_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1274512783_
                                                       (lambda ()
                                                         (let ((_K1275112780_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1274212755_ 'define:)
                       (_K1275112780_)
                       (_try-match1274612775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1274412791_
                                                         (lambda ()
                                                           (let ((_K1275212788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1274212755_ 'module:)
                         (_K1275212788_)
                         (_try-match1274512783_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1275312795_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1274212755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1275312795_)
                  (_try-match1274412791_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12740_
                                        _id12720_
                                        (let ((_$e12798_ _compiler12739_))
                                          (if _$e12798_
                                              _$e12798_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1272112732_)
                                    (let ((_hd1272512804_
                                           (##car _rest1272112732_))
                                          (_tl1272612806_
                                           (##cdr _rest1272112732_)))
                                      (let ((_key12809_ _hd1272512804_))
                                        (if (##pair? _tl1272612806_)
                                            (let ((_hd1272712811_
                                                   (##car _tl1272612806_))
                                                  (_tl1272812813_
                                                   (##cdr _tl1272612806_)))
                                              (let ((_expander12816_
                                                     _hd1272712811_))
                                                (if (##pair? _tl1272812813_)
                                                    (let ((_hd1272912818_
                                                           (##car _tl1272812813_))
                                                          (_tl1273012820_
                                                           (##cdr _tl1272812813_)))
                                                      (let ((_compiler12823_
                                                             _hd1272912818_))
                                                        (if (##null? _tl1273012820_)
                                                            (_K1272412801_
                                                             _compiler12823_
                                                             _expander12816_
                                                             _key12809_)
                                                            (_E1272312736_))))
                                                    (_E1272312736_))))
                                            (_E1272312736_))))
                                    (_E1272312736_))))))))))
                 (if (##pair? _bind1270512712_)
                     (let ((_hd1270912828_ (##car _bind1270512712_))
                           (_tl1271012830_ (##cdr _bind1270512712_)))
                       (let ((_id12833_ _hd1270912828_))
                         (let ((_rest12835_ _tl1271012830_))
                           (_K1270812825_ _rest12835_ _id12833_))))
                     (_E1270712716_))))))
         _bindings12702_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12840_)
          (let ((_bindings12842_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12699
             _self12840_
             _bindings12842_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g12888_
          (let ((_g12887_ (length _g12888_)))
            (cond ((fx= _g12887_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g12888_))
                  ((fx= _g12887_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12699
                          _g12888_))
                  (else (error "No clause matching arguments" _g12888_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12593
      (lambda (_self12595_ _bindings12596_)
        (for-each
         (lambda (_bind12598_)
           (let ((_bind1259912606_ _bind12598_))
             (let ((_E1260112610_
                    (lambda ()
                      (error '"No clause matching" _bind1259912606_))))
               (let ((_K1260212678_
                      (lambda (_rest12613_ _id12614_)
                        (gx#core-context-put!
                         _self12595_
                         _id12614_
                         (##structure
                          gx#syntax-binding::t
                          _id12614_
                          _id12614_
                          '#f
                          (let ((_rest1261512630_ _rest12613_))
                            (let ((_E1261912634_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1261512630_))))
                              (let ((_try-match1261812642_
                                     (lambda ()
                                       (let ((_K1262012639_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12614_))))
                                         (if (##null? _rest1261512630_)
                                             (_K1262012639_)
                                             (_E1261912634_))))))
                                (let ((_try-match1261712658_
                                       (lambda ()
                                         (let ((_K1262112648_
                                                (lambda (_proc12646_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12646_))))
                                           (if (##pair? _rest1261512630_)
                                               (let ((_hd1262212651_
                                                      (##car _rest1261512630_))
                                                     (_tl1262312653_
                                                      (##cdr _rest1261512630_)))
                                                 (let ((_proc12656_
                                                        _hd1262212651_))
                                                   (if (##null? _tl1262312653_)
                                                       (_K1262112648_
                                                        _proc12656_)
                                                       (_try-match1261812642_))))
                                               (_try-match1261812642_))))))
                                  (let ((_K1262412663_
                                         (lambda (_core-id12661_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12661_))))
                                    (if (##pair? _rest1261512630_)
                                        (let ((_hd1262512666_
                                               (##car _rest1261512630_))
                                              (_tl1262612668_
                                               (##cdr _rest1261512630_)))
                                          (if (##eq? _hd1262512666_ '=>)
                                              (if (##pair? _tl1262612668_)
                                                  (let ((_hd1262712671_
                                                         (##car _tl1262612668_))
                                                        (_tl1262812673_
                                                         (##cdr _tl1262612668_)))
                                                    (let ((_core-id12676_
                                                           _hd1262712671_))
                                                      (if (##null? _tl1262812673_)
                                                          (_K1262412663_
                                                           _core-id12676_)
                                                          (_try-match1261712658_))))
                                                  (_try-match1261712658_))
                                              (_try-match1261712658_)))
                                        (_try-match1261712658_))))))))))))
                 (if (##pair? _bind1259912606_)
                     (let ((_hd1260312681_ (##car _bind1259912606_))
                           (_tl1260412683_ (##cdr _bind1259912606_)))
                       (let ((_id12686_ _hd1260312681_))
                         (let ((_rest12688_ _tl1260412683_))
                           (_K1260212678_ _rest12688_ _id12686_))))
                     (_E1260112610_))))))
         _bindings12596_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12693_)
          (let ((_bindings12695_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12593
             _self12693_
             _bindings12695_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g12890_
          (let ((_g12889_ (length _g12890_)))
            (cond ((fx= _g12889_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g12890_))
                  ((fx= _g12889_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12593
                          _g12890_))
                  (else (error "No clause matching arguments" _g12890_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
