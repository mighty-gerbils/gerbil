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
    (define gx#root-context:::init!__opt-lambda12952
      (lambda (_self12954_ _bind?12955_)
        (begin
          (direct-struct-instance-init! _self12954_ 'root (make-hash-table-eq))
          (if _bind?12955_
              (begin
                (call-method _self12954_ 'bind-core-syntax-expanders!)
                (call-method _self12954_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self12960_)
          (let ((_bind?12962_ '#t))
            (gx#root-context:::init!__opt-lambda12952
             _self12960_
             _bind?12962_))))
      (define gx#root-context:::init!
        (lambda _g12968_
          (let ((_g12967_ (length _g12968_)))
            (cond ((fx= _g12967_ 1)
                   (apply gx#root-context:::init!__0 _g12968_))
                  ((fx= _g12967_ 2)
                   (apply gx#root-context:::init!__opt-lambda12952 _g12968_))
                  (else (error "No clause matching arguments" _g12968_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12930
      (lambda (_self12932_ _super12933_)
        (let ((_super12941_
               (let ((_$e12935_ _super12933_))
                 (if _$e12935_
                     _$e12935_
                     (let ((_$e12938_ (gx#core-context-root__0)))
                       (if _$e12938_
                           _$e12938_
                           (let ((__obj12966
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj12966)
                               __obj12966))))))))
          (direct-struct-instance-init!
           _self12932_
           'top
           (make-hash-table-eq)
           _super12941_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self12946_)
          (let ((_super12948_ '#f))
            (gx#top-context:::init!__opt-lambda12930
             _self12946_
             _super12948_))))
      (define gx#top-context:::init!
        (lambda _g12970_
          (let ((_g12969_ (length _g12970_)))
            (cond ((fx= _g12969_ 1) (apply gx#top-context:::init!__0 _g12970_))
                  ((fx= _g12969_ 2)
                   (apply gx#top-context:::init!__opt-lambda12930 _g12970_))
                  (else (error "No clause matching arguments" _g12970_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12783
      (lambda (_self12785_ _bindings12786_)
        (for-each
         (lambda (_bind12788_)
           (let ((_bind1278912796_ _bind12788_))
             (let ((_E1279112800_
                    (lambda ()
                      (error '"No clause matching" _bind1278912796_))))
               (let ((_K1279212909_
                      (lambda (_rest12803_ _id12804_)
                        (gx#core-context-put!
                         _self12785_
                         _id12804_
                         (##structure
                          gx#syntax-binding::t
                          _id12804_
                          _id12804_
                          '#f
                          (let ((_rest1280512816_ _rest12803_))
                            (let ((_E1280712820_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1280512816_))))
                              (let ((_K1280812885_
                                     (lambda (_compiler12823_
                                              _expander12824_
                                              _key12825_)
                                       ((let ((_key1282612839_ _key12825_))
                                          (let ((_E1283212843_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1282612839_))))
                                            (let ((_try-match1283112851_
                                                   (lambda ()
                                                     (let ((_K1283312848_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1282612839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1283312848_)
                   (_E1283212843_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1283012859_
                                                     (lambda ()
                                                       (let ((_K1283412856_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1282612839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1283412856_)
                     (_try-match1283112851_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1282912867_
                                                       (lambda ()
                                                         (let ((_K1283512864_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1282612839_ 'define:)
                       (_K1283512864_)
                       (_try-match1283012859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1282812875_
                                                         (lambda ()
                                                           (let ((_K1283612872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1282612839_ 'module:)
                         (_K1283612872_)
                         (_try-match1282912867_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1283712879_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1282612839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1283712879_)
                  (_try-match1282812875_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12824_
                                        _id12804_
                                        (let ((_$e12882_ _compiler12823_))
                                          (if _$e12882_
                                              _$e12882_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1280512816_)
                                    (let ((_hd1280912888_
                                           (##car _rest1280512816_))
                                          (_tl1281012890_
                                           (##cdr _rest1280512816_)))
                                      (let ((_key12893_ _hd1280912888_))
                                        (if (##pair? _tl1281012890_)
                                            (let ((_hd1281112895_
                                                   (##car _tl1281012890_))
                                                  (_tl1281212897_
                                                   (##cdr _tl1281012890_)))
                                              (let ((_expander12900_
                                                     _hd1281112895_))
                                                (if (##pair? _tl1281212897_)
                                                    (let ((_hd1281312902_
                                                           (##car _tl1281212897_))
                                                          (_tl1281412904_
                                                           (##cdr _tl1281212897_)))
                                                      (let ((_compiler12907_
                                                             _hd1281312902_))
                                                        (if (##null? _tl1281412904_)
                                                            (_K1280812885_
                                                             _compiler12907_
                                                             _expander12900_
                                                             _key12893_)
                                                            (_E1280712820_))))
                                                    (_E1280712820_))))
                                            (_E1280712820_))))
                                    (_E1280712820_))))))))))
                 (if (##pair? _bind1278912796_)
                     (let ((_hd1279312912_ (##car _bind1278912796_))
                           (_tl1279412914_ (##cdr _bind1278912796_)))
                       (let ((_id12917_ _hd1279312912_))
                         (let ((_rest12919_ _tl1279412914_))
                           (_K1279212909_ _rest12919_ _id12917_))))
                     (_E1279112800_))))))
         _bindings12786_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12924_)
          (let ((_bindings12926_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12783
             _self12924_
             _bindings12926_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g12972_
          (let ((_g12971_ (length _g12972_)))
            (cond ((fx= _g12971_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g12972_))
                  ((fx= _g12971_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12783
                          _g12972_))
                  (else (error "No clause matching arguments" _g12972_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12677
      (lambda (_self12679_ _bindings12680_)
        (for-each
         (lambda (_bind12682_)
           (let ((_bind1268312690_ _bind12682_))
             (let ((_E1268512694_
                    (lambda ()
                      (error '"No clause matching" _bind1268312690_))))
               (let ((_K1268612762_
                      (lambda (_rest12697_ _id12698_)
                        (gx#core-context-put!
                         _self12679_
                         _id12698_
                         (##structure
                          gx#syntax-binding::t
                          _id12698_
                          _id12698_
                          '#f
                          (let ((_rest1269912714_ _rest12697_))
                            (let ((_E1270312718_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1269912714_))))
                              (let ((_try-match1270212726_
                                     (lambda ()
                                       (let ((_K1270412723_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12698_))))
                                         (if (##null? _rest1269912714_)
                                             (_K1270412723_)
                                             (_E1270312718_))))))
                                (let ((_try-match1270112742_
                                       (lambda ()
                                         (let ((_K1270512732_
                                                (lambda (_proc12730_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12730_))))
                                           (if (##pair? _rest1269912714_)
                                               (let ((_hd1270612735_
                                                      (##car _rest1269912714_))
                                                     (_tl1270712737_
                                                      (##cdr _rest1269912714_)))
                                                 (let ((_proc12740_
                                                        _hd1270612735_))
                                                   (if (##null? _tl1270712737_)
                                                       (_K1270512732_
                                                        _proc12740_)
                                                       (_try-match1270212726_))))
                                               (_try-match1270212726_))))))
                                  (let ((_K1270812747_
                                         (lambda (_core-id12745_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12745_))))
                                    (if (##pair? _rest1269912714_)
                                        (let ((_hd1270912750_
                                               (##car _rest1269912714_))
                                              (_tl1271012752_
                                               (##cdr _rest1269912714_)))
                                          (if (##eq? _hd1270912750_ '=>)
                                              (if (##pair? _tl1271012752_)
                                                  (let ((_hd1271112755_
                                                         (##car _tl1271012752_))
                                                        (_tl1271212757_
                                                         (##cdr _tl1271012752_)))
                                                    (let ((_core-id12760_
                                                           _hd1271112755_))
                                                      (if (##null? _tl1271212757_)
                                                          (_K1270812747_
                                                           _core-id12760_)
                                                          (_try-match1270112742_))))
                                                  (_try-match1270112742_))
                                              (_try-match1270112742_)))
                                        (_try-match1270112742_))))))))))))
                 (if (##pair? _bind1268312690_)
                     (let ((_hd1268712765_ (##car _bind1268312690_))
                           (_tl1268812767_ (##cdr _bind1268312690_)))
                       (let ((_id12770_ _hd1268712765_))
                         (let ((_rest12772_ _tl1268812767_))
                           (_K1268612762_ _rest12772_ _id12770_))))
                     (_E1268512694_))))))
         _bindings12680_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12777_)
          (let ((_bindings12779_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12677
             _self12777_
             _bindings12779_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g12974_
          (let ((_g12973_ (length _g12974_)))
            (cond ((fx= _g12973_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g12974_))
                  ((fx= _g12973_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12677
                          _g12974_))
                  (else (error "No clause matching arguments" _g12974_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
