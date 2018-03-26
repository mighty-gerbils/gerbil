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
      (lambda (_self16975_ _bind?16976_)
        (begin
          (if (##fx< '2 (##vector-length _self16975_))
              (begin
                (##vector-set! _self16975_ '1 'root)
                (##vector-set! _self16975_ '2 (make-hash-table-eq)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16975_))
          (if _bind?16976_
              (begin
                (call-method _self16975_ 'bind-core-syntax-expanders!)
                (call-method _self16975_ 'bind-core-macro-expanders!)
                (call-method _self16975_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self16981_)
          (let ((_bind?16983_ '#t))
            (gx#root-context:::init!__% _self16981_ _bind?16983_))))
      (define gx#root-context:::init!
        (lambda _g17021_
          (let ((_g17020_ (length _g17021_)))
            (cond ((##fx= _g17020_ 1)
                   (apply gx#root-context:::init!__0 _g17021_))
                  ((##fx= _g17020_ 2)
                   (apply gx#root-context:::init!__% _g17021_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g17021_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__%
      (lambda (_self16831_ _super16832_)
        (let ((_super16840_
               (let ((_$e16834_ _super16832_))
                 (if _$e16834_
                     _$e16834_
                     (let ((_$e16837_ (gx#core-context-root__0)))
                       (if _$e16837_
                           _$e16837_
                           (let ((__obj17019
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj17019)
                               __obj17019))))))))
          (if (##fx< '5 (##vector-length _self16831_))
              (begin
                (##vector-set! _self16831_ '1 'top)
                (##vector-set! _self16831_ '2 (make-hash-table-eq))
                (##vector-set! _self16831_ '3 _super16840_)
                (##vector-set! _self16831_ '4 '#f)
                (##vector-set! _self16831_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16831_)))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self16845_)
          (let ((_super16847_ '#f))
            (gx#top-context:::init!__% _self16845_ _super16847_))))
      (define gx#top-context:::init!
        (lambda _g17023_
          (let ((_g17022_ (length _g17023_)))
            (cond ((##fx= _g17022_ 1)
                   (apply gx#top-context:::init!__0 _g17023_))
                  ((##fx= _g17022_ 2)
                   (apply gx#top-context:::init!__% _g17023_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g17023_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self16562_ _bindings16563_)
        (for-each
         (lambda (_bind16565_)
           (let* ((_bind1656616573_ _bind16565_)
                  (_E1656816577_
                   (lambda () (error '"No clause matching" _bind1656616573_)))
                  (_K1656916686_
                   (lambda (_rest16580_ _id16581_)
                     (gx#core-context-put!
                      _self16562_
                      _id16581_
                      (##structure
                       gx#syntax-binding::t
                       _id16581_
                       _id16581_
                       '#f
                       (let* ((_rest1658216593_ _rest16580_)
                              (_E1658416597_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1658216593_)))
                              (_K1658516662_
                               (lambda (_compiler16600_
                                        _expander16601_
                                        _key16602_)
                                 ((let* ((_key1660316616_ _key16602_)
                                         (_E1660916620_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1660316616_))))
                                    (let ((_K1661416656_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K1661316649_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K1661216641_
                                           (lambda () gx#make-definition-form))
                                          (_K1661116633_
                                           (lambda () gx#make-special-form))
                                          (_K1661016625_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match1660816628_
                                              (lambda ()
                                                (if (##eq? _key1660316616_
                                                           'expr:)
                                                    (_K1661016625_)
                                                    (_E1660916620_))))
                                             (_try-match1660716636_
                                              (lambda ()
                                                (if (##eq? _key1660316616_
                                                           'special:)
                                                    (_K1661116633_)
                                                    (_try-match1660816628_))))
                                             (_try-match1660616644_
                                              (lambda ()
                                                (if (##eq? _key1660316616_
                                                           'define:)
                                                    (_K1661216641_)
                                                    (_try-match1660716636_))))
                                             (_try-match1660516652_
                                              (lambda ()
                                                (if (##eq? _key1660316616_
                                                           'module:)
                                                    (_K1661316649_)
                                                    (_try-match1660616644_)))))
                                        (if (##eq? _key1660316616_ 'top:)
                                            (_K1661416656_)
                                            (_try-match1660516652_)))))
                                  _expander16601_
                                  _id16581_
                                  (let ((_$e16659_ _compiler16600_))
                                    (if _$e16659_
                                        _$e16659_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1658216593_)
                             (let ((_hd1658616665_ (##car _rest1658216593_))
                                   (_tl1658716667_ (##cdr _rest1658216593_)))
                               (let ((_key16670_ _hd1658616665_))
                                 (if (##pair? _tl1658716667_)
                                     (let ((_hd1658816672_
                                            (##car _tl1658716667_))
                                           (_tl1658916674_
                                            (##cdr _tl1658716667_)))
                                       (let ((_expander16677_ _hd1658816672_))
                                         (if (##pair? _tl1658916674_)
                                             (let ((_hd1659016679_
                                                    (##car _tl1658916674_))
                                                   (_tl1659116681_
                                                    (##cdr _tl1658916674_)))
                                               (let ((_compiler16684_
                                                      _hd1659016679_))
                                                 (if (##null? _tl1659116681_)
                                                     (_K1658516662_
                                                      _compiler16684_
                                                      _expander16677_
                                                      _key16670_)
                                                     (_E1658416597_))))
                                             (_E1658416597_))))
                                     (_E1658416597_))))
                             (_E1658416597_))))))))
             (if (##pair? _bind1656616573_)
                 (let ((_hd1657016689_ (##car _bind1656616573_))
                       (_tl1657116691_ (##cdr _bind1656616573_)))
                   (let* ((_id16694_ _hd1657016689_)
                          (_rest16696_ _tl1657116691_))
                     (_K1656916686_ _rest16696_ _id16694_)))
                 (_E1656816577_))))
         _bindings16563_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self16701_)
          (let ((_bindings16703_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__%
             _self16701_
             _bindings16703_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g17025_
          (let ((_g17024_ (length _g17025_)))
            (cond ((##fx= _g17024_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g17025_))
                  ((##fx= _g17024_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__%
                          _g17025_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g17025_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self16334_ _bindings16335_)
        (for-each
         (lambda (_bind16337_)
           (let* ((_bind1633816345_ _bind16337_)
                  (_E1634016349_
                   (lambda () (error '"No clause matching" _bind1633816345_)))
                  (_K1634116417_
                   (lambda (_rest16352_ _id16353_)
                     (gx#core-context-put!
                      _self16334_
                      _id16353_
                      (##structure
                       gx#syntax-binding::t
                       _id16353_
                       _id16353_
                       '#f
                       (let* ((_rest1635416369_ _rest16352_)
                              (_E1635816373_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1635416369_))))
                         (let ((_K1636316402_
                                (lambda (_core-id16400_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id16400_)))
                               (_K1636016387_
                                (lambda (_proc16385_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc16385_)))
                               (_K1635916378_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id16353_))))
                           (let ((_try-match1635716381_
                                  (lambda ()
                                    (if (##null? _rest1635416369_)
                                        (_K1635916378_)
                                        (_E1635816373_)))))
                             (if (##pair? _rest1635416369_)
                                 (let ((_tl1636516407_
                                        (##cdr _rest1635416369_))
                                       (_hd1636416405_
                                        (##car _rest1635416369_)))
                                   (if (##eq? _hd1636416405_ '=>)
                                       (if (##pair? _tl1636516407_)
                                           (let ((_tl1636716412_
                                                  (##cdr _tl1636516407_))
                                                 (_hd1636616410_
                                                  (##car _tl1636516407_)))
                                             (if (##null? _tl1636716412_)
                                                 (let ((_core-id16415_
                                                        _hd1636616410_))
                                                   (_K1636316402_
                                                    _core-id16415_))
                                                 (_E1635816373_)))
                                           (if (##null? _tl1636516407_)
                                               (let ((_proc16395_
                                                      _hd1636416405_))
                                                 (_K1636016387_ _proc16395_))
                                               (_E1635816373_)))
                                       (if (##null? _tl1636516407_)
                                           (let ((_proc16395_ _hd1636416405_))
                                             (_K1636016387_ _proc16395_))
                                           (_E1635816373_))))
                                 (_try-match1635716381_))))))))))
             (if (##pair? _bind1633816345_)
                 (let ((_hd1634216420_ (##car _bind1633816345_))
                       (_tl1634316422_ (##cdr _bind1633816345_)))
                   (let* ((_id16425_ _hd1634216420_)
                          (_rest16427_ _tl1634316422_))
                     (_K1634116417_ _rest16427_ _id16425_)))
                 (_E1634016349_))))
         _bindings16335_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self16432_)
          (let ((_bindings16434_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__%
             _self16432_
             _bindings16434_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g17027_
          (let ((_g17026_ (length _g17027_)))
            (cond ((##fx= _g17026_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g17027_))
                  ((##fx= _g17026_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__%
                          _g17027_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g17027_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self16125_)
      (letrec ((_linux-variant?16127_
                (lambda (_sys-type16179_)
                  (let* ((_g1618016188_
                          (string-split (symbol->string _sys-type16179_) '#\-))
                         (_else1618216196_ (lambda () '#f))
                         (_K1618416201_
                          (lambda (_rest16199_) (not (null? _rest16199_)))))
                    (if (##pair? _g1618016188_)
                        (let ((_hd1618516204_ (##car _g1618016188_))
                              (_tl1618616206_ (##cdr _g1618016188_)))
                          (if (equal? _hd1618516204_ '"linux")
                              (let ((_rest16209_ _tl1618616206_))
                                (_K1618416201_ _rest16209_))
                              (_else1618216196_)))
                        (_else1618216196_))))))
        (begin
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self16125_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self16125_)
          (let* ((_g1612816140_ (system-type))
                 (_else1613016148_ (lambda () '#!void))
                 (_K1613216155_
                  (lambda (_sys-type16151_ _sys-vendor16152_ _sys-cpu16153_)
                    (begin
                      (gx#core-bind-feature!__%
                       _sys-cpu16153_
                       '#f
                       '0
                       _self16125_)
                      (gx#core-bind-feature!__%
                       _sys-type16151_
                       '#f
                       '0
                       _self16125_)
                      (if (_linux-variant?16127_ _sys-type16151_)
                          (gx#core-bind-feature!__% 'linux '#f '0 _self16125_)
                          '#!void)))))
            (if (##pair? _g1612816140_)
                (let ((_hd1613316158_ (##car _g1612816140_))
                      (_tl1613416160_ (##cdr _g1612816140_)))
                  (let ((_sys-cpu16163_ _hd1613316158_))
                    (if (##pair? _tl1613416160_)
                        (let ((_hd1613516165_ (##car _tl1613416160_))
                              (_tl1613616167_ (##cdr _tl1613416160_)))
                          (let ((_sys-vendor16170_ _hd1613516165_))
                            (if (##pair? _tl1613616167_)
                                (let ((_hd1613716172_ (##car _tl1613616167_))
                                      (_tl1613816174_ (##cdr _tl1613616167_)))
                                  (let ((_sys-type16177_ _hd1613716172_))
                                    (if (##null? _tl1613816174_)
                                        (_K1613216155_
                                         _sys-type16177_
                                         _sys-vendor16170_
                                         _sys-cpu16163_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self16125_)
              '#!void)))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
