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
    (lambda (_self18220_ _bind?18221_)
      (struct-instance-init! _self18220_ 'root (make-table 'test: eq?))
      (if _bind?18221_
          (begin
            (call-method _self18220_ 'bind-core-syntax-expanders!)
            (call-method _self18220_ 'bind-core-macro-expanders!)
            (call-method _self18220_ 'bind-core-features!))
          '#!void)))
  (define gx#root-context:::init!__0
    (lambda (_self18226_)
      (let ((_bind?18228_ '#t))
        (gx#root-context:::init!__% _self18226_ _bind?18228_))))
  (define gx#root-context:::init!
    (lambda _g18266_
      (let ((_g18265_ (length _g18266_)))
        (cond ((##fx= _g18265_ 1) (apply gx#root-context:::init!__0 _g18266_))
              ((##fx= _g18265_ 2) (apply gx#root-context:::init!__% _g18266_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#root-context:::init!
                _g18266_))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (define gx#top-context:::init!__%
    (lambda (_self18076_ _super18077_)
      (let ((_super18085_
             (let ((_$e18079_ _super18077_))
               (if _$e18079_
                   _$e18079_
                   (let ((_$e18082_ (gx#core-context-root__0)))
                     (if _$e18082_
                         _$e18082_
                         (let ((__obj18264
                                (make-object gx#root-context::t '2)))
                           (gx#root-context:::init!__0 __obj18264)
                           __obj18264)))))))
        (struct-instance-init!
         _self18076_
         'top
         (make-table 'test: eq?)
         _super18085_
         '#f
         '#f))))
  (define gx#top-context:::init!__0
    (lambda (_self18090_)
      (let ((_super18092_ '#f))
        (gx#top-context:::init!__% _self18090_ _super18092_))))
  (define gx#top-context:::init!
    (lambda _g18268_
      (let ((_g18267_ (length _g18268_)))
        (cond ((##fx= _g18267_ 1) (apply gx#top-context:::init!__0 _g18268_))
              ((##fx= _g18267_ 2) (apply gx#top-context:::init!__% _g18268_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#top-context:::init!
                _g18268_))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (define gx#expander-context::bind-core-syntax-expanders!__%
    (lambda (_self17807_ _bindings17808_)
      (for-each
       (lambda (_bind17810_)
         (let* ((_bind1781117818_ _bind17810_)
                (_E1781317822_
                 (lambda () (error '"No clause matching" _bind1781117818_)))
                (_K1781417931_
                 (lambda (_rest17825_ _id17826_)
                   (gx#core-context-put!
                    _self17807_
                    _id17826_
                    (##structure
                     gx#syntax-binding::t
                     _id17826_
                     _id17826_
                     '#f
                     (let* ((_rest1782717838_ _rest17825_)
                            (_E1782917842_
                             (lambda ()
                               (error '"No clause matching" _rest1782717838_)))
                            (_K1783017907_
                             (lambda (_compiler17845_
                                      _expander17846_
                                      _key17847_)
                               ((let* ((_key1784817861_ _key17847_)
                                       (_E1785417865_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _key1784817861_))))
                                  (let ((_K1785917901_
                                         (lambda () gx#make-top-special-form))
                                        (_K1785817894_
                                         (lambda ()
                                           gx#make-module-special-form))
                                        (_K1785717886_
                                         (lambda () gx#make-definition-form))
                                        (_K1785617878_
                                         (lambda () gx#make-special-form))
                                        (_K1785517870_
                                         (lambda () gx#make-expression-form)))
                                    (let* ((_try-match1785317873_
                                            (lambda ()
                                              (if (##eq? _key1784817861_
                                                         'expr:)
                                                  (_K1785517870_)
                                                  (_E1785417865_))))
                                           (_try-match1785217881_
                                            (lambda ()
                                              (if (##eq? _key1784817861_
                                                         'special:)
                                                  (_K1785617878_)
                                                  (_try-match1785317873_))))
                                           (_try-match1785117889_
                                            (lambda ()
                                              (if (##eq? _key1784817861_
                                                         'define:)
                                                  (_K1785717886_)
                                                  (_try-match1785217881_))))
                                           (_try-match1785017897_
                                            (lambda ()
                                              (if (##eq? _key1784817861_
                                                         'module:)
                                                  (_K1785817894_)
                                                  (_try-match1785117889_)))))
                                      (if (##eq? _key1784817861_ 'top:)
                                          (_K1785917901_)
                                          (_try-match1785017897_)))))
                                _expander17846_
                                _id17826_
                                (let ((_$e17904_ _compiler17845_))
                                  (if _$e17904_
                                      _$e17904_
                                      gx#core-compile-top-error))))))
                       (if (##pair? _rest1782717838_)
                           (let ((_hd1783117910_ (##car _rest1782717838_))
                                 (_tl1783217912_ (##cdr _rest1782717838_)))
                             (let ((_key17915_ _hd1783117910_))
                               (if (##pair? _tl1783217912_)
                                   (let ((_hd1783317917_
                                          (##car _tl1783217912_))
                                         (_tl1783417919_
                                          (##cdr _tl1783217912_)))
                                     (let ((_expander17922_ _hd1783317917_))
                                       (if (##pair? _tl1783417919_)
                                           (let ((_hd1783517924_
                                                  (##car _tl1783417919_))
                                                 (_tl1783617926_
                                                  (##cdr _tl1783417919_)))
                                             (let ((_compiler17929_
                                                    _hd1783517924_))
                                               (if (##null? _tl1783617926_)
                                                   (_K1783017907_
                                                    _compiler17929_
                                                    _expander17922_
                                                    _key17915_)
                                                   (_E1782917842_))))
                                           (_E1782917842_))))
                                   (_E1782917842_))))
                           (_E1782917842_))))))))
           (if (##pair? _bind1781117818_)
               (let ((_hd1781517934_ (##car _bind1781117818_))
                     (_tl1781617936_ (##cdr _bind1781117818_)))
                 (let* ((_id17939_ _hd1781517934_)
                        (_rest17941_ _tl1781617936_))
                   (_K1781417931_ _rest17941_ _id17939_)))
               (_E1781317822_))))
       _bindings17808_)))
  (define gx#expander-context::bind-core-syntax-expanders!__0
    (lambda (_self17946_)
      (let ((_bindings17948_ gx#*core-syntax-expanders*))
        (gx#expander-context::bind-core-syntax-expanders!__%
         _self17946_
         _bindings17948_))))
  (define gx#expander-context::bind-core-syntax-expanders!
    (lambda _g18270_
      (let ((_g18269_ (length _g18270_)))
        (cond ((##fx= _g18269_ 1)
               (apply gx#expander-context::bind-core-syntax-expanders!__0
                      _g18270_))
              ((##fx= _g18269_ 2)
               (apply gx#expander-context::bind-core-syntax-expanders!__%
                      _g18270_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#expander-context::bind-core-syntax-expanders!
                _g18270_))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (define gx#expander-context::bind-core-macro-expanders!__%
    (lambda (_self17579_ _bindings17580_)
      (for-each
       (lambda (_bind17582_)
         (let* ((_bind1758317590_ _bind17582_)
                (_E1758517594_
                 (lambda () (error '"No clause matching" _bind1758317590_)))
                (_K1758617662_
                 (lambda (_rest17597_ _id17598_)
                   (gx#core-context-put!
                    _self17579_
                    _id17598_
                    (##structure
                     gx#syntax-binding::t
                     _id17598_
                     _id17598_
                     '#f
                     (let* ((_rest1759917614_ _rest17597_)
                            (_E1760317618_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest1759917614_))))
                       (let ((_K1760817647_
                              (lambda (_core-id17645_)
                                (##structure
                                 gx#rename-macro-expander::t
                                 _core-id17645_)))
                             (_K1760517632_
                              (lambda (_proc17630_)
                                (##structure
                                 gx#macro-expander::t
                                 _proc17630_)))
                             (_K1760417623_
                              (lambda ()
                                (##structure
                                 gx#reserved-expander::t
                                 _id17598_))))
                         (let ((_try-match1760217626_
                                (lambda ()
                                  (if (##null? _rest1759917614_)
                                      (_K1760417623_)
                                      (_E1760317618_)))))
                           (if (##pair? _rest1759917614_)
                               (let ((_tl1761017652_ (##cdr _rest1759917614_))
                                     (_hd1760917650_ (##car _rest1759917614_)))
                                 (if (##eq? _hd1760917650_ '=>)
                                     (if (##pair? _tl1761017652_)
                                         (let ((_tl1761217657_
                                                (##cdr _tl1761017652_))
                                               (_hd1761117655_
                                                (##car _tl1761017652_)))
                                           (if (##null? _tl1761217657_)
                                               (let ((_core-id17660_
                                                      _hd1761117655_))
                                                 (##structure
                                                  gx#rename-macro-expander::t
                                                  _core-id17660_))
                                               (_E1760317618_)))
                                         (if (##null? _tl1761017652_)
                                             (let ((_proc17640_
                                                    _hd1760917650_))
                                               (##structure
                                                gx#macro-expander::t
                                                _proc17640_))
                                             (_E1760317618_)))
                                     (if (##null? _tl1761017652_)
                                         (let ((_proc17640_ _hd1760917650_))
                                           (##structure
                                            gx#macro-expander::t
                                            _proc17640_))
                                         (_E1760317618_))))
                               (_try-match1760217626_))))))))))
           (if (##pair? _bind1758317590_)
               (let ((_hd1758717665_ (##car _bind1758317590_))
                     (_tl1758817667_ (##cdr _bind1758317590_)))
                 (let* ((_id17670_ _hd1758717665_)
                        (_rest17672_ _tl1758817667_))
                   (_K1758617662_ _rest17672_ _id17670_)))
               (_E1758517594_))))
       _bindings17580_)))
  (define gx#expander-context::bind-core-macro-expanders!__0
    (lambda (_self17677_)
      (let ((_bindings17679_ gx#*core-macro-expanders*))
        (gx#expander-context::bind-core-macro-expanders!__%
         _self17677_
         _bindings17679_))))
  (define gx#expander-context::bind-core-macro-expanders!
    (lambda _g18272_
      (let ((_g18271_ (length _g18272_)))
        (cond ((##fx= _g18271_ 1)
               (apply gx#expander-context::bind-core-macro-expanders!__0
                      _g18272_))
              ((##fx= _g18271_ 2)
               (apply gx#expander-context::bind-core-macro-expanders!__%
                      _g18272_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#expander-context::bind-core-macro-expanders!
                _g18272_))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self17364_)
      (letrec ((_linux-variant?17366_
                (lambda (_sys-type17424_)
                  (let* ((_g1742517433_
                          (string-split (symbol->string _sys-type17424_) '#\-))
                         (_else1742717441_ (lambda () '#f))
                         (_K1742917446_
                          (lambda (_rest17444_) (not (null? _rest17444_)))))
                    (if (##pair? _g1742517433_)
                        (let ((_hd1743017449_ (##car _g1742517433_))
                              (_tl1743117451_ (##cdr _g1742517433_)))
                          (if (equal? _hd1743017449_ '"linux")
                              (let ((_rest17454_ _tl1743117451_))
                                (_K1742917446_ _rest17454_))
                              (_else1742717441_)))
                        (_else1742717441_)))))
               (_bsd-variant?17367_
                (lambda (_sys-type17419_)
                  (letrec* ((_bsd17421_
                             (cons '"openbsd"
                                   (cons '"netbsd"
                                         (cons '"freebsd"
                                               (cons '"darwin" '())))))
                            (_sys-prefix17422_
                             (list->string
                              (filter char-alphabetic?
                                      (string->list
                                       (symbol->string _sys-type17419_))))))
                    (not (null? (member _sys-prefix17422_ _bsd17421_)))))))
        (gx#core-bind-feature!__% 'gerbil '#f '0 _self17364_)
        (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self17364_)
        (let* ((_g1736817380_ (system-type))
               (_else1737017388_ (lambda () '#!void))
               (_K1737217395_
                (lambda (_sys-type17391_ _sys-vendor17392_ _sys-cpu17393_)
                  (gx#core-bind-feature!__% _sys-cpu17393_ '#f '0 _self17364_)
                  (gx#core-bind-feature!__% _sys-type17391_ '#f '0 _self17364_)
                  (if (_linux-variant?17366_ _sys-type17391_)
                      (gx#core-bind-feature!__% 'linux '#f '0 _self17364_)
                      '#!void)
                  (if (_bsd-variant?17367_ _sys-type17391_)
                      (gx#core-bind-feature!__% 'bsd '#f '0 _self17364_)
                      '#!void))))
          (if (##pair? _g1736817380_)
              (let ((_hd1737317398_ (##car _g1736817380_))
                    (_tl1737417400_ (##cdr _g1736817380_)))
                (let ((_sys-cpu17403_ _hd1737317398_))
                  (if (##pair? _tl1737417400_)
                      (let ((_hd1737517405_ (##car _tl1737417400_))
                            (_tl1737617407_ (##cdr _tl1737417400_)))
                        (let ((_sys-vendor17410_ _hd1737517405_))
                          (if (##pair? _tl1737617407_)
                              (let ((_hd1737717412_ (##car _tl1737617407_))
                                    (_tl1737817414_ (##cdr _tl1737617407_)))
                                (let ((_sys-type17417_ _hd1737717412_))
                                  (if (##null? _tl1737817414_)
                                      (_K1737217395_
                                       _sys-type17417_
                                       _sys-vendor17410_
                                       _sys-cpu17403_)
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
