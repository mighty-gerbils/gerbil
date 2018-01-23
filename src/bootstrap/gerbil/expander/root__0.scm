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
    (define gx#root-context:::init!__opt-lambda16350
      (lambda (_self16352_ _bind?16353_)
        (begin
          (if (##fx< '2 (##vector-length _self16352_))
              (begin
                (##vector-set! _self16352_ '1 'root)
                (##vector-set! _self16352_ '2 (make-hash-table-eq)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16352_))
          (if _bind?16353_
              (begin
                (call-method _self16352_ 'bind-core-syntax-expanders!)
                (call-method _self16352_ 'bind-core-macro-expanders!)
                (call-method _self16352_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self16358_)
          (let ((_bind?16360_ '#t))
            (gx#root-context:::init!__opt-lambda16350
             _self16358_
             _bind?16360_))))
      (define gx#root-context:::init!
        (lambda _g16366_
          (let ((_g16365_ (length _g16366_)))
            (cond ((fx= _g16365_ 1)
                   (apply gx#root-context:::init!__0 _g16366_))
                  ((fx= _g16365_ 2)
                   (apply gx#root-context:::init!__opt-lambda16350 _g16366_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g16366_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda16206
      (lambda (_self16208_ _super16209_)
        (let ((_super16217_
               (let ((_$e16211_ _super16209_))
                 (if _$e16211_
                     _$e16211_
                     (let ((_$e16214_ (gx#core-context-root__0)))
                       (if _$e16214_
                           _$e16214_
                           (let ((__obj16364
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj16364)
                               __obj16364))))))))
          (if (##fx< '5 (##vector-length _self16208_))
              (begin
                (##vector-set! _self16208_ '1 'top)
                (##vector-set! _self16208_ '2 (make-hash-table-eq))
                (##vector-set! _self16208_ '3 _super16217_)
                (##vector-set! _self16208_ '4 '#f)
                (##vector-set! _self16208_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16208_)))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self16222_)
          (let ((_super16224_ '#f))
            (gx#top-context:::init!__opt-lambda16206
             _self16222_
             _super16224_))))
      (define gx#top-context:::init!
        (lambda _g16368_
          (let ((_g16367_ (length _g16368_)))
            (cond ((fx= _g16367_ 1) (apply gx#top-context:::init!__0 _g16368_))
                  ((fx= _g16367_ 2)
                   (apply gx#top-context:::init!__opt-lambda16206 _g16368_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g16368_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda15937
      (lambda (_self15939_ _bindings15940_)
        (for-each
         (lambda (_bind15942_)
           (let* ((_bind1594315950_ _bind15942_)
                  (_E1594515954_
                   (lambda () (error '"No clause matching" _bind1594315950_)))
                  (_K1594616063_
                   (lambda (_rest15957_ _id15958_)
                     (gx#core-context-put!
                      _self15939_
                      _id15958_
                      (##structure
                       gx#syntax-binding::t
                       _id15958_
                       _id15958_
                       '#f
                       (let* ((_rest1595915970_ _rest15957_)
                              (_E1596115974_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1595915970_)))
                              (_K1596216039_
                               (lambda (_compiler15977_
                                        _expander15978_
                                        _key15979_)
                                 ((let* ((_key1598015993_ _key15979_)
                                         (_E1598615997_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1598015993_)))
                                         (_try-match1598516005_
                                          (lambda ()
                                            (let ((_K1598716002_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1598015993_
                                                         'expr:)
                                                  (_K1598716002_)
                                                  (_E1598615997_)))))
                                         (_try-match1598416013_
                                          (lambda ()
                                            (let ((_K1598816010_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1598015993_
                                                         'special:)
                                                  (_K1598816010_)
                                                  (_try-match1598516005_)))))
                                         (_try-match1598316021_
                                          (lambda ()
                                            (let ((_K1598916018_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1598015993_
                                                         'define:)
                                                  (_K1598916018_)
                                                  (_try-match1598416013_)))))
                                         (_try-match1598216029_
                                          (lambda ()
                                            (let ((_K1599016026_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1598015993_
                                                         'module:)
                                                  (_K1599016026_)
                                                  (_try-match1598316021_)))))
                                         (_K1599116033_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1598015993_ 'top:)
                                        (_K1599116033_)
                                        (_try-match1598216029_)))
                                  _expander15978_
                                  _id15958_
                                  (let ((_$e16036_ _compiler15977_))
                                    (if _$e16036_
                                        _$e16036_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1595915970_)
                             (let ((_hd1596316042_ (##car _rest1595915970_))
                                   (_tl1596416044_ (##cdr _rest1595915970_)))
                               (let ((_key16047_ _hd1596316042_))
                                 (if (##pair? _tl1596416044_)
                                     (let ((_hd1596516049_
                                            (##car _tl1596416044_))
                                           (_tl1596616051_
                                            (##cdr _tl1596416044_)))
                                       (let ((_expander16054_ _hd1596516049_))
                                         (if (##pair? _tl1596616051_)
                                             (let ((_hd1596716056_
                                                    (##car _tl1596616051_))
                                                   (_tl1596816058_
                                                    (##cdr _tl1596616051_)))
                                               (let ((_compiler16061_
                                                      _hd1596716056_))
                                                 (if (##null? _tl1596816058_)
                                                     (_K1596216039_
                                                      _compiler16061_
                                                      _expander16054_
                                                      _key16047_)
                                                     (_E1596115974_))))
                                             (_E1596115974_))))
                                     (_E1596115974_))))
                             (_E1596115974_))))))))
             (if (##pair? _bind1594315950_)
                 (let ((_hd1594716066_ (##car _bind1594315950_))
                       (_tl1594816068_ (##cdr _bind1594315950_)))
                   (let* ((_id16071_ _hd1594716066_)
                          (_rest16073_ _tl1594816068_))
                     (_K1594616063_ _rest16073_ _id16071_)))
                 (_E1594515954_))))
         _bindings15940_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self16078_)
          (let ((_bindings16080_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda15937
             _self16078_
             _bindings16080_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g16370_
          (let ((_g16369_ (length _g16370_)))
            (cond ((fx= _g16369_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g16370_))
                  ((fx= _g16369_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda15937
                          _g16370_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g16370_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda15709
      (lambda (_self15711_ _bindings15712_)
        (for-each
         (lambda (_bind15714_)
           (let* ((_bind1571515722_ _bind15714_)
                  (_E1571715726_
                   (lambda () (error '"No clause matching" _bind1571515722_)))
                  (_K1571815794_
                   (lambda (_rest15729_ _id15730_)
                     (gx#core-context-put!
                      _self15711_
                      _id15730_
                      (##structure
                       gx#syntax-binding::t
                       _id15730_
                       _id15730_
                       '#f
                       (let* ((_rest1573115746_ _rest15729_)
                              (_E1573515750_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1573115746_)))
                              (_try-match1573415758_
                               (lambda ()
                                 (let ((_K1573615755_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id15730_))))
                                   (if (##null? _rest1573115746_)
                                       (_K1573615755_)
                                       (_E1573515750_)))))
                              (_try-match1573315774_
                               (lambda ()
                                 (let ((_K1573715764_
                                        (lambda (_proc15762_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc15762_))))
                                   (if (##pair? _rest1573115746_)
                                       (let ((_hd1573815767_
                                              (##car _rest1573115746_))
                                             (_tl1573915769_
                                              (##cdr _rest1573115746_)))
                                         (let ((_proc15772_ _hd1573815767_))
                                           (if (##null? _tl1573915769_)
                                               (_K1573715764_ _proc15772_)
                                               (_try-match1573415758_))))
                                       (_try-match1573415758_)))))
                              (_K1574015779_
                               (lambda (_core-id15777_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id15777_))))
                         (if (##pair? _rest1573115746_)
                             (let ((_hd1574115782_ (##car _rest1573115746_))
                                   (_tl1574215784_ (##cdr _rest1573115746_)))
                               (if (##eq? _hd1574115782_ '=>)
                                   (if (##pair? _tl1574215784_)
                                       (let ((_hd1574315787_
                                              (##car _tl1574215784_))
                                             (_tl1574415789_
                                              (##cdr _tl1574215784_)))
                                         (let ((_core-id15792_ _hd1574315787_))
                                           (if (##null? _tl1574415789_)
                                               (_K1574015779_ _core-id15792_)
                                               (_try-match1573315774_))))
                                       (_try-match1573315774_))
                                   (_try-match1573315774_)))
                             (_try-match1573315774_))))))))
             (if (##pair? _bind1571515722_)
                 (let ((_hd1571915797_ (##car _bind1571515722_))
                       (_tl1572015799_ (##cdr _bind1571515722_)))
                   (let* ((_id15802_ _hd1571915797_)
                          (_rest15804_ _tl1572015799_))
                     (_K1571815794_ _rest15804_ _id15802_)))
                 (_E1571715726_))))
         _bindings15712_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self15809_)
          (let ((_bindings15811_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda15709
             _self15809_
             _bindings15811_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g16372_
          (let ((_g16371_ (length _g16372_)))
            (cond ((fx= _g16371_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g16372_))
                  ((fx= _g16371_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda15709
                          _g16372_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g16372_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self15502_)
      (letrec ((_linux-variant?15504_
                (lambda (_sys-type15556_)
                  (let* ((_g1555715565_
                          (string-split (symbol->string _sys-type15556_) '#\-))
                         (_E1556015569_
                          (lambda ()
                            (error '"No clause matching" _g1555715565_)))
                         (_else1555915573_ (lambda () '#f))
                         (_K1556115578_
                          (lambda (_rest15576_) (not (null? _rest15576_)))))
                    (if (##pair? _g1555715565_)
                        (let ((_hd1556215581_ (##car _g1555715565_))
                              (_tl1556315583_ (##cdr _g1555715565_)))
                          (if (equal? _hd1556215581_ '"linux")
                              (let ((_rest15586_ _tl1556315583_))
                                (_K1556115578_ _rest15586_))
                              (_else1555915573_)))
                        (_else1555915573_))))))
        (begin
          (gx#core-bind-feature!__opt-lambda10718 'gerbil '#f '0 _self15502_)
          (gx#core-bind-feature!__opt-lambda10718
           (gerbil-system)
           '#f
           '0
           _self15502_)
          (let* ((_g1550515517_ (system-type))
                 (_E1550815521_
                  (lambda () (error '"No clause matching" _g1550515517_)))
                 (_else1550715525_ (lambda () '#!void))
                 (_K1550915532_
                  (lambda (_sys-type15528_ _sys-vendor15529_ _sys-cpu15530_)
                    (begin
                      (gx#core-bind-feature!__opt-lambda10718
                       _sys-cpu15530_
                       '#f
                       '0
                       _self15502_)
                      (gx#core-bind-feature!__opt-lambda10718
                       _sys-type15528_
                       '#f
                       '0
                       _self15502_)
                      (if (_linux-variant?15504_ _sys-type15528_)
                          (gx#core-bind-feature!__opt-lambda10718
                           'linux
                           '#f
                           '0
                           _self15502_)
                          '#!void)))))
            (if (##pair? _g1550515517_)
                (let ((_hd1551015535_ (##car _g1550515517_))
                      (_tl1551115537_ (##cdr _g1550515517_)))
                  (let ((_sys-cpu15540_ _hd1551015535_))
                    (if (##pair? _tl1551115537_)
                        (let ((_hd1551215542_ (##car _tl1551115537_))
                              (_tl1551315544_ (##cdr _tl1551115537_)))
                          (let ((_sys-vendor15547_ _hd1551215542_))
                            (if (##pair? _tl1551315544_)
                                (let ((_hd1551415549_ (##car _tl1551315544_))
                                      (_tl1551515551_ (##cdr _tl1551315544_)))
                                  (let ((_sys-type15554_ _hd1551415549_))
                                    (if (##null? _tl1551515551_)
                                        (_K1550915532_
                                         _sys-type15554_
                                         _sys-vendor15547_
                                         _sys-cpu15540_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
