(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708337965)
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
      (lambda (_self183813_ _bind?183814_)
        (if (##fx< '2 (##structure-length _self183813_))
            (begin
              (##unchecked-structure-set!
               _self183813_
               'root
               '1
               (##structure-type _self183813_)
               '#f)
              (##unchecked-structure-set!
               _self183813_
               (make-hash-table-eq)
               '2
               (##structure-type _self183813_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self183813_
                   '2
                   (##vector-length _self183813_)))
        (if _bind?183814_
            (begin
              (let ((__method187850
                     (method-ref _self183813_ 'bind-core-syntax-expanders!)))
                (if __method187850
                    (__method187850 _self183813_)
                    (error '"Missing method"
                           _self183813_
                           'bind-core-syntax-expanders!)))
              (let ((__method187851
                     (method-ref _self183813_ 'bind-core-macro-expanders!)))
                (if __method187851
                    (__method187851 _self183813_)
                    (error '"Missing method"
                           _self183813_
                           'bind-core-macro-expanders!)))
              (let ((__method187852
                     (method-ref _self183813_ 'bind-core-features!)))
                (if __method187852
                    (__method187852 _self183813_)
                    (error '"Missing method"
                           _self183813_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self183819_)
        (let ((_bind?183821_ '#t))
          (gx#root-context:::init!__% _self183819_ _bind?183821_))))
    (define gx#root-context:::init!
      (lambda _g187855_
        (let ((_g187854_ (##length _g187855_)))
          (cond ((##fx= _g187854_ 1)
                 (apply (lambda (_self183819_)
                          (gx#root-context:::init!__0 _self183819_))
                        _g187855_))
                ((##fx= _g187854_ 2)
                 (apply (lambda (_self183823_ _bind?183824_)
                          (gx#root-context:::init!__%
                           _self183823_
                           _bind?183824_))
                        _g187855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g187855_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t187811)
        (let ((__bind-core-features!187812
               (make-promise
                (lambda ()
                  (let ((__tmp187815
                         (direct-method-ref
                          __t187811
                          '#f
                          'bind-core-features!)))
                    (if __tmp187815
                        __tmp187815
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!187813
               (make-promise
                (lambda ()
                  (let ((__tmp187816
                         (direct-method-ref
                          __t187811
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp187816
                        __tmp187816
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!187814
               (make-promise
                (lambda ()
                  (let ((__tmp187817
                         (direct-method-ref
                          __t187811
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp187817
                        __tmp187817
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda183811183816_
                 (lambda (_self183813_ _bind?183814_)
                   (if (##fx< '2 (##structure-length _self183813_))
                       (begin
                         (##unchecked-structure-set!
                          _self183813_
                          'root
                          '1
                          (##structure-type _self183813_)
                          '#f)
                         (##unchecked-structure-set!
                          _self183813_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self183813_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self183813_
                              '2
                              (##vector-length _self183813_)))
                   (if _bind?183814_
                       (begin
                         ((force __bind-core-syntax-expanders!187813)
                          _self183813_)
                         ((force __bind-core-macro-expanders!187814)
                          _self183813_)
                         ((force __bind-core-features!187812) _self183813_))
                       '#!void))))
            (lambda _g187857_
              (let ((_g187856_ (##length _g187857_)))
                (cond ((##fx= _g187856_ 1)
                       (apply (lambda (_self183819_)
                                (let ((_bind?183821_ '#t))
                                  (_opt-lambda183811183816_
                                   _self183819_
                                   _bind?183821_)))
                              _g187857_))
                      ((##fx= _g187856_ 2)
                       (apply (lambda (_self183823_ _bind?183824_)
                                (_opt-lambda183811183816_
                                 _self183823_
                                 _bind?183824_))
                              _g187857_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g187857_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self183669_ _super183670_)
        (let ((_super183678_
               (let ((_$e183672_ _super183670_))
                 (if _$e183672_
                     _$e183672_
                     (let ((_$e183675_ (gx#core-context-root__0)))
                       (if _$e183675_
                           _$e183675_
                           (let ((__obj187853
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj187853)
                             __obj187853)))))))
          (if (##fx< '5 (##structure-length _self183669_))
              (begin
                (##unchecked-structure-set!
                 _self183669_
                 'top
                 '1
                 (##structure-type _self183669_)
                 '#f)
                (##unchecked-structure-set!
                 _self183669_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self183669_)
                 '#f)
                (##unchecked-structure-set!
                 _self183669_
                 _super183678_
                 '3
                 (##structure-type _self183669_)
                 '#f)
                (##unchecked-structure-set!
                 _self183669_
                 '#f
                 '4
                 (##structure-type _self183669_)
                 '#f)
                (##unchecked-structure-set!
                 _self183669_
                 '#f
                 '5
                 (##structure-type _self183669_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self183669_
                     '5
                     (##vector-length _self183669_))))))
    (define gx#top-context:::init!__0
      (lambda (_self183683_)
        (let ((_super183685_ '#f))
          (gx#top-context:::init!__% _self183683_ _super183685_))))
    (define gx#top-context:::init!
      (lambda _g187859_
        (let ((_g187858_ (##length _g187859_)))
          (cond ((##fx= _g187858_ 1)
                 (apply (lambda (_self183683_)
                          (gx#top-context:::init!__0 _self183683_))
                        _g187859_))
                ((##fx= _g187858_ 2)
                 (apply (lambda (_self183687_ _super183688_)
                          (gx#top-context:::init!__%
                           _self183687_
                           _super183688_))
                        _g187859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g187859_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self183400_ _bindings183401_)
        (for-each
         (lambda (_bind183403_)
           (let* ((_bind183404183411_ _bind183403_)
                  (_E183406183415_
                   (lambda ()
                     (error '"No clause matching" _bind183404183411_)))
                  (_K183407183524_
                   (lambda (_rest183418_ _id183419_)
                     (gx#core-context-put!
                      _self183400_
                      _id183419_
                      (##structure
                       gx#syntax-binding::t
                       _id183419_
                       _id183419_
                       '#f
                       (let* ((_rest183420183431_ _rest183418_)
                              (_E183422183435_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest183420183431_)))
                              (_K183423183500_
                               (lambda (_compiler183438_
                                        _expander183439_
                                        _key183440_)
                                 ((let* ((_key183441183454_ _key183440_)
                                         (_E183447183458_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key183441183454_))))
                                    (let ((_K183452183494_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K183451183487_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K183450183479_
                                           (lambda () gx#make-definition-form))
                                          (_K183449183471_
                                           (lambda () gx#make-special-form))
                                          (_K183448183463_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match183446183466_
                                              (lambda ()
                                                (if (##eq? _key183441183454_
                                                           'expr:)
                                                    (_K183448183463_)
                                                    (_E183447183458_))))
                                             (_try-match183445183474_
                                              (lambda ()
                                                (if (##eq? _key183441183454_
                                                           'special:)
                                                    (_K183449183471_)
                                                    (_try-match183446183466_))))
                                             (_try-match183444183482_
                                              (lambda ()
                                                (if (##eq? _key183441183454_
                                                           'define:)
                                                    (_K183450183479_)
                                                    (_try-match183445183474_))))
                                             (_try-match183443183490_
                                              (lambda ()
                                                (if (##eq? _key183441183454_
                                                           'module:)
                                                    (_K183451183487_)
                                                    (_try-match183444183482_)))))
                                        (if (##eq? _key183441183454_ 'top:)
                                            (_K183452183494_)
                                            (_try-match183443183490_)))))
                                  _expander183439_
                                  _id183419_
                                  (let ((_$e183497_ _compiler183438_))
                                    (if _$e183497_
                                        _$e183497_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest183420183431_)
                             (let ((_hd183424183503_
                                    (##car _rest183420183431_))
                                   (_tl183425183505_
                                    (##cdr _rest183420183431_)))
                               (let ((_key183508_ _hd183424183503_))
                                 (if (##pair? _tl183425183505_)
                                     (let ((_hd183426183510_
                                            (##car _tl183425183505_))
                                           (_tl183427183512_
                                            (##cdr _tl183425183505_)))
                                       (let ((_expander183515_
                                              _hd183426183510_))
                                         (if (##pair? _tl183427183512_)
                                             (let ((_hd183428183517_
                                                    (##car _tl183427183512_))
                                                   (_tl183429183519_
                                                    (##cdr _tl183427183512_)))
                                               (let ((_compiler183522_
                                                      _hd183428183517_))
                                                 (if (##null? _tl183429183519_)
                                                     (_K183423183500_
                                                      _compiler183522_
                                                      _expander183515_
                                                      _key183508_)
                                                     (_E183422183435_))))
                                             (_E183422183435_))))
                                     (_E183422183435_))))
                             (_E183422183435_))))))))
             (if (##pair? _bind183404183411_)
                 (let ((_hd183408183527_ (##car _bind183404183411_))
                       (_tl183409183529_ (##cdr _bind183404183411_)))
                   (let* ((_id183532_ _hd183408183527_)
                          (_rest183534_ _tl183409183529_))
                     (_K183407183524_ _rest183534_ _id183532_)))
                 (_E183406183415_))))
         _bindings183401_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self183539_)
        (let ((_bindings183541_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self183539_
           _bindings183541_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g187861_
        (let ((_g187860_ (##length _g187861_)))
          (cond ((##fx= _g187860_ 1)
                 (apply (lambda (_self183539_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self183539_))
                        _g187861_))
                ((##fx= _g187860_ 2)
                 (apply (lambda (_self183543_ _bindings183544_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self183543_
                           _bindings183544_))
                        _g187861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g187861_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self183172_ _bindings183173_)
        (for-each
         (lambda (_bind183175_)
           (let* ((_bind183176183183_ _bind183175_)
                  (_E183178183187_
                   (lambda ()
                     (error '"No clause matching" _bind183176183183_)))
                  (_K183179183255_
                   (lambda (_rest183190_ _id183191_)
                     (gx#core-context-put!
                      _self183172_
                      _id183191_
                      (##structure
                       gx#syntax-binding::t
                       _id183191_
                       _id183191_
                       '#f
                       (let* ((_rest183192183207_ _rest183190_)
                              (_E183196183211_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest183192183207_))))
                         (let ((_K183201183240_
                                (lambda (_core-id183238_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id183238_)))
                               (_K183198183225_
                                (lambda (_proc183223_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc183223_)))
                               (_K183197183216_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id183191_))))
                           (let ((_try-match183195183219_
                                  (lambda ()
                                    (if (##null? _rest183192183207_)
                                        (_K183197183216_)
                                        (_E183196183211_)))))
                             (if (##pair? _rest183192183207_)
                                 (let ((_tl183203183245_
                                        (##cdr _rest183192183207_))
                                       (_hd183202183243_
                                        (##car _rest183192183207_)))
                                   (if (##eq? _hd183202183243_ '=>)
                                       (if (##pair? _tl183203183245_)
                                           (let ((_tl183205183250_
                                                  (##cdr _tl183203183245_))
                                                 (_hd183204183248_
                                                  (##car _tl183203183245_)))
                                             (if (##null? _tl183205183250_)
                                                 (let ((_core-id183253_
                                                        _hd183204183248_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id183253_))
                                                 (_E183196183211_)))
                                           (if (##null? _tl183203183245_)
                                               (let ((_proc183233_
                                                      _hd183202183243_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc183233_))
                                               (_E183196183211_)))
                                       (if (##null? _tl183203183245_)
                                           (let ((_proc183233_
                                                  _hd183202183243_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc183233_))
                                           (_E183196183211_))))
                                 (_try-match183195183219_))))))))))
             (if (##pair? _bind183176183183_)
                 (let ((_hd183180183258_ (##car _bind183176183183_))
                       (_tl183181183260_ (##cdr _bind183176183183_)))
                   (let* ((_id183263_ _hd183180183258_)
                          (_rest183265_ _tl183181183260_))
                     (_K183179183255_ _rest183265_ _id183263_)))
                 (_E183178183187_))))
         _bindings183173_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self183270_)
        (let ((_bindings183272_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self183270_
           _bindings183272_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g187863_
        (let ((_g187862_ (##length _g187863_)))
          (cond ((##fx= _g187862_ 1)
                 (apply (lambda (_self183270_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self183270_))
                        _g187863_))
                ((##fx= _g187862_ 2)
                 (apply (lambda (_self183274_ _bindings183275_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self183274_
                           _bindings183275_))
                        _g187863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g187863_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self182916_)
        (letrec ((_linux-variant?182918_
                  (lambda (_sys-type183017_)
                    (let* ((_g183018183026_
                            (string-split
                             (symbol->string _sys-type183017_)
                             '#\-))
                           (_else183020183034_ (lambda () '#f))
                           (_K183022183039_
                            (lambda (_rest183037_)
                              (not (null? _rest183037_)))))
                      (if (##pair? _g183018183026_)
                          (let ((_hd183023183042_ (##car _g183018183026_))
                                (_tl183024183044_ (##cdr _g183018183026_)))
                            (if (equal? _hd183023183042_ '"linux")
                                (let ((_rest183047_ _tl183024183044_))
                                  (_K183022183039_ _rest183047_))
                                (_else183020183034_)))
                          (_else183020183034_)))))
                 (_bsd-variant182919_
                  (lambda (_sys-type182976_)
                    (let ((_sys-type-str182978_
                           (symbol->string _sys-type182976_)))
                      (let _lp182980_ ((_rest182982_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest182983182991_ _rest182982_)
                               (_else182985182999_ (lambda () '#f))
                               (_K182987183005_
                                (lambda (_rest183002_ _sys183003_)
                                  (if (string-prefix?
                                       _sys183003_
                                       _sys-type-str182978_)
                                      _sys183003_
                                      (_lp182980_ _rest183002_)))))
                          (if (##pair? _rest182983182991_)
                              (let ((_hd182988183008_
                                     (##car _rest182983182991_))
                                    (_tl182989183010_
                                     (##cdr _rest182983182991_)))
                                (let* ((_sys183013_ _hd182988183008_)
                                       (_rest183015_ _tl182989183010_))
                                  (_K182987183005_ _rest183015_ _sys183013_)))
                              (_else182985182999_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self182916_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self182916_)
          (let* ((_g182920182932_ (system-type))
                 (_else182922182940_ (lambda () '#!void))
                 (_K182924182952_
                  (lambda (_sys-type182943_ _sys-vendor182944_ _sys-cpu182945_)
                    (gx#core-bind-feature!__%
                     _sys-cpu182945_
                     '#f
                     '0
                     _self182916_)
                    (gx#core-bind-feature!__%
                     _sys-type182943_
                     '#f
                     '0
                     _self182916_)
                    (if (_linux-variant?182918_ _sys-type182943_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self182916_)
                        (let ((_$e182947_
                               (_bsd-variant182919_ _sys-type182943_)))
                          (if _$e182947_
                              ((lambda (_sys-prefix182950_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self182916_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix182950_)
                                  '#f
                                  '0
                                  _self182916_))
                               _$e182947_)
                              '#!void))))))
            (if (##pair? _g182920182932_)
                (let ((_hd182925182955_ (##car _g182920182932_))
                      (_tl182926182957_ (##cdr _g182920182932_)))
                  (let ((_sys-cpu182960_ _hd182925182955_))
                    (if (##pair? _tl182926182957_)
                        (let ((_hd182927182962_ (##car _tl182926182957_))
                              (_tl182928182964_ (##cdr _tl182926182957_)))
                          (let ((_sys-vendor182967_ _hd182927182962_))
                            (if (##pair? _tl182928182964_)
                                (let ((_hd182929182969_
                                       (##car _tl182928182964_))
                                      (_tl182930182971_
                                       (##cdr _tl182928182964_)))
                                  (let ((_sys-type182974_ _hd182929182969_))
                                    (if (##null? _tl182930182971_)
                                        (_K182924182952_
                                         _sys-type182974_
                                         _sys-vendor182967_
                                         _sys-cpu182960_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self182916_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
