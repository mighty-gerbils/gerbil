(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707423041)
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
      (lambda (_self166697_ _bind?166698_)
        (if (##fx< '2 (##structure-length _self166697_))
            (begin
              (##unchecked-structure-set!
               _self166697_
               'root
               '1
               (##structure-type _self166697_)
               '#f)
              (##unchecked-structure-set!
               _self166697_
               (make-table 'test: eq?)
               '2
               (##structure-type _self166697_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self166697_
                   '2
                   (##vector-length _self166697_)))
        (if _bind?166698_
            (begin
              (let ((__method170942
                     (method-ref _self166697_ 'bind-core-syntax-expanders!)))
                (if __method170942
                    (__method170942 _self166697_)
                    (error '"Missing method"
                           _self166697_
                           'bind-core-syntax-expanders!)))
              (let ((__method170943
                     (method-ref _self166697_ 'bind-core-macro-expanders!)))
                (if __method170943
                    (__method170943 _self166697_)
                    (error '"Missing method"
                           _self166697_
                           'bind-core-macro-expanders!)))
              (let ((__method170944
                     (method-ref _self166697_ 'bind-core-features!)))
                (if __method170944
                    (__method170944 _self166697_)
                    (error '"Missing method"
                           _self166697_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self166703_)
        (let ((_bind?166705_ '#t))
          (gx#root-context:::init!__% _self166703_ _bind?166705_))))
    (define gx#root-context:::init!
      (lambda _g170947_
        (let ((_g170946_ (##length _g170947_)))
          (cond ((##fx= _g170946_ 1)
                 (apply (lambda (_self166703_)
                          (gx#root-context:::init!__0 _self166703_))
                        _g170947_))
                ((##fx= _g170946_ 2)
                 (apply (lambda (_self166707_ _bind?166708_)
                          (gx#root-context:::init!__%
                           _self166707_
                           _bind?166708_))
                        _g170947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g170947_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t170903)
        (let ((__bind-core-macro-expanders!170904
               (make-promise
                (lambda ()
                  (let ((__tmp170907
                         (direct-method-ref
                          __t170903
                          'bind-core-macro-expanders!)))
                    (if __tmp170907
                        __tmp170907
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!170905
               (make-promise
                (lambda ()
                  (let ((__tmp170908
                         (direct-method-ref __t170903 'bind-core-features!)))
                    (if __tmp170908
                        __tmp170908
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!170906
               (make-promise
                (lambda ()
                  (let ((__tmp170909
                         (direct-method-ref
                          __t170903
                          'bind-core-syntax-expanders!)))
                    (if __tmp170909
                        __tmp170909
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda166695166700_
                 (lambda (_self166697_ _bind?166698_)
                   (if (##fx< '2 (##structure-length _self166697_))
                       (begin
                         (##unchecked-structure-set!
                          _self166697_
                          'root
                          '1
                          (##structure-type _self166697_)
                          '#f)
                         (##unchecked-structure-set!
                          _self166697_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self166697_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self166697_
                              '2
                              (##vector-length _self166697_)))
                   (if _bind?166698_
                       (begin
                         ((force __bind-core-syntax-expanders!170906)
                          _self166697_)
                         ((force __bind-core-macro-expanders!170904)
                          _self166697_)
                         ((force __bind-core-features!170905) _self166697_))
                       '#!void))))
            (lambda _g170949_
              (let ((_g170948_ (##length _g170949_)))
                (cond ((##fx= _g170948_ 1)
                       (apply (lambda (_self166703_)
                                (let ((_bind?166705_ '#t))
                                  (_opt-lambda166695166700_
                                   _self166703_
                                   _bind?166705_)))
                              _g170949_))
                      ((##fx= _g170948_ 2)
                       (apply (lambda (_self166707_ _bind?166708_)
                                (_opt-lambda166695166700_
                                 _self166707_
                                 _bind?166708_))
                              _g170949_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g170949_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self166553_ _super166554_)
        (let ((_super166562_
               (let ((_$e166556_ _super166554_))
                 (if _$e166556_
                     _$e166556_
                     (let ((_$e166559_ (gx#core-context-root__0)))
                       (if _$e166559_
                           _$e166559_
                           (let ((__obj170945
                                  (make-object* gx#root-context::t '3)))
                             (gx#root-context:::init! __obj170945)
                             __obj170945)))))))
          (if (##fx< '5 (##structure-length _self166553_))
              (begin
                (##unchecked-structure-set!
                 _self166553_
                 'top
                 '1
                 (##structure-type _self166553_)
                 '#f)
                (##unchecked-structure-set!
                 _self166553_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self166553_)
                 '#f)
                (##unchecked-structure-set!
                 _self166553_
                 _super166562_
                 '3
                 (##structure-type _self166553_)
                 '#f)
                (##unchecked-structure-set!
                 _self166553_
                 '#f
                 '4
                 (##structure-type _self166553_)
                 '#f)
                (##unchecked-structure-set!
                 _self166553_
                 '#f
                 '5
                 (##structure-type _self166553_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self166553_
                     '5
                     (##vector-length _self166553_))))))
    (define gx#top-context:::init!__0
      (lambda (_self166567_)
        (let ((_super166569_ '#f))
          (gx#top-context:::init!__% _self166567_ _super166569_))))
    (define gx#top-context:::init!
      (lambda _g170951_
        (let ((_g170950_ (##length _g170951_)))
          (cond ((##fx= _g170950_ 1)
                 (apply (lambda (_self166567_)
                          (gx#top-context:::init!__0 _self166567_))
                        _g170951_))
                ((##fx= _g170950_ 2)
                 (apply (lambda (_self166571_ _super166572_)
                          (gx#top-context:::init!__%
                           _self166571_
                           _super166572_))
                        _g170951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g170951_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self166284_ _bindings166285_)
        (for-each
         (lambda (_bind166287_)
           (let* ((_bind166288166295_ _bind166287_)
                  (_E166290166299_
                   (lambda ()
                     (error '"No clause matching" _bind166288166295_)))
                  (_K166291166408_
                   (lambda (_rest166302_ _id166303_)
                     (gx#core-context-put!
                      _self166284_
                      _id166303_
                      (##structure
                       gx#syntax-binding::t
                       _id166303_
                       _id166303_
                       '#f
                       (let* ((_rest166304166315_ _rest166302_)
                              (_E166306166319_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest166304166315_)))
                              (_K166307166384_
                               (lambda (_compiler166322_
                                        _expander166323_
                                        _key166324_)
                                 ((let* ((_key166325166338_ _key166324_)
                                         (_E166331166342_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key166325166338_))))
                                    (let ((_K166336166378_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K166335166371_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K166334166363_
                                           (lambda () gx#make-definition-form))
                                          (_K166333166355_
                                           (lambda () gx#make-special-form))
                                          (_K166332166347_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match166330166350_
                                              (lambda ()
                                                (if (##eq? _key166325166338_
                                                           'expr:)
                                                    (_K166332166347_)
                                                    (_E166331166342_))))
                                             (_try-match166329166358_
                                              (lambda ()
                                                (if (##eq? _key166325166338_
                                                           'special:)
                                                    (_K166333166355_)
                                                    (_try-match166330166350_))))
                                             (_try-match166328166366_
                                              (lambda ()
                                                (if (##eq? _key166325166338_
                                                           'define:)
                                                    (_K166334166363_)
                                                    (_try-match166329166358_))))
                                             (_try-match166327166374_
                                              (lambda ()
                                                (if (##eq? _key166325166338_
                                                           'module:)
                                                    (_K166335166371_)
                                                    (_try-match166328166366_)))))
                                        (if (##eq? _key166325166338_ 'top:)
                                            (_K166336166378_)
                                            (_try-match166327166374_)))))
                                  _expander166323_
                                  _id166303_
                                  (let ((_$e166381_ _compiler166322_))
                                    (if _$e166381_
                                        _$e166381_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest166304166315_)
                             (let ((_hd166308166387_
                                    (##car _rest166304166315_))
                                   (_tl166309166389_
                                    (##cdr _rest166304166315_)))
                               (let ((_key166392_ _hd166308166387_))
                                 (if (##pair? _tl166309166389_)
                                     (let ((_hd166310166394_
                                            (##car _tl166309166389_))
                                           (_tl166311166396_
                                            (##cdr _tl166309166389_)))
                                       (let ((_expander166399_
                                              _hd166310166394_))
                                         (if (##pair? _tl166311166396_)
                                             (let ((_hd166312166401_
                                                    (##car _tl166311166396_))
                                                   (_tl166313166403_
                                                    (##cdr _tl166311166396_)))
                                               (let ((_compiler166406_
                                                      _hd166312166401_))
                                                 (if (##null? _tl166313166403_)
                                                     (_K166307166384_
                                                      _compiler166406_
                                                      _expander166399_
                                                      _key166392_)
                                                     (_E166306166319_))))
                                             (_E166306166319_))))
                                     (_E166306166319_))))
                             (_E166306166319_))))))))
             (if (##pair? _bind166288166295_)
                 (let ((_hd166292166411_ (##car _bind166288166295_))
                       (_tl166293166413_ (##cdr _bind166288166295_)))
                   (let* ((_id166416_ _hd166292166411_)
                          (_rest166418_ _tl166293166413_))
                     (_K166291166408_ _rest166418_ _id166416_)))
                 (_E166290166299_))))
         _bindings166285_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self166423_)
        (let ((_bindings166425_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self166423_
           _bindings166425_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g170953_
        (let ((_g170952_ (##length _g170953_)))
          (cond ((##fx= _g170952_ 1)
                 (apply (lambda (_self166423_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self166423_))
                        _g170953_))
                ((##fx= _g170952_ 2)
                 (apply (lambda (_self166427_ _bindings166428_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self166427_
                           _bindings166428_))
                        _g170953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g170953_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self166056_ _bindings166057_)
        (for-each
         (lambda (_bind166059_)
           (let* ((_bind166060166067_ _bind166059_)
                  (_E166062166071_
                   (lambda ()
                     (error '"No clause matching" _bind166060166067_)))
                  (_K166063166139_
                   (lambda (_rest166074_ _id166075_)
                     (gx#core-context-put!
                      _self166056_
                      _id166075_
                      (##structure
                       gx#syntax-binding::t
                       _id166075_
                       _id166075_
                       '#f
                       (let* ((_rest166076166091_ _rest166074_)
                              (_E166080166095_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest166076166091_))))
                         (let ((_K166085166124_
                                (lambda (_core-id166122_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id166122_)))
                               (_K166082166109_
                                (lambda (_proc166107_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc166107_)))
                               (_K166081166100_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id166075_))))
                           (let ((_try-match166079166103_
                                  (lambda ()
                                    (if (##null? _rest166076166091_)
                                        (_K166081166100_)
                                        (_E166080166095_)))))
                             (if (##pair? _rest166076166091_)
                                 (let ((_tl166087166129_
                                        (##cdr _rest166076166091_))
                                       (_hd166086166127_
                                        (##car _rest166076166091_)))
                                   (if (##eq? _hd166086166127_ '=>)
                                       (if (##pair? _tl166087166129_)
                                           (let ((_tl166089166134_
                                                  (##cdr _tl166087166129_))
                                                 (_hd166088166132_
                                                  (##car _tl166087166129_)))
                                             (if (##null? _tl166089166134_)
                                                 (let ((_core-id166137_
                                                        _hd166088166132_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id166137_))
                                                 (_E166080166095_)))
                                           (if (##null? _tl166087166129_)
                                               (let ((_proc166117_
                                                      _hd166086166127_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc166117_))
                                               (_E166080166095_)))
                                       (if (##null? _tl166087166129_)
                                           (let ((_proc166117_
                                                  _hd166086166127_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc166117_))
                                           (_E166080166095_))))
                                 (_try-match166079166103_))))))))))
             (if (##pair? _bind166060166067_)
                 (let ((_hd166064166142_ (##car _bind166060166067_))
                       (_tl166065166144_ (##cdr _bind166060166067_)))
                   (let* ((_id166147_ _hd166064166142_)
                          (_rest166149_ _tl166065166144_))
                     (_K166063166139_ _rest166149_ _id166147_)))
                 (_E166062166071_))))
         _bindings166057_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self166154_)
        (let ((_bindings166156_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self166154_
           _bindings166156_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g170955_
        (let ((_g170954_ (##length _g170955_)))
          (cond ((##fx= _g170954_ 1)
                 (apply (lambda (_self166154_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self166154_))
                        _g170955_))
                ((##fx= _g170954_ 2)
                 (apply (lambda (_self166158_ _bindings166159_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self166158_
                           _bindings166159_))
                        _g170955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g170955_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self165800_)
        (letrec ((_linux-variant?165802_
                  (lambda (_sys-type165901_)
                    (let* ((_g165902165910_
                            (string-split
                             (symbol->string _sys-type165901_)
                             '#\-))
                           (_else165904165918_ (lambda () '#f))
                           (_K165906165923_
                            (lambda (_rest165921_)
                              (not (null? _rest165921_)))))
                      (if (##pair? _g165902165910_)
                          (let ((_hd165907165926_ (##car _g165902165910_))
                                (_tl165908165928_ (##cdr _g165902165910_)))
                            (if (equal? _hd165907165926_ '"linux")
                                (let ((_rest165931_ _tl165908165928_))
                                  (_K165906165923_ _rest165931_))
                                (_else165904165918_)))
                          (_else165904165918_)))))
                 (_bsd-variant165803_
                  (lambda (_sys-type165860_)
                    (let ((_sys-type-str165862_
                           (symbol->string _sys-type165860_)))
                      (let _lp165864_ ((_rest165866_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest165867165875_ _rest165866_)
                               (_else165869165883_ (lambda () '#f))
                               (_K165871165889_
                                (lambda (_rest165886_ _sys165887_)
                                  (if (string-prefix?
                                       _sys165887_
                                       _sys-type-str165862_)
                                      _sys165887_
                                      (_lp165864_ _rest165886_)))))
                          (if (##pair? _rest165867165875_)
                              (let ((_hd165872165892_
                                     (##car _rest165867165875_))
                                    (_tl165873165894_
                                     (##cdr _rest165867165875_)))
                                (let* ((_sys165897_ _hd165872165892_)
                                       (_rest165899_ _tl165873165894_))
                                  (_K165871165889_ _rest165899_ _sys165897_)))
                              (_else165869165883_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self165800_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self165800_)
          (let* ((_g165804165816_ (system-type))
                 (_else165806165824_ (lambda () '#!void))
                 (_K165808165836_
                  (lambda (_sys-type165827_ _sys-vendor165828_ _sys-cpu165829_)
                    (gx#core-bind-feature!__%
                     _sys-cpu165829_
                     '#f
                     '0
                     _self165800_)
                    (gx#core-bind-feature!__%
                     _sys-type165827_
                     '#f
                     '0
                     _self165800_)
                    (if (_linux-variant?165802_ _sys-type165827_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self165800_)
                        (let ((_$e165831_
                               (_bsd-variant165803_ _sys-type165827_)))
                          (if _$e165831_
                              ((lambda (_sys-prefix165834_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self165800_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix165834_)
                                  '#f
                                  '0
                                  _self165800_))
                               _$e165831_)
                              '#!void))))))
            (if (##pair? _g165804165816_)
                (let ((_hd165809165839_ (##car _g165804165816_))
                      (_tl165810165841_ (##cdr _g165804165816_)))
                  (let ((_sys-cpu165844_ _hd165809165839_))
                    (if (##pair? _tl165810165841_)
                        (let ((_hd165811165846_ (##car _tl165810165841_))
                              (_tl165812165848_ (##cdr _tl165810165841_)))
                          (let ((_sys-vendor165851_ _hd165811165846_))
                            (if (##pair? _tl165812165848_)
                                (let ((_hd165813165853_
                                       (##car _tl165812165848_))
                                      (_tl165814165855_
                                       (##cdr _tl165812165848_)))
                                  (let ((_sys-type165858_ _hd165813165853_))
                                    (if (##null? _tl165814165855_)
                                        (_K165808165836_
                                         _sys-type165858_
                                         _sys-vendor165851_
                                         _sys-cpu165844_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self165800_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
