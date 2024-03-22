(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1711108655)
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
      (lambda (_self97226_ _bind?97227_)
        (if (##fx< '2 (##structure-length _self97226_))
            (begin
              (##unchecked-structure-set!
               _self97226_
               'root
               '1
               (##structure-type _self97226_)
               '#f)
              (##unchecked-structure-set!
               _self97226_
               (make-hash-table-eq)
               '2
               (##structure-type _self97226_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self97226_
                   '2
                   (##vector-length _self97226_)))
        (if _bind?97227_
            (begin
              (let ((__method97278
                     (method-ref _self97226_ 'bind-core-syntax-expanders!)))
                (if __method97278
                    (__method97278 _self97226_)
                    (error '"Missing method"
                           _self97226_
                           'bind-core-syntax-expanders!)))
              (let ((__method97279
                     (method-ref _self97226_ 'bind-core-macro-expanders!)))
                (if __method97279
                    (__method97279 _self97226_)
                    (error '"Missing method"
                           _self97226_
                           'bind-core-macro-expanders!)))
              (let ((__method97280
                     (method-ref _self97226_ 'bind-core-features!)))
                (if __method97280
                    (__method97280 _self97226_)
                    (error '"Missing method"
                           _self97226_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self97232_)
        (let ((_bind?97234_ '#t))
          (gx#root-context:::init!__% _self97232_ _bind?97234_))))
    (define gx#root-context:::init!
      (lambda _g97283_
        (let ((_g97282_ (##length _g97283_)))
          (cond ((##fx= _g97282_ 1)
                 (apply (lambda (_self97232_)
                          (gx#root-context:::init!__0 _self97232_))
                        _g97283_))
                ((##fx= _g97282_ 2)
                 (apply (lambda (_self97236_ _bind?97237_)
                          (gx#root-context:::init!__%
                           _self97236_
                           _bind?97237_))
                        _g97283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g97283_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass97238 __method-table97239)
        (let ((__bind-core-syntax-expanders!97240
               (make-promise
                (lambda ()
                  (let ((__method97243
                         (symbolic-table-ref
                          __method-table97239
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method97243
                        __method97243
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!97241
               (make-promise
                (lambda ()
                  (let ((__method97244
                         (symbolic-table-ref
                          __method-table97239
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method97244
                        __method97244
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!97242
               (make-promise
                (lambda ()
                  (let ((__method97245
                         (symbolic-table-ref
                          __method-table97239
                          'bind-core-features!
                          '#f)))
                    (if __method97245
                        __method97245
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda9722497229_
                 (lambda (_self97226_ _bind?97227_)
                   (if (##fx< '2 (##structure-length _self97226_))
                       (begin
                         (##unchecked-structure-set!
                          _self97226_
                          'root
                          '1
                          (##structure-type _self97226_)
                          '#f)
                         (##unchecked-structure-set!
                          _self97226_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self97226_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self97226_
                              '2
                              (##vector-length _self97226_)))
                   (if _bind?97227_
                       (begin
                         ((force __bind-core-syntax-expanders!97240)
                          _self97226_)
                         ((force __bind-core-macro-expanders!97241)
                          _self97226_)
                         ((force __bind-core-features!97242) _self97226_))
                       '#!void))))
            (lambda _g97285_
              (let ((_g97284_ (##length _g97285_)))
                (cond ((##fx= _g97284_ 1)
                       (apply (lambda (_self97232_)
                                (let ((_bind?97234_ '#t))
                                  (_opt-lambda9722497229_
                                   _self97232_
                                   _bind?97234_)))
                              _g97285_))
                      ((##fx= _g97284_ 2)
                       (apply (lambda (_self97236_ _bind?97237_)
                                (_opt-lambda9722497229_
                                 _self97236_
                                 _bind?97237_))
                              _g97285_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g97285_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self97082_ _super97083_)
        (let ((_super97091_
               (let ((_$e97085_ _super97083_))
                 (if _$e97085_
                     _$e97085_
                     (let ((_$e97088_ (gx#core-context-root__0)))
                       (if _$e97088_
                           _$e97088_
                           (let ((__obj97281
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj97281)
                             __obj97281)))))))
          (if (##fx< '5 (##structure-length _self97082_))
              (begin
                (##unchecked-structure-set!
                 _self97082_
                 'top
                 '1
                 (##structure-type _self97082_)
                 '#f)
                (##unchecked-structure-set!
                 _self97082_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self97082_)
                 '#f)
                (##unchecked-structure-set!
                 _self97082_
                 _super97091_
                 '3
                 (##structure-type _self97082_)
                 '#f)
                (##unchecked-structure-set!
                 _self97082_
                 '#f
                 '4
                 (##structure-type _self97082_)
                 '#f)
                (##unchecked-structure-set!
                 _self97082_
                 '#f
                 '5
                 (##structure-type _self97082_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self97082_
                     '5
                     (##vector-length _self97082_))))))
    (define gx#top-context:::init!__0
      (lambda (_self97096_)
        (let ((_super97098_ '#f))
          (gx#top-context:::init!__% _self97096_ _super97098_))))
    (define gx#top-context:::init!
      (lambda _g97287_
        (let ((_g97286_ (##length _g97287_)))
          (cond ((##fx= _g97286_ 1)
                 (apply (lambda (_self97096_)
                          (gx#top-context:::init!__0 _self97096_))
                        _g97287_))
                ((##fx= _g97286_ 2)
                 (apply (lambda (_self97100_ _super97101_)
                          (gx#top-context:::init!__% _self97100_ _super97101_))
                        _g97287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g97287_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self96813_ _bindings96814_)
        (for-each
         (lambda (_bind96816_)
           (let* ((_bind9681796824_ _bind96816_)
                  (_E9681996828_
                   (lambda () (error '"No clause matching" _bind9681796824_)))
                  (_K9682096937_
                   (lambda (_rest96831_ _id96832_)
                     (gx#core-context-put!
                      _self96813_
                      _id96832_
                      (##structure
                       gx#syntax-binding::t
                       _id96832_
                       _id96832_
                       '#f
                       (let* ((_rest9683396844_ _rest96831_)
                              (_E9683596848_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9683396844_)))
                              (_K9683696913_
                               (lambda (_compiler96851_
                                        _expander96852_
                                        _key96853_)
                                 ((let* ((_key9685496867_ _key96853_)
                                         (_E9686096871_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9685496867_))))
                                    (let ((_K9686596907_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9686496900_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9686396892_
                                           (lambda () gx#make-definition-form))
                                          (_K9686296884_
                                           (lambda () gx#make-special-form))
                                          (_K9686196876_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9685996879_
                                              (lambda ()
                                                (if (##eq? _key9685496867_
                                                           'expr:)
                                                    (_K9686196876_)
                                                    (_E9686096871_))))
                                             (_try-match9685896887_
                                              (lambda ()
                                                (if (##eq? _key9685496867_
                                                           'special:)
                                                    (_K9686296884_)
                                                    (_try-match9685996879_))))
                                             (_try-match9685796895_
                                              (lambda ()
                                                (if (##eq? _key9685496867_
                                                           'define:)
                                                    (_K9686396892_)
                                                    (_try-match9685896887_))))
                                             (_try-match9685696903_
                                              (lambda ()
                                                (if (##eq? _key9685496867_
                                                           'module:)
                                                    (_K9686496900_)
                                                    (_try-match9685796895_)))))
                                        (if (##eq? _key9685496867_ 'top:)
                                            (_K9686596907_)
                                            (_try-match9685696903_)))))
                                  _expander96852_
                                  _id96832_
                                  (let ((_$e96910_ _compiler96851_))
                                    (if _$e96910_
                                        _$e96910_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9683396844_)
                             (let ((_hd9683796916_ (##car _rest9683396844_))
                                   (_tl9683896918_ (##cdr _rest9683396844_)))
                               (let ((_key96921_ _hd9683796916_))
                                 (if (##pair? _tl9683896918_)
                                     (let ((_hd9683996923_
                                            (##car _tl9683896918_))
                                           (_tl9684096925_
                                            (##cdr _tl9683896918_)))
                                       (let ((_expander96928_ _hd9683996923_))
                                         (if (##pair? _tl9684096925_)
                                             (let ((_hd9684196930_
                                                    (##car _tl9684096925_))
                                                   (_tl9684296932_
                                                    (##cdr _tl9684096925_)))
                                               (let ((_compiler96935_
                                                      _hd9684196930_))
                                                 (if (##null? _tl9684296932_)
                                                     (_K9683696913_
                                                      _compiler96935_
                                                      _expander96928_
                                                      _key96921_)
                                                     (_E9683596848_))))
                                             (_E9683596848_))))
                                     (_E9683596848_))))
                             (_E9683596848_))))))))
             (if (##pair? _bind9681796824_)
                 (let ((_hd9682196940_ (##car _bind9681796824_))
                       (_tl9682296942_ (##cdr _bind9681796824_)))
                   (let* ((_id96945_ _hd9682196940_)
                          (_rest96947_ _tl9682296942_))
                     (_K9682096937_ _rest96947_ _id96945_)))
                 (_E9681996828_))))
         _bindings96814_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self96952_)
        (let ((_bindings96954_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self96952_
           _bindings96954_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g97289_
        (let ((_g97288_ (##length _g97289_)))
          (cond ((##fx= _g97288_ 1)
                 (apply (lambda (_self96952_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self96952_))
                        _g97289_))
                ((##fx= _g97288_ 2)
                 (apply (lambda (_self96956_ _bindings96957_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self96956_
                           _bindings96957_))
                        _g97289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g97289_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self96585_ _bindings96586_)
        (for-each
         (lambda (_bind96588_)
           (let* ((_bind9658996596_ _bind96588_)
                  (_E9659196600_
                   (lambda () (error '"No clause matching" _bind9658996596_)))
                  (_K9659296668_
                   (lambda (_rest96603_ _id96604_)
                     (gx#core-context-put!
                      _self96585_
                      _id96604_
                      (##structure
                       gx#syntax-binding::t
                       _id96604_
                       _id96604_
                       '#f
                       (let* ((_rest9660596620_ _rest96603_)
                              (_E9660996624_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9660596620_))))
                         (let ((_K9661496653_
                                (lambda (_core-id96651_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id96651_)))
                               (_K9661196638_
                                (lambda (_proc96636_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc96636_)))
                               (_K9661096629_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id96604_))))
                           (let ((_try-match9660896632_
                                  (lambda ()
                                    (if (##null? _rest9660596620_)
                                        (_K9661096629_)
                                        (_E9660996624_)))))
                             (if (##pair? _rest9660596620_)
                                 (let ((_tl9661696658_
                                        (##cdr _rest9660596620_))
                                       (_hd9661596656_
                                        (##car _rest9660596620_)))
                                   (if (##eq? _hd9661596656_ '=>)
                                       (if (##pair? _tl9661696658_)
                                           (let ((_tl9661896663_
                                                  (##cdr _tl9661696658_))
                                                 (_hd9661796661_
                                                  (##car _tl9661696658_)))
                                             (if (##null? _tl9661896663_)
                                                 (let ((_core-id96666_
                                                        _hd9661796661_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id96666_))
                                                 (_E9660996624_)))
                                           (if (##null? _tl9661696658_)
                                               (let ((_proc96646_
                                                      _hd9661596656_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc96646_))
                                               (_E9660996624_)))
                                       (if (##null? _tl9661696658_)
                                           (let ((_proc96646_ _hd9661596656_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc96646_))
                                           (_E9660996624_))))
                                 (_try-match9660896632_))))))))))
             (if (##pair? _bind9658996596_)
                 (let ((_hd9659396671_ (##car _bind9658996596_))
                       (_tl9659496673_ (##cdr _bind9658996596_)))
                   (let* ((_id96676_ _hd9659396671_)
                          (_rest96678_ _tl9659496673_))
                     (_K9659296668_ _rest96678_ _id96676_)))
                 (_E9659196600_))))
         _bindings96586_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self96683_)
        (let ((_bindings96685_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self96683_
           _bindings96685_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g97291_
        (let ((_g97290_ (##length _g97291_)))
          (cond ((##fx= _g97290_ 1)
                 (apply (lambda (_self96683_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self96683_))
                        _g97291_))
                ((##fx= _g97290_ 2)
                 (apply (lambda (_self96687_ _bindings96688_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self96687_
                           _bindings96688_))
                        _g97291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g97291_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self96329_)
        (letrec ((_linux-variant?96331_
                  (lambda (_sys-type96430_)
                    (let* ((_g9643196439_
                            (string-split
                             (symbol->string _sys-type96430_)
                             '#\-))
                           (_else9643396447_ (lambda () '#f))
                           (_K9643596452_
                            (lambda (_rest96450_) (not (null? _rest96450_)))))
                      (if (##pair? _g9643196439_)
                          (let ((_hd9643696455_ (##car _g9643196439_))
                                (_tl9643796457_ (##cdr _g9643196439_)))
                            (if (equal? _hd9643696455_ '"linux")
                                (let ((_rest96460_ _tl9643796457_))
                                  (_K9643596452_ _rest96460_))
                                (_else9643396447_)))
                          (_else9643396447_)))))
                 (_bsd-variant96332_
                  (lambda (_sys-type96389_)
                    (let ((_sys-type-str96391_
                           (symbol->string _sys-type96389_)))
                      (let _lp96393_ ((_rest96395_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9639696404_ _rest96395_)
                               (_else9639896412_ (lambda () '#f))
                               (_K9640096418_
                                (lambda (_rest96415_ _sys96416_)
                                  (if (string-prefix?
                                       _sys96416_
                                       _sys-type-str96391_)
                                      _sys96416_
                                      (_lp96393_ _rest96415_)))))
                          (if (##pair? _rest9639696404_)
                              (let ((_hd9640196421_ (##car _rest9639696404_))
                                    (_tl9640296423_ (##cdr _rest9639696404_)))
                                (let* ((_sys96426_ _hd9640196421_)
                                       (_rest96428_ _tl9640296423_))
                                  (_K9640096418_ _rest96428_ _sys96426_)))
                              (_else9639896412_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self96329_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self96329_)
          (let* ((_g9633396345_ (system-type))
                 (_else9633596353_ (lambda () '#!void))
                 (_K9633796365_
                  (lambda (_sys-type96356_ _sys-vendor96357_ _sys-cpu96358_)
                    (gx#core-bind-feature!__%
                     _sys-cpu96358_
                     '#f
                     '0
                     _self96329_)
                    (gx#core-bind-feature!__%
                     _sys-type96356_
                     '#f
                     '0
                     _self96329_)
                    (if (_linux-variant?96331_ _sys-type96356_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self96329_)
                        (let ((_$e96360_ (_bsd-variant96332_ _sys-type96356_)))
                          (if _$e96360_
                              ((lambda (_sys-prefix96363_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self96329_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix96363_)
                                  '#f
                                  '0
                                  _self96329_))
                               _$e96360_)
                              '#!void))))))
            (if (##pair? _g9633396345_)
                (let ((_hd9633896368_ (##car _g9633396345_))
                      (_tl9633996370_ (##cdr _g9633396345_)))
                  (let ((_sys-cpu96373_ _hd9633896368_))
                    (if (##pair? _tl9633996370_)
                        (let ((_hd9634096375_ (##car _tl9633996370_))
                              (_tl9634196377_ (##cdr _tl9633996370_)))
                          (let ((_sys-vendor96380_ _hd9634096375_))
                            (if (##pair? _tl9634196377_)
                                (let ((_hd9634296382_ (##car _tl9634196377_))
                                      (_tl9634396384_ (##cdr _tl9634196377_)))
                                  (let ((_sys-type96387_ _hd9634296382_))
                                    (if (##null? _tl9634396384_)
                                        (_K9633796365_
                                         _sys-type96387_
                                         _sys-vendor96380_
                                         _sys-cpu96373_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self96329_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
