(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (not safe))
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
  (define gx#root-context:::init!__%
    (lambda (_self18224_ _bind?18225_)
      (struct-instance-init! _self18224_ 'root (make-table 'test: eq?))
      (if _bind?18225_
          (begin
            (call-method _self18224_ 'bind-core-syntax-expanders!)
            (call-method _self18224_ 'bind-core-macro-expanders!)
            (call-method _self18224_ 'bind-core-features!))
          '#!void)))
  (define gx#root-context:::init!__0
    (lambda (_self18230_)
      (let ((_bind?18232_ '#t))
        (gx#root-context:::init!__% _self18230_ _bind?18232_))))
  (define gx#root-context:::init!
    (lambda _g18270_
      (let ((_g18269_ (length _g18270_)))
        (cond ((##fx= _g18269_ 1) (apply gx#root-context:::init!__0 _g18270_))
              ((##fx= _g18269_ 2) (apply gx#root-context:::init!__% _g18270_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#root-context:::init!
                _g18270_))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (define gx#top-context:::init!__%
    (lambda (_self18080_ _super18081_)
      (let ((_super18089_
             (let ((_$e18083_ _super18081_))
               (if _$e18083_
                   _$e18083_
                   (let ((_$e18086_ (gx#core-context-root__0)))
                     (if _$e18086_
                         _$e18086_
                         (let ((__obj18268
                                (make-object gx#root-context::t '2)))
                           (gx#root-context:::init!__0 __obj18268)
                           __obj18268)))))))
        (struct-instance-init!
         _self18080_
         'top
         (make-table 'test: eq?)
         _super18089_
         '#f
         '#f))))
  (define gx#top-context:::init!__0
    (lambda (_self18094_)
      (let ((_super18096_ '#f))
        (gx#top-context:::init!__% _self18094_ _super18096_))))
  (define gx#top-context:::init!
    (lambda _g18272_
      (let ((_g18271_ (length _g18272_)))
        (cond ((##fx= _g18271_ 1) (apply gx#top-context:::init!__0 _g18272_))
              ((##fx= _g18271_ 2) (apply gx#top-context:::init!__% _g18272_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#top-context:::init!
                _g18272_))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (define gx#expander-context::bind-core-syntax-expanders!__%
    (lambda (_self17811_ _bindings17812_)
      (for-each
       (lambda (_bind17814_)
         (let* ((_bind1781517822_ _bind17814_)
                (_E1781717826_
                 (lambda () (error '"No clause matching" _bind1781517822_)))
                (_K1781817935_
                 (lambda (_rest17829_ _id17830_)
                   (gx#core-context-put!
                    _self17811_
                    _id17830_
                    (##structure
                     gx#syntax-binding::t
                     _id17830_
                     _id17830_
                     '#f
                     (let* ((_rest1783117842_ _rest17829_)
                            (_E1783317846_
                             (lambda ()
                               (error '"No clause matching" _rest1783117842_)))
                            (_K1783417911_
                             (lambda (_compiler17849_
                                      _expander17850_
                                      _key17851_)
                               ((let* ((_key1785217865_ _key17851_)
                                       (_E1785817869_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _key1785217865_))))
                                  (let ((_K1786317905_
                                         (lambda () gx#make-top-special-form))
                                        (_K1786217898_
                                         (lambda ()
                                           gx#make-module-special-form))
                                        (_K1786117890_
                                         (lambda () gx#make-definition-form))
                                        (_K1786017882_
                                         (lambda () gx#make-special-form))
                                        (_K1785917874_
                                         (lambda () gx#make-expression-form)))
                                    (let* ((_try-match1785717877_
                                            (lambda ()
                                              (if (##eq? _key1785217865_
                                                         'expr:)
                                                  (_K1785917874_)
                                                  (_E1785817869_))))
                                           (_try-match1785617885_
                                            (lambda ()
                                              (if (##eq? _key1785217865_
                                                         'special:)
                                                  (_K1786017882_)
                                                  (_try-match1785717877_))))
                                           (_try-match1785517893_
                                            (lambda ()
                                              (if (##eq? _key1785217865_
                                                         'define:)
                                                  (_K1786117890_)
                                                  (_try-match1785617885_))))
                                           (_try-match1785417901_
                                            (lambda ()
                                              (if (##eq? _key1785217865_
                                                         'module:)
                                                  (_K1786217898_)
                                                  (_try-match1785517893_)))))
                                      (if (##eq? _key1785217865_ 'top:)
                                          (_K1786317905_)
                                          (_try-match1785417901_)))))
                                _expander17850_
                                _id17830_
                                (let ((_$e17908_ _compiler17849_))
                                  (if _$e17908_
                                      _$e17908_
                                      gx#core-compile-top-error))))))
                       (if (##pair? _rest1783117842_)
                           (let ((_hd1783517914_ (##car _rest1783117842_))
                                 (_tl1783617916_ (##cdr _rest1783117842_)))
                             (let ((_key17919_ _hd1783517914_))
                               (if (##pair? _tl1783617916_)
                                   (let ((_hd1783717921_
                                          (##car _tl1783617916_))
                                         (_tl1783817923_
                                          (##cdr _tl1783617916_)))
                                     (let ((_expander17926_ _hd1783717921_))
                                       (if (##pair? _tl1783817923_)
                                           (let ((_hd1783917928_
                                                  (##car _tl1783817923_))
                                                 (_tl1784017930_
                                                  (##cdr _tl1783817923_)))
                                             (let ((_compiler17933_
                                                    _hd1783917928_))
                                               (if (##null? _tl1784017930_)
                                                   (_K1783417911_
                                                    _compiler17933_
                                                    _expander17926_
                                                    _key17919_)
                                                   (_E1783317846_))))
                                           (_E1783317846_))))
                                   (_E1783317846_))))
                           (_E1783317846_))))))))
           (if (##pair? _bind1781517822_)
               (let ((_hd1781917938_ (##car _bind1781517822_))
                     (_tl1782017940_ (##cdr _bind1781517822_)))
                 (let* ((_id17943_ _hd1781917938_)
                        (_rest17945_ _tl1782017940_))
                   (_K1781817935_ _rest17945_ _id17943_)))
               (_E1781717826_))))
       _bindings17812_)))
  (define gx#expander-context::bind-core-syntax-expanders!__0
    (lambda (_self17950_)
      (let ((_bindings17952_ gx#*core-syntax-expanders*))
        (gx#expander-context::bind-core-syntax-expanders!__%
         _self17950_
         _bindings17952_))))
  (define gx#expander-context::bind-core-syntax-expanders!
    (lambda _g18274_
      (let ((_g18273_ (length _g18274_)))
        (cond ((##fx= _g18273_ 1)
               (apply gx#expander-context::bind-core-syntax-expanders!__0
                      _g18274_))
              ((##fx= _g18273_ 2)
               (apply gx#expander-context::bind-core-syntax-expanders!__%
                      _g18274_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#expander-context::bind-core-syntax-expanders!
                _g18274_))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (define gx#expander-context::bind-core-macro-expanders!__%
    (lambda (_self17583_ _bindings17584_)
      (for-each
       (lambda (_bind17586_)
         (let* ((_bind1758717594_ _bind17586_)
                (_E1758917598_
                 (lambda () (error '"No clause matching" _bind1758717594_)))
                (_K1759017666_
                 (lambda (_rest17601_ _id17602_)
                   (gx#core-context-put!
                    _self17583_
                    _id17602_
                    (##structure
                     gx#syntax-binding::t
                     _id17602_
                     _id17602_
                     '#f
                     (let* ((_rest1760317618_ _rest17601_)
                            (_E1760717622_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest1760317618_))))
                       (let ((_K1761217651_
                              (lambda (_core-id17649_)
                                (##structure
                                 gx#rename-macro-expander::t
                                 _core-id17649_)))
                             (_K1760917636_
                              (lambda (_proc17634_)
                                (##structure
                                 gx#macro-expander::t
                                 _proc17634_)))
                             (_K1760817627_
                              (lambda ()
                                (##structure
                                 gx#reserved-expander::t
                                 _id17602_))))
                         (let ((_try-match1760617630_
                                (lambda ()
                                  (if (##null? _rest1760317618_)
                                      (_K1760817627_)
                                      (_E1760717622_)))))
                           (if (##pair? _rest1760317618_)
                               (let ((_tl1761417656_ (##cdr _rest1760317618_))
                                     (_hd1761317654_ (##car _rest1760317618_)))
                                 (if (##eq? _hd1761317654_ '=>)
                                     (if (##pair? _tl1761417656_)
                                         (let ((_tl1761617661_
                                                (##cdr _tl1761417656_))
                                               (_hd1761517659_
                                                (##car _tl1761417656_)))
                                           (if (##null? _tl1761617661_)
                                               (let ((_core-id17664_
                                                      _hd1761517659_))
                                                 (##structure
                                                  gx#rename-macro-expander::t
                                                  _core-id17664_))
                                               (_E1760717622_)))
                                         (if (##null? _tl1761417656_)
                                             (let ((_proc17644_
                                                    _hd1761317654_))
                                               (##structure
                                                gx#macro-expander::t
                                                _proc17644_))
                                             (_E1760717622_)))
                                     (if (##null? _tl1761417656_)
                                         (let ((_proc17644_ _hd1761317654_))
                                           (##structure
                                            gx#macro-expander::t
                                            _proc17644_))
                                         (_E1760717622_))))
                               (_try-match1760617630_))))))))))
           (if (##pair? _bind1758717594_)
               (let ((_hd1759117669_ (##car _bind1758717594_))
                     (_tl1759217671_ (##cdr _bind1758717594_)))
                 (let* ((_id17674_ _hd1759117669_)
                        (_rest17676_ _tl1759217671_))
                   (_K1759017666_ _rest17676_ _id17674_)))
               (_E1758917598_))))
       _bindings17584_)))
  (define gx#expander-context::bind-core-macro-expanders!__0
    (lambda (_self17681_)
      (let ((_bindings17683_ gx#*core-macro-expanders*))
        (gx#expander-context::bind-core-macro-expanders!__%
         _self17681_
         _bindings17683_))))
  (define gx#expander-context::bind-core-macro-expanders!
    (lambda _g18276_
      (let ((_g18275_ (length _g18276_)))
        (cond ((##fx= _g18275_ 1)
               (apply gx#expander-context::bind-core-macro-expanders!__0
                      _g18276_))
              ((##fx= _g18275_ 2)
               (apply gx#expander-context::bind-core-macro-expanders!__%
                      _g18276_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#expander-context::bind-core-macro-expanders!
                _g18276_))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self17364_)
      (letrec ((_linux-variant?17366_
                (lambda (_sys-type17428_)
                  (let* ((_g1742917437_
                          (string-split (symbol->string _sys-type17428_) '#\-))
                         (_else1743117445_ (lambda () '#f))
                         (_K1743317450_
                          (lambda (_rest17448_) (not (null? _rest17448_)))))
                    (if (##pair? _g1742917437_)
                        (let ((_hd1743417453_ (##car _g1742917437_))
                              (_tl1743517455_ (##cdr _g1742917437_)))
                          (if (equal? _hd1743417453_ '"linux")
                              (let ((_rest17458_ _tl1743517455_))
                                (_K1743317450_ _rest17458_))
                              (_else1743117445_)))
                        (_else1743117445_)))))
               (_bsd-variant17367_
                (lambda (_sys-type17424_)
                  (let ((_sys-prefix17426_
                         (list->string
                          (filter char-alphabetic?
                                  (string->list
                                   (symbol->string _sys-type17424_))))))
                    (if (member _sys-prefix17426_
                                (cons '"openbsd"
                                      (cons '"netbsd"
                                            (cons '"freebsd"
                                                  (cons '"darwin" '())))))
                        _sys-prefix17426_
                        '#f)))))
        (gx#core-bind-feature!__% 'gerbil '#f '0 _self17364_)
        (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self17364_)
        (let* ((_g1736817380_ (system-type))
               (_else1737017388_ (lambda () '#!void))
               (_K1737217400_
                (lambda (_sys-type17391_ _sys-vendor17392_ _sys-cpu17393_)
                  (gx#core-bind-feature!__% _sys-cpu17393_ '#f '0 _self17364_)
                  (gx#core-bind-feature!__% _sys-type17391_ '#f '0 _self17364_)
                  (if (_linux-variant?17366_ _sys-type17391_)
                      (gx#core-bind-feature!__%
                       (string->symbol '"linux")
                       '#f
                       '0
                       _self17364_)
                      (let ((_$e17395_ (_bsd-variant17367_ _sys-type17391_)))
                        (if _$e17395_
                            ((lambda (_sys-prefix17398_)
                               (gx#core-bind-feature!__%
                                (string->symbol '"bsd")
                                '#f
                                '0
                                _self17364_)
                               (gx#core-bind-feature!__%
                                (string->symbol _sys-prefix17398_)
                                '#f
                                '0
                                _self17364_))
                             _$e17395_)
                            '#!void))))))
          (if (##pair? _g1736817380_)
              (let ((_hd1737317403_ (##car _g1736817380_))
                    (_tl1737417405_ (##cdr _g1736817380_)))
                (let ((_sys-cpu17408_ _hd1737317403_))
                  (if (##pair? _tl1737417405_)
                      (let ((_hd1737517410_ (##car _tl1737417405_))
                            (_tl1737617412_ (##cdr _tl1737417405_)))
                        (let ((_sys-vendor17415_ _hd1737517410_))
                          (if (##pair? _tl1737617412_)
                              (let ((_hd1737717417_ (##car _tl1737617412_))
                                    (_tl1737817419_ (##cdr _tl1737617412_)))
                                (let ((_sys-type17422_ _hd1737717417_))
                                  (if (##null? _tl1737817419_)
                                      (_K1737217400_
                                       _sys-type17422_
                                       _sys-vendor17415_
                                       _sys-cpu17408_)
                                      '#!void)))
                              '#!void)))
                      '#!void)))
              '#!void))
        (if (gerbil-runtime-smp?)
            (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self17364_)
            '#!void))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
