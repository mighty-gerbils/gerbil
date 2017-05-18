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
    (define gx#root-context:::init!__opt-lambda12621
      (lambda (_self12623_ _bind?12624_)
        (begin
          (direct-struct-instance-init! _self12623_ 'root (make-hash-table-eq))
          (if _bind?12624_
              (begin
                (call-method _self12623_ 'bind-core-syntax-expanders!)
                (call-method _self12623_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self12629_)
          (let ((_bind?12631_ '#t))
            (gx#root-context:::init!__opt-lambda12621
             _self12629_
             _bind?12631_))))
      (define gx#root-context:::init!
        (lambda _g12637_
          (let ((_g12636_ (length _g12637_)))
            (cond ((fx= _g12636_ 1)
                   (apply gx#root-context:::init!__0 _g12637_))
                  ((fx= _g12636_ 2)
                   (apply gx#root-context:::init!__opt-lambda12621 _g12637_))
                  (else (error "No clause matching arguments" _g12637_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12599
      (lambda (_self12601_ _super12602_)
        (let ((_super12610_
               (let ((_$e12604_ _super12602_))
                 (if _$e12604_
                     _$e12604_
                     (let ((_$e12607_ (gx#core-context-root__0)))
                       (if _$e12607_
                           _$e12607_
                           (let ((__obj12635
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj12635)
                               __obj12635))))))))
          (direct-struct-instance-init!
           _self12601_
           'top
           (make-hash-table-eq)
           _super12610_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self12615_)
          (let ((_super12617_ '#f))
            (gx#top-context:::init!__opt-lambda12599
             _self12615_
             _super12617_))))
      (define gx#top-context:::init!
        (lambda _g12639_
          (let ((_g12638_ (length _g12639_)))
            (cond ((fx= _g12638_ 1) (apply gx#top-context:::init!__0 _g12639_))
                  ((fx= _g12638_ 2)
                   (apply gx#top-context:::init!__opt-lambda12599 _g12639_))
                  (else (error "No clause matching arguments" _g12639_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12452
      (lambda (_self12454_ _bindings12455_)
        (for-each
         (lambda (_bind12457_)
           (let ((_bind1245812465_ _bind12457_))
             (let ((_E1246012469_
                    (lambda ()
                      (error '"No clause matching" _bind1245812465_))))
               (let ((_K1246112578_
                      (lambda (_rest12472_ _id12473_)
                        (gx#core-context-put!
                         _self12454_
                         _id12473_
                         (##structure
                          gx#syntax-binding::t
                          _id12473_
                          _id12473_
                          '#f
                          (let ((_rest1247412485_ _rest12472_))
                            (let ((_E1247612489_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1247412485_))))
                              (let ((_K1247712554_
                                     (lambda (_compiler12492_
                                              _expander12493_
                                              _key12494_)
                                       ((let ((_key1249512508_ _key12494_))
                                          (let ((_E1250112512_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1249512508_))))
                                            (let ((_try-match1250012520_
                                                   (lambda ()
                                                     (let ((_K1250212517_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1249512508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1250212517_)
                   (_E1250112512_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1249912528_
                                                     (lambda ()
                                                       (let ((_K1250312525_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1249512508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1250312525_)
                     (_try-match1250012520_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1249812536_
                                                       (lambda ()
                                                         (let ((_K1250412533_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1249512508_ 'define:)
                       (_K1250412533_)
                       (_try-match1249912528_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1249712544_
                                                         (lambda ()
                                                           (let ((_K1250512541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1249512508_ 'module:)
                         (_K1250512541_)
                         (_try-match1249812536_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1250612548_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1249512508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1250612548_)
                  (_try-match1249712544_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12493_
                                        _id12473_
                                        (let ((_$e12551_ _compiler12492_))
                                          (if _$e12551_
                                              _$e12551_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1247412485_)
                                    (let ((_hd1247812557_
                                           (##car _rest1247412485_))
                                          (_tl1247912559_
                                           (##cdr _rest1247412485_)))
                                      (let ((_key12562_ _hd1247812557_))
                                        (if (##pair? _tl1247912559_)
                                            (let ((_hd1248012564_
                                                   (##car _tl1247912559_))
                                                  (_tl1248112566_
                                                   (##cdr _tl1247912559_)))
                                              (let ((_expander12569_
                                                     _hd1248012564_))
                                                (if (##pair? _tl1248112566_)
                                                    (let ((_hd1248212571_
                                                           (##car _tl1248112566_))
                                                          (_tl1248312573_
                                                           (##cdr _tl1248112566_)))
                                                      (let ((_compiler12576_
                                                             _hd1248212571_))
                                                        (if (##null? _tl1248312573_)
                                                            (_K1247712554_
                                                             _compiler12576_
                                                             _expander12569_
                                                             _key12562_)
                                                            (_E1247612489_))))
                                                    (_E1247612489_))))
                                            (_E1247612489_))))
                                    (_E1247612489_))))))))))
                 (if (##pair? _bind1245812465_)
                     (let ((_hd1246212581_ (##car _bind1245812465_))
                           (_tl1246312583_ (##cdr _bind1245812465_)))
                       (let ((_id12586_ _hd1246212581_))
                         (let ((_rest12588_ _tl1246312583_))
                           (_K1246112578_ _rest12588_ _id12586_))))
                     (_E1246012469_))))))
         _bindings12455_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12593_)
          (let ((_bindings12595_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12452
             _self12593_
             _bindings12595_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g12641_
          (let ((_g12640_ (length _g12641_)))
            (cond ((fx= _g12640_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g12641_))
                  ((fx= _g12640_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12452
                          _g12641_))
                  (else (error "No clause matching arguments" _g12641_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12346
      (lambda (_self12348_ _bindings12349_)
        (for-each
         (lambda (_bind12351_)
           (let ((_bind1235212359_ _bind12351_))
             (let ((_E1235412363_
                    (lambda ()
                      (error '"No clause matching" _bind1235212359_))))
               (let ((_K1235512431_
                      (lambda (_rest12366_ _id12367_)
                        (gx#core-context-put!
                         _self12348_
                         _id12367_
                         (##structure
                          gx#syntax-binding::t
                          _id12367_
                          _id12367_
                          '#f
                          (let ((_rest1236812383_ _rest12366_))
                            (let ((_E1237212387_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1236812383_))))
                              (let ((_try-match1237112395_
                                     (lambda ()
                                       (let ((_K1237312392_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12367_))))
                                         (if (##null? _rest1236812383_)
                                             (_K1237312392_)
                                             (_E1237212387_))))))
                                (let ((_try-match1237012411_
                                       (lambda ()
                                         (let ((_K1237412401_
                                                (lambda (_proc12399_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12399_))))
                                           (if (##pair? _rest1236812383_)
                                               (let ((_hd1237512404_
                                                      (##car _rest1236812383_))
                                                     (_tl1237612406_
                                                      (##cdr _rest1236812383_)))
                                                 (let ((_proc12409_
                                                        _hd1237512404_))
                                                   (if (##null? _tl1237612406_)
                                                       (_K1237412401_
                                                        _proc12409_)
                                                       (_try-match1237112395_))))
                                               (_try-match1237112395_))))))
                                  (let ((_K1237712416_
                                         (lambda (_core-id12414_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12414_))))
                                    (if (##pair? _rest1236812383_)
                                        (let ((_hd1237812419_
                                               (##car _rest1236812383_))
                                              (_tl1237912421_
                                               (##cdr _rest1236812383_)))
                                          (if (##eq? _hd1237812419_ '=>)
                                              (if (##pair? _tl1237912421_)
                                                  (let ((_hd1238012424_
                                                         (##car _tl1237912421_))
                                                        (_tl1238112426_
                                                         (##cdr _tl1237912421_)))
                                                    (let ((_core-id12429_
                                                           _hd1238012424_))
                                                      (if (##null? _tl1238112426_)
                                                          (_K1237712416_
                                                           _core-id12429_)
                                                          (_try-match1237012411_))))
                                                  (_try-match1237012411_))
                                              (_try-match1237012411_)))
                                        (_try-match1237012411_))))))))))))
                 (if (##pair? _bind1235212359_)
                     (let ((_hd1235612434_ (##car _bind1235212359_))
                           (_tl1235712436_ (##cdr _bind1235212359_)))
                       (let ((_id12439_ _hd1235612434_))
                         (let ((_rest12441_ _tl1235712436_))
                           (_K1235512431_ _rest12441_ _id12439_))))
                     (_E1235412363_))))))
         _bindings12349_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12446_)
          (let ((_bindings12448_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12346
             _self12446_
             _bindings12448_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g12643_
          (let ((_g12642_ (length _g12643_)))
            (cond ((fx= _g12642_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g12643_))
                  ((fx= _g12642_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12346
                          _g12643_))
                  (else (error "No clause matching arguments" _g12643_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
