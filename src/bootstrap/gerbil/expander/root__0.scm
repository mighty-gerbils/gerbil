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
      (lambda (_self18336_ _bind?18337_)
        (begin
          (struct-instance-init! _self18336_ 'root (make-table 'test: eq?))
          (if _bind?18337_
              (begin
                (call-method _self18336_ 'bind-core-syntax-expanders!)
                (call-method _self18336_ 'bind-core-macro-expanders!)
                (call-method _self18336_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self18342_)
          (let ((_bind?18344_ '#t))
            (gx#root-context:::init!__% _self18342_ _bind?18344_))))
      (define gx#root-context:::init!
        (lambda _g18382_
          (let ((_g18381_ (length _g18382_)))
            (cond ((##fx= _g18381_ 1)
                   (apply gx#root-context:::init!__0 _g18382_))
                  ((##fx= _g18381_ 2)
                   (apply gx#root-context:::init!__% _g18382_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g18382_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__%
      (lambda (_self18192_ _super18193_)
        (let ((_super18201_
               (let ((_$e18195_ _super18193_))
                 (if _$e18195_
                     _$e18195_
                     (let ((_$e18198_ (gx#core-context-root__0)))
                       (if _$e18198_
                           _$e18198_
                           (let ((__obj18380
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj18380)
                               __obj18380))))))))
          (struct-instance-init!
           _self18192_
           'top
           (make-table 'test: eq?)
           _super18201_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self18206_)
          (let ((_super18208_ '#f))
            (gx#top-context:::init!__% _self18206_ _super18208_))))
      (define gx#top-context:::init!
        (lambda _g18384_
          (let ((_g18383_ (length _g18384_)))
            (cond ((##fx= _g18383_ 1)
                   (apply gx#top-context:::init!__0 _g18384_))
                  ((##fx= _g18383_ 2)
                   (apply gx#top-context:::init!__% _g18384_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g18384_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self17923_ _bindings17924_)
        (for-each
         (lambda (_bind17926_)
           (let* ((_bind1792717934_ _bind17926_)
                  (_E1792917938_
                   (lambda () (error '"No clause matching" _bind1792717934_)))
                  (_K1793018047_
                   (lambda (_rest17941_ _id17942_)
                     (gx#core-context-put!
                      _self17923_
                      _id17942_
                      (##structure
                       gx#syntax-binding::t
                       _id17942_
                       _id17942_
                       '#f
                       (let* ((_rest1794317954_ _rest17941_)
                              (_E1794517958_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1794317954_)))
                              (_K1794618023_
                               (lambda (_compiler17961_
                                        _expander17962_
                                        _key17963_)
                                 ((let* ((_key1796417977_ _key17963_)
                                         (_E1797017981_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1796417977_))))
                                    (let ((_K1797518017_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K1797418010_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K1797318002_
                                           (lambda () gx#make-definition-form))
                                          (_K1797217994_
                                           (lambda () gx#make-special-form))
                                          (_K1797117986_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match1796917989_
                                              (lambda ()
                                                (if (##eq? _key1796417977_
                                                           'expr:)
                                                    (_K1797117986_)
                                                    (_E1797017981_))))
                                             (_try-match1796817997_
                                              (lambda ()
                                                (if (##eq? _key1796417977_
                                                           'special:)
                                                    (_K1797217994_)
                                                    (_try-match1796917989_))))
                                             (_try-match1796718005_
                                              (lambda ()
                                                (if (##eq? _key1796417977_
                                                           'define:)
                                                    (_K1797318002_)
                                                    (_try-match1796817997_))))
                                             (_try-match1796618013_
                                              (lambda ()
                                                (if (##eq? _key1796417977_
                                                           'module:)
                                                    (_K1797418010_)
                                                    (_try-match1796718005_)))))
                                        (if (##eq? _key1796417977_ 'top:)
                                            (_K1797518017_)
                                            (_try-match1796618013_)))))
                                  _expander17962_
                                  _id17942_
                                  (let ((_$e18020_ _compiler17961_))
                                    (if _$e18020_
                                        _$e18020_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1794317954_)
                             (let ((_hd1794718026_ (##car _rest1794317954_))
                                   (_tl1794818028_ (##cdr _rest1794317954_)))
                               (let ((_key18031_ _hd1794718026_))
                                 (if (##pair? _tl1794818028_)
                                     (let ((_hd1794918033_
                                            (##car _tl1794818028_))
                                           (_tl1795018035_
                                            (##cdr _tl1794818028_)))
                                       (let ((_expander18038_ _hd1794918033_))
                                         (if (##pair? _tl1795018035_)
                                             (let ((_hd1795118040_
                                                    (##car _tl1795018035_))
                                                   (_tl1795218042_
                                                    (##cdr _tl1795018035_)))
                                               (let ((_compiler18045_
                                                      _hd1795118040_))
                                                 (if (##null? _tl1795218042_)
                                                     (_K1794618023_
                                                      _compiler18045_
                                                      _expander18038_
                                                      _key18031_)
                                                     (_E1794517958_))))
                                             (_E1794517958_))))
                                     (_E1794517958_))))
                             (_E1794517958_))))))))
             (if (##pair? _bind1792717934_)
                 (let ((_hd1793118050_ (##car _bind1792717934_))
                       (_tl1793218052_ (##cdr _bind1792717934_)))
                   (let* ((_id18055_ _hd1793118050_)
                          (_rest18057_ _tl1793218052_))
                     (_K1793018047_ _rest18057_ _id18055_)))
                 (_E1792917938_))))
         _bindings17924_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self18062_)
          (let ((_bindings18064_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__%
             _self18062_
             _bindings18064_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g18386_
          (let ((_g18385_ (length _g18386_)))
            (cond ((##fx= _g18385_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g18386_))
                  ((##fx= _g18385_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__%
                          _g18386_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g18386_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self17695_ _bindings17696_)
        (for-each
         (lambda (_bind17698_)
           (let* ((_bind1769917706_ _bind17698_)
                  (_E1770117710_
                   (lambda () (error '"No clause matching" _bind1769917706_)))
                  (_K1770217778_
                   (lambda (_rest17713_ _id17714_)
                     (gx#core-context-put!
                      _self17695_
                      _id17714_
                      (##structure
                       gx#syntax-binding::t
                       _id17714_
                       _id17714_
                       '#f
                       (let* ((_rest1771517730_ _rest17713_)
                              (_E1771917734_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1771517730_))))
                         (let ((_K1772417763_
                                (lambda (_core-id17761_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id17761_)))
                               (_K1772117748_
                                (lambda (_proc17746_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc17746_)))
                               (_K1772017739_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id17714_))))
                           (let ((_try-match1771817742_
                                  (lambda ()
                                    (if (##null? _rest1771517730_)
                                        (_K1772017739_)
                                        (_E1771917734_)))))
                             (if (##pair? _rest1771517730_)
                                 (let ((_tl1772617768_
                                        (##cdr _rest1771517730_))
                                       (_hd1772517766_
                                        (##car _rest1771517730_)))
                                   (if (##eq? _hd1772517766_ '=>)
                                       (if (##pair? _tl1772617768_)
                                           (let ((_tl1772817773_
                                                  (##cdr _tl1772617768_))
                                                 (_hd1772717771_
                                                  (##car _tl1772617768_)))
                                             (if (##null? _tl1772817773_)
                                                 (let ((_core-id17776_
                                                        _hd1772717771_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id17776_))
                                                 (_E1771917734_)))
                                           (if (##null? _tl1772617768_)
                                               (let ((_proc17756_
                                                      _hd1772517766_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc17756_))
                                               (_E1771917734_)))
                                       (if (##null? _tl1772617768_)
                                           (let ((_proc17756_ _hd1772517766_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc17756_))
                                           (_E1771917734_))))
                                 (_try-match1771817742_))))))))))
             (if (##pair? _bind1769917706_)
                 (let ((_hd1770317781_ (##car _bind1769917706_))
                       (_tl1770417783_ (##cdr _bind1769917706_)))
                   (let* ((_id17786_ _hd1770317781_)
                          (_rest17788_ _tl1770417783_))
                     (_K1770217778_ _rest17788_ _id17786_)))
                 (_E1770117710_))))
         _bindings17696_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self17793_)
          (let ((_bindings17795_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__%
             _self17793_
             _bindings17795_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g18388_
          (let ((_g18387_ (length _g18388_)))
            (cond ((##fx= _g18387_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g18388_))
                  ((##fx= _g18387_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__%
                          _g18388_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g18388_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self17486_)
      (letrec ((_linux-variant?17488_
                (lambda (_sys-type17540_)
                  (let* ((_g1754117549_
                          (string-split (symbol->string _sys-type17540_) '#\-))
                         (_else1754317557_ (lambda () '#f))
                         (_K1754517562_
                          (lambda (_rest17560_) (not (null? _rest17560_)))))
                    (if (##pair? _g1754117549_)
                        (let ((_hd1754617565_ (##car _g1754117549_))
                              (_tl1754717567_ (##cdr _g1754117549_)))
                          (if (equal? _hd1754617565_ '"linux")
                              (let ((_rest17570_ _tl1754717567_))
                                (_K1754517562_ _rest17570_))
                              (_else1754317557_)))
                        (_else1754317557_))))))
        (begin
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self17486_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self17486_)
          (let* ((_g1748917501_ (system-type))
                 (_else1749117509_ (lambda () '#!void))
                 (_K1749317516_
                  (lambda (_sys-type17512_ _sys-vendor17513_ _sys-cpu17514_)
                    (begin
                      (gx#core-bind-feature!__%
                       _sys-cpu17514_
                       '#f
                       '0
                       _self17486_)
                      (gx#core-bind-feature!__%
                       _sys-type17512_
                       '#f
                       '0
                       _self17486_)
                      (if (_linux-variant?17488_ _sys-type17512_)
                          (gx#core-bind-feature!__% 'linux '#f '0 _self17486_)
                          '#!void)))))
            (if (##pair? _g1748917501_)
                (let ((_hd1749417519_ (##car _g1748917501_))
                      (_tl1749517521_ (##cdr _g1748917501_)))
                  (let ((_sys-cpu17524_ _hd1749417519_))
                    (if (##pair? _tl1749517521_)
                        (let ((_hd1749617526_ (##car _tl1749517521_))
                              (_tl1749717528_ (##cdr _tl1749517521_)))
                          (let ((_sys-vendor17531_ _hd1749617526_))
                            (if (##pair? _tl1749717528_)
                                (let ((_hd1749817533_ (##car _tl1749717528_))
                                      (_tl1749917535_ (##cdr _tl1749717528_)))
                                  (let ((_sys-type17538_ _hd1749817533_))
                                    (if (##null? _tl1749917535_)
                                        (_K1749317516_
                                         _sys-type17538_
                                         _sys-vendor17531_
                                         _sys-cpu17524_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self17486_)
              '#!void)))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
