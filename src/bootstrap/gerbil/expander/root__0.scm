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
    (define gx#root-context:::init!__opt-lambda16565
      (lambda (_self16567_ _bind?16568_)
        (begin
          (if (##fx< '2 (##vector-length _self16567_))
              (begin
                (##vector-set! _self16567_ '1 'root)
                (##vector-set! _self16567_ '2 (make-hash-table-eq)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16567_))
          (if _bind?16568_
              (begin
                (call-method _self16567_ 'bind-core-syntax-expanders!)
                (call-method _self16567_ 'bind-core-macro-expanders!)
                (call-method _self16567_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self16573_)
          (let ((_bind?16575_ '#t))
            (gx#root-context:::init!__opt-lambda16565
             _self16573_
             _bind?16575_))))
      (define gx#root-context:::init!
        (lambda _g16581_
          (let ((_g16580_ (length _g16581_)))
            (cond ((fx= _g16580_ 1)
                   (apply gx#root-context:::init!__0 _g16581_))
                  ((fx= _g16580_ 2)
                   (apply gx#root-context:::init!__opt-lambda16565 _g16581_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g16581_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda16421
      (lambda (_self16423_ _super16424_)
        (let ((_super16432_
               (let ((_$e16426_ _super16424_))
                 (if _$e16426_
                     _$e16426_
                     (let ((_$e16429_ (gx#core-context-root__0)))
                       (if _$e16429_
                           _$e16429_
                           (let ((__obj16579
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj16579)
                               __obj16579))))))))
          (if (##fx< '5 (##vector-length _self16423_))
              (begin
                (##vector-set! _self16423_ '1 'top)
                (##vector-set! _self16423_ '2 (make-hash-table-eq))
                (##vector-set! _self16423_ '3 _super16432_)
                (##vector-set! _self16423_ '4 '#f)
                (##vector-set! _self16423_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16423_)))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self16437_)
          (let ((_super16439_ '#f))
            (gx#top-context:::init!__opt-lambda16421
             _self16437_
             _super16439_))))
      (define gx#top-context:::init!
        (lambda _g16583_
          (let ((_g16582_ (length _g16583_)))
            (cond ((fx= _g16582_ 1) (apply gx#top-context:::init!__0 _g16583_))
                  ((fx= _g16582_ 2)
                   (apply gx#top-context:::init!__opt-lambda16421 _g16583_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g16583_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda16152
      (lambda (_self16154_ _bindings16155_)
        (for-each
         (lambda (_bind16157_)
           (let* ((_bind1615816165_ _bind16157_)
                  (_E1616016169_
                   (lambda () (error '"No clause matching" _bind1615816165_)))
                  (_K1616116278_
                   (lambda (_rest16172_ _id16173_)
                     (gx#core-context-put!
                      _self16154_
                      _id16173_
                      (##structure
                       gx#syntax-binding::t
                       _id16173_
                       _id16173_
                       '#f
                       (let* ((_rest1617416185_ _rest16172_)
                              (_E1617616189_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1617416185_)))
                              (_K1617716254_
                               (lambda (_compiler16192_
                                        _expander16193_
                                        _key16194_)
                                 ((let* ((_key1619516208_ _key16194_)
                                         (_E1620116212_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1619516208_)))
                                         (_try-match1620016220_
                                          (lambda ()
                                            (let ((_K1620216217_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1619516208_
                                                         'expr:)
                                                  (_K1620216217_)
                                                  (_E1620116212_)))))
                                         (_try-match1619916228_
                                          (lambda ()
                                            (let ((_K1620316225_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1619516208_
                                                         'special:)
                                                  (_K1620316225_)
                                                  (_try-match1620016220_)))))
                                         (_try-match1619816236_
                                          (lambda ()
                                            (let ((_K1620416233_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1619516208_
                                                         'define:)
                                                  (_K1620416233_)
                                                  (_try-match1619916228_)))))
                                         (_try-match1619716244_
                                          (lambda ()
                                            (let ((_K1620516241_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1619516208_
                                                         'module:)
                                                  (_K1620516241_)
                                                  (_try-match1619816236_)))))
                                         (_K1620616248_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1619516208_ 'top:)
                                        (_K1620616248_)
                                        (_try-match1619716244_)))
                                  _expander16193_
                                  _id16173_
                                  (let ((_$e16251_ _compiler16192_))
                                    (if _$e16251_
                                        _$e16251_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1617416185_)
                             (let ((_hd1617816257_ (##car _rest1617416185_))
                                   (_tl1617916259_ (##cdr _rest1617416185_)))
                               (let ((_key16262_ _hd1617816257_))
                                 (if (##pair? _tl1617916259_)
                                     (let ((_hd1618016264_
                                            (##car _tl1617916259_))
                                           (_tl1618116266_
                                            (##cdr _tl1617916259_)))
                                       (let ((_expander16269_ _hd1618016264_))
                                         (if (##pair? _tl1618116266_)
                                             (let ((_hd1618216271_
                                                    (##car _tl1618116266_))
                                                   (_tl1618316273_
                                                    (##cdr _tl1618116266_)))
                                               (let ((_compiler16276_
                                                      _hd1618216271_))
                                                 (if (##null? _tl1618316273_)
                                                     (_K1617716254_
                                                      _compiler16276_
                                                      _expander16269_
                                                      _key16262_)
                                                     (_E1617616189_))))
                                             (_E1617616189_))))
                                     (_E1617616189_))))
                             (_E1617616189_))))))))
             (if (##pair? _bind1615816165_)
                 (let ((_hd1616216281_ (##car _bind1615816165_))
                       (_tl1616316283_ (##cdr _bind1615816165_)))
                   (let* ((_id16286_ _hd1616216281_)
                          (_rest16288_ _tl1616316283_))
                     (_K1616116278_ _rest16288_ _id16286_)))
                 (_E1616016169_))))
         _bindings16155_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self16293_)
          (let ((_bindings16295_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda16152
             _self16293_
             _bindings16295_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g16585_
          (let ((_g16584_ (length _g16585_)))
            (cond ((fx= _g16584_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g16585_))
                  ((fx= _g16584_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda16152
                          _g16585_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g16585_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda15924
      (lambda (_self15926_ _bindings15927_)
        (for-each
         (lambda (_bind15929_)
           (let* ((_bind1593015937_ _bind15929_)
                  (_E1593215941_
                   (lambda () (error '"No clause matching" _bind1593015937_)))
                  (_K1593316009_
                   (lambda (_rest15944_ _id15945_)
                     (gx#core-context-put!
                      _self15926_
                      _id15945_
                      (##structure
                       gx#syntax-binding::t
                       _id15945_
                       _id15945_
                       '#f
                       (let* ((_rest1594615961_ _rest15944_)
                              (_E1595015965_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1594615961_)))
                              (_try-match1594915973_
                               (lambda ()
                                 (let ((_K1595115970_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id15945_))))
                                   (if (##null? _rest1594615961_)
                                       (_K1595115970_)
                                       (_E1595015965_)))))
                              (_try-match1594815989_
                               (lambda ()
                                 (let ((_K1595215979_
                                        (lambda (_proc15977_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc15977_))))
                                   (if (##pair? _rest1594615961_)
                                       (let ((_hd1595315982_
                                              (##car _rest1594615961_))
                                             (_tl1595415984_
                                              (##cdr _rest1594615961_)))
                                         (let ((_proc15987_ _hd1595315982_))
                                           (if (##null? _tl1595415984_)
                                               (_K1595215979_ _proc15987_)
                                               (_try-match1594915973_))))
                                       (_try-match1594915973_)))))
                              (_K1595515994_
                               (lambda (_core-id15992_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id15992_))))
                         (if (##pair? _rest1594615961_)
                             (let ((_hd1595615997_ (##car _rest1594615961_))
                                   (_tl1595715999_ (##cdr _rest1594615961_)))
                               (if (##eq? _hd1595615997_ '=>)
                                   (if (##pair? _tl1595715999_)
                                       (let ((_hd1595816002_
                                              (##car _tl1595715999_))
                                             (_tl1595916004_
                                              (##cdr _tl1595715999_)))
                                         (let ((_core-id16007_ _hd1595816002_))
                                           (if (##null? _tl1595916004_)
                                               (_K1595515994_ _core-id16007_)
                                               (_try-match1594815989_))))
                                       (_try-match1594815989_))
                                   (_try-match1594815989_)))
                             (_try-match1594815989_))))))))
             (if (##pair? _bind1593015937_)
                 (let ((_hd1593416012_ (##car _bind1593015937_))
                       (_tl1593516014_ (##cdr _bind1593015937_)))
                   (let* ((_id16017_ _hd1593416012_)
                          (_rest16019_ _tl1593516014_))
                     (_K1593316009_ _rest16019_ _id16017_)))
                 (_E1593215941_))))
         _bindings15927_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self16024_)
          (let ((_bindings16026_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda15924
             _self16024_
             _bindings16026_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g16587_
          (let ((_g16586_ (length _g16587_)))
            (cond ((fx= _g16586_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g16587_))
                  ((fx= _g16586_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda15924
                          _g16587_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g16587_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self15717_)
      (letrec ((_linux-variant?15719_
                (lambda (_sys-type15771_)
                  (let* ((_g1577215780_
                          (string-split (symbol->string _sys-type15771_) '#\-))
                         (_E1577515784_
                          (lambda ()
                            (error '"No clause matching" _g1577215780_)))
                         (_else1577415788_ (lambda () '#f))
                         (_K1577615793_
                          (lambda (_rest15791_) (not (null? _rest15791_)))))
                    (if (##pair? _g1577215780_)
                        (let ((_hd1577715796_ (##car _g1577215780_))
                              (_tl1577815798_ (##cdr _g1577215780_)))
                          (if (equal? _hd1577715796_ '"linux")
                              (let ((_rest15801_ _tl1577815798_))
                                (_K1577615793_ _rest15801_))
                              (_else1577415788_)))
                        (_else1577415788_))))))
        (begin
          (gx#core-bind-feature!__opt-lambda10722 'gerbil '#f '0 _self15717_)
          (gx#core-bind-feature!__opt-lambda10722
           (gerbil-system)
           '#f
           '0
           _self15717_)
          (let* ((_g1572015732_ (system-type))
                 (_E1572315736_
                  (lambda () (error '"No clause matching" _g1572015732_)))
                 (_else1572215740_ (lambda () '#!void))
                 (_K1572415747_
                  (lambda (_sys-type15743_ _sys-vendor15744_ _sys-cpu15745_)
                    (begin
                      (gx#core-bind-feature!__opt-lambda10722
                       _sys-cpu15745_
                       '#f
                       '0
                       _self15717_)
                      (gx#core-bind-feature!__opt-lambda10722
                       _sys-type15743_
                       '#f
                       '0
                       _self15717_)
                      (if (_linux-variant?15719_ _sys-type15743_)
                          (gx#core-bind-feature!__opt-lambda10722
                           'linux
                           '#f
                           '0
                           _self15717_)
                          '#!void)))))
            (if (##pair? _g1572015732_)
                (let ((_hd1572515750_ (##car _g1572015732_))
                      (_tl1572615752_ (##cdr _g1572015732_)))
                  (let ((_sys-cpu15755_ _hd1572515750_))
                    (if (##pair? _tl1572615752_)
                        (let ((_hd1572715757_ (##car _tl1572615752_))
                              (_tl1572815759_ (##cdr _tl1572615752_)))
                          (let ((_sys-vendor15762_ _hd1572715757_))
                            (if (##pair? _tl1572815759_)
                                (let ((_hd1572915764_ (##car _tl1572815759_))
                                      (_tl1573015766_ (##cdr _tl1572815759_)))
                                  (let ((_sys-type15769_ _hd1572915764_))
                                    (if (##null? _tl1573015766_)
                                        (_K1572415747_
                                         _sys-type15769_
                                         _sys-vendor15762_
                                         _sys-cpu15755_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__opt-lambda10722
               'gerbil-smp
               '#f
               '0
               _self15717_)
              '#!void)))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
