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
    (define gx#root-context:::init!__opt-lambda13105
      (lambda (_self13107_ _bind?13108_)
        (begin
          (struct-instance-init! _self13107_ 'root (make-hash-table-eq))
          (if _bind?13108_
              (begin
                (call-method _self13107_ 'bind-core-syntax-expanders!)
                (call-method _self13107_ 'bind-core-macro-expanders!)
                (call-method _self13107_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self13113_)
          (let ((_bind?13115_ '#t))
            (gx#root-context:::init!__opt-lambda13105
             _self13113_
             _bind?13115_))))
      (define gx#root-context:::init!
        (lambda _g13121_
          (let ((_g13120_ (length _g13121_)))
            (cond ((fx= _g13120_ 1)
                   (apply gx#root-context:::init!__0 _g13121_))
                  ((fx= _g13120_ 2)
                   (apply gx#root-context:::init!__opt-lambda13105 _g13121_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g13121_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda13083
      (lambda (_self13085_ _super13086_)
        (let ((_super13094_
               (let ((_$e13088_ _super13086_))
                 (if _$e13088_
                     _$e13088_
                     (let ((_$e13091_ (gx#core-context-root__0)))
                       (if _$e13091_
                           _$e13091_
                           (let ((__obj13119
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj13119)
                               __obj13119))))))))
          (struct-instance-init!
           _self13085_
           'top
           (make-hash-table-eq)
           _super13094_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self13099_)
          (let ((_super13101_ '#f))
            (gx#top-context:::init!__opt-lambda13083
             _self13099_
             _super13101_))))
      (define gx#top-context:::init!
        (lambda _g13123_
          (let ((_g13122_ (length _g13123_)))
            (cond ((fx= _g13122_ 1) (apply gx#top-context:::init!__0 _g13123_))
                  ((fx= _g13122_ 2)
                   (apply gx#top-context:::init!__opt-lambda13083 _g13123_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g13123_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12936
      (lambda (_self12938_ _bindings12939_)
        (for-each
         (lambda (_bind12941_)
           (let* ((_bind1294212949_ _bind12941_)
                  (_E1294412953_
                   (lambda () (error '"No clause matching" _bind1294212949_)))
                  (_K1294513062_
                   (lambda (_rest12956_ _id12957_)
                     (gx#core-context-put!
                      _self12938_
                      _id12957_
                      (##structure
                       gx#syntax-binding::t
                       _id12957_
                       _id12957_
                       '#f
                       (let* ((_rest1295812969_ _rest12956_)
                              (_E1296012973_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1295812969_)))
                              (_K1296113038_
                               (lambda (_compiler12976_
                                        _expander12977_
                                        _key12978_)
                                 ((let* ((_key1297912992_ _key12978_)
                                         (_E1298512996_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1297912992_)))
                                         (_try-match1298413004_
                                          (lambda ()
                                            (let ((_K1298613001_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1297912992_
                                                         'expr:)
                                                  (_K1298613001_)
                                                  (_E1298512996_)))))
                                         (_try-match1298313012_
                                          (lambda ()
                                            (let ((_K1298713009_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1297912992_
                                                         'special:)
                                                  (_K1298713009_)
                                                  (_try-match1298413004_)))))
                                         (_try-match1298213020_
                                          (lambda ()
                                            (let ((_K1298813017_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1297912992_
                                                         'define:)
                                                  (_K1298813017_)
                                                  (_try-match1298313012_)))))
                                         (_try-match1298113028_
                                          (lambda ()
                                            (let ((_K1298913025_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1297912992_
                                                         'module:)
                                                  (_K1298913025_)
                                                  (_try-match1298213020_)))))
                                         (_K1299013032_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1297912992_ 'top:)
                                        (_K1299013032_)
                                        (_try-match1298113028_)))
                                  _expander12977_
                                  _id12957_
                                  (let ((_$e13035_ _compiler12976_))
                                    (if _$e13035_
                                        _$e13035_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1295812969_)
                             (let ((_hd1296213041_ (##car _rest1295812969_))
                                   (_tl1296313043_ (##cdr _rest1295812969_)))
                               (let ((_key13046_ _hd1296213041_))
                                 (if (##pair? _tl1296313043_)
                                     (let ((_hd1296413048_
                                            (##car _tl1296313043_))
                                           (_tl1296513050_
                                            (##cdr _tl1296313043_)))
                                       (let ((_expander13053_ _hd1296413048_))
                                         (if (##pair? _tl1296513050_)
                                             (let ((_hd1296613055_
                                                    (##car _tl1296513050_))
                                                   (_tl1296713057_
                                                    (##cdr _tl1296513050_)))
                                               (let ((_compiler13060_
                                                      _hd1296613055_))
                                                 (if (##null? _tl1296713057_)
                                                     (_K1296113038_
                                                      _compiler13060_
                                                      _expander13053_
                                                      _key13046_)
                                                     (_E1296012973_))))
                                             (_E1296012973_))))
                                     (_E1296012973_))))
                             (_E1296012973_))))))))
             (if (##pair? _bind1294212949_)
                 (let ((_hd1294613065_ (##car _bind1294212949_))
                       (_tl1294713067_ (##cdr _bind1294212949_)))
                   (let* ((_id13070_ _hd1294613065_)
                          (_rest13072_ _tl1294713067_))
                     (_K1294513062_ _rest13072_ _id13070_)))
                 (_E1294412953_))))
         _bindings12939_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self13077_)
          (let ((_bindings13079_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12936
             _self13077_
             _bindings13079_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g13125_
          (let ((_g13124_ (length _g13125_)))
            (cond ((fx= _g13124_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g13125_))
                  ((fx= _g13124_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12936
                          _g13125_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g13125_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12830
      (lambda (_self12832_ _bindings12833_)
        (for-each
         (lambda (_bind12835_)
           (let* ((_bind1283612843_ _bind12835_)
                  (_E1283812847_
                   (lambda () (error '"No clause matching" _bind1283612843_)))
                  (_K1283912915_
                   (lambda (_rest12850_ _id12851_)
                     (gx#core-context-put!
                      _self12832_
                      _id12851_
                      (##structure
                       gx#syntax-binding::t
                       _id12851_
                       _id12851_
                       '#f
                       (let* ((_rest1285212867_ _rest12850_)
                              (_E1285612871_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1285212867_)))
                              (_try-match1285512879_
                               (lambda ()
                                 (let ((_K1285712876_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id12851_))))
                                   (if (##null? _rest1285212867_)
                                       (_K1285712876_)
                                       (_E1285612871_)))))
                              (_try-match1285412895_
                               (lambda ()
                                 (let ((_K1285812885_
                                        (lambda (_proc12883_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc12883_))))
                                   (if (##pair? _rest1285212867_)
                                       (let ((_hd1285912888_
                                              (##car _rest1285212867_))
                                             (_tl1286012890_
                                              (##cdr _rest1285212867_)))
                                         (let ((_proc12893_ _hd1285912888_))
                                           (if (##null? _tl1286012890_)
                                               (_K1285812885_ _proc12893_)
                                               (_try-match1285512879_))))
                                       (_try-match1285512879_)))))
                              (_K1286112900_
                               (lambda (_core-id12898_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id12898_))))
                         (if (##pair? _rest1285212867_)
                             (let ((_hd1286212903_ (##car _rest1285212867_))
                                   (_tl1286312905_ (##cdr _rest1285212867_)))
                               (if (##eq? _hd1286212903_ '=>)
                                   (if (##pair? _tl1286312905_)
                                       (let ((_hd1286412908_
                                              (##car _tl1286312905_))
                                             (_tl1286512910_
                                              (##cdr _tl1286312905_)))
                                         (let ((_core-id12913_ _hd1286412908_))
                                           (if (##null? _tl1286512910_)
                                               (_K1286112900_ _core-id12913_)
                                               (_try-match1285412895_))))
                                       (_try-match1285412895_))
                                   (_try-match1285412895_)))
                             (_try-match1285412895_))))))))
             (if (##pair? _bind1283612843_)
                 (let ((_hd1284012918_ (##car _bind1283612843_))
                       (_tl1284112920_ (##cdr _bind1283612843_)))
                   (let* ((_id12923_ _hd1284012918_)
                          (_rest12925_ _tl1284112920_))
                     (_K1283912915_ _rest12925_ _id12923_)))
                 (_E1283812847_))))
         _bindings12833_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12930_)
          (let ((_bindings12932_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12830
             _self12930_
             _bindings12932_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g13127_
          (let ((_g13126_ (length _g13127_)))
            (cond ((fx= _g13126_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g13127_))
                  ((fx= _g13126_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12830
                          _g13127_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g13127_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self12745_)
      (letrec ((_linux-variant?12747_
                (lambda (_sys-type12799_)
                  (let* ((_g1280012808_
                          (string-split (symbol->string _sys-type12799_) '#\-))
                         (_E1280312812_
                          (lambda ()
                            (error '"No clause matching" _g1280012808_)))
                         (_else1280212816_ (lambda () '#f))
                         (_K1280412821_
                          (lambda (_rest12819_) (not (null? _rest12819_)))))
                    (if (##pair? _g1280012808_)
                        (let ((_hd1280512824_ (##car _g1280012808_))
                              (_tl1280612826_ (##cdr _g1280012808_)))
                          (if (equal? _hd1280512824_ '"linux")
                              (let ((_rest12829_ _tl1280612826_))
                                (_K1280412821_ _rest12829_))
                              (_else1280212816_)))
                        (_else1280212816_))))))
        (begin
          (gx#core-bind-feature!__opt-lambda9126 'gerbil '#f '0 _self12745_)
          (gx#core-bind-feature!__opt-lambda9126
           (gerbil-system)
           '#f
           '0
           _self12745_)
          (let* ((_g1274812760_ (system-type))
                 (_E1275112764_
                  (lambda () (error '"No clause matching" _g1274812760_)))
                 (_else1275012768_ (lambda () '#!void))
                 (_K1275212775_
                  (lambda (_sys-type12771_ _sys-vendor12772_ _sys-cpu12773_)
                    (begin
                      (gx#core-bind-feature!__opt-lambda9126
                       _sys-cpu12773_
                       '#f
                       '0
                       _self12745_)
                      (gx#core-bind-feature!__opt-lambda9126
                       _sys-type12771_
                       '#f
                       '0
                       _self12745_)
                      (if (_linux-variant?12747_ _sys-type12771_)
                          (gx#core-bind-feature!__opt-lambda9126
                           'linux
                           '#f
                           '0
                           _self12745_)
                          '#!void)))))
            (if (##pair? _g1274812760_)
                (let ((_hd1275312778_ (##car _g1274812760_))
                      (_tl1275412780_ (##cdr _g1274812760_)))
                  (let ((_sys-cpu12783_ _hd1275312778_))
                    (if (##pair? _tl1275412780_)
                        (let ((_hd1275512785_ (##car _tl1275412780_))
                              (_tl1275612787_ (##cdr _tl1275412780_)))
                          (let ((_sys-vendor12790_ _hd1275512785_))
                            (if (##pair? _tl1275612787_)
                                (let ((_hd1275712792_ (##car _tl1275612787_))
                                      (_tl1275812794_ (##cdr _tl1275612787_)))
                                  (let ((_sys-type12797_ _hd1275712792_))
                                    (if (##null? _tl1275812794_)
                                        (_K1275212775_
                                         _sys-type12797_
                                         _sys-vendor12790_
                                         _sys-cpu12783_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
