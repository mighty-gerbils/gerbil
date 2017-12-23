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
    (define gx#root-context:::init!__opt-lambda13305
      (lambda (_self13307_ _bind?13308_)
        (begin
          (struct-instance-init! _self13307_ 'root (make-hash-table-eq))
          (if _bind?13308_
              (begin
                (call-method _self13307_ 'bind-core-syntax-expanders!)
                (call-method _self13307_ 'bind-core-macro-expanders!)
                (call-method _self13307_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self13313_)
          (let ((_bind?13315_ '#t))
            (gx#root-context:::init!__opt-lambda13305
             _self13313_
             _bind?13315_))))
      (define gx#root-context:::init!
        (lambda _g13321_
          (let ((_g13320_ (length _g13321_)))
            (cond ((fx= _g13320_ 1)
                   (apply gx#root-context:::init!__0 _g13321_))
                  ((fx= _g13320_ 2)
                   (apply gx#root-context:::init!__opt-lambda13305 _g13321_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g13321_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda13283
      (lambda (_self13285_ _super13286_)
        (let ((_super13294_
               (let ((_$e13288_ _super13286_))
                 (if _$e13288_
                     _$e13288_
                     (let ((_$e13291_ (gx#core-context-root__0)))
                       (if _$e13291_
                           _$e13291_
                           (let ((__obj13319
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj13319)
                               __obj13319))))))))
          (struct-instance-init!
           _self13285_
           'top
           (make-hash-table-eq)
           _super13294_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self13299_)
          (let ((_super13301_ '#f))
            (gx#top-context:::init!__opt-lambda13283
             _self13299_
             _super13301_))))
      (define gx#top-context:::init!
        (lambda _g13323_
          (let ((_g13322_ (length _g13323_)))
            (cond ((fx= _g13322_ 1) (apply gx#top-context:::init!__0 _g13323_))
                  ((fx= _g13322_ 2)
                   (apply gx#top-context:::init!__opt-lambda13283 _g13323_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g13323_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda13136
      (lambda (_self13138_ _bindings13139_)
        (for-each
         (lambda (_bind13141_)
           (let* ((_bind1314213149_ _bind13141_)
                  (_E1314413153_
                   (lambda () (error '"No clause matching" _bind1314213149_)))
                  (_K1314513262_
                   (lambda (_rest13156_ _id13157_)
                     (gx#core-context-put!
                      _self13138_
                      _id13157_
                      (##structure
                       gx#syntax-binding::t
                       _id13157_
                       _id13157_
                       '#f
                       (let* ((_rest1315813169_ _rest13156_)
                              (_E1316013173_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1315813169_)))
                              (_K1316113238_
                               (lambda (_compiler13176_
                                        _expander13177_
                                        _key13178_)
                                 ((let* ((_key1317913192_ _key13178_)
                                         (_E1318513196_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1317913192_)))
                                         (_try-match1318413204_
                                          (lambda ()
                                            (let ((_K1318613201_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1317913192_
                                                         'expr:)
                                                  (_K1318613201_)
                                                  (_E1318513196_)))))
                                         (_try-match1318313212_
                                          (lambda ()
                                            (let ((_K1318713209_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1317913192_
                                                         'special:)
                                                  (_K1318713209_)
                                                  (_try-match1318413204_)))))
                                         (_try-match1318213220_
                                          (lambda ()
                                            (let ((_K1318813217_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1317913192_
                                                         'define:)
                                                  (_K1318813217_)
                                                  (_try-match1318313212_)))))
                                         (_try-match1318113228_
                                          (lambda ()
                                            (let ((_K1318913225_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1317913192_
                                                         'module:)
                                                  (_K1318913225_)
                                                  (_try-match1318213220_)))))
                                         (_K1319013232_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1317913192_ 'top:)
                                        (_K1319013232_)
                                        (_try-match1318113228_)))
                                  _expander13177_
                                  _id13157_
                                  (let ((_$e13235_ _compiler13176_))
                                    (if _$e13235_
                                        _$e13235_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1315813169_)
                             (let ((_hd1316213241_ (##car _rest1315813169_))
                                   (_tl1316313243_ (##cdr _rest1315813169_)))
                               (let ((_key13246_ _hd1316213241_))
                                 (if (##pair? _tl1316313243_)
                                     (let ((_hd1316413248_
                                            (##car _tl1316313243_))
                                           (_tl1316513250_
                                            (##cdr _tl1316313243_)))
                                       (let ((_expander13253_ _hd1316413248_))
                                         (if (##pair? _tl1316513250_)
                                             (let ((_hd1316613255_
                                                    (##car _tl1316513250_))
                                                   (_tl1316713257_
                                                    (##cdr _tl1316513250_)))
                                               (let ((_compiler13260_
                                                      _hd1316613255_))
                                                 (if (##null? _tl1316713257_)
                                                     (_K1316113238_
                                                      _compiler13260_
                                                      _expander13253_
                                                      _key13246_)
                                                     (_E1316013173_))))
                                             (_E1316013173_))))
                                     (_E1316013173_))))
                             (_E1316013173_))))))))
             (if (##pair? _bind1314213149_)
                 (let ((_hd1314613265_ (##car _bind1314213149_))
                       (_tl1314713267_ (##cdr _bind1314213149_)))
                   (let* ((_id13270_ _hd1314613265_)
                          (_rest13272_ _tl1314713267_))
                     (_K1314513262_ _rest13272_ _id13270_)))
                 (_E1314413153_))))
         _bindings13139_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self13277_)
          (let ((_bindings13279_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda13136
             _self13277_
             _bindings13279_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g13325_
          (let ((_g13324_ (length _g13325_)))
            (cond ((fx= _g13324_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g13325_))
                  ((fx= _g13324_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda13136
                          _g13325_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g13325_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda13030
      (lambda (_self13032_ _bindings13033_)
        (for-each
         (lambda (_bind13035_)
           (let* ((_bind1303613043_ _bind13035_)
                  (_E1303813047_
                   (lambda () (error '"No clause matching" _bind1303613043_)))
                  (_K1303913115_
                   (lambda (_rest13050_ _id13051_)
                     (gx#core-context-put!
                      _self13032_
                      _id13051_
                      (##structure
                       gx#syntax-binding::t
                       _id13051_
                       _id13051_
                       '#f
                       (let* ((_rest1305213067_ _rest13050_)
                              (_E1305613071_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1305213067_)))
                              (_try-match1305513079_
                               (lambda ()
                                 (let ((_K1305713076_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id13051_))))
                                   (if (##null? _rest1305213067_)
                                       (_K1305713076_)
                                       (_E1305613071_)))))
                              (_try-match1305413095_
                               (lambda ()
                                 (let ((_K1305813085_
                                        (lambda (_proc13083_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc13083_))))
                                   (if (##pair? _rest1305213067_)
                                       (let ((_hd1305913088_
                                              (##car _rest1305213067_))
                                             (_tl1306013090_
                                              (##cdr _rest1305213067_)))
                                         (let ((_proc13093_ _hd1305913088_))
                                           (if (##null? _tl1306013090_)
                                               (_K1305813085_ _proc13093_)
                                               (_try-match1305513079_))))
                                       (_try-match1305513079_)))))
                              (_K1306113100_
                               (lambda (_core-id13098_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id13098_))))
                         (if (##pair? _rest1305213067_)
                             (let ((_hd1306213103_ (##car _rest1305213067_))
                                   (_tl1306313105_ (##cdr _rest1305213067_)))
                               (if (##eq? _hd1306213103_ '=>)
                                   (if (##pair? _tl1306313105_)
                                       (let ((_hd1306413108_
                                              (##car _tl1306313105_))
                                             (_tl1306513110_
                                              (##cdr _tl1306313105_)))
                                         (let ((_core-id13113_ _hd1306413108_))
                                           (if (##null? _tl1306513110_)
                                               (_K1306113100_ _core-id13113_)
                                               (_try-match1305413095_))))
                                       (_try-match1305413095_))
                                   (_try-match1305413095_)))
                             (_try-match1305413095_))))))))
             (if (##pair? _bind1303613043_)
                 (let ((_hd1304013118_ (##car _bind1303613043_))
                       (_tl1304113120_ (##cdr _bind1303613043_)))
                   (let* ((_id13123_ _hd1304013118_)
                          (_rest13125_ _tl1304113120_))
                     (_K1303913115_ _rest13125_ _id13123_)))
                 (_E1303813047_))))
         _bindings13033_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self13130_)
          (let ((_bindings13132_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda13030
             _self13130_
             _bindings13132_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g13327_
          (let ((_g13326_ (length _g13327_)))
            (cond ((fx= _g13326_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g13327_))
                  ((fx= _g13326_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda13030
                          _g13327_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g13327_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self12945_)
      (letrec ((_linux-variant?12947_
                (lambda (_sys-type12999_)
                  (let* ((_g1300013008_
                          (string-split (symbol->string _sys-type12999_) '#\-))
                         (_E1300313012_
                          (lambda ()
                            (error '"No clause matching" _g1300013008_)))
                         (_else1300213016_ (lambda () '#f))
                         (_K1300413021_
                          (lambda (_rest13019_) (not (null? _rest13019_)))))
                    (if (##pair? _g1300013008_)
                        (let ((_hd1300513024_ (##car _g1300013008_))
                              (_tl1300613026_ (##cdr _g1300013008_)))
                          (if (equal? _hd1300513024_ '"linux")
                              (let ((_rest13029_ _tl1300613026_))
                                (_K1300413021_ _rest13029_))
                              (_else1300213016_)))
                        (_else1300213016_))))))
        (begin
          (gx#core-bind-feature!__opt-lambda9199 'gerbil '#f '0 _self12945_)
          (gx#core-bind-feature!__opt-lambda9199
           (gerbil-system)
           '#f
           '0
           _self12945_)
          (let* ((_g1294812960_ (system-type))
                 (_E1295112964_
                  (lambda () (error '"No clause matching" _g1294812960_)))
                 (_else1295012968_ (lambda () '#!void))
                 (_K1295212975_
                  (lambda (_sys-type12971_ _sys-vendor12972_ _sys-cpu12973_)
                    (begin
                      (gx#core-bind-feature!__opt-lambda9199
                       _sys-cpu12973_
                       '#f
                       '0
                       _self12945_)
                      (gx#core-bind-feature!__opt-lambda9199
                       _sys-type12971_
                       '#f
                       '0
                       _self12945_)
                      (if (_linux-variant?12947_ _sys-type12971_)
                          (gx#core-bind-feature!__opt-lambda9199
                           'linux
                           '#f
                           '0
                           _self12945_)
                          '#!void)))))
            (if (##pair? _g1294812960_)
                (let ((_hd1295312978_ (##car _g1294812960_))
                      (_tl1295412980_ (##cdr _g1294812960_)))
                  (let ((_sys-cpu12983_ _hd1295312978_))
                    (if (##pair? _tl1295412980_)
                        (let ((_hd1295512985_ (##car _tl1295412980_))
                              (_tl1295612987_ (##cdr _tl1295412980_)))
                          (let ((_sys-vendor12990_ _hd1295512985_))
                            (if (##pair? _tl1295612987_)
                                (let ((_hd1295712992_ (##car _tl1295612987_))
                                      (_tl1295812994_ (##cdr _tl1295612987_)))
                                  (let ((_sys-type12997_ _hd1295712992_))
                                    (if (##null? _tl1295812994_)
                                        (_K1295212975_
                                         _sys-type12997_
                                         _sys-vendor12990_
                                         _sys-cpu12983_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
