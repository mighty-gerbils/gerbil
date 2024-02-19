(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708352924)
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
      (lambda (_self94844_ _bind?94845_)
        (if (##fx< '2 (##structure-length _self94844_))
            (begin
              (##unchecked-structure-set!
               _self94844_
               'root
               '1
               (##structure-type _self94844_)
               '#f)
              (##unchecked-structure-set!
               _self94844_
               (make-hash-table-eq)
               '2
               (##structure-type _self94844_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94844_
                   '2
                   (##vector-length _self94844_)))
        (if _bind?94845_
            (begin
              (let ((__method94895
                     (method-ref _self94844_ 'bind-core-syntax-expanders!)))
                (if __method94895
                    (__method94895 _self94844_)
                    (error '"Missing method"
                           _self94844_
                           'bind-core-syntax-expanders!)))
              (let ((__method94896
                     (method-ref _self94844_ 'bind-core-macro-expanders!)))
                (if __method94896
                    (__method94896 _self94844_)
                    (error '"Missing method"
                           _self94844_
                           'bind-core-macro-expanders!)))
              (let ((__method94897
                     (method-ref _self94844_ 'bind-core-features!)))
                (if __method94897
                    (__method94897 _self94844_)
                    (error '"Missing method"
                           _self94844_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self94850_)
        (let ((_bind?94852_ '#t))
          (gx#root-context:::init!__% _self94850_ _bind?94852_))))
    (define gx#root-context:::init!
      (lambda _g94900_
        (let ((_g94899_ (##length _g94900_)))
          (cond ((##fx= _g94899_ 1)
                 (apply (lambda (_self94850_)
                          (gx#root-context:::init!__0 _self94850_))
                        _g94900_))
                ((##fx= _g94899_ 2)
                 (apply (lambda (_self94854_ _bind?94855_)
                          (gx#root-context:::init!__%
                           _self94854_
                           _bind?94855_))
                        _g94900_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g94900_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t94856)
        (let ((__bind-core-macro-expanders!94857
               (make-promise
                (lambda ()
                  (let ((__tmp94860
                         (direct-method-ref
                          __t94856
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp94860
                        __tmp94860
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!94858
               (make-promise
                (lambda ()
                  (let ((__tmp94861
                         (direct-method-ref
                          __t94856
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp94861
                        __tmp94861
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!94859
               (make-promise
                (lambda ()
                  (let ((__tmp94862
                         (direct-method-ref
                          __t94856
                          '#f
                          'bind-core-features!)))
                    (if __tmp94862
                        __tmp94862
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda9484294847_
                 (lambda (_self94844_ _bind?94845_)
                   (if (##fx< '2 (##structure-length _self94844_))
                       (begin
                         (##unchecked-structure-set!
                          _self94844_
                          'root
                          '1
                          (##structure-type _self94844_)
                          '#f)
                         (##unchecked-structure-set!
                          _self94844_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self94844_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self94844_
                              '2
                              (##vector-length _self94844_)))
                   (if _bind?94845_
                       (begin
                         ((force __bind-core-syntax-expanders!94858)
                          _self94844_)
                         ((force __bind-core-macro-expanders!94857)
                          _self94844_)
                         ((force __bind-core-features!94859) _self94844_))
                       '#!void))))
            (lambda _g94902_
              (let ((_g94901_ (##length _g94902_)))
                (cond ((##fx= _g94901_ 1)
                       (apply (lambda (_self94850_)
                                (let ((_bind?94852_ '#t))
                                  (_opt-lambda9484294847_
                                   _self94850_
                                   _bind?94852_)))
                              _g94902_))
                      ((##fx= _g94901_ 2)
                       (apply (lambda (_self94854_ _bind?94855_)
                                (_opt-lambda9484294847_
                                 _self94854_
                                 _bind?94855_))
                              _g94902_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g94902_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self94700_ _super94701_)
        (let ((_super94709_
               (let ((_$e94703_ _super94701_))
                 (if _$e94703_
                     _$e94703_
                     (let ((_$e94706_ (gx#core-context-root__0)))
                       (if _$e94706_
                           _$e94706_
                           (let ((__obj94898
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj94898)
                             __obj94898)))))))
          (if (##fx< '5 (##structure-length _self94700_))
              (begin
                (##unchecked-structure-set!
                 _self94700_
                 'top
                 '1
                 (##structure-type _self94700_)
                 '#f)
                (##unchecked-structure-set!
                 _self94700_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self94700_)
                 '#f)
                (##unchecked-structure-set!
                 _self94700_
                 _super94709_
                 '3
                 (##structure-type _self94700_)
                 '#f)
                (##unchecked-structure-set!
                 _self94700_
                 '#f
                 '4
                 (##structure-type _self94700_)
                 '#f)
                (##unchecked-structure-set!
                 _self94700_
                 '#f
                 '5
                 (##structure-type _self94700_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self94700_
                     '5
                     (##vector-length _self94700_))))))
    (define gx#top-context:::init!__0
      (lambda (_self94714_)
        (let ((_super94716_ '#f))
          (gx#top-context:::init!__% _self94714_ _super94716_))))
    (define gx#top-context:::init!
      (lambda _g94904_
        (let ((_g94903_ (##length _g94904_)))
          (cond ((##fx= _g94903_ 1)
                 (apply (lambda (_self94714_)
                          (gx#top-context:::init!__0 _self94714_))
                        _g94904_))
                ((##fx= _g94903_ 2)
                 (apply (lambda (_self94718_ _super94719_)
                          (gx#top-context:::init!__% _self94718_ _super94719_))
                        _g94904_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g94904_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self94431_ _bindings94432_)
        (for-each
         (lambda (_bind94434_)
           (let* ((_bind9443594442_ _bind94434_)
                  (_E9443794446_
                   (lambda () (error '"No clause matching" _bind9443594442_)))
                  (_K9443894555_
                   (lambda (_rest94449_ _id94450_)
                     (gx#core-context-put!
                      _self94431_
                      _id94450_
                      (##structure
                       gx#syntax-binding::t
                       _id94450_
                       _id94450_
                       '#f
                       (let* ((_rest9445194462_ _rest94449_)
                              (_E9445394466_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9445194462_)))
                              (_K9445494531_
                               (lambda (_compiler94469_
                                        _expander94470_
                                        _key94471_)
                                 ((let* ((_key9447294485_ _key94471_)
                                         (_E9447894489_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9447294485_))))
                                    (let ((_K9448394525_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9448294518_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9448194510_
                                           (lambda () gx#make-definition-form))
                                          (_K9448094502_
                                           (lambda () gx#make-special-form))
                                          (_K9447994494_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9447794497_
                                              (lambda ()
                                                (if (##eq? _key9447294485_
                                                           'expr:)
                                                    (_K9447994494_)
                                                    (_E9447894489_))))
                                             (_try-match9447694505_
                                              (lambda ()
                                                (if (##eq? _key9447294485_
                                                           'special:)
                                                    (_K9448094502_)
                                                    (_try-match9447794497_))))
                                             (_try-match9447594513_
                                              (lambda ()
                                                (if (##eq? _key9447294485_
                                                           'define:)
                                                    (_K9448194510_)
                                                    (_try-match9447694505_))))
                                             (_try-match9447494521_
                                              (lambda ()
                                                (if (##eq? _key9447294485_
                                                           'module:)
                                                    (_K9448294518_)
                                                    (_try-match9447594513_)))))
                                        (if (##eq? _key9447294485_ 'top:)
                                            (_K9448394525_)
                                            (_try-match9447494521_)))))
                                  _expander94470_
                                  _id94450_
                                  (let ((_$e94528_ _compiler94469_))
                                    (if _$e94528_
                                        _$e94528_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9445194462_)
                             (let ((_hd9445594534_ (##car _rest9445194462_))
                                   (_tl9445694536_ (##cdr _rest9445194462_)))
                               (let ((_key94539_ _hd9445594534_))
                                 (if (##pair? _tl9445694536_)
                                     (let ((_hd9445794541_
                                            (##car _tl9445694536_))
                                           (_tl9445894543_
                                            (##cdr _tl9445694536_)))
                                       (let ((_expander94546_ _hd9445794541_))
                                         (if (##pair? _tl9445894543_)
                                             (let ((_hd9445994548_
                                                    (##car _tl9445894543_))
                                                   (_tl9446094550_
                                                    (##cdr _tl9445894543_)))
                                               (let ((_compiler94553_
                                                      _hd9445994548_))
                                                 (if (##null? _tl9446094550_)
                                                     (_K9445494531_
                                                      _compiler94553_
                                                      _expander94546_
                                                      _key94539_)
                                                     (_E9445394466_))))
                                             (_E9445394466_))))
                                     (_E9445394466_))))
                             (_E9445394466_))))))))
             (if (##pair? _bind9443594442_)
                 (let ((_hd9443994558_ (##car _bind9443594442_))
                       (_tl9444094560_ (##cdr _bind9443594442_)))
                   (let* ((_id94563_ _hd9443994558_)
                          (_rest94565_ _tl9444094560_))
                     (_K9443894555_ _rest94565_ _id94563_)))
                 (_E9443794446_))))
         _bindings94432_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self94570_)
        (let ((_bindings94572_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self94570_
           _bindings94572_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g94906_
        (let ((_g94905_ (##length _g94906_)))
          (cond ((##fx= _g94905_ 1)
                 (apply (lambda (_self94570_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self94570_))
                        _g94906_))
                ((##fx= _g94905_ 2)
                 (apply (lambda (_self94574_ _bindings94575_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self94574_
                           _bindings94575_))
                        _g94906_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g94906_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self94203_ _bindings94204_)
        (for-each
         (lambda (_bind94206_)
           (let* ((_bind9420794214_ _bind94206_)
                  (_E9420994218_
                   (lambda () (error '"No clause matching" _bind9420794214_)))
                  (_K9421094286_
                   (lambda (_rest94221_ _id94222_)
                     (gx#core-context-put!
                      _self94203_
                      _id94222_
                      (##structure
                       gx#syntax-binding::t
                       _id94222_
                       _id94222_
                       '#f
                       (let* ((_rest9422394238_ _rest94221_)
                              (_E9422794242_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9422394238_))))
                         (let ((_K9423294271_
                                (lambda (_core-id94269_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id94269_)))
                               (_K9422994256_
                                (lambda (_proc94254_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc94254_)))
                               (_K9422894247_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id94222_))))
                           (let ((_try-match9422694250_
                                  (lambda ()
                                    (if (##null? _rest9422394238_)
                                        (_K9422894247_)
                                        (_E9422794242_)))))
                             (if (##pair? _rest9422394238_)
                                 (let ((_tl9423494276_
                                        (##cdr _rest9422394238_))
                                       (_hd9423394274_
                                        (##car _rest9422394238_)))
                                   (if (##eq? _hd9423394274_ '=>)
                                       (if (##pair? _tl9423494276_)
                                           (let ((_tl9423694281_
                                                  (##cdr _tl9423494276_))
                                                 (_hd9423594279_
                                                  (##car _tl9423494276_)))
                                             (if (##null? _tl9423694281_)
                                                 (let ((_core-id94284_
                                                        _hd9423594279_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id94284_))
                                                 (_E9422794242_)))
                                           (if (##null? _tl9423494276_)
                                               (let ((_proc94264_
                                                      _hd9423394274_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc94264_))
                                               (_E9422794242_)))
                                       (if (##null? _tl9423494276_)
                                           (let ((_proc94264_ _hd9423394274_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc94264_))
                                           (_E9422794242_))))
                                 (_try-match9422694250_))))))))))
             (if (##pair? _bind9420794214_)
                 (let ((_hd9421194289_ (##car _bind9420794214_))
                       (_tl9421294291_ (##cdr _bind9420794214_)))
                   (let* ((_id94294_ _hd9421194289_)
                          (_rest94296_ _tl9421294291_))
                     (_K9421094286_ _rest94296_ _id94294_)))
                 (_E9420994218_))))
         _bindings94204_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self94301_)
        (let ((_bindings94303_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self94301_
           _bindings94303_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g94908_
        (let ((_g94907_ (##length _g94908_)))
          (cond ((##fx= _g94907_ 1)
                 (apply (lambda (_self94301_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self94301_))
                        _g94908_))
                ((##fx= _g94907_ 2)
                 (apply (lambda (_self94305_ _bindings94306_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self94305_
                           _bindings94306_))
                        _g94908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g94908_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self93947_)
        (letrec ((_linux-variant?93949_
                  (lambda (_sys-type94048_)
                    (let* ((_g9404994057_
                            (string-split
                             (symbol->string _sys-type94048_)
                             '#\-))
                           (_else9405194065_ (lambda () '#f))
                           (_K9405394070_
                            (lambda (_rest94068_) (not (null? _rest94068_)))))
                      (if (##pair? _g9404994057_)
                          (let ((_hd9405494073_ (##car _g9404994057_))
                                (_tl9405594075_ (##cdr _g9404994057_)))
                            (if (equal? _hd9405494073_ '"linux")
                                (let ((_rest94078_ _tl9405594075_))
                                  (_K9405394070_ _rest94078_))
                                (_else9405194065_)))
                          (_else9405194065_)))))
                 (_bsd-variant93950_
                  (lambda (_sys-type94007_)
                    (let ((_sys-type-str94009_
                           (symbol->string _sys-type94007_)))
                      (let _lp94011_ ((_rest94013_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9401494022_ _rest94013_)
                               (_else9401694030_ (lambda () '#f))
                               (_K9401894036_
                                (lambda (_rest94033_ _sys94034_)
                                  (if (string-prefix?
                                       _sys94034_
                                       _sys-type-str94009_)
                                      _sys94034_
                                      (_lp94011_ _rest94033_)))))
                          (if (##pair? _rest9401494022_)
                              (let ((_hd9401994039_ (##car _rest9401494022_))
                                    (_tl9402094041_ (##cdr _rest9401494022_)))
                                (let* ((_sys94044_ _hd9401994039_)
                                       (_rest94046_ _tl9402094041_))
                                  (_K9401894036_ _rest94046_ _sys94044_)))
                              (_else9401694030_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self93947_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self93947_)
          (let* ((_g9395193963_ (system-type))
                 (_else9395393971_ (lambda () '#!void))
                 (_K9395593983_
                  (lambda (_sys-type93974_ _sys-vendor93975_ _sys-cpu93976_)
                    (gx#core-bind-feature!__%
                     _sys-cpu93976_
                     '#f
                     '0
                     _self93947_)
                    (gx#core-bind-feature!__%
                     _sys-type93974_
                     '#f
                     '0
                     _self93947_)
                    (if (_linux-variant?93949_ _sys-type93974_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self93947_)
                        (let ((_$e93978_ (_bsd-variant93950_ _sys-type93974_)))
                          (if _$e93978_
                              ((lambda (_sys-prefix93981_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self93947_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix93981_)
                                  '#f
                                  '0
                                  _self93947_))
                               _$e93978_)
                              '#!void))))))
            (if (##pair? _g9395193963_)
                (let ((_hd9395693986_ (##car _g9395193963_))
                      (_tl9395793988_ (##cdr _g9395193963_)))
                  (let ((_sys-cpu93991_ _hd9395693986_))
                    (if (##pair? _tl9395793988_)
                        (let ((_hd9395893993_ (##car _tl9395793988_))
                              (_tl9395993995_ (##cdr _tl9395793988_)))
                          (let ((_sys-vendor93998_ _hd9395893993_))
                            (if (##pair? _tl9395993995_)
                                (let ((_hd9396094000_ (##car _tl9395993995_))
                                      (_tl9396194002_ (##cdr _tl9395993995_)))
                                  (let ((_sys-type94005_ _hd9396094000_))
                                    (if (##null? _tl9396194002_)
                                        (_K9395593983_
                                         _sys-type94005_
                                         _sys-vendor93998_
                                         _sys-cpu93991_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self93947_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
