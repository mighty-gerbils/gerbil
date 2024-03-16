(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1710617602)
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
      (lambda (_self94249_ _bind?94250_)
        (if (##fx< '2 (##structure-length _self94249_))
            (begin
              (##unchecked-structure-set!
               _self94249_
               'root
               '1
               (##structure-type _self94249_)
               '#f)
              (##unchecked-structure-set!
               _self94249_
               (make-hash-table-eq)
               '2
               (##structure-type _self94249_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94249_
                   '2
                   (##vector-length _self94249_)))
        (if _bind?94250_
            (begin
              (let ((__method94301
                     (method-ref _self94249_ 'bind-core-syntax-expanders!)))
                (if __method94301
                    (__method94301 _self94249_)
                    (error '"Missing method"
                           _self94249_
                           'bind-core-syntax-expanders!)))
              (let ((__method94302
                     (method-ref _self94249_ 'bind-core-macro-expanders!)))
                (if __method94302
                    (__method94302 _self94249_)
                    (error '"Missing method"
                           _self94249_
                           'bind-core-macro-expanders!)))
              (let ((__method94303
                     (method-ref _self94249_ 'bind-core-features!)))
                (if __method94303
                    (__method94303 _self94249_)
                    (error '"Missing method"
                           _self94249_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self94255_)
        (let ((_bind?94257_ '#t))
          (gx#root-context:::init!__% _self94255_ _bind?94257_))))
    (define gx#root-context:::init!
      (lambda _g94306_
        (let ((_g94305_ (##length _g94306_)))
          (cond ((##fx= _g94305_ 1)
                 (apply (lambda (_self94255_)
                          (gx#root-context:::init!__0 _self94255_))
                        _g94306_))
                ((##fx= _g94305_ 2)
                 (apply (lambda (_self94259_ _bind?94260_)
                          (gx#root-context:::init!__%
                           _self94259_
                           _bind?94260_))
                        _g94306_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g94306_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass94261 __method-table94262)
        (let ((__bind-core-features!94263
               (make-promise
                (lambda ()
                  (let ((__method94266
                         (symbolic-table-ref
                          __method-table94262
                          'bind-core-features!
                          '#f)))
                    (if __method94266
                        __method94266
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!94264
               (make-promise
                (lambda ()
                  (let ((__method94267
                         (symbolic-table-ref
                          __method-table94262
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method94267
                        __method94267
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!94265
               (make-promise
                (lambda ()
                  (let ((__method94268
                         (symbolic-table-ref
                          __method-table94262
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method94268
                        __method94268
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda9424794252_
                 (lambda (_self94249_ _bind?94250_)
                   (if (##fx< '2 (##structure-length _self94249_))
                       (begin
                         (##unchecked-structure-set!
                          _self94249_
                          'root
                          '1
                          (##structure-type _self94249_)
                          '#f)
                         (##unchecked-structure-set!
                          _self94249_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self94249_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self94249_
                              '2
                              (##vector-length _self94249_)))
                   (if _bind?94250_
                       (begin
                         ((force __bind-core-syntax-expanders!94265)
                          _self94249_)
                         ((force __bind-core-macro-expanders!94264)
                          _self94249_)
                         ((force __bind-core-features!94263) _self94249_))
                       '#!void))))
            (lambda _g94308_
              (let ((_g94307_ (##length _g94308_)))
                (cond ((##fx= _g94307_ 1)
                       (apply (lambda (_self94255_)
                                (let ((_bind?94257_ '#t))
                                  (_opt-lambda9424794252_
                                   _self94255_
                                   _bind?94257_)))
                              _g94308_))
                      ((##fx= _g94307_ 2)
                       (apply (lambda (_self94259_ _bind?94260_)
                                (_opt-lambda9424794252_
                                 _self94259_
                                 _bind?94260_))
                              _g94308_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g94308_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self94105_ _super94106_)
        (let ((_super94114_
               (let ((_$e94108_ _super94106_))
                 (if _$e94108_
                     _$e94108_
                     (let ((_$e94111_ (gx#core-context-root__0)))
                       (if _$e94111_
                           _$e94111_
                           (let ((__obj94304
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj94304)
                             __obj94304)))))))
          (if (##fx< '5 (##structure-length _self94105_))
              (begin
                (##unchecked-structure-set!
                 _self94105_
                 'top
                 '1
                 (##structure-type _self94105_)
                 '#f)
                (##unchecked-structure-set!
                 _self94105_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self94105_)
                 '#f)
                (##unchecked-structure-set!
                 _self94105_
                 _super94114_
                 '3
                 (##structure-type _self94105_)
                 '#f)
                (##unchecked-structure-set!
                 _self94105_
                 '#f
                 '4
                 (##structure-type _self94105_)
                 '#f)
                (##unchecked-structure-set!
                 _self94105_
                 '#f
                 '5
                 (##structure-type _self94105_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self94105_
                     '5
                     (##vector-length _self94105_))))))
    (define gx#top-context:::init!__0
      (lambda (_self94119_)
        (let ((_super94121_ '#f))
          (gx#top-context:::init!__% _self94119_ _super94121_))))
    (define gx#top-context:::init!
      (lambda _g94310_
        (let ((_g94309_ (##length _g94310_)))
          (cond ((##fx= _g94309_ 1)
                 (apply (lambda (_self94119_)
                          (gx#top-context:::init!__0 _self94119_))
                        _g94310_))
                ((##fx= _g94309_ 2)
                 (apply (lambda (_self94123_ _super94124_)
                          (gx#top-context:::init!__% _self94123_ _super94124_))
                        _g94310_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g94310_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self93836_ _bindings93837_)
        (for-each
         (lambda (_bind93839_)
           (let* ((_bind9384093847_ _bind93839_)
                  (_E9384293851_
                   (lambda () (error '"No clause matching" _bind9384093847_)))
                  (_K9384393960_
                   (lambda (_rest93854_ _id93855_)
                     (gx#core-context-put!
                      _self93836_
                      _id93855_
                      (##structure
                       gx#syntax-binding::t
                       _id93855_
                       _id93855_
                       '#f
                       (let* ((_rest9385693867_ _rest93854_)
                              (_E9385893871_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9385693867_)))
                              (_K9385993936_
                               (lambda (_compiler93874_
                                        _expander93875_
                                        _key93876_)
                                 ((let* ((_key9387793890_ _key93876_)
                                         (_E9388393894_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9387793890_))))
                                    (let ((_K9388893930_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9388793923_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9388693915_
                                           (lambda () gx#make-definition-form))
                                          (_K9388593907_
                                           (lambda () gx#make-special-form))
                                          (_K9388493899_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9388293902_
                                              (lambda ()
                                                (if (##eq? _key9387793890_
                                                           'expr:)
                                                    (_K9388493899_)
                                                    (_E9388393894_))))
                                             (_try-match9388193910_
                                              (lambda ()
                                                (if (##eq? _key9387793890_
                                                           'special:)
                                                    (_K9388593907_)
                                                    (_try-match9388293902_))))
                                             (_try-match9388093918_
                                              (lambda ()
                                                (if (##eq? _key9387793890_
                                                           'define:)
                                                    (_K9388693915_)
                                                    (_try-match9388193910_))))
                                             (_try-match9387993926_
                                              (lambda ()
                                                (if (##eq? _key9387793890_
                                                           'module:)
                                                    (_K9388793923_)
                                                    (_try-match9388093918_)))))
                                        (if (##eq? _key9387793890_ 'top:)
                                            (_K9388893930_)
                                            (_try-match9387993926_)))))
                                  _expander93875_
                                  _id93855_
                                  (let ((_$e93933_ _compiler93874_))
                                    (if _$e93933_
                                        _$e93933_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9385693867_)
                             (let ((_hd9386093939_ (##car _rest9385693867_))
                                   (_tl9386193941_ (##cdr _rest9385693867_)))
                               (let ((_key93944_ _hd9386093939_))
                                 (if (##pair? _tl9386193941_)
                                     (let ((_hd9386293946_
                                            (##car _tl9386193941_))
                                           (_tl9386393948_
                                            (##cdr _tl9386193941_)))
                                       (let ((_expander93951_ _hd9386293946_))
                                         (if (##pair? _tl9386393948_)
                                             (let ((_hd9386493953_
                                                    (##car _tl9386393948_))
                                                   (_tl9386593955_
                                                    (##cdr _tl9386393948_)))
                                               (let ((_compiler93958_
                                                      _hd9386493953_))
                                                 (if (##null? _tl9386593955_)
                                                     (_K9385993936_
                                                      _compiler93958_
                                                      _expander93951_
                                                      _key93944_)
                                                     (_E9385893871_))))
                                             (_E9385893871_))))
                                     (_E9385893871_))))
                             (_E9385893871_))))))))
             (if (##pair? _bind9384093847_)
                 (let ((_hd9384493963_ (##car _bind9384093847_))
                       (_tl9384593965_ (##cdr _bind9384093847_)))
                   (let* ((_id93968_ _hd9384493963_)
                          (_rest93970_ _tl9384593965_))
                     (_K9384393960_ _rest93970_ _id93968_)))
                 (_E9384293851_))))
         _bindings93837_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self93975_)
        (let ((_bindings93977_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self93975_
           _bindings93977_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g94312_
        (let ((_g94311_ (##length _g94312_)))
          (cond ((##fx= _g94311_ 1)
                 (apply (lambda (_self93975_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self93975_))
                        _g94312_))
                ((##fx= _g94311_ 2)
                 (apply (lambda (_self93979_ _bindings93980_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self93979_
                           _bindings93980_))
                        _g94312_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g94312_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self93608_ _bindings93609_)
        (for-each
         (lambda (_bind93611_)
           (let* ((_bind9361293619_ _bind93611_)
                  (_E9361493623_
                   (lambda () (error '"No clause matching" _bind9361293619_)))
                  (_K9361593691_
                   (lambda (_rest93626_ _id93627_)
                     (gx#core-context-put!
                      _self93608_
                      _id93627_
                      (##structure
                       gx#syntax-binding::t
                       _id93627_
                       _id93627_
                       '#f
                       (let* ((_rest9362893643_ _rest93626_)
                              (_E9363293647_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9362893643_))))
                         (let ((_K9363793676_
                                (lambda (_core-id93674_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id93674_)))
                               (_K9363493661_
                                (lambda (_proc93659_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc93659_)))
                               (_K9363393652_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id93627_))))
                           (let ((_try-match9363193655_
                                  (lambda ()
                                    (if (##null? _rest9362893643_)
                                        (_K9363393652_)
                                        (_E9363293647_)))))
                             (if (##pair? _rest9362893643_)
                                 (let ((_tl9363993681_
                                        (##cdr _rest9362893643_))
                                       (_hd9363893679_
                                        (##car _rest9362893643_)))
                                   (if (##eq? _hd9363893679_ '=>)
                                       (if (##pair? _tl9363993681_)
                                           (let ((_tl9364193686_
                                                  (##cdr _tl9363993681_))
                                                 (_hd9364093684_
                                                  (##car _tl9363993681_)))
                                             (if (##null? _tl9364193686_)
                                                 (let ((_core-id93689_
                                                        _hd9364093684_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id93689_))
                                                 (_E9363293647_)))
                                           (if (##null? _tl9363993681_)
                                               (let ((_proc93669_
                                                      _hd9363893679_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc93669_))
                                               (_E9363293647_)))
                                       (if (##null? _tl9363993681_)
                                           (let ((_proc93669_ _hd9363893679_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc93669_))
                                           (_E9363293647_))))
                                 (_try-match9363193655_))))))))))
             (if (##pair? _bind9361293619_)
                 (let ((_hd9361693694_ (##car _bind9361293619_))
                       (_tl9361793696_ (##cdr _bind9361293619_)))
                   (let* ((_id93699_ _hd9361693694_)
                          (_rest93701_ _tl9361793696_))
                     (_K9361593691_ _rest93701_ _id93699_)))
                 (_E9361493623_))))
         _bindings93609_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self93706_)
        (let ((_bindings93708_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self93706_
           _bindings93708_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g94314_
        (let ((_g94313_ (##length _g94314_)))
          (cond ((##fx= _g94313_ 1)
                 (apply (lambda (_self93706_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self93706_))
                        _g94314_))
                ((##fx= _g94313_ 2)
                 (apply (lambda (_self93710_ _bindings93711_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self93710_
                           _bindings93711_))
                        _g94314_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g94314_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self93352_)
        (letrec ((_linux-variant?93354_
                  (lambda (_sys-type93453_)
                    (let* ((_g9345493462_
                            (string-split
                             (symbol->string _sys-type93453_)
                             '#\-))
                           (_else9345693470_ (lambda () '#f))
                           (_K9345893475_
                            (lambda (_rest93473_) (not (null? _rest93473_)))))
                      (if (##pair? _g9345493462_)
                          (let ((_hd9345993478_ (##car _g9345493462_))
                                (_tl9346093480_ (##cdr _g9345493462_)))
                            (if (equal? _hd9345993478_ '"linux")
                                (let ((_rest93483_ _tl9346093480_))
                                  (_K9345893475_ _rest93483_))
                                (_else9345693470_)))
                          (_else9345693470_)))))
                 (_bsd-variant93355_
                  (lambda (_sys-type93412_)
                    (let ((_sys-type-str93414_
                           (symbol->string _sys-type93412_)))
                      (let _lp93416_ ((_rest93418_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9341993427_ _rest93418_)
                               (_else9342193435_ (lambda () '#f))
                               (_K9342393441_
                                (lambda (_rest93438_ _sys93439_)
                                  (if (string-prefix?
                                       _sys93439_
                                       _sys-type-str93414_)
                                      _sys93439_
                                      (_lp93416_ _rest93438_)))))
                          (if (##pair? _rest9341993427_)
                              (let ((_hd9342493444_ (##car _rest9341993427_))
                                    (_tl9342593446_ (##cdr _rest9341993427_)))
                                (let* ((_sys93449_ _hd9342493444_)
                                       (_rest93451_ _tl9342593446_))
                                  (_K9342393441_ _rest93451_ _sys93449_)))
                              (_else9342193435_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self93352_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self93352_)
          (let* ((_g9335693368_ (system-type))
                 (_else9335893376_ (lambda () '#!void))
                 (_K9336093388_
                  (lambda (_sys-type93379_ _sys-vendor93380_ _sys-cpu93381_)
                    (gx#core-bind-feature!__%
                     _sys-cpu93381_
                     '#f
                     '0
                     _self93352_)
                    (gx#core-bind-feature!__%
                     _sys-type93379_
                     '#f
                     '0
                     _self93352_)
                    (if (_linux-variant?93354_ _sys-type93379_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self93352_)
                        (let ((_$e93383_ (_bsd-variant93355_ _sys-type93379_)))
                          (if _$e93383_
                              ((lambda (_sys-prefix93386_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self93352_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix93386_)
                                  '#f
                                  '0
                                  _self93352_))
                               _$e93383_)
                              '#!void))))))
            (if (##pair? _g9335693368_)
                (let ((_hd9336193391_ (##car _g9335693368_))
                      (_tl9336293393_ (##cdr _g9335693368_)))
                  (let ((_sys-cpu93396_ _hd9336193391_))
                    (if (##pair? _tl9336293393_)
                        (let ((_hd9336393398_ (##car _tl9336293393_))
                              (_tl9336493400_ (##cdr _tl9336293393_)))
                          (let ((_sys-vendor93403_ _hd9336393398_))
                            (if (##pair? _tl9336493400_)
                                (let ((_hd9336593405_ (##car _tl9336493400_))
                                      (_tl9336693407_ (##cdr _tl9336493400_)))
                                  (let ((_sys-type93410_ _hd9336593405_))
                                    (if (##null? _tl9336693407_)
                                        (_K9336093388_
                                         _sys-type93410_
                                         _sys-vendor93403_
                                         _sys-cpu93396_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self93352_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
