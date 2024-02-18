(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708280334)
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
      (lambda (_self184154_ _bind?184155_)
        (if (##fx< '2 (##structure-length _self184154_))
            (begin
              (##unchecked-structure-set!
               _self184154_
               'root
               '1
               (##structure-type _self184154_)
               '#f)
              (##unchecked-structure-set!
               _self184154_
               (make-hash-table-eq)
               '2
               (##structure-type _self184154_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self184154_
                   '2
                   (##vector-length _self184154_)))
        (if _bind?184155_
            (begin
              (let ((__method188272
                     (method-ref _self184154_ 'bind-core-syntax-expanders!)))
                (if __method188272
                    (__method188272 _self184154_)
                    (error '"Missing method"
                           _self184154_
                           'bind-core-syntax-expanders!)))
              (let ((__method188273
                     (method-ref _self184154_ 'bind-core-macro-expanders!)))
                (if __method188273
                    (__method188273 _self184154_)
                    (error '"Missing method"
                           _self184154_
                           'bind-core-macro-expanders!)))
              (let ((__method188274
                     (method-ref _self184154_ 'bind-core-features!)))
                (if __method188274
                    (__method188274 _self184154_)
                    (error '"Missing method"
                           _self184154_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self184160_)
        (let ((_bind?184162_ '#t))
          (gx#root-context:::init!__% _self184160_ _bind?184162_))))
    (define gx#root-context:::init!
      (lambda _g188277_
        (let ((_g188276_ (##length _g188277_)))
          (cond ((##fx= _g188276_ 1)
                 (apply (lambda (_self184160_)
                          (gx#root-context:::init!__0 _self184160_))
                        _g188277_))
                ((##fx= _g188276_ 2)
                 (apply (lambda (_self184164_ _bind?184165_)
                          (gx#root-context:::init!__%
                           _self184164_
                           _bind?184165_))
                        _g188277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g188277_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t188233)
        (let ((__bind-core-macro-expanders!188234
               (make-promise
                (lambda ()
                  (let ((__tmp188237
                         (direct-method-ref
                          __t188233
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp188237
                        __tmp188237
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!188235
               (make-promise
                (lambda ()
                  (let ((__tmp188238
                         (direct-method-ref
                          __t188233
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp188238
                        __tmp188238
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!188236
               (make-promise
                (lambda ()
                  (let ((__tmp188239
                         (direct-method-ref
                          __t188233
                          '#f
                          'bind-core-features!)))
                    (if __tmp188239
                        __tmp188239
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda184152184157_
                 (lambda (_self184154_ _bind?184155_)
                   (if (##fx< '2 (##structure-length _self184154_))
                       (begin
                         (##unchecked-structure-set!
                          _self184154_
                          'root
                          '1
                          (##structure-type _self184154_)
                          '#f)
                         (##unchecked-structure-set!
                          _self184154_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self184154_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self184154_
                              '2
                              (##vector-length _self184154_)))
                   (if _bind?184155_
                       (begin
                         ((force __bind-core-syntax-expanders!188235)
                          _self184154_)
                         ((force __bind-core-macro-expanders!188234)
                          _self184154_)
                         ((force __bind-core-features!188236) _self184154_))
                       '#!void))))
            (lambda _g188279_
              (let ((_g188278_ (##length _g188279_)))
                (cond ((##fx= _g188278_ 1)
                       (apply (lambda (_self184160_)
                                (let ((_bind?184162_ '#t))
                                  (_opt-lambda184152184157_
                                   _self184160_
                                   _bind?184162_)))
                              _g188279_))
                      ((##fx= _g188278_ 2)
                       (apply (lambda (_self184164_ _bind?184165_)
                                (_opt-lambda184152184157_
                                 _self184164_
                                 _bind?184165_))
                              _g188279_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g188279_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self184010_ _super184011_)
        (let ((_super184019_
               (let ((_$e184013_ _super184011_))
                 (if _$e184013_
                     _$e184013_
                     (let ((_$e184016_ (gx#core-context-root__0)))
                       (if _$e184016_
                           _$e184016_
                           (let ((__obj188275
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj188275)
                             __obj188275)))))))
          (if (##fx< '5 (##structure-length _self184010_))
              (begin
                (##unchecked-structure-set!
                 _self184010_
                 'top
                 '1
                 (##structure-type _self184010_)
                 '#f)
                (##unchecked-structure-set!
                 _self184010_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self184010_)
                 '#f)
                (##unchecked-structure-set!
                 _self184010_
                 _super184019_
                 '3
                 (##structure-type _self184010_)
                 '#f)
                (##unchecked-structure-set!
                 _self184010_
                 '#f
                 '4
                 (##structure-type _self184010_)
                 '#f)
                (##unchecked-structure-set!
                 _self184010_
                 '#f
                 '5
                 (##structure-type _self184010_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self184010_
                     '5
                     (##vector-length _self184010_))))))
    (define gx#top-context:::init!__0
      (lambda (_self184024_)
        (let ((_super184026_ '#f))
          (gx#top-context:::init!__% _self184024_ _super184026_))))
    (define gx#top-context:::init!
      (lambda _g188281_
        (let ((_g188280_ (##length _g188281_)))
          (cond ((##fx= _g188280_ 1)
                 (apply (lambda (_self184024_)
                          (gx#top-context:::init!__0 _self184024_))
                        _g188281_))
                ((##fx= _g188280_ 2)
                 (apply (lambda (_self184028_ _super184029_)
                          (gx#top-context:::init!__%
                           _self184028_
                           _super184029_))
                        _g188281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g188281_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self183741_ _bindings183742_)
        (for-each
         (lambda (_bind183744_)
           (let* ((_bind183745183752_ _bind183744_)
                  (_E183747183756_
                   (lambda ()
                     (error '"No clause matching" _bind183745183752_)))
                  (_K183748183865_
                   (lambda (_rest183759_ _id183760_)
                     (gx#core-context-put!
                      _self183741_
                      _id183760_
                      (##structure
                       gx#syntax-binding::t
                       _id183760_
                       _id183760_
                       '#f
                       (let* ((_rest183761183772_ _rest183759_)
                              (_E183763183776_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest183761183772_)))
                              (_K183764183841_
                               (lambda (_compiler183779_
                                        _expander183780_
                                        _key183781_)
                                 ((let* ((_key183782183795_ _key183781_)
                                         (_E183788183799_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key183782183795_))))
                                    (let ((_K183793183835_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K183792183828_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K183791183820_
                                           (lambda () gx#make-definition-form))
                                          (_K183790183812_
                                           (lambda () gx#make-special-form))
                                          (_K183789183804_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match183787183807_
                                              (lambda ()
                                                (if (##eq? _key183782183795_
                                                           'expr:)
                                                    (_K183789183804_)
                                                    (_E183788183799_))))
                                             (_try-match183786183815_
                                              (lambda ()
                                                (if (##eq? _key183782183795_
                                                           'special:)
                                                    (_K183790183812_)
                                                    (_try-match183787183807_))))
                                             (_try-match183785183823_
                                              (lambda ()
                                                (if (##eq? _key183782183795_
                                                           'define:)
                                                    (_K183791183820_)
                                                    (_try-match183786183815_))))
                                             (_try-match183784183831_
                                              (lambda ()
                                                (if (##eq? _key183782183795_
                                                           'module:)
                                                    (_K183792183828_)
                                                    (_try-match183785183823_)))))
                                        (if (##eq? _key183782183795_ 'top:)
                                            (_K183793183835_)
                                            (_try-match183784183831_)))))
                                  _expander183780_
                                  _id183760_
                                  (let ((_$e183838_ _compiler183779_))
                                    (if _$e183838_
                                        _$e183838_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest183761183772_)
                             (let ((_hd183765183844_
                                    (##car _rest183761183772_))
                                   (_tl183766183846_
                                    (##cdr _rest183761183772_)))
                               (let ((_key183849_ _hd183765183844_))
                                 (if (##pair? _tl183766183846_)
                                     (let ((_hd183767183851_
                                            (##car _tl183766183846_))
                                           (_tl183768183853_
                                            (##cdr _tl183766183846_)))
                                       (let ((_expander183856_
                                              _hd183767183851_))
                                         (if (##pair? _tl183768183853_)
                                             (let ((_hd183769183858_
                                                    (##car _tl183768183853_))
                                                   (_tl183770183860_
                                                    (##cdr _tl183768183853_)))
                                               (let ((_compiler183863_
                                                      _hd183769183858_))
                                                 (if (##null? _tl183770183860_)
                                                     (_K183764183841_
                                                      _compiler183863_
                                                      _expander183856_
                                                      _key183849_)
                                                     (_E183763183776_))))
                                             (_E183763183776_))))
                                     (_E183763183776_))))
                             (_E183763183776_))))))))
             (if (##pair? _bind183745183752_)
                 (let ((_hd183749183868_ (##car _bind183745183752_))
                       (_tl183750183870_ (##cdr _bind183745183752_)))
                   (let* ((_id183873_ _hd183749183868_)
                          (_rest183875_ _tl183750183870_))
                     (_K183748183865_ _rest183875_ _id183873_)))
                 (_E183747183756_))))
         _bindings183742_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self183880_)
        (let ((_bindings183882_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self183880_
           _bindings183882_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g188283_
        (let ((_g188282_ (##length _g188283_)))
          (cond ((##fx= _g188282_ 1)
                 (apply (lambda (_self183880_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self183880_))
                        _g188283_))
                ((##fx= _g188282_ 2)
                 (apply (lambda (_self183884_ _bindings183885_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self183884_
                           _bindings183885_))
                        _g188283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g188283_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self183513_ _bindings183514_)
        (for-each
         (lambda (_bind183516_)
           (let* ((_bind183517183524_ _bind183516_)
                  (_E183519183528_
                   (lambda ()
                     (error '"No clause matching" _bind183517183524_)))
                  (_K183520183596_
                   (lambda (_rest183531_ _id183532_)
                     (gx#core-context-put!
                      _self183513_
                      _id183532_
                      (##structure
                       gx#syntax-binding::t
                       _id183532_
                       _id183532_
                       '#f
                       (let* ((_rest183533183548_ _rest183531_)
                              (_E183537183552_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest183533183548_))))
                         (let ((_K183542183581_
                                (lambda (_core-id183579_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id183579_)))
                               (_K183539183566_
                                (lambda (_proc183564_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc183564_)))
                               (_K183538183557_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id183532_))))
                           (let ((_try-match183536183560_
                                  (lambda ()
                                    (if (##null? _rest183533183548_)
                                        (_K183538183557_)
                                        (_E183537183552_)))))
                             (if (##pair? _rest183533183548_)
                                 (let ((_tl183544183586_
                                        (##cdr _rest183533183548_))
                                       (_hd183543183584_
                                        (##car _rest183533183548_)))
                                   (if (##eq? _hd183543183584_ '=>)
                                       (if (##pair? _tl183544183586_)
                                           (let ((_tl183546183591_
                                                  (##cdr _tl183544183586_))
                                                 (_hd183545183589_
                                                  (##car _tl183544183586_)))
                                             (if (##null? _tl183546183591_)
                                                 (let ((_core-id183594_
                                                        _hd183545183589_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id183594_))
                                                 (_E183537183552_)))
                                           (if (##null? _tl183544183586_)
                                               (let ((_proc183574_
                                                      _hd183543183584_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc183574_))
                                               (_E183537183552_)))
                                       (if (##null? _tl183544183586_)
                                           (let ((_proc183574_
                                                  _hd183543183584_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc183574_))
                                           (_E183537183552_))))
                                 (_try-match183536183560_))))))))))
             (if (##pair? _bind183517183524_)
                 (let ((_hd183521183599_ (##car _bind183517183524_))
                       (_tl183522183601_ (##cdr _bind183517183524_)))
                   (let* ((_id183604_ _hd183521183599_)
                          (_rest183606_ _tl183522183601_))
                     (_K183520183596_ _rest183606_ _id183604_)))
                 (_E183519183528_))))
         _bindings183514_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self183611_)
        (let ((_bindings183613_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self183611_
           _bindings183613_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g188285_
        (let ((_g188284_ (##length _g188285_)))
          (cond ((##fx= _g188284_ 1)
                 (apply (lambda (_self183611_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self183611_))
                        _g188285_))
                ((##fx= _g188284_ 2)
                 (apply (lambda (_self183615_ _bindings183616_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self183615_
                           _bindings183616_))
                        _g188285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g188285_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self183257_)
        (letrec ((_linux-variant?183259_
                  (lambda (_sys-type183358_)
                    (let* ((_g183359183367_
                            (string-split
                             (symbol->string _sys-type183358_)
                             '#\-))
                           (_else183361183375_ (lambda () '#f))
                           (_K183363183380_
                            (lambda (_rest183378_)
                              (not (null? _rest183378_)))))
                      (if (##pair? _g183359183367_)
                          (let ((_hd183364183383_ (##car _g183359183367_))
                                (_tl183365183385_ (##cdr _g183359183367_)))
                            (if (equal? _hd183364183383_ '"linux")
                                (let ((_rest183388_ _tl183365183385_))
                                  (_K183363183380_ _rest183388_))
                                (_else183361183375_)))
                          (_else183361183375_)))))
                 (_bsd-variant183260_
                  (lambda (_sys-type183317_)
                    (let ((_sys-type-str183319_
                           (symbol->string _sys-type183317_)))
                      (let _lp183321_ ((_rest183323_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest183324183332_ _rest183323_)
                               (_else183326183340_ (lambda () '#f))
                               (_K183328183346_
                                (lambda (_rest183343_ _sys183344_)
                                  (if (string-prefix?
                                       _sys183344_
                                       _sys-type-str183319_)
                                      _sys183344_
                                      (_lp183321_ _rest183343_)))))
                          (if (##pair? _rest183324183332_)
                              (let ((_hd183329183349_
                                     (##car _rest183324183332_))
                                    (_tl183330183351_
                                     (##cdr _rest183324183332_)))
                                (let* ((_sys183354_ _hd183329183349_)
                                       (_rest183356_ _tl183330183351_))
                                  (_K183328183346_ _rest183356_ _sys183354_)))
                              (_else183326183340_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self183257_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self183257_)
          (let* ((_g183261183273_ (system-type))
                 (_else183263183281_ (lambda () '#!void))
                 (_K183265183293_
                  (lambda (_sys-type183284_ _sys-vendor183285_ _sys-cpu183286_)
                    (gx#core-bind-feature!__%
                     _sys-cpu183286_
                     '#f
                     '0
                     _self183257_)
                    (gx#core-bind-feature!__%
                     _sys-type183284_
                     '#f
                     '0
                     _self183257_)
                    (if (_linux-variant?183259_ _sys-type183284_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self183257_)
                        (let ((_$e183288_
                               (_bsd-variant183260_ _sys-type183284_)))
                          (if _$e183288_
                              ((lambda (_sys-prefix183291_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self183257_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix183291_)
                                  '#f
                                  '0
                                  _self183257_))
                               _$e183288_)
                              '#!void))))))
            (if (##pair? _g183261183273_)
                (let ((_hd183266183296_ (##car _g183261183273_))
                      (_tl183267183298_ (##cdr _g183261183273_)))
                  (let ((_sys-cpu183301_ _hd183266183296_))
                    (if (##pair? _tl183267183298_)
                        (let ((_hd183268183303_ (##car _tl183267183298_))
                              (_tl183269183305_ (##cdr _tl183267183298_)))
                          (let ((_sys-vendor183308_ _hd183268183303_))
                            (if (##pair? _tl183269183305_)
                                (let ((_hd183270183310_
                                       (##car _tl183269183305_))
                                      (_tl183271183312_
                                       (##cdr _tl183269183305_)))
                                  (let ((_sys-type183315_ _hd183270183310_))
                                    (if (##null? _tl183271183312_)
                                        (_K183265183293_
                                         _sys-type183315_
                                         _sys-vendor183308_
                                         _sys-cpu183301_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self183257_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
