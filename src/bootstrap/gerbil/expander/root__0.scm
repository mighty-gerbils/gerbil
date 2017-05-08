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
  (define gx#root-context:::init!
    (let ((_opt-lambda1129211297_
           (lambda (_self11294_ _bind?11295_)
             (begin
               (direct-struct-instance-init!
                _self11294_
                'root
                (make-hash-table-eq))
               (if _bind?11295_
                   (begin
                     (call-method _self11294_ 'bind-core-syntax-expanders!)
                     (call-method _self11294_ 'bind-core-macro-expanders!))
                   '#!void)))))
      (lambda _g11307_
        (let ((_g11306_ (length _g11307_)))
          (cond ((fx= _g11306_ 1)
                 (apply (lambda (_self11300_)
                          (let ((_bind?11302_ '#t))
                            (_opt-lambda1129211297_ _self11300_ _bind?11302_)))
                        _g11307_))
                ((fx= _g11306_ 2)
                 (apply (lambda (_self11304_ _bind?11305_)
                          (_opt-lambda1129211297_ _self11304_ _bind?11305_))
                        _g11307_))
                (else (error "No clause matching arguments" _g11307_)))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (define gx#top-context:::init!
    (let ((_opt-lambda1127011283_
           (lambda (_self11272_ _super11273_)
             (let ((_super11281_
                    (let ((_$e11275_ _super11273_))
                      (if _$e11275_
                          _$e11275_
                          (let ((_$e11278_ (gx#core-context-root)))
                            (if _$e11278_
                                _$e11278_
                                (make-struct-instance gx#root-context::t)))))))
               (direct-struct-instance-init!
                _self11272_
                'top
                (make-hash-table-eq)
                _super11281_
                '#f
                '#f)))))
      (lambda _g11309_
        (let ((_g11308_ (length _g11309_)))
          (cond ((fx= _g11308_ 1)
                 (apply (lambda (_self11286_)
                          (let ((_super11288_ '#f))
                            (_opt-lambda1127011283_ _self11286_ _super11288_)))
                        _g11309_))
                ((fx= _g11308_ 2)
                 (apply (lambda (_self11290_ _super11291_)
                          (_opt-lambda1127011283_ _self11290_ _super11291_))
                        _g11309_))
                (else (error "No clause matching arguments" _g11309_)))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (define gx#expander-context::bind-core-syntax-expanders!
    (let ((_opt-lambda1112311261_
           (lambda (_self11125_ _bindings11126_)
             (for-each
              (lambda (_bind11128_)
                (let ((_bind1112911136_ _bind11128_))
                  (let ((_E1113111140_
                         (lambda ()
                           (error '"No clause matching" _bind1112911136_))))
                    (let ((_K1113211249_
                           (lambda (_rest11143_ _id11144_)
                             (gx#core-context-put!
                              _self11125_
                              _id11144_
                              (##structure
                               gx#syntax-binding::t
                               _id11144_
                               _id11144_
                               '#f
                               (let ((_rest1114511156_ _rest11143_))
                                 (let ((_E1114711160_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest1114511156_))))
                                   (let ((_K1114811225_
                                          (lambda (_compiler11163_
                                                   _expander11164_
                                                   _key11165_)
                                            ((let ((_key1116611179_
                                                    _key11165_))
                                               (let ((_E1117211183_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _key1116611179_))))
                                                 (let ((_try-match1117111191_
                                                        (lambda ()
                                                          (let ((_K1117311188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda () gx#make-expression-form)))
                    (if (##eq? _key1116611179_ 'expr:)
                        (_K1117311188_)
                        (_E1117211183_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_try-match1117011199_
                                                          (lambda ()
                                                            (let ((_K1117411196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda () gx#make-special-form)))
                      (if (##eq? _key1116611179_ 'special:)
                          (_K1117411196_)
                          (_try-match1117111191_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_try-match1116911207_
                                                            (lambda ()
                                                              (let ((_K1117511204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda () gx#make-definition-form)))
                        (if (##eq? _key1116611179_ 'define:)
                            (_K1117511204_)
                            (_try-match1117011199_))))))
               (let ((_try-match1116811215_
                      (lambda ()
                        (let ((_K1117611212_
                               (lambda () gx#make-module-special-form)))
                          (if (##eq? _key1116611179_ 'module:)
                              (_K1117611212_)
                              (_try-match1116911207_))))))
                 (let ((_K1117711219_ (lambda () gx#make-top-special-form)))
                   (if (##eq? _key1116611179_ 'top:)
                       (_K1117711219_)
                       (_try-match1116811215_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _expander11164_
                                             _id11144_
                                             (let ((_$e11222_ _compiler11163_))
                                               (if _$e11222_
                                                   _$e11222_
                                                   gx#core-compile-top-error))))))
                                     (if (##pair? _rest1114511156_)
                                         (let ((_hd1114911228_
                                                (##car _rest1114511156_))
                                               (_tl1115011230_
                                                (##cdr _rest1114511156_)))
                                           (let ((_key11233_ _hd1114911228_))
                                             (if (##pair? _tl1115011230_)
                                                 (let ((_hd1115111235_
                                                        (##car _tl1115011230_))
                                                       (_tl1115211237_
                                                        (##cdr _tl1115011230_)))
                                                   (let ((_expander11240_
                                                          _hd1115111235_))
                                                     (if (##pair? _tl1115211237_)
                                                         (let ((_hd1115311242_
                                                                (##car _tl1115211237_))
                                                               (_tl1115411244_
                                                                (##cdr _tl1115211237_)))
                                                           (let ((_compiler11247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1115311242_))
                     (if (##null? _tl1115411244_)
                         (_K1114811225_
                          _compiler11247_
                          _expander11240_
                          _key11233_)
                         (_E1114711160_))))
                 (_E1114711160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1114711160_))))
                                         (_E1114711160_))))))))))
                      (if (##pair? _bind1112911136_)
                          (let ((_hd1113311252_ (##car _bind1112911136_))
                                (_tl1113411254_ (##cdr _bind1112911136_)))
                            (let ((_id11257_ _hd1113311252_))
                              (let ((_rest11259_ _tl1113411254_))
                                (_K1113211249_ _rest11259_ _id11257_))))
                          (_E1113111140_))))))
              _bindings11126_))))
      (lambda _g11311_
        (let ((_g11310_ (length _g11311_)))
          (cond ((fx= _g11310_ 1)
                 (apply (lambda (_self11264_)
                          (let ((_bindings11266_ gx#*core-syntax-expanders*))
                            (_opt-lambda1112311261_
                             _self11264_
                             _bindings11266_)))
                        _g11311_))
                ((fx= _g11310_ 2)
                 (apply (lambda (_self11268_ _bindings11269_)
                          (_opt-lambda1112311261_ _self11268_ _bindings11269_))
                        _g11311_))
                (else (error "No clause matching arguments" _g11311_)))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (define gx#expander-context::bind-core-macro-expanders!
    (let ((_opt-lambda1101711114_
           (lambda (_self11019_ _bindings11020_)
             (for-each
              (lambda (_bind11022_)
                (let ((_bind1102311030_ _bind11022_))
                  (let ((_E1102511034_
                         (lambda ()
                           (error '"No clause matching" _bind1102311030_))))
                    (let ((_K1102611102_
                           (lambda (_rest11037_ _id11038_)
                             (gx#core-context-put!
                              _self11019_
                              _id11038_
                              (##structure
                               gx#syntax-binding::t
                               _id11038_
                               _id11038_
                               '#f
                               (let ((_rest1103911054_ _rest11037_))
                                 (let ((_E1104311058_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest1103911054_))))
                                   (let ((_try-match1104211066_
                                          (lambda ()
                                            (let ((_K1104411063_
                                                   (lambda ()
                                                     (##structure
                                                      gx#reserved-expander::t
                                                      _id11038_))))
                                              (if (##null? _rest1103911054_)
                                                  (_K1104411063_)
                                                  (_E1104311058_))))))
                                     (let ((_try-match1104111082_
                                            (lambda ()
                                              (let ((_K1104511072_
                                                     (lambda (_proc11070_)
                                                       (##structure
                                                        gx#macro-expander::t
                                                        _proc11070_))))
                                                (if (##pair? _rest1103911054_)
                                                    (let ((_hd1104611075_
                                                           (##car _rest1103911054_))
                                                          (_tl1104711077_
                                                           (##cdr _rest1103911054_)))
                                                      (let ((_proc11080_
                                                             _hd1104611075_))
                                                        (if (##null? _tl1104711077_)
                                                            (_K1104511072_
                                                             _proc11080_)
                                                            (_try-match1104211066_))))
                                                    (_try-match1104211066_))))))
                                       (let ((_K1104811087_
                                              (lambda (_core-id11085_)
                                                (##structure
                                                 gx#rename-macro-expander::t
                                                 _core-id11085_))))
                                         (if (##pair? _rest1103911054_)
                                             (let ((_hd1104911090_
                                                    (##car _rest1103911054_))
                                                   (_tl1105011092_
                                                    (##cdr _rest1103911054_)))
                                               (if (##eq? _hd1104911090_ '=>)
                                                   (if (##pair? _tl1105011092_)
                                                       (let ((_hd1105111095_
                                                              (##car _tl1105011092_))
                                                             (_tl1105211097_
                                                              (##cdr _tl1105011092_)))
                                                         (let ((_core-id11100_
                                                                _hd1105111095_))
                                                           (if (##null? _tl1105211097_)
                                                               (_K1104811087_
                                                                _core-id11100_)
                                                               (_try-match1104111082_))))
                                                       (_try-match1104111082_))
                                                   (_try-match1104111082_)))
                                             (_try-match1104111082_))))))))))))
                      (if (##pair? _bind1102311030_)
                          (let ((_hd1102711105_ (##car _bind1102311030_))
                                (_tl1102811107_ (##cdr _bind1102311030_)))
                            (let ((_id11110_ _hd1102711105_))
                              (let ((_rest11112_ _tl1102811107_))
                                (_K1102611102_ _rest11112_ _id11110_))))
                          (_E1102511034_))))))
              _bindings11020_))))
      (lambda _g11313_
        (let ((_g11312_ (length _g11313_)))
          (cond ((fx= _g11312_ 1)
                 (apply (lambda (_self11117_)
                          (let ((_bindings11119_ gx#*core-macro-expanders*))
                            (_opt-lambda1101711114_
                             _self11117_
                             _bindings11119_)))
                        _g11313_))
                ((fx= _g11312_ 2)
                 (apply (lambda (_self11121_ _bindings11122_)
                          (_opt-lambda1101711114_ _self11121_ _bindings11122_))
                        _g11313_))
                (else (error "No clause matching arguments" _g11313_)))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
