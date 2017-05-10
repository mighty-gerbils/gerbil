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
    (define gx#root-context:::init!__opt-lambda11362
      (lambda (_self11364_ _bind?11365_)
        (begin
          (direct-struct-instance-init! _self11364_ 'root (make-hash-table-eq))
          (if _bind?11365_
              (begin
                (call-method _self11364_ 'bind-core-syntax-expanders!)
                (call-method _self11364_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self11370_)
          (let ((_bind?11372_ '#t))
            (gx#root-context:::init!__opt-lambda11362
             _self11370_
             _bind?11372_))))
      (define gx#root-context:::init!
        (lambda _g11378_
          (let ((_g11377_ (length _g11378_)))
            (cond ((fx= _g11377_ 1)
                   (apply (lambda (_self11370_)
                            (gx#root-context:::init!__0 _self11370_))
                          _g11378_))
                  ((fx= _g11377_ 2)
                   (apply (lambda (_self11374_ _bind?11375_)
                            (gx#root-context:::init!__opt-lambda11362
                             _self11374_
                             _bind?11375_))
                          _g11378_))
                  (else (error "No clause matching arguments" _g11378_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda11340
      (lambda (_self11342_ _super11343_)
        (let ((_super11351_
               (let ((_$e11345_ _super11343_))
                 (if _$e11345_
                     _$e11345_
                     (let ((_$e11348_ (gx#core-context-root__0)))
                       (if _$e11348_
                           _$e11348_
                           (let ((__obj11376
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj11376)
                               __obj11376))))))))
          (direct-struct-instance-init!
           _self11342_
           'top
           (make-hash-table-eq)
           _super11351_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self11356_)
          (let ((_super11358_ '#f))
            (gx#top-context:::init!__opt-lambda11340
             _self11356_
             _super11358_))))
      (define gx#top-context:::init!
        (lambda _g11380_
          (let ((_g11379_ (length _g11380_)))
            (cond ((fx= _g11379_ 1)
                   (apply (lambda (_self11356_)
                            (gx#top-context:::init!__0 _self11356_))
                          _g11380_))
                  ((fx= _g11379_ 2)
                   (apply (lambda (_self11360_ _super11361_)
                            (gx#top-context:::init!__opt-lambda11340
                             _self11360_
                             _super11361_))
                          _g11380_))
                  (else (error "No clause matching arguments" _g11380_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda11193
      (lambda (_self11195_ _bindings11196_)
        (for-each
         (lambda (_bind11198_)
           (let ((_bind1119911206_ _bind11198_))
             (let ((_E1120111210_
                    (lambda ()
                      (error '"No clause matching" _bind1119911206_))))
               (let ((_K1120211319_
                      (lambda (_rest11213_ _id11214_)
                        (gx#core-context-put!
                         _self11195_
                         _id11214_
                         (##structure
                          gx#syntax-binding::t
                          _id11214_
                          _id11214_
                          '#f
                          (let ((_rest1121511226_ _rest11213_))
                            (let ((_E1121711230_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1121511226_))))
                              (let ((_K1121811295_
                                     (lambda (_compiler11233_
                                              _expander11234_
                                              _key11235_)
                                       ((let ((_key1123611249_ _key11235_))
                                          (let ((_E1124211253_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1123611249_))))
                                            (let ((_try-match1124111261_
                                                   (lambda ()
                                                     (let ((_K1124311258_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1123611249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1124311258_)
                   (_E1124211253_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1124011269_
                                                     (lambda ()
                                                       (let ((_K1124411266_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1123611249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1124411266_)
                     (_try-match1124111261_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1123911277_
                                                       (lambda ()
                                                         (let ((_K1124511274_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1123611249_ 'define:)
                       (_K1124511274_)
                       (_try-match1124011269_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1123811285_
                                                         (lambda ()
                                                           (let ((_K1124611282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1123611249_ 'module:)
                         (_K1124611282_)
                         (_try-match1123911277_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1124711289_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1123611249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1124711289_)
                  (_try-match1123811285_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander11234_
                                        _id11214_
                                        (let ((_$e11292_ _compiler11233_))
                                          (if _$e11292_
                                              _$e11292_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1121511226_)
                                    (let ((_hd1121911298_
                                           (##car _rest1121511226_))
                                          (_tl1122011300_
                                           (##cdr _rest1121511226_)))
                                      (let ((_key11303_ _hd1121911298_))
                                        (if (##pair? _tl1122011300_)
                                            (let ((_hd1122111305_
                                                   (##car _tl1122011300_))
                                                  (_tl1122211307_
                                                   (##cdr _tl1122011300_)))
                                              (let ((_expander11310_
                                                     _hd1122111305_))
                                                (if (##pair? _tl1122211307_)
                                                    (let ((_hd1122311312_
                                                           (##car _tl1122211307_))
                                                          (_tl1122411314_
                                                           (##cdr _tl1122211307_)))
                                                      (let ((_compiler11317_
                                                             _hd1122311312_))
                                                        (if (##null? _tl1122411314_)
                                                            (_K1121811295_
                                                             _compiler11317_
                                                             _expander11310_
                                                             _key11303_)
                                                            (_E1121711230_))))
                                                    (_E1121711230_))))
                                            (_E1121711230_))))
                                    (_E1121711230_))))))))))
                 (if (##pair? _bind1119911206_)
                     (let ((_hd1120311322_ (##car _bind1119911206_))
                           (_tl1120411324_ (##cdr _bind1119911206_)))
                       (let ((_id11327_ _hd1120311322_))
                         (let ((_rest11329_ _tl1120411324_))
                           (_K1120211319_ _rest11329_ _id11327_))))
                     (_E1120111210_))))))
         _bindings11196_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self11334_)
          (let ((_bindings11336_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda11193
             _self11334_
             _bindings11336_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g11382_
          (let ((_g11381_ (length _g11382_)))
            (cond ((fx= _g11381_ 1)
                   (apply (lambda (_self11334_)
                            (gx#expander-context::bind-core-syntax-expanders!__0
                             _self11334_))
                          _g11382_))
                  ((fx= _g11381_ 2)
                   (apply (lambda (_self11338_ _bindings11339_)
                            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda11193
                             _self11338_
                             _bindings11339_))
                          _g11382_))
                  (else (error "No clause matching arguments" _g11382_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda11087
      (lambda (_self11089_ _bindings11090_)
        (for-each
         (lambda (_bind11092_)
           (let ((_bind1109311100_ _bind11092_))
             (let ((_E1109511104_
                    (lambda ()
                      (error '"No clause matching" _bind1109311100_))))
               (let ((_K1109611172_
                      (lambda (_rest11107_ _id11108_)
                        (gx#core-context-put!
                         _self11089_
                         _id11108_
                         (##structure
                          gx#syntax-binding::t
                          _id11108_
                          _id11108_
                          '#f
                          (let ((_rest1110911124_ _rest11107_))
                            (let ((_E1111311128_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1110911124_))))
                              (let ((_try-match1111211136_
                                     (lambda ()
                                       (let ((_K1111411133_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id11108_))))
                                         (if (##null? _rest1110911124_)
                                             (_K1111411133_)
                                             (_E1111311128_))))))
                                (let ((_try-match1111111152_
                                       (lambda ()
                                         (let ((_K1111511142_
                                                (lambda (_proc11140_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc11140_))))
                                           (if (##pair? _rest1110911124_)
                                               (let ((_hd1111611145_
                                                      (##car _rest1110911124_))
                                                     (_tl1111711147_
                                                      (##cdr _rest1110911124_)))
                                                 (let ((_proc11150_
                                                        _hd1111611145_))
                                                   (if (##null? _tl1111711147_)
                                                       (_K1111511142_
                                                        _proc11150_)
                                                       (_try-match1111211136_))))
                                               (_try-match1111211136_))))))
                                  (let ((_K1111811157_
                                         (lambda (_core-id11155_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id11155_))))
                                    (if (##pair? _rest1110911124_)
                                        (let ((_hd1111911160_
                                               (##car _rest1110911124_))
                                              (_tl1112011162_
                                               (##cdr _rest1110911124_)))
                                          (if (##eq? _hd1111911160_ '=>)
                                              (if (##pair? _tl1112011162_)
                                                  (let ((_hd1112111165_
                                                         (##car _tl1112011162_))
                                                        (_tl1112211167_
                                                         (##cdr _tl1112011162_)))
                                                    (let ((_core-id11170_
                                                           _hd1112111165_))
                                                      (if (##null? _tl1112211167_)
                                                          (_K1111811157_
                                                           _core-id11170_)
                                                          (_try-match1111111152_))))
                                                  (_try-match1111111152_))
                                              (_try-match1111111152_)))
                                        (_try-match1111111152_))))))))))))
                 (if (##pair? _bind1109311100_)
                     (let ((_hd1109711175_ (##car _bind1109311100_))
                           (_tl1109811177_ (##cdr _bind1109311100_)))
                       (let ((_id11180_ _hd1109711175_))
                         (let ((_rest11182_ _tl1109811177_))
                           (_K1109611172_ _rest11182_ _id11180_))))
                     (_E1109511104_))))))
         _bindings11090_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self11187_)
          (let ((_bindings11189_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda11087
             _self11187_
             _bindings11189_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g11384_
          (let ((_g11383_ (length _g11384_)))
            (cond ((fx= _g11383_ 1)
                   (apply (lambda (_self11187_)
                            (gx#expander-context::bind-core-macro-expanders!__0
                             _self11187_))
                          _g11384_))
                  ((fx= _g11383_ 2)
                   (apply (lambda (_self11191_ _bindings11192_)
                            (gx#expander-context::bind-core-macro-expanders!__opt-lambda11087
                             _self11191_
                             _bindings11192_))
                          _g11384_))
                  (else (error "No clause matching arguments" _g11384_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
