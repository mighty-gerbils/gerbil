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
    (define gx#root-context:::init!__opt-lambda13251
      (lambda (_self13253_ _bind?13254_)
        (begin
          (struct-instance-init! _self13253_ 'root (make-hash-table-eq))
          (if _bind?13254_
              (begin
                (call-method _self13253_ 'bind-core-syntax-expanders!)
                (call-method _self13253_ 'bind-core-macro-expanders!)
                (call-method _self13253_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self13259_)
          (let ((_bind?13261_ '#t))
            (gx#root-context:::init!__opt-lambda13251
             _self13259_
             _bind?13261_))))
      (define gx#root-context:::init!
        (lambda _g13267_
          (let ((_g13266_ (length _g13267_)))
            (cond ((fx= _g13266_ 1)
                   (apply gx#root-context:::init!__0 _g13267_))
                  ((fx= _g13266_ 2)
                   (apply gx#root-context:::init!__opt-lambda13251 _g13267_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g13267_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda13229
      (lambda (_self13231_ _super13232_)
        (let ((_super13240_
               (let ((_$e13234_ _super13232_))
                 (if _$e13234_
                     _$e13234_
                     (let ((_$e13237_ (gx#core-context-root__0)))
                       (if _$e13237_
                           _$e13237_
                           (let ((__obj13265
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj13265)
                               __obj13265))))))))
          (struct-instance-init!
           _self13231_
           'top
           (make-hash-table-eq)
           _super13240_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self13245_)
          (let ((_super13247_ '#f))
            (gx#top-context:::init!__opt-lambda13229
             _self13245_
             _super13247_))))
      (define gx#top-context:::init!
        (lambda _g13269_
          (let ((_g13268_ (length _g13269_)))
            (cond ((fx= _g13268_ 1) (apply gx#top-context:::init!__0 _g13269_))
                  ((fx= _g13268_ 2)
                   (apply gx#top-context:::init!__opt-lambda13229 _g13269_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g13269_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda13082
      (lambda (_self13084_ _bindings13085_)
        (for-each
         (lambda (_bind13087_)
           (let* ((_bind1308813095_ _bind13087_)
                  (_E1309013099_
                   (lambda () (error '"No clause matching" _bind1308813095_)))
                  (_K1309113208_
                   (lambda (_rest13102_ _id13103_)
                     (gx#core-context-put!
                      _self13084_
                      _id13103_
                      (##structure
                       gx#syntax-binding::t
                       _id13103_
                       _id13103_
                       '#f
                       (let* ((_rest1310413115_ _rest13102_)
                              (_E1310613119_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1310413115_)))
                              (_K1310713184_
                               (lambda (_compiler13122_
                                        _expander13123_
                                        _key13124_)
                                 ((let* ((_key1312513138_ _key13124_)
                                         (_E1313113142_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1312513138_)))
                                         (_try-match1313013150_
                                          (lambda ()
                                            (let ((_K1313213147_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1312513138_
                                                         'expr:)
                                                  (_K1313213147_)
                                                  (_E1313113142_)))))
                                         (_try-match1312913158_
                                          (lambda ()
                                            (let ((_K1313313155_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1312513138_
                                                         'special:)
                                                  (_K1313313155_)
                                                  (_try-match1313013150_)))))
                                         (_try-match1312813166_
                                          (lambda ()
                                            (let ((_K1313413163_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1312513138_
                                                         'define:)
                                                  (_K1313413163_)
                                                  (_try-match1312913158_)))))
                                         (_try-match1312713174_
                                          (lambda ()
                                            (let ((_K1313513171_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1312513138_
                                                         'module:)
                                                  (_K1313513171_)
                                                  (_try-match1312813166_)))))
                                         (_K1313613178_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1312513138_ 'top:)
                                        (_K1313613178_)
                                        (_try-match1312713174_)))
                                  _expander13123_
                                  _id13103_
                                  (let ((_$e13181_ _compiler13122_))
                                    (if _$e13181_
                                        _$e13181_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1310413115_)
                             (let ((_hd1310813187_ (##car _rest1310413115_))
                                   (_tl1310913189_ (##cdr _rest1310413115_)))
                               (let ((_key13192_ _hd1310813187_))
                                 (if (##pair? _tl1310913189_)
                                     (let ((_hd1311013194_
                                            (##car _tl1310913189_))
                                           (_tl1311113196_
                                            (##cdr _tl1310913189_)))
                                       (let ((_expander13199_ _hd1311013194_))
                                         (if (##pair? _tl1311113196_)
                                             (let ((_hd1311213201_
                                                    (##car _tl1311113196_))
                                                   (_tl1311313203_
                                                    (##cdr _tl1311113196_)))
                                               (let ((_compiler13206_
                                                      _hd1311213201_))
                                                 (if (##null? _tl1311313203_)
                                                     (_K1310713184_
                                                      _compiler13206_
                                                      _expander13199_
                                                      _key13192_)
                                                     (_E1310613119_))))
                                             (_E1310613119_))))
                                     (_E1310613119_))))
                             (_E1310613119_))))))))
             (if (##pair? _bind1308813095_)
                 (let ((_hd1309213211_ (##car _bind1308813095_))
                       (_tl1309313213_ (##cdr _bind1308813095_)))
                   (let* ((_id13216_ _hd1309213211_)
                          (_rest13218_ _tl1309313213_))
                     (_K1309113208_ _rest13218_ _id13216_)))
                 (_E1309013099_))))
         _bindings13085_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self13223_)
          (let ((_bindings13225_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda13082
             _self13223_
             _bindings13225_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g13271_
          (let ((_g13270_ (length _g13271_)))
            (cond ((fx= _g13270_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g13271_))
                  ((fx= _g13270_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda13082
                          _g13271_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g13271_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12976
      (lambda (_self12978_ _bindings12979_)
        (for-each
         (lambda (_bind12981_)
           (let* ((_bind1298212989_ _bind12981_)
                  (_E1298412993_
                   (lambda () (error '"No clause matching" _bind1298212989_)))
                  (_K1298513061_
                   (lambda (_rest12996_ _id12997_)
                     (gx#core-context-put!
                      _self12978_
                      _id12997_
                      (##structure
                       gx#syntax-binding::t
                       _id12997_
                       _id12997_
                       '#f
                       (let* ((_rest1299813013_ _rest12996_)
                              (_E1300213017_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1299813013_)))
                              (_try-match1300113025_
                               (lambda ()
                                 (let ((_K1300313022_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id12997_))))
                                   (if (##null? _rest1299813013_)
                                       (_K1300313022_)
                                       (_E1300213017_)))))
                              (_try-match1300013041_
                               (lambda ()
                                 (let ((_K1300413031_
                                        (lambda (_proc13029_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc13029_))))
                                   (if (##pair? _rest1299813013_)
                                       (let ((_hd1300513034_
                                              (##car _rest1299813013_))
                                             (_tl1300613036_
                                              (##cdr _rest1299813013_)))
                                         (let ((_proc13039_ _hd1300513034_))
                                           (if (##null? _tl1300613036_)
                                               (_K1300413031_ _proc13039_)
                                               (_try-match1300113025_))))
                                       (_try-match1300113025_)))))
                              (_K1300713046_
                               (lambda (_core-id13044_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id13044_))))
                         (if (##pair? _rest1299813013_)
                             (let ((_hd1300813049_ (##car _rest1299813013_))
                                   (_tl1300913051_ (##cdr _rest1299813013_)))
                               (if (##eq? _hd1300813049_ '=>)
                                   (if (##pair? _tl1300913051_)
                                       (let ((_hd1301013054_
                                              (##car _tl1300913051_))
                                             (_tl1301113056_
                                              (##cdr _tl1300913051_)))
                                         (let ((_core-id13059_ _hd1301013054_))
                                           (if (##null? _tl1301113056_)
                                               (_K1300713046_ _core-id13059_)
                                               (_try-match1300013041_))))
                                       (_try-match1300013041_))
                                   (_try-match1300013041_)))
                             (_try-match1300013041_))))))))
             (if (##pair? _bind1298212989_)
                 (let ((_hd1298613064_ (##car _bind1298212989_))
                       (_tl1298713066_ (##cdr _bind1298212989_)))
                   (let* ((_id13069_ _hd1298613064_)
                          (_rest13071_ _tl1298713066_))
                     (_K1298513061_ _rest13071_ _id13069_)))
                 (_E1298412993_))))
         _bindings12979_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self13076_)
          (let ((_bindings13078_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12976
             _self13076_
             _bindings13078_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g13273_
          (let ((_g13272_ (length _g13273_)))
            (cond ((fx= _g13272_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g13273_))
                  ((fx= _g13272_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12976
                          _g13273_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g13273_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self12891_)
      (letrec ((_linux-variant?12893_
                (lambda (_sys-type12945_)
                  (let* ((_g1294612954_
                          (string-split (symbol->string _sys-type12945_) '#\-))
                         (_E1294912958_
                          (lambda ()
                            (error '"No clause matching" _g1294612954_)))
                         (_else1294812962_ (lambda () '#f))
                         (_K1295012967_
                          (lambda (_rest12965_) (not (null? _rest12965_)))))
                    (if (##pair? _g1294612954_)
                        (let ((_hd1295112970_ (##car _g1294612954_))
                              (_tl1295212972_ (##cdr _g1294612954_)))
                          (if (equal? _hd1295112970_ '"linux")
                              (let ((_rest12975_ _tl1295212972_))
                                (_K1295012967_ _rest12975_))
                              (_else1294812962_)))
                        (_else1294812962_))))))
        (begin
          (gx#core-bind-feature!__opt-lambda9199 'gerbil '#f '0 _self12891_)
          (gx#core-bind-feature!__opt-lambda9199
           (gerbil-system)
           '#f
           '0
           _self12891_)
          (let* ((_g1289412906_ (system-type))
                 (_E1289712910_
                  (lambda () (error '"No clause matching" _g1289412906_)))
                 (_else1289612914_ (lambda () '#!void))
                 (_K1289812921_
                  (lambda (_sys-type12917_ _sys-vendor12918_ _sys-cpu12919_)
                    (begin
                      (gx#core-bind-feature!__opt-lambda9199
                       _sys-cpu12919_
                       '#f
                       '0
                       _self12891_)
                      (gx#core-bind-feature!__opt-lambda9199
                       _sys-type12917_
                       '#f
                       '0
                       _self12891_)
                      (if (_linux-variant?12893_ _sys-type12917_)
                          (gx#core-bind-feature!__opt-lambda9199
                           'linux
                           '#f
                           '0
                           _self12891_)
                          '#!void)))))
            (if (##pair? _g1289412906_)
                (let ((_hd1289912924_ (##car _g1289412906_))
                      (_tl1290012926_ (##cdr _g1289412906_)))
                  (let ((_sys-cpu12929_ _hd1289912924_))
                    (if (##pair? _tl1290012926_)
                        (let ((_hd1290112931_ (##car _tl1290012926_))
                              (_tl1290212933_ (##cdr _tl1290012926_)))
                          (let ((_sys-vendor12936_ _hd1290112931_))
                            (if (##pair? _tl1290212933_)
                                (let ((_hd1290312938_ (##car _tl1290212933_))
                                      (_tl1290412940_ (##cdr _tl1290212933_)))
                                  (let ((_sys-type12943_ _hd1290312938_))
                                    (if (##null? _tl1290412940_)
                                        (_K1289812921_
                                         _sys-type12943_
                                         _sys-vendor12936_
                                         _sys-cpu12929_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
