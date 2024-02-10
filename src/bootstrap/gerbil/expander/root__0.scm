(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707552288)
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
      (lambda (_self166628_ _bind?166629_)
        (if (##fx< '2 (##structure-length _self166628_))
            (begin
              (##unchecked-structure-set!
               _self166628_
               'root
               '1
               (##structure-type _self166628_)
               '#f)
              (##unchecked-structure-set!
               _self166628_
               (make-table 'test: eq?)
               '2
               (##structure-type _self166628_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self166628_
                   '2
                   (##vector-length _self166628_)))
        (if _bind?166629_
            (begin
              (let ((__method170873
                     (method-ref _self166628_ 'bind-core-syntax-expanders!)))
                (if __method170873
                    (__method170873 _self166628_)
                    (error '"Missing method"
                           _self166628_
                           'bind-core-syntax-expanders!)))
              (let ((__method170874
                     (method-ref _self166628_ 'bind-core-macro-expanders!)))
                (if __method170874
                    (__method170874 _self166628_)
                    (error '"Missing method"
                           _self166628_
                           'bind-core-macro-expanders!)))
              (let ((__method170875
                     (method-ref _self166628_ 'bind-core-features!)))
                (if __method170875
                    (__method170875 _self166628_)
                    (error '"Missing method"
                           _self166628_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self166634_)
        (let ((_bind?166636_ '#t))
          (gx#root-context:::init!__% _self166634_ _bind?166636_))))
    (define gx#root-context:::init!
      (lambda _g170878_
        (let ((_g170877_ (##length _g170878_)))
          (cond ((##fx= _g170877_ 1)
                 (apply (lambda (_self166634_)
                          (gx#root-context:::init!__0 _self166634_))
                        _g170878_))
                ((##fx= _g170877_ 2)
                 (apply (lambda (_self166638_ _bind?166639_)
                          (gx#root-context:::init!__%
                           _self166638_
                           _bind?166639_))
                        _g170878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g170878_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t170834)
        (let ((__bind-core-macro-expanders!170835
               (make-promise
                (lambda ()
                  (let ((__tmp170838
                         (direct-method-ref
                          __t170834
                          'bind-core-macro-expanders!)))
                    (if __tmp170838
                        __tmp170838
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!170836
               (make-promise
                (lambda ()
                  (let ((__tmp170839
                         (direct-method-ref __t170834 'bind-core-features!)))
                    (if __tmp170839
                        __tmp170839
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!170837
               (make-promise
                (lambda ()
                  (let ((__tmp170840
                         (direct-method-ref
                          __t170834
                          'bind-core-syntax-expanders!)))
                    (if __tmp170840
                        __tmp170840
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda166626166631_
                 (lambda (_self166628_ _bind?166629_)
                   (if (##fx< '2 (##structure-length _self166628_))
                       (begin
                         (##unchecked-structure-set!
                          _self166628_
                          'root
                          '1
                          (##structure-type _self166628_)
                          '#f)
                         (##unchecked-structure-set!
                          _self166628_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self166628_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self166628_
                              '2
                              (##vector-length _self166628_)))
                   (if _bind?166629_
                       (begin
                         ((force __bind-core-syntax-expanders!170837)
                          _self166628_)
                         ((force __bind-core-macro-expanders!170835)
                          _self166628_)
                         ((force __bind-core-features!170836) _self166628_))
                       '#!void))))
            (lambda _g170880_
              (let ((_g170879_ (##length _g170880_)))
                (cond ((##fx= _g170879_ 1)
                       (apply (lambda (_self166634_)
                                (let ((_bind?166636_ '#t))
                                  (_opt-lambda166626166631_
                                   _self166634_
                                   _bind?166636_)))
                              _g170880_))
                      ((##fx= _g170879_ 2)
                       (apply (lambda (_self166638_ _bind?166639_)
                                (_opt-lambda166626166631_
                                 _self166638_
                                 _bind?166639_))
                              _g170880_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g170880_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self166484_ _super166485_)
        (let ((_super166493_
               (let ((_$e166487_ _super166485_))
                 (if _$e166487_
                     _$e166487_
                     (let ((_$e166490_ (gx#core-context-root__0)))
                       (if _$e166490_
                           _$e166490_
                           (let ((__obj170876
                                  (make-object gx#root-context::t '3)))
                             (gx#root-context:::init! __obj170876)
                             __obj170876)))))))
          (if (##fx< '5 (##structure-length _self166484_))
              (begin
                (##unchecked-structure-set!
                 _self166484_
                 'top
                 '1
                 (##structure-type _self166484_)
                 '#f)
                (##unchecked-structure-set!
                 _self166484_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self166484_)
                 '#f)
                (##unchecked-structure-set!
                 _self166484_
                 _super166493_
                 '3
                 (##structure-type _self166484_)
                 '#f)
                (##unchecked-structure-set!
                 _self166484_
                 '#f
                 '4
                 (##structure-type _self166484_)
                 '#f)
                (##unchecked-structure-set!
                 _self166484_
                 '#f
                 '5
                 (##structure-type _self166484_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self166484_
                     '5
                     (##vector-length _self166484_))))))
    (define gx#top-context:::init!__0
      (lambda (_self166498_)
        (let ((_super166500_ '#f))
          (gx#top-context:::init!__% _self166498_ _super166500_))))
    (define gx#top-context:::init!
      (lambda _g170882_
        (let ((_g170881_ (##length _g170882_)))
          (cond ((##fx= _g170881_ 1)
                 (apply (lambda (_self166498_)
                          (gx#top-context:::init!__0 _self166498_))
                        _g170882_))
                ((##fx= _g170881_ 2)
                 (apply (lambda (_self166502_ _super166503_)
                          (gx#top-context:::init!__%
                           _self166502_
                           _super166503_))
                        _g170882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g170882_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self166215_ _bindings166216_)
        (for-each
         (lambda (_bind166218_)
           (let* ((_bind166219166226_ _bind166218_)
                  (_E166221166230_
                   (lambda ()
                     (error '"No clause matching" _bind166219166226_)))
                  (_K166222166339_
                   (lambda (_rest166233_ _id166234_)
                     (gx#core-context-put!
                      _self166215_
                      _id166234_
                      (##structure
                       gx#syntax-binding::t
                       _id166234_
                       _id166234_
                       '#f
                       (let* ((_rest166235166246_ _rest166233_)
                              (_E166237166250_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest166235166246_)))
                              (_K166238166315_
                               (lambda (_compiler166253_
                                        _expander166254_
                                        _key166255_)
                                 ((let* ((_key166256166269_ _key166255_)
                                         (_E166262166273_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key166256166269_))))
                                    (let ((_K166267166309_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K166266166302_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K166265166294_
                                           (lambda () gx#make-definition-form))
                                          (_K166264166286_
                                           (lambda () gx#make-special-form))
                                          (_K166263166278_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match166261166281_
                                              (lambda ()
                                                (if (##eq? _key166256166269_
                                                           'expr:)
                                                    (_K166263166278_)
                                                    (_E166262166273_))))
                                             (_try-match166260166289_
                                              (lambda ()
                                                (if (##eq? _key166256166269_
                                                           'special:)
                                                    (_K166264166286_)
                                                    (_try-match166261166281_))))
                                             (_try-match166259166297_
                                              (lambda ()
                                                (if (##eq? _key166256166269_
                                                           'define:)
                                                    (_K166265166294_)
                                                    (_try-match166260166289_))))
                                             (_try-match166258166305_
                                              (lambda ()
                                                (if (##eq? _key166256166269_
                                                           'module:)
                                                    (_K166266166302_)
                                                    (_try-match166259166297_)))))
                                        (if (##eq? _key166256166269_ 'top:)
                                            (_K166267166309_)
                                            (_try-match166258166305_)))))
                                  _expander166254_
                                  _id166234_
                                  (let ((_$e166312_ _compiler166253_))
                                    (if _$e166312_
                                        _$e166312_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest166235166246_)
                             (let ((_hd166239166318_
                                    (##car _rest166235166246_))
                                   (_tl166240166320_
                                    (##cdr _rest166235166246_)))
                               (let ((_key166323_ _hd166239166318_))
                                 (if (##pair? _tl166240166320_)
                                     (let ((_hd166241166325_
                                            (##car _tl166240166320_))
                                           (_tl166242166327_
                                            (##cdr _tl166240166320_)))
                                       (let ((_expander166330_
                                              _hd166241166325_))
                                         (if (##pair? _tl166242166327_)
                                             (let ((_hd166243166332_
                                                    (##car _tl166242166327_))
                                                   (_tl166244166334_
                                                    (##cdr _tl166242166327_)))
                                               (let ((_compiler166337_
                                                      _hd166243166332_))
                                                 (if (##null? _tl166244166334_)
                                                     (_K166238166315_
                                                      _compiler166337_
                                                      _expander166330_
                                                      _key166323_)
                                                     (_E166237166250_))))
                                             (_E166237166250_))))
                                     (_E166237166250_))))
                             (_E166237166250_))))))))
             (if (##pair? _bind166219166226_)
                 (let ((_hd166223166342_ (##car _bind166219166226_))
                       (_tl166224166344_ (##cdr _bind166219166226_)))
                   (let* ((_id166347_ _hd166223166342_)
                          (_rest166349_ _tl166224166344_))
                     (_K166222166339_ _rest166349_ _id166347_)))
                 (_E166221166230_))))
         _bindings166216_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self166354_)
        (let ((_bindings166356_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self166354_
           _bindings166356_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g170884_
        (let ((_g170883_ (##length _g170884_)))
          (cond ((##fx= _g170883_ 1)
                 (apply (lambda (_self166354_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self166354_))
                        _g170884_))
                ((##fx= _g170883_ 2)
                 (apply (lambda (_self166358_ _bindings166359_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self166358_
                           _bindings166359_))
                        _g170884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g170884_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self165987_ _bindings165988_)
        (for-each
         (lambda (_bind165990_)
           (let* ((_bind165991165998_ _bind165990_)
                  (_E165993166002_
                   (lambda ()
                     (error '"No clause matching" _bind165991165998_)))
                  (_K165994166070_
                   (lambda (_rest166005_ _id166006_)
                     (gx#core-context-put!
                      _self165987_
                      _id166006_
                      (##structure
                       gx#syntax-binding::t
                       _id166006_
                       _id166006_
                       '#f
                       (let* ((_rest166007166022_ _rest166005_)
                              (_E166011166026_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest166007166022_))))
                         (let ((_K166016166055_
                                (lambda (_core-id166053_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id166053_)))
                               (_K166013166040_
                                (lambda (_proc166038_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc166038_)))
                               (_K166012166031_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id166006_))))
                           (let ((_try-match166010166034_
                                  (lambda ()
                                    (if (##null? _rest166007166022_)
                                        (_K166012166031_)
                                        (_E166011166026_)))))
                             (if (##pair? _rest166007166022_)
                                 (let ((_tl166018166060_
                                        (##cdr _rest166007166022_))
                                       (_hd166017166058_
                                        (##car _rest166007166022_)))
                                   (if (##eq? _hd166017166058_ '=>)
                                       (if (##pair? _tl166018166060_)
                                           (let ((_tl166020166065_
                                                  (##cdr _tl166018166060_))
                                                 (_hd166019166063_
                                                  (##car _tl166018166060_)))
                                             (if (##null? _tl166020166065_)
                                                 (let ((_core-id166068_
                                                        _hd166019166063_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id166068_))
                                                 (_E166011166026_)))
                                           (if (##null? _tl166018166060_)
                                               (let ((_proc166048_
                                                      _hd166017166058_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc166048_))
                                               (_E166011166026_)))
                                       (if (##null? _tl166018166060_)
                                           (let ((_proc166048_
                                                  _hd166017166058_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc166048_))
                                           (_E166011166026_))))
                                 (_try-match166010166034_))))))))))
             (if (##pair? _bind165991165998_)
                 (let ((_hd165995166073_ (##car _bind165991165998_))
                       (_tl165996166075_ (##cdr _bind165991165998_)))
                   (let* ((_id166078_ _hd165995166073_)
                          (_rest166080_ _tl165996166075_))
                     (_K165994166070_ _rest166080_ _id166078_)))
                 (_E165993166002_))))
         _bindings165988_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self166085_)
        (let ((_bindings166087_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self166085_
           _bindings166087_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g170886_
        (let ((_g170885_ (##length _g170886_)))
          (cond ((##fx= _g170885_ 1)
                 (apply (lambda (_self166085_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self166085_))
                        _g170886_))
                ((##fx= _g170885_ 2)
                 (apply (lambda (_self166089_ _bindings166090_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self166089_
                           _bindings166090_))
                        _g170886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g170886_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self165731_)
        (letrec ((_linux-variant?165733_
                  (lambda (_sys-type165832_)
                    (let* ((_g165833165841_
                            (string-split
                             (symbol->string _sys-type165832_)
                             '#\-))
                           (_else165835165849_ (lambda () '#f))
                           (_K165837165854_
                            (lambda (_rest165852_)
                              (not (null? _rest165852_)))))
                      (if (##pair? _g165833165841_)
                          (let ((_hd165838165857_ (##car _g165833165841_))
                                (_tl165839165859_ (##cdr _g165833165841_)))
                            (if (equal? _hd165838165857_ '"linux")
                                (let ((_rest165862_ _tl165839165859_))
                                  (_K165837165854_ _rest165862_))
                                (_else165835165849_)))
                          (_else165835165849_)))))
                 (_bsd-variant165734_
                  (lambda (_sys-type165791_)
                    (let ((_sys-type-str165793_
                           (symbol->string _sys-type165791_)))
                      (let _lp165795_ ((_rest165797_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest165798165806_ _rest165797_)
                               (_else165800165814_ (lambda () '#f))
                               (_K165802165820_
                                (lambda (_rest165817_ _sys165818_)
                                  (if (string-prefix?
                                       _sys165818_
                                       _sys-type-str165793_)
                                      _sys165818_
                                      (_lp165795_ _rest165817_)))))
                          (if (##pair? _rest165798165806_)
                              (let ((_hd165803165823_
                                     (##car _rest165798165806_))
                                    (_tl165804165825_
                                     (##cdr _rest165798165806_)))
                                (let* ((_sys165828_ _hd165803165823_)
                                       (_rest165830_ _tl165804165825_))
                                  (_K165802165820_ _rest165830_ _sys165828_)))
                              (_else165800165814_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self165731_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self165731_)
          (let* ((_g165735165747_ (system-type))
                 (_else165737165755_ (lambda () '#!void))
                 (_K165739165767_
                  (lambda (_sys-type165758_ _sys-vendor165759_ _sys-cpu165760_)
                    (gx#core-bind-feature!__%
                     _sys-cpu165760_
                     '#f
                     '0
                     _self165731_)
                    (gx#core-bind-feature!__%
                     _sys-type165758_
                     '#f
                     '0
                     _self165731_)
                    (if (_linux-variant?165733_ _sys-type165758_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self165731_)
                        (let ((_$e165762_
                               (_bsd-variant165734_ _sys-type165758_)))
                          (if _$e165762_
                              ((lambda (_sys-prefix165765_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self165731_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix165765_)
                                  '#f
                                  '0
                                  _self165731_))
                               _$e165762_)
                              '#!void))))))
            (if (##pair? _g165735165747_)
                (let ((_hd165740165770_ (##car _g165735165747_))
                      (_tl165741165772_ (##cdr _g165735165747_)))
                  (let ((_sys-cpu165775_ _hd165740165770_))
                    (if (##pair? _tl165741165772_)
                        (let ((_hd165742165777_ (##car _tl165741165772_))
                              (_tl165743165779_ (##cdr _tl165741165772_)))
                          (let ((_sys-vendor165782_ _hd165742165777_))
                            (if (##pair? _tl165743165779_)
                                (let ((_hd165744165784_
                                       (##car _tl165743165779_))
                                      (_tl165745165786_
                                       (##cdr _tl165743165779_)))
                                  (let ((_sys-type165789_ _hd165744165784_))
                                    (if (##null? _tl165745165786_)
                                        (_K165739165767_
                                         _sys-type165789_
                                         _sys-vendor165782_
                                         _sys-cpu165775_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self165731_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
