(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708165430)
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
      (lambda (_self181882_ _bind?181883_)
        (if (##fx< '2 (##structure-length _self181882_))
            (begin
              (##unchecked-structure-set!
               _self181882_
               'root
               '1
               (##structure-type _self181882_)
               '#f)
              (##unchecked-structure-set!
               _self181882_
               (make-table 'test: eq?)
               '2
               (##structure-type _self181882_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self181882_
                   '2
                   (##vector-length _self181882_)))
        (if _bind?181883_
            (begin
              (let ((__method186501
                     (method-ref _self181882_ 'bind-core-syntax-expanders!)))
                (if __method186501
                    (__method186501 _self181882_)
                    (error '"Missing method"
                           _self181882_
                           'bind-core-syntax-expanders!)))
              (let ((__method186502
                     (method-ref _self181882_ 'bind-core-macro-expanders!)))
                (if __method186502
                    (__method186502 _self181882_)
                    (error '"Missing method"
                           _self181882_
                           'bind-core-macro-expanders!)))
              (let ((__method186503
                     (method-ref _self181882_ 'bind-core-features!)))
                (if __method186503
                    (__method186503 _self181882_)
                    (error '"Missing method"
                           _self181882_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self181888_)
        (let ((_bind?181890_ '#t))
          (gx#root-context:::init!__% _self181888_ _bind?181890_))))
    (define gx#root-context:::init!
      (lambda _g186506_
        (let ((_g186505_ (##length _g186506_)))
          (cond ((##fx= _g186505_ 1)
                 (apply (lambda (_self181888_)
                          (gx#root-context:::init!__0 _self181888_))
                        _g186506_))
                ((##fx= _g186505_ 2)
                 (apply (lambda (_self181892_ _bind?181893_)
                          (gx#root-context:::init!__%
                           _self181892_
                           _bind?181893_))
                        _g186506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g186506_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t186462)
        (let ((__bind-core-syntax-expanders!186463
               (make-promise
                (lambda ()
                  (let ((__tmp186466
                         (direct-method-ref
                          __t186462
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp186466
                        __tmp186466
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!186464
               (make-promise
                (lambda ()
                  (let ((__tmp186467
                         (direct-method-ref
                          __t186462
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp186467
                        __tmp186467
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!186465
               (make-promise
                (lambda ()
                  (let ((__tmp186468
                         (direct-method-ref
                          __t186462
                          '#f
                          'bind-core-features!)))
                    (if __tmp186468
                        __tmp186468
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda181880181885_
                 (lambda (_self181882_ _bind?181883_)
                   (if (##fx< '2 (##structure-length _self181882_))
                       (begin
                         (##unchecked-structure-set!
                          _self181882_
                          'root
                          '1
                          (##structure-type _self181882_)
                          '#f)
                         (##unchecked-structure-set!
                          _self181882_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self181882_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self181882_
                              '2
                              (##vector-length _self181882_)))
                   (if _bind?181883_
                       (begin
                         ((force __bind-core-syntax-expanders!186463)
                          _self181882_)
                         ((force __bind-core-macro-expanders!186464)
                          _self181882_)
                         ((force __bind-core-features!186465) _self181882_))
                       '#!void))))
            (lambda _g186508_
              (let ((_g186507_ (##length _g186508_)))
                (cond ((##fx= _g186507_ 1)
                       (apply (lambda (_self181888_)
                                (let ((_bind?181890_ '#t))
                                  (_opt-lambda181880181885_
                                   _self181888_
                                   _bind?181890_)))
                              _g186508_))
                      ((##fx= _g186507_ 2)
                       (apply (lambda (_self181892_ _bind?181893_)
                                (_opt-lambda181880181885_
                                 _self181892_
                                 _bind?181893_))
                              _g186508_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g186508_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self181738_ _super181739_)
        (let ((_super181747_
               (let ((_$e181741_ _super181739_))
                 (if _$e181741_
                     _$e181741_
                     (let ((_$e181744_ (gx#core-context-root__0)))
                       (if _$e181744_
                           _$e181744_
                           (let ((__obj186504
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj186504)
                             __obj186504)))))))
          (if (##fx< '5 (##structure-length _self181738_))
              (begin
                (##unchecked-structure-set!
                 _self181738_
                 'top
                 '1
                 (##structure-type _self181738_)
                 '#f)
                (##unchecked-structure-set!
                 _self181738_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self181738_)
                 '#f)
                (##unchecked-structure-set!
                 _self181738_
                 _super181747_
                 '3
                 (##structure-type _self181738_)
                 '#f)
                (##unchecked-structure-set!
                 _self181738_
                 '#f
                 '4
                 (##structure-type _self181738_)
                 '#f)
                (##unchecked-structure-set!
                 _self181738_
                 '#f
                 '5
                 (##structure-type _self181738_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self181738_
                     '5
                     (##vector-length _self181738_))))))
    (define gx#top-context:::init!__0
      (lambda (_self181752_)
        (let ((_super181754_ '#f))
          (gx#top-context:::init!__% _self181752_ _super181754_))))
    (define gx#top-context:::init!
      (lambda _g186510_
        (let ((_g186509_ (##length _g186510_)))
          (cond ((##fx= _g186509_ 1)
                 (apply (lambda (_self181752_)
                          (gx#top-context:::init!__0 _self181752_))
                        _g186510_))
                ((##fx= _g186509_ 2)
                 (apply (lambda (_self181756_ _super181757_)
                          (gx#top-context:::init!__%
                           _self181756_
                           _super181757_))
                        _g186510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g186510_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self181469_ _bindings181470_)
        (for-each
         (lambda (_bind181472_)
           (let* ((_bind181473181480_ _bind181472_)
                  (_E181475181484_
                   (lambda ()
                     (error '"No clause matching" _bind181473181480_)))
                  (_K181476181593_
                   (lambda (_rest181487_ _id181488_)
                     (gx#core-context-put!
                      _self181469_
                      _id181488_
                      (##structure
                       gx#syntax-binding::t
                       _id181488_
                       _id181488_
                       '#f
                       (let* ((_rest181489181500_ _rest181487_)
                              (_E181491181504_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest181489181500_)))
                              (_K181492181569_
                               (lambda (_compiler181507_
                                        _expander181508_
                                        _key181509_)
                                 ((let* ((_key181510181523_ _key181509_)
                                         (_E181516181527_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key181510181523_))))
                                    (let ((_K181521181563_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K181520181556_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K181519181548_
                                           (lambda () gx#make-definition-form))
                                          (_K181518181540_
                                           (lambda () gx#make-special-form))
                                          (_K181517181532_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match181515181535_
                                              (lambda ()
                                                (if (##eq? _key181510181523_
                                                           'expr:)
                                                    (_K181517181532_)
                                                    (_E181516181527_))))
                                             (_try-match181514181543_
                                              (lambda ()
                                                (if (##eq? _key181510181523_
                                                           'special:)
                                                    (_K181518181540_)
                                                    (_try-match181515181535_))))
                                             (_try-match181513181551_
                                              (lambda ()
                                                (if (##eq? _key181510181523_
                                                           'define:)
                                                    (_K181519181548_)
                                                    (_try-match181514181543_))))
                                             (_try-match181512181559_
                                              (lambda ()
                                                (if (##eq? _key181510181523_
                                                           'module:)
                                                    (_K181520181556_)
                                                    (_try-match181513181551_)))))
                                        (if (##eq? _key181510181523_ 'top:)
                                            (_K181521181563_)
                                            (_try-match181512181559_)))))
                                  _expander181508_
                                  _id181488_
                                  (let ((_$e181566_ _compiler181507_))
                                    (if _$e181566_
                                        _$e181566_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest181489181500_)
                             (let ((_hd181493181572_
                                    (##car _rest181489181500_))
                                   (_tl181494181574_
                                    (##cdr _rest181489181500_)))
                               (let ((_key181577_ _hd181493181572_))
                                 (if (##pair? _tl181494181574_)
                                     (let ((_hd181495181579_
                                            (##car _tl181494181574_))
                                           (_tl181496181581_
                                            (##cdr _tl181494181574_)))
                                       (let ((_expander181584_
                                              _hd181495181579_))
                                         (if (##pair? _tl181496181581_)
                                             (let ((_hd181497181586_
                                                    (##car _tl181496181581_))
                                                   (_tl181498181588_
                                                    (##cdr _tl181496181581_)))
                                               (let ((_compiler181591_
                                                      _hd181497181586_))
                                                 (if (##null? _tl181498181588_)
                                                     (_K181492181569_
                                                      _compiler181591_
                                                      _expander181584_
                                                      _key181577_)
                                                     (_E181491181504_))))
                                             (_E181491181504_))))
                                     (_E181491181504_))))
                             (_E181491181504_))))))))
             (if (##pair? _bind181473181480_)
                 (let ((_hd181477181596_ (##car _bind181473181480_))
                       (_tl181478181598_ (##cdr _bind181473181480_)))
                   (let* ((_id181601_ _hd181477181596_)
                          (_rest181603_ _tl181478181598_))
                     (_K181476181593_ _rest181603_ _id181601_)))
                 (_E181475181484_))))
         _bindings181470_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self181608_)
        (let ((_bindings181610_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self181608_
           _bindings181610_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g186512_
        (let ((_g186511_ (##length _g186512_)))
          (cond ((##fx= _g186511_ 1)
                 (apply (lambda (_self181608_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self181608_))
                        _g186512_))
                ((##fx= _g186511_ 2)
                 (apply (lambda (_self181612_ _bindings181613_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self181612_
                           _bindings181613_))
                        _g186512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g186512_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self181241_ _bindings181242_)
        (for-each
         (lambda (_bind181244_)
           (let* ((_bind181245181252_ _bind181244_)
                  (_E181247181256_
                   (lambda ()
                     (error '"No clause matching" _bind181245181252_)))
                  (_K181248181324_
                   (lambda (_rest181259_ _id181260_)
                     (gx#core-context-put!
                      _self181241_
                      _id181260_
                      (##structure
                       gx#syntax-binding::t
                       _id181260_
                       _id181260_
                       '#f
                       (let* ((_rest181261181276_ _rest181259_)
                              (_E181265181280_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest181261181276_))))
                         (let ((_K181270181309_
                                (lambda (_core-id181307_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id181307_)))
                               (_K181267181294_
                                (lambda (_proc181292_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc181292_)))
                               (_K181266181285_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id181260_))))
                           (let ((_try-match181264181288_
                                  (lambda ()
                                    (if (##null? _rest181261181276_)
                                        (_K181266181285_)
                                        (_E181265181280_)))))
                             (if (##pair? _rest181261181276_)
                                 (let ((_tl181272181314_
                                        (##cdr _rest181261181276_))
                                       (_hd181271181312_
                                        (##car _rest181261181276_)))
                                   (if (##eq? _hd181271181312_ '=>)
                                       (if (##pair? _tl181272181314_)
                                           (let ((_tl181274181319_
                                                  (##cdr _tl181272181314_))
                                                 (_hd181273181317_
                                                  (##car _tl181272181314_)))
                                             (if (##null? _tl181274181319_)
                                                 (let ((_core-id181322_
                                                        _hd181273181317_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id181322_))
                                                 (_E181265181280_)))
                                           (if (##null? _tl181272181314_)
                                               (let ((_proc181302_
                                                      _hd181271181312_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc181302_))
                                               (_E181265181280_)))
                                       (if (##null? _tl181272181314_)
                                           (let ((_proc181302_
                                                  _hd181271181312_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc181302_))
                                           (_E181265181280_))))
                                 (_try-match181264181288_))))))))))
             (if (##pair? _bind181245181252_)
                 (let ((_hd181249181327_ (##car _bind181245181252_))
                       (_tl181250181329_ (##cdr _bind181245181252_)))
                   (let* ((_id181332_ _hd181249181327_)
                          (_rest181334_ _tl181250181329_))
                     (_K181248181324_ _rest181334_ _id181332_)))
                 (_E181247181256_))))
         _bindings181242_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self181339_)
        (let ((_bindings181341_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self181339_
           _bindings181341_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g186514_
        (let ((_g186513_ (##length _g186514_)))
          (cond ((##fx= _g186513_ 1)
                 (apply (lambda (_self181339_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self181339_))
                        _g186514_))
                ((##fx= _g186513_ 2)
                 (apply (lambda (_self181343_ _bindings181344_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self181343_
                           _bindings181344_))
                        _g186514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g186514_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self180985_)
        (letrec ((_linux-variant?180987_
                  (lambda (_sys-type181086_)
                    (let* ((_g181087181095_
                            (string-split
                             (symbol->string _sys-type181086_)
                             '#\-))
                           (_else181089181103_ (lambda () '#f))
                           (_K181091181108_
                            (lambda (_rest181106_)
                              (not (null? _rest181106_)))))
                      (if (##pair? _g181087181095_)
                          (let ((_hd181092181111_ (##car _g181087181095_))
                                (_tl181093181113_ (##cdr _g181087181095_)))
                            (if (equal? _hd181092181111_ '"linux")
                                (let ((_rest181116_ _tl181093181113_))
                                  (_K181091181108_ _rest181116_))
                                (_else181089181103_)))
                          (_else181089181103_)))))
                 (_bsd-variant180988_
                  (lambda (_sys-type181045_)
                    (let ((_sys-type-str181047_
                           (symbol->string _sys-type181045_)))
                      (let _lp181049_ ((_rest181051_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest181052181060_ _rest181051_)
                               (_else181054181068_ (lambda () '#f))
                               (_K181056181074_
                                (lambda (_rest181071_ _sys181072_)
                                  (if (string-prefix?
                                       _sys181072_
                                       _sys-type-str181047_)
                                      _sys181072_
                                      (_lp181049_ _rest181071_)))))
                          (if (##pair? _rest181052181060_)
                              (let ((_hd181057181077_
                                     (##car _rest181052181060_))
                                    (_tl181058181079_
                                     (##cdr _rest181052181060_)))
                                (let* ((_sys181082_ _hd181057181077_)
                                       (_rest181084_ _tl181058181079_))
                                  (_K181056181074_ _rest181084_ _sys181082_)))
                              (_else181054181068_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self180985_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self180985_)
          (let* ((_g180989181001_ (system-type))
                 (_else180991181009_ (lambda () '#!void))
                 (_K180993181021_
                  (lambda (_sys-type181012_ _sys-vendor181013_ _sys-cpu181014_)
                    (gx#core-bind-feature!__%
                     _sys-cpu181014_
                     '#f
                     '0
                     _self180985_)
                    (gx#core-bind-feature!__%
                     _sys-type181012_
                     '#f
                     '0
                     _self180985_)
                    (if (_linux-variant?180987_ _sys-type181012_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self180985_)
                        (let ((_$e181016_
                               (_bsd-variant180988_ _sys-type181012_)))
                          (if _$e181016_
                              ((lambda (_sys-prefix181019_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self180985_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix181019_)
                                  '#f
                                  '0
                                  _self180985_))
                               _$e181016_)
                              '#!void))))))
            (if (##pair? _g180989181001_)
                (let ((_hd180994181024_ (##car _g180989181001_))
                      (_tl180995181026_ (##cdr _g180989181001_)))
                  (let ((_sys-cpu181029_ _hd180994181024_))
                    (if (##pair? _tl180995181026_)
                        (let ((_hd180996181031_ (##car _tl180995181026_))
                              (_tl180997181033_ (##cdr _tl180995181026_)))
                          (let ((_sys-vendor181036_ _hd180996181031_))
                            (if (##pair? _tl180997181033_)
                                (let ((_hd180998181038_
                                       (##car _tl180997181033_))
                                      (_tl180999181040_
                                       (##cdr _tl180997181033_)))
                                  (let ((_sys-type181043_ _hd180998181038_))
                                    (if (##null? _tl180999181040_)
                                        (_K180993181021_
                                         _sys-type181043_
                                         _sys-vendor181036_
                                         _sys-cpu181029_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self180985_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
