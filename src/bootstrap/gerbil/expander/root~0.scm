(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1710833424)
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
      (lambda (_self97235_ _bind?97236_)
        (if (##fx< '2 (##structure-length _self97235_))
            (begin
              (##unchecked-structure-set!
               _self97235_
               'root
               '1
               (##structure-type _self97235_)
               '#f)
              (##unchecked-structure-set!
               _self97235_
               (make-hash-table-eq)
               '2
               (##structure-type _self97235_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self97235_
                   '2
                   (##vector-length _self97235_)))
        (if _bind?97236_
            (begin
              (let ((__method97287
                     (method-ref _self97235_ 'bind-core-syntax-expanders!)))
                (if __method97287
                    (__method97287 _self97235_)
                    (error '"Missing method"
                           _self97235_
                           'bind-core-syntax-expanders!)))
              (let ((__method97288
                     (method-ref _self97235_ 'bind-core-macro-expanders!)))
                (if __method97288
                    (__method97288 _self97235_)
                    (error '"Missing method"
                           _self97235_
                           'bind-core-macro-expanders!)))
              (let ((__method97289
                     (method-ref _self97235_ 'bind-core-features!)))
                (if __method97289
                    (__method97289 _self97235_)
                    (error '"Missing method"
                           _self97235_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self97241_)
        (let ((_bind?97243_ '#t))
          (gx#root-context:::init!__% _self97241_ _bind?97243_))))
    (define gx#root-context:::init!
      (lambda _g97292_
        (let ((_g97291_ (##length _g97292_)))
          (cond ((##fx= _g97291_ 1)
                 (apply (lambda (_self97241_)
                          (gx#root-context:::init!__0 _self97241_))
                        _g97292_))
                ((##fx= _g97291_ 2)
                 (apply (lambda (_self97245_ _bind?97246_)
                          (gx#root-context:::init!__%
                           _self97245_
                           _bind?97246_))
                        _g97292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g97292_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass97247 __method-table97248)
        (let ((__bind-core-features!97249
               (make-promise
                (lambda ()
                  (let ((__method97252
                         (symbolic-table-ref
                          __method-table97248
                          'bind-core-features!
                          '#f)))
                    (if __method97252
                        __method97252
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!97250
               (make-promise
                (lambda ()
                  (let ((__method97253
                         (symbolic-table-ref
                          __method-table97248
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method97253
                        __method97253
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!97251
               (make-promise
                (lambda ()
                  (let ((__method97254
                         (symbolic-table-ref
                          __method-table97248
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method97254
                        __method97254
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda9723397238_
                 (lambda (_self97235_ _bind?97236_)
                   (if (##fx< '2 (##structure-length _self97235_))
                       (begin
                         (##unchecked-structure-set!
                          _self97235_
                          'root
                          '1
                          (##structure-type _self97235_)
                          '#f)
                         (##unchecked-structure-set!
                          _self97235_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self97235_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self97235_
                              '2
                              (##vector-length _self97235_)))
                   (if _bind?97236_
                       (begin
                         ((force __bind-core-syntax-expanders!97251)
                          _self97235_)
                         ((force __bind-core-macro-expanders!97250)
                          _self97235_)
                         ((force __bind-core-features!97249) _self97235_))
                       '#!void))))
            (lambda _g97294_
              (let ((_g97293_ (##length _g97294_)))
                (cond ((##fx= _g97293_ 1)
                       (apply (lambda (_self97241_)
                                (let ((_bind?97243_ '#t))
                                  (_opt-lambda9723397238_
                                   _self97241_
                                   _bind?97243_)))
                              _g97294_))
                      ((##fx= _g97293_ 2)
                       (apply (lambda (_self97245_ _bind?97246_)
                                (_opt-lambda9723397238_
                                 _self97245_
                                 _bind?97246_))
                              _g97294_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g97294_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self97091_ _super97092_)
        (let ((_super97100_
               (let ((_$e97094_ _super97092_))
                 (if _$e97094_
                     _$e97094_
                     (let ((_$e97097_ (gx#core-context-root__0)))
                       (if _$e97097_
                           _$e97097_
                           (let ((__obj97290
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj97290)
                             __obj97290)))))))
          (if (##fx< '5 (##structure-length _self97091_))
              (begin
                (##unchecked-structure-set!
                 _self97091_
                 'top
                 '1
                 (##structure-type _self97091_)
                 '#f)
                (##unchecked-structure-set!
                 _self97091_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self97091_)
                 '#f)
                (##unchecked-structure-set!
                 _self97091_
                 _super97100_
                 '3
                 (##structure-type _self97091_)
                 '#f)
                (##unchecked-structure-set!
                 _self97091_
                 '#f
                 '4
                 (##structure-type _self97091_)
                 '#f)
                (##unchecked-structure-set!
                 _self97091_
                 '#f
                 '5
                 (##structure-type _self97091_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self97091_
                     '5
                     (##vector-length _self97091_))))))
    (define gx#top-context:::init!__0
      (lambda (_self97105_)
        (let ((_super97107_ '#f))
          (gx#top-context:::init!__% _self97105_ _super97107_))))
    (define gx#top-context:::init!
      (lambda _g97296_
        (let ((_g97295_ (##length _g97296_)))
          (cond ((##fx= _g97295_ 1)
                 (apply (lambda (_self97105_)
                          (gx#top-context:::init!__0 _self97105_))
                        _g97296_))
                ((##fx= _g97295_ 2)
                 (apply (lambda (_self97109_ _super97110_)
                          (gx#top-context:::init!__% _self97109_ _super97110_))
                        _g97296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g97296_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self96822_ _bindings96823_)
        (for-each
         (lambda (_bind96825_)
           (let* ((_bind9682696833_ _bind96825_)
                  (_E9682896837_
                   (lambda () (error '"No clause matching" _bind9682696833_)))
                  (_K9682996946_
                   (lambda (_rest96840_ _id96841_)
                     (gx#core-context-put!
                      _self96822_
                      _id96841_
                      (##structure
                       gx#syntax-binding::t
                       _id96841_
                       _id96841_
                       '#f
                       (let* ((_rest9684296853_ _rest96840_)
                              (_E9684496857_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9684296853_)))
                              (_K9684596922_
                               (lambda (_compiler96860_
                                        _expander96861_
                                        _key96862_)
                                 ((let* ((_key9686396876_ _key96862_)
                                         (_E9686996880_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9686396876_))))
                                    (let ((_K9687496916_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9687396909_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9687296901_
                                           (lambda () gx#make-definition-form))
                                          (_K9687196893_
                                           (lambda () gx#make-special-form))
                                          (_K9687096885_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9686896888_
                                              (lambda ()
                                                (if (##eq? _key9686396876_
                                                           'expr:)
                                                    (_K9687096885_)
                                                    (_E9686996880_))))
                                             (_try-match9686796896_
                                              (lambda ()
                                                (if (##eq? _key9686396876_
                                                           'special:)
                                                    (_K9687196893_)
                                                    (_try-match9686896888_))))
                                             (_try-match9686696904_
                                              (lambda ()
                                                (if (##eq? _key9686396876_
                                                           'define:)
                                                    (_K9687296901_)
                                                    (_try-match9686796896_))))
                                             (_try-match9686596912_
                                              (lambda ()
                                                (if (##eq? _key9686396876_
                                                           'module:)
                                                    (_K9687396909_)
                                                    (_try-match9686696904_)))))
                                        (if (##eq? _key9686396876_ 'top:)
                                            (_K9687496916_)
                                            (_try-match9686596912_)))))
                                  _expander96861_
                                  _id96841_
                                  (let ((_$e96919_ _compiler96860_))
                                    (if _$e96919_
                                        _$e96919_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9684296853_)
                             (let ((_hd9684696925_ (##car _rest9684296853_))
                                   (_tl9684796927_ (##cdr _rest9684296853_)))
                               (let ((_key96930_ _hd9684696925_))
                                 (if (##pair? _tl9684796927_)
                                     (let ((_hd9684896932_
                                            (##car _tl9684796927_))
                                           (_tl9684996934_
                                            (##cdr _tl9684796927_)))
                                       (let ((_expander96937_ _hd9684896932_))
                                         (if (##pair? _tl9684996934_)
                                             (let ((_hd9685096939_
                                                    (##car _tl9684996934_))
                                                   (_tl9685196941_
                                                    (##cdr _tl9684996934_)))
                                               (let ((_compiler96944_
                                                      _hd9685096939_))
                                                 (if (##null? _tl9685196941_)
                                                     (_K9684596922_
                                                      _compiler96944_
                                                      _expander96937_
                                                      _key96930_)
                                                     (_E9684496857_))))
                                             (_E9684496857_))))
                                     (_E9684496857_))))
                             (_E9684496857_))))))))
             (if (##pair? _bind9682696833_)
                 (let ((_hd9683096949_ (##car _bind9682696833_))
                       (_tl9683196951_ (##cdr _bind9682696833_)))
                   (let* ((_id96954_ _hd9683096949_)
                          (_rest96956_ _tl9683196951_))
                     (_K9682996946_ _rest96956_ _id96954_)))
                 (_E9682896837_))))
         _bindings96823_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self96961_)
        (let ((_bindings96963_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self96961_
           _bindings96963_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g97298_
        (let ((_g97297_ (##length _g97298_)))
          (cond ((##fx= _g97297_ 1)
                 (apply (lambda (_self96961_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self96961_))
                        _g97298_))
                ((##fx= _g97297_ 2)
                 (apply (lambda (_self96965_ _bindings96966_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self96965_
                           _bindings96966_))
                        _g97298_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g97298_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self96594_ _bindings96595_)
        (for-each
         (lambda (_bind96597_)
           (let* ((_bind9659896605_ _bind96597_)
                  (_E9660096609_
                   (lambda () (error '"No clause matching" _bind9659896605_)))
                  (_K9660196677_
                   (lambda (_rest96612_ _id96613_)
                     (gx#core-context-put!
                      _self96594_
                      _id96613_
                      (##structure
                       gx#syntax-binding::t
                       _id96613_
                       _id96613_
                       '#f
                       (let* ((_rest9661496629_ _rest96612_)
                              (_E9661896633_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9661496629_))))
                         (let ((_K9662396662_
                                (lambda (_core-id96660_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id96660_)))
                               (_K9662096647_
                                (lambda (_proc96645_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc96645_)))
                               (_K9661996638_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id96613_))))
                           (let ((_try-match9661796641_
                                  (lambda ()
                                    (if (##null? _rest9661496629_)
                                        (_K9661996638_)
                                        (_E9661896633_)))))
                             (if (##pair? _rest9661496629_)
                                 (let ((_tl9662596667_
                                        (##cdr _rest9661496629_))
                                       (_hd9662496665_
                                        (##car _rest9661496629_)))
                                   (if (##eq? _hd9662496665_ '=>)
                                       (if (##pair? _tl9662596667_)
                                           (let ((_tl9662796672_
                                                  (##cdr _tl9662596667_))
                                                 (_hd9662696670_
                                                  (##car _tl9662596667_)))
                                             (if (##null? _tl9662796672_)
                                                 (let ((_core-id96675_
                                                        _hd9662696670_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id96675_))
                                                 (_E9661896633_)))
                                           (if (##null? _tl9662596667_)
                                               (let ((_proc96655_
                                                      _hd9662496665_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc96655_))
                                               (_E9661896633_)))
                                       (if (##null? _tl9662596667_)
                                           (let ((_proc96655_ _hd9662496665_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc96655_))
                                           (_E9661896633_))))
                                 (_try-match9661796641_))))))))))
             (if (##pair? _bind9659896605_)
                 (let ((_hd9660296680_ (##car _bind9659896605_))
                       (_tl9660396682_ (##cdr _bind9659896605_)))
                   (let* ((_id96685_ _hd9660296680_)
                          (_rest96687_ _tl9660396682_))
                     (_K9660196677_ _rest96687_ _id96685_)))
                 (_E9660096609_))))
         _bindings96595_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self96692_)
        (let ((_bindings96694_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self96692_
           _bindings96694_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g97300_
        (let ((_g97299_ (##length _g97300_)))
          (cond ((##fx= _g97299_ 1)
                 (apply (lambda (_self96692_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self96692_))
                        _g97300_))
                ((##fx= _g97299_ 2)
                 (apply (lambda (_self96696_ _bindings96697_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self96696_
                           _bindings96697_))
                        _g97300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g97300_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self96338_)
        (letrec ((_linux-variant?96340_
                  (lambda (_sys-type96439_)
                    (let* ((_g9644096448_
                            (string-split
                             (symbol->string _sys-type96439_)
                             '#\-))
                           (_else9644296456_ (lambda () '#f))
                           (_K9644496461_
                            (lambda (_rest96459_) (not (null? _rest96459_)))))
                      (if (##pair? _g9644096448_)
                          (let ((_hd9644596464_ (##car _g9644096448_))
                                (_tl9644696466_ (##cdr _g9644096448_)))
                            (if (equal? _hd9644596464_ '"linux")
                                (let ((_rest96469_ _tl9644696466_))
                                  (_K9644496461_ _rest96469_))
                                (_else9644296456_)))
                          (_else9644296456_)))))
                 (_bsd-variant96341_
                  (lambda (_sys-type96398_)
                    (let ((_sys-type-str96400_
                           (symbol->string _sys-type96398_)))
                      (let _lp96402_ ((_rest96404_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9640596413_ _rest96404_)
                               (_else9640796421_ (lambda () '#f))
                               (_K9640996427_
                                (lambda (_rest96424_ _sys96425_)
                                  (if (string-prefix?
                                       _sys96425_
                                       _sys-type-str96400_)
                                      _sys96425_
                                      (_lp96402_ _rest96424_)))))
                          (if (##pair? _rest9640596413_)
                              (let ((_hd9641096430_ (##car _rest9640596413_))
                                    (_tl9641196432_ (##cdr _rest9640596413_)))
                                (let* ((_sys96435_ _hd9641096430_)
                                       (_rest96437_ _tl9641196432_))
                                  (_K9640996427_ _rest96437_ _sys96435_)))
                              (_else9640796421_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self96338_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self96338_)
          (let* ((_g9634296354_ (system-type))
                 (_else9634496362_ (lambda () '#!void))
                 (_K9634696374_
                  (lambda (_sys-type96365_ _sys-vendor96366_ _sys-cpu96367_)
                    (gx#core-bind-feature!__%
                     _sys-cpu96367_
                     '#f
                     '0
                     _self96338_)
                    (gx#core-bind-feature!__%
                     _sys-type96365_
                     '#f
                     '0
                     _self96338_)
                    (if (_linux-variant?96340_ _sys-type96365_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self96338_)
                        (let ((_$e96369_ (_bsd-variant96341_ _sys-type96365_)))
                          (if _$e96369_
                              ((lambda (_sys-prefix96372_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self96338_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix96372_)
                                  '#f
                                  '0
                                  _self96338_))
                               _$e96369_)
                              '#!void))))))
            (if (##pair? _g9634296354_)
                (let ((_hd9634796377_ (##car _g9634296354_))
                      (_tl9634896379_ (##cdr _g9634296354_)))
                  (let ((_sys-cpu96382_ _hd9634796377_))
                    (if (##pair? _tl9634896379_)
                        (let ((_hd9634996384_ (##car _tl9634896379_))
                              (_tl9635096386_ (##cdr _tl9634896379_)))
                          (let ((_sys-vendor96389_ _hd9634996384_))
                            (if (##pair? _tl9635096386_)
                                (let ((_hd9635196391_ (##car _tl9635096386_))
                                      (_tl9635296393_ (##cdr _tl9635096386_)))
                                  (let ((_sys-type96396_ _hd9635196391_))
                                    (if (##null? _tl9635296393_)
                                        (_K9634696374_
                                         _sys-type96396_
                                         _sys-vendor96389_
                                         _sys-cpu96382_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self96338_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
