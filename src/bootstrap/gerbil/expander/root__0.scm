(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707556027)
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
      (lambda (_self166627_ _bind?166628_)
        (if (##fx< '2 (##structure-length _self166627_))
            (begin
              (##unchecked-structure-set!
               _self166627_
               'root
               '1
               (##structure-type _self166627_)
               '#f)
              (##unchecked-structure-set!
               _self166627_
               (make-table 'test: eq?)
               '2
               (##structure-type _self166627_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self166627_
                   '2
                   (##vector-length _self166627_)))
        (if _bind?166628_
            (begin
              (let ((__method170872
                     (method-ref _self166627_ 'bind-core-syntax-expanders!)))
                (if __method170872
                    (__method170872 _self166627_)
                    (error '"Missing method"
                           _self166627_
                           'bind-core-syntax-expanders!)))
              (let ((__method170873
                     (method-ref _self166627_ 'bind-core-macro-expanders!)))
                (if __method170873
                    (__method170873 _self166627_)
                    (error '"Missing method"
                           _self166627_
                           'bind-core-macro-expanders!)))
              (let ((__method170874
                     (method-ref _self166627_ 'bind-core-features!)))
                (if __method170874
                    (__method170874 _self166627_)
                    (error '"Missing method"
                           _self166627_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self166633_)
        (let ((_bind?166635_ '#t))
          (gx#root-context:::init!__% _self166633_ _bind?166635_))))
    (define gx#root-context:::init!
      (lambda _g170877_
        (let ((_g170876_ (##length _g170877_)))
          (cond ((##fx= _g170876_ 1)
                 (apply (lambda (_self166633_)
                          (gx#root-context:::init!__0 _self166633_))
                        _g170877_))
                ((##fx= _g170876_ 2)
                 (apply (lambda (_self166637_ _bind?166638_)
                          (gx#root-context:::init!__%
                           _self166637_
                           _bind?166638_))
                        _g170877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g170877_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t170833)
        (let ((__bind-core-syntax-expanders!170834
               (make-promise
                (lambda ()
                  (let ((__tmp170837
                         (direct-method-ref
                          __t170833
                          'bind-core-syntax-expanders!)))
                    (if __tmp170837
                        __tmp170837
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!170835
               (make-promise
                (lambda ()
                  (let ((__tmp170838
                         (direct-method-ref
                          __t170833
                          'bind-core-macro-expanders!)))
                    (if __tmp170838
                        __tmp170838
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!170836
               (make-promise
                (lambda ()
                  (let ((__tmp170839
                         (direct-method-ref __t170833 'bind-core-features!)))
                    (if __tmp170839
                        __tmp170839
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda166625166630_
                 (lambda (_self166627_ _bind?166628_)
                   (if (##fx< '2 (##structure-length _self166627_))
                       (begin
                         (##unchecked-structure-set!
                          _self166627_
                          'root
                          '1
                          (##structure-type _self166627_)
                          '#f)
                         (##unchecked-structure-set!
                          _self166627_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self166627_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self166627_
                              '2
                              (##vector-length _self166627_)))
                   (if _bind?166628_
                       (begin
                         ((force __bind-core-syntax-expanders!170834)
                          _self166627_)
                         ((force __bind-core-macro-expanders!170835)
                          _self166627_)
                         ((force __bind-core-features!170836) _self166627_))
                       '#!void))))
            (lambda _g170879_
              (let ((_g170878_ (##length _g170879_)))
                (cond ((##fx= _g170878_ 1)
                       (apply (lambda (_self166633_)
                                (let ((_bind?166635_ '#t))
                                  (_opt-lambda166625166630_
                                   _self166633_
                                   _bind?166635_)))
                              _g170879_))
                      ((##fx= _g170878_ 2)
                       (apply (lambda (_self166637_ _bind?166638_)
                                (_opt-lambda166625166630_
                                 _self166637_
                                 _bind?166638_))
                              _g170879_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g170879_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self166483_ _super166484_)
        (let ((_super166492_
               (let ((_$e166486_ _super166484_))
                 (if _$e166486_
                     _$e166486_
                     (let ((_$e166489_ (gx#core-context-root__0)))
                       (if _$e166489_
                           _$e166489_
                           (let ((__obj170875
                                  (make-object gx#root-context::t '3)))
                             (gx#root-context:::init! __obj170875)
                             __obj170875)))))))
          (if (##fx< '5 (##structure-length _self166483_))
              (begin
                (##unchecked-structure-set!
                 _self166483_
                 'top
                 '1
                 (##structure-type _self166483_)
                 '#f)
                (##unchecked-structure-set!
                 _self166483_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self166483_)
                 '#f)
                (##unchecked-structure-set!
                 _self166483_
                 _super166492_
                 '3
                 (##structure-type _self166483_)
                 '#f)
                (##unchecked-structure-set!
                 _self166483_
                 '#f
                 '4
                 (##structure-type _self166483_)
                 '#f)
                (##unchecked-structure-set!
                 _self166483_
                 '#f
                 '5
                 (##structure-type _self166483_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self166483_
                     '5
                     (##vector-length _self166483_))))))
    (define gx#top-context:::init!__0
      (lambda (_self166497_)
        (let ((_super166499_ '#f))
          (gx#top-context:::init!__% _self166497_ _super166499_))))
    (define gx#top-context:::init!
      (lambda _g170881_
        (let ((_g170880_ (##length _g170881_)))
          (cond ((##fx= _g170880_ 1)
                 (apply (lambda (_self166497_)
                          (gx#top-context:::init!__0 _self166497_))
                        _g170881_))
                ((##fx= _g170880_ 2)
                 (apply (lambda (_self166501_ _super166502_)
                          (gx#top-context:::init!__%
                           _self166501_
                           _super166502_))
                        _g170881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g170881_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self166214_ _bindings166215_)
        (for-each
         (lambda (_bind166217_)
           (let* ((_bind166218166225_ _bind166217_)
                  (_E166220166229_
                   (lambda ()
                     (error '"No clause matching" _bind166218166225_)))
                  (_K166221166338_
                   (lambda (_rest166232_ _id166233_)
                     (gx#core-context-put!
                      _self166214_
                      _id166233_
                      (##structure
                       gx#syntax-binding::t
                       _id166233_
                       _id166233_
                       '#f
                       (let* ((_rest166234166245_ _rest166232_)
                              (_E166236166249_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest166234166245_)))
                              (_K166237166314_
                               (lambda (_compiler166252_
                                        _expander166253_
                                        _key166254_)
                                 ((let* ((_key166255166268_ _key166254_)
                                         (_E166261166272_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key166255166268_))))
                                    (let ((_K166266166308_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K166265166301_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K166264166293_
                                           (lambda () gx#make-definition-form))
                                          (_K166263166285_
                                           (lambda () gx#make-special-form))
                                          (_K166262166277_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match166260166280_
                                              (lambda ()
                                                (if (##eq? _key166255166268_
                                                           'expr:)
                                                    (_K166262166277_)
                                                    (_E166261166272_))))
                                             (_try-match166259166288_
                                              (lambda ()
                                                (if (##eq? _key166255166268_
                                                           'special:)
                                                    (_K166263166285_)
                                                    (_try-match166260166280_))))
                                             (_try-match166258166296_
                                              (lambda ()
                                                (if (##eq? _key166255166268_
                                                           'define:)
                                                    (_K166264166293_)
                                                    (_try-match166259166288_))))
                                             (_try-match166257166304_
                                              (lambda ()
                                                (if (##eq? _key166255166268_
                                                           'module:)
                                                    (_K166265166301_)
                                                    (_try-match166258166296_)))))
                                        (if (##eq? _key166255166268_ 'top:)
                                            (_K166266166308_)
                                            (_try-match166257166304_)))))
                                  _expander166253_
                                  _id166233_
                                  (let ((_$e166311_ _compiler166252_))
                                    (if _$e166311_
                                        _$e166311_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest166234166245_)
                             (let ((_hd166238166317_
                                    (##car _rest166234166245_))
                                   (_tl166239166319_
                                    (##cdr _rest166234166245_)))
                               (let ((_key166322_ _hd166238166317_))
                                 (if (##pair? _tl166239166319_)
                                     (let ((_hd166240166324_
                                            (##car _tl166239166319_))
                                           (_tl166241166326_
                                            (##cdr _tl166239166319_)))
                                       (let ((_expander166329_
                                              _hd166240166324_))
                                         (if (##pair? _tl166241166326_)
                                             (let ((_hd166242166331_
                                                    (##car _tl166241166326_))
                                                   (_tl166243166333_
                                                    (##cdr _tl166241166326_)))
                                               (let ((_compiler166336_
                                                      _hd166242166331_))
                                                 (if (##null? _tl166243166333_)
                                                     (_K166237166314_
                                                      _compiler166336_
                                                      _expander166329_
                                                      _key166322_)
                                                     (_E166236166249_))))
                                             (_E166236166249_))))
                                     (_E166236166249_))))
                             (_E166236166249_))))))))
             (if (##pair? _bind166218166225_)
                 (let ((_hd166222166341_ (##car _bind166218166225_))
                       (_tl166223166343_ (##cdr _bind166218166225_)))
                   (let* ((_id166346_ _hd166222166341_)
                          (_rest166348_ _tl166223166343_))
                     (_K166221166338_ _rest166348_ _id166346_)))
                 (_E166220166229_))))
         _bindings166215_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self166353_)
        (let ((_bindings166355_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self166353_
           _bindings166355_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g170883_
        (let ((_g170882_ (##length _g170883_)))
          (cond ((##fx= _g170882_ 1)
                 (apply (lambda (_self166353_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self166353_))
                        _g170883_))
                ((##fx= _g170882_ 2)
                 (apply (lambda (_self166357_ _bindings166358_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self166357_
                           _bindings166358_))
                        _g170883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g170883_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self165986_ _bindings165987_)
        (for-each
         (lambda (_bind165989_)
           (let* ((_bind165990165997_ _bind165989_)
                  (_E165992166001_
                   (lambda ()
                     (error '"No clause matching" _bind165990165997_)))
                  (_K165993166069_
                   (lambda (_rest166004_ _id166005_)
                     (gx#core-context-put!
                      _self165986_
                      _id166005_
                      (##structure
                       gx#syntax-binding::t
                       _id166005_
                       _id166005_
                       '#f
                       (let* ((_rest166006166021_ _rest166004_)
                              (_E166010166025_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest166006166021_))))
                         (let ((_K166015166054_
                                (lambda (_core-id166052_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id166052_)))
                               (_K166012166039_
                                (lambda (_proc166037_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc166037_)))
                               (_K166011166030_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id166005_))))
                           (let ((_try-match166009166033_
                                  (lambda ()
                                    (if (##null? _rest166006166021_)
                                        (_K166011166030_)
                                        (_E166010166025_)))))
                             (if (##pair? _rest166006166021_)
                                 (let ((_tl166017166059_
                                        (##cdr _rest166006166021_))
                                       (_hd166016166057_
                                        (##car _rest166006166021_)))
                                   (if (##eq? _hd166016166057_ '=>)
                                       (if (##pair? _tl166017166059_)
                                           (let ((_tl166019166064_
                                                  (##cdr _tl166017166059_))
                                                 (_hd166018166062_
                                                  (##car _tl166017166059_)))
                                             (if (##null? _tl166019166064_)
                                                 (let ((_core-id166067_
                                                        _hd166018166062_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id166067_))
                                                 (_E166010166025_)))
                                           (if (##null? _tl166017166059_)
                                               (let ((_proc166047_
                                                      _hd166016166057_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc166047_))
                                               (_E166010166025_)))
                                       (if (##null? _tl166017166059_)
                                           (let ((_proc166047_
                                                  _hd166016166057_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc166047_))
                                           (_E166010166025_))))
                                 (_try-match166009166033_))))))))))
             (if (##pair? _bind165990165997_)
                 (let ((_hd165994166072_ (##car _bind165990165997_))
                       (_tl165995166074_ (##cdr _bind165990165997_)))
                   (let* ((_id166077_ _hd165994166072_)
                          (_rest166079_ _tl165995166074_))
                     (_K165993166069_ _rest166079_ _id166077_)))
                 (_E165992166001_))))
         _bindings165987_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self166084_)
        (let ((_bindings166086_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self166084_
           _bindings166086_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g170885_
        (let ((_g170884_ (##length _g170885_)))
          (cond ((##fx= _g170884_ 1)
                 (apply (lambda (_self166084_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self166084_))
                        _g170885_))
                ((##fx= _g170884_ 2)
                 (apply (lambda (_self166088_ _bindings166089_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self166088_
                           _bindings166089_))
                        _g170885_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g170885_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self165730_)
        (letrec ((_linux-variant?165732_
                  (lambda (_sys-type165831_)
                    (let* ((_g165832165840_
                            (string-split
                             (symbol->string _sys-type165831_)
                             '#\-))
                           (_else165834165848_ (lambda () '#f))
                           (_K165836165853_
                            (lambda (_rest165851_)
                              (not (null? _rest165851_)))))
                      (if (##pair? _g165832165840_)
                          (let ((_hd165837165856_ (##car _g165832165840_))
                                (_tl165838165858_ (##cdr _g165832165840_)))
                            (if (equal? _hd165837165856_ '"linux")
                                (let ((_rest165861_ _tl165838165858_))
                                  (_K165836165853_ _rest165861_))
                                (_else165834165848_)))
                          (_else165834165848_)))))
                 (_bsd-variant165733_
                  (lambda (_sys-type165790_)
                    (let ((_sys-type-str165792_
                           (symbol->string _sys-type165790_)))
                      (let _lp165794_ ((_rest165796_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest165797165805_ _rest165796_)
                               (_else165799165813_ (lambda () '#f))
                               (_K165801165819_
                                (lambda (_rest165816_ _sys165817_)
                                  (if (string-prefix?
                                       _sys165817_
                                       _sys-type-str165792_)
                                      _sys165817_
                                      (_lp165794_ _rest165816_)))))
                          (if (##pair? _rest165797165805_)
                              (let ((_hd165802165822_
                                     (##car _rest165797165805_))
                                    (_tl165803165824_
                                     (##cdr _rest165797165805_)))
                                (let* ((_sys165827_ _hd165802165822_)
                                       (_rest165829_ _tl165803165824_))
                                  (_K165801165819_ _rest165829_ _sys165827_)))
                              (_else165799165813_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self165730_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self165730_)
          (let* ((_g165734165746_ (system-type))
                 (_else165736165754_ (lambda () '#!void))
                 (_K165738165766_
                  (lambda (_sys-type165757_ _sys-vendor165758_ _sys-cpu165759_)
                    (gx#core-bind-feature!__%
                     _sys-cpu165759_
                     '#f
                     '0
                     _self165730_)
                    (gx#core-bind-feature!__%
                     _sys-type165757_
                     '#f
                     '0
                     _self165730_)
                    (if (_linux-variant?165732_ _sys-type165757_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self165730_)
                        (let ((_$e165761_
                               (_bsd-variant165733_ _sys-type165757_)))
                          (if _$e165761_
                              ((lambda (_sys-prefix165764_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self165730_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix165764_)
                                  '#f
                                  '0
                                  _self165730_))
                               _$e165761_)
                              '#!void))))))
            (if (##pair? _g165734165746_)
                (let ((_hd165739165769_ (##car _g165734165746_))
                      (_tl165740165771_ (##cdr _g165734165746_)))
                  (let ((_sys-cpu165774_ _hd165739165769_))
                    (if (##pair? _tl165740165771_)
                        (let ((_hd165741165776_ (##car _tl165740165771_))
                              (_tl165742165778_ (##cdr _tl165740165771_)))
                          (let ((_sys-vendor165781_ _hd165741165776_))
                            (if (##pair? _tl165742165778_)
                                (let ((_hd165743165783_
                                       (##car _tl165742165778_))
                                      (_tl165744165785_
                                       (##cdr _tl165742165778_)))
                                  (let ((_sys-type165788_ _hd165743165783_))
                                    (if (##null? _tl165744165785_)
                                        (_K165738165766_
                                         _sys-type165788_
                                         _sys-vendor165781_
                                         _sys-cpu165774_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self165730_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
