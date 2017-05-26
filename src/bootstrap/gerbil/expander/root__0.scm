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
    (define gx#root-context:::init!__opt-lambda12955
      (lambda (_self12957_ _bind?12958_)
        (begin
          (direct-struct-instance-init! _self12957_ 'root (make-hash-table-eq))
          (if _bind?12958_
              (begin
                (call-method _self12957_ 'bind-core-syntax-expanders!)
                (call-method _self12957_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self12963_)
          (let ((_bind?12965_ '#t))
            (gx#root-context:::init!__opt-lambda12955
             _self12963_
             _bind?12965_))))
      (define gx#root-context:::init!
        (lambda _g12971_
          (let ((_g12970_ (length _g12971_)))
            (cond ((fx= _g12970_ 1)
                   (apply gx#root-context:::init!__0 _g12971_))
                  ((fx= _g12970_ 2)
                   (apply gx#root-context:::init!__opt-lambda12955 _g12971_))
                  (else (error "No clause matching arguments" _g12971_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12933
      (lambda (_self12935_ _super12936_)
        (let ((_super12944_
               (let ((_$e12938_ _super12936_))
                 (if _$e12938_
                     _$e12938_
                     (let ((_$e12941_ (gx#core-context-root__0)))
                       (if _$e12941_
                           _$e12941_
                           (let ((__obj12969
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj12969)
                               __obj12969))))))))
          (direct-struct-instance-init!
           _self12935_
           'top
           (make-hash-table-eq)
           _super12944_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self12949_)
          (let ((_super12951_ '#f))
            (gx#top-context:::init!__opt-lambda12933
             _self12949_
             _super12951_))))
      (define gx#top-context:::init!
        (lambda _g12973_
          (let ((_g12972_ (length _g12973_)))
            (cond ((fx= _g12972_ 1) (apply gx#top-context:::init!__0 _g12973_))
                  ((fx= _g12972_ 2)
                   (apply gx#top-context:::init!__opt-lambda12933 _g12973_))
                  (else (error "No clause matching arguments" _g12973_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12786
      (lambda (_self12788_ _bindings12789_)
        (for-each
         (lambda (_bind12791_)
           (let ((_bind1279212799_ _bind12791_))
             (let ((_E1279412803_
                    (lambda ()
                      (error '"No clause matching" _bind1279212799_))))
               (let ((_K1279512912_
                      (lambda (_rest12806_ _id12807_)
                        (gx#core-context-put!
                         _self12788_
                         _id12807_
                         (##structure
                          gx#syntax-binding::t
                          _id12807_
                          _id12807_
                          '#f
                          (let ((_rest1280812819_ _rest12806_))
                            (let ((_E1281012823_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1280812819_))))
                              (let ((_K1281112888_
                                     (lambda (_compiler12826_
                                              _expander12827_
                                              _key12828_)
                                       ((let ((_key1282912842_ _key12828_))
                                          (let ((_E1283512846_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1282912842_))))
                                            (let ((_try-match1283412854_
                                                   (lambda ()
                                                     (let ((_K1283612851_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1282912842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1283612851_)
                   (_E1283512846_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1283312862_
                                                     (lambda ()
                                                       (let ((_K1283712859_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1282912842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1283712859_)
                     (_try-match1283412854_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1283212870_
                                                       (lambda ()
                                                         (let ((_K1283812867_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1282912842_ 'define:)
                       (_K1283812867_)
                       (_try-match1283312862_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1283112878_
                                                         (lambda ()
                                                           (let ((_K1283912875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1282912842_ 'module:)
                         (_K1283912875_)
                         (_try-match1283212870_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1284012882_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1282912842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1284012882_)
                  (_try-match1283112878_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12827_
                                        _id12807_
                                        (let ((_$e12885_ _compiler12826_))
                                          (if _$e12885_
                                              _$e12885_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1280812819_)
                                    (let ((_hd1281212891_
                                           (##car _rest1280812819_))
                                          (_tl1281312893_
                                           (##cdr _rest1280812819_)))
                                      (let ((_key12896_ _hd1281212891_))
                                        (if (##pair? _tl1281312893_)
                                            (let ((_hd1281412898_
                                                   (##car _tl1281312893_))
                                                  (_tl1281512900_
                                                   (##cdr _tl1281312893_)))
                                              (let ((_expander12903_
                                                     _hd1281412898_))
                                                (if (##pair? _tl1281512900_)
                                                    (let ((_hd1281612905_
                                                           (##car _tl1281512900_))
                                                          (_tl1281712907_
                                                           (##cdr _tl1281512900_)))
                                                      (let ((_compiler12910_
                                                             _hd1281612905_))
                                                        (if (##null? _tl1281712907_)
                                                            (_K1281112888_
                                                             _compiler12910_
                                                             _expander12903_
                                                             _key12896_)
                                                            (_E1281012823_))))
                                                    (_E1281012823_))))
                                            (_E1281012823_))))
                                    (_E1281012823_))))))))))
                 (if (##pair? _bind1279212799_)
                     (let ((_hd1279612915_ (##car _bind1279212799_))
                           (_tl1279712917_ (##cdr _bind1279212799_)))
                       (let ((_id12920_ _hd1279612915_))
                         (let ((_rest12922_ _tl1279712917_))
                           (_K1279512912_ _rest12922_ _id12920_))))
                     (_E1279412803_))))))
         _bindings12789_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12927_)
          (let ((_bindings12929_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12786
             _self12927_
             _bindings12929_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g12975_
          (let ((_g12974_ (length _g12975_)))
            (cond ((fx= _g12974_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g12975_))
                  ((fx= _g12974_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12786
                          _g12975_))
                  (else (error "No clause matching arguments" _g12975_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12680
      (lambda (_self12682_ _bindings12683_)
        (for-each
         (lambda (_bind12685_)
           (let ((_bind1268612693_ _bind12685_))
             (let ((_E1268812697_
                    (lambda ()
                      (error '"No clause matching" _bind1268612693_))))
               (let ((_K1268912765_
                      (lambda (_rest12700_ _id12701_)
                        (gx#core-context-put!
                         _self12682_
                         _id12701_
                         (##structure
                          gx#syntax-binding::t
                          _id12701_
                          _id12701_
                          '#f
                          (let ((_rest1270212717_ _rest12700_))
                            (let ((_E1270612721_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1270212717_))))
                              (let ((_try-match1270512729_
                                     (lambda ()
                                       (let ((_K1270712726_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12701_))))
                                         (if (##null? _rest1270212717_)
                                             (_K1270712726_)
                                             (_E1270612721_))))))
                                (let ((_try-match1270412745_
                                       (lambda ()
                                         (let ((_K1270812735_
                                                (lambda (_proc12733_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12733_))))
                                           (if (##pair? _rest1270212717_)
                                               (let ((_hd1270912738_
                                                      (##car _rest1270212717_))
                                                     (_tl1271012740_
                                                      (##cdr _rest1270212717_)))
                                                 (let ((_proc12743_
                                                        _hd1270912738_))
                                                   (if (##null? _tl1271012740_)
                                                       (_K1270812735_
                                                        _proc12743_)
                                                       (_try-match1270512729_))))
                                               (_try-match1270512729_))))))
                                  (let ((_K1271112750_
                                         (lambda (_core-id12748_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12748_))))
                                    (if (##pair? _rest1270212717_)
                                        (let ((_hd1271212753_
                                               (##car _rest1270212717_))
                                              (_tl1271312755_
                                               (##cdr _rest1270212717_)))
                                          (if (##eq? _hd1271212753_ '=>)
                                              (if (##pair? _tl1271312755_)
                                                  (let ((_hd1271412758_
                                                         (##car _tl1271312755_))
                                                        (_tl1271512760_
                                                         (##cdr _tl1271312755_)))
                                                    (let ((_core-id12763_
                                                           _hd1271412758_))
                                                      (if (##null? _tl1271512760_)
                                                          (_K1271112750_
                                                           _core-id12763_)
                                                          (_try-match1270412745_))))
                                                  (_try-match1270412745_))
                                              (_try-match1270412745_)))
                                        (_try-match1270412745_))))))))))))
                 (if (##pair? _bind1268612693_)
                     (let ((_hd1269012768_ (##car _bind1268612693_))
                           (_tl1269112770_ (##cdr _bind1268612693_)))
                       (let ((_id12773_ _hd1269012768_))
                         (let ((_rest12775_ _tl1269112770_))
                           (_K1268912765_ _rest12775_ _id12773_))))
                     (_E1268812697_))))))
         _bindings12683_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12780_)
          (let ((_bindings12782_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12680
             _self12780_
             _bindings12782_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g12977_
          (let ((_g12976_ (length _g12977_)))
            (cond ((fx= _g12976_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g12977_))
                  ((fx= _g12976_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12680
                          _g12977_))
                  (else (error "No clause matching arguments" _g12977_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
