(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1710954837)
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
      (lambda (_self97217_ _bind?97218_)
        (if (##fx< '2 (##structure-length _self97217_))
            (begin
              (##unchecked-structure-set!
               _self97217_
               'root
               '1
               (##structure-type _self97217_)
               '#f)
              (##unchecked-structure-set!
               _self97217_
               (make-hash-table-eq)
               '2
               (##structure-type _self97217_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self97217_
                   '2
                   (##vector-length _self97217_)))
        (if _bind?97218_
            (begin
              (let ((__method97269
                     (method-ref _self97217_ 'bind-core-syntax-expanders!)))
                (if __method97269
                    (__method97269 _self97217_)
                    (error '"Missing method"
                           _self97217_
                           'bind-core-syntax-expanders!)))
              (let ((__method97270
                     (method-ref _self97217_ 'bind-core-macro-expanders!)))
                (if __method97270
                    (__method97270 _self97217_)
                    (error '"Missing method"
                           _self97217_
                           'bind-core-macro-expanders!)))
              (let ((__method97271
                     (method-ref _self97217_ 'bind-core-features!)))
                (if __method97271
                    (__method97271 _self97217_)
                    (error '"Missing method"
                           _self97217_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self97223_)
        (let ((_bind?97225_ '#t))
          (gx#root-context:::init!__% _self97223_ _bind?97225_))))
    (define gx#root-context:::init!
      (lambda _g97274_
        (let ((_g97273_ (##length _g97274_)))
          (cond ((##fx= _g97273_ 1)
                 (apply (lambda (_self97223_)
                          (gx#root-context:::init!__0 _self97223_))
                        _g97274_))
                ((##fx= _g97273_ 2)
                 (apply (lambda (_self97227_ _bind?97228_)
                          (gx#root-context:::init!__%
                           _self97227_
                           _bind?97228_))
                        _g97274_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g97274_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass97229 __method-table97230)
        (let ((__bind-core-macro-expanders!97231
               (make-promise
                (lambda ()
                  (let ((__method97234
                         (symbolic-table-ref
                          __method-table97230
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method97234
                        __method97234
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!97232
               (make-promise
                (lambda ()
                  (let ((__method97235
                         (symbolic-table-ref
                          __method-table97230
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method97235
                        __method97235
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!97233
               (make-promise
                (lambda ()
                  (let ((__method97236
                         (symbolic-table-ref
                          __method-table97230
                          'bind-core-features!
                          '#f)))
                    (if __method97236
                        __method97236
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda9721597220_
                 (lambda (_self97217_ _bind?97218_)
                   (if (##fx< '2 (##structure-length _self97217_))
                       (begin
                         (##unchecked-structure-set!
                          _self97217_
                          'root
                          '1
                          (##structure-type _self97217_)
                          '#f)
                         (##unchecked-structure-set!
                          _self97217_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self97217_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self97217_
                              '2
                              (##vector-length _self97217_)))
                   (if _bind?97218_
                       (begin
                         ((force __bind-core-syntax-expanders!97232)
                          _self97217_)
                         ((force __bind-core-macro-expanders!97231)
                          _self97217_)
                         ((force __bind-core-features!97233) _self97217_))
                       '#!void))))
            (lambda _g97276_
              (let ((_g97275_ (##length _g97276_)))
                (cond ((##fx= _g97275_ 1)
                       (apply (lambda (_self97223_)
                                (let ((_bind?97225_ '#t))
                                  (_opt-lambda9721597220_
                                   _self97223_
                                   _bind?97225_)))
                              _g97276_))
                      ((##fx= _g97275_ 2)
                       (apply (lambda (_self97227_ _bind?97228_)
                                (_opt-lambda9721597220_
                                 _self97227_
                                 _bind?97228_))
                              _g97276_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g97276_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self97073_ _super97074_)
        (let ((_super97082_
               (let ((_$e97076_ _super97074_))
                 (if _$e97076_
                     _$e97076_
                     (let ((_$e97079_ (gx#core-context-root__0)))
                       (if _$e97079_
                           _$e97079_
                           (let ((__obj97272
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj97272)
                             __obj97272)))))))
          (if (##fx< '5 (##structure-length _self97073_))
              (begin
                (##unchecked-structure-set!
                 _self97073_
                 'top
                 '1
                 (##structure-type _self97073_)
                 '#f)
                (##unchecked-structure-set!
                 _self97073_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self97073_)
                 '#f)
                (##unchecked-structure-set!
                 _self97073_
                 _super97082_
                 '3
                 (##structure-type _self97073_)
                 '#f)
                (##unchecked-structure-set!
                 _self97073_
                 '#f
                 '4
                 (##structure-type _self97073_)
                 '#f)
                (##unchecked-structure-set!
                 _self97073_
                 '#f
                 '5
                 (##structure-type _self97073_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self97073_
                     '5
                     (##vector-length _self97073_))))))
    (define gx#top-context:::init!__0
      (lambda (_self97087_)
        (let ((_super97089_ '#f))
          (gx#top-context:::init!__% _self97087_ _super97089_))))
    (define gx#top-context:::init!
      (lambda _g97278_
        (let ((_g97277_ (##length _g97278_)))
          (cond ((##fx= _g97277_ 1)
                 (apply (lambda (_self97087_)
                          (gx#top-context:::init!__0 _self97087_))
                        _g97278_))
                ((##fx= _g97277_ 2)
                 (apply (lambda (_self97091_ _super97092_)
                          (gx#top-context:::init!__% _self97091_ _super97092_))
                        _g97278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g97278_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self96804_ _bindings96805_)
        (for-each
         (lambda (_bind96807_)
           (let* ((_bind9680896815_ _bind96807_)
                  (_E9681096819_
                   (lambda () (error '"No clause matching" _bind9680896815_)))
                  (_K9681196928_
                   (lambda (_rest96822_ _id96823_)
                     (gx#core-context-put!
                      _self96804_
                      _id96823_
                      (##structure
                       gx#syntax-binding::t
                       _id96823_
                       _id96823_
                       '#f
                       (let* ((_rest9682496835_ _rest96822_)
                              (_E9682696839_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9682496835_)))
                              (_K9682796904_
                               (lambda (_compiler96842_
                                        _expander96843_
                                        _key96844_)
                                 ((let* ((_key9684596858_ _key96844_)
                                         (_E9685196862_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9684596858_))))
                                    (let ((_K9685696898_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9685596891_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9685496883_
                                           (lambda () gx#make-definition-form))
                                          (_K9685396875_
                                           (lambda () gx#make-special-form))
                                          (_K9685296867_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9685096870_
                                              (lambda ()
                                                (if (##eq? _key9684596858_
                                                           'expr:)
                                                    (_K9685296867_)
                                                    (_E9685196862_))))
                                             (_try-match9684996878_
                                              (lambda ()
                                                (if (##eq? _key9684596858_
                                                           'special:)
                                                    (_K9685396875_)
                                                    (_try-match9685096870_))))
                                             (_try-match9684896886_
                                              (lambda ()
                                                (if (##eq? _key9684596858_
                                                           'define:)
                                                    (_K9685496883_)
                                                    (_try-match9684996878_))))
                                             (_try-match9684796894_
                                              (lambda ()
                                                (if (##eq? _key9684596858_
                                                           'module:)
                                                    (_K9685596891_)
                                                    (_try-match9684896886_)))))
                                        (if (##eq? _key9684596858_ 'top:)
                                            (_K9685696898_)
                                            (_try-match9684796894_)))))
                                  _expander96843_
                                  _id96823_
                                  (let ((_$e96901_ _compiler96842_))
                                    (if _$e96901_
                                        _$e96901_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9682496835_)
                             (let ((_hd9682896907_ (##car _rest9682496835_))
                                   (_tl9682996909_ (##cdr _rest9682496835_)))
                               (let ((_key96912_ _hd9682896907_))
                                 (if (##pair? _tl9682996909_)
                                     (let ((_hd9683096914_
                                            (##car _tl9682996909_))
                                           (_tl9683196916_
                                            (##cdr _tl9682996909_)))
                                       (let ((_expander96919_ _hd9683096914_))
                                         (if (##pair? _tl9683196916_)
                                             (let ((_hd9683296921_
                                                    (##car _tl9683196916_))
                                                   (_tl9683396923_
                                                    (##cdr _tl9683196916_)))
                                               (let ((_compiler96926_
                                                      _hd9683296921_))
                                                 (if (##null? _tl9683396923_)
                                                     (_K9682796904_
                                                      _compiler96926_
                                                      _expander96919_
                                                      _key96912_)
                                                     (_E9682696839_))))
                                             (_E9682696839_))))
                                     (_E9682696839_))))
                             (_E9682696839_))))))))
             (if (##pair? _bind9680896815_)
                 (let ((_hd9681296931_ (##car _bind9680896815_))
                       (_tl9681396933_ (##cdr _bind9680896815_)))
                   (let* ((_id96936_ _hd9681296931_)
                          (_rest96938_ _tl9681396933_))
                     (_K9681196928_ _rest96938_ _id96936_)))
                 (_E9681096819_))))
         _bindings96805_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self96943_)
        (let ((_bindings96945_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self96943_
           _bindings96945_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g97280_
        (let ((_g97279_ (##length _g97280_)))
          (cond ((##fx= _g97279_ 1)
                 (apply (lambda (_self96943_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self96943_))
                        _g97280_))
                ((##fx= _g97279_ 2)
                 (apply (lambda (_self96947_ _bindings96948_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self96947_
                           _bindings96948_))
                        _g97280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g97280_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self96576_ _bindings96577_)
        (for-each
         (lambda (_bind96579_)
           (let* ((_bind9658096587_ _bind96579_)
                  (_E9658296591_
                   (lambda () (error '"No clause matching" _bind9658096587_)))
                  (_K9658396659_
                   (lambda (_rest96594_ _id96595_)
                     (gx#core-context-put!
                      _self96576_
                      _id96595_
                      (##structure
                       gx#syntax-binding::t
                       _id96595_
                       _id96595_
                       '#f
                       (let* ((_rest9659696611_ _rest96594_)
                              (_E9660096615_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9659696611_))))
                         (let ((_K9660596644_
                                (lambda (_core-id96642_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id96642_)))
                               (_K9660296629_
                                (lambda (_proc96627_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc96627_)))
                               (_K9660196620_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id96595_))))
                           (let ((_try-match9659996623_
                                  (lambda ()
                                    (if (##null? _rest9659696611_)
                                        (_K9660196620_)
                                        (_E9660096615_)))))
                             (if (##pair? _rest9659696611_)
                                 (let ((_tl9660796649_
                                        (##cdr _rest9659696611_))
                                       (_hd9660696647_
                                        (##car _rest9659696611_)))
                                   (if (##eq? _hd9660696647_ '=>)
                                       (if (##pair? _tl9660796649_)
                                           (let ((_tl9660996654_
                                                  (##cdr _tl9660796649_))
                                                 (_hd9660896652_
                                                  (##car _tl9660796649_)))
                                             (if (##null? _tl9660996654_)
                                                 (let ((_core-id96657_
                                                        _hd9660896652_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id96657_))
                                                 (_E9660096615_)))
                                           (if (##null? _tl9660796649_)
                                               (let ((_proc96637_
                                                      _hd9660696647_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc96637_))
                                               (_E9660096615_)))
                                       (if (##null? _tl9660796649_)
                                           (let ((_proc96637_ _hd9660696647_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc96637_))
                                           (_E9660096615_))))
                                 (_try-match9659996623_))))))))))
             (if (##pair? _bind9658096587_)
                 (let ((_hd9658496662_ (##car _bind9658096587_))
                       (_tl9658596664_ (##cdr _bind9658096587_)))
                   (let* ((_id96667_ _hd9658496662_)
                          (_rest96669_ _tl9658596664_))
                     (_K9658396659_ _rest96669_ _id96667_)))
                 (_E9658296591_))))
         _bindings96577_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self96674_)
        (let ((_bindings96676_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self96674_
           _bindings96676_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g97282_
        (let ((_g97281_ (##length _g97282_)))
          (cond ((##fx= _g97281_ 1)
                 (apply (lambda (_self96674_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self96674_))
                        _g97282_))
                ((##fx= _g97281_ 2)
                 (apply (lambda (_self96678_ _bindings96679_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self96678_
                           _bindings96679_))
                        _g97282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g97282_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self96320_)
        (letrec ((_linux-variant?96322_
                  (lambda (_sys-type96421_)
                    (let* ((_g9642296430_
                            (string-split
                             (symbol->string _sys-type96421_)
                             '#\-))
                           (_else9642496438_ (lambda () '#f))
                           (_K9642696443_
                            (lambda (_rest96441_) (not (null? _rest96441_)))))
                      (if (##pair? _g9642296430_)
                          (let ((_hd9642796446_ (##car _g9642296430_))
                                (_tl9642896448_ (##cdr _g9642296430_)))
                            (if (equal? _hd9642796446_ '"linux")
                                (let ((_rest96451_ _tl9642896448_))
                                  (_K9642696443_ _rest96451_))
                                (_else9642496438_)))
                          (_else9642496438_)))))
                 (_bsd-variant96323_
                  (lambda (_sys-type96380_)
                    (let ((_sys-type-str96382_
                           (symbol->string _sys-type96380_)))
                      (let _lp96384_ ((_rest96386_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9638796395_ _rest96386_)
                               (_else9638996403_ (lambda () '#f))
                               (_K9639196409_
                                (lambda (_rest96406_ _sys96407_)
                                  (if (string-prefix?
                                       _sys96407_
                                       _sys-type-str96382_)
                                      _sys96407_
                                      (_lp96384_ _rest96406_)))))
                          (if (##pair? _rest9638796395_)
                              (let ((_hd9639296412_ (##car _rest9638796395_))
                                    (_tl9639396414_ (##cdr _rest9638796395_)))
                                (let* ((_sys96417_ _hd9639296412_)
                                       (_rest96419_ _tl9639396414_))
                                  (_K9639196409_ _rest96419_ _sys96417_)))
                              (_else9638996403_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self96320_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self96320_)
          (let* ((_g9632496336_ (system-type))
                 (_else9632696344_ (lambda () '#!void))
                 (_K9632896356_
                  (lambda (_sys-type96347_ _sys-vendor96348_ _sys-cpu96349_)
                    (gx#core-bind-feature!__%
                     _sys-cpu96349_
                     '#f
                     '0
                     _self96320_)
                    (gx#core-bind-feature!__%
                     _sys-type96347_
                     '#f
                     '0
                     _self96320_)
                    (if (_linux-variant?96322_ _sys-type96347_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self96320_)
                        (let ((_$e96351_ (_bsd-variant96323_ _sys-type96347_)))
                          (if _$e96351_
                              ((lambda (_sys-prefix96354_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self96320_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix96354_)
                                  '#f
                                  '0
                                  _self96320_))
                               _$e96351_)
                              '#!void))))))
            (if (##pair? _g9632496336_)
                (let ((_hd9632996359_ (##car _g9632496336_))
                      (_tl9633096361_ (##cdr _g9632496336_)))
                  (let ((_sys-cpu96364_ _hd9632996359_))
                    (if (##pair? _tl9633096361_)
                        (let ((_hd9633196366_ (##car _tl9633096361_))
                              (_tl9633296368_ (##cdr _tl9633096361_)))
                          (let ((_sys-vendor96371_ _hd9633196366_))
                            (if (##pair? _tl9633296368_)
                                (let ((_hd9633396373_ (##car _tl9633296368_))
                                      (_tl9633496375_ (##cdr _tl9633296368_)))
                                  (let ((_sys-type96378_ _hd9633396373_))
                                    (if (##null? _tl9633496375_)
                                        (_K9632896356_
                                         _sys-type96378_
                                         _sys-vendor96371_
                                         _sys-cpu96364_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self96320_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
