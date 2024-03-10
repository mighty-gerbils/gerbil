(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1710064748)
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons '%#module
                                                      (cons 'top:
                                                            (cons gx#core-expand-module%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-compile-top-module% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#export
                                                            (cons 'top:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-expand-export%
                                (cons gx#core-compile-top-export% '()))))
              (cons (cons '%#provide
                          (cons 'module:
                                (cons gx#core-expand-provide%
                                      (cons gx#core-compile-top-provide%
                                            '()))))
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
                                  (cons gx#core-compile-top-define-alias%
                                        '()))))
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons '%#call
                                                      (cons 'expr:
                                                            (cons gx#core-expand-call%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-compile-top-call% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#if
                                                            (cons 'expr:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-expand-if%
                                (cons gx#core-compile-top-if% '()))))
              (cons (cons '%#ref
                          (cons 'expr:
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
                                                (cons '=>
                                                      (cons '%#module '())))
                                          (cons (cons 'export
                                                      (cons '=>
                                                            (cons '%#export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'provide
                                                            (cons '=>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#provide '())))
              (cons (cons 'declare (cons '=> (cons '%#declare '())))
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
                                        (cons gx#macro-expand-define-syntax
                                              '()))
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#begin-module '())))
              (cons (cons '_ '())
                    (cons (cons '... '())
                          (cons (cons 'else '())
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
      (lambda (_self92799_ _bind?92800_)
        (if (##fx< '2 (##structure-length _self92799_))
            (begin
              (##unchecked-structure-set!
               _self92799_
               'root
               '1
               (##structure-type _self92799_)
               '#f)
              (##unchecked-structure-set!
               _self92799_
               (make-hash-table-eq)
               '2
               (##structure-type _self92799_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92799_
                   '2
                   (##vector-length _self92799_)))
        (if _bind?92800_
            (begin
              (let ((__method92851
                     (method-ref _self92799_ 'bind-core-syntax-expanders!)))
                (if __method92851
                    (__method92851 _self92799_)
                    (error '"Missing method"
                           _self92799_
                           'bind-core-syntax-expanders!)))
              (let ((__method92852
                     (method-ref _self92799_ 'bind-core-macro-expanders!)))
                (if __method92852
                    (__method92852 _self92799_)
                    (error '"Missing method"
                           _self92799_
                           'bind-core-macro-expanders!)))
              (let ((__method92853
                     (method-ref _self92799_ 'bind-core-features!)))
                (if __method92853
                    (__method92853 _self92799_)
                    (error '"Missing method"
                           _self92799_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self92805_)
        (let ((_bind?92807_ '#t))
          (gx#root-context:::init!__% _self92805_ _bind?92807_))))
    (define gx#root-context:::init!
      (lambda _g92856_
        (let ((_g92855_ (##length _g92856_)))
          (cond ((##fx= _g92855_ 1)
                 (apply (lambda (_self92805_)
                          (gx#root-context:::init!__0 _self92805_))
                        _g92856_))
                ((##fx= _g92855_ 2)
                 (apply (lambda (_self92809_ _bind?92810_)
                          (gx#root-context:::init!__%
                           _self92809_
                           _bind?92810_))
                        _g92856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g92856_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass92811 __method-table92812)
        (let ((__bind-core-macro-expanders!92813
               (make-promise
                (lambda ()
                  (let ((__method92816
                         (symbolic-table-ref
                          __method-table92812
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method92816
                        __method92816
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!92814
               (make-promise
                (lambda ()
                  (let ((__method92817
                         (symbolic-table-ref
                          __method-table92812
                          'bind-core-features!
                          '#f)))
                    (if __method92817
                        __method92817
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!92815
               (make-promise
                (lambda ()
                  (let ((__method92818
                         (symbolic-table-ref
                          __method-table92812
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method92818
                        __method92818
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda9279792802_
                 (lambda (_self92799_ _bind?92800_)
                   (if (##fx< '2 (##structure-length _self92799_))
                       (begin
                         (##unchecked-structure-set!
                          _self92799_
                          'root
                          '1
                          (##structure-type _self92799_)
                          '#f)
                         (##unchecked-structure-set!
                          _self92799_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self92799_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self92799_
                              '2
                              (##vector-length _self92799_)))
                   (if _bind?92800_
                       (begin
                         ((force __bind-core-syntax-expanders!92815)
                          _self92799_)
                         ((force __bind-core-macro-expanders!92813)
                          _self92799_)
                         ((force __bind-core-features!92814) _self92799_))
                       '#!void))))
            (lambda _g92858_
              (let ((_g92857_ (##length _g92858_)))
                (cond ((##fx= _g92857_ 1)
                       (apply (lambda (_self92805_)
                                (let ((_bind?92807_ '#t))
                                  (_opt-lambda9279792802_
                                   _self92805_
                                   _bind?92807_)))
                              _g92858_))
                      ((##fx= _g92857_ 2)
                       (apply (lambda (_self92809_ _bind?92810_)
                                (_opt-lambda9279792802_
                                 _self92809_
                                 _bind?92810_))
                              _g92858_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g92858_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self92655_ _super92656_)
        (let ((_super92664_
               (let ((_$e92658_ _super92656_))
                 (if _$e92658_
                     _$e92658_
                     (let ((_$e92661_ (gx#core-context-root__0)))
                       (if _$e92661_
                           _$e92661_
                           (let ((__obj92854
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj92854)
                             __obj92854)))))))
          (if (##fx< '5 (##structure-length _self92655_))
              (begin
                (##unchecked-structure-set!
                 _self92655_
                 'top
                 '1
                 (##structure-type _self92655_)
                 '#f)
                (##unchecked-structure-set!
                 _self92655_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self92655_)
                 '#f)
                (##unchecked-structure-set!
                 _self92655_
                 _super92664_
                 '3
                 (##structure-type _self92655_)
                 '#f)
                (##unchecked-structure-set!
                 _self92655_
                 '#f
                 '4
                 (##structure-type _self92655_)
                 '#f)
                (##unchecked-structure-set!
                 _self92655_
                 '#f
                 '5
                 (##structure-type _self92655_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self92655_
                     '5
                     (##vector-length _self92655_))))))
    (define gx#top-context:::init!__0
      (lambda (_self92669_)
        (let ((_super92671_ '#f))
          (gx#top-context:::init!__% _self92669_ _super92671_))))
    (define gx#top-context:::init!
      (lambda _g92860_
        (let ((_g92859_ (##length _g92860_)))
          (cond ((##fx= _g92859_ 1)
                 (apply (lambda (_self92669_)
                          (gx#top-context:::init!__0 _self92669_))
                        _g92860_))
                ((##fx= _g92859_ 2)
                 (apply (lambda (_self92673_ _super92674_)
                          (gx#top-context:::init!__% _self92673_ _super92674_))
                        _g92860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g92860_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self92386_ _bindings92387_)
        (for-each
         (lambda (_bind92389_)
           (let* ((_bind9239092397_ _bind92389_)
                  (_E9239292401_
                   (lambda () (error '"No clause matching" _bind9239092397_)))
                  (_K9239392510_
                   (lambda (_rest92404_ _id92405_)
                     (gx#core-context-put!
                      _self92386_
                      _id92405_
                      (##structure
                       gx#syntax-binding::t
                       _id92405_
                       _id92405_
                       '#f
                       (let* ((_rest9240692417_ _rest92404_)
                              (_E9240892421_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9240692417_)))
                              (_K9240992486_
                               (lambda (_compiler92424_
                                        _expander92425_
                                        _key92426_)
                                 ((let* ((_key9242792440_ _key92426_)
                                         (_E9243392444_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9242792440_))))
                                    (let ((_K9243892480_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9243792473_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9243692465_
                                           (lambda () gx#make-definition-form))
                                          (_K9243592457_
                                           (lambda () gx#make-special-form))
                                          (_K9243492449_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9243292452_
                                              (lambda ()
                                                (if (##eq? _key9242792440_
                                                           'expr:)
                                                    (_K9243492449_)
                                                    (_E9243392444_))))
                                             (_try-match9243192460_
                                              (lambda ()
                                                (if (##eq? _key9242792440_
                                                           'special:)
                                                    (_K9243592457_)
                                                    (_try-match9243292452_))))
                                             (_try-match9243092468_
                                              (lambda ()
                                                (if (##eq? _key9242792440_
                                                           'define:)
                                                    (_K9243692465_)
                                                    (_try-match9243192460_))))
                                             (_try-match9242992476_
                                              (lambda ()
                                                (if (##eq? _key9242792440_
                                                           'module:)
                                                    (_K9243792473_)
                                                    (_try-match9243092468_)))))
                                        (if (##eq? _key9242792440_ 'top:)
                                            (_K9243892480_)
                                            (_try-match9242992476_)))))
                                  _expander92425_
                                  _id92405_
                                  (let ((_$e92483_ _compiler92424_))
                                    (if _$e92483_
                                        _$e92483_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9240692417_)
                             (let ((_hd9241092489_ (##car _rest9240692417_))
                                   (_tl9241192491_ (##cdr _rest9240692417_)))
                               (let ((_key92494_ _hd9241092489_))
                                 (if (##pair? _tl9241192491_)
                                     (let ((_hd9241292496_
                                            (##car _tl9241192491_))
                                           (_tl9241392498_
                                            (##cdr _tl9241192491_)))
                                       (let ((_expander92501_ _hd9241292496_))
                                         (if (##pair? _tl9241392498_)
                                             (let ((_hd9241492503_
                                                    (##car _tl9241392498_))
                                                   (_tl9241592505_
                                                    (##cdr _tl9241392498_)))
                                               (let ((_compiler92508_
                                                      _hd9241492503_))
                                                 (if (##null? _tl9241592505_)
                                                     (_K9240992486_
                                                      _compiler92508_
                                                      _expander92501_
                                                      _key92494_)
                                                     (_E9240892421_))))
                                             (_E9240892421_))))
                                     (_E9240892421_))))
                             (_E9240892421_))))))))
             (if (##pair? _bind9239092397_)
                 (let ((_hd9239492513_ (##car _bind9239092397_))
                       (_tl9239592515_ (##cdr _bind9239092397_)))
                   (let* ((_id92518_ _hd9239492513_)
                          (_rest92520_ _tl9239592515_))
                     (_K9239392510_ _rest92520_ _id92518_)))
                 (_E9239292401_))))
         _bindings92387_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self92525_)
        (let ((_bindings92527_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self92525_
           _bindings92527_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g92862_
        (let ((_g92861_ (##length _g92862_)))
          (cond ((##fx= _g92861_ 1)
                 (apply (lambda (_self92525_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self92525_))
                        _g92862_))
                ((##fx= _g92861_ 2)
                 (apply (lambda (_self92529_ _bindings92530_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self92529_
                           _bindings92530_))
                        _g92862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g92862_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self92158_ _bindings92159_)
        (for-each
         (lambda (_bind92161_)
           (let* ((_bind9216292169_ _bind92161_)
                  (_E9216492173_
                   (lambda () (error '"No clause matching" _bind9216292169_)))
                  (_K9216592241_
                   (lambda (_rest92176_ _id92177_)
                     (gx#core-context-put!
                      _self92158_
                      _id92177_
                      (##structure
                       gx#syntax-binding::t
                       _id92177_
                       _id92177_
                       '#f
                       (let* ((_rest9217892193_ _rest92176_)
                              (_E9218292197_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9217892193_))))
                         (let ((_K9218792226_
                                (lambda (_core-id92224_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id92224_)))
                               (_K9218492211_
                                (lambda (_proc92209_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc92209_)))
                               (_K9218392202_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id92177_))))
                           (let ((_try-match9218192205_
                                  (lambda ()
                                    (if (##null? _rest9217892193_)
                                        (_K9218392202_)
                                        (_E9218292197_)))))
                             (if (##pair? _rest9217892193_)
                                 (let ((_tl9218992231_
                                        (##cdr _rest9217892193_))
                                       (_hd9218892229_
                                        (##car _rest9217892193_)))
                                   (if (##eq? _hd9218892229_ '=>)
                                       (if (##pair? _tl9218992231_)
                                           (let ((_tl9219192236_
                                                  (##cdr _tl9218992231_))
                                                 (_hd9219092234_
                                                  (##car _tl9218992231_)))
                                             (if (##null? _tl9219192236_)
                                                 (let ((_core-id92239_
                                                        _hd9219092234_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id92239_))
                                                 (_E9218292197_)))
                                           (if (##null? _tl9218992231_)
                                               (let ((_proc92219_
                                                      _hd9218892229_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc92219_))
                                               (_E9218292197_)))
                                       (if (##null? _tl9218992231_)
                                           (let ((_proc92219_ _hd9218892229_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc92219_))
                                           (_E9218292197_))))
                                 (_try-match9218192205_))))))))))
             (if (##pair? _bind9216292169_)
                 (let ((_hd9216692244_ (##car _bind9216292169_))
                       (_tl9216792246_ (##cdr _bind9216292169_)))
                   (let* ((_id92249_ _hd9216692244_)
                          (_rest92251_ _tl9216792246_))
                     (_K9216592241_ _rest92251_ _id92249_)))
                 (_E9216492173_))))
         _bindings92159_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self92256_)
        (let ((_bindings92258_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self92256_
           _bindings92258_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g92864_
        (let ((_g92863_ (##length _g92864_)))
          (cond ((##fx= _g92863_ 1)
                 (apply (lambda (_self92256_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self92256_))
                        _g92864_))
                ((##fx= _g92863_ 2)
                 (apply (lambda (_self92260_ _bindings92261_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self92260_
                           _bindings92261_))
                        _g92864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g92864_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self91902_)
        (letrec ((_linux-variant?91904_
                  (lambda (_sys-type92003_)
                    (let* ((_g9200492012_
                            (string-split
                             (symbol->string _sys-type92003_)
                             '#\-))
                           (_else9200692020_ (lambda () '#f))
                           (_K9200892025_
                            (lambda (_rest92023_) (not (null? _rest92023_)))))
                      (if (##pair? _g9200492012_)
                          (let ((_hd9200992028_ (##car _g9200492012_))
                                (_tl9201092030_ (##cdr _g9200492012_)))
                            (if (equal? _hd9200992028_ '"linux")
                                (let ((_rest92033_ _tl9201092030_))
                                  (_K9200892025_ _rest92033_))
                                (_else9200692020_)))
                          (_else9200692020_)))))
                 (_bsd-variant91905_
                  (lambda (_sys-type91962_)
                    (let ((_sys-type-str91964_
                           (symbol->string _sys-type91962_)))
                      (let _lp91966_ ((_rest91968_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9196991977_ _rest91968_)
                               (_else9197191985_ (lambda () '#f))
                               (_K9197391991_
                                (lambda (_rest91988_ _sys91989_)
                                  (if (string-prefix?
                                       _sys91989_
                                       _sys-type-str91964_)
                                      _sys91989_
                                      (_lp91966_ _rest91988_)))))
                          (if (##pair? _rest9196991977_)
                              (let ((_hd9197491994_ (##car _rest9196991977_))
                                    (_tl9197591996_ (##cdr _rest9196991977_)))
                                (let* ((_sys91999_ _hd9197491994_)
                                       (_rest92001_ _tl9197591996_))
                                  (_K9197391991_ _rest92001_ _sys91999_)))
                              (_else9197191985_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self91902_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self91902_)
          (let* ((_g9190691918_ (system-type))
                 (_else9190891926_ (lambda () '#!void))
                 (_K9191091938_
                  (lambda (_sys-type91929_ _sys-vendor91930_ _sys-cpu91931_)
                    (gx#core-bind-feature!__%
                     _sys-cpu91931_
                     '#f
                     '0
                     _self91902_)
                    (gx#core-bind-feature!__%
                     _sys-type91929_
                     '#f
                     '0
                     _self91902_)
                    (if (_linux-variant?91904_ _sys-type91929_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self91902_)
                        (let ((_$e91933_ (_bsd-variant91905_ _sys-type91929_)))
                          (if _$e91933_
                              ((lambda (_sys-prefix91936_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self91902_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix91936_)
                                  '#f
                                  '0
                                  _self91902_))
                               _$e91933_)
                              '#!void))))))
            (if (##pair? _g9190691918_)
                (let ((_hd9191191941_ (##car _g9190691918_))
                      (_tl9191291943_ (##cdr _g9190691918_)))
                  (let ((_sys-cpu91946_ _hd9191191941_))
                    (if (##pair? _tl9191291943_)
                        (let ((_hd9191391948_ (##car _tl9191291943_))
                              (_tl9191491950_ (##cdr _tl9191291943_)))
                          (let ((_sys-vendor91953_ _hd9191391948_))
                            (if (##pair? _tl9191491950_)
                                (let ((_hd9191591955_ (##car _tl9191491950_))
                                      (_tl9191691957_ (##cdr _tl9191491950_)))
                                  (let ((_sys-type91960_ _hd9191591955_))
                                    (if (##null? _tl9191691957_)
                                        (_K9191091938_
                                         _sys-type91960_
                                         _sys-vendor91953_
                                         _sys-cpu91946_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self91902_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
