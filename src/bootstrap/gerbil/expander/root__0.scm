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
      (lambda (_self16895_ _bind?16896_)
        (begin
          (if (##fx< '2 (##vector-length _self16895_))
              (begin
                (##vector-set! _self16895_ '1 'root)
                (##vector-set! _self16895_ '2 (make-hash-table-eq)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16895_))
          (if _bind?16896_
              (begin
                (call-method _self16895_ 'bind-core-syntax-expanders!)
                (call-method _self16895_ 'bind-core-macro-expanders!)
                (call-method _self16895_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self16901_)
          (let ((_bind?16903_ '#t))
            (gx#root-context:::init!__% _self16901_ _bind?16903_))))
      (define gx#root-context:::init!
        (lambda _g16919_
          (let ((_g16918_ (length _g16919_)))
            (cond ((##fx= _g16918_ 1)
                   (apply gx#root-context:::init!__0 _g16919_))
                  ((##fx= _g16918_ 2)
                   (apply gx#root-context:::init!__% _g16919_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g16919_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__%
      (lambda (_self16751_ _super16752_)
        (let ((_super16760_
               (let ((_$e16754_ _super16752_))
                 (if _$e16754_
                     _$e16754_
                     (let ((_$e16757_ (gx#core-context-root__0)))
                       (if _$e16757_
                           _$e16757_
                           (let ((__obj16917
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj16917)
                               __obj16917))))))))
          (if (##fx< '5 (##vector-length _self16751_))
              (begin
                (##vector-set! _self16751_ '1 'top)
                (##vector-set! _self16751_ '2 (make-hash-table-eq))
                (##vector-set! _self16751_ '3 _super16760_)
                (##vector-set! _self16751_ '4 '#f)
                (##vector-set! _self16751_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16751_)))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self16765_)
          (let ((_super16767_ '#f))
            (gx#top-context:::init!__% _self16765_ _super16767_))))
      (define gx#top-context:::init!
        (lambda _g16921_
          (let ((_g16920_ (length _g16921_)))
            (cond ((##fx= _g16920_ 1)
                   (apply gx#top-context:::init!__0 _g16921_))
                  ((##fx= _g16920_ 2)
                   (apply gx#top-context:::init!__% _g16921_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g16921_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self16482_ _bindings16483_)
        (for-each
         (lambda (_bind16485_)
           (let* ((_bind1648616493_ _bind16485_)
                  (_E1648816497_
                   (lambda () (error '"No clause matching" _bind1648616493_)))
                  (_K1648916606_
                   (lambda (_rest16500_ _id16501_)
                     (gx#core-context-put!
                      _self16482_
                      _id16501_
                      (##structure
                       gx#syntax-binding::t
                       _id16501_
                       _id16501_
                       '#f
                       (let* ((_rest1650216513_ _rest16500_)
                              (_E1650416517_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1650216513_)))
                              (_K1650516582_
                               (lambda (_compiler16520_
                                        _expander16521_
                                        _key16522_)
                                 ((let* ((_key1652316536_ _key16522_)
                                         (_E1652916540_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1652316536_))))
                                    (let ((_K1653416576_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K1653316569_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K1653216561_
                                           (lambda () gx#make-definition-form))
                                          (_K1653116553_
                                           (lambda () gx#make-special-form))
                                          (_K1653016545_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match1652816548_
                                              (lambda ()
                                                (if (##eq? _key1652316536_
                                                           'expr:)
                                                    (let () (_K1653016545_))
                                                    (_E1652916540_))))
                                             (_try-match1652716556_
                                              (lambda ()
                                                (if (##eq? _key1652316536_
                                                           'special:)
                                                    (let () (_K1653116553_))
                                                    (_try-match1652816548_))))
                                             (_try-match1652616564_
                                              (lambda ()
                                                (if (##eq? _key1652316536_
                                                           'define:)
                                                    (let () (_K1653216561_))
                                                    (_try-match1652716556_))))
                                             (_try-match1652516572_
                                              (lambda ()
                                                (if (##eq? _key1652316536_
                                                           'module:)
                                                    (let () (_K1653316569_))
                                                    (_try-match1652616564_)))))
                                        (if (##eq? _key1652316536_ 'top:)
                                            (let () (_K1653416576_))
                                            (_try-match1652516572_)))))
                                  _expander16521_
                                  _id16501_
                                  (let ((_$e16579_ _compiler16520_))
                                    (if _$e16579_
                                        _$e16579_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1650216513_)
                             (let ((_hd1650616585_ (##car _rest1650216513_))
                                   (_tl1650716587_ (##cdr _rest1650216513_)))
                               (let ((_key16590_ _hd1650616585_))
                                 (if (##pair? _tl1650716587_)
                                     (let ((_hd1650816592_
                                            (##car _tl1650716587_))
                                           (_tl1650916594_
                                            (##cdr _tl1650716587_)))
                                       (let ((_expander16597_ _hd1650816592_))
                                         (if (##pair? _tl1650916594_)
                                             (let ((_hd1651016599_
                                                    (##car _tl1650916594_))
                                                   (_tl1651116601_
                                                    (##cdr _tl1650916594_)))
                                               (let ((_compiler16604_
                                                      _hd1651016599_))
                                                 (if (##null? _tl1651116601_)
                                                     (_K1650516582_
                                                      _compiler16604_
                                                      _expander16597_
                                                      _key16590_)
                                                     (_E1650416517_))))
                                             (_E1650416517_))))
                                     (_E1650416517_))))
                             (_E1650416517_))))))))
             (if (##pair? _bind1648616493_)
                 (let ((_hd1649016609_ (##car _bind1648616493_))
                       (_tl1649116611_ (##cdr _bind1648616493_)))
                   (let* ((_id16614_ _hd1649016609_)
                          (_rest16616_ _tl1649116611_))
                     (_K1648916606_ _rest16616_ _id16614_)))
                 (_E1648816497_))))
         _bindings16483_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self16621_)
          (let ((_bindings16623_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__%
             _self16621_
             _bindings16623_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g16923_
          (let ((_g16922_ (length _g16923_)))
            (cond ((##fx= _g16922_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g16923_))
                  ((##fx= _g16922_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__%
                          _g16923_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g16923_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self16254_ _bindings16255_)
        (for-each
         (lambda (_bind16257_)
           (let* ((_bind1625816265_ _bind16257_)
                  (_E1626016269_
                   (lambda () (error '"No clause matching" _bind1625816265_)))
                  (_K1626116337_
                   (lambda (_rest16272_ _id16273_)
                     (gx#core-context-put!
                      _self16254_
                      _id16273_
                      (##structure
                       gx#syntax-binding::t
                       _id16273_
                       _id16273_
                       '#f
                       (let* ((_rest1627416289_ _rest16272_)
                              (_E1627816293_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1627416289_))))
                         (let ((_K1628316322_
                                (lambda (_core-id16320_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id16320_)))
                               (_K1628016307_
                                (lambda (_proc16305_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc16305_)))
                               (_K1627916298_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id16273_))))
                           (let ((_try-match1627716301_
                                  (lambda ()
                                    (if (##null? _rest1627416289_)
                                        (let () (_K1627916298_))
                                        (_E1627816293_)))))
                             (if (##pair? _rest1627416289_)
                                 (let ((_tl1628516327_
                                        (##cdr _rest1627416289_))
                                       (_hd1628416325_
                                        (##car _rest1627416289_)))
                                   (if (##eq? _hd1628416325_ '=>)
                                       (if (##pair? _tl1628516327_)
                                           (let ((_tl1628716332_
                                                  (##cdr _tl1628516327_))
                                                 (_hd1628616330_
                                                  (##car _tl1628516327_)))
                                             (if (##null? _tl1628716332_)
                                                 (let ((_core-id16335_
                                                        _hd1628616330_))
                                                   (_K1628316322_
                                                    _core-id16335_))
                                                 (_E1627816293_)))
                                           (if (##null? _tl1628516327_)
                                               (let ((_proc16315_
                                                      _hd1628416325_))
                                                 (_K1628016307_ _proc16315_))
                                               (_E1627816293_)))
                                       (if (##null? _tl1628516327_)
                                           (let ((_proc16315_ _hd1628416325_))
                                             (_K1628016307_ _proc16315_))
                                           (_E1627816293_))))
                                 (_try-match1627716301_))))))))))
             (if (##pair? _bind1625816265_)
                 (let ((_hd1626216340_ (##car _bind1625816265_))
                       (_tl1626316342_ (##cdr _bind1625816265_)))
                   (let* ((_id16345_ _hd1626216340_)
                          (_rest16347_ _tl1626316342_))
                     (_K1626116337_ _rest16347_ _id16345_)))
                 (_E1626016269_))))
         _bindings16255_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self16352_)
          (let ((_bindings16354_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__%
             _self16352_
             _bindings16354_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g16925_
          (let ((_g16924_ (length _g16925_)))
            (cond ((##fx= _g16924_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g16925_))
                  ((##fx= _g16924_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__%
                          _g16925_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g16925_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self16045_)
      (letrec ((_linux-variant?16047_
                (lambda (_sys-type16099_)
                  (let* ((_g1610016108_
                          (string-split (symbol->string _sys-type16099_) '#\-))
                         (_else1610216116_ (lambda () '#f))
                         (_K1610416121_
                          (lambda (_rest16119_) (not (null? _rest16119_)))))
                    (if (##pair? _g1610016108_)
                        (let ((_hd1610516124_ (##car _g1610016108_))
                              (_tl1610616126_ (##cdr _g1610016108_)))
                          (if (equal? _hd1610516124_ '"linux")
                              (let ((_rest16129_ _tl1610616126_))
                                (_K1610416121_ _rest16129_))
                              (_else1610216116_)))
                        (_else1610216116_))))))
        (begin
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self16045_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self16045_)
          (let* ((_g1604816060_ (system-type))
                 (_else1605016068_ (lambda () '#!void))
                 (_K1605216075_
                  (lambda (_sys-type16071_ _sys-vendor16072_ _sys-cpu16073_)
                    (begin
                      (gx#core-bind-feature!__%
                       _sys-cpu16073_
                       '#f
                       '0
                       _self16045_)
                      (gx#core-bind-feature!__%
                       _sys-type16071_
                       '#f
                       '0
                       _self16045_)
                      (if (_linux-variant?16047_ _sys-type16071_)
                          (gx#core-bind-feature!__% 'linux '#f '0 _self16045_)
                          '#!void)))))
            (if (##pair? _g1604816060_)
                (let ((_hd1605316078_ (##car _g1604816060_))
                      (_tl1605416080_ (##cdr _g1604816060_)))
                  (let ((_sys-cpu16083_ _hd1605316078_))
                    (if (##pair? _tl1605416080_)
                        (let ((_hd1605516085_ (##car _tl1605416080_))
                              (_tl1605616087_ (##cdr _tl1605416080_)))
                          (let ((_sys-vendor16090_ _hd1605516085_))
                            (if (##pair? _tl1605616087_)
                                (let ((_hd1605716092_ (##car _tl1605616087_))
                                      (_tl1605816094_ (##cdr _tl1605616087_)))
                                  (let ((_sys-type16097_ _hd1605716092_))
                                    (if (##null? _tl1605816094_)
                                        (_K1605216075_
                                         _sys-type16097_
                                         _sys-vendor16090_
                                         _sys-cpu16083_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self16045_)
              '#!void)))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
