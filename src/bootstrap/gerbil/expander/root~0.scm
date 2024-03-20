(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1710943026)
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
      (lambda (_self97236_ _bind?97237_)
        (if (##fx< '2 (##structure-length _self97236_))
            (begin
              (##unchecked-structure-set!
               _self97236_
               'root
               '1
               (##structure-type _self97236_)
               '#f)
              (##unchecked-structure-set!
               _self97236_
               (make-hash-table-eq)
               '2
               (##structure-type _self97236_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self97236_
                   '2
                   (##vector-length _self97236_)))
        (if _bind?97237_
            (begin
              (let ((__method97288
                     (method-ref _self97236_ 'bind-core-syntax-expanders!)))
                (if __method97288
                    (__method97288 _self97236_)
                    (error '"Missing method"
                           _self97236_
                           'bind-core-syntax-expanders!)))
              (let ((__method97289
                     (method-ref _self97236_ 'bind-core-macro-expanders!)))
                (if __method97289
                    (__method97289 _self97236_)
                    (error '"Missing method"
                           _self97236_
                           'bind-core-macro-expanders!)))
              (let ((__method97290
                     (method-ref _self97236_ 'bind-core-features!)))
                (if __method97290
                    (__method97290 _self97236_)
                    (error '"Missing method"
                           _self97236_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self97242_)
        (let ((_bind?97244_ '#t))
          (gx#root-context:::init!__% _self97242_ _bind?97244_))))
    (define gx#root-context:::init!
      (lambda _g97293_
        (let ((_g97292_ (##length _g97293_)))
          (cond ((##fx= _g97292_ 1)
                 (apply (lambda (_self97242_)
                          (gx#root-context:::init!__0 _self97242_))
                        _g97293_))
                ((##fx= _g97292_ 2)
                 (apply (lambda (_self97246_ _bind?97247_)
                          (gx#root-context:::init!__%
                           _self97246_
                           _bind?97247_))
                        _g97293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g97293_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass97248 __method-table97249)
        (let ((__bind-core-syntax-expanders!97250
               (make-promise
                (lambda ()
                  (let ((__method97253
                         (symbolic-table-ref
                          __method-table97249
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method97253
                        __method97253
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!97251
               (make-promise
                (lambda ()
                  (let ((__method97254
                         (symbolic-table-ref
                          __method-table97249
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method97254
                        __method97254
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!97252
               (make-promise
                (lambda ()
                  (let ((__method97255
                         (symbolic-table-ref
                          __method-table97249
                          'bind-core-features!
                          '#f)))
                    (if __method97255
                        __method97255
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda9723497239_
                 (lambda (_self97236_ _bind?97237_)
                   (if (##fx< '2 (##structure-length _self97236_))
                       (begin
                         (##unchecked-structure-set!
                          _self97236_
                          'root
                          '1
                          (##structure-type _self97236_)
                          '#f)
                         (##unchecked-structure-set!
                          _self97236_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self97236_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self97236_
                              '2
                              (##vector-length _self97236_)))
                   (if _bind?97237_
                       (begin
                         ((force __bind-core-syntax-expanders!97250)
                          _self97236_)
                         ((force __bind-core-macro-expanders!97251)
                          _self97236_)
                         ((force __bind-core-features!97252) _self97236_))
                       '#!void))))
            (lambda _g97295_
              (let ((_g97294_ (##length _g97295_)))
                (cond ((##fx= _g97294_ 1)
                       (apply (lambda (_self97242_)
                                (let ((_bind?97244_ '#t))
                                  (_opt-lambda9723497239_
                                   _self97242_
                                   _bind?97244_)))
                              _g97295_))
                      ((##fx= _g97294_ 2)
                       (apply (lambda (_self97246_ _bind?97247_)
                                (_opt-lambda9723497239_
                                 _self97246_
                                 _bind?97247_))
                              _g97295_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g97295_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self97092_ _super97093_)
        (let ((_super97101_
               (let ((_$e97095_ _super97093_))
                 (if _$e97095_
                     _$e97095_
                     (let ((_$e97098_ (gx#core-context-root__0)))
                       (if _$e97098_
                           _$e97098_
                           (let ((__obj97291
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj97291)
                             __obj97291)))))))
          (if (##fx< '5 (##structure-length _self97092_))
              (begin
                (##unchecked-structure-set!
                 _self97092_
                 'top
                 '1
                 (##structure-type _self97092_)
                 '#f)
                (##unchecked-structure-set!
                 _self97092_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self97092_)
                 '#f)
                (##unchecked-structure-set!
                 _self97092_
                 _super97101_
                 '3
                 (##structure-type _self97092_)
                 '#f)
                (##unchecked-structure-set!
                 _self97092_
                 '#f
                 '4
                 (##structure-type _self97092_)
                 '#f)
                (##unchecked-structure-set!
                 _self97092_
                 '#f
                 '5
                 (##structure-type _self97092_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self97092_
                     '5
                     (##vector-length _self97092_))))))
    (define gx#top-context:::init!__0
      (lambda (_self97106_)
        (let ((_super97108_ '#f))
          (gx#top-context:::init!__% _self97106_ _super97108_))))
    (define gx#top-context:::init!
      (lambda _g97297_
        (let ((_g97296_ (##length _g97297_)))
          (cond ((##fx= _g97296_ 1)
                 (apply (lambda (_self97106_)
                          (gx#top-context:::init!__0 _self97106_))
                        _g97297_))
                ((##fx= _g97296_ 2)
                 (apply (lambda (_self97110_ _super97111_)
                          (gx#top-context:::init!__% _self97110_ _super97111_))
                        _g97297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g97297_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self96823_ _bindings96824_)
        (for-each
         (lambda (_bind96826_)
           (let* ((_bind9682796834_ _bind96826_)
                  (_E9682996838_
                   (lambda () (error '"No clause matching" _bind9682796834_)))
                  (_K9683096947_
                   (lambda (_rest96841_ _id96842_)
                     (gx#core-context-put!
                      _self96823_
                      _id96842_
                      (##structure
                       gx#syntax-binding::t
                       _id96842_
                       _id96842_
                       '#f
                       (let* ((_rest9684396854_ _rest96841_)
                              (_E9684596858_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9684396854_)))
                              (_K9684696923_
                               (lambda (_compiler96861_
                                        _expander96862_
                                        _key96863_)
                                 ((let* ((_key9686496877_ _key96863_)
                                         (_E9687096881_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9686496877_))))
                                    (let ((_K9687596917_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9687496910_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9687396902_
                                           (lambda () gx#make-definition-form))
                                          (_K9687296894_
                                           (lambda () gx#make-special-form))
                                          (_K9687196886_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9686996889_
                                              (lambda ()
                                                (if (##eq? _key9686496877_
                                                           'expr:)
                                                    (_K9687196886_)
                                                    (_E9687096881_))))
                                             (_try-match9686896897_
                                              (lambda ()
                                                (if (##eq? _key9686496877_
                                                           'special:)
                                                    (_K9687296894_)
                                                    (_try-match9686996889_))))
                                             (_try-match9686796905_
                                              (lambda ()
                                                (if (##eq? _key9686496877_
                                                           'define:)
                                                    (_K9687396902_)
                                                    (_try-match9686896897_))))
                                             (_try-match9686696913_
                                              (lambda ()
                                                (if (##eq? _key9686496877_
                                                           'module:)
                                                    (_K9687496910_)
                                                    (_try-match9686796905_)))))
                                        (if (##eq? _key9686496877_ 'top:)
                                            (_K9687596917_)
                                            (_try-match9686696913_)))))
                                  _expander96862_
                                  _id96842_
                                  (let ((_$e96920_ _compiler96861_))
                                    (if _$e96920_
                                        _$e96920_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9684396854_)
                             (let ((_hd9684796926_ (##car _rest9684396854_))
                                   (_tl9684896928_ (##cdr _rest9684396854_)))
                               (let ((_key96931_ _hd9684796926_))
                                 (if (##pair? _tl9684896928_)
                                     (let ((_hd9684996933_
                                            (##car _tl9684896928_))
                                           (_tl9685096935_
                                            (##cdr _tl9684896928_)))
                                       (let ((_expander96938_ _hd9684996933_))
                                         (if (##pair? _tl9685096935_)
                                             (let ((_hd9685196940_
                                                    (##car _tl9685096935_))
                                                   (_tl9685296942_
                                                    (##cdr _tl9685096935_)))
                                               (let ((_compiler96945_
                                                      _hd9685196940_))
                                                 (if (##null? _tl9685296942_)
                                                     (_K9684696923_
                                                      _compiler96945_
                                                      _expander96938_
                                                      _key96931_)
                                                     (_E9684596858_))))
                                             (_E9684596858_))))
                                     (_E9684596858_))))
                             (_E9684596858_))))))))
             (if (##pair? _bind9682796834_)
                 (let ((_hd9683196950_ (##car _bind9682796834_))
                       (_tl9683296952_ (##cdr _bind9682796834_)))
                   (let* ((_id96955_ _hd9683196950_)
                          (_rest96957_ _tl9683296952_))
                     (_K9683096947_ _rest96957_ _id96955_)))
                 (_E9682996838_))))
         _bindings96824_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self96962_)
        (let ((_bindings96964_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self96962_
           _bindings96964_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g97299_
        (let ((_g97298_ (##length _g97299_)))
          (cond ((##fx= _g97298_ 1)
                 (apply (lambda (_self96962_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self96962_))
                        _g97299_))
                ((##fx= _g97298_ 2)
                 (apply (lambda (_self96966_ _bindings96967_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self96966_
                           _bindings96967_))
                        _g97299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g97299_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self96595_ _bindings96596_)
        (for-each
         (lambda (_bind96598_)
           (let* ((_bind9659996606_ _bind96598_)
                  (_E9660196610_
                   (lambda () (error '"No clause matching" _bind9659996606_)))
                  (_K9660296678_
                   (lambda (_rest96613_ _id96614_)
                     (gx#core-context-put!
                      _self96595_
                      _id96614_
                      (##structure
                       gx#syntax-binding::t
                       _id96614_
                       _id96614_
                       '#f
                       (let* ((_rest9661596630_ _rest96613_)
                              (_E9661996634_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9661596630_))))
                         (let ((_K9662496663_
                                (lambda (_core-id96661_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id96661_)))
                               (_K9662196648_
                                (lambda (_proc96646_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc96646_)))
                               (_K9662096639_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id96614_))))
                           (let ((_try-match9661896642_
                                  (lambda ()
                                    (if (##null? _rest9661596630_)
                                        (_K9662096639_)
                                        (_E9661996634_)))))
                             (if (##pair? _rest9661596630_)
                                 (let ((_tl9662696668_
                                        (##cdr _rest9661596630_))
                                       (_hd9662596666_
                                        (##car _rest9661596630_)))
                                   (if (##eq? _hd9662596666_ '=>)
                                       (if (##pair? _tl9662696668_)
                                           (let ((_tl9662896673_
                                                  (##cdr _tl9662696668_))
                                                 (_hd9662796671_
                                                  (##car _tl9662696668_)))
                                             (if (##null? _tl9662896673_)
                                                 (let ((_core-id96676_
                                                        _hd9662796671_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id96676_))
                                                 (_E9661996634_)))
                                           (if (##null? _tl9662696668_)
                                               (let ((_proc96656_
                                                      _hd9662596666_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc96656_))
                                               (_E9661996634_)))
                                       (if (##null? _tl9662696668_)
                                           (let ((_proc96656_ _hd9662596666_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc96656_))
                                           (_E9661996634_))))
                                 (_try-match9661896642_))))))))))
             (if (##pair? _bind9659996606_)
                 (let ((_hd9660396681_ (##car _bind9659996606_))
                       (_tl9660496683_ (##cdr _bind9659996606_)))
                   (let* ((_id96686_ _hd9660396681_)
                          (_rest96688_ _tl9660496683_))
                     (_K9660296678_ _rest96688_ _id96686_)))
                 (_E9660196610_))))
         _bindings96596_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self96693_)
        (let ((_bindings96695_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self96693_
           _bindings96695_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g97301_
        (let ((_g97300_ (##length _g97301_)))
          (cond ((##fx= _g97300_ 1)
                 (apply (lambda (_self96693_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self96693_))
                        _g97301_))
                ((##fx= _g97300_ 2)
                 (apply (lambda (_self96697_ _bindings96698_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self96697_
                           _bindings96698_))
                        _g97301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g97301_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self96339_)
        (letrec ((_linux-variant?96341_
                  (lambda (_sys-type96440_)
                    (let* ((_g9644196449_
                            (string-split
                             (symbol->string _sys-type96440_)
                             '#\-))
                           (_else9644396457_ (lambda () '#f))
                           (_K9644596462_
                            (lambda (_rest96460_) (not (null? _rest96460_)))))
                      (if (##pair? _g9644196449_)
                          (let ((_hd9644696465_ (##car _g9644196449_))
                                (_tl9644796467_ (##cdr _g9644196449_)))
                            (if (equal? _hd9644696465_ '"linux")
                                (let ((_rest96470_ _tl9644796467_))
                                  (_K9644596462_ _rest96470_))
                                (_else9644396457_)))
                          (_else9644396457_)))))
                 (_bsd-variant96342_
                  (lambda (_sys-type96399_)
                    (let ((_sys-type-str96401_
                           (symbol->string _sys-type96399_)))
                      (let _lp96403_ ((_rest96405_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9640696414_ _rest96405_)
                               (_else9640896422_ (lambda () '#f))
                               (_K9641096428_
                                (lambda (_rest96425_ _sys96426_)
                                  (if (string-prefix?
                                       _sys96426_
                                       _sys-type-str96401_)
                                      _sys96426_
                                      (_lp96403_ _rest96425_)))))
                          (if (##pair? _rest9640696414_)
                              (let ((_hd9641196431_ (##car _rest9640696414_))
                                    (_tl9641296433_ (##cdr _rest9640696414_)))
                                (let* ((_sys96436_ _hd9641196431_)
                                       (_rest96438_ _tl9641296433_))
                                  (_K9641096428_ _rest96438_ _sys96436_)))
                              (_else9640896422_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self96339_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self96339_)
          (let* ((_g9634396355_ (system-type))
                 (_else9634596363_ (lambda () '#!void))
                 (_K9634796375_
                  (lambda (_sys-type96366_ _sys-vendor96367_ _sys-cpu96368_)
                    (gx#core-bind-feature!__%
                     _sys-cpu96368_
                     '#f
                     '0
                     _self96339_)
                    (gx#core-bind-feature!__%
                     _sys-type96366_
                     '#f
                     '0
                     _self96339_)
                    (if (_linux-variant?96341_ _sys-type96366_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self96339_)
                        (let ((_$e96370_ (_bsd-variant96342_ _sys-type96366_)))
                          (if _$e96370_
                              ((lambda (_sys-prefix96373_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self96339_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix96373_)
                                  '#f
                                  '0
                                  _self96339_))
                               _$e96370_)
                              '#!void))))))
            (if (##pair? _g9634396355_)
                (let ((_hd9634896378_ (##car _g9634396355_))
                      (_tl9634996380_ (##cdr _g9634396355_)))
                  (let ((_sys-cpu96383_ _hd9634896378_))
                    (if (##pair? _tl9634996380_)
                        (let ((_hd9635096385_ (##car _tl9634996380_))
                              (_tl9635196387_ (##cdr _tl9634996380_)))
                          (let ((_sys-vendor96390_ _hd9635096385_))
                            (if (##pair? _tl9635196387_)
                                (let ((_hd9635296392_ (##car _tl9635196387_))
                                      (_tl9635396394_ (##cdr _tl9635196387_)))
                                  (let ((_sys-type96397_ _hd9635296392_))
                                    (if (##null? _tl9635396394_)
                                        (_K9634796375_
                                         _sys-type96397_
                                         _sys-vendor96390_
                                         _sys-cpu96383_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self96339_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
