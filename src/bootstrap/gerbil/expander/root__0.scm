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
      (lambda (_self18268_ _bind?18269_)
        (begin
          (struct-instance-init! _self18268_ 'root (make-table 'test: eq?))
          (if _bind?18269_
              (begin
                (call-method _self18268_ 'bind-core-syntax-expanders!)
                (call-method _self18268_ 'bind-core-macro-expanders!)
                (call-method _self18268_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self18274_)
          (let ((_bind?18276_ '#t))
            (gx#root-context:::init!__% _self18274_ _bind?18276_))))
      (define gx#root-context:::init!
        (lambda _g18314_
          (let ((_g18313_ (length _g18314_)))
            (cond ((##fx= _g18313_ 1)
                   (apply gx#root-context:::init!__0 _g18314_))
                  ((##fx= _g18313_ 2)
                   (apply gx#root-context:::init!__% _g18314_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g18314_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__%
      (lambda (_self18124_ _super18125_)
        (let ((_super18133_
               (let ((_$e18127_ _super18125_))
                 (if _$e18127_
                     _$e18127_
                     (let ((_$e18130_ (gx#core-context-root__0)))
                       (if _$e18130_
                           _$e18130_
                           (let ((__obj18312
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj18312)
                               __obj18312))))))))
          (struct-instance-init!
           _self18124_
           'top
           (make-table 'test: eq?)
           _super18133_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self18138_)
          (let ((_super18140_ '#f))
            (gx#top-context:::init!__% _self18138_ _super18140_))))
      (define gx#top-context:::init!
        (lambda _g18316_
          (let ((_g18315_ (length _g18316_)))
            (cond ((##fx= _g18315_ 1)
                   (apply gx#top-context:::init!__0 _g18316_))
                  ((##fx= _g18315_ 2)
                   (apply gx#top-context:::init!__% _g18316_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g18316_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self17855_ _bindings17856_)
        (for-each
         (lambda (_bind17858_)
           (let* ((_bind1785917866_ _bind17858_)
                  (_E1786117870_
                   (lambda () (error '"No clause matching" _bind1785917866_)))
                  (_K1786217979_
                   (lambda (_rest17873_ _id17874_)
                     (gx#core-context-put!
                      _self17855_
                      _id17874_
                      (##structure
                       gx#syntax-binding::t
                       _id17874_
                       _id17874_
                       '#f
                       (let* ((_rest1787517886_ _rest17873_)
                              (_E1787717890_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1787517886_)))
                              (_K1787817955_
                               (lambda (_compiler17893_
                                        _expander17894_
                                        _key17895_)
                                 ((let* ((_key1789617909_ _key17895_)
                                         (_E1790217913_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1789617909_))))
                                    (let ((_K1790717949_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K1790617942_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K1790517934_
                                           (lambda () gx#make-definition-form))
                                          (_K1790417926_
                                           (lambda () gx#make-special-form))
                                          (_K1790317918_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match1790117921_
                                              (lambda ()
                                                (if (##eq? _key1789617909_
                                                           'expr:)
                                                    (_K1790317918_)
                                                    (_E1790217913_))))
                                             (_try-match1790017929_
                                              (lambda ()
                                                (if (##eq? _key1789617909_
                                                           'special:)
                                                    (_K1790417926_)
                                                    (_try-match1790117921_))))
                                             (_try-match1789917937_
                                              (lambda ()
                                                (if (##eq? _key1789617909_
                                                           'define:)
                                                    (_K1790517934_)
                                                    (_try-match1790017929_))))
                                             (_try-match1789817945_
                                              (lambda ()
                                                (if (##eq? _key1789617909_
                                                           'module:)
                                                    (_K1790617942_)
                                                    (_try-match1789917937_)))))
                                        (if (##eq? _key1789617909_ 'top:)
                                            (_K1790717949_)
                                            (_try-match1789817945_)))))
                                  _expander17894_
                                  _id17874_
                                  (let ((_$e17952_ _compiler17893_))
                                    (if _$e17952_
                                        _$e17952_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1787517886_)
                             (let ((_hd1787917958_ (##car _rest1787517886_))
                                   (_tl1788017960_ (##cdr _rest1787517886_)))
                               (let ((_key17963_ _hd1787917958_))
                                 (if (##pair? _tl1788017960_)
                                     (let ((_hd1788117965_
                                            (##car _tl1788017960_))
                                           (_tl1788217967_
                                            (##cdr _tl1788017960_)))
                                       (let ((_expander17970_ _hd1788117965_))
                                         (if (##pair? _tl1788217967_)
                                             (let ((_hd1788317972_
                                                    (##car _tl1788217967_))
                                                   (_tl1788417974_
                                                    (##cdr _tl1788217967_)))
                                               (let ((_compiler17977_
                                                      _hd1788317972_))
                                                 (if (##null? _tl1788417974_)
                                                     (_K1787817955_
                                                      _compiler17977_
                                                      _expander17970_
                                                      _key17963_)
                                                     (_E1787717890_))))
                                             (_E1787717890_))))
                                     (_E1787717890_))))
                             (_E1787717890_))))))))
             (if (##pair? _bind1785917866_)
                 (let ((_hd1786317982_ (##car _bind1785917866_))
                       (_tl1786417984_ (##cdr _bind1785917866_)))
                   (let* ((_id17987_ _hd1786317982_)
                          (_rest17989_ _tl1786417984_))
                     (_K1786217979_ _rest17989_ _id17987_)))
                 (_E1786117870_))))
         _bindings17856_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self17994_)
          (let ((_bindings17996_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__%
             _self17994_
             _bindings17996_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g18318_
          (let ((_g18317_ (length _g18318_)))
            (cond ((##fx= _g18317_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g18318_))
                  ((##fx= _g18317_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__%
                          _g18318_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g18318_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self17627_ _bindings17628_)
        (for-each
         (lambda (_bind17630_)
           (let* ((_bind1763117638_ _bind17630_)
                  (_E1763317642_
                   (lambda () (error '"No clause matching" _bind1763117638_)))
                  (_K1763417710_
                   (lambda (_rest17645_ _id17646_)
                     (gx#core-context-put!
                      _self17627_
                      _id17646_
                      (##structure
                       gx#syntax-binding::t
                       _id17646_
                       _id17646_
                       '#f
                       (let* ((_rest1764717662_ _rest17645_)
                              (_E1765117666_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1764717662_))))
                         (let ((_K1765617695_
                                (lambda (_core-id17693_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id17693_)))
                               (_K1765317680_
                                (lambda (_proc17678_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc17678_)))
                               (_K1765217671_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id17646_))))
                           (let ((_try-match1765017674_
                                  (lambda ()
                                    (if (##null? _rest1764717662_)
                                        (_K1765217671_)
                                        (_E1765117666_)))))
                             (if (##pair? _rest1764717662_)
                                 (let ((_tl1765817700_
                                        (##cdr _rest1764717662_))
                                       (_hd1765717698_
                                        (##car _rest1764717662_)))
                                   (if (##eq? _hd1765717698_ '=>)
                                       (if (##pair? _tl1765817700_)
                                           (let ((_tl1766017705_
                                                  (##cdr _tl1765817700_))
                                                 (_hd1765917703_
                                                  (##car _tl1765817700_)))
                                             (if (##null? _tl1766017705_)
                                                 (let ((_core-id17708_
                                                        _hd1765917703_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id17708_))
                                                 (_E1765117666_)))
                                           (if (##null? _tl1765817700_)
                                               (let ((_proc17688_
                                                      _hd1765717698_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc17688_))
                                               (_E1765117666_)))
                                       (if (##null? _tl1765817700_)
                                           (let ((_proc17688_ _hd1765717698_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc17688_))
                                           (_E1765117666_))))
                                 (_try-match1765017674_))))))))))
             (if (##pair? _bind1763117638_)
                 (let ((_hd1763517713_ (##car _bind1763117638_))
                       (_tl1763617715_ (##cdr _bind1763117638_)))
                   (let* ((_id17718_ _hd1763517713_)
                          (_rest17720_ _tl1763617715_))
                     (_K1763417710_ _rest17720_ _id17718_)))
                 (_E1763317642_))))
         _bindings17628_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self17725_)
          (let ((_bindings17727_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__%
             _self17725_
             _bindings17727_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g18320_
          (let ((_g18319_ (length _g18320_)))
            (cond ((##fx= _g18319_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g18320_))
                  ((##fx= _g18319_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__%
                          _g18320_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g18320_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self17418_)
      (letrec ((_linux-variant?17420_
                (lambda (_sys-type17472_)
                  (let* ((_g1747317481_
                          (string-split (symbol->string _sys-type17472_) '#\-))
                         (_else1747517489_ (lambda () '#f))
                         (_K1747717494_
                          (lambda (_rest17492_) (not (null? _rest17492_)))))
                    (if (##pair? _g1747317481_)
                        (let ((_hd1747817497_ (##car _g1747317481_))
                              (_tl1747917499_ (##cdr _g1747317481_)))
                          (if (equal? _hd1747817497_ '"linux")
                              (let ((_rest17502_ _tl1747917499_))
                                (_K1747717494_ _rest17502_))
                              (_else1747517489_)))
                        (_else1747517489_))))))
        (begin
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self17418_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self17418_)
          (let* ((_g1742117433_ (system-type))
                 (_else1742317441_ (lambda () '#!void))
                 (_K1742517448_
                  (lambda (_sys-type17444_ _sys-vendor17445_ _sys-cpu17446_)
                    (begin
                      (gx#core-bind-feature!__%
                       _sys-cpu17446_
                       '#f
                       '0
                       _self17418_)
                      (gx#core-bind-feature!__%
                       _sys-type17444_
                       '#f
                       '0
                       _self17418_)
                      (if (_linux-variant?17420_ _sys-type17444_)
                          (gx#core-bind-feature!__% 'linux '#f '0 _self17418_)
                          '#!void)))))
            (if (##pair? _g1742117433_)
                (let ((_hd1742617451_ (##car _g1742117433_))
                      (_tl1742717453_ (##cdr _g1742117433_)))
                  (let ((_sys-cpu17456_ _hd1742617451_))
                    (if (##pair? _tl1742717453_)
                        (let ((_hd1742817458_ (##car _tl1742717453_))
                              (_tl1742917460_ (##cdr _tl1742717453_)))
                          (let ((_sys-vendor17463_ _hd1742817458_))
                            (if (##pair? _tl1742917460_)
                                (let ((_hd1743017465_ (##car _tl1742917460_))
                                      (_tl1743117467_ (##cdr _tl1742917460_)))
                                  (let ((_sys-type17470_ _hd1743017465_))
                                    (if (##null? _tl1743117467_)
                                        (_K1742517448_
                                         _sys-type17470_
                                         _sys-vendor17463_
                                         _sys-cpu17456_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self17418_)
              '#!void)))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
