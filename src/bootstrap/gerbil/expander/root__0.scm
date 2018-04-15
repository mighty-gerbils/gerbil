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
    (lambda (_self18214_ _bind?18215_)
      (struct-instance-init! _self18214_ 'root (make-table 'test: eq?))
      (if _bind?18215_
          (begin
            (call-method _self18214_ 'bind-core-syntax-expanders!)
            (call-method _self18214_ 'bind-core-macro-expanders!)
            (call-method _self18214_ 'bind-core-features!))
          '#!void)))
  (define gx#root-context:::init!__0
    (lambda (_self18220_)
      (let ((_bind?18222_ '#t))
        (gx#root-context:::init!__% _self18220_ _bind?18222_))))
  (define gx#root-context:::init!
    (lambda _g18260_
      (let ((_g18259_ (length _g18260_)))
        (cond ((##fx= _g18259_ 1) (apply gx#root-context:::init!__0 _g18260_))
              ((##fx= _g18259_ 2) (apply gx#root-context:::init!__% _g18260_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#root-context:::init!
                _g18260_))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (define gx#top-context:::init!__%
    (lambda (_self18070_ _super18071_)
      (let ((_super18079_
             (let ((_$e18073_ _super18071_))
               (if _$e18073_
                   _$e18073_
                   (let ((_$e18076_ (gx#core-context-root__0)))
                     (if _$e18076_
                         _$e18076_
                         (let ((__obj18258
                                (make-object gx#root-context::t '2)))
                           (gx#root-context:::init!__0 __obj18258)
                           __obj18258)))))))
        (struct-instance-init!
         _self18070_
         'top
         (make-table 'test: eq?)
         _super18079_
         '#f
         '#f))))
  (define gx#top-context:::init!__0
    (lambda (_self18084_)
      (let ((_super18086_ '#f))
        (gx#top-context:::init!__% _self18084_ _super18086_))))
  (define gx#top-context:::init!
    (lambda _g18262_
      (let ((_g18261_ (length _g18262_)))
        (cond ((##fx= _g18261_ 1) (apply gx#top-context:::init!__0 _g18262_))
              ((##fx= _g18261_ 2) (apply gx#top-context:::init!__% _g18262_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#top-context:::init!
                _g18262_))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (define gx#expander-context::bind-core-syntax-expanders!__%
    (lambda (_self17801_ _bindings17802_)
      (for-each
       (lambda (_bind17804_)
         (let* ((_bind1780517812_ _bind17804_)
                (_E1780717816_
                 (lambda () (error '"No clause matching" _bind1780517812_)))
                (_K1780817925_
                 (lambda (_rest17819_ _id17820_)
                   (gx#core-context-put!
                    _self17801_
                    _id17820_
                    (##structure
                     gx#syntax-binding::t
                     _id17820_
                     _id17820_
                     '#f
                     (let* ((_rest1782117832_ _rest17819_)
                            (_E1782317836_
                             (lambda ()
                               (error '"No clause matching" _rest1782117832_)))
                            (_K1782417901_
                             (lambda (_compiler17839_
                                      _expander17840_
                                      _key17841_)
                               ((let* ((_key1784217855_ _key17841_)
                                       (_E1784817859_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _key1784217855_))))
                                  (let ((_K1785317895_
                                         (lambda () gx#make-top-special-form))
                                        (_K1785217888_
                                         (lambda ()
                                           gx#make-module-special-form))
                                        (_K1785117880_
                                         (lambda () gx#make-definition-form))
                                        (_K1785017872_
                                         (lambda () gx#make-special-form))
                                        (_K1784917864_
                                         (lambda () gx#make-expression-form)))
                                    (let* ((_try-match1784717867_
                                            (lambda ()
                                              (if (##eq? _key1784217855_
                                                         'expr:)
                                                  (_K1784917864_)
                                                  (_E1784817859_))))
                                           (_try-match1784617875_
                                            (lambda ()
                                              (if (##eq? _key1784217855_
                                                         'special:)
                                                  (_K1785017872_)
                                                  (_try-match1784717867_))))
                                           (_try-match1784517883_
                                            (lambda ()
                                              (if (##eq? _key1784217855_
                                                         'define:)
                                                  (_K1785117880_)
                                                  (_try-match1784617875_))))
                                           (_try-match1784417891_
                                            (lambda ()
                                              (if (##eq? _key1784217855_
                                                         'module:)
                                                  (_K1785217888_)
                                                  (_try-match1784517883_)))))
                                      (if (##eq? _key1784217855_ 'top:)
                                          (_K1785317895_)
                                          (_try-match1784417891_)))))
                                _expander17840_
                                _id17820_
                                (let ((_$e17898_ _compiler17839_))
                                  (if _$e17898_
                                      _$e17898_
                                      gx#core-compile-top-error))))))
                       (if (##pair? _rest1782117832_)
                           (let ((_hd1782517904_ (##car _rest1782117832_))
                                 (_tl1782617906_ (##cdr _rest1782117832_)))
                             (let ((_key17909_ _hd1782517904_))
                               (if (##pair? _tl1782617906_)
                                   (let ((_hd1782717911_
                                          (##car _tl1782617906_))
                                         (_tl1782817913_
                                          (##cdr _tl1782617906_)))
                                     (let ((_expander17916_ _hd1782717911_))
                                       (if (##pair? _tl1782817913_)
                                           (let ((_hd1782917918_
                                                  (##car _tl1782817913_))
                                                 (_tl1783017920_
                                                  (##cdr _tl1782817913_)))
                                             (let ((_compiler17923_
                                                    _hd1782917918_))
                                               (if (##null? _tl1783017920_)
                                                   (_K1782417901_
                                                    _compiler17923_
                                                    _expander17916_
                                                    _key17909_)
                                                   (_E1782317836_))))
                                           (_E1782317836_))))
                                   (_E1782317836_))))
                           (_E1782317836_))))))))
           (if (##pair? _bind1780517812_)
               (let ((_hd1780917928_ (##car _bind1780517812_))
                     (_tl1781017930_ (##cdr _bind1780517812_)))
                 (let* ((_id17933_ _hd1780917928_)
                        (_rest17935_ _tl1781017930_))
                   (_K1780817925_ _rest17935_ _id17933_)))
               (_E1780717816_))))
       _bindings17802_)))
  (define gx#expander-context::bind-core-syntax-expanders!__0
    (lambda (_self17940_)
      (let ((_bindings17942_ gx#*core-syntax-expanders*))
        (gx#expander-context::bind-core-syntax-expanders!__%
         _self17940_
         _bindings17942_))))
  (define gx#expander-context::bind-core-syntax-expanders!
    (lambda _g18264_
      (let ((_g18263_ (length _g18264_)))
        (cond ((##fx= _g18263_ 1)
               (apply gx#expander-context::bind-core-syntax-expanders!__0
                      _g18264_))
              ((##fx= _g18263_ 2)
               (apply gx#expander-context::bind-core-syntax-expanders!__%
                      _g18264_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#expander-context::bind-core-syntax-expanders!
                _g18264_))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (define gx#expander-context::bind-core-macro-expanders!__%
    (lambda (_self17573_ _bindings17574_)
      (for-each
       (lambda (_bind17576_)
         (let* ((_bind1757717584_ _bind17576_)
                (_E1757917588_
                 (lambda () (error '"No clause matching" _bind1757717584_)))
                (_K1758017656_
                 (lambda (_rest17591_ _id17592_)
                   (gx#core-context-put!
                    _self17573_
                    _id17592_
                    (##structure
                     gx#syntax-binding::t
                     _id17592_
                     _id17592_
                     '#f
                     (let* ((_rest1759317608_ _rest17591_)
                            (_E1759717612_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest1759317608_))))
                       (let ((_K1760217641_
                              (lambda (_core-id17639_)
                                (##structure
                                 gx#rename-macro-expander::t
                                 _core-id17639_)))
                             (_K1759917626_
                              (lambda (_proc17624_)
                                (##structure
                                 gx#macro-expander::t
                                 _proc17624_)))
                             (_K1759817617_
                              (lambda ()
                                (##structure
                                 gx#reserved-expander::t
                                 _id17592_))))
                         (let ((_try-match1759617620_
                                (lambda ()
                                  (if (##null? _rest1759317608_)
                                      (_K1759817617_)
                                      (_E1759717612_)))))
                           (if (##pair? _rest1759317608_)
                               (let ((_tl1760417646_ (##cdr _rest1759317608_))
                                     (_hd1760317644_ (##car _rest1759317608_)))
                                 (if (##eq? _hd1760317644_ '=>)
                                     (if (##pair? _tl1760417646_)
                                         (let ((_tl1760617651_
                                                (##cdr _tl1760417646_))
                                               (_hd1760517649_
                                                (##car _tl1760417646_)))
                                           (if (##null? _tl1760617651_)
                                               (let ((_core-id17654_
                                                      _hd1760517649_))
                                                 (##structure
                                                  gx#rename-macro-expander::t
                                                  _core-id17654_))
                                               (_E1759717612_)))
                                         (if (##null? _tl1760417646_)
                                             (let ((_proc17634_
                                                    _hd1760317644_))
                                               (##structure
                                                gx#macro-expander::t
                                                _proc17634_))
                                             (_E1759717612_)))
                                     (if (##null? _tl1760417646_)
                                         (let ((_proc17634_ _hd1760317644_))
                                           (##structure
                                            gx#macro-expander::t
                                            _proc17634_))
                                         (_E1759717612_))))
                               (_try-match1759617620_))))))))))
           (if (##pair? _bind1757717584_)
               (let ((_hd1758117659_ (##car _bind1757717584_))
                     (_tl1758217661_ (##cdr _bind1757717584_)))
                 (let* ((_id17664_ _hd1758117659_)
                        (_rest17666_ _tl1758217661_))
                   (_K1758017656_ _rest17666_ _id17664_)))
               (_E1757917588_))))
       _bindings17574_)))
  (define gx#expander-context::bind-core-macro-expanders!__0
    (lambda (_self17671_)
      (let ((_bindings17673_ gx#*core-macro-expanders*))
        (gx#expander-context::bind-core-macro-expanders!__%
         _self17671_
         _bindings17673_))))
  (define gx#expander-context::bind-core-macro-expanders!
    (lambda _g18266_
      (let ((_g18265_ (length _g18266_)))
        (cond ((##fx= _g18265_ 1)
               (apply gx#expander-context::bind-core-macro-expanders!__0
                      _g18266_))
              ((##fx= _g18265_ 2)
               (apply gx#expander-context::bind-core-macro-expanders!__%
                      _g18266_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#expander-context::bind-core-macro-expanders!
                _g18266_))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self17364_)
      (letrec ((_linux-variant?17366_
                (lambda (_sys-type17418_)
                  (let* ((_g1741917427_
                          (string-split (symbol->string _sys-type17418_) '#\-))
                         (_else1742117435_ (lambda () '#f))
                         (_K1742317440_
                          (lambda (_rest17438_) (not (null? _rest17438_)))))
                    (if (##pair? _g1741917427_)
                        (let ((_hd1742417443_ (##car _g1741917427_))
                              (_tl1742517445_ (##cdr _g1741917427_)))
                          (if (equal? _hd1742417443_ '"linux")
                              (let ((_rest17448_ _tl1742517445_))
                                (_K1742317440_ _rest17448_))
                              (_else1742117435_)))
                        (_else1742117435_))))))
        (gx#core-bind-feature!__% 'gerbil '#f '0 _self17364_)
        (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self17364_)
        (let* ((_g1736717379_ (system-type))
               (_else1736917387_ (lambda () '#!void))
               (_K1737117394_
                (lambda (_sys-type17390_ _sys-vendor17391_ _sys-cpu17392_)
                  (gx#core-bind-feature!__% _sys-cpu17392_ '#f '0 _self17364_)
                  (gx#core-bind-feature!__% _sys-type17390_ '#f '0 _self17364_)
                  (if (_linux-variant?17366_ _sys-type17390_)
                      (gx#core-bind-feature!__% 'linux '#f '0 _self17364_)
                      '#!void))))
          (if (##pair? _g1736717379_)
              (let ((_hd1737217397_ (##car _g1736717379_))
                    (_tl1737317399_ (##cdr _g1736717379_)))
                (let ((_sys-cpu17402_ _hd1737217397_))
                  (if (##pair? _tl1737317399_)
                      (let ((_hd1737417404_ (##car _tl1737317399_))
                            (_tl1737517406_ (##cdr _tl1737317399_)))
                        (let ((_sys-vendor17409_ _hd1737417404_))
                          (if (##pair? _tl1737517406_)
                              (let ((_hd1737617411_ (##car _tl1737517406_))
                                    (_tl1737717413_ (##cdr _tl1737517406_)))
                                (let ((_sys-type17416_ _hd1737617411_))
                                  (if (##null? _tl1737717413_)
                                      (_K1737117394_
                                       _sys-type17416_
                                       _sys-vendor17409_
                                       _sys-cpu17402_)
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
