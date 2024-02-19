(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708353891)
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
      (lambda (_self94843_ _bind?94844_)
        (if (##fx< '2 (##structure-length _self94843_))
            (begin
              (##unchecked-structure-set!
               _self94843_
               'root
               '1
               (##structure-type _self94843_)
               '#f)
              (##unchecked-structure-set!
               _self94843_
               (make-hash-table-eq)
               '2
               (##structure-type _self94843_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94843_
                   '2
                   (##vector-length _self94843_)))
        (if _bind?94844_
            (begin
              (let ((__method94894
                     (method-ref _self94843_ 'bind-core-syntax-expanders!)))
                (if __method94894
                    (__method94894 _self94843_)
                    (error '"Missing method"
                           _self94843_
                           'bind-core-syntax-expanders!)))
              (let ((__method94895
                     (method-ref _self94843_ 'bind-core-macro-expanders!)))
                (if __method94895
                    (__method94895 _self94843_)
                    (error '"Missing method"
                           _self94843_
                           'bind-core-macro-expanders!)))
              (let ((__method94896
                     (method-ref _self94843_ 'bind-core-features!)))
                (if __method94896
                    (__method94896 _self94843_)
                    (error '"Missing method"
                           _self94843_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self94849_)
        (let ((_bind?94851_ '#t))
          (gx#root-context:::init!__% _self94849_ _bind?94851_))))
    (define gx#root-context:::init!
      (lambda _g94899_
        (let ((_g94898_ (##length _g94899_)))
          (cond ((##fx= _g94898_ 1)
                 (apply (lambda (_self94849_)
                          (gx#root-context:::init!__0 _self94849_))
                        _g94899_))
                ((##fx= _g94898_ 2)
                 (apply (lambda (_self94853_ _bind?94854_)
                          (gx#root-context:::init!__%
                           _self94853_
                           _bind?94854_))
                        _g94899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g94899_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t94855)
        (let ((__bind-core-syntax-expanders!94856
               (make-promise
                (lambda ()
                  (let ((__tmp94859
                         (direct-method-ref
                          __t94855
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp94859
                        __tmp94859
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!94857
               (make-promise
                (lambda ()
                  (let ((__tmp94860
                         (direct-method-ref
                          __t94855
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp94860
                        __tmp94860
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!94858
               (make-promise
                (lambda ()
                  (let ((__tmp94861
                         (direct-method-ref
                          __t94855
                          '#f
                          'bind-core-features!)))
                    (if __tmp94861
                        __tmp94861
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda9484194846_
                 (lambda (_self94843_ _bind?94844_)
                   (if (##fx< '2 (##structure-length _self94843_))
                       (begin
                         (##unchecked-structure-set!
                          _self94843_
                          'root
                          '1
                          (##structure-type _self94843_)
                          '#f)
                         (##unchecked-structure-set!
                          _self94843_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self94843_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self94843_
                              '2
                              (##vector-length _self94843_)))
                   (if _bind?94844_
                       (begin
                         ((force __bind-core-syntax-expanders!94856)
                          _self94843_)
                         ((force __bind-core-macro-expanders!94857)
                          _self94843_)
                         ((force __bind-core-features!94858) _self94843_))
                       '#!void))))
            (lambda _g94901_
              (let ((_g94900_ (##length _g94901_)))
                (cond ((##fx= _g94900_ 1)
                       (apply (lambda (_self94849_)
                                (let ((_bind?94851_ '#t))
                                  (_opt-lambda9484194846_
                                   _self94849_
                                   _bind?94851_)))
                              _g94901_))
                      ((##fx= _g94900_ 2)
                       (apply (lambda (_self94853_ _bind?94854_)
                                (_opt-lambda9484194846_
                                 _self94853_
                                 _bind?94854_))
                              _g94901_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g94901_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self94699_ _super94700_)
        (let ((_super94708_
               (let ((_$e94702_ _super94700_))
                 (if _$e94702_
                     _$e94702_
                     (let ((_$e94705_ (gx#core-context-root__0)))
                       (if _$e94705_
                           _$e94705_
                           (let ((__obj94897
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj94897)
                             __obj94897)))))))
          (if (##fx< '5 (##structure-length _self94699_))
              (begin
                (##unchecked-structure-set!
                 _self94699_
                 'top
                 '1
                 (##structure-type _self94699_)
                 '#f)
                (##unchecked-structure-set!
                 _self94699_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self94699_)
                 '#f)
                (##unchecked-structure-set!
                 _self94699_
                 _super94708_
                 '3
                 (##structure-type _self94699_)
                 '#f)
                (##unchecked-structure-set!
                 _self94699_
                 '#f
                 '4
                 (##structure-type _self94699_)
                 '#f)
                (##unchecked-structure-set!
                 _self94699_
                 '#f
                 '5
                 (##structure-type _self94699_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self94699_
                     '5
                     (##vector-length _self94699_))))))
    (define gx#top-context:::init!__0
      (lambda (_self94713_)
        (let ((_super94715_ '#f))
          (gx#top-context:::init!__% _self94713_ _super94715_))))
    (define gx#top-context:::init!
      (lambda _g94903_
        (let ((_g94902_ (##length _g94903_)))
          (cond ((##fx= _g94902_ 1)
                 (apply (lambda (_self94713_)
                          (gx#top-context:::init!__0 _self94713_))
                        _g94903_))
                ((##fx= _g94902_ 2)
                 (apply (lambda (_self94717_ _super94718_)
                          (gx#top-context:::init!__% _self94717_ _super94718_))
                        _g94903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g94903_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self94430_ _bindings94431_)
        (for-each
         (lambda (_bind94433_)
           (let* ((_bind9443494441_ _bind94433_)
                  (_E9443694445_
                   (lambda () (error '"No clause matching" _bind9443494441_)))
                  (_K9443794554_
                   (lambda (_rest94448_ _id94449_)
                     (gx#core-context-put!
                      _self94430_
                      _id94449_
                      (##structure
                       gx#syntax-binding::t
                       _id94449_
                       _id94449_
                       '#f
                       (let* ((_rest9445094461_ _rest94448_)
                              (_E9445294465_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9445094461_)))
                              (_K9445394530_
                               (lambda (_compiler94468_
                                        _expander94469_
                                        _key94470_)
                                 ((let* ((_key9447194484_ _key94470_)
                                         (_E9447794488_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9447194484_))))
                                    (let ((_K9448294524_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9448194517_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9448094509_
                                           (lambda () gx#make-definition-form))
                                          (_K9447994501_
                                           (lambda () gx#make-special-form))
                                          (_K9447894493_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9447694496_
                                              (lambda ()
                                                (if (##eq? _key9447194484_
                                                           'expr:)
                                                    (_K9447894493_)
                                                    (_E9447794488_))))
                                             (_try-match9447594504_
                                              (lambda ()
                                                (if (##eq? _key9447194484_
                                                           'special:)
                                                    (_K9447994501_)
                                                    (_try-match9447694496_))))
                                             (_try-match9447494512_
                                              (lambda ()
                                                (if (##eq? _key9447194484_
                                                           'define:)
                                                    (_K9448094509_)
                                                    (_try-match9447594504_))))
                                             (_try-match9447394520_
                                              (lambda ()
                                                (if (##eq? _key9447194484_
                                                           'module:)
                                                    (_K9448194517_)
                                                    (_try-match9447494512_)))))
                                        (if (##eq? _key9447194484_ 'top:)
                                            (_K9448294524_)
                                            (_try-match9447394520_)))))
                                  _expander94469_
                                  _id94449_
                                  (let ((_$e94527_ _compiler94468_))
                                    (if _$e94527_
                                        _$e94527_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9445094461_)
                             (let ((_hd9445494533_ (##car _rest9445094461_))
                                   (_tl9445594535_ (##cdr _rest9445094461_)))
                               (let ((_key94538_ _hd9445494533_))
                                 (if (##pair? _tl9445594535_)
                                     (let ((_hd9445694540_
                                            (##car _tl9445594535_))
                                           (_tl9445794542_
                                            (##cdr _tl9445594535_)))
                                       (let ((_expander94545_ _hd9445694540_))
                                         (if (##pair? _tl9445794542_)
                                             (let ((_hd9445894547_
                                                    (##car _tl9445794542_))
                                                   (_tl9445994549_
                                                    (##cdr _tl9445794542_)))
                                               (let ((_compiler94552_
                                                      _hd9445894547_))
                                                 (if (##null? _tl9445994549_)
                                                     (_K9445394530_
                                                      _compiler94552_
                                                      _expander94545_
                                                      _key94538_)
                                                     (_E9445294465_))))
                                             (_E9445294465_))))
                                     (_E9445294465_))))
                             (_E9445294465_))))))))
             (if (##pair? _bind9443494441_)
                 (let ((_hd9443894557_ (##car _bind9443494441_))
                       (_tl9443994559_ (##cdr _bind9443494441_)))
                   (let* ((_id94562_ _hd9443894557_)
                          (_rest94564_ _tl9443994559_))
                     (_K9443794554_ _rest94564_ _id94562_)))
                 (_E9443694445_))))
         _bindings94431_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self94569_)
        (let ((_bindings94571_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self94569_
           _bindings94571_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g94905_
        (let ((_g94904_ (##length _g94905_)))
          (cond ((##fx= _g94904_ 1)
                 (apply (lambda (_self94569_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self94569_))
                        _g94905_))
                ((##fx= _g94904_ 2)
                 (apply (lambda (_self94573_ _bindings94574_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self94573_
                           _bindings94574_))
                        _g94905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g94905_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self94202_ _bindings94203_)
        (for-each
         (lambda (_bind94205_)
           (let* ((_bind9420694213_ _bind94205_)
                  (_E9420894217_
                   (lambda () (error '"No clause matching" _bind9420694213_)))
                  (_K9420994285_
                   (lambda (_rest94220_ _id94221_)
                     (gx#core-context-put!
                      _self94202_
                      _id94221_
                      (##structure
                       gx#syntax-binding::t
                       _id94221_
                       _id94221_
                       '#f
                       (let* ((_rest9422294237_ _rest94220_)
                              (_E9422694241_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9422294237_))))
                         (let ((_K9423194270_
                                (lambda (_core-id94268_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id94268_)))
                               (_K9422894255_
                                (lambda (_proc94253_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc94253_)))
                               (_K9422794246_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id94221_))))
                           (let ((_try-match9422594249_
                                  (lambda ()
                                    (if (##null? _rest9422294237_)
                                        (_K9422794246_)
                                        (_E9422694241_)))))
                             (if (##pair? _rest9422294237_)
                                 (let ((_tl9423394275_
                                        (##cdr _rest9422294237_))
                                       (_hd9423294273_
                                        (##car _rest9422294237_)))
                                   (if (##eq? _hd9423294273_ '=>)
                                       (if (##pair? _tl9423394275_)
                                           (let ((_tl9423594280_
                                                  (##cdr _tl9423394275_))
                                                 (_hd9423494278_
                                                  (##car _tl9423394275_)))
                                             (if (##null? _tl9423594280_)
                                                 (let ((_core-id94283_
                                                        _hd9423494278_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id94283_))
                                                 (_E9422694241_)))
                                           (if (##null? _tl9423394275_)
                                               (let ((_proc94263_
                                                      _hd9423294273_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc94263_))
                                               (_E9422694241_)))
                                       (if (##null? _tl9423394275_)
                                           (let ((_proc94263_ _hd9423294273_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc94263_))
                                           (_E9422694241_))))
                                 (_try-match9422594249_))))))))))
             (if (##pair? _bind9420694213_)
                 (let ((_hd9421094288_ (##car _bind9420694213_))
                       (_tl9421194290_ (##cdr _bind9420694213_)))
                   (let* ((_id94293_ _hd9421094288_)
                          (_rest94295_ _tl9421194290_))
                     (_K9420994285_ _rest94295_ _id94293_)))
                 (_E9420894217_))))
         _bindings94203_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self94300_)
        (let ((_bindings94302_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self94300_
           _bindings94302_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g94907_
        (let ((_g94906_ (##length _g94907_)))
          (cond ((##fx= _g94906_ 1)
                 (apply (lambda (_self94300_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self94300_))
                        _g94907_))
                ((##fx= _g94906_ 2)
                 (apply (lambda (_self94304_ _bindings94305_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self94304_
                           _bindings94305_))
                        _g94907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g94907_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self93946_)
        (letrec ((_linux-variant?93948_
                  (lambda (_sys-type94047_)
                    (let* ((_g9404894056_
                            (string-split
                             (symbol->string _sys-type94047_)
                             '#\-))
                           (_else9405094064_ (lambda () '#f))
                           (_K9405294069_
                            (lambda (_rest94067_) (not (null? _rest94067_)))))
                      (if (##pair? _g9404894056_)
                          (let ((_hd9405394072_ (##car _g9404894056_))
                                (_tl9405494074_ (##cdr _g9404894056_)))
                            (if (equal? _hd9405394072_ '"linux")
                                (let ((_rest94077_ _tl9405494074_))
                                  (_K9405294069_ _rest94077_))
                                (_else9405094064_)))
                          (_else9405094064_)))))
                 (_bsd-variant93949_
                  (lambda (_sys-type94006_)
                    (let ((_sys-type-str94008_
                           (symbol->string _sys-type94006_)))
                      (let _lp94010_ ((_rest94012_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9401394021_ _rest94012_)
                               (_else9401594029_ (lambda () '#f))
                               (_K9401794035_
                                (lambda (_rest94032_ _sys94033_)
                                  (if (string-prefix?
                                       _sys94033_
                                       _sys-type-str94008_)
                                      _sys94033_
                                      (_lp94010_ _rest94032_)))))
                          (if (##pair? _rest9401394021_)
                              (let ((_hd9401894038_ (##car _rest9401394021_))
                                    (_tl9401994040_ (##cdr _rest9401394021_)))
                                (let* ((_sys94043_ _hd9401894038_)
                                       (_rest94045_ _tl9401994040_))
                                  (_K9401794035_ _rest94045_ _sys94043_)))
                              (_else9401594029_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self93946_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self93946_)
          (let* ((_g9395093962_ (system-type))
                 (_else9395293970_ (lambda () '#!void))
                 (_K9395493982_
                  (lambda (_sys-type93973_ _sys-vendor93974_ _sys-cpu93975_)
                    (gx#core-bind-feature!__%
                     _sys-cpu93975_
                     '#f
                     '0
                     _self93946_)
                    (gx#core-bind-feature!__%
                     _sys-type93973_
                     '#f
                     '0
                     _self93946_)
                    (if (_linux-variant?93948_ _sys-type93973_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self93946_)
                        (let ((_$e93977_ (_bsd-variant93949_ _sys-type93973_)))
                          (if _$e93977_
                              ((lambda (_sys-prefix93980_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self93946_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix93980_)
                                  '#f
                                  '0
                                  _self93946_))
                               _$e93977_)
                              '#!void))))))
            (if (##pair? _g9395093962_)
                (let ((_hd9395593985_ (##car _g9395093962_))
                      (_tl9395693987_ (##cdr _g9395093962_)))
                  (let ((_sys-cpu93990_ _hd9395593985_))
                    (if (##pair? _tl9395693987_)
                        (let ((_hd9395793992_ (##car _tl9395693987_))
                              (_tl9395893994_ (##cdr _tl9395693987_)))
                          (let ((_sys-vendor93997_ _hd9395793992_))
                            (if (##pair? _tl9395893994_)
                                (let ((_hd9395993999_ (##car _tl9395893994_))
                                      (_tl9396094001_ (##cdr _tl9395893994_)))
                                  (let ((_sys-type94004_ _hd9395993999_))
                                    (if (##null? _tl9396094001_)
                                        (_K9395493982_
                                         _sys-type94004_
                                         _sys-vendor93997_
                                         _sys-cpu93990_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self93946_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
