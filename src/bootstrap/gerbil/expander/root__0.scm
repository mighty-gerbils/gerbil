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
    (define gx#root-context:::init!__opt-lambda12502
      (lambda (_self12504_ _bind?12505_)
        (begin
          (direct-struct-instance-init! _self12504_ 'root (make-hash-table-eq))
          (if _bind?12505_
              (begin
                (call-method _self12504_ 'bind-core-syntax-expanders!)
                (call-method _self12504_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self12510_)
          (let ((_bind?12512_ '#t))
            (gx#root-context:::init!__opt-lambda12502
             _self12510_
             _bind?12512_))))
      (define gx#root-context:::init!
        (lambda _g12518_
          (let ((_g12517_ (length _g12518_)))
            (cond ((fx= _g12517_ 1)
                   (apply gx#root-context:::init!__0 _g12518_))
                  ((fx= _g12517_ 2)
                   (apply gx#root-context:::init!__opt-lambda12502 _g12518_))
                  (else (error "No clause matching arguments" _g12518_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12480
      (lambda (_self12482_ _super12483_)
        (let ((_super12491_
               (let ((_$e12485_ _super12483_))
                 (if _$e12485_
                     _$e12485_
                     (let ((_$e12488_ (gx#core-context-root__0)))
                       (if _$e12488_
                           _$e12488_
                           (let ((__obj12516
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj12516)
                               __obj12516))))))))
          (direct-struct-instance-init!
           _self12482_
           'top
           (make-hash-table-eq)
           _super12491_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self12496_)
          (let ((_super12498_ '#f))
            (gx#top-context:::init!__opt-lambda12480
             _self12496_
             _super12498_))))
      (define gx#top-context:::init!
        (lambda _g12520_
          (let ((_g12519_ (length _g12520_)))
            (cond ((fx= _g12519_ 1) (apply gx#top-context:::init!__0 _g12520_))
                  ((fx= _g12519_ 2)
                   (apply gx#top-context:::init!__opt-lambda12480 _g12520_))
                  (else (error "No clause matching arguments" _g12520_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12333
      (lambda (_self12335_ _bindings12336_)
        (for-each
         (lambda (_bind12338_)
           (let ((_bind1233912346_ _bind12338_))
             (let ((_E1234112350_
                    (lambda ()
                      (error '"No clause matching" _bind1233912346_))))
               (let ((_K1234212459_
                      (lambda (_rest12353_ _id12354_)
                        (gx#core-context-put!
                         _self12335_
                         _id12354_
                         (##structure
                          gx#syntax-binding::t
                          _id12354_
                          _id12354_
                          '#f
                          (let ((_rest1235512366_ _rest12353_))
                            (let ((_E1235712370_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1235512366_))))
                              (let ((_K1235812435_
                                     (lambda (_compiler12373_
                                              _expander12374_
                                              _key12375_)
                                       ((let ((_key1237612389_ _key12375_))
                                          (let ((_E1238212393_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1237612389_))))
                                            (let ((_try-match1238112401_
                                                   (lambda ()
                                                     (let ((_K1238312398_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1237612389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1238312398_)
                   (_E1238212393_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1238012409_
                                                     (lambda ()
                                                       (let ((_K1238412406_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1237612389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1238412406_)
                     (_try-match1238112401_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1237912417_
                                                       (lambda ()
                                                         (let ((_K1238512414_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1237612389_ 'define:)
                       (_K1238512414_)
                       (_try-match1238012409_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1237812425_
                                                         (lambda ()
                                                           (let ((_K1238612422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1237612389_ 'module:)
                         (_K1238612422_)
                         (_try-match1237912417_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1238712429_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1237612389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1238712429_)
                  (_try-match1237812425_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12374_
                                        _id12354_
                                        (let ((_$e12432_ _compiler12373_))
                                          (if _$e12432_
                                              _$e12432_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1235512366_)
                                    (let ((_hd1235912438_
                                           (##car _rest1235512366_))
                                          (_tl1236012440_
                                           (##cdr _rest1235512366_)))
                                      (let ((_key12443_ _hd1235912438_))
                                        (if (##pair? _tl1236012440_)
                                            (let ((_hd1236112445_
                                                   (##car _tl1236012440_))
                                                  (_tl1236212447_
                                                   (##cdr _tl1236012440_)))
                                              (let ((_expander12450_
                                                     _hd1236112445_))
                                                (if (##pair? _tl1236212447_)
                                                    (let ((_hd1236312452_
                                                           (##car _tl1236212447_))
                                                          (_tl1236412454_
                                                           (##cdr _tl1236212447_)))
                                                      (let ((_compiler12457_
                                                             _hd1236312452_))
                                                        (if (##null? _tl1236412454_)
                                                            (_K1235812435_
                                                             _compiler12457_
                                                             _expander12450_
                                                             _key12443_)
                                                            (_E1235712370_))))
                                                    (_E1235712370_))))
                                            (_E1235712370_))))
                                    (_E1235712370_))))))))))
                 (if (##pair? _bind1233912346_)
                     (let ((_hd1234312462_ (##car _bind1233912346_))
                           (_tl1234412464_ (##cdr _bind1233912346_)))
                       (let ((_id12467_ _hd1234312462_))
                         (let ((_rest12469_ _tl1234412464_))
                           (_K1234212459_ _rest12469_ _id12467_))))
                     (_E1234112350_))))))
         _bindings12336_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12474_)
          (let ((_bindings12476_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12333
             _self12474_
             _bindings12476_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g12522_
          (let ((_g12521_ (length _g12522_)))
            (cond ((fx= _g12521_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g12522_))
                  ((fx= _g12521_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12333
                          _g12522_))
                  (else (error "No clause matching arguments" _g12522_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12227
      (lambda (_self12229_ _bindings12230_)
        (for-each
         (lambda (_bind12232_)
           (let ((_bind1223312240_ _bind12232_))
             (let ((_E1223512244_
                    (lambda ()
                      (error '"No clause matching" _bind1223312240_))))
               (let ((_K1223612312_
                      (lambda (_rest12247_ _id12248_)
                        (gx#core-context-put!
                         _self12229_
                         _id12248_
                         (##structure
                          gx#syntax-binding::t
                          _id12248_
                          _id12248_
                          '#f
                          (let ((_rest1224912264_ _rest12247_))
                            (let ((_E1225312268_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1224912264_))))
                              (let ((_try-match1225212276_
                                     (lambda ()
                                       (let ((_K1225412273_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12248_))))
                                         (if (##null? _rest1224912264_)
                                             (_K1225412273_)
                                             (_E1225312268_))))))
                                (let ((_try-match1225112292_
                                       (lambda ()
                                         (let ((_K1225512282_
                                                (lambda (_proc12280_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12280_))))
                                           (if (##pair? _rest1224912264_)
                                               (let ((_hd1225612285_
                                                      (##car _rest1224912264_))
                                                     (_tl1225712287_
                                                      (##cdr _rest1224912264_)))
                                                 (let ((_proc12290_
                                                        _hd1225612285_))
                                                   (if (##null? _tl1225712287_)
                                                       (_K1225512282_
                                                        _proc12290_)
                                                       (_try-match1225212276_))))
                                               (_try-match1225212276_))))))
                                  (let ((_K1225812297_
                                         (lambda (_core-id12295_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12295_))))
                                    (if (##pair? _rest1224912264_)
                                        (let ((_hd1225912300_
                                               (##car _rest1224912264_))
                                              (_tl1226012302_
                                               (##cdr _rest1224912264_)))
                                          (if (##eq? _hd1225912300_ '=>)
                                              (if (##pair? _tl1226012302_)
                                                  (let ((_hd1226112305_
                                                         (##car _tl1226012302_))
                                                        (_tl1226212307_
                                                         (##cdr _tl1226012302_)))
                                                    (let ((_core-id12310_
                                                           _hd1226112305_))
                                                      (if (##null? _tl1226212307_)
                                                          (_K1225812297_
                                                           _core-id12310_)
                                                          (_try-match1225112292_))))
                                                  (_try-match1225112292_))
                                              (_try-match1225112292_)))
                                        (_try-match1225112292_))))))))))))
                 (if (##pair? _bind1223312240_)
                     (let ((_hd1223712315_ (##car _bind1223312240_))
                           (_tl1223812317_ (##cdr _bind1223312240_)))
                       (let ((_id12320_ _hd1223712315_))
                         (let ((_rest12322_ _tl1223812317_))
                           (_K1223612312_ _rest12322_ _id12320_))))
                     (_E1223512244_))))))
         _bindings12230_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12327_)
          (let ((_bindings12329_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12227
             _self12327_
             _bindings12329_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g12524_
          (let ((_g12523_ (length _g12524_)))
            (cond ((fx= _g12523_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g12524_))
                  ((fx= _g12523_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12227
                          _g12524_))
                  (else (error "No clause matching arguments" _g12524_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
