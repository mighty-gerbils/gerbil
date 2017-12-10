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
    (define gx#root-context:::init!__opt-lambda13107
      (lambda (_self13109_ _bind?13110_)
        (begin
          (struct-instance-init! _self13109_ 'root (make-hash-table-eq))
          (if _bind?13110_
              (begin
                (call-method _self13109_ 'bind-core-syntax-expanders!)
                (call-method _self13109_ 'bind-core-macro-expanders!)
                (call-method _self13109_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self13115_)
          (let ((_bind?13117_ '#t))
            (gx#root-context:::init!__opt-lambda13107
             _self13115_
             _bind?13117_))))
      (define gx#root-context:::init!
        (lambda _g13123_
          (let ((_g13122_ (length _g13123_)))
            (cond ((fx= _g13122_ 1)
                   (apply gx#root-context:::init!__0 _g13123_))
                  ((fx= _g13122_ 2)
                   (apply gx#root-context:::init!__opt-lambda13107 _g13123_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g13123_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda13085
      (lambda (_self13087_ _super13088_)
        (let ((_super13096_
               (let ((_$e13090_ _super13088_))
                 (if _$e13090_
                     _$e13090_
                     (let ((_$e13093_ (gx#core-context-root__0)))
                       (if _$e13093_
                           _$e13093_
                           (let ((__obj13121
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj13121)
                               __obj13121))))))))
          (struct-instance-init!
           _self13087_
           'top
           (make-hash-table-eq)
           _super13096_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self13101_)
          (let ((_super13103_ '#f))
            (gx#top-context:::init!__opt-lambda13085
             _self13101_
             _super13103_))))
      (define gx#top-context:::init!
        (lambda _g13125_
          (let ((_g13124_ (length _g13125_)))
            (cond ((fx= _g13124_ 1) (apply gx#top-context:::init!__0 _g13125_))
                  ((fx= _g13124_ 2)
                   (apply gx#top-context:::init!__opt-lambda13085 _g13125_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g13125_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12938
      (lambda (_self12940_ _bindings12941_)
        (for-each
         (lambda (_bind12943_)
           (let* ((_bind1294412951_ _bind12943_)
                  (_E1294612955_
                   (lambda () (error '"No clause matching" _bind1294412951_)))
                  (_K1294713064_
                   (lambda (_rest12958_ _id12959_)
                     (gx#core-context-put!
                      _self12940_
                      _id12959_
                      (##structure
                       gx#syntax-binding::t
                       _id12959_
                       _id12959_
                       '#f
                       (let* ((_rest1296012971_ _rest12958_)
                              (_E1296212975_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1296012971_)))
                              (_K1296313040_
                               (lambda (_compiler12978_
                                        _expander12979_
                                        _key12980_)
                                 ((let* ((_key1298112994_ _key12980_)
                                         (_E1298712998_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1298112994_)))
                                         (_try-match1298613006_
                                          (lambda ()
                                            (let ((_K1298813003_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1298112994_
                                                         'expr:)
                                                  (_K1298813003_)
                                                  (_E1298712998_)))))
                                         (_try-match1298513014_
                                          (lambda ()
                                            (let ((_K1298913011_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1298112994_
                                                         'special:)
                                                  (_K1298913011_)
                                                  (_try-match1298613006_)))))
                                         (_try-match1298413022_
                                          (lambda ()
                                            (let ((_K1299013019_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1298112994_
                                                         'define:)
                                                  (_K1299013019_)
                                                  (_try-match1298513014_)))))
                                         (_try-match1298313030_
                                          (lambda ()
                                            (let ((_K1299113027_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1298112994_
                                                         'module:)
                                                  (_K1299113027_)
                                                  (_try-match1298413022_)))))
                                         (_K1299213034_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1298112994_ 'top:)
                                        (_K1299213034_)
                                        (_try-match1298313030_)))
                                  _expander12979_
                                  _id12959_
                                  (let ((_$e13037_ _compiler12978_))
                                    (if _$e13037_
                                        _$e13037_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1296012971_)
                             (let ((_hd1296413043_ (##car _rest1296012971_))
                                   (_tl1296513045_ (##cdr _rest1296012971_)))
                               (let ((_key13048_ _hd1296413043_))
                                 (if (##pair? _tl1296513045_)
                                     (let ((_hd1296613050_
                                            (##car _tl1296513045_))
                                           (_tl1296713052_
                                            (##cdr _tl1296513045_)))
                                       (let ((_expander13055_ _hd1296613050_))
                                         (if (##pair? _tl1296713052_)
                                             (let ((_hd1296813057_
                                                    (##car _tl1296713052_))
                                                   (_tl1296913059_
                                                    (##cdr _tl1296713052_)))
                                               (let ((_compiler13062_
                                                      _hd1296813057_))
                                                 (if (##null? _tl1296913059_)
                                                     (_K1296313040_
                                                      _compiler13062_
                                                      _expander13055_
                                                      _key13048_)
                                                     (_E1296212975_))))
                                             (_E1296212975_))))
                                     (_E1296212975_))))
                             (_E1296212975_))))))))
             (if (##pair? _bind1294412951_)
                 (let ((_hd1294813067_ (##car _bind1294412951_))
                       (_tl1294913069_ (##cdr _bind1294412951_)))
                   (let* ((_id13072_ _hd1294813067_)
                          (_rest13074_ _tl1294913069_))
                     (_K1294713064_ _rest13074_ _id13072_)))
                 (_E1294612955_))))
         _bindings12941_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self13079_)
          (let ((_bindings13081_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12938
             _self13079_
             _bindings13081_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g13127_
          (let ((_g13126_ (length _g13127_)))
            (cond ((fx= _g13126_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g13127_))
                  ((fx= _g13126_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12938
                          _g13127_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g13127_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12832
      (lambda (_self12834_ _bindings12835_)
        (for-each
         (lambda (_bind12837_)
           (let* ((_bind1283812845_ _bind12837_)
                  (_E1284012849_
                   (lambda () (error '"No clause matching" _bind1283812845_)))
                  (_K1284112917_
                   (lambda (_rest12852_ _id12853_)
                     (gx#core-context-put!
                      _self12834_
                      _id12853_
                      (##structure
                       gx#syntax-binding::t
                       _id12853_
                       _id12853_
                       '#f
                       (let* ((_rest1285412869_ _rest12852_)
                              (_E1285812873_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1285412869_)))
                              (_try-match1285712881_
                               (lambda ()
                                 (let ((_K1285912878_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id12853_))))
                                   (if (##null? _rest1285412869_)
                                       (_K1285912878_)
                                       (_E1285812873_)))))
                              (_try-match1285612897_
                               (lambda ()
                                 (let ((_K1286012887_
                                        (lambda (_proc12885_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc12885_))))
                                   (if (##pair? _rest1285412869_)
                                       (let ((_hd1286112890_
                                              (##car _rest1285412869_))
                                             (_tl1286212892_
                                              (##cdr _rest1285412869_)))
                                         (let ((_proc12895_ _hd1286112890_))
                                           (if (##null? _tl1286212892_)
                                               (_K1286012887_ _proc12895_)
                                               (_try-match1285712881_))))
                                       (_try-match1285712881_)))))
                              (_K1286312902_
                               (lambda (_core-id12900_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id12900_))))
                         (if (##pair? _rest1285412869_)
                             (let ((_hd1286412905_ (##car _rest1285412869_))
                                   (_tl1286512907_ (##cdr _rest1285412869_)))
                               (if (##eq? _hd1286412905_ '=>)
                                   (if (##pair? _tl1286512907_)
                                       (let ((_hd1286612910_
                                              (##car _tl1286512907_))
                                             (_tl1286712912_
                                              (##cdr _tl1286512907_)))
                                         (let ((_core-id12915_ _hd1286612910_))
                                           (if (##null? _tl1286712912_)
                                               (_K1286312902_ _core-id12915_)
                                               (_try-match1285612897_))))
                                       (_try-match1285612897_))
                                   (_try-match1285612897_)))
                             (_try-match1285612897_))))))))
             (if (##pair? _bind1283812845_)
                 (let ((_hd1284212920_ (##car _bind1283812845_))
                       (_tl1284312922_ (##cdr _bind1283812845_)))
                   (let* ((_id12925_ _hd1284212920_)
                          (_rest12927_ _tl1284312922_))
                     (_K1284112917_ _rest12927_ _id12925_)))
                 (_E1284012849_))))
         _bindings12835_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12932_)
          (let ((_bindings12934_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12832
             _self12932_
             _bindings12934_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g13129_
          (let ((_g13128_ (length _g13129_)))
            (cond ((fx= _g13128_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g13129_))
                  ((fx= _g13128_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12832
                          _g13129_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g13129_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self12747_)
      (letrec ((_linux-variant?12749_
                (lambda (_sys-type12801_)
                  (let* ((_g1280212810_
                          (string-split (symbol->string _sys-type12801_) '#\-))
                         (_E1280512814_
                          (lambda ()
                            (error '"No clause matching" _g1280212810_)))
                         (_else1280412818_ (lambda () '#f))
                         (_K1280612823_
                          (lambda (_rest12821_) (not (null? _rest12821_)))))
                    (if (##pair? _g1280212810_)
                        (let ((_hd1280712826_ (##car _g1280212810_))
                              (_tl1280812828_ (##cdr _g1280212810_)))
                          (if (equal? _hd1280712826_ '"linux")
                              (let ((_rest12831_ _tl1280812828_))
                                (_K1280612823_ _rest12831_))
                              (_else1280412818_)))
                        (_else1280412818_))))))
        (begin
          (gx#core-bind-feature!__opt-lambda9126 'gerbil '#f '0 _self12747_)
          (gx#core-bind-feature!__opt-lambda9126
           (gerbil-system)
           '#f
           '0
           _self12747_)
          (let* ((_g1275012762_ (system-type))
                 (_E1275312766_
                  (lambda () (error '"No clause matching" _g1275012762_)))
                 (_else1275212770_ (lambda () '#!void))
                 (_K1275412777_
                  (lambda (_sys-type12773_ _sys-vendor12774_ _sys-cpu12775_)
                    (begin
                      (gx#core-bind-feature!__opt-lambda9126
                       _sys-cpu12775_
                       '#f
                       '0
                       _self12747_)
                      (gx#core-bind-feature!__opt-lambda9126
                       _sys-type12773_
                       '#f
                       '0
                       _self12747_)
                      (if (_linux-variant?12749_ _sys-type12773_)
                          (gx#core-bind-feature!__opt-lambda9126
                           'linux
                           '#f
                           '0
                           _self12747_)
                          '#!void)))))
            (if (##pair? _g1275012762_)
                (let ((_hd1275512780_ (##car _g1275012762_))
                      (_tl1275612782_ (##cdr _g1275012762_)))
                  (let ((_sys-cpu12785_ _hd1275512780_))
                    (if (##pair? _tl1275612782_)
                        (let ((_hd1275712787_ (##car _tl1275612782_))
                              (_tl1275812789_ (##cdr _tl1275612782_)))
                          (let ((_sys-vendor12792_ _hd1275712787_))
                            (if (##pair? _tl1275812789_)
                                (let ((_hd1275912794_ (##car _tl1275812789_))
                                      (_tl1276012796_ (##cdr _tl1275812789_)))
                                  (let ((_sys-type12799_ _hd1275912794_))
                                    (if (##null? _tl1276012796_)
                                        (_K1275412777_
                                         _sys-type12799_
                                         _sys-vendor12792_
                                         _sys-cpu12785_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
