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
    (define gx#root-context:::init!__opt-lambda12172
      (lambda (_self12174_ _bind?12175_)
        (begin
          (direct-struct-instance-init! _self12174_ 'root (make-hash-table-eq))
          (if _bind?12175_
              (begin
                (call-method _self12174_ 'bind-core-syntax-expanders!)
                (call-method _self12174_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self12180_)
          (let ((_bind?12182_ '#t))
            (gx#root-context:::init!__opt-lambda12172
             _self12180_
             _bind?12182_))))
      (define gx#root-context:::init!
        (lambda _g12188_
          (let ((_g12187_ (length _g12188_)))
            (cond ((fx= _g12187_ 1)
                   (apply gx#root-context:::init!__0 _g12188_))
                  ((fx= _g12187_ 2)
                   (apply gx#root-context:::init!__opt-lambda12172 _g12188_))
                  (else (error "No clause matching arguments" _g12188_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12150
      (lambda (_self12152_ _super12153_)
        (let ((_super12161_
               (let ((_$e12155_ _super12153_))
                 (if _$e12155_
                     _$e12155_
                     (let ((_$e12158_ (gx#core-context-root__0)))
                       (if _$e12158_
                           _$e12158_
                           (let ((__obj12186
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj12186)
                               __obj12186))))))))
          (direct-struct-instance-init!
           _self12152_
           'top
           (make-hash-table-eq)
           _super12161_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self12166_)
          (let ((_super12168_ '#f))
            (gx#top-context:::init!__opt-lambda12150
             _self12166_
             _super12168_))))
      (define gx#top-context:::init!
        (lambda _g12190_
          (let ((_g12189_ (length _g12190_)))
            (cond ((fx= _g12189_ 1) (apply gx#top-context:::init!__0 _g12190_))
                  ((fx= _g12189_ 2)
                   (apply gx#top-context:::init!__opt-lambda12150 _g12190_))
                  (else (error "No clause matching arguments" _g12190_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12003
      (lambda (_self12005_ _bindings12006_)
        (for-each
         (lambda (_bind12008_)
           (let ((_bind1200912016_ _bind12008_))
             (let ((_E1201112020_
                    (lambda ()
                      (error '"No clause matching" _bind1200912016_))))
               (let ((_K1201212129_
                      (lambda (_rest12023_ _id12024_)
                        (gx#core-context-put!
                         _self12005_
                         _id12024_
                         (##structure
                          gx#syntax-binding::t
                          _id12024_
                          _id12024_
                          '#f
                          (let ((_rest1202512036_ _rest12023_))
                            (let ((_E1202712040_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1202512036_))))
                              (let ((_K1202812105_
                                     (lambda (_compiler12043_
                                              _expander12044_
                                              _key12045_)
                                       ((let ((_key1204612059_ _key12045_))
                                          (let ((_E1205212063_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1204612059_))))
                                            (let ((_try-match1205112071_
                                                   (lambda ()
                                                     (let ((_K1205312068_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1204612059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1205312068_)
                   (_E1205212063_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1205012079_
                                                     (lambda ()
                                                       (let ((_K1205412076_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1204612059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1205412076_)
                     (_try-match1205112071_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1204912087_
                                                       (lambda ()
                                                         (let ((_K1205512084_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1204612059_ 'define:)
                       (_K1205512084_)
                       (_try-match1205012079_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1204812095_
                                                         (lambda ()
                                                           (let ((_K1205612092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1204612059_ 'module:)
                         (_K1205612092_)
                         (_try-match1204912087_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1205712099_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1204612059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1205712099_)
                  (_try-match1204812095_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12044_
                                        _id12024_
                                        (let ((_$e12102_ _compiler12043_))
                                          (if _$e12102_
                                              _$e12102_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1202512036_)
                                    (let ((_hd1202912108_
                                           (##car _rest1202512036_))
                                          (_tl1203012110_
                                           (##cdr _rest1202512036_)))
                                      (let ((_key12113_ _hd1202912108_))
                                        (if (##pair? _tl1203012110_)
                                            (let ((_hd1203112115_
                                                   (##car _tl1203012110_))
                                                  (_tl1203212117_
                                                   (##cdr _tl1203012110_)))
                                              (let ((_expander12120_
                                                     _hd1203112115_))
                                                (if (##pair? _tl1203212117_)
                                                    (let ((_hd1203312122_
                                                           (##car _tl1203212117_))
                                                          (_tl1203412124_
                                                           (##cdr _tl1203212117_)))
                                                      (let ((_compiler12127_
                                                             _hd1203312122_))
                                                        (if (##null? _tl1203412124_)
                                                            (_K1202812105_
                                                             _compiler12127_
                                                             _expander12120_
                                                             _key12113_)
                                                            (_E1202712040_))))
                                                    (_E1202712040_))))
                                            (_E1202712040_))))
                                    (_E1202712040_))))))))))
                 (if (##pair? _bind1200912016_)
                     (let ((_hd1201312132_ (##car _bind1200912016_))
                           (_tl1201412134_ (##cdr _bind1200912016_)))
                       (let ((_id12137_ _hd1201312132_))
                         (let ((_rest12139_ _tl1201412134_))
                           (_K1201212129_ _rest12139_ _id12137_))))
                     (_E1201112020_))))))
         _bindings12006_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12144_)
          (let ((_bindings12146_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12003
             _self12144_
             _bindings12146_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g12192_
          (let ((_g12191_ (length _g12192_)))
            (cond ((fx= _g12191_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g12192_))
                  ((fx= _g12191_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12003
                          _g12192_))
                  (else (error "No clause matching arguments" _g12192_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda11897
      (lambda (_self11899_ _bindings11900_)
        (for-each
         (lambda (_bind11902_)
           (let ((_bind1190311910_ _bind11902_))
             (let ((_E1190511914_
                    (lambda ()
                      (error '"No clause matching" _bind1190311910_))))
               (let ((_K1190611982_
                      (lambda (_rest11917_ _id11918_)
                        (gx#core-context-put!
                         _self11899_
                         _id11918_
                         (##structure
                          gx#syntax-binding::t
                          _id11918_
                          _id11918_
                          '#f
                          (let ((_rest1191911934_ _rest11917_))
                            (let ((_E1192311938_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1191911934_))))
                              (let ((_try-match1192211946_
                                     (lambda ()
                                       (let ((_K1192411943_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id11918_))))
                                         (if (##null? _rest1191911934_)
                                             (_K1192411943_)
                                             (_E1192311938_))))))
                                (let ((_try-match1192111962_
                                       (lambda ()
                                         (let ((_K1192511952_
                                                (lambda (_proc11950_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc11950_))))
                                           (if (##pair? _rest1191911934_)
                                               (let ((_hd1192611955_
                                                      (##car _rest1191911934_))
                                                     (_tl1192711957_
                                                      (##cdr _rest1191911934_)))
                                                 (let ((_proc11960_
                                                        _hd1192611955_))
                                                   (if (##null? _tl1192711957_)
                                                       (_K1192511952_
                                                        _proc11960_)
                                                       (_try-match1192211946_))))
                                               (_try-match1192211946_))))))
                                  (let ((_K1192811967_
                                         (lambda (_core-id11965_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id11965_))))
                                    (if (##pair? _rest1191911934_)
                                        (let ((_hd1192911970_
                                               (##car _rest1191911934_))
                                              (_tl1193011972_
                                               (##cdr _rest1191911934_)))
                                          (if (##eq? _hd1192911970_ '=>)
                                              (if (##pair? _tl1193011972_)
                                                  (let ((_hd1193111975_
                                                         (##car _tl1193011972_))
                                                        (_tl1193211977_
                                                         (##cdr _tl1193011972_)))
                                                    (let ((_core-id11980_
                                                           _hd1193111975_))
                                                      (if (##null? _tl1193211977_)
                                                          (_K1192811967_
                                                           _core-id11980_)
                                                          (_try-match1192111962_))))
                                                  (_try-match1192111962_))
                                              (_try-match1192111962_)))
                                        (_try-match1192111962_))))))))))))
                 (if (##pair? _bind1190311910_)
                     (let ((_hd1190711985_ (##car _bind1190311910_))
                           (_tl1190811987_ (##cdr _bind1190311910_)))
                       (let ((_id11990_ _hd1190711985_))
                         (let ((_rest11992_ _tl1190811987_))
                           (_K1190611982_ _rest11992_ _id11990_))))
                     (_E1190511914_))))))
         _bindings11900_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self11997_)
          (let ((_bindings11999_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda11897
             _self11997_
             _bindings11999_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g12194_
          (let ((_g12193_ (length _g12194_)))
            (cond ((fx= _g12193_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g12194_))
                  ((fx= _g12193_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda11897
                          _g12194_))
                  (else (error "No clause matching arguments" _g12194_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
