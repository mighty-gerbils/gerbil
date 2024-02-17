(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708168070)
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
      (lambda (_self182323_ _bind?182324_)
        (if (##fx< '2 (##structure-length _self182323_))
            (begin
              (##unchecked-structure-set!
               _self182323_
               'root
               '1
               (##structure-type _self182323_)
               '#f)
              (##unchecked-structure-set!
               _self182323_
               (make-table 'test: eq?)
               '2
               (##structure-type _self182323_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self182323_
                   '2
                   (##vector-length _self182323_)))
        (if _bind?182324_
            (begin
              (let ((__method186942
                     (method-ref _self182323_ 'bind-core-syntax-expanders!)))
                (if __method186942
                    (__method186942 _self182323_)
                    (error '"Missing method"
                           _self182323_
                           'bind-core-syntax-expanders!)))
              (let ((__method186943
                     (method-ref _self182323_ 'bind-core-macro-expanders!)))
                (if __method186943
                    (__method186943 _self182323_)
                    (error '"Missing method"
                           _self182323_
                           'bind-core-macro-expanders!)))
              (let ((__method186944
                     (method-ref _self182323_ 'bind-core-features!)))
                (if __method186944
                    (__method186944 _self182323_)
                    (error '"Missing method"
                           _self182323_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self182329_)
        (let ((_bind?182331_ '#t))
          (gx#root-context:::init!__% _self182329_ _bind?182331_))))
    (define gx#root-context:::init!
      (lambda _g186947_
        (let ((_g186946_ (##length _g186947_)))
          (cond ((##fx= _g186946_ 1)
                 (apply (lambda (_self182329_)
                          (gx#root-context:::init!__0 _self182329_))
                        _g186947_))
                ((##fx= _g186946_ 2)
                 (apply (lambda (_self182333_ _bind?182334_)
                          (gx#root-context:::init!__%
                           _self182333_
                           _bind?182334_))
                        _g186947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g186947_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t186903)
        (let ((__bind-core-features!186904
               (make-promise
                (lambda ()
                  (let ((__tmp186907
                         (direct-method-ref
                          __t186903
                          '#f
                          'bind-core-features!)))
                    (if __tmp186907
                        __tmp186907
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!186905
               (make-promise
                (lambda ()
                  (let ((__tmp186908
                         (direct-method-ref
                          __t186903
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp186908
                        __tmp186908
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!186906
               (make-promise
                (lambda ()
                  (let ((__tmp186909
                         (direct-method-ref
                          __t186903
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp186909
                        __tmp186909
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda182321182326_
                 (lambda (_self182323_ _bind?182324_)
                   (if (##fx< '2 (##structure-length _self182323_))
                       (begin
                         (##unchecked-structure-set!
                          _self182323_
                          'root
                          '1
                          (##structure-type _self182323_)
                          '#f)
                         (##unchecked-structure-set!
                          _self182323_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self182323_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self182323_
                              '2
                              (##vector-length _self182323_)))
                   (if _bind?182324_
                       (begin
                         ((force __bind-core-syntax-expanders!186906)
                          _self182323_)
                         ((force __bind-core-macro-expanders!186905)
                          _self182323_)
                         ((force __bind-core-features!186904) _self182323_))
                       '#!void))))
            (lambda _g186949_
              (let ((_g186948_ (##length _g186949_)))
                (cond ((##fx= _g186948_ 1)
                       (apply (lambda (_self182329_)
                                (let ((_bind?182331_ '#t))
                                  (_opt-lambda182321182326_
                                   _self182329_
                                   _bind?182331_)))
                              _g186949_))
                      ((##fx= _g186948_ 2)
                       (apply (lambda (_self182333_ _bind?182334_)
                                (_opt-lambda182321182326_
                                 _self182333_
                                 _bind?182334_))
                              _g186949_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g186949_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self182179_ _super182180_)
        (let ((_super182188_
               (let ((_$e182182_ _super182180_))
                 (if _$e182182_
                     _$e182182_
                     (let ((_$e182185_ (gx#core-context-root__0)))
                       (if _$e182185_
                           _$e182185_
                           (let ((__obj186945
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj186945)
                             __obj186945)))))))
          (if (##fx< '5 (##structure-length _self182179_))
              (begin
                (##unchecked-structure-set!
                 _self182179_
                 'top
                 '1
                 (##structure-type _self182179_)
                 '#f)
                (##unchecked-structure-set!
                 _self182179_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self182179_)
                 '#f)
                (##unchecked-structure-set!
                 _self182179_
                 _super182188_
                 '3
                 (##structure-type _self182179_)
                 '#f)
                (##unchecked-structure-set!
                 _self182179_
                 '#f
                 '4
                 (##structure-type _self182179_)
                 '#f)
                (##unchecked-structure-set!
                 _self182179_
                 '#f
                 '5
                 (##structure-type _self182179_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self182179_
                     '5
                     (##vector-length _self182179_))))))
    (define gx#top-context:::init!__0
      (lambda (_self182193_)
        (let ((_super182195_ '#f))
          (gx#top-context:::init!__% _self182193_ _super182195_))))
    (define gx#top-context:::init!
      (lambda _g186951_
        (let ((_g186950_ (##length _g186951_)))
          (cond ((##fx= _g186950_ 1)
                 (apply (lambda (_self182193_)
                          (gx#top-context:::init!__0 _self182193_))
                        _g186951_))
                ((##fx= _g186950_ 2)
                 (apply (lambda (_self182197_ _super182198_)
                          (gx#top-context:::init!__%
                           _self182197_
                           _super182198_))
                        _g186951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g186951_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self181910_ _bindings181911_)
        (for-each
         (lambda (_bind181913_)
           (let* ((_bind181914181921_ _bind181913_)
                  (_E181916181925_
                   (lambda ()
                     (error '"No clause matching" _bind181914181921_)))
                  (_K181917182034_
                   (lambda (_rest181928_ _id181929_)
                     (gx#core-context-put!
                      _self181910_
                      _id181929_
                      (##structure
                       gx#syntax-binding::t
                       _id181929_
                       _id181929_
                       '#f
                       (let* ((_rest181930181941_ _rest181928_)
                              (_E181932181945_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest181930181941_)))
                              (_K181933182010_
                               (lambda (_compiler181948_
                                        _expander181949_
                                        _key181950_)
                                 ((let* ((_key181951181964_ _key181950_)
                                         (_E181957181968_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key181951181964_))))
                                    (let ((_K181962182004_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K181961181997_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K181960181989_
                                           (lambda () gx#make-definition-form))
                                          (_K181959181981_
                                           (lambda () gx#make-special-form))
                                          (_K181958181973_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match181956181976_
                                              (lambda ()
                                                (if (##eq? _key181951181964_
                                                           'expr:)
                                                    (_K181958181973_)
                                                    (_E181957181968_))))
                                             (_try-match181955181984_
                                              (lambda ()
                                                (if (##eq? _key181951181964_
                                                           'special:)
                                                    (_K181959181981_)
                                                    (_try-match181956181976_))))
                                             (_try-match181954181992_
                                              (lambda ()
                                                (if (##eq? _key181951181964_
                                                           'define:)
                                                    (_K181960181989_)
                                                    (_try-match181955181984_))))
                                             (_try-match181953182000_
                                              (lambda ()
                                                (if (##eq? _key181951181964_
                                                           'module:)
                                                    (_K181961181997_)
                                                    (_try-match181954181992_)))))
                                        (if (##eq? _key181951181964_ 'top:)
                                            (_K181962182004_)
                                            (_try-match181953182000_)))))
                                  _expander181949_
                                  _id181929_
                                  (let ((_$e182007_ _compiler181948_))
                                    (if _$e182007_
                                        _$e182007_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest181930181941_)
                             (let ((_hd181934182013_
                                    (##car _rest181930181941_))
                                   (_tl181935182015_
                                    (##cdr _rest181930181941_)))
                               (let ((_key182018_ _hd181934182013_))
                                 (if (##pair? _tl181935182015_)
                                     (let ((_hd181936182020_
                                            (##car _tl181935182015_))
                                           (_tl181937182022_
                                            (##cdr _tl181935182015_)))
                                       (let ((_expander182025_
                                              _hd181936182020_))
                                         (if (##pair? _tl181937182022_)
                                             (let ((_hd181938182027_
                                                    (##car _tl181937182022_))
                                                   (_tl181939182029_
                                                    (##cdr _tl181937182022_)))
                                               (let ((_compiler182032_
                                                      _hd181938182027_))
                                                 (if (##null? _tl181939182029_)
                                                     (_K181933182010_
                                                      _compiler182032_
                                                      _expander182025_
                                                      _key182018_)
                                                     (_E181932181945_))))
                                             (_E181932181945_))))
                                     (_E181932181945_))))
                             (_E181932181945_))))))))
             (if (##pair? _bind181914181921_)
                 (let ((_hd181918182037_ (##car _bind181914181921_))
                       (_tl181919182039_ (##cdr _bind181914181921_)))
                   (let* ((_id182042_ _hd181918182037_)
                          (_rest182044_ _tl181919182039_))
                     (_K181917182034_ _rest182044_ _id182042_)))
                 (_E181916181925_))))
         _bindings181911_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self182049_)
        (let ((_bindings182051_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self182049_
           _bindings182051_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g186953_
        (let ((_g186952_ (##length _g186953_)))
          (cond ((##fx= _g186952_ 1)
                 (apply (lambda (_self182049_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self182049_))
                        _g186953_))
                ((##fx= _g186952_ 2)
                 (apply (lambda (_self182053_ _bindings182054_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self182053_
                           _bindings182054_))
                        _g186953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g186953_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self181682_ _bindings181683_)
        (for-each
         (lambda (_bind181685_)
           (let* ((_bind181686181693_ _bind181685_)
                  (_E181688181697_
                   (lambda ()
                     (error '"No clause matching" _bind181686181693_)))
                  (_K181689181765_
                   (lambda (_rest181700_ _id181701_)
                     (gx#core-context-put!
                      _self181682_
                      _id181701_
                      (##structure
                       gx#syntax-binding::t
                       _id181701_
                       _id181701_
                       '#f
                       (let* ((_rest181702181717_ _rest181700_)
                              (_E181706181721_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest181702181717_))))
                         (let ((_K181711181750_
                                (lambda (_core-id181748_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id181748_)))
                               (_K181708181735_
                                (lambda (_proc181733_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc181733_)))
                               (_K181707181726_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id181701_))))
                           (let ((_try-match181705181729_
                                  (lambda ()
                                    (if (##null? _rest181702181717_)
                                        (_K181707181726_)
                                        (_E181706181721_)))))
                             (if (##pair? _rest181702181717_)
                                 (let ((_tl181713181755_
                                        (##cdr _rest181702181717_))
                                       (_hd181712181753_
                                        (##car _rest181702181717_)))
                                   (if (##eq? _hd181712181753_ '=>)
                                       (if (##pair? _tl181713181755_)
                                           (let ((_tl181715181760_
                                                  (##cdr _tl181713181755_))
                                                 (_hd181714181758_
                                                  (##car _tl181713181755_)))
                                             (if (##null? _tl181715181760_)
                                                 (let ((_core-id181763_
                                                        _hd181714181758_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id181763_))
                                                 (_E181706181721_)))
                                           (if (##null? _tl181713181755_)
                                               (let ((_proc181743_
                                                      _hd181712181753_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc181743_))
                                               (_E181706181721_)))
                                       (if (##null? _tl181713181755_)
                                           (let ((_proc181743_
                                                  _hd181712181753_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc181743_))
                                           (_E181706181721_))))
                                 (_try-match181705181729_))))))))))
             (if (##pair? _bind181686181693_)
                 (let ((_hd181690181768_ (##car _bind181686181693_))
                       (_tl181691181770_ (##cdr _bind181686181693_)))
                   (let* ((_id181773_ _hd181690181768_)
                          (_rest181775_ _tl181691181770_))
                     (_K181689181765_ _rest181775_ _id181773_)))
                 (_E181688181697_))))
         _bindings181683_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self181780_)
        (let ((_bindings181782_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self181780_
           _bindings181782_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g186955_
        (let ((_g186954_ (##length _g186955_)))
          (cond ((##fx= _g186954_ 1)
                 (apply (lambda (_self181780_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self181780_))
                        _g186955_))
                ((##fx= _g186954_ 2)
                 (apply (lambda (_self181784_ _bindings181785_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self181784_
                           _bindings181785_))
                        _g186955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g186955_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self181426_)
        (letrec ((_linux-variant?181428_
                  (lambda (_sys-type181527_)
                    (let* ((_g181528181536_
                            (string-split
                             (symbol->string _sys-type181527_)
                             '#\-))
                           (_else181530181544_ (lambda () '#f))
                           (_K181532181549_
                            (lambda (_rest181547_)
                              (not (null? _rest181547_)))))
                      (if (##pair? _g181528181536_)
                          (let ((_hd181533181552_ (##car _g181528181536_))
                                (_tl181534181554_ (##cdr _g181528181536_)))
                            (if (equal? _hd181533181552_ '"linux")
                                (let ((_rest181557_ _tl181534181554_))
                                  (_K181532181549_ _rest181557_))
                                (_else181530181544_)))
                          (_else181530181544_)))))
                 (_bsd-variant181429_
                  (lambda (_sys-type181486_)
                    (let ((_sys-type-str181488_
                           (symbol->string _sys-type181486_)))
                      (let _lp181490_ ((_rest181492_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest181493181501_ _rest181492_)
                               (_else181495181509_ (lambda () '#f))
                               (_K181497181515_
                                (lambda (_rest181512_ _sys181513_)
                                  (if (string-prefix?
                                       _sys181513_
                                       _sys-type-str181488_)
                                      _sys181513_
                                      (_lp181490_ _rest181512_)))))
                          (if (##pair? _rest181493181501_)
                              (let ((_hd181498181518_
                                     (##car _rest181493181501_))
                                    (_tl181499181520_
                                     (##cdr _rest181493181501_)))
                                (let* ((_sys181523_ _hd181498181518_)
                                       (_rest181525_ _tl181499181520_))
                                  (_K181497181515_ _rest181525_ _sys181523_)))
                              (_else181495181509_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self181426_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self181426_)
          (let* ((_g181430181442_ (system-type))
                 (_else181432181450_ (lambda () '#!void))
                 (_K181434181462_
                  (lambda (_sys-type181453_ _sys-vendor181454_ _sys-cpu181455_)
                    (gx#core-bind-feature!__%
                     _sys-cpu181455_
                     '#f
                     '0
                     _self181426_)
                    (gx#core-bind-feature!__%
                     _sys-type181453_
                     '#f
                     '0
                     _self181426_)
                    (if (_linux-variant?181428_ _sys-type181453_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self181426_)
                        (let ((_$e181457_
                               (_bsd-variant181429_ _sys-type181453_)))
                          (if _$e181457_
                              ((lambda (_sys-prefix181460_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self181426_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix181460_)
                                  '#f
                                  '0
                                  _self181426_))
                               _$e181457_)
                              '#!void))))))
            (if (##pair? _g181430181442_)
                (let ((_hd181435181465_ (##car _g181430181442_))
                      (_tl181436181467_ (##cdr _g181430181442_)))
                  (let ((_sys-cpu181470_ _hd181435181465_))
                    (if (##pair? _tl181436181467_)
                        (let ((_hd181437181472_ (##car _tl181436181467_))
                              (_tl181438181474_ (##cdr _tl181436181467_)))
                          (let ((_sys-vendor181477_ _hd181437181472_))
                            (if (##pair? _tl181438181474_)
                                (let ((_hd181439181479_
                                       (##car _tl181438181474_))
                                      (_tl181440181481_
                                       (##cdr _tl181438181474_)))
                                  (let ((_sys-type181484_ _hd181439181479_))
                                    (if (##null? _tl181440181481_)
                                        (_K181434181462_
                                         _sys-type181484_
                                         _sys-vendor181477_
                                         _sys-cpu181470_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self181426_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
