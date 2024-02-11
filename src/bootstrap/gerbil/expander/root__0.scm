(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707616238)
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
      (lambda (_self172602_ _bind?172603_)
        (if (##fx< '2 (##structure-length _self172602_))
            (begin
              (##unchecked-structure-set!
               _self172602_
               'root
               '1
               (##structure-type _self172602_)
               '#f)
              (##unchecked-structure-set!
               _self172602_
               (make-table 'test: eq?)
               '2
               (##structure-type _self172602_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self172602_
                   '2
                   (##vector-length _self172602_)))
        (if _bind?172603_
            (begin
              (let ((__method177121
                     (method-ref _self172602_ 'bind-core-syntax-expanders!)))
                (if __method177121
                    (__method177121 _self172602_)
                    (error '"Missing method"
                           _self172602_
                           'bind-core-syntax-expanders!)))
              (let ((__method177122
                     (method-ref _self172602_ 'bind-core-macro-expanders!)))
                (if __method177122
                    (__method177122 _self172602_)
                    (error '"Missing method"
                           _self172602_
                           'bind-core-macro-expanders!)))
              (let ((__method177123
                     (method-ref _self172602_ 'bind-core-features!)))
                (if __method177123
                    (__method177123 _self172602_)
                    (error '"Missing method"
                           _self172602_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self172608_)
        (let ((_bind?172610_ '#t))
          (gx#root-context:::init!__% _self172608_ _bind?172610_))))
    (define gx#root-context:::init!
      (lambda _g177126_
        (let ((_g177125_ (##length _g177126_)))
          (cond ((##fx= _g177125_ 1)
                 (apply (lambda (_self172608_)
                          (gx#root-context:::init!__0 _self172608_))
                        _g177126_))
                ((##fx= _g177125_ 2)
                 (apply (lambda (_self172612_ _bind?172613_)
                          (gx#root-context:::init!__%
                           _self172612_
                           _bind?172613_))
                        _g177126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g177126_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t177082)
        (let ((__bind-core-syntax-expanders!177083
               (make-promise
                (lambda ()
                  (let ((__tmp177086
                         (direct-method-ref
                          __t177082
                          'bind-core-syntax-expanders!)))
                    (if __tmp177086
                        __tmp177086
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!177084
               (make-promise
                (lambda ()
                  (let ((__tmp177087
                         (direct-method-ref
                          __t177082
                          'bind-core-macro-expanders!)))
                    (if __tmp177087
                        __tmp177087
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!177085
               (make-promise
                (lambda ()
                  (let ((__tmp177088
                         (direct-method-ref __t177082 'bind-core-features!)))
                    (if __tmp177088
                        __tmp177088
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda172600172605_
                 (lambda (_self172602_ _bind?172603_)
                   (if (##fx< '2 (##structure-length _self172602_))
                       (begin
                         (##unchecked-structure-set!
                          _self172602_
                          'root
                          '1
                          (##structure-type _self172602_)
                          '#f)
                         (##unchecked-structure-set!
                          _self172602_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self172602_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self172602_
                              '2
                              (##vector-length _self172602_)))
                   (if _bind?172603_
                       (begin
                         ((force __bind-core-syntax-expanders!177083)
                          _self172602_)
                         ((force __bind-core-macro-expanders!177084)
                          _self172602_)
                         ((force __bind-core-features!177085) _self172602_))
                       '#!void))))
            (lambda _g177128_
              (let ((_g177127_ (##length _g177128_)))
                (cond ((##fx= _g177127_ 1)
                       (apply (lambda (_self172608_)
                                (let ((_bind?172610_ '#t))
                                  (_opt-lambda172600172605_
                                   _self172608_
                                   _bind?172610_)))
                              _g177128_))
                      ((##fx= _g177127_ 2)
                       (apply (lambda (_self172612_ _bind?172613_)
                                (_opt-lambda172600172605_
                                 _self172612_
                                 _bind?172613_))
                              _g177128_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g177128_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self172458_ _super172459_)
        (let ((_super172467_
               (let ((_$e172461_ _super172459_))
                 (if _$e172461_
                     _$e172461_
                     (let ((_$e172464_ (gx#core-context-root__0)))
                       (if _$e172464_
                           _$e172464_
                           (let ((__obj177124
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj177124)
                             __obj177124)))))))
          (if (##fx< '5 (##structure-length _self172458_))
              (begin
                (##unchecked-structure-set!
                 _self172458_
                 'top
                 '1
                 (##structure-type _self172458_)
                 '#f)
                (##unchecked-structure-set!
                 _self172458_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self172458_)
                 '#f)
                (##unchecked-structure-set!
                 _self172458_
                 _super172467_
                 '3
                 (##structure-type _self172458_)
                 '#f)
                (##unchecked-structure-set!
                 _self172458_
                 '#f
                 '4
                 (##structure-type _self172458_)
                 '#f)
                (##unchecked-structure-set!
                 _self172458_
                 '#f
                 '5
                 (##structure-type _self172458_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self172458_
                     '5
                     (##vector-length _self172458_))))))
    (define gx#top-context:::init!__0
      (lambda (_self172472_)
        (let ((_super172474_ '#f))
          (gx#top-context:::init!__% _self172472_ _super172474_))))
    (define gx#top-context:::init!
      (lambda _g177130_
        (let ((_g177129_ (##length _g177130_)))
          (cond ((##fx= _g177129_ 1)
                 (apply (lambda (_self172472_)
                          (gx#top-context:::init!__0 _self172472_))
                        _g177130_))
                ((##fx= _g177129_ 2)
                 (apply (lambda (_self172476_ _super172477_)
                          (gx#top-context:::init!__%
                           _self172476_
                           _super172477_))
                        _g177130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g177130_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self172189_ _bindings172190_)
        (for-each
         (lambda (_bind172192_)
           (let* ((_bind172193172200_ _bind172192_)
                  (_E172195172204_
                   (lambda ()
                     (error '"No clause matching" _bind172193172200_)))
                  (_K172196172313_
                   (lambda (_rest172207_ _id172208_)
                     (gx#core-context-put!
                      _self172189_
                      _id172208_
                      (##structure
                       gx#syntax-binding::t
                       _id172208_
                       _id172208_
                       '#f
                       (let* ((_rest172209172220_ _rest172207_)
                              (_E172211172224_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest172209172220_)))
                              (_K172212172289_
                               (lambda (_compiler172227_
                                        _expander172228_
                                        _key172229_)
                                 ((let* ((_key172230172243_ _key172229_)
                                         (_E172236172247_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key172230172243_))))
                                    (let ((_K172241172283_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K172240172276_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K172239172268_
                                           (lambda () gx#make-definition-form))
                                          (_K172238172260_
                                           (lambda () gx#make-special-form))
                                          (_K172237172252_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match172235172255_
                                              (lambda ()
                                                (if (##eq? _key172230172243_
                                                           'expr:)
                                                    (_K172237172252_)
                                                    (_E172236172247_))))
                                             (_try-match172234172263_
                                              (lambda ()
                                                (if (##eq? _key172230172243_
                                                           'special:)
                                                    (_K172238172260_)
                                                    (_try-match172235172255_))))
                                             (_try-match172233172271_
                                              (lambda ()
                                                (if (##eq? _key172230172243_
                                                           'define:)
                                                    (_K172239172268_)
                                                    (_try-match172234172263_))))
                                             (_try-match172232172279_
                                              (lambda ()
                                                (if (##eq? _key172230172243_
                                                           'module:)
                                                    (_K172240172276_)
                                                    (_try-match172233172271_)))))
                                        (if (##eq? _key172230172243_ 'top:)
                                            (_K172241172283_)
                                            (_try-match172232172279_)))))
                                  _expander172228_
                                  _id172208_
                                  (let ((_$e172286_ _compiler172227_))
                                    (if _$e172286_
                                        _$e172286_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest172209172220_)
                             (let ((_hd172213172292_
                                    (##car _rest172209172220_))
                                   (_tl172214172294_
                                    (##cdr _rest172209172220_)))
                               (let ((_key172297_ _hd172213172292_))
                                 (if (##pair? _tl172214172294_)
                                     (let ((_hd172215172299_
                                            (##car _tl172214172294_))
                                           (_tl172216172301_
                                            (##cdr _tl172214172294_)))
                                       (let ((_expander172304_
                                              _hd172215172299_))
                                         (if (##pair? _tl172216172301_)
                                             (let ((_hd172217172306_
                                                    (##car _tl172216172301_))
                                                   (_tl172218172308_
                                                    (##cdr _tl172216172301_)))
                                               (let ((_compiler172311_
                                                      _hd172217172306_))
                                                 (if (##null? _tl172218172308_)
                                                     (_K172212172289_
                                                      _compiler172311_
                                                      _expander172304_
                                                      _key172297_)
                                                     (_E172211172224_))))
                                             (_E172211172224_))))
                                     (_E172211172224_))))
                             (_E172211172224_))))))))
             (if (##pair? _bind172193172200_)
                 (let ((_hd172197172316_ (##car _bind172193172200_))
                       (_tl172198172318_ (##cdr _bind172193172200_)))
                   (let* ((_id172321_ _hd172197172316_)
                          (_rest172323_ _tl172198172318_))
                     (_K172196172313_ _rest172323_ _id172321_)))
                 (_E172195172204_))))
         _bindings172190_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self172328_)
        (let ((_bindings172330_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self172328_
           _bindings172330_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g177132_
        (let ((_g177131_ (##length _g177132_)))
          (cond ((##fx= _g177131_ 1)
                 (apply (lambda (_self172328_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self172328_))
                        _g177132_))
                ((##fx= _g177131_ 2)
                 (apply (lambda (_self172332_ _bindings172333_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self172332_
                           _bindings172333_))
                        _g177132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g177132_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self171961_ _bindings171962_)
        (for-each
         (lambda (_bind171964_)
           (let* ((_bind171965171972_ _bind171964_)
                  (_E171967171976_
                   (lambda ()
                     (error '"No clause matching" _bind171965171972_)))
                  (_K171968172044_
                   (lambda (_rest171979_ _id171980_)
                     (gx#core-context-put!
                      _self171961_
                      _id171980_
                      (##structure
                       gx#syntax-binding::t
                       _id171980_
                       _id171980_
                       '#f
                       (let* ((_rest171981171996_ _rest171979_)
                              (_E171985172000_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest171981171996_))))
                         (let ((_K171990172029_
                                (lambda (_core-id172027_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id172027_)))
                               (_K171987172014_
                                (lambda (_proc172012_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc172012_)))
                               (_K171986172005_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id171980_))))
                           (let ((_try-match171984172008_
                                  (lambda ()
                                    (if (##null? _rest171981171996_)
                                        (_K171986172005_)
                                        (_E171985172000_)))))
                             (if (##pair? _rest171981171996_)
                                 (let ((_tl171992172034_
                                        (##cdr _rest171981171996_))
                                       (_hd171991172032_
                                        (##car _rest171981171996_)))
                                   (if (##eq? _hd171991172032_ '=>)
                                       (if (##pair? _tl171992172034_)
                                           (let ((_tl171994172039_
                                                  (##cdr _tl171992172034_))
                                                 (_hd171993172037_
                                                  (##car _tl171992172034_)))
                                             (if (##null? _tl171994172039_)
                                                 (let ((_core-id172042_
                                                        _hd171993172037_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id172042_))
                                                 (_E171985172000_)))
                                           (if (##null? _tl171992172034_)
                                               (let ((_proc172022_
                                                      _hd171991172032_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc172022_))
                                               (_E171985172000_)))
                                       (if (##null? _tl171992172034_)
                                           (let ((_proc172022_
                                                  _hd171991172032_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc172022_))
                                           (_E171985172000_))))
                                 (_try-match171984172008_))))))))))
             (if (##pair? _bind171965171972_)
                 (let ((_hd171969172047_ (##car _bind171965171972_))
                       (_tl171970172049_ (##cdr _bind171965171972_)))
                   (let* ((_id172052_ _hd171969172047_)
                          (_rest172054_ _tl171970172049_))
                     (_K171968172044_ _rest172054_ _id172052_)))
                 (_E171967171976_))))
         _bindings171962_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self172059_)
        (let ((_bindings172061_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self172059_
           _bindings172061_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g177134_
        (let ((_g177133_ (##length _g177134_)))
          (cond ((##fx= _g177133_ 1)
                 (apply (lambda (_self172059_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self172059_))
                        _g177134_))
                ((##fx= _g177133_ 2)
                 (apply (lambda (_self172063_ _bindings172064_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self172063_
                           _bindings172064_))
                        _g177134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g177134_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self171705_)
        (letrec ((_linux-variant?171707_
                  (lambda (_sys-type171806_)
                    (let* ((_g171807171815_
                            (string-split
                             (symbol->string _sys-type171806_)
                             '#\-))
                           (_else171809171823_ (lambda () '#f))
                           (_K171811171828_
                            (lambda (_rest171826_)
                              (not (null? _rest171826_)))))
                      (if (##pair? _g171807171815_)
                          (let ((_hd171812171831_ (##car _g171807171815_))
                                (_tl171813171833_ (##cdr _g171807171815_)))
                            (if (equal? _hd171812171831_ '"linux")
                                (let ((_rest171836_ _tl171813171833_))
                                  (_K171811171828_ _rest171836_))
                                (_else171809171823_)))
                          (_else171809171823_)))))
                 (_bsd-variant171708_
                  (lambda (_sys-type171765_)
                    (let ((_sys-type-str171767_
                           (symbol->string _sys-type171765_)))
                      (let _lp171769_ ((_rest171771_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest171772171780_ _rest171771_)
                               (_else171774171788_ (lambda () '#f))
                               (_K171776171794_
                                (lambda (_rest171791_ _sys171792_)
                                  (if (string-prefix?
                                       _sys171792_
                                       _sys-type-str171767_)
                                      _sys171792_
                                      (_lp171769_ _rest171791_)))))
                          (if (##pair? _rest171772171780_)
                              (let ((_hd171777171797_
                                     (##car _rest171772171780_))
                                    (_tl171778171799_
                                     (##cdr _rest171772171780_)))
                                (let* ((_sys171802_ _hd171777171797_)
                                       (_rest171804_ _tl171778171799_))
                                  (_K171776171794_ _rest171804_ _sys171802_)))
                              (_else171774171788_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self171705_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self171705_)
          (let* ((_g171709171721_ (system-type))
                 (_else171711171729_ (lambda () '#!void))
                 (_K171713171741_
                  (lambda (_sys-type171732_ _sys-vendor171733_ _sys-cpu171734_)
                    (gx#core-bind-feature!__%
                     _sys-cpu171734_
                     '#f
                     '0
                     _self171705_)
                    (gx#core-bind-feature!__%
                     _sys-type171732_
                     '#f
                     '0
                     _self171705_)
                    (if (_linux-variant?171707_ _sys-type171732_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self171705_)
                        (let ((_$e171736_
                               (_bsd-variant171708_ _sys-type171732_)))
                          (if _$e171736_
                              ((lambda (_sys-prefix171739_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self171705_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix171739_)
                                  '#f
                                  '0
                                  _self171705_))
                               _$e171736_)
                              '#!void))))))
            (if (##pair? _g171709171721_)
                (let ((_hd171714171744_ (##car _g171709171721_))
                      (_tl171715171746_ (##cdr _g171709171721_)))
                  (let ((_sys-cpu171749_ _hd171714171744_))
                    (if (##pair? _tl171715171746_)
                        (let ((_hd171716171751_ (##car _tl171715171746_))
                              (_tl171717171753_ (##cdr _tl171715171746_)))
                          (let ((_sys-vendor171756_ _hd171716171751_))
                            (if (##pair? _tl171717171753_)
                                (let ((_hd171718171758_
                                       (##car _tl171717171753_))
                                      (_tl171719171760_
                                       (##cdr _tl171717171753_)))
                                  (let ((_sys-type171763_ _hd171718171758_))
                                    (if (##null? _tl171719171760_)
                                        (_K171713171741_
                                         _sys-type171763_
                                         _sys-vendor171756_
                                         _sys-cpu171749_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self171705_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
