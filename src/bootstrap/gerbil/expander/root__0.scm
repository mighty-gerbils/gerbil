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
      (lambda (_self18272_ _bind?18273_)
        (begin
          (struct-instance-init! _self18272_ 'root (make-table 'test: eq?))
          (if _bind?18273_
              (begin
                (call-method _self18272_ 'bind-core-syntax-expanders!)
                (call-method _self18272_ 'bind-core-macro-expanders!)
                (call-method _self18272_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self18278_)
          (let ((_bind?18280_ '#t))
            (gx#root-context:::init!__% _self18278_ _bind?18280_))))
      (define gx#root-context:::init!
        (lambda _g18318_
          (let ((_g18317_ (length _g18318_)))
            (cond ((##fx= _g18317_ 1)
                   (apply gx#root-context:::init!__0 _g18318_))
                  ((##fx= _g18317_ 2)
                   (apply gx#root-context:::init!__% _g18318_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g18318_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__%
      (lambda (_self18128_ _super18129_)
        (let ((_super18137_
               (let ((_$e18131_ _super18129_))
                 (if _$e18131_
                     _$e18131_
                     (let ((_$e18134_ (gx#core-context-root__0)))
                       (if _$e18134_
                           _$e18134_
                           (let ((__obj18316
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj18316)
                               __obj18316))))))))
          (struct-instance-init!
           _self18128_
           'top
           (make-table 'test: eq?)
           _super18137_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self18142_)
          (let ((_super18144_ '#f))
            (gx#top-context:::init!__% _self18142_ _super18144_))))
      (define gx#top-context:::init!
        (lambda _g18320_
          (let ((_g18319_ (length _g18320_)))
            (cond ((##fx= _g18319_ 1)
                   (apply gx#top-context:::init!__0 _g18320_))
                  ((##fx= _g18319_ 2)
                   (apply gx#top-context:::init!__% _g18320_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g18320_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self17859_ _bindings17860_)
        (for-each
         (lambda (_bind17862_)
           (let* ((_bind1786317870_ _bind17862_)
                  (_E1786517874_
                   (lambda () (error '"No clause matching" _bind1786317870_)))
                  (_K1786617983_
                   (lambda (_rest17877_ _id17878_)
                     (gx#core-context-put!
                      _self17859_
                      _id17878_
                      (##structure
                       gx#syntax-binding::t
                       _id17878_
                       _id17878_
                       '#f
                       (let* ((_rest1787917890_ _rest17877_)
                              (_E1788117894_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1787917890_)))
                              (_K1788217959_
                               (lambda (_compiler17897_
                                        _expander17898_
                                        _key17899_)
                                 ((let* ((_key1790017913_ _key17899_)
                                         (_E1790617917_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1790017913_))))
                                    (let ((_K1791117953_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K1791017946_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K1790917938_
                                           (lambda () gx#make-definition-form))
                                          (_K1790817930_
                                           (lambda () gx#make-special-form))
                                          (_K1790717922_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match1790517925_
                                              (lambda ()
                                                (if (##eq? _key1790017913_
                                                           'expr:)
                                                    (_K1790717922_)
                                                    (_E1790617917_))))
                                             (_try-match1790417933_
                                              (lambda ()
                                                (if (##eq? _key1790017913_
                                                           'special:)
                                                    (_K1790817930_)
                                                    (_try-match1790517925_))))
                                             (_try-match1790317941_
                                              (lambda ()
                                                (if (##eq? _key1790017913_
                                                           'define:)
                                                    (_K1790917938_)
                                                    (_try-match1790417933_))))
                                             (_try-match1790217949_
                                              (lambda ()
                                                (if (##eq? _key1790017913_
                                                           'module:)
                                                    (_K1791017946_)
                                                    (_try-match1790317941_)))))
                                        (if (##eq? _key1790017913_ 'top:)
                                            (_K1791117953_)
                                            (_try-match1790217949_)))))
                                  _expander17898_
                                  _id17878_
                                  (let ((_$e17956_ _compiler17897_))
                                    (if _$e17956_
                                        _$e17956_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1787917890_)
                             (let ((_hd1788317962_ (##car _rest1787917890_))
                                   (_tl1788417964_ (##cdr _rest1787917890_)))
                               (let ((_key17967_ _hd1788317962_))
                                 (if (##pair? _tl1788417964_)
                                     (let ((_hd1788517969_
                                            (##car _tl1788417964_))
                                           (_tl1788617971_
                                            (##cdr _tl1788417964_)))
                                       (let ((_expander17974_ _hd1788517969_))
                                         (if (##pair? _tl1788617971_)
                                             (let ((_hd1788717976_
                                                    (##car _tl1788617971_))
                                                   (_tl1788817978_
                                                    (##cdr _tl1788617971_)))
                                               (let ((_compiler17981_
                                                      _hd1788717976_))
                                                 (if (##null? _tl1788817978_)
                                                     (_K1788217959_
                                                      _compiler17981_
                                                      _expander17974_
                                                      _key17967_)
                                                     (_E1788117894_))))
                                             (_E1788117894_))))
                                     (_E1788117894_))))
                             (_E1788117894_))))))))
             (if (##pair? _bind1786317870_)
                 (let ((_hd1786717986_ (##car _bind1786317870_))
                       (_tl1786817988_ (##cdr _bind1786317870_)))
                   (let* ((_id17991_ _hd1786717986_)
                          (_rest17993_ _tl1786817988_))
                     (_K1786617983_ _rest17993_ _id17991_)))
                 (_E1786517874_))))
         _bindings17860_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self17998_)
          (let ((_bindings18000_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__%
             _self17998_
             _bindings18000_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g18322_
          (let ((_g18321_ (length _g18322_)))
            (cond ((##fx= _g18321_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g18322_))
                  ((##fx= _g18321_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__%
                          _g18322_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g18322_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self17631_ _bindings17632_)
        (for-each
         (lambda (_bind17634_)
           (let* ((_bind1763517642_ _bind17634_)
                  (_E1763717646_
                   (lambda () (error '"No clause matching" _bind1763517642_)))
                  (_K1763817714_
                   (lambda (_rest17649_ _id17650_)
                     (gx#core-context-put!
                      _self17631_
                      _id17650_
                      (##structure
                       gx#syntax-binding::t
                       _id17650_
                       _id17650_
                       '#f
                       (let* ((_rest1765117666_ _rest17649_)
                              (_E1765517670_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1765117666_))))
                         (let ((_K1766017699_
                                (lambda (_core-id17697_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id17697_)))
                               (_K1765717684_
                                (lambda (_proc17682_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc17682_)))
                               (_K1765617675_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id17650_))))
                           (let ((_try-match1765417678_
                                  (lambda ()
                                    (if (##null? _rest1765117666_)
                                        (_K1765617675_)
                                        (_E1765517670_)))))
                             (if (##pair? _rest1765117666_)
                                 (let ((_tl1766217704_
                                        (##cdr _rest1765117666_))
                                       (_hd1766117702_
                                        (##car _rest1765117666_)))
                                   (if (##eq? _hd1766117702_ '=>)
                                       (if (##pair? _tl1766217704_)
                                           (let ((_tl1766417709_
                                                  (##cdr _tl1766217704_))
                                                 (_hd1766317707_
                                                  (##car _tl1766217704_)))
                                             (if (##null? _tl1766417709_)
                                                 (let ((_core-id17712_
                                                        _hd1766317707_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id17712_))
                                                 (_E1765517670_)))
                                           (if (##null? _tl1766217704_)
                                               (let ((_proc17692_
                                                      _hd1766117702_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc17692_))
                                               (_E1765517670_)))
                                       (if (##null? _tl1766217704_)
                                           (let ((_proc17692_ _hd1766117702_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc17692_))
                                           (_E1765517670_))))
                                 (_try-match1765417678_))))))))))
             (if (##pair? _bind1763517642_)
                 (let ((_hd1763917717_ (##car _bind1763517642_))
                       (_tl1764017719_ (##cdr _bind1763517642_)))
                   (let* ((_id17722_ _hd1763917717_)
                          (_rest17724_ _tl1764017719_))
                     (_K1763817714_ _rest17724_ _id17722_)))
                 (_E1763717646_))))
         _bindings17632_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self17729_)
          (let ((_bindings17731_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__%
             _self17729_
             _bindings17731_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g18324_
          (let ((_g18323_ (length _g18324_)))
            (cond ((##fx= _g18323_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g18324_))
                  ((##fx= _g18323_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__%
                          _g18324_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g18324_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self17422_)
      (letrec ((_linux-variant?17424_
                (lambda (_sys-type17476_)
                  (let* ((_g1747717485_
                          (string-split (symbol->string _sys-type17476_) '#\-))
                         (_else1747917493_ (lambda () '#f))
                         (_K1748117498_
                          (lambda (_rest17496_) (not (null? _rest17496_)))))
                    (if (##pair? _g1747717485_)
                        (let ((_hd1748217501_ (##car _g1747717485_))
                              (_tl1748317503_ (##cdr _g1747717485_)))
                          (if (equal? _hd1748217501_ '"linux")
                              (let ((_rest17506_ _tl1748317503_))
                                (_K1748117498_ _rest17506_))
                              (_else1747917493_)))
                        (_else1747917493_))))))
        (begin
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self17422_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self17422_)
          (let* ((_g1742517437_ (system-type))
                 (_else1742717445_ (lambda () '#!void))
                 (_K1742917452_
                  (lambda (_sys-type17448_ _sys-vendor17449_ _sys-cpu17450_)
                    (begin
                      (gx#core-bind-feature!__%
                       _sys-cpu17450_
                       '#f
                       '0
                       _self17422_)
                      (gx#core-bind-feature!__%
                       _sys-type17448_
                       '#f
                       '0
                       _self17422_)
                      (if (_linux-variant?17424_ _sys-type17448_)
                          (gx#core-bind-feature!__% 'linux '#f '0 _self17422_)
                          '#!void)))))
            (if (##pair? _g1742517437_)
                (let ((_hd1743017455_ (##car _g1742517437_))
                      (_tl1743117457_ (##cdr _g1742517437_)))
                  (let ((_sys-cpu17460_ _hd1743017455_))
                    (if (##pair? _tl1743117457_)
                        (let ((_hd1743217462_ (##car _tl1743117457_))
                              (_tl1743317464_ (##cdr _tl1743117457_)))
                          (let ((_sys-vendor17467_ _hd1743217462_))
                            (if (##pair? _tl1743317464_)
                                (let ((_hd1743417469_ (##car _tl1743317464_))
                                      (_tl1743517471_ (##cdr _tl1743317464_)))
                                  (let ((_sys-type17474_ _hd1743417469_))
                                    (if (##null? _tl1743517471_)
                                        (_K1742917452_
                                         _sys-type17474_
                                         _sys-vendor17467_
                                         _sys-cpu17460_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self17422_)
              '#!void)))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
