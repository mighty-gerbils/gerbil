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
                                                                '()))))
                                        (cons (cons '%#export
                                                    (cons 'module:
                                                          (cons gx#core-expand-export%
                                                                (cons gx#core-compile-top-export%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons '%#provide
                                                          (cons 'module:
                                                                (cons gx#core-expand-provide%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-compile-top-provide% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#declare
                                                                (cons 'special:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-expand-declare%
                                    (cons gx#core-compile-top-declare% '()))))
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
                                                            '()))))
                                    (cons (cons '%#define-syntax
                                                (cons 'define:
                                                      (cons gx#core-expand-define-syntax%
                                                            (cons gx#core-compile-top-define-syntax%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons '%#define-alias
                                                      (cons 'define:
                                                            (cons gx#core-expand-define-alias%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-compile-top-define-alias% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#define-runtime
                                                            (cons 'define:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
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
                                                              '()))))
                                      (cons (cons '%#letrec-values
                                                  (cons 'expr:
                                                        (cons gx#core-expand-letrec-values%
                                                              (cons gx#core-compile-top-letrec-values%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons '%#letrec*-values
                                                        (cons 'expr:
                                                              (cons gx#core-expand-letrec*-values%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons gx#core-compile-top-letrec*-values% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#let-syntax
                                                              (cons 'expr:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons gx#core-expand-let-syntax% (cons '#f '()))))
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
                                                                '()))))
                                        (cons (cons '%#if
                                                    (cons 'expr:
                                                          (cons gx#core-expand-if%
                                                                (cons gx#core-compile-top-if%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons '%#ref
                                                          (cons 'expr:
                                                                (cons gx#core-expand-ref%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-compile-top-ref% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#set!
                                                                (cons 'expr:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-expand-setq%
                                    (cons gx#core-compile-top-setq% '()))))
                  (cons (cons '%#expression
                              (cons 'expr:
                                    (cons gx#core-expand-expression%
                                          (cons '#f '()))))
                        '())))))))))))))))))))))))))))))))
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
                                  (cons (cons '_ '())
                                        (cons (cons '... '())
                                              (cons (cons 'else '())
                                                    (cons (cons '=> '())
                                                          (cons (cons 'unquote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (cons 'unquote-splicing '())
                              (cons (cons 'unsyntax '())
                                    (cons (cons 'unsyntax-splicing '())
                                          '()))))))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  (begin
    (define gx#root-context:::init!__opt-lambda12493
      (lambda (_self12495_ _bind?12496_)
        (begin
          (direct-struct-instance-init! _self12495_ 'root (make-hash-table-eq))
          (if _bind?12496_
              (begin
                (call-method _self12495_ 'bind-core-syntax-expanders!)
                (call-method _self12495_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self12501_)
          (let ((_bind?12503_ '#t))
            (gx#root-context:::init!__opt-lambda12493
             _self12501_
             _bind?12503_))))
      (define gx#root-context:::init!
        (lambda _g12509_
          (let ((_g12508_ (length _g12509_)))
            (cond ((fx= _g12508_ 1)
                   (apply gx#root-context:::init!__0 _g12509_))
                  ((fx= _g12508_ 2)
                   (apply gx#root-context:::init!__opt-lambda12493 _g12509_))
                  (else (error "No clause matching arguments" _g12509_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12471
      (lambda (_self12473_ _super12474_)
        (let ((_super12482_
               (let ((_$e12476_ _super12474_))
                 (if _$e12476_
                     _$e12476_
                     (let ((_$e12479_ (gx#core-context-root__0)))
                       (if _$e12479_
                           _$e12479_
                           (let ((__obj12507
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj12507)
                               __obj12507))))))))
          (direct-struct-instance-init!
           _self12473_
           'top
           (make-hash-table-eq)
           _super12482_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self12487_)
          (let ((_super12489_ '#f))
            (gx#top-context:::init!__opt-lambda12471
             _self12487_
             _super12489_))))
      (define gx#top-context:::init!
        (lambda _g12511_
          (let ((_g12510_ (length _g12511_)))
            (cond ((fx= _g12510_ 1) (apply gx#top-context:::init!__0 _g12511_))
                  ((fx= _g12510_ 2)
                   (apply gx#top-context:::init!__opt-lambda12471 _g12511_))
                  (else (error "No clause matching arguments" _g12511_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12324
      (lambda (_self12326_ _bindings12327_)
        (for-each
         (lambda (_bind12329_)
           (let ((_bind1233012337_ _bind12329_))
             (let ((_E1233212341_
                    (lambda ()
                      (error '"No clause matching" _bind1233012337_))))
               (let ((_K1233312450_
                      (lambda (_rest12344_ _id12345_)
                        (gx#core-context-put!
                         _self12326_
                         _id12345_
                         (##structure
                          gx#syntax-binding::t
                          _id12345_
                          _id12345_
                          '#f
                          (let ((_rest1234612357_ _rest12344_))
                            (let ((_E1234812361_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1234612357_))))
                              (let ((_K1234912426_
                                     (lambda (_compiler12364_
                                              _expander12365_
                                              _key12366_)
                                       ((let ((_key1236712380_ _key12366_))
                                          (let ((_E1237312384_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1236712380_))))
                                            (let ((_try-match1237212392_
                                                   (lambda ()
                                                     (let ((_K1237412389_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1236712380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1237412389_)
                   (_E1237312384_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1237112400_
                                                     (lambda ()
                                                       (let ((_K1237512397_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1236712380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1237512397_)
                     (_try-match1237212392_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1237012408_
                                                       (lambda ()
                                                         (let ((_K1237612405_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1236712380_ 'define:)
                       (_K1237612405_)
                       (_try-match1237112400_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1236912416_
                                                         (lambda ()
                                                           (let ((_K1237712413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1236712380_ 'module:)
                         (_K1237712413_)
                         (_try-match1237012408_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1237812420_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1236712380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1237812420_)
                  (_try-match1236912416_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12365_
                                        _id12345_
                                        (let ((_$e12423_ _compiler12364_))
                                          (if _$e12423_
                                              _$e12423_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1234612357_)
                                    (let ((_hd1235012429_
                                           (##car _rest1234612357_))
                                          (_tl1235112431_
                                           (##cdr _rest1234612357_)))
                                      (let ((_key12434_ _hd1235012429_))
                                        (if (##pair? _tl1235112431_)
                                            (let ((_hd1235212436_
                                                   (##car _tl1235112431_))
                                                  (_tl1235312438_
                                                   (##cdr _tl1235112431_)))
                                              (let ((_expander12441_
                                                     _hd1235212436_))
                                                (if (##pair? _tl1235312438_)
                                                    (let ((_hd1235412443_
                                                           (##car _tl1235312438_))
                                                          (_tl1235512445_
                                                           (##cdr _tl1235312438_)))
                                                      (let ((_compiler12448_
                                                             _hd1235412443_))
                                                        (if (##null? _tl1235512445_)
                                                            (_K1234912426_
                                                             _compiler12448_
                                                             _expander12441_
                                                             _key12434_)
                                                            (_E1234812361_))))
                                                    (_E1234812361_))))
                                            (_E1234812361_))))
                                    (_E1234812361_))))))))))
                 (if (##pair? _bind1233012337_)
                     (let ((_hd1233412453_ (##car _bind1233012337_))
                           (_tl1233512455_ (##cdr _bind1233012337_)))
                       (let ((_id12458_ _hd1233412453_))
                         (let ((_rest12460_ _tl1233512455_))
                           (_K1233312450_ _rest12460_ _id12458_))))
                     (_E1233212341_))))))
         _bindings12327_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12465_)
          (let ((_bindings12467_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12324
             _self12465_
             _bindings12467_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g12513_
          (let ((_g12512_ (length _g12513_)))
            (cond ((fx= _g12512_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g12513_))
                  ((fx= _g12512_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12324
                          _g12513_))
                  (else (error "No clause matching arguments" _g12513_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12218
      (lambda (_self12220_ _bindings12221_)
        (for-each
         (lambda (_bind12223_)
           (let ((_bind1222412231_ _bind12223_))
             (let ((_E1222612235_
                    (lambda ()
                      (error '"No clause matching" _bind1222412231_))))
               (let ((_K1222712303_
                      (lambda (_rest12238_ _id12239_)
                        (gx#core-context-put!
                         _self12220_
                         _id12239_
                         (##structure
                          gx#syntax-binding::t
                          _id12239_
                          _id12239_
                          '#f
                          (let ((_rest1224012255_ _rest12238_))
                            (let ((_E1224412259_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1224012255_))))
                              (let ((_try-match1224312267_
                                     (lambda ()
                                       (let ((_K1224512264_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12239_))))
                                         (if (##null? _rest1224012255_)
                                             (_K1224512264_)
                                             (_E1224412259_))))))
                                (let ((_try-match1224212283_
                                       (lambda ()
                                         (let ((_K1224612273_
                                                (lambda (_proc12271_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12271_))))
                                           (if (##pair? _rest1224012255_)
                                               (let ((_hd1224712276_
                                                      (##car _rest1224012255_))
                                                     (_tl1224812278_
                                                      (##cdr _rest1224012255_)))
                                                 (let ((_proc12281_
                                                        _hd1224712276_))
                                                   (if (##null? _tl1224812278_)
                                                       (_K1224612273_
                                                        _proc12281_)
                                                       (_try-match1224312267_))))
                                               (_try-match1224312267_))))))
                                  (let ((_K1224912288_
                                         (lambda (_core-id12286_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12286_))))
                                    (if (##pair? _rest1224012255_)
                                        (let ((_hd1225012291_
                                               (##car _rest1224012255_))
                                              (_tl1225112293_
                                               (##cdr _rest1224012255_)))
                                          (if (##eq? _hd1225012291_ '=>)
                                              (if (##pair? _tl1225112293_)
                                                  (let ((_hd1225212296_
                                                         (##car _tl1225112293_))
                                                        (_tl1225312298_
                                                         (##cdr _tl1225112293_)))
                                                    (let ((_core-id12301_
                                                           _hd1225212296_))
                                                      (if (##null? _tl1225312298_)
                                                          (_K1224912288_
                                                           _core-id12301_)
                                                          (_try-match1224212283_))))
                                                  (_try-match1224212283_))
                                              (_try-match1224212283_)))
                                        (_try-match1224212283_))))))))))))
                 (if (##pair? _bind1222412231_)
                     (let ((_hd1222812306_ (##car _bind1222412231_))
                           (_tl1222912308_ (##cdr _bind1222412231_)))
                       (let ((_id12311_ _hd1222812306_))
                         (let ((_rest12313_ _tl1222912308_))
                           (_K1222712303_ _rest12313_ _id12311_))))
                     (_E1222612235_))))))
         _bindings12221_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12318_)
          (let ((_bindings12320_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12218
             _self12318_
             _bindings12320_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g12515_
          (let ((_g12514_ (length _g12515_)))
            (cond ((fx= _g12514_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g12515_))
                  ((fx= _g12514_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12218
                          _g12515_))
                  (else (error "No clause matching arguments" _g12515_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
