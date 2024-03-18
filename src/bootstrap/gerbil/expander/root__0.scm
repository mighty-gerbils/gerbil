(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1710687284)
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
      (lambda (_self96936_ _bind?96937_)
        (if (##fx< '2 (##structure-length _self96936_))
            (begin
              (##unchecked-structure-set!
               _self96936_
               'root
               '1
               (##structure-type _self96936_)
               '#f)
              (##unchecked-structure-set!
               _self96936_
               (make-hash-table-eq)
               '2
               (##structure-type _self96936_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self96936_
                   '2
                   (##vector-length _self96936_)))
        (if _bind?96937_
            (begin
              (let ((__method96988
                     (method-ref _self96936_ 'bind-core-syntax-expanders!)))
                (if __method96988
                    (__method96988 _self96936_)
                    (error '"Missing method"
                           _self96936_
                           'bind-core-syntax-expanders!)))
              (let ((__method96989
                     (method-ref _self96936_ 'bind-core-macro-expanders!)))
                (if __method96989
                    (__method96989 _self96936_)
                    (error '"Missing method"
                           _self96936_
                           'bind-core-macro-expanders!)))
              (let ((__method96990
                     (method-ref _self96936_ 'bind-core-features!)))
                (if __method96990
                    (__method96990 _self96936_)
                    (error '"Missing method"
                           _self96936_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self96942_)
        (let ((_bind?96944_ '#t))
          (gx#root-context:::init!__% _self96942_ _bind?96944_))))
    (define gx#root-context:::init!
      (lambda _g96993_
        (let ((_g96992_ (##length _g96993_)))
          (cond ((##fx= _g96992_ 1)
                 (apply (lambda (_self96942_)
                          (gx#root-context:::init!__0 _self96942_))
                        _g96993_))
                ((##fx= _g96992_ 2)
                 (apply (lambda (_self96946_ _bind?96947_)
                          (gx#root-context:::init!__%
                           _self96946_
                           _bind?96947_))
                        _g96993_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g96993_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass96948 __method-table96949)
        (let ((__bind-core-macro-expanders!96950
               (make-promise
                (lambda ()
                  (let ((__method96953
                         (symbolic-table-ref
                          __method-table96949
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method96953
                        __method96953
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!96951
               (make-promise
                (lambda ()
                  (let ((__method96954
                         (symbolic-table-ref
                          __method-table96949
                          'bind-core-features!
                          '#f)))
                    (if __method96954
                        __method96954
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!96952
               (make-promise
                (lambda ()
                  (let ((__method96955
                         (symbolic-table-ref
                          __method-table96949
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method96955
                        __method96955
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda9693496939_
                 (lambda (_self96936_ _bind?96937_)
                   (if (##fx< '2 (##structure-length _self96936_))
                       (begin
                         (##unchecked-structure-set!
                          _self96936_
                          'root
                          '1
                          (##structure-type _self96936_)
                          '#f)
                         (##unchecked-structure-set!
                          _self96936_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self96936_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self96936_
                              '2
                              (##vector-length _self96936_)))
                   (if _bind?96937_
                       (begin
                         ((force __bind-core-syntax-expanders!96952)
                          _self96936_)
                         ((force __bind-core-macro-expanders!96950)
                          _self96936_)
                         ((force __bind-core-features!96951) _self96936_))
                       '#!void))))
            (lambda _g96995_
              (let ((_g96994_ (##length _g96995_)))
                (cond ((##fx= _g96994_ 1)
                       (apply (lambda (_self96942_)
                                (let ((_bind?96944_ '#t))
                                  (_opt-lambda9693496939_
                                   _self96942_
                                   _bind?96944_)))
                              _g96995_))
                      ((##fx= _g96994_ 2)
                       (apply (lambda (_self96946_ _bind?96947_)
                                (_opt-lambda9693496939_
                                 _self96946_
                                 _bind?96947_))
                              _g96995_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g96995_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self96792_ _super96793_)
        (let ((_super96801_
               (let ((_$e96795_ _super96793_))
                 (if _$e96795_
                     _$e96795_
                     (let ((_$e96798_ (gx#core-context-root__0)))
                       (if _$e96798_
                           _$e96798_
                           (let ((__obj96991
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj96991)
                             __obj96991)))))))
          (if (##fx< '5 (##structure-length _self96792_))
              (begin
                (##unchecked-structure-set!
                 _self96792_
                 'top
                 '1
                 (##structure-type _self96792_)
                 '#f)
                (##unchecked-structure-set!
                 _self96792_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self96792_)
                 '#f)
                (##unchecked-structure-set!
                 _self96792_
                 _super96801_
                 '3
                 (##structure-type _self96792_)
                 '#f)
                (##unchecked-structure-set!
                 _self96792_
                 '#f
                 '4
                 (##structure-type _self96792_)
                 '#f)
                (##unchecked-structure-set!
                 _self96792_
                 '#f
                 '5
                 (##structure-type _self96792_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self96792_
                     '5
                     (##vector-length _self96792_))))))
    (define gx#top-context:::init!__0
      (lambda (_self96806_)
        (let ((_super96808_ '#f))
          (gx#top-context:::init!__% _self96806_ _super96808_))))
    (define gx#top-context:::init!
      (lambda _g96997_
        (let ((_g96996_ (##length _g96997_)))
          (cond ((##fx= _g96996_ 1)
                 (apply (lambda (_self96806_)
                          (gx#top-context:::init!__0 _self96806_))
                        _g96997_))
                ((##fx= _g96996_ 2)
                 (apply (lambda (_self96810_ _super96811_)
                          (gx#top-context:::init!__% _self96810_ _super96811_))
                        _g96997_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g96997_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self96523_ _bindings96524_)
        (for-each
         (lambda (_bind96526_)
           (let* ((_bind9652796534_ _bind96526_)
                  (_E9652996538_
                   (lambda () (error '"No clause matching" _bind9652796534_)))
                  (_K9653096647_
                   (lambda (_rest96541_ _id96542_)
                     (gx#core-context-put!
                      _self96523_
                      _id96542_
                      (##structure
                       gx#syntax-binding::t
                       _id96542_
                       _id96542_
                       '#f
                       (let* ((_rest9654396554_ _rest96541_)
                              (_E9654596558_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9654396554_)))
                              (_K9654696623_
                               (lambda (_compiler96561_
                                        _expander96562_
                                        _key96563_)
                                 ((let* ((_key9656496577_ _key96563_)
                                         (_E9657096581_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9656496577_))))
                                    (let ((_K9657596617_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9657496610_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9657396602_
                                           (lambda () gx#make-definition-form))
                                          (_K9657296594_
                                           (lambda () gx#make-special-form))
                                          (_K9657196586_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9656996589_
                                              (lambda ()
                                                (if (##eq? _key9656496577_
                                                           'expr:)
                                                    (_K9657196586_)
                                                    (_E9657096581_))))
                                             (_try-match9656896597_
                                              (lambda ()
                                                (if (##eq? _key9656496577_
                                                           'special:)
                                                    (_K9657296594_)
                                                    (_try-match9656996589_))))
                                             (_try-match9656796605_
                                              (lambda ()
                                                (if (##eq? _key9656496577_
                                                           'define:)
                                                    (_K9657396602_)
                                                    (_try-match9656896597_))))
                                             (_try-match9656696613_
                                              (lambda ()
                                                (if (##eq? _key9656496577_
                                                           'module:)
                                                    (_K9657496610_)
                                                    (_try-match9656796605_)))))
                                        (if (##eq? _key9656496577_ 'top:)
                                            (_K9657596617_)
                                            (_try-match9656696613_)))))
                                  _expander96562_
                                  _id96542_
                                  (let ((_$e96620_ _compiler96561_))
                                    (if _$e96620_
                                        _$e96620_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9654396554_)
                             (let ((_hd9654796626_ (##car _rest9654396554_))
                                   (_tl9654896628_ (##cdr _rest9654396554_)))
                               (let ((_key96631_ _hd9654796626_))
                                 (if (##pair? _tl9654896628_)
                                     (let ((_hd9654996633_
                                            (##car _tl9654896628_))
                                           (_tl9655096635_
                                            (##cdr _tl9654896628_)))
                                       (let ((_expander96638_ _hd9654996633_))
                                         (if (##pair? _tl9655096635_)
                                             (let ((_hd9655196640_
                                                    (##car _tl9655096635_))
                                                   (_tl9655296642_
                                                    (##cdr _tl9655096635_)))
                                               (let ((_compiler96645_
                                                      _hd9655196640_))
                                                 (if (##null? _tl9655296642_)
                                                     (_K9654696623_
                                                      _compiler96645_
                                                      _expander96638_
                                                      _key96631_)
                                                     (_E9654596558_))))
                                             (_E9654596558_))))
                                     (_E9654596558_))))
                             (_E9654596558_))))))))
             (if (##pair? _bind9652796534_)
                 (let ((_hd9653196650_ (##car _bind9652796534_))
                       (_tl9653296652_ (##cdr _bind9652796534_)))
                   (let* ((_id96655_ _hd9653196650_)
                          (_rest96657_ _tl9653296652_))
                     (_K9653096647_ _rest96657_ _id96655_)))
                 (_E9652996538_))))
         _bindings96524_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self96662_)
        (let ((_bindings96664_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self96662_
           _bindings96664_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g96999_
        (let ((_g96998_ (##length _g96999_)))
          (cond ((##fx= _g96998_ 1)
                 (apply (lambda (_self96662_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self96662_))
                        _g96999_))
                ((##fx= _g96998_ 2)
                 (apply (lambda (_self96666_ _bindings96667_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self96666_
                           _bindings96667_))
                        _g96999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g96999_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self96295_ _bindings96296_)
        (for-each
         (lambda (_bind96298_)
           (let* ((_bind9629996306_ _bind96298_)
                  (_E9630196310_
                   (lambda () (error '"No clause matching" _bind9629996306_)))
                  (_K9630296378_
                   (lambda (_rest96313_ _id96314_)
                     (gx#core-context-put!
                      _self96295_
                      _id96314_
                      (##structure
                       gx#syntax-binding::t
                       _id96314_
                       _id96314_
                       '#f
                       (let* ((_rest9631596330_ _rest96313_)
                              (_E9631996334_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9631596330_))))
                         (let ((_K9632496363_
                                (lambda (_core-id96361_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id96361_)))
                               (_K9632196348_
                                (lambda (_proc96346_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc96346_)))
                               (_K9632096339_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id96314_))))
                           (let ((_try-match9631896342_
                                  (lambda ()
                                    (if (##null? _rest9631596330_)
                                        (_K9632096339_)
                                        (_E9631996334_)))))
                             (if (##pair? _rest9631596330_)
                                 (let ((_tl9632696368_
                                        (##cdr _rest9631596330_))
                                       (_hd9632596366_
                                        (##car _rest9631596330_)))
                                   (if (##eq? _hd9632596366_ '=>)
                                       (if (##pair? _tl9632696368_)
                                           (let ((_tl9632896373_
                                                  (##cdr _tl9632696368_))
                                                 (_hd9632796371_
                                                  (##car _tl9632696368_)))
                                             (if (##null? _tl9632896373_)
                                                 (let ((_core-id96376_
                                                        _hd9632796371_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id96376_))
                                                 (_E9631996334_)))
                                           (if (##null? _tl9632696368_)
                                               (let ((_proc96356_
                                                      _hd9632596366_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc96356_))
                                               (_E9631996334_)))
                                       (if (##null? _tl9632696368_)
                                           (let ((_proc96356_ _hd9632596366_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc96356_))
                                           (_E9631996334_))))
                                 (_try-match9631896342_))))))))))
             (if (##pair? _bind9629996306_)
                 (let ((_hd9630396381_ (##car _bind9629996306_))
                       (_tl9630496383_ (##cdr _bind9629996306_)))
                   (let* ((_id96386_ _hd9630396381_)
                          (_rest96388_ _tl9630496383_))
                     (_K9630296378_ _rest96388_ _id96386_)))
                 (_E9630196310_))))
         _bindings96296_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self96393_)
        (let ((_bindings96395_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self96393_
           _bindings96395_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g97001_
        (let ((_g97000_ (##length _g97001_)))
          (cond ((##fx= _g97000_ 1)
                 (apply (lambda (_self96393_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self96393_))
                        _g97001_))
                ((##fx= _g97000_ 2)
                 (apply (lambda (_self96397_ _bindings96398_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self96397_
                           _bindings96398_))
                        _g97001_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g97001_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self96039_)
        (letrec ((_linux-variant?96041_
                  (lambda (_sys-type96140_)
                    (let* ((_g9614196149_
                            (string-split
                             (symbol->string _sys-type96140_)
                             '#\-))
                           (_else9614396157_ (lambda () '#f))
                           (_K9614596162_
                            (lambda (_rest96160_) (not (null? _rest96160_)))))
                      (if (##pair? _g9614196149_)
                          (let ((_hd9614696165_ (##car _g9614196149_))
                                (_tl9614796167_ (##cdr _g9614196149_)))
                            (if (equal? _hd9614696165_ '"linux")
                                (let ((_rest96170_ _tl9614796167_))
                                  (_K9614596162_ _rest96170_))
                                (_else9614396157_)))
                          (_else9614396157_)))))
                 (_bsd-variant96042_
                  (lambda (_sys-type96099_)
                    (let ((_sys-type-str96101_
                           (symbol->string _sys-type96099_)))
                      (let _lp96103_ ((_rest96105_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9610696114_ _rest96105_)
                               (_else9610896122_ (lambda () '#f))
                               (_K9611096128_
                                (lambda (_rest96125_ _sys96126_)
                                  (if (string-prefix?
                                       _sys96126_
                                       _sys-type-str96101_)
                                      _sys96126_
                                      (_lp96103_ _rest96125_)))))
                          (if (##pair? _rest9610696114_)
                              (let ((_hd9611196131_ (##car _rest9610696114_))
                                    (_tl9611296133_ (##cdr _rest9610696114_)))
                                (let* ((_sys96136_ _hd9611196131_)
                                       (_rest96138_ _tl9611296133_))
                                  (_K9611096128_ _rest96138_ _sys96136_)))
                              (_else9610896122_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self96039_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self96039_)
          (let* ((_g9604396055_ (system-type))
                 (_else9604596063_ (lambda () '#!void))
                 (_K9604796075_
                  (lambda (_sys-type96066_ _sys-vendor96067_ _sys-cpu96068_)
                    (gx#core-bind-feature!__%
                     _sys-cpu96068_
                     '#f
                     '0
                     _self96039_)
                    (gx#core-bind-feature!__%
                     _sys-type96066_
                     '#f
                     '0
                     _self96039_)
                    (if (_linux-variant?96041_ _sys-type96066_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self96039_)
                        (let ((_$e96070_ (_bsd-variant96042_ _sys-type96066_)))
                          (if _$e96070_
                              ((lambda (_sys-prefix96073_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self96039_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix96073_)
                                  '#f
                                  '0
                                  _self96039_))
                               _$e96070_)
                              '#!void))))))
            (if (##pair? _g9604396055_)
                (let ((_hd9604896078_ (##car _g9604396055_))
                      (_tl9604996080_ (##cdr _g9604396055_)))
                  (let ((_sys-cpu96083_ _hd9604896078_))
                    (if (##pair? _tl9604996080_)
                        (let ((_hd9605096085_ (##car _tl9604996080_))
                              (_tl9605196087_ (##cdr _tl9604996080_)))
                          (let ((_sys-vendor96090_ _hd9605096085_))
                            (if (##pair? _tl9605196087_)
                                (let ((_hd9605296092_ (##car _tl9605196087_))
                                      (_tl9605396094_ (##cdr _tl9605196087_)))
                                  (let ((_sys-type96097_ _hd9605296092_))
                                    (if (##null? _tl9605396094_)
                                        (_K9604796075_
                                         _sys-type96097_
                                         _sys-vendor96090_
                                         _sys-cpu96083_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self96039_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
