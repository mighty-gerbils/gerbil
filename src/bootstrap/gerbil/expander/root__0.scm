(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708194425)
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
      (lambda (_self171207_ _bind?171208_)
        (if (##fx< '2 (##structure-length _self171207_))
            (begin
              (##unchecked-structure-set!
               _self171207_
               'root
               '1
               (##structure-type _self171207_)
               '#f)
              (##unchecked-structure-set!
               _self171207_
               (make-hash-table-eq)
               '2
               (##structure-type _self171207_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self171207_
                   '2
                   (##vector-length _self171207_)))
        (if _bind?171208_
            (begin
              (let ((__method175325
                     (method-ref _self171207_ 'bind-core-syntax-expanders!)))
                (if __method175325
                    (__method175325 _self171207_)
                    (error '"Missing method"
                           _self171207_
                           'bind-core-syntax-expanders!)))
              (let ((__method175326
                     (method-ref _self171207_ 'bind-core-macro-expanders!)))
                (if __method175326
                    (__method175326 _self171207_)
                    (error '"Missing method"
                           _self171207_
                           'bind-core-macro-expanders!)))
              (let ((__method175327
                     (method-ref _self171207_ 'bind-core-features!)))
                (if __method175327
                    (__method175327 _self171207_)
                    (error '"Missing method"
                           _self171207_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self171213_)
        (let ((_bind?171215_ '#t))
          (gx#root-context:::init!__% _self171213_ _bind?171215_))))
    (define gx#root-context:::init!
      (lambda _g175330_
        (let ((_g175329_ (##length _g175330_)))
          (cond ((##fx= _g175329_ 1)
                 (apply (lambda (_self171213_)
                          (gx#root-context:::init!__0 _self171213_))
                        _g175330_))
                ((##fx= _g175329_ 2)
                 (apply (lambda (_self171217_ _bind?171218_)
                          (gx#root-context:::init!__%
                           _self171217_
                           _bind?171218_))
                        _g175330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g175330_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t175286)
        (let ((__bind-core-syntax-expanders!175287
               (make-promise
                (lambda ()
                  (let ((__tmp175290
                         (direct-method-ref
                          __t175286
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp175290
                        __tmp175290
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!175288
               (make-promise
                (lambda ()
                  (let ((__tmp175291
                         (direct-method-ref
                          __t175286
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp175291
                        __tmp175291
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!175289
               (make-promise
                (lambda ()
                  (let ((__tmp175292
                         (direct-method-ref
                          __t175286
                          '#f
                          'bind-core-features!)))
                    (if __tmp175292
                        __tmp175292
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda171205171210_
                 (lambda (_self171207_ _bind?171208_)
                   (if (##fx< '2 (##structure-length _self171207_))
                       (begin
                         (##unchecked-structure-set!
                          _self171207_
                          'root
                          '1
                          (##structure-type _self171207_)
                          '#f)
                         (##unchecked-structure-set!
                          _self171207_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self171207_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self171207_
                              '2
                              (##vector-length _self171207_)))
                   (if _bind?171208_
                       (begin
                         ((force __bind-core-syntax-expanders!175287)
                          _self171207_)
                         ((force __bind-core-macro-expanders!175288)
                          _self171207_)
                         ((force __bind-core-features!175289) _self171207_))
                       '#!void))))
            (lambda _g175332_
              (let ((_g175331_ (##length _g175332_)))
                (cond ((##fx= _g175331_ 1)
                       (apply (lambda (_self171213_)
                                (let ((_bind?171215_ '#t))
                                  (_opt-lambda171205171210_
                                   _self171213_
                                   _bind?171215_)))
                              _g175332_))
                      ((##fx= _g175331_ 2)
                       (apply (lambda (_self171217_ _bind?171218_)
                                (_opt-lambda171205171210_
                                 _self171217_
                                 _bind?171218_))
                              _g175332_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g175332_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self171063_ _super171064_)
        (let ((_super171072_
               (let ((_$e171066_ _super171064_))
                 (if _$e171066_
                     _$e171066_
                     (let ((_$e171069_ (gx#core-context-root__0)))
                       (if _$e171069_
                           _$e171069_
                           (let ((__obj175328
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj175328)
                             __obj175328)))))))
          (if (##fx< '5 (##structure-length _self171063_))
              (begin
                (##unchecked-structure-set!
                 _self171063_
                 'top
                 '1
                 (##structure-type _self171063_)
                 '#f)
                (##unchecked-structure-set!
                 _self171063_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self171063_)
                 '#f)
                (##unchecked-structure-set!
                 _self171063_
                 _super171072_
                 '3
                 (##structure-type _self171063_)
                 '#f)
                (##unchecked-structure-set!
                 _self171063_
                 '#f
                 '4
                 (##structure-type _self171063_)
                 '#f)
                (##unchecked-structure-set!
                 _self171063_
                 '#f
                 '5
                 (##structure-type _self171063_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self171063_
                     '5
                     (##vector-length _self171063_))))))
    (define gx#top-context:::init!__0
      (lambda (_self171077_)
        (let ((_super171079_ '#f))
          (gx#top-context:::init!__% _self171077_ _super171079_))))
    (define gx#top-context:::init!
      (lambda _g175334_
        (let ((_g175333_ (##length _g175334_)))
          (cond ((##fx= _g175333_ 1)
                 (apply (lambda (_self171077_)
                          (gx#top-context:::init!__0 _self171077_))
                        _g175334_))
                ((##fx= _g175333_ 2)
                 (apply (lambda (_self171081_ _super171082_)
                          (gx#top-context:::init!__%
                           _self171081_
                           _super171082_))
                        _g175334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g175334_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self170794_ _bindings170795_)
        (for-each
         (lambda (_bind170797_)
           (let* ((_bind170798170805_ _bind170797_)
                  (_E170800170809_
                   (lambda ()
                     (error '"No clause matching" _bind170798170805_)))
                  (_K170801170918_
                   (lambda (_rest170812_ _id170813_)
                     (gx#core-context-put!
                      _self170794_
                      _id170813_
                      (##structure
                       gx#syntax-binding::t
                       _id170813_
                       _id170813_
                       '#f
                       (let* ((_rest170814170825_ _rest170812_)
                              (_E170816170829_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest170814170825_)))
                              (_K170817170894_
                               (lambda (_compiler170832_
                                        _expander170833_
                                        _key170834_)
                                 ((let* ((_key170835170848_ _key170834_)
                                         (_E170841170852_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key170835170848_))))
                                    (let ((_K170846170888_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K170845170881_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K170844170873_
                                           (lambda () gx#make-definition-form))
                                          (_K170843170865_
                                           (lambda () gx#make-special-form))
                                          (_K170842170857_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match170840170860_
                                              (lambda ()
                                                (if (##eq? _key170835170848_
                                                           'expr:)
                                                    (_K170842170857_)
                                                    (_E170841170852_))))
                                             (_try-match170839170868_
                                              (lambda ()
                                                (if (##eq? _key170835170848_
                                                           'special:)
                                                    (_K170843170865_)
                                                    (_try-match170840170860_))))
                                             (_try-match170838170876_
                                              (lambda ()
                                                (if (##eq? _key170835170848_
                                                           'define:)
                                                    (_K170844170873_)
                                                    (_try-match170839170868_))))
                                             (_try-match170837170884_
                                              (lambda ()
                                                (if (##eq? _key170835170848_
                                                           'module:)
                                                    (_K170845170881_)
                                                    (_try-match170838170876_)))))
                                        (if (##eq? _key170835170848_ 'top:)
                                            (_K170846170888_)
                                            (_try-match170837170884_)))))
                                  _expander170833_
                                  _id170813_
                                  (let ((_$e170891_ _compiler170832_))
                                    (if _$e170891_
                                        _$e170891_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest170814170825_)
                             (let ((_hd170818170897_
                                    (##car _rest170814170825_))
                                   (_tl170819170899_
                                    (##cdr _rest170814170825_)))
                               (let ((_key170902_ _hd170818170897_))
                                 (if (##pair? _tl170819170899_)
                                     (let ((_hd170820170904_
                                            (##car _tl170819170899_))
                                           (_tl170821170906_
                                            (##cdr _tl170819170899_)))
                                       (let ((_expander170909_
                                              _hd170820170904_))
                                         (if (##pair? _tl170821170906_)
                                             (let ((_hd170822170911_
                                                    (##car _tl170821170906_))
                                                   (_tl170823170913_
                                                    (##cdr _tl170821170906_)))
                                               (let ((_compiler170916_
                                                      _hd170822170911_))
                                                 (if (##null? _tl170823170913_)
                                                     (_K170817170894_
                                                      _compiler170916_
                                                      _expander170909_
                                                      _key170902_)
                                                     (_E170816170829_))))
                                             (_E170816170829_))))
                                     (_E170816170829_))))
                             (_E170816170829_))))))))
             (if (##pair? _bind170798170805_)
                 (let ((_hd170802170921_ (##car _bind170798170805_))
                       (_tl170803170923_ (##cdr _bind170798170805_)))
                   (let* ((_id170926_ _hd170802170921_)
                          (_rest170928_ _tl170803170923_))
                     (_K170801170918_ _rest170928_ _id170926_)))
                 (_E170800170809_))))
         _bindings170795_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self170933_)
        (let ((_bindings170935_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self170933_
           _bindings170935_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g175336_
        (let ((_g175335_ (##length _g175336_)))
          (cond ((##fx= _g175335_ 1)
                 (apply (lambda (_self170933_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self170933_))
                        _g175336_))
                ((##fx= _g175335_ 2)
                 (apply (lambda (_self170937_ _bindings170938_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self170937_
                           _bindings170938_))
                        _g175336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g175336_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self170566_ _bindings170567_)
        (for-each
         (lambda (_bind170569_)
           (let* ((_bind170570170577_ _bind170569_)
                  (_E170572170581_
                   (lambda ()
                     (error '"No clause matching" _bind170570170577_)))
                  (_K170573170649_
                   (lambda (_rest170584_ _id170585_)
                     (gx#core-context-put!
                      _self170566_
                      _id170585_
                      (##structure
                       gx#syntax-binding::t
                       _id170585_
                       _id170585_
                       '#f
                       (let* ((_rest170586170601_ _rest170584_)
                              (_E170590170605_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest170586170601_))))
                         (let ((_K170595170634_
                                (lambda (_core-id170632_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id170632_)))
                               (_K170592170619_
                                (lambda (_proc170617_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc170617_)))
                               (_K170591170610_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id170585_))))
                           (let ((_try-match170589170613_
                                  (lambda ()
                                    (if (##null? _rest170586170601_)
                                        (_K170591170610_)
                                        (_E170590170605_)))))
                             (if (##pair? _rest170586170601_)
                                 (let ((_tl170597170639_
                                        (##cdr _rest170586170601_))
                                       (_hd170596170637_
                                        (##car _rest170586170601_)))
                                   (if (##eq? _hd170596170637_ '=>)
                                       (if (##pair? _tl170597170639_)
                                           (let ((_tl170599170644_
                                                  (##cdr _tl170597170639_))
                                                 (_hd170598170642_
                                                  (##car _tl170597170639_)))
                                             (if (##null? _tl170599170644_)
                                                 (let ((_core-id170647_
                                                        _hd170598170642_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id170647_))
                                                 (_E170590170605_)))
                                           (if (##null? _tl170597170639_)
                                               (let ((_proc170627_
                                                      _hd170596170637_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc170627_))
                                               (_E170590170605_)))
                                       (if (##null? _tl170597170639_)
                                           (let ((_proc170627_
                                                  _hd170596170637_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc170627_))
                                           (_E170590170605_))))
                                 (_try-match170589170613_))))))))))
             (if (##pair? _bind170570170577_)
                 (let ((_hd170574170652_ (##car _bind170570170577_))
                       (_tl170575170654_ (##cdr _bind170570170577_)))
                   (let* ((_id170657_ _hd170574170652_)
                          (_rest170659_ _tl170575170654_))
                     (_K170573170649_ _rest170659_ _id170657_)))
                 (_E170572170581_))))
         _bindings170567_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self170664_)
        (let ((_bindings170666_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self170664_
           _bindings170666_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g175338_
        (let ((_g175337_ (##length _g175338_)))
          (cond ((##fx= _g175337_ 1)
                 (apply (lambda (_self170664_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self170664_))
                        _g175338_))
                ((##fx= _g175337_ 2)
                 (apply (lambda (_self170668_ _bindings170669_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self170668_
                           _bindings170669_))
                        _g175338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g175338_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self170310_)
        (letrec ((_linux-variant?170312_
                  (lambda (_sys-type170411_)
                    (let* ((_g170412170420_
                            (string-split
                             (symbol->string _sys-type170411_)
                             '#\-))
                           (_else170414170428_ (lambda () '#f))
                           (_K170416170433_
                            (lambda (_rest170431_)
                              (not (null? _rest170431_)))))
                      (if (##pair? _g170412170420_)
                          (let ((_hd170417170436_ (##car _g170412170420_))
                                (_tl170418170438_ (##cdr _g170412170420_)))
                            (if (equal? _hd170417170436_ '"linux")
                                (let ((_rest170441_ _tl170418170438_))
                                  (_K170416170433_ _rest170441_))
                                (_else170414170428_)))
                          (_else170414170428_)))))
                 (_bsd-variant170313_
                  (lambda (_sys-type170370_)
                    (let ((_sys-type-str170372_
                           (symbol->string _sys-type170370_)))
                      (let _lp170374_ ((_rest170376_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest170377170385_ _rest170376_)
                               (_else170379170393_ (lambda () '#f))
                               (_K170381170399_
                                (lambda (_rest170396_ _sys170397_)
                                  (if (string-prefix?
                                       _sys170397_
                                       _sys-type-str170372_)
                                      _sys170397_
                                      (_lp170374_ _rest170396_)))))
                          (if (##pair? _rest170377170385_)
                              (let ((_hd170382170402_
                                     (##car _rest170377170385_))
                                    (_tl170383170404_
                                     (##cdr _rest170377170385_)))
                                (let* ((_sys170407_ _hd170382170402_)
                                       (_rest170409_ _tl170383170404_))
                                  (_K170381170399_ _rest170409_ _sys170407_)))
                              (_else170379170393_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self170310_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self170310_)
          (let* ((_g170314170326_ (system-type))
                 (_else170316170334_ (lambda () '#!void))
                 (_K170318170346_
                  (lambda (_sys-type170337_ _sys-vendor170338_ _sys-cpu170339_)
                    (gx#core-bind-feature!__%
                     _sys-cpu170339_
                     '#f
                     '0
                     _self170310_)
                    (gx#core-bind-feature!__%
                     _sys-type170337_
                     '#f
                     '0
                     _self170310_)
                    (if (_linux-variant?170312_ _sys-type170337_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self170310_)
                        (let ((_$e170341_
                               (_bsd-variant170313_ _sys-type170337_)))
                          (if _$e170341_
                              ((lambda (_sys-prefix170344_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self170310_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix170344_)
                                  '#f
                                  '0
                                  _self170310_))
                               _$e170341_)
                              '#!void))))))
            (if (##pair? _g170314170326_)
                (let ((_hd170319170349_ (##car _g170314170326_))
                      (_tl170320170351_ (##cdr _g170314170326_)))
                  (let ((_sys-cpu170354_ _hd170319170349_))
                    (if (##pair? _tl170320170351_)
                        (let ((_hd170321170356_ (##car _tl170320170351_))
                              (_tl170322170358_ (##cdr _tl170320170351_)))
                          (let ((_sys-vendor170361_ _hd170321170356_))
                            (if (##pair? _tl170322170358_)
                                (let ((_hd170323170363_
                                       (##car _tl170322170358_))
                                      (_tl170324170365_
                                       (##cdr _tl170322170358_)))
                                  (let ((_sys-type170368_ _hd170323170363_))
                                    (if (##null? _tl170324170365_)
                                        (_K170318170346_
                                         _sys-type170368_
                                         _sys-vendor170361_
                                         _sys-cpu170354_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self170310_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
