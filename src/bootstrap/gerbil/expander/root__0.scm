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
    (define gx#root-context:::init!__opt-lambda11364
      (lambda (_self11366_ _bind?11367_)
        (begin
          (direct-struct-instance-init! _self11366_ 'root (make-hash-table-eq))
          (if _bind?11367_
              (begin
                (call-method _self11366_ 'bind-core-syntax-expanders!)
                (call-method _self11366_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self11372_)
          (let ((_bind?11374_ '#t))
            (gx#root-context:::init!__opt-lambda11364
             _self11372_
             _bind?11374_))))
      (define gx#root-context:::init!
        (lambda _g11380_
          (let ((_g11379_ (length _g11380_)))
            (cond ((fx= _g11379_ 1)
                   (apply gx#root-context:::init!__0 _g11380_))
                  ((fx= _g11379_ 2)
                   (apply gx#root-context:::init!__opt-lambda11364 _g11380_))
                  (else (error "No clause matching arguments" _g11380_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda11342
      (lambda (_self11344_ _super11345_)
        (let ((_super11353_
               (let ((_$e11347_ _super11345_))
                 (if _$e11347_
                     _$e11347_
                     (let ((_$e11350_ (gx#core-context-root__0)))
                       (if _$e11350_
                           _$e11350_
                           (let ((__obj11378
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj11378)
                               __obj11378))))))))
          (direct-struct-instance-init!
           _self11344_
           'top
           (make-hash-table-eq)
           _super11353_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self11358_)
          (let ((_super11360_ '#f))
            (gx#top-context:::init!__opt-lambda11342
             _self11358_
             _super11360_))))
      (define gx#top-context:::init!
        (lambda _g11382_
          (let ((_g11381_ (length _g11382_)))
            (cond ((fx= _g11381_ 1) (apply gx#top-context:::init!__0 _g11382_))
                  ((fx= _g11381_ 2)
                   (apply gx#top-context:::init!__opt-lambda11342 _g11382_))
                  (else (error "No clause matching arguments" _g11382_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda11195
      (lambda (_self11197_ _bindings11198_)
        (for-each
         (lambda (_bind11200_)
           (let ((_bind1120111208_ _bind11200_))
             (let ((_E1120311212_
                    (lambda ()
                      (error '"No clause matching" _bind1120111208_))))
               (let ((_K1120411321_
                      (lambda (_rest11215_ _id11216_)
                        (gx#core-context-put!
                         _self11197_
                         _id11216_
                         (##structure
                          gx#syntax-binding::t
                          _id11216_
                          _id11216_
                          '#f
                          (let ((_rest1121711228_ _rest11215_))
                            (let ((_E1121911232_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1121711228_))))
                              (let ((_K1122011297_
                                     (lambda (_compiler11235_
                                              _expander11236_
                                              _key11237_)
                                       ((let ((_key1123811251_ _key11237_))
                                          (let ((_E1124411255_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1123811251_))))
                                            (let ((_try-match1124311263_
                                                   (lambda ()
                                                     (let ((_K1124511260_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1123811251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1124511260_)
                   (_E1124411255_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1124211271_
                                                     (lambda ()
                                                       (let ((_K1124611268_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1123811251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1124611268_)
                     (_try-match1124311263_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1124111279_
                                                       (lambda ()
                                                         (let ((_K1124711276_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1123811251_ 'define:)
                       (_K1124711276_)
                       (_try-match1124211271_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1124011287_
                                                         (lambda ()
                                                           (let ((_K1124811284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1123811251_ 'module:)
                         (_K1124811284_)
                         (_try-match1124111279_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1124911291_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1123811251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1124911291_)
                  (_try-match1124011287_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander11236_
                                        _id11216_
                                        (let ((_$e11294_ _compiler11235_))
                                          (if _$e11294_
                                              _$e11294_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1121711228_)
                                    (let ((_hd1122111300_
                                           (##car _rest1121711228_))
                                          (_tl1122211302_
                                           (##cdr _rest1121711228_)))
                                      (let ((_key11305_ _hd1122111300_))
                                        (if (##pair? _tl1122211302_)
                                            (let ((_hd1122311307_
                                                   (##car _tl1122211302_))
                                                  (_tl1122411309_
                                                   (##cdr _tl1122211302_)))
                                              (let ((_expander11312_
                                                     _hd1122311307_))
                                                (if (##pair? _tl1122411309_)
                                                    (let ((_hd1122511314_
                                                           (##car _tl1122411309_))
                                                          (_tl1122611316_
                                                           (##cdr _tl1122411309_)))
                                                      (let ((_compiler11319_
                                                             _hd1122511314_))
                                                        (if (##null? _tl1122611316_)
                                                            (_K1122011297_
                                                             _compiler11319_
                                                             _expander11312_
                                                             _key11305_)
                                                            (_E1121911232_))))
                                                    (_E1121911232_))))
                                            (_E1121911232_))))
                                    (_E1121911232_))))))))))
                 (if (##pair? _bind1120111208_)
                     (let ((_hd1120511324_ (##car _bind1120111208_))
                           (_tl1120611326_ (##cdr _bind1120111208_)))
                       (let ((_id11329_ _hd1120511324_))
                         (let ((_rest11331_ _tl1120611326_))
                           (_K1120411321_ _rest11331_ _id11329_))))
                     (_E1120311212_))))))
         _bindings11198_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self11336_)
          (let ((_bindings11338_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda11195
             _self11336_
             _bindings11338_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g11384_
          (let ((_g11383_ (length _g11384_)))
            (cond ((fx= _g11383_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g11384_))
                  ((fx= _g11383_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda11195
                          _g11384_))
                  (else (error "No clause matching arguments" _g11384_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda11089
      (lambda (_self11091_ _bindings11092_)
        (for-each
         (lambda (_bind11094_)
           (let ((_bind1109511102_ _bind11094_))
             (let ((_E1109711106_
                    (lambda ()
                      (error '"No clause matching" _bind1109511102_))))
               (let ((_K1109811174_
                      (lambda (_rest11109_ _id11110_)
                        (gx#core-context-put!
                         _self11091_
                         _id11110_
                         (##structure
                          gx#syntax-binding::t
                          _id11110_
                          _id11110_
                          '#f
                          (let ((_rest1111111126_ _rest11109_))
                            (let ((_E1111511130_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1111111126_))))
                              (let ((_try-match1111411138_
                                     (lambda ()
                                       (let ((_K1111611135_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id11110_))))
                                         (if (##null? _rest1111111126_)
                                             (_K1111611135_)
                                             (_E1111511130_))))))
                                (let ((_try-match1111311154_
                                       (lambda ()
                                         (let ((_K1111711144_
                                                (lambda (_proc11142_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc11142_))))
                                           (if (##pair? _rest1111111126_)
                                               (let ((_hd1111811147_
                                                      (##car _rest1111111126_))
                                                     (_tl1111911149_
                                                      (##cdr _rest1111111126_)))
                                                 (let ((_proc11152_
                                                        _hd1111811147_))
                                                   (if (##null? _tl1111911149_)
                                                       (_K1111711144_
                                                        _proc11152_)
                                                       (_try-match1111411138_))))
                                               (_try-match1111411138_))))))
                                  (let ((_K1112011159_
                                         (lambda (_core-id11157_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id11157_))))
                                    (if (##pair? _rest1111111126_)
                                        (let ((_hd1112111162_
                                               (##car _rest1111111126_))
                                              (_tl1112211164_
                                               (##cdr _rest1111111126_)))
                                          (if (##eq? _hd1112111162_ '=>)
                                              (if (##pair? _tl1112211164_)
                                                  (let ((_hd1112311167_
                                                         (##car _tl1112211164_))
                                                        (_tl1112411169_
                                                         (##cdr _tl1112211164_)))
                                                    (let ((_core-id11172_
                                                           _hd1112311167_))
                                                      (if (##null? _tl1112411169_)
                                                          (_K1112011159_
                                                           _core-id11172_)
                                                          (_try-match1111311154_))))
                                                  (_try-match1111311154_))
                                              (_try-match1111311154_)))
                                        (_try-match1111311154_))))))))))))
                 (if (##pair? _bind1109511102_)
                     (let ((_hd1109911177_ (##car _bind1109511102_))
                           (_tl1110011179_ (##cdr _bind1109511102_)))
                       (let ((_id11182_ _hd1109911177_))
                         (let ((_rest11184_ _tl1110011179_))
                           (_K1109811174_ _rest11184_ _id11182_))))
                     (_E1109711106_))))))
         _bindings11092_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self11189_)
          (let ((_bindings11191_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda11089
             _self11189_
             _bindings11191_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g11386_
          (let ((_g11385_ (length _g11386_)))
            (cond ((fx= _g11385_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g11386_))
                  ((fx= _g11385_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda11089
                          _g11386_))
                  (else (error "No clause matching arguments" _g11386_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
