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
                              (cons 'special:
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
                                            (cons '#f '()))))
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
    (define gx#root-context:::init!__opt-lambda12627
      (lambda (_self12629_ _bind?12630_)
        (begin
          (direct-struct-instance-init! _self12629_ 'root (make-hash-table-eq))
          (if _bind?12630_
              (begin
                (call-method _self12629_ 'bind-core-syntax-expanders!)
                (call-method _self12629_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self12635_)
          (let ((_bind?12637_ '#t))
            (gx#root-context:::init!__opt-lambda12627
             _self12635_
             _bind?12637_))))
      (define gx#root-context:::init!
        (lambda _g12643_
          (let ((_g12642_ (length _g12643_)))
            (cond ((fx= _g12642_ 1)
                   (apply gx#root-context:::init!__0 _g12643_))
                  ((fx= _g12642_ 2)
                   (apply gx#root-context:::init!__opt-lambda12627 _g12643_))
                  (else (error "No clause matching arguments" _g12643_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12605
      (lambda (_self12607_ _super12608_)
        (let ((_super12616_
               (let ((_$e12610_ _super12608_))
                 (if _$e12610_
                     _$e12610_
                     (let ((_$e12613_ (gx#core-context-root__0)))
                       (if _$e12613_
                           _$e12613_
                           (let ((__obj12641
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj12641)
                               __obj12641))))))))
          (direct-struct-instance-init!
           _self12607_
           'top
           (make-hash-table-eq)
           _super12616_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self12621_)
          (let ((_super12623_ '#f))
            (gx#top-context:::init!__opt-lambda12605
             _self12621_
             _super12623_))))
      (define gx#top-context:::init!
        (lambda _g12645_
          (let ((_g12644_ (length _g12645_)))
            (cond ((fx= _g12644_ 1) (apply gx#top-context:::init!__0 _g12645_))
                  ((fx= _g12644_ 2)
                   (apply gx#top-context:::init!__opt-lambda12605 _g12645_))
                  (else (error "No clause matching arguments" _g12645_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12458
      (lambda (_self12460_ _bindings12461_)
        (for-each
         (lambda (_bind12463_)
           (let ((_bind1246412471_ _bind12463_))
             (let ((_E1246612475_
                    (lambda ()
                      (error '"No clause matching" _bind1246412471_))))
               (let ((_K1246712584_
                      (lambda (_rest12478_ _id12479_)
                        (gx#core-context-put!
                         _self12460_
                         _id12479_
                         (##structure
                          gx#syntax-binding::t
                          _id12479_
                          _id12479_
                          '#f
                          (let ((_rest1248012491_ _rest12478_))
                            (let ((_E1248212495_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1248012491_))))
                              (let ((_K1248312560_
                                     (lambda (_compiler12498_
                                              _expander12499_
                                              _key12500_)
                                       ((let ((_key1250112514_ _key12500_))
                                          (let ((_E1250712518_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1250112514_))))
                                            (let ((_try-match1250612526_
                                                   (lambda ()
                                                     (let ((_K1250812523_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1250112514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1250812523_)
                   (_E1250712518_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1250512534_
                                                     (lambda ()
                                                       (let ((_K1250912531_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1250112514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1250912531_)
                     (_try-match1250612526_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1250412542_
                                                       (lambda ()
                                                         (let ((_K1251012539_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1250112514_ 'define:)
                       (_K1251012539_)
                       (_try-match1250512534_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1250312550_
                                                         (lambda ()
                                                           (let ((_K1251112547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1250112514_ 'module:)
                         (_K1251112547_)
                         (_try-match1250412542_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1251212554_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1250112514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1251212554_)
                  (_try-match1250312550_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12499_
                                        _id12479_
                                        (let ((_$e12557_ _compiler12498_))
                                          (if _$e12557_
                                              _$e12557_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1248012491_)
                                    (let ((_hd1248412563_
                                           (##car _rest1248012491_))
                                          (_tl1248512565_
                                           (##cdr _rest1248012491_)))
                                      (let ((_key12568_ _hd1248412563_))
                                        (if (##pair? _tl1248512565_)
                                            (let ((_hd1248612570_
                                                   (##car _tl1248512565_))
                                                  (_tl1248712572_
                                                   (##cdr _tl1248512565_)))
                                              (let ((_expander12575_
                                                     _hd1248612570_))
                                                (if (##pair? _tl1248712572_)
                                                    (let ((_hd1248812577_
                                                           (##car _tl1248712572_))
                                                          (_tl1248912579_
                                                           (##cdr _tl1248712572_)))
                                                      (let ((_compiler12582_
                                                             _hd1248812577_))
                                                        (if (##null? _tl1248912579_)
                                                            (_K1248312560_
                                                             _compiler12582_
                                                             _expander12575_
                                                             _key12568_)
                                                            (_E1248212495_))))
                                                    (_E1248212495_))))
                                            (_E1248212495_))))
                                    (_E1248212495_))))))))))
                 (if (##pair? _bind1246412471_)
                     (let ((_hd1246812587_ (##car _bind1246412471_))
                           (_tl1246912589_ (##cdr _bind1246412471_)))
                       (let ((_id12592_ _hd1246812587_))
                         (let ((_rest12594_ _tl1246912589_))
                           (_K1246712584_ _rest12594_ _id12592_))))
                     (_E1246612475_))))))
         _bindings12461_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12599_)
          (let ((_bindings12601_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12458
             _self12599_
             _bindings12601_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g12647_
          (let ((_g12646_ (length _g12647_)))
            (cond ((fx= _g12646_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g12647_))
                  ((fx= _g12646_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12458
                          _g12647_))
                  (else (error "No clause matching arguments" _g12647_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12352
      (lambda (_self12354_ _bindings12355_)
        (for-each
         (lambda (_bind12357_)
           (let ((_bind1235812365_ _bind12357_))
             (let ((_E1236012369_
                    (lambda ()
                      (error '"No clause matching" _bind1235812365_))))
               (let ((_K1236112437_
                      (lambda (_rest12372_ _id12373_)
                        (gx#core-context-put!
                         _self12354_
                         _id12373_
                         (##structure
                          gx#syntax-binding::t
                          _id12373_
                          _id12373_
                          '#f
                          (let ((_rest1237412389_ _rest12372_))
                            (let ((_E1237812393_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1237412389_))))
                              (let ((_try-match1237712401_
                                     (lambda ()
                                       (let ((_K1237912398_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12373_))))
                                         (if (##null? _rest1237412389_)
                                             (_K1237912398_)
                                             (_E1237812393_))))))
                                (let ((_try-match1237612417_
                                       (lambda ()
                                         (let ((_K1238012407_
                                                (lambda (_proc12405_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12405_))))
                                           (if (##pair? _rest1237412389_)
                                               (let ((_hd1238112410_
                                                      (##car _rest1237412389_))
                                                     (_tl1238212412_
                                                      (##cdr _rest1237412389_)))
                                                 (let ((_proc12415_
                                                        _hd1238112410_))
                                                   (if (##null? _tl1238212412_)
                                                       (_K1238012407_
                                                        _proc12415_)
                                                       (_try-match1237712401_))))
                                               (_try-match1237712401_))))))
                                  (let ((_K1238312422_
                                         (lambda (_core-id12420_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12420_))))
                                    (if (##pair? _rest1237412389_)
                                        (let ((_hd1238412425_
                                               (##car _rest1237412389_))
                                              (_tl1238512427_
                                               (##cdr _rest1237412389_)))
                                          (if (##eq? _hd1238412425_ '=>)
                                              (if (##pair? _tl1238512427_)
                                                  (let ((_hd1238612430_
                                                         (##car _tl1238512427_))
                                                        (_tl1238712432_
                                                         (##cdr _tl1238512427_)))
                                                    (let ((_core-id12435_
                                                           _hd1238612430_))
                                                      (if (##null? _tl1238712432_)
                                                          (_K1238312422_
                                                           _core-id12435_)
                                                          (_try-match1237612417_))))
                                                  (_try-match1237612417_))
                                              (_try-match1237612417_)))
                                        (_try-match1237612417_))))))))))))
                 (if (##pair? _bind1235812365_)
                     (let ((_hd1236212440_ (##car _bind1235812365_))
                           (_tl1236312442_ (##cdr _bind1235812365_)))
                       (let ((_id12445_ _hd1236212440_))
                         (let ((_rest12447_ _tl1236312442_))
                           (_K1236112437_ _rest12447_ _id12445_))))
                     (_E1236012369_))))))
         _bindings12355_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12452_)
          (let ((_bindings12454_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12352
             _self12452_
             _bindings12454_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g12649_
          (let ((_g12648_ (length _g12649_)))
            (cond ((fx= _g12648_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g12649_))
                  ((fx= _g12648_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12352
                          _g12649_))
                  (else (error "No clause matching arguments" _g12649_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
