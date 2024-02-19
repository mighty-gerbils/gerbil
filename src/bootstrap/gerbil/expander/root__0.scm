(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708334576)
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
      (lambda (_self185823_ _bind?185824_)
        (if (##fx< '2 (##structure-length _self185823_))
            (begin
              (##unchecked-structure-set!
               _self185823_
               'root
               '1
               (##structure-type _self185823_)
               '#f)
              (##unchecked-structure-set!
               _self185823_
               (make-hash-table-eq)
               '2
               (##structure-type _self185823_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self185823_
                   '2
                   (##vector-length _self185823_)))
        (if _bind?185824_
            (begin
              (let ((__method189941
                     (method-ref _self185823_ 'bind-core-syntax-expanders!)))
                (if __method189941
                    (__method189941 _self185823_)
                    (error '"Missing method"
                           _self185823_
                           'bind-core-syntax-expanders!)))
              (let ((__method189942
                     (method-ref _self185823_ 'bind-core-macro-expanders!)))
                (if __method189942
                    (__method189942 _self185823_)
                    (error '"Missing method"
                           _self185823_
                           'bind-core-macro-expanders!)))
              (let ((__method189943
                     (method-ref _self185823_ 'bind-core-features!)))
                (if __method189943
                    (__method189943 _self185823_)
                    (error '"Missing method"
                           _self185823_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self185829_)
        (let ((_bind?185831_ '#t))
          (gx#root-context:::init!__% _self185829_ _bind?185831_))))
    (define gx#root-context:::init!
      (lambda _g189946_
        (let ((_g189945_ (##length _g189946_)))
          (cond ((##fx= _g189945_ 1)
                 (apply (lambda (_self185829_)
                          (gx#root-context:::init!__0 _self185829_))
                        _g189946_))
                ((##fx= _g189945_ 2)
                 (apply (lambda (_self185833_ _bind?185834_)
                          (gx#root-context:::init!__%
                           _self185833_
                           _bind?185834_))
                        _g189946_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g189946_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t189902)
        (let ((__bind-core-syntax-expanders!189903
               (make-promise
                (lambda ()
                  (let ((__tmp189906
                         (direct-method-ref
                          __t189902
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp189906
                        __tmp189906
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!189904
               (make-promise
                (lambda ()
                  (let ((__tmp189907
                         (direct-method-ref
                          __t189902
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp189907
                        __tmp189907
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!189905
               (make-promise
                (lambda ()
                  (let ((__tmp189908
                         (direct-method-ref
                          __t189902
                          '#f
                          'bind-core-features!)))
                    (if __tmp189908
                        __tmp189908
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda185821185826_
                 (lambda (_self185823_ _bind?185824_)
                   (if (##fx< '2 (##structure-length _self185823_))
                       (begin
                         (##unchecked-structure-set!
                          _self185823_
                          'root
                          '1
                          (##structure-type _self185823_)
                          '#f)
                         (##unchecked-structure-set!
                          _self185823_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self185823_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self185823_
                              '2
                              (##vector-length _self185823_)))
                   (if _bind?185824_
                       (begin
                         ((force __bind-core-syntax-expanders!189903)
                          _self185823_)
                         ((force __bind-core-macro-expanders!189904)
                          _self185823_)
                         ((force __bind-core-features!189905) _self185823_))
                       '#!void))))
            (lambda _g189948_
              (let ((_g189947_ (##length _g189948_)))
                (cond ((##fx= _g189947_ 1)
                       (apply (lambda (_self185829_)
                                (let ((_bind?185831_ '#t))
                                  (_opt-lambda185821185826_
                                   _self185829_
                                   _bind?185831_)))
                              _g189948_))
                      ((##fx= _g189947_ 2)
                       (apply (lambda (_self185833_ _bind?185834_)
                                (_opt-lambda185821185826_
                                 _self185833_
                                 _bind?185834_))
                              _g189948_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g189948_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self185679_ _super185680_)
        (let ((_super185688_
               (let ((_$e185682_ _super185680_))
                 (if _$e185682_
                     _$e185682_
                     (let ((_$e185685_ (gx#core-context-root__0)))
                       (if _$e185685_
                           _$e185685_
                           (let ((__obj189944
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj189944)
                             __obj189944)))))))
          (if (##fx< '5 (##structure-length _self185679_))
              (begin
                (##unchecked-structure-set!
                 _self185679_
                 'top
                 '1
                 (##structure-type _self185679_)
                 '#f)
                (##unchecked-structure-set!
                 _self185679_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self185679_)
                 '#f)
                (##unchecked-structure-set!
                 _self185679_
                 _super185688_
                 '3
                 (##structure-type _self185679_)
                 '#f)
                (##unchecked-structure-set!
                 _self185679_
                 '#f
                 '4
                 (##structure-type _self185679_)
                 '#f)
                (##unchecked-structure-set!
                 _self185679_
                 '#f
                 '5
                 (##structure-type _self185679_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self185679_
                     '5
                     (##vector-length _self185679_))))))
    (define gx#top-context:::init!__0
      (lambda (_self185693_)
        (let ((_super185695_ '#f))
          (gx#top-context:::init!__% _self185693_ _super185695_))))
    (define gx#top-context:::init!
      (lambda _g189950_
        (let ((_g189949_ (##length _g189950_)))
          (cond ((##fx= _g189949_ 1)
                 (apply (lambda (_self185693_)
                          (gx#top-context:::init!__0 _self185693_))
                        _g189950_))
                ((##fx= _g189949_ 2)
                 (apply (lambda (_self185697_ _super185698_)
                          (gx#top-context:::init!__%
                           _self185697_
                           _super185698_))
                        _g189950_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g189950_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self185410_ _bindings185411_)
        (for-each
         (lambda (_bind185413_)
           (let* ((_bind185414185421_ _bind185413_)
                  (_E185416185425_
                   (lambda ()
                     (error '"No clause matching" _bind185414185421_)))
                  (_K185417185534_
                   (lambda (_rest185428_ _id185429_)
                     (gx#core-context-put!
                      _self185410_
                      _id185429_
                      (##structure
                       gx#syntax-binding::t
                       _id185429_
                       _id185429_
                       '#f
                       (let* ((_rest185430185441_ _rest185428_)
                              (_E185432185445_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest185430185441_)))
                              (_K185433185510_
                               (lambda (_compiler185448_
                                        _expander185449_
                                        _key185450_)
                                 ((let* ((_key185451185464_ _key185450_)
                                         (_E185457185468_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key185451185464_))))
                                    (let ((_K185462185504_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K185461185497_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K185460185489_
                                           (lambda () gx#make-definition-form))
                                          (_K185459185481_
                                           (lambda () gx#make-special-form))
                                          (_K185458185473_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match185456185476_
                                              (lambda ()
                                                (if (##eq? _key185451185464_
                                                           'expr:)
                                                    (_K185458185473_)
                                                    (_E185457185468_))))
                                             (_try-match185455185484_
                                              (lambda ()
                                                (if (##eq? _key185451185464_
                                                           'special:)
                                                    (_K185459185481_)
                                                    (_try-match185456185476_))))
                                             (_try-match185454185492_
                                              (lambda ()
                                                (if (##eq? _key185451185464_
                                                           'define:)
                                                    (_K185460185489_)
                                                    (_try-match185455185484_))))
                                             (_try-match185453185500_
                                              (lambda ()
                                                (if (##eq? _key185451185464_
                                                           'module:)
                                                    (_K185461185497_)
                                                    (_try-match185454185492_)))))
                                        (if (##eq? _key185451185464_ 'top:)
                                            (_K185462185504_)
                                            (_try-match185453185500_)))))
                                  _expander185449_
                                  _id185429_
                                  (let ((_$e185507_ _compiler185448_))
                                    (if _$e185507_
                                        _$e185507_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest185430185441_)
                             (let ((_hd185434185513_
                                    (##car _rest185430185441_))
                                   (_tl185435185515_
                                    (##cdr _rest185430185441_)))
                               (let ((_key185518_ _hd185434185513_))
                                 (if (##pair? _tl185435185515_)
                                     (let ((_hd185436185520_
                                            (##car _tl185435185515_))
                                           (_tl185437185522_
                                            (##cdr _tl185435185515_)))
                                       (let ((_expander185525_
                                              _hd185436185520_))
                                         (if (##pair? _tl185437185522_)
                                             (let ((_hd185438185527_
                                                    (##car _tl185437185522_))
                                                   (_tl185439185529_
                                                    (##cdr _tl185437185522_)))
                                               (let ((_compiler185532_
                                                      _hd185438185527_))
                                                 (if (##null? _tl185439185529_)
                                                     (_K185433185510_
                                                      _compiler185532_
                                                      _expander185525_
                                                      _key185518_)
                                                     (_E185432185445_))))
                                             (_E185432185445_))))
                                     (_E185432185445_))))
                             (_E185432185445_))))))))
             (if (##pair? _bind185414185421_)
                 (let ((_hd185418185537_ (##car _bind185414185421_))
                       (_tl185419185539_ (##cdr _bind185414185421_)))
                   (let* ((_id185542_ _hd185418185537_)
                          (_rest185544_ _tl185419185539_))
                     (_K185417185534_ _rest185544_ _id185542_)))
                 (_E185416185425_))))
         _bindings185411_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self185549_)
        (let ((_bindings185551_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self185549_
           _bindings185551_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g189952_
        (let ((_g189951_ (##length _g189952_)))
          (cond ((##fx= _g189951_ 1)
                 (apply (lambda (_self185549_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self185549_))
                        _g189952_))
                ((##fx= _g189951_ 2)
                 (apply (lambda (_self185553_ _bindings185554_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self185553_
                           _bindings185554_))
                        _g189952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g189952_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self185182_ _bindings185183_)
        (for-each
         (lambda (_bind185185_)
           (let* ((_bind185186185193_ _bind185185_)
                  (_E185188185197_
                   (lambda ()
                     (error '"No clause matching" _bind185186185193_)))
                  (_K185189185265_
                   (lambda (_rest185200_ _id185201_)
                     (gx#core-context-put!
                      _self185182_
                      _id185201_
                      (##structure
                       gx#syntax-binding::t
                       _id185201_
                       _id185201_
                       '#f
                       (let* ((_rest185202185217_ _rest185200_)
                              (_E185206185221_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest185202185217_))))
                         (let ((_K185211185250_
                                (lambda (_core-id185248_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id185248_)))
                               (_K185208185235_
                                (lambda (_proc185233_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc185233_)))
                               (_K185207185226_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id185201_))))
                           (let ((_try-match185205185229_
                                  (lambda ()
                                    (if (##null? _rest185202185217_)
                                        (_K185207185226_)
                                        (_E185206185221_)))))
                             (if (##pair? _rest185202185217_)
                                 (let ((_tl185213185255_
                                        (##cdr _rest185202185217_))
                                       (_hd185212185253_
                                        (##car _rest185202185217_)))
                                   (if (##eq? _hd185212185253_ '=>)
                                       (if (##pair? _tl185213185255_)
                                           (let ((_tl185215185260_
                                                  (##cdr _tl185213185255_))
                                                 (_hd185214185258_
                                                  (##car _tl185213185255_)))
                                             (if (##null? _tl185215185260_)
                                                 (let ((_core-id185263_
                                                        _hd185214185258_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id185263_))
                                                 (_E185206185221_)))
                                           (if (##null? _tl185213185255_)
                                               (let ((_proc185243_
                                                      _hd185212185253_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc185243_))
                                               (_E185206185221_)))
                                       (if (##null? _tl185213185255_)
                                           (let ((_proc185243_
                                                  _hd185212185253_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc185243_))
                                           (_E185206185221_))))
                                 (_try-match185205185229_))))))))))
             (if (##pair? _bind185186185193_)
                 (let ((_hd185190185268_ (##car _bind185186185193_))
                       (_tl185191185270_ (##cdr _bind185186185193_)))
                   (let* ((_id185273_ _hd185190185268_)
                          (_rest185275_ _tl185191185270_))
                     (_K185189185265_ _rest185275_ _id185273_)))
                 (_E185188185197_))))
         _bindings185183_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self185280_)
        (let ((_bindings185282_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self185280_
           _bindings185282_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g189954_
        (let ((_g189953_ (##length _g189954_)))
          (cond ((##fx= _g189953_ 1)
                 (apply (lambda (_self185280_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self185280_))
                        _g189954_))
                ((##fx= _g189953_ 2)
                 (apply (lambda (_self185284_ _bindings185285_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self185284_
                           _bindings185285_))
                        _g189954_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g189954_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self184926_)
        (letrec ((_linux-variant?184928_
                  (lambda (_sys-type185027_)
                    (let* ((_g185028185036_
                            (string-split
                             (symbol->string _sys-type185027_)
                             '#\-))
                           (_else185030185044_ (lambda () '#f))
                           (_K185032185049_
                            (lambda (_rest185047_)
                              (not (null? _rest185047_)))))
                      (if (##pair? _g185028185036_)
                          (let ((_hd185033185052_ (##car _g185028185036_))
                                (_tl185034185054_ (##cdr _g185028185036_)))
                            (if (equal? _hd185033185052_ '"linux")
                                (let ((_rest185057_ _tl185034185054_))
                                  (_K185032185049_ _rest185057_))
                                (_else185030185044_)))
                          (_else185030185044_)))))
                 (_bsd-variant184929_
                  (lambda (_sys-type184986_)
                    (let ((_sys-type-str184988_
                           (symbol->string _sys-type184986_)))
                      (let _lp184990_ ((_rest184992_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest184993185001_ _rest184992_)
                               (_else184995185009_ (lambda () '#f))
                               (_K184997185015_
                                (lambda (_rest185012_ _sys185013_)
                                  (if (string-prefix?
                                       _sys185013_
                                       _sys-type-str184988_)
                                      _sys185013_
                                      (_lp184990_ _rest185012_)))))
                          (if (##pair? _rest184993185001_)
                              (let ((_hd184998185018_
                                     (##car _rest184993185001_))
                                    (_tl184999185020_
                                     (##cdr _rest184993185001_)))
                                (let* ((_sys185023_ _hd184998185018_)
                                       (_rest185025_ _tl184999185020_))
                                  (_K184997185015_ _rest185025_ _sys185023_)))
                              (_else184995185009_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self184926_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self184926_)
          (let* ((_g184930184942_ (system-type))
                 (_else184932184950_ (lambda () '#!void))
                 (_K184934184962_
                  (lambda (_sys-type184953_ _sys-vendor184954_ _sys-cpu184955_)
                    (gx#core-bind-feature!__%
                     _sys-cpu184955_
                     '#f
                     '0
                     _self184926_)
                    (gx#core-bind-feature!__%
                     _sys-type184953_
                     '#f
                     '0
                     _self184926_)
                    (if (_linux-variant?184928_ _sys-type184953_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self184926_)
                        (let ((_$e184957_
                               (_bsd-variant184929_ _sys-type184953_)))
                          (if _$e184957_
                              ((lambda (_sys-prefix184960_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self184926_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix184960_)
                                  '#f
                                  '0
                                  _self184926_))
                               _$e184957_)
                              '#!void))))))
            (if (##pair? _g184930184942_)
                (let ((_hd184935184965_ (##car _g184930184942_))
                      (_tl184936184967_ (##cdr _g184930184942_)))
                  (let ((_sys-cpu184970_ _hd184935184965_))
                    (if (##pair? _tl184936184967_)
                        (let ((_hd184937184972_ (##car _tl184936184967_))
                              (_tl184938184974_ (##cdr _tl184936184967_)))
                          (let ((_sys-vendor184977_ _hd184937184972_))
                            (if (##pair? _tl184938184974_)
                                (let ((_hd184939184979_
                                       (##car _tl184938184974_))
                                      (_tl184940184981_
                                       (##cdr _tl184938184974_)))
                                  (let ((_sys-type184984_ _hd184939184979_))
                                    (if (##null? _tl184940184981_)
                                        (_K184934184962_
                                         _sys-type184984_
                                         _sys-vendor184977_
                                         _sys-cpu184970_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self184926_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
