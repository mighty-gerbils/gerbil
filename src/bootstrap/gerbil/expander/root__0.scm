(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708289482)
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
      (lambda (_self185669_ _bind?185670_)
        (if (##fx< '2 (##structure-length _self185669_))
            (begin
              (##unchecked-structure-set!
               _self185669_
               'root
               '1
               (##structure-type _self185669_)
               '#f)
              (##unchecked-structure-set!
               _self185669_
               (make-hash-table-eq)
               '2
               (##structure-type _self185669_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self185669_
                   '2
                   (##vector-length _self185669_)))
        (if _bind?185670_
            (begin
              (let ((__method189787
                     (method-ref _self185669_ 'bind-core-syntax-expanders!)))
                (if __method189787
                    (__method189787 _self185669_)
                    (error '"Missing method"
                           _self185669_
                           'bind-core-syntax-expanders!)))
              (let ((__method189788
                     (method-ref _self185669_ 'bind-core-macro-expanders!)))
                (if __method189788
                    (__method189788 _self185669_)
                    (error '"Missing method"
                           _self185669_
                           'bind-core-macro-expanders!)))
              (let ((__method189789
                     (method-ref _self185669_ 'bind-core-features!)))
                (if __method189789
                    (__method189789 _self185669_)
                    (error '"Missing method"
                           _self185669_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self185675_)
        (let ((_bind?185677_ '#t))
          (gx#root-context:::init!__% _self185675_ _bind?185677_))))
    (define gx#root-context:::init!
      (lambda _g189792_
        (let ((_g189791_ (##length _g189792_)))
          (cond ((##fx= _g189791_ 1)
                 (apply (lambda (_self185675_)
                          (gx#root-context:::init!__0 _self185675_))
                        _g189792_))
                ((##fx= _g189791_ 2)
                 (apply (lambda (_self185679_ _bind?185680_)
                          (gx#root-context:::init!__%
                           _self185679_
                           _bind?185680_))
                        _g189792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g189792_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t189748)
        (let ((__bind-core-features!189749
               (make-promise
                (lambda ()
                  (let ((__tmp189752
                         (direct-method-ref
                          __t189748
                          '#f
                          'bind-core-features!)))
                    (if __tmp189752
                        __tmp189752
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!189750
               (make-promise
                (lambda ()
                  (let ((__tmp189753
                         (direct-method-ref
                          __t189748
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp189753
                        __tmp189753
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!189751
               (make-promise
                (lambda ()
                  (let ((__tmp189754
                         (direct-method-ref
                          __t189748
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp189754
                        __tmp189754
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda185667185672_
                 (lambda (_self185669_ _bind?185670_)
                   (if (##fx< '2 (##structure-length _self185669_))
                       (begin
                         (##unchecked-structure-set!
                          _self185669_
                          'root
                          '1
                          (##structure-type _self185669_)
                          '#f)
                         (##unchecked-structure-set!
                          _self185669_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self185669_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self185669_
                              '2
                              (##vector-length _self185669_)))
                   (if _bind?185670_
                       (begin
                         ((force __bind-core-syntax-expanders!189750)
                          _self185669_)
                         ((force __bind-core-macro-expanders!189751)
                          _self185669_)
                         ((force __bind-core-features!189749) _self185669_))
                       '#!void))))
            (lambda _g189794_
              (let ((_g189793_ (##length _g189794_)))
                (cond ((##fx= _g189793_ 1)
                       (apply (lambda (_self185675_)
                                (let ((_bind?185677_ '#t))
                                  (_opt-lambda185667185672_
                                   _self185675_
                                   _bind?185677_)))
                              _g189794_))
                      ((##fx= _g189793_ 2)
                       (apply (lambda (_self185679_ _bind?185680_)
                                (_opt-lambda185667185672_
                                 _self185679_
                                 _bind?185680_))
                              _g189794_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g189794_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self185525_ _super185526_)
        (let ((_super185534_
               (let ((_$e185528_ _super185526_))
                 (if _$e185528_
                     _$e185528_
                     (let ((_$e185531_ (gx#core-context-root__0)))
                       (if _$e185531_
                           _$e185531_
                           (let ((__obj189790
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj189790)
                             __obj189790)))))))
          (if (##fx< '5 (##structure-length _self185525_))
              (begin
                (##unchecked-structure-set!
                 _self185525_
                 'top
                 '1
                 (##structure-type _self185525_)
                 '#f)
                (##unchecked-structure-set!
                 _self185525_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self185525_)
                 '#f)
                (##unchecked-structure-set!
                 _self185525_
                 _super185534_
                 '3
                 (##structure-type _self185525_)
                 '#f)
                (##unchecked-structure-set!
                 _self185525_
                 '#f
                 '4
                 (##structure-type _self185525_)
                 '#f)
                (##unchecked-structure-set!
                 _self185525_
                 '#f
                 '5
                 (##structure-type _self185525_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self185525_
                     '5
                     (##vector-length _self185525_))))))
    (define gx#top-context:::init!__0
      (lambda (_self185539_)
        (let ((_super185541_ '#f))
          (gx#top-context:::init!__% _self185539_ _super185541_))))
    (define gx#top-context:::init!
      (lambda _g189796_
        (let ((_g189795_ (##length _g189796_)))
          (cond ((##fx= _g189795_ 1)
                 (apply (lambda (_self185539_)
                          (gx#top-context:::init!__0 _self185539_))
                        _g189796_))
                ((##fx= _g189795_ 2)
                 (apply (lambda (_self185543_ _super185544_)
                          (gx#top-context:::init!__%
                           _self185543_
                           _super185544_))
                        _g189796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g189796_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self185256_ _bindings185257_)
        (for-each
         (lambda (_bind185259_)
           (let* ((_bind185260185267_ _bind185259_)
                  (_E185262185271_
                   (lambda ()
                     (error '"No clause matching" _bind185260185267_)))
                  (_K185263185380_
                   (lambda (_rest185274_ _id185275_)
                     (gx#core-context-put!
                      _self185256_
                      _id185275_
                      (##structure
                       gx#syntax-binding::t
                       _id185275_
                       _id185275_
                       '#f
                       (let* ((_rest185276185287_ _rest185274_)
                              (_E185278185291_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest185276185287_)))
                              (_K185279185356_
                               (lambda (_compiler185294_
                                        _expander185295_
                                        _key185296_)
                                 ((let* ((_key185297185310_ _key185296_)
                                         (_E185303185314_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key185297185310_))))
                                    (let ((_K185308185350_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K185307185343_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K185306185335_
                                           (lambda () gx#make-definition-form))
                                          (_K185305185327_
                                           (lambda () gx#make-special-form))
                                          (_K185304185319_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match185302185322_
                                              (lambda ()
                                                (if (##eq? _key185297185310_
                                                           'expr:)
                                                    (_K185304185319_)
                                                    (_E185303185314_))))
                                             (_try-match185301185330_
                                              (lambda ()
                                                (if (##eq? _key185297185310_
                                                           'special:)
                                                    (_K185305185327_)
                                                    (_try-match185302185322_))))
                                             (_try-match185300185338_
                                              (lambda ()
                                                (if (##eq? _key185297185310_
                                                           'define:)
                                                    (_K185306185335_)
                                                    (_try-match185301185330_))))
                                             (_try-match185299185346_
                                              (lambda ()
                                                (if (##eq? _key185297185310_
                                                           'module:)
                                                    (_K185307185343_)
                                                    (_try-match185300185338_)))))
                                        (if (##eq? _key185297185310_ 'top:)
                                            (_K185308185350_)
                                            (_try-match185299185346_)))))
                                  _expander185295_
                                  _id185275_
                                  (let ((_$e185353_ _compiler185294_))
                                    (if _$e185353_
                                        _$e185353_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest185276185287_)
                             (let ((_hd185280185359_
                                    (##car _rest185276185287_))
                                   (_tl185281185361_
                                    (##cdr _rest185276185287_)))
                               (let ((_key185364_ _hd185280185359_))
                                 (if (##pair? _tl185281185361_)
                                     (let ((_hd185282185366_
                                            (##car _tl185281185361_))
                                           (_tl185283185368_
                                            (##cdr _tl185281185361_)))
                                       (let ((_expander185371_
                                              _hd185282185366_))
                                         (if (##pair? _tl185283185368_)
                                             (let ((_hd185284185373_
                                                    (##car _tl185283185368_))
                                                   (_tl185285185375_
                                                    (##cdr _tl185283185368_)))
                                               (let ((_compiler185378_
                                                      _hd185284185373_))
                                                 (if (##null? _tl185285185375_)
                                                     (_K185279185356_
                                                      _compiler185378_
                                                      _expander185371_
                                                      _key185364_)
                                                     (_E185278185291_))))
                                             (_E185278185291_))))
                                     (_E185278185291_))))
                             (_E185278185291_))))))))
             (if (##pair? _bind185260185267_)
                 (let ((_hd185264185383_ (##car _bind185260185267_))
                       (_tl185265185385_ (##cdr _bind185260185267_)))
                   (let* ((_id185388_ _hd185264185383_)
                          (_rest185390_ _tl185265185385_))
                     (_K185263185380_ _rest185390_ _id185388_)))
                 (_E185262185271_))))
         _bindings185257_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self185395_)
        (let ((_bindings185397_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self185395_
           _bindings185397_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g189798_
        (let ((_g189797_ (##length _g189798_)))
          (cond ((##fx= _g189797_ 1)
                 (apply (lambda (_self185395_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self185395_))
                        _g189798_))
                ((##fx= _g189797_ 2)
                 (apply (lambda (_self185399_ _bindings185400_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self185399_
                           _bindings185400_))
                        _g189798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g189798_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self185028_ _bindings185029_)
        (for-each
         (lambda (_bind185031_)
           (let* ((_bind185032185039_ _bind185031_)
                  (_E185034185043_
                   (lambda ()
                     (error '"No clause matching" _bind185032185039_)))
                  (_K185035185111_
                   (lambda (_rest185046_ _id185047_)
                     (gx#core-context-put!
                      _self185028_
                      _id185047_
                      (##structure
                       gx#syntax-binding::t
                       _id185047_
                       _id185047_
                       '#f
                       (let* ((_rest185048185063_ _rest185046_)
                              (_E185052185067_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest185048185063_))))
                         (let ((_K185057185096_
                                (lambda (_core-id185094_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id185094_)))
                               (_K185054185081_
                                (lambda (_proc185079_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc185079_)))
                               (_K185053185072_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id185047_))))
                           (let ((_try-match185051185075_
                                  (lambda ()
                                    (if (##null? _rest185048185063_)
                                        (_K185053185072_)
                                        (_E185052185067_)))))
                             (if (##pair? _rest185048185063_)
                                 (let ((_tl185059185101_
                                        (##cdr _rest185048185063_))
                                       (_hd185058185099_
                                        (##car _rest185048185063_)))
                                   (if (##eq? _hd185058185099_ '=>)
                                       (if (##pair? _tl185059185101_)
                                           (let ((_tl185061185106_
                                                  (##cdr _tl185059185101_))
                                                 (_hd185060185104_
                                                  (##car _tl185059185101_)))
                                             (if (##null? _tl185061185106_)
                                                 (let ((_core-id185109_
                                                        _hd185060185104_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id185109_))
                                                 (_E185052185067_)))
                                           (if (##null? _tl185059185101_)
                                               (let ((_proc185089_
                                                      _hd185058185099_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc185089_))
                                               (_E185052185067_)))
                                       (if (##null? _tl185059185101_)
                                           (let ((_proc185089_
                                                  _hd185058185099_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc185089_))
                                           (_E185052185067_))))
                                 (_try-match185051185075_))))))))))
             (if (##pair? _bind185032185039_)
                 (let ((_hd185036185114_ (##car _bind185032185039_))
                       (_tl185037185116_ (##cdr _bind185032185039_)))
                   (let* ((_id185119_ _hd185036185114_)
                          (_rest185121_ _tl185037185116_))
                     (_K185035185111_ _rest185121_ _id185119_)))
                 (_E185034185043_))))
         _bindings185029_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self185126_)
        (let ((_bindings185128_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self185126_
           _bindings185128_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g189800_
        (let ((_g189799_ (##length _g189800_)))
          (cond ((##fx= _g189799_ 1)
                 (apply (lambda (_self185126_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self185126_))
                        _g189800_))
                ((##fx= _g189799_ 2)
                 (apply (lambda (_self185130_ _bindings185131_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self185130_
                           _bindings185131_))
                        _g189800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g189800_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self184772_)
        (letrec ((_linux-variant?184774_
                  (lambda (_sys-type184873_)
                    (let* ((_g184874184882_
                            (string-split
                             (symbol->string _sys-type184873_)
                             '#\-))
                           (_else184876184890_ (lambda () '#f))
                           (_K184878184895_
                            (lambda (_rest184893_)
                              (not (null? _rest184893_)))))
                      (if (##pair? _g184874184882_)
                          (let ((_hd184879184898_ (##car _g184874184882_))
                                (_tl184880184900_ (##cdr _g184874184882_)))
                            (if (equal? _hd184879184898_ '"linux")
                                (let ((_rest184903_ _tl184880184900_))
                                  (_K184878184895_ _rest184903_))
                                (_else184876184890_)))
                          (_else184876184890_)))))
                 (_bsd-variant184775_
                  (lambda (_sys-type184832_)
                    (let ((_sys-type-str184834_
                           (symbol->string _sys-type184832_)))
                      (let _lp184836_ ((_rest184838_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest184839184847_ _rest184838_)
                               (_else184841184855_ (lambda () '#f))
                               (_K184843184861_
                                (lambda (_rest184858_ _sys184859_)
                                  (if (string-prefix?
                                       _sys184859_
                                       _sys-type-str184834_)
                                      _sys184859_
                                      (_lp184836_ _rest184858_)))))
                          (if (##pair? _rest184839184847_)
                              (let ((_hd184844184864_
                                     (##car _rest184839184847_))
                                    (_tl184845184866_
                                     (##cdr _rest184839184847_)))
                                (let* ((_sys184869_ _hd184844184864_)
                                       (_rest184871_ _tl184845184866_))
                                  (_K184843184861_ _rest184871_ _sys184869_)))
                              (_else184841184855_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self184772_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self184772_)
          (let* ((_g184776184788_ (system-type))
                 (_else184778184796_ (lambda () '#!void))
                 (_K184780184808_
                  (lambda (_sys-type184799_ _sys-vendor184800_ _sys-cpu184801_)
                    (gx#core-bind-feature!__%
                     _sys-cpu184801_
                     '#f
                     '0
                     _self184772_)
                    (gx#core-bind-feature!__%
                     _sys-type184799_
                     '#f
                     '0
                     _self184772_)
                    (if (_linux-variant?184774_ _sys-type184799_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self184772_)
                        (let ((_$e184803_
                               (_bsd-variant184775_ _sys-type184799_)))
                          (if _$e184803_
                              ((lambda (_sys-prefix184806_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self184772_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix184806_)
                                  '#f
                                  '0
                                  _self184772_))
                               _$e184803_)
                              '#!void))))))
            (if (##pair? _g184776184788_)
                (let ((_hd184781184811_ (##car _g184776184788_))
                      (_tl184782184813_ (##cdr _g184776184788_)))
                  (let ((_sys-cpu184816_ _hd184781184811_))
                    (if (##pair? _tl184782184813_)
                        (let ((_hd184783184818_ (##car _tl184782184813_))
                              (_tl184784184820_ (##cdr _tl184782184813_)))
                          (let ((_sys-vendor184823_ _hd184783184818_))
                            (if (##pair? _tl184784184820_)
                                (let ((_hd184785184825_
                                       (##car _tl184784184820_))
                                      (_tl184786184827_
                                       (##cdr _tl184784184820_)))
                                  (let ((_sys-type184830_ _hd184785184825_))
                                    (if (##null? _tl184786184827_)
                                        (_K184780184808_
                                         _sys-type184830_
                                         _sys-vendor184823_
                                         _sys-cpu184816_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self184772_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
