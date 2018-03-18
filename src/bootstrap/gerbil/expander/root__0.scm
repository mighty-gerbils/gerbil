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
                                            (cons gx#core-compile-top-begin-annotation%
                                                  '()))))
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
    (define gx#root-context:::init!__%
      (lambda (_self16896_ _bind?16897_)
        (begin
          (if (##fx< '2 (##vector-length _self16896_))
              (begin
                (##vector-set! _self16896_ '1 'root)
                (##vector-set! _self16896_ '2 (make-hash-table-eq)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16896_))
          (if _bind?16897_
              (begin
                (call-method _self16896_ 'bind-core-syntax-expanders!)
                (call-method _self16896_ 'bind-core-macro-expanders!)
                (call-method _self16896_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self16902_)
          (let ((_bind?16904_ '#t))
            (gx#root-context:::init!__% _self16902_ _bind?16904_))))
      (define gx#root-context:::init!
        (lambda _g16920_
          (let ((_g16919_ (length _g16920_)))
            (cond ((##fx= _g16919_ 1)
                   (apply gx#root-context:::init!__0 _g16920_))
                  ((##fx= _g16919_ 2)
                   (apply gx#root-context:::init!__% _g16920_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g16920_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__%
      (lambda (_self16752_ _super16753_)
        (let ((_super16761_
               (let ((_$e16755_ _super16753_))
                 (if _$e16755_
                     _$e16755_
                     (let ((_$e16758_ (gx#core-context-root__0)))
                       (if _$e16758_
                           _$e16758_
                           (let ((__obj16918
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj16918)
                               __obj16918))))))))
          (if (##fx< '5 (##vector-length _self16752_))
              (begin
                (##vector-set! _self16752_ '1 'top)
                (##vector-set! _self16752_ '2 (make-hash-table-eq))
                (##vector-set! _self16752_ '3 _super16761_)
                (##vector-set! _self16752_ '4 '#f)
                (##vector-set! _self16752_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16752_)))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self16766_)
          (let ((_super16768_ '#f))
            (gx#top-context:::init!__% _self16766_ _super16768_))))
      (define gx#top-context:::init!
        (lambda _g16922_
          (let ((_g16921_ (length _g16922_)))
            (cond ((##fx= _g16921_ 1)
                   (apply gx#top-context:::init!__0 _g16922_))
                  ((##fx= _g16921_ 2)
                   (apply gx#top-context:::init!__% _g16922_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g16922_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self16483_ _bindings16484_)
        (for-each
         (lambda (_bind16486_)
           (let* ((_bind1648716494_ _bind16486_)
                  (_E1648916498_
                   (lambda () (error '"No clause matching" _bind1648716494_)))
                  (_K1649016607_
                   (lambda (_rest16501_ _id16502_)
                     (gx#core-context-put!
                      _self16483_
                      _id16502_
                      (##structure
                       gx#syntax-binding::t
                       _id16502_
                       _id16502_
                       '#f
                       (let* ((_rest1650316514_ _rest16501_)
                              (_E1650516518_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1650316514_)))
                              (_K1650616583_
                               (lambda (_compiler16521_
                                        _expander16522_
                                        _key16523_)
                                 ((let* ((_key1652416537_ _key16523_)
                                         (_E1653016541_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1652416537_))))
                                    (let ((_K1653516577_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K1653416570_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K1653316562_
                                           (lambda () gx#make-definition-form))
                                          (_K1653216554_
                                           (lambda () gx#make-special-form))
                                          (_K1653116546_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match1652916549_
                                              (lambda ()
                                                (if (##eq? _key1652416537_
                                                           'expr:)
                                                    (let () (_K1653116546_))
                                                    (_E1653016541_))))
                                             (_try-match1652816557_
                                              (lambda ()
                                                (if (##eq? _key1652416537_
                                                           'special:)
                                                    (let () (_K1653216554_))
                                                    (_try-match1652916549_))))
                                             (_try-match1652716565_
                                              (lambda ()
                                                (if (##eq? _key1652416537_
                                                           'define:)
                                                    (let () (_K1653316562_))
                                                    (_try-match1652816557_))))
                                             (_try-match1652616573_
                                              (lambda ()
                                                (if (##eq? _key1652416537_
                                                           'module:)
                                                    (let () (_K1653416570_))
                                                    (_try-match1652716565_)))))
                                        (if (##eq? _key1652416537_ 'top:)
                                            (let () (_K1653516577_))
                                            (_try-match1652616573_)))))
                                  _expander16522_
                                  _id16502_
                                  (let ((_$e16580_ _compiler16521_))
                                    (if _$e16580_
                                        _$e16580_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1650316514_)
                             (let ((_hd1650716586_ (##car _rest1650316514_))
                                   (_tl1650816588_ (##cdr _rest1650316514_)))
                               (let ((_key16591_ _hd1650716586_))
                                 (if (##pair? _tl1650816588_)
                                     (let ((_hd1650916593_
                                            (##car _tl1650816588_))
                                           (_tl1651016595_
                                            (##cdr _tl1650816588_)))
                                       (let ((_expander16598_ _hd1650916593_))
                                         (if (##pair? _tl1651016595_)
                                             (let ((_hd1651116600_
                                                    (##car _tl1651016595_))
                                                   (_tl1651216602_
                                                    (##cdr _tl1651016595_)))
                                               (let ((_compiler16605_
                                                      _hd1651116600_))
                                                 (if (##null? _tl1651216602_)
                                                     (_K1650616583_
                                                      _compiler16605_
                                                      _expander16598_
                                                      _key16591_)
                                                     (_E1650516518_))))
                                             (_E1650516518_))))
                                     (_E1650516518_))))
                             (_E1650516518_))))))))
             (if (##pair? _bind1648716494_)
                 (let ((_hd1649116610_ (##car _bind1648716494_))
                       (_tl1649216612_ (##cdr _bind1648716494_)))
                   (let* ((_id16615_ _hd1649116610_)
                          (_rest16617_ _tl1649216612_))
                     (_K1649016607_ _rest16617_ _id16615_)))
                 (_E1648916498_))))
         _bindings16484_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self16622_)
          (let ((_bindings16624_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__%
             _self16622_
             _bindings16624_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g16924_
          (let ((_g16923_ (length _g16924_)))
            (cond ((##fx= _g16923_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g16924_))
                  ((##fx= _g16923_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__%
                          _g16924_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g16924_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self16255_ _bindings16256_)
        (for-each
         (lambda (_bind16258_)
           (let* ((_bind1625916266_ _bind16258_)
                  (_E1626116270_
                   (lambda () (error '"No clause matching" _bind1625916266_)))
                  (_K1626216338_
                   (lambda (_rest16273_ _id16274_)
                     (gx#core-context-put!
                      _self16255_
                      _id16274_
                      (##structure
                       gx#syntax-binding::t
                       _id16274_
                       _id16274_
                       '#f
                       (let* ((_rest1627516290_ _rest16273_)
                              (_E1627916294_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1627516290_))))
                         (let ((_K1628416323_
                                (lambda (_core-id16321_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id16321_)))
                               (_K1628116308_
                                (lambda (_proc16306_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc16306_)))
                               (_K1628016299_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id16274_))))
                           (let ((_try-match1627816302_
                                  (lambda ()
                                    (if (##null? _rest1627516290_)
                                        (let () (_K1628016299_))
                                        (_E1627916294_)))))
                             (if (##pair? _rest1627516290_)
                                 (let ((_tl1628616328_
                                        (##cdr _rest1627516290_))
                                       (_hd1628516326_
                                        (##car _rest1627516290_)))
                                   (if (##eq? _hd1628516326_ '=>)
                                       (if (##pair? _tl1628616328_)
                                           (let ((_tl1628816333_
                                                  (##cdr _tl1628616328_))
                                                 (_hd1628716331_
                                                  (##car _tl1628616328_)))
                                             (if (##null? _tl1628816333_)
                                                 (let ((_core-id16336_
                                                        _hd1628716331_))
                                                   (_K1628416323_
                                                    _core-id16336_))
                                                 (_E1627916294_)))
                                           (if (##null? _tl1628616328_)
                                               (let ((_proc16316_
                                                      _hd1628516326_))
                                                 (_K1628116308_ _proc16316_))
                                               (_E1627916294_)))
                                       (if (##null? _tl1628616328_)
                                           (let ((_proc16316_ _hd1628516326_))
                                             (_K1628116308_ _proc16316_))
                                           (_E1627916294_))))
                                 (_try-match1627816302_))))))))))
             (if (##pair? _bind1625916266_)
                 (let ((_hd1626316341_ (##car _bind1625916266_))
                       (_tl1626416343_ (##cdr _bind1625916266_)))
                   (let* ((_id16346_ _hd1626316341_)
                          (_rest16348_ _tl1626416343_))
                     (_K1626216338_ _rest16348_ _id16346_)))
                 (_E1626116270_))))
         _bindings16256_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self16353_)
          (let ((_bindings16355_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__%
             _self16353_
             _bindings16355_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g16926_
          (let ((_g16925_ (length _g16926_)))
            (cond ((##fx= _g16925_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g16926_))
                  ((##fx= _g16925_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__%
                          _g16926_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g16926_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self16046_)
      (letrec ((_linux-variant?16048_
                (lambda (_sys-type16100_)
                  (let* ((_g1610116109_
                          (string-split (symbol->string _sys-type16100_) '#\-))
                         (_else1610316117_ (lambda () '#f))
                         (_K1610516122_
                          (lambda (_rest16120_) (not (null? _rest16120_)))))
                    (if (##pair? _g1610116109_)
                        (let ((_hd1610616125_ (##car _g1610116109_))
                              (_tl1610716127_ (##cdr _g1610116109_)))
                          (if (equal? _hd1610616125_ '"linux")
                              (let ((_rest16130_ _tl1610716127_))
                                (_K1610516122_ _rest16130_))
                              (_else1610316117_)))
                        (_else1610316117_))))))
        (begin
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self16046_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self16046_)
          (let* ((_g1604916061_ (system-type))
                 (_else1605116069_ (lambda () '#!void))
                 (_K1605316076_
                  (lambda (_sys-type16072_ _sys-vendor16073_ _sys-cpu16074_)
                    (begin
                      (gx#core-bind-feature!__%
                       _sys-cpu16074_
                       '#f
                       '0
                       _self16046_)
                      (gx#core-bind-feature!__%
                       _sys-type16072_
                       '#f
                       '0
                       _self16046_)
                      (if (_linux-variant?16048_ _sys-type16072_)
                          (gx#core-bind-feature!__% 'linux '#f '0 _self16046_)
                          '#!void)))))
            (if (##pair? _g1604916061_)
                (let ((_hd1605416079_ (##car _g1604916061_))
                      (_tl1605516081_ (##cdr _g1604916061_)))
                  (let ((_sys-cpu16084_ _hd1605416079_))
                    (if (##pair? _tl1605516081_)
                        (let ((_hd1605616086_ (##car _tl1605516081_))
                              (_tl1605716088_ (##cdr _tl1605516081_)))
                          (let ((_sys-vendor16091_ _hd1605616086_))
                            (if (##pair? _tl1605716088_)
                                (let ((_hd1605816093_ (##car _tl1605716088_))
                                      (_tl1605916095_ (##cdr _tl1605716088_)))
                                  (let ((_sys-type16098_ _hd1605816093_))
                                    (if (##null? _tl1605916095_)
                                        (_K1605316076_
                                         _sys-type16098_
                                         _sys-vendor16091_
                                         _sys-cpu16084_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self16046_)
              '#!void)))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
