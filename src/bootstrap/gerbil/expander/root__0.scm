(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707618265)
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
      (lambda (_self172605_ _bind?172606_)
        (if (##fx< '2 (##structure-length _self172605_))
            (begin
              (##unchecked-structure-set!
               _self172605_
               'root
               '1
               (##structure-type _self172605_)
               '#f)
              (##unchecked-structure-set!
               _self172605_
               (make-table 'test: eq?)
               '2
               (##structure-type _self172605_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self172605_
                   '2
                   (##vector-length _self172605_)))
        (if _bind?172606_
            (begin
              (let ((__method177124
                     (method-ref _self172605_ 'bind-core-syntax-expanders!)))
                (if __method177124
                    (__method177124 _self172605_)
                    (error '"Missing method"
                           _self172605_
                           'bind-core-syntax-expanders!)))
              (let ((__method177125
                     (method-ref _self172605_ 'bind-core-macro-expanders!)))
                (if __method177125
                    (__method177125 _self172605_)
                    (error '"Missing method"
                           _self172605_
                           'bind-core-macro-expanders!)))
              (let ((__method177126
                     (method-ref _self172605_ 'bind-core-features!)))
                (if __method177126
                    (__method177126 _self172605_)
                    (error '"Missing method"
                           _self172605_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self172611_)
        (let ((_bind?172613_ '#t))
          (gx#root-context:::init!__% _self172611_ _bind?172613_))))
    (define gx#root-context:::init!
      (lambda _g177129_
        (let ((_g177128_ (##length _g177129_)))
          (cond ((##fx= _g177128_ 1)
                 (apply (lambda (_self172611_)
                          (gx#root-context:::init!__0 _self172611_))
                        _g177129_))
                ((##fx= _g177128_ 2)
                 (apply (lambda (_self172615_ _bind?172616_)
                          (gx#root-context:::init!__%
                           _self172615_
                           _bind?172616_))
                        _g177129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g177129_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t177085)
        (let ((__bind-core-macro-expanders!177086
               (make-promise
                (lambda ()
                  (let ((__tmp177089
                         (direct-method-ref
                          __t177085
                          'bind-core-macro-expanders!)))
                    (if __tmp177089
                        __tmp177089
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!177087
               (make-promise
                (lambda ()
                  (let ((__tmp177090
                         (direct-method-ref __t177085 'bind-core-features!)))
                    (if __tmp177090
                        __tmp177090
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!177088
               (make-promise
                (lambda ()
                  (let ((__tmp177091
                         (direct-method-ref
                          __t177085
                          'bind-core-syntax-expanders!)))
                    (if __tmp177091
                        __tmp177091
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda172603172608_
                 (lambda (_self172605_ _bind?172606_)
                   (if (##fx< '2 (##structure-length _self172605_))
                       (begin
                         (##unchecked-structure-set!
                          _self172605_
                          'root
                          '1
                          (##structure-type _self172605_)
                          '#f)
                         (##unchecked-structure-set!
                          _self172605_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self172605_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self172605_
                              '2
                              (##vector-length _self172605_)))
                   (if _bind?172606_
                       (begin
                         ((force __bind-core-syntax-expanders!177088)
                          _self172605_)
                         ((force __bind-core-macro-expanders!177086)
                          _self172605_)
                         ((force __bind-core-features!177087) _self172605_))
                       '#!void))))
            (lambda _g177131_
              (let ((_g177130_ (##length _g177131_)))
                (cond ((##fx= _g177130_ 1)
                       (apply (lambda (_self172611_)
                                (let ((_bind?172613_ '#t))
                                  (_opt-lambda172603172608_
                                   _self172611_
                                   _bind?172613_)))
                              _g177131_))
                      ((##fx= _g177130_ 2)
                       (apply (lambda (_self172615_ _bind?172616_)
                                (_opt-lambda172603172608_
                                 _self172615_
                                 _bind?172616_))
                              _g177131_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g177131_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self172461_ _super172462_)
        (let ((_super172470_
               (let ((_$e172464_ _super172462_))
                 (if _$e172464_
                     _$e172464_
                     (let ((_$e172467_ (gx#core-context-root__0)))
                       (if _$e172467_
                           _$e172467_
                           (let ((__obj177127
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj177127)
                             __obj177127)))))))
          (if (##fx< '5 (##structure-length _self172461_))
              (begin
                (##unchecked-structure-set!
                 _self172461_
                 'top
                 '1
                 (##structure-type _self172461_)
                 '#f)
                (##unchecked-structure-set!
                 _self172461_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self172461_)
                 '#f)
                (##unchecked-structure-set!
                 _self172461_
                 _super172470_
                 '3
                 (##structure-type _self172461_)
                 '#f)
                (##unchecked-structure-set!
                 _self172461_
                 '#f
                 '4
                 (##structure-type _self172461_)
                 '#f)
                (##unchecked-structure-set!
                 _self172461_
                 '#f
                 '5
                 (##structure-type _self172461_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self172461_
                     '5
                     (##vector-length _self172461_))))))
    (define gx#top-context:::init!__0
      (lambda (_self172475_)
        (let ((_super172477_ '#f))
          (gx#top-context:::init!__% _self172475_ _super172477_))))
    (define gx#top-context:::init!
      (lambda _g177133_
        (let ((_g177132_ (##length _g177133_)))
          (cond ((##fx= _g177132_ 1)
                 (apply (lambda (_self172475_)
                          (gx#top-context:::init!__0 _self172475_))
                        _g177133_))
                ((##fx= _g177132_ 2)
                 (apply (lambda (_self172479_ _super172480_)
                          (gx#top-context:::init!__%
                           _self172479_
                           _super172480_))
                        _g177133_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g177133_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self172192_ _bindings172193_)
        (for-each
         (lambda (_bind172195_)
           (let* ((_bind172196172203_ _bind172195_)
                  (_E172198172207_
                   (lambda ()
                     (error '"No clause matching" _bind172196172203_)))
                  (_K172199172316_
                   (lambda (_rest172210_ _id172211_)
                     (gx#core-context-put!
                      _self172192_
                      _id172211_
                      (##structure
                       gx#syntax-binding::t
                       _id172211_
                       _id172211_
                       '#f
                       (let* ((_rest172212172223_ _rest172210_)
                              (_E172214172227_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest172212172223_)))
                              (_K172215172292_
                               (lambda (_compiler172230_
                                        _expander172231_
                                        _key172232_)
                                 ((let* ((_key172233172246_ _key172232_)
                                         (_E172239172250_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key172233172246_))))
                                    (let ((_K172244172286_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K172243172279_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K172242172271_
                                           (lambda () gx#make-definition-form))
                                          (_K172241172263_
                                           (lambda () gx#make-special-form))
                                          (_K172240172255_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match172238172258_
                                              (lambda ()
                                                (if (##eq? _key172233172246_
                                                           'expr:)
                                                    (_K172240172255_)
                                                    (_E172239172250_))))
                                             (_try-match172237172266_
                                              (lambda ()
                                                (if (##eq? _key172233172246_
                                                           'special:)
                                                    (_K172241172263_)
                                                    (_try-match172238172258_))))
                                             (_try-match172236172274_
                                              (lambda ()
                                                (if (##eq? _key172233172246_
                                                           'define:)
                                                    (_K172242172271_)
                                                    (_try-match172237172266_))))
                                             (_try-match172235172282_
                                              (lambda ()
                                                (if (##eq? _key172233172246_
                                                           'module:)
                                                    (_K172243172279_)
                                                    (_try-match172236172274_)))))
                                        (if (##eq? _key172233172246_ 'top:)
                                            (_K172244172286_)
                                            (_try-match172235172282_)))))
                                  _expander172231_
                                  _id172211_
                                  (let ((_$e172289_ _compiler172230_))
                                    (if _$e172289_
                                        _$e172289_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest172212172223_)
                             (let ((_hd172216172295_
                                    (##car _rest172212172223_))
                                   (_tl172217172297_
                                    (##cdr _rest172212172223_)))
                               (let ((_key172300_ _hd172216172295_))
                                 (if (##pair? _tl172217172297_)
                                     (let ((_hd172218172302_
                                            (##car _tl172217172297_))
                                           (_tl172219172304_
                                            (##cdr _tl172217172297_)))
                                       (let ((_expander172307_
                                              _hd172218172302_))
                                         (if (##pair? _tl172219172304_)
                                             (let ((_hd172220172309_
                                                    (##car _tl172219172304_))
                                                   (_tl172221172311_
                                                    (##cdr _tl172219172304_)))
                                               (let ((_compiler172314_
                                                      _hd172220172309_))
                                                 (if (##null? _tl172221172311_)
                                                     (_K172215172292_
                                                      _compiler172314_
                                                      _expander172307_
                                                      _key172300_)
                                                     (_E172214172227_))))
                                             (_E172214172227_))))
                                     (_E172214172227_))))
                             (_E172214172227_))))))))
             (if (##pair? _bind172196172203_)
                 (let ((_hd172200172319_ (##car _bind172196172203_))
                       (_tl172201172321_ (##cdr _bind172196172203_)))
                   (let* ((_id172324_ _hd172200172319_)
                          (_rest172326_ _tl172201172321_))
                     (_K172199172316_ _rest172326_ _id172324_)))
                 (_E172198172207_))))
         _bindings172193_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self172331_)
        (let ((_bindings172333_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self172331_
           _bindings172333_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g177135_
        (let ((_g177134_ (##length _g177135_)))
          (cond ((##fx= _g177134_ 1)
                 (apply (lambda (_self172331_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self172331_))
                        _g177135_))
                ((##fx= _g177134_ 2)
                 (apply (lambda (_self172335_ _bindings172336_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self172335_
                           _bindings172336_))
                        _g177135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g177135_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self171964_ _bindings171965_)
        (for-each
         (lambda (_bind171967_)
           (let* ((_bind171968171975_ _bind171967_)
                  (_E171970171979_
                   (lambda ()
                     (error '"No clause matching" _bind171968171975_)))
                  (_K171971172047_
                   (lambda (_rest171982_ _id171983_)
                     (gx#core-context-put!
                      _self171964_
                      _id171983_
                      (##structure
                       gx#syntax-binding::t
                       _id171983_
                       _id171983_
                       '#f
                       (let* ((_rest171984171999_ _rest171982_)
                              (_E171988172003_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest171984171999_))))
                         (let ((_K171993172032_
                                (lambda (_core-id172030_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id172030_)))
                               (_K171990172017_
                                (lambda (_proc172015_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc172015_)))
                               (_K171989172008_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id171983_))))
                           (let ((_try-match171987172011_
                                  (lambda ()
                                    (if (##null? _rest171984171999_)
                                        (_K171989172008_)
                                        (_E171988172003_)))))
                             (if (##pair? _rest171984171999_)
                                 (let ((_tl171995172037_
                                        (##cdr _rest171984171999_))
                                       (_hd171994172035_
                                        (##car _rest171984171999_)))
                                   (if (##eq? _hd171994172035_ '=>)
                                       (if (##pair? _tl171995172037_)
                                           (let ((_tl171997172042_
                                                  (##cdr _tl171995172037_))
                                                 (_hd171996172040_
                                                  (##car _tl171995172037_)))
                                             (if (##null? _tl171997172042_)
                                                 (let ((_core-id172045_
                                                        _hd171996172040_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id172045_))
                                                 (_E171988172003_)))
                                           (if (##null? _tl171995172037_)
                                               (let ((_proc172025_
                                                      _hd171994172035_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc172025_))
                                               (_E171988172003_)))
                                       (if (##null? _tl171995172037_)
                                           (let ((_proc172025_
                                                  _hd171994172035_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc172025_))
                                           (_E171988172003_))))
                                 (_try-match171987172011_))))))))))
             (if (##pair? _bind171968171975_)
                 (let ((_hd171972172050_ (##car _bind171968171975_))
                       (_tl171973172052_ (##cdr _bind171968171975_)))
                   (let* ((_id172055_ _hd171972172050_)
                          (_rest172057_ _tl171973172052_))
                     (_K171971172047_ _rest172057_ _id172055_)))
                 (_E171970171979_))))
         _bindings171965_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self172062_)
        (let ((_bindings172064_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self172062_
           _bindings172064_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g177137_
        (let ((_g177136_ (##length _g177137_)))
          (cond ((##fx= _g177136_ 1)
                 (apply (lambda (_self172062_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self172062_))
                        _g177137_))
                ((##fx= _g177136_ 2)
                 (apply (lambda (_self172066_ _bindings172067_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self172066_
                           _bindings172067_))
                        _g177137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g177137_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self171708_)
        (letrec ((_linux-variant?171710_
                  (lambda (_sys-type171809_)
                    (let* ((_g171810171818_
                            (string-split
                             (symbol->string _sys-type171809_)
                             '#\-))
                           (_else171812171826_ (lambda () '#f))
                           (_K171814171831_
                            (lambda (_rest171829_)
                              (not (null? _rest171829_)))))
                      (if (##pair? _g171810171818_)
                          (let ((_hd171815171834_ (##car _g171810171818_))
                                (_tl171816171836_ (##cdr _g171810171818_)))
                            (if (equal? _hd171815171834_ '"linux")
                                (let ((_rest171839_ _tl171816171836_))
                                  (_K171814171831_ _rest171839_))
                                (_else171812171826_)))
                          (_else171812171826_)))))
                 (_bsd-variant171711_
                  (lambda (_sys-type171768_)
                    (let ((_sys-type-str171770_
                           (symbol->string _sys-type171768_)))
                      (let _lp171772_ ((_rest171774_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest171775171783_ _rest171774_)
                               (_else171777171791_ (lambda () '#f))
                               (_K171779171797_
                                (lambda (_rest171794_ _sys171795_)
                                  (if (string-prefix?
                                       _sys171795_
                                       _sys-type-str171770_)
                                      _sys171795_
                                      (_lp171772_ _rest171794_)))))
                          (if (##pair? _rest171775171783_)
                              (let ((_hd171780171800_
                                     (##car _rest171775171783_))
                                    (_tl171781171802_
                                     (##cdr _rest171775171783_)))
                                (let* ((_sys171805_ _hd171780171800_)
                                       (_rest171807_ _tl171781171802_))
                                  (_K171779171797_ _rest171807_ _sys171805_)))
                              (_else171777171791_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self171708_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self171708_)
          (let* ((_g171712171724_ (system-type))
                 (_else171714171732_ (lambda () '#!void))
                 (_K171716171744_
                  (lambda (_sys-type171735_ _sys-vendor171736_ _sys-cpu171737_)
                    (gx#core-bind-feature!__%
                     _sys-cpu171737_
                     '#f
                     '0
                     _self171708_)
                    (gx#core-bind-feature!__%
                     _sys-type171735_
                     '#f
                     '0
                     _self171708_)
                    (if (_linux-variant?171710_ _sys-type171735_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self171708_)
                        (let ((_$e171739_
                               (_bsd-variant171711_ _sys-type171735_)))
                          (if _$e171739_
                              ((lambda (_sys-prefix171742_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self171708_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix171742_)
                                  '#f
                                  '0
                                  _self171708_))
                               _$e171739_)
                              '#!void))))))
            (if (##pair? _g171712171724_)
                (let ((_hd171717171747_ (##car _g171712171724_))
                      (_tl171718171749_ (##cdr _g171712171724_)))
                  (let ((_sys-cpu171752_ _hd171717171747_))
                    (if (##pair? _tl171718171749_)
                        (let ((_hd171719171754_ (##car _tl171718171749_))
                              (_tl171720171756_ (##cdr _tl171718171749_)))
                          (let ((_sys-vendor171759_ _hd171719171754_))
                            (if (##pair? _tl171720171756_)
                                (let ((_hd171721171761_
                                       (##car _tl171720171756_))
                                      (_tl171722171763_
                                       (##cdr _tl171720171756_)))
                                  (let ((_sys-type171766_ _hd171721171761_))
                                    (if (##null? _tl171722171763_)
                                        (_K171716171744_
                                         _sys-type171766_
                                         _sys-vendor171759_
                                         _sys-cpu171752_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self171708_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
