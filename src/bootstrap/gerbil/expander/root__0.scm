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
    (define gx#root-context:::init!__%
      (lambda (_self16588_ _bind?16589_)
        (begin
          (if (##fx< '2 (##vector-length _self16588_))
              (begin
                (##vector-set! _self16588_ '1 'root)
                (##vector-set! _self16588_ '2 (make-hash-table-eq)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16588_))
          (if _bind?16589_
              (begin
                (call-method _self16588_ 'bind-core-syntax-expanders!)
                (call-method _self16588_ 'bind-core-macro-expanders!)
                (call-method _self16588_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self16594_)
          (let ((_bind?16596_ '#t))
            (gx#root-context:::init!__% _self16594_ _bind?16596_))))
      (define gx#root-context:::init!
        (lambda _g16602_
          (let ((_g16601_ (length _g16602_)))
            (cond ((fx= _g16601_ 1)
                   (apply gx#root-context:::init!__0 _g16602_))
                  ((fx= _g16601_ 2)
                   (apply gx#root-context:::init!__% _g16602_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g16602_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__%
      (lambda (_self16444_ _super16445_)
        (let ((_super16453_
               (let ((_$e16447_ _super16445_))
                 (if _$e16447_
                     _$e16447_
                     (let ((_$e16450_ (gx#core-context-root__0)))
                       (if _$e16450_
                           _$e16450_
                           (let ((__obj16600
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj16600)
                               __obj16600))))))))
          (if (##fx< '5 (##vector-length _self16444_))
              (begin
                (##vector-set! _self16444_ '1 'top)
                (##vector-set! _self16444_ '2 (make-hash-table-eq))
                (##vector-set! _self16444_ '3 _super16453_)
                (##vector-set! _self16444_ '4 '#f)
                (##vector-set! _self16444_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16444_)))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self16458_)
          (let ((_super16460_ '#f))
            (gx#top-context:::init!__% _self16458_ _super16460_))))
      (define gx#top-context:::init!
        (lambda _g16604_
          (let ((_g16603_ (length _g16604_)))
            (cond ((fx= _g16603_ 1) (apply gx#top-context:::init!__0 _g16604_))
                  ((fx= _g16603_ 2) (apply gx#top-context:::init!__% _g16604_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g16604_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self16175_ _bindings16176_)
        (for-each
         (lambda (_bind16178_)
           (let* ((_bind1617916186_ _bind16178_)
                  (_E1618116190_
                   (lambda () (error '"No clause matching" _bind1617916186_)))
                  (_K1618216299_
                   (lambda (_rest16193_ _id16194_)
                     (gx#core-context-put!
                      _self16175_
                      _id16194_
                      (##structure
                       gx#syntax-binding::t
                       _id16194_
                       _id16194_
                       '#f
                       (let* ((_rest1619516206_ _rest16193_)
                              (_E1619716210_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1619516206_)))
                              (_K1619816275_
                               (lambda (_compiler16213_
                                        _expander16214_
                                        _key16215_)
                                 ((let* ((_key1621616229_ _key16215_)
                                         (_E1622216233_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1621616229_)))
                                         (_try-match1622116241_
                                          (lambda ()
                                            (let ((_K1622316238_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1621616229_
                                                         'expr:)
                                                  (_K1622316238_)
                                                  (_E1622216233_)))))
                                         (_try-match1622016249_
                                          (lambda ()
                                            (let ((_K1622416246_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1621616229_
                                                         'special:)
                                                  (_K1622416246_)
                                                  (_try-match1622116241_)))))
                                         (_try-match1621916257_
                                          (lambda ()
                                            (let ((_K1622516254_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1621616229_
                                                         'define:)
                                                  (_K1622516254_)
                                                  (_try-match1622016249_)))))
                                         (_try-match1621816265_
                                          (lambda ()
                                            (let ((_K1622616262_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1621616229_
                                                         'module:)
                                                  (_K1622616262_)
                                                  (_try-match1621916257_)))))
                                         (_K1622716269_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1621616229_ 'top:)
                                        (_K1622716269_)
                                        (_try-match1621816265_)))
                                  _expander16214_
                                  _id16194_
                                  (let ((_$e16272_ _compiler16213_))
                                    (if _$e16272_
                                        _$e16272_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1619516206_)
                             (let ((_hd1619916278_ (##car _rest1619516206_))
                                   (_tl1620016280_ (##cdr _rest1619516206_)))
                               (let ((_key16283_ _hd1619916278_))
                                 (if (##pair? _tl1620016280_)
                                     (let ((_hd1620116285_
                                            (##car _tl1620016280_))
                                           (_tl1620216287_
                                            (##cdr _tl1620016280_)))
                                       (let ((_expander16290_ _hd1620116285_))
                                         (if (##pair? _tl1620216287_)
                                             (let ((_hd1620316292_
                                                    (##car _tl1620216287_))
                                                   (_tl1620416294_
                                                    (##cdr _tl1620216287_)))
                                               (let ((_compiler16297_
                                                      _hd1620316292_))
                                                 (if (##null? _tl1620416294_)
                                                     (_K1619816275_
                                                      _compiler16297_
                                                      _expander16290_
                                                      _key16283_)
                                                     (_E1619716210_))))
                                             (_E1619716210_))))
                                     (_E1619716210_))))
                             (_E1619716210_))))))))
             (if (##pair? _bind1617916186_)
                 (let ((_hd1618316302_ (##car _bind1617916186_))
                       (_tl1618416304_ (##cdr _bind1617916186_)))
                   (let* ((_id16307_ _hd1618316302_)
                          (_rest16309_ _tl1618416304_))
                     (_K1618216299_ _rest16309_ _id16307_)))
                 (_E1618116190_))))
         _bindings16176_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self16314_)
          (let ((_bindings16316_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__%
             _self16314_
             _bindings16316_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g16606_
          (let ((_g16605_ (length _g16606_)))
            (cond ((fx= _g16605_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g16606_))
                  ((fx= _g16605_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__%
                          _g16606_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g16606_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self15947_ _bindings15948_)
        (for-each
         (lambda (_bind15950_)
           (let* ((_bind1595115958_ _bind15950_)
                  (_E1595315962_
                   (lambda () (error '"No clause matching" _bind1595115958_)))
                  (_K1595416030_
                   (lambda (_rest15965_ _id15966_)
                     (gx#core-context-put!
                      _self15947_
                      _id15966_
                      (##structure
                       gx#syntax-binding::t
                       _id15966_
                       _id15966_
                       '#f
                       (let* ((_rest1596715982_ _rest15965_)
                              (_E1597115986_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1596715982_)))
                              (_try-match1597015994_
                               (lambda ()
                                 (let ((_K1597215991_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id15966_))))
                                   (if (##null? _rest1596715982_)
                                       (_K1597215991_)
                                       (_E1597115986_)))))
                              (_try-match1596916010_
                               (lambda ()
                                 (let ((_K1597316000_
                                        (lambda (_proc15998_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc15998_))))
                                   (if (##pair? _rest1596715982_)
                                       (let ((_hd1597416003_
                                              (##car _rest1596715982_))
                                             (_tl1597516005_
                                              (##cdr _rest1596715982_)))
                                         (let ((_proc16008_ _hd1597416003_))
                                           (if (##null? _tl1597516005_)
                                               (_K1597316000_ _proc16008_)
                                               (_try-match1597015994_))))
                                       (_try-match1597015994_)))))
                              (_K1597616015_
                               (lambda (_core-id16013_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id16013_))))
                         (if (##pair? _rest1596715982_)
                             (let ((_hd1597716018_ (##car _rest1596715982_))
                                   (_tl1597816020_ (##cdr _rest1596715982_)))
                               (if (##eq? _hd1597716018_ '=>)
                                   (if (##pair? _tl1597816020_)
                                       (let ((_hd1597916023_
                                              (##car _tl1597816020_))
                                             (_tl1598016025_
                                              (##cdr _tl1597816020_)))
                                         (let ((_core-id16028_ _hd1597916023_))
                                           (if (##null? _tl1598016025_)
                                               (_K1597616015_ _core-id16028_)
                                               (_try-match1596916010_))))
                                       (_try-match1596916010_))
                                   (_try-match1596916010_)))
                             (_try-match1596916010_))))))))
             (if (##pair? _bind1595115958_)
                 (let ((_hd1595516033_ (##car _bind1595115958_))
                       (_tl1595616035_ (##cdr _bind1595115958_)))
                   (let* ((_id16038_ _hd1595516033_)
                          (_rest16040_ _tl1595616035_))
                     (_K1595416030_ _rest16040_ _id16038_)))
                 (_E1595315962_))))
         _bindings15948_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self16045_)
          (let ((_bindings16047_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__%
             _self16045_
             _bindings16047_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g16608_
          (let ((_g16607_ (length _g16608_)))
            (cond ((fx= _g16607_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g16608_))
                  ((fx= _g16607_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__%
                          _g16608_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g16608_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self15738_)
      (letrec ((_linux-variant?15740_
                (lambda (_sys-type15792_)
                  (let* ((_g1579315801_
                          (string-split (symbol->string _sys-type15792_) '#\-))
                         (_E1579615805_
                          (lambda ()
                            (error '"No clause matching" _g1579315801_)))
                         (_else1579515809_ (lambda () '#f))
                         (_K1579715814_
                          (lambda (_rest15812_) (not (null? _rest15812_)))))
                    (if (##pair? _g1579315801_)
                        (let ((_hd1579815817_ (##car _g1579315801_))
                              (_tl1579915819_ (##cdr _g1579315801_)))
                          (if (equal? _hd1579815817_ '"linux")
                              (let ((_rest15822_ _tl1579915819_))
                                (_K1579715814_ _rest15822_))
                              (_else1579515809_)))
                        (_else1579515809_))))))
        (begin
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self15738_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self15738_)
          (let* ((_g1574115753_ (system-type))
                 (_E1574415757_
                  (lambda () (error '"No clause matching" _g1574115753_)))
                 (_else1574315761_ (lambda () '#!void))
                 (_K1574515768_
                  (lambda (_sys-type15764_ _sys-vendor15765_ _sys-cpu15766_)
                    (begin
                      (gx#core-bind-feature!__%
                       _sys-cpu15766_
                       '#f
                       '0
                       _self15738_)
                      (gx#core-bind-feature!__%
                       _sys-type15764_
                       '#f
                       '0
                       _self15738_)
                      (if (_linux-variant?15740_ _sys-type15764_)
                          (gx#core-bind-feature!__% 'linux '#f '0 _self15738_)
                          '#!void)))))
            (if (##pair? _g1574115753_)
                (let ((_hd1574615771_ (##car _g1574115753_))
                      (_tl1574715773_ (##cdr _g1574115753_)))
                  (let ((_sys-cpu15776_ _hd1574615771_))
                    (if (##pair? _tl1574715773_)
                        (let ((_hd1574815778_ (##car _tl1574715773_))
                              (_tl1574915780_ (##cdr _tl1574715773_)))
                          (let ((_sys-vendor15783_ _hd1574815778_))
                            (if (##pair? _tl1574915780_)
                                (let ((_hd1575015785_ (##car _tl1574915780_))
                                      (_tl1575115787_ (##cdr _tl1574915780_)))
                                  (let ((_sys-type15790_ _hd1575015785_))
                                    (if (##null? _tl1575115787_)
                                        (_K1574515768_
                                         _sys-type15790_
                                         _sys-vendor15783_
                                         _sys-cpu15776_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self15738_)
              '#!void)))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
