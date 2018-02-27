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
    (define gx#root-context:::init!__opt-lambda16556
      (lambda (_self16558_ _bind?16559_)
        (begin
          (if (##fx< '2 (##vector-length _self16558_))
              (begin
                (##vector-set! _self16558_ '1 'root)
                (##vector-set! _self16558_ '2 (make-hash-table-eq)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16558_))
          (if _bind?16559_
              (begin
                (call-method _self16558_ 'bind-core-syntax-expanders!)
                (call-method _self16558_ 'bind-core-macro-expanders!)
                (call-method _self16558_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self16564_)
          (let ((_bind?16566_ '#t))
            (gx#root-context:::init!__opt-lambda16556
             _self16564_
             _bind?16566_))))
      (define gx#root-context:::init!
        (lambda _g16572_
          (let ((_g16571_ (length _g16572_)))
            (cond ((fx= _g16571_ 1)
                   (apply gx#root-context:::init!__0 _g16572_))
                  ((fx= _g16571_ 2)
                   (apply gx#root-context:::init!__opt-lambda16556 _g16572_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g16572_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda16412
      (lambda (_self16414_ _super16415_)
        (let ((_super16423_
               (let ((_$e16417_ _super16415_))
                 (if _$e16417_
                     _$e16417_
                     (let ((_$e16420_ (gx#core-context-root__0)))
                       (if _$e16420_
                           _$e16420_
                           (let ((__obj16570
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj16570)
                               __obj16570))))))))
          (if (##fx< '5 (##vector-length _self16414_))
              (begin
                (##vector-set! _self16414_ '1 'top)
                (##vector-set! _self16414_ '2 (make-hash-table-eq))
                (##vector-set! _self16414_ '3 _super16423_)
                (##vector-set! _self16414_ '4 '#f)
                (##vector-set! _self16414_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16414_)))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self16428_)
          (let ((_super16430_ '#f))
            (gx#top-context:::init!__opt-lambda16412
             _self16428_
             _super16430_))))
      (define gx#top-context:::init!
        (lambda _g16574_
          (let ((_g16573_ (length _g16574_)))
            (cond ((fx= _g16573_ 1) (apply gx#top-context:::init!__0 _g16574_))
                  ((fx= _g16573_ 2)
                   (apply gx#top-context:::init!__opt-lambda16412 _g16574_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g16574_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda16143
      (lambda (_self16145_ _bindings16146_)
        (for-each
         (lambda (_bind16148_)
           (let* ((_bind1614916156_ _bind16148_)
                  (_E1615116160_
                   (lambda () (error '"No clause matching" _bind1614916156_)))
                  (_K1615216269_
                   (lambda (_rest16163_ _id16164_)
                     (gx#core-context-put!
                      _self16145_
                      _id16164_
                      (##structure
                       gx#syntax-binding::t
                       _id16164_
                       _id16164_
                       '#f
                       (let* ((_rest1616516176_ _rest16163_)
                              (_E1616716180_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1616516176_)))
                              (_K1616816245_
                               (lambda (_compiler16183_
                                        _expander16184_
                                        _key16185_)
                                 ((let* ((_key1618616199_ _key16185_)
                                         (_E1619216203_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1618616199_)))
                                         (_try-match1619116211_
                                          (lambda ()
                                            (let ((_K1619316208_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1618616199_
                                                         'expr:)
                                                  (_K1619316208_)
                                                  (_E1619216203_)))))
                                         (_try-match1619016219_
                                          (lambda ()
                                            (let ((_K1619416216_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1618616199_
                                                         'special:)
                                                  (_K1619416216_)
                                                  (_try-match1619116211_)))))
                                         (_try-match1618916227_
                                          (lambda ()
                                            (let ((_K1619516224_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1618616199_
                                                         'define:)
                                                  (_K1619516224_)
                                                  (_try-match1619016219_)))))
                                         (_try-match1618816235_
                                          (lambda ()
                                            (let ((_K1619616232_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1618616199_
                                                         'module:)
                                                  (_K1619616232_)
                                                  (_try-match1618916227_)))))
                                         (_K1619716239_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1618616199_ 'top:)
                                        (_K1619716239_)
                                        (_try-match1618816235_)))
                                  _expander16184_
                                  _id16164_
                                  (let ((_$e16242_ _compiler16183_))
                                    (if _$e16242_
                                        _$e16242_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1616516176_)
                             (let ((_hd1616916248_ (##car _rest1616516176_))
                                   (_tl1617016250_ (##cdr _rest1616516176_)))
                               (let ((_key16253_ _hd1616916248_))
                                 (if (##pair? _tl1617016250_)
                                     (let ((_hd1617116255_
                                            (##car _tl1617016250_))
                                           (_tl1617216257_
                                            (##cdr _tl1617016250_)))
                                       (let ((_expander16260_ _hd1617116255_))
                                         (if (##pair? _tl1617216257_)
                                             (let ((_hd1617316262_
                                                    (##car _tl1617216257_))
                                                   (_tl1617416264_
                                                    (##cdr _tl1617216257_)))
                                               (let ((_compiler16267_
                                                      _hd1617316262_))
                                                 (if (##null? _tl1617416264_)
                                                     (_K1616816245_
                                                      _compiler16267_
                                                      _expander16260_
                                                      _key16253_)
                                                     (_E1616716180_))))
                                             (_E1616716180_))))
                                     (_E1616716180_))))
                             (_E1616716180_))))))))
             (if (##pair? _bind1614916156_)
                 (let ((_hd1615316272_ (##car _bind1614916156_))
                       (_tl1615416274_ (##cdr _bind1614916156_)))
                   (let* ((_id16277_ _hd1615316272_)
                          (_rest16279_ _tl1615416274_))
                     (_K1615216269_ _rest16279_ _id16277_)))
                 (_E1615116160_))))
         _bindings16146_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self16284_)
          (let ((_bindings16286_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda16143
             _self16284_
             _bindings16286_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g16576_
          (let ((_g16575_ (length _g16576_)))
            (cond ((fx= _g16575_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g16576_))
                  ((fx= _g16575_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda16143
                          _g16576_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g16576_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda15915
      (lambda (_self15917_ _bindings15918_)
        (for-each
         (lambda (_bind15920_)
           (let* ((_bind1592115928_ _bind15920_)
                  (_E1592315932_
                   (lambda () (error '"No clause matching" _bind1592115928_)))
                  (_K1592416000_
                   (lambda (_rest15935_ _id15936_)
                     (gx#core-context-put!
                      _self15917_
                      _id15936_
                      (##structure
                       gx#syntax-binding::t
                       _id15936_
                       _id15936_
                       '#f
                       (let* ((_rest1593715952_ _rest15935_)
                              (_E1594115956_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1593715952_)))
                              (_try-match1594015964_
                               (lambda ()
                                 (let ((_K1594215961_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id15936_))))
                                   (if (##null? _rest1593715952_)
                                       (_K1594215961_)
                                       (_E1594115956_)))))
                              (_try-match1593915980_
                               (lambda ()
                                 (let ((_K1594315970_
                                        (lambda (_proc15968_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc15968_))))
                                   (if (##pair? _rest1593715952_)
                                       (let ((_hd1594415973_
                                              (##car _rest1593715952_))
                                             (_tl1594515975_
                                              (##cdr _rest1593715952_)))
                                         (let ((_proc15978_ _hd1594415973_))
                                           (if (##null? _tl1594515975_)
                                               (_K1594315970_ _proc15978_)
                                               (_try-match1594015964_))))
                                       (_try-match1594015964_)))))
                              (_K1594615985_
                               (lambda (_core-id15983_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id15983_))))
                         (if (##pair? _rest1593715952_)
                             (let ((_hd1594715988_ (##car _rest1593715952_))
                                   (_tl1594815990_ (##cdr _rest1593715952_)))
                               (if (##eq? _hd1594715988_ '=>)
                                   (if (##pair? _tl1594815990_)
                                       (let ((_hd1594915993_
                                              (##car _tl1594815990_))
                                             (_tl1595015995_
                                              (##cdr _tl1594815990_)))
                                         (let ((_core-id15998_ _hd1594915993_))
                                           (if (##null? _tl1595015995_)
                                               (_K1594615985_ _core-id15998_)
                                               (_try-match1593915980_))))
                                       (_try-match1593915980_))
                                   (_try-match1593915980_)))
                             (_try-match1593915980_))))))))
             (if (##pair? _bind1592115928_)
                 (let ((_hd1592516003_ (##car _bind1592115928_))
                       (_tl1592616005_ (##cdr _bind1592115928_)))
                   (let* ((_id16008_ _hd1592516003_)
                          (_rest16010_ _tl1592616005_))
                     (_K1592416000_ _rest16010_ _id16008_)))
                 (_E1592315932_))))
         _bindings15918_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self16015_)
          (let ((_bindings16017_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda15915
             _self16015_
             _bindings16017_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g16578_
          (let ((_g16577_ (length _g16578_)))
            (cond ((fx= _g16577_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g16578_))
                  ((fx= _g16577_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda15915
                          _g16578_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g16578_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self15708_)
      (letrec ((_linux-variant?15710_
                (lambda (_sys-type15762_)
                  (let* ((_g1576315771_
                          (string-split (symbol->string _sys-type15762_) '#\-))
                         (_E1576615775_
                          (lambda ()
                            (error '"No clause matching" _g1576315771_)))
                         (_else1576515779_ (lambda () '#f))
                         (_K1576715784_
                          (lambda (_rest15782_) (not (null? _rest15782_)))))
                    (if (##pair? _g1576315771_)
                        (let ((_hd1576815787_ (##car _g1576315771_))
                              (_tl1576915789_ (##cdr _g1576315771_)))
                          (if (equal? _hd1576815787_ '"linux")
                              (let ((_rest15792_ _tl1576915789_))
                                (_K1576715784_ _rest15792_))
                              (_else1576515779_)))
                        (_else1576515779_))))))
        (begin
          (gx#core-bind-feature!__opt-lambda10722 'gerbil '#f '0 _self15708_)
          (gx#core-bind-feature!__opt-lambda10722
           (gerbil-system)
           '#f
           '0
           _self15708_)
          (let* ((_g1571115723_ (system-type))
                 (_E1571415727_
                  (lambda () (error '"No clause matching" _g1571115723_)))
                 (_else1571315731_ (lambda () '#!void))
                 (_K1571515738_
                  (lambda (_sys-type15734_ _sys-vendor15735_ _sys-cpu15736_)
                    (begin
                      (gx#core-bind-feature!__opt-lambda10722
                       _sys-cpu15736_
                       '#f
                       '0
                       _self15708_)
                      (gx#core-bind-feature!__opt-lambda10722
                       _sys-type15734_
                       '#f
                       '0
                       _self15708_)
                      (if (_linux-variant?15710_ _sys-type15734_)
                          (gx#core-bind-feature!__opt-lambda10722
                           'linux
                           '#f
                           '0
                           _self15708_)
                          '#!void)))))
            (if (##pair? _g1571115723_)
                (let ((_hd1571615741_ (##car _g1571115723_))
                      (_tl1571715743_ (##cdr _g1571115723_)))
                  (let ((_sys-cpu15746_ _hd1571615741_))
                    (if (##pair? _tl1571715743_)
                        (let ((_hd1571815748_ (##car _tl1571715743_))
                              (_tl1571915750_ (##cdr _tl1571715743_)))
                          (let ((_sys-vendor15753_ _hd1571815748_))
                            (if (##pair? _tl1571915750_)
                                (let ((_hd1572015755_ (##car _tl1571915750_))
                                      (_tl1572115757_ (##cdr _tl1571915750_)))
                                  (let ((_sys-type15760_ _hd1572015755_))
                                    (if (##null? _tl1572115757_)
                                        (_K1571515738_
                                         _sys-type15760_
                                         _sys-vendor15753_
                                         _sys-cpu15746_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__opt-lambda10722
               'gerbil-smp
               '#f
               '0
               _self15708_)
              '#!void)))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
