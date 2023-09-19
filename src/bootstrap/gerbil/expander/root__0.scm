(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1695117494)
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
      (lambda (_self18346_ _bind?18347_)
        (if (##fx< '2 (##vector-length _self18346_))
            (begin
              (##vector-set! _self18346_ '1 'root)
              (##vector-set! _self18346_ '2 (make-table 'test: eq?)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self18346_))
        (if _bind?18347_
            (begin
              (let ((__method18397
                     (method-ref _self18346_ 'bind-core-syntax-expanders!)))
                (if __method18397
                    (__method18397 _self18346_)
                    (error '"Missing method"
                           _self18346_
                           'bind-core-syntax-expanders!)))
              (let ((__method18398
                     (method-ref _self18346_ 'bind-core-macro-expanders!)))
                (if __method18398
                    (__method18398 _self18346_)
                    (error '"Missing method"
                           _self18346_
                           'bind-core-macro-expanders!)))
              (let ((__method18399
                     (method-ref _self18346_ 'bind-core-features!)))
                (if __method18399
                    (__method18399 _self18346_)
                    (error '"Missing method"
                           _self18346_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self18352_)
        (let ((_bind?18354_ '#t))
          (gx#root-context:::init!__% _self18352_ _bind?18354_))))
    (define gx#root-context:::init!
      (lambda _g18402_
        (let ((_g18401_ (##length _g18402_)))
          (cond ((##fx= _g18401_ 1)
                 (apply gx#root-context:::init!__0 _g18402_))
                ((##fx= _g18401_ 2)
                 (apply gx#root-context:::init!__% _g18402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g18402_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t18358)
        (let ((__bind-core-macro-expanders!18359
               (make-promise
                (lambda ()
                  (let ((__tmp18362
                         (direct-method-ref
                          __t18358
                          'bind-core-macro-expanders!)))
                    (if __tmp18362
                        __tmp18362
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!18360
               (make-promise
                (lambda ()
                  (let ((__tmp18363
                         (direct-method-ref __t18358 'bind-core-features!)))
                    (if __tmp18363
                        __tmp18363
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!18361
               (make-promise
                (lambda ()
                  (let ((__tmp18364
                         (direct-method-ref
                          __t18358
                          'bind-core-syntax-expanders!)))
                    (if __tmp18364
                        __tmp18364
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda1834418349_
                 (lambda (_self18346_ _bind?18347_)
                   (if (##fx< '2 (##vector-length _self18346_))
                       (begin
                         (##vector-set! _self18346_ '1 'root)
                         (##vector-set!
                          _self18346_
                          '2
                          (make-table 'test: eq?)))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self18346_))
                   (if _bind?18347_
                       (begin
                         ((force __bind-core-syntax-expanders!18361)
                          _self18346_)
                         ((force __bind-core-macro-expanders!18359)
                          _self18346_)
                         ((force __bind-core-features!18360) _self18346_))
                       '#!void))))
            (lambda _g18404_
              (let ((_g18403_ (##length _g18404_)))
                (cond ((##fx= _g18403_ 1)
                       (apply (lambda (_self18352_)
                                (let ((_bind?18354_ '#t))
                                  (_opt-lambda1834418349_
                                   _self18352_
                                   _bind?18354_)))
                              _g18404_))
                      ((##fx= _g18403_ 2)
                       (apply _opt-lambda1834418349_ _g18404_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g18404_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self18202_ _super18203_)
        (let ((_super18211_
               (let ((_$e18205_ _super18203_))
                 (if _$e18205_
                     _$e18205_
                     (let ((_$e18208_ (gx#core-context-root__0)))
                       (if _$e18208_
                           _$e18208_
                           (let ((__obj18400
                                  (make-object gx#root-context::t '2)))
                             (gx#root-context:::init!__0 __obj18400)
                             __obj18400)))))))
          (if (##fx< '5 (##vector-length _self18202_))
              (begin
                (##vector-set! _self18202_ '1 'top)
                (##vector-set! _self18202_ '2 (make-table 'test: eq?))
                (##vector-set! _self18202_ '3 _super18211_)
                (##vector-set! _self18202_ '4 '#f)
                (##vector-set! _self18202_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self18202_)))))
    (define gx#top-context:::init!__0
      (lambda (_self18216_)
        (let ((_super18218_ '#f))
          (gx#top-context:::init!__% _self18216_ _super18218_))))
    (define gx#top-context:::init!
      (lambda _g18406_
        (let ((_g18405_ (##length _g18406_)))
          (cond ((##fx= _g18405_ 1) (apply gx#top-context:::init!__0 _g18406_))
                ((##fx= _g18405_ 2) (apply gx#top-context:::init!__% _g18406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g18406_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self17933_ _bindings17934_)
        (for-each
         (lambda (_bind17936_)
           (let* ((_bind1793717944_ _bind17936_)
                  (_E1793917948_
                   (lambda () (error '"No clause matching" _bind1793717944_)))
                  (_K1794018057_
                   (lambda (_rest17951_ _id17952_)
                     (gx#core-context-put!
                      _self17933_
                      _id17952_
                      (##structure
                       gx#syntax-binding::t
                       _id17952_
                       _id17952_
                       '#f
                       (let* ((_rest1795317964_ _rest17951_)
                              (_E1795517968_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1795317964_)))
                              (_K1795618033_
                               (lambda (_compiler17971_
                                        _expander17972_
                                        _key17973_)
                                 ((let* ((_key1797417987_ _key17973_)
                                         (_E1798017991_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1797417987_))))
                                    (let ((_K1798518027_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K1798418020_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K1798318012_
                                           (lambda () gx#make-definition-form))
                                          (_K1798218004_
                                           (lambda () gx#make-special-form))
                                          (_K1798117996_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match1797917999_
                                              (lambda ()
                                                (if (##eq? _key1797417987_
                                                           'expr:)
                                                    (_K1798117996_)
                                                    (_E1798017991_))))
                                             (_try-match1797818007_
                                              (lambda ()
                                                (if (##eq? _key1797417987_
                                                           'special:)
                                                    (_K1798218004_)
                                                    (_try-match1797917999_))))
                                             (_try-match1797718015_
                                              (lambda ()
                                                (if (##eq? _key1797417987_
                                                           'define:)
                                                    (_K1798318012_)
                                                    (_try-match1797818007_))))
                                             (_try-match1797618023_
                                              (lambda ()
                                                (if (##eq? _key1797417987_
                                                           'module:)
                                                    (_K1798418020_)
                                                    (_try-match1797718015_)))))
                                        (if (##eq? _key1797417987_ 'top:)
                                            (_K1798518027_)
                                            (_try-match1797618023_)))))
                                  _expander17972_
                                  _id17952_
                                  (let ((_$e18030_ _compiler17971_))
                                    (if _$e18030_
                                        _$e18030_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1795317964_)
                             (let ((_hd1795718036_ (##car _rest1795317964_))
                                   (_tl1795818038_ (##cdr _rest1795317964_)))
                               (let ((_key18041_ _hd1795718036_))
                                 (if (##pair? _tl1795818038_)
                                     (let ((_hd1795918043_
                                            (##car _tl1795818038_))
                                           (_tl1796018045_
                                            (##cdr _tl1795818038_)))
                                       (let ((_expander18048_ _hd1795918043_))
                                         (if (##pair? _tl1796018045_)
                                             (let ((_hd1796118050_
                                                    (##car _tl1796018045_))
                                                   (_tl1796218052_
                                                    (##cdr _tl1796018045_)))
                                               (let ((_compiler18055_
                                                      _hd1796118050_))
                                                 (if (##null? _tl1796218052_)
                                                     (_K1795618033_
                                                      _compiler18055_
                                                      _expander18048_
                                                      _key18041_)
                                                     (_E1795517968_))))
                                             (_E1795517968_))))
                                     (_E1795517968_))))
                             (_E1795517968_))))))))
             (if (##pair? _bind1793717944_)
                 (let ((_hd1794118060_ (##car _bind1793717944_))
                       (_tl1794218062_ (##cdr _bind1793717944_)))
                   (let* ((_id18065_ _hd1794118060_)
                          (_rest18067_ _tl1794218062_))
                     (_K1794018057_ _rest18067_ _id18065_)))
                 (_E1793917948_))))
         _bindings17934_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self18072_)
        (let ((_bindings18074_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self18072_
           _bindings18074_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g18408_
        (let ((_g18407_ (##length _g18408_)))
          (cond ((##fx= _g18407_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g18408_))
                ((##fx= _g18407_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g18408_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g18408_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self17705_ _bindings17706_)
        (for-each
         (lambda (_bind17708_)
           (let* ((_bind1770917716_ _bind17708_)
                  (_E1771117720_
                   (lambda () (error '"No clause matching" _bind1770917716_)))
                  (_K1771217788_
                   (lambda (_rest17723_ _id17724_)
                     (gx#core-context-put!
                      _self17705_
                      _id17724_
                      (##structure
                       gx#syntax-binding::t
                       _id17724_
                       _id17724_
                       '#f
                       (let* ((_rest1772517740_ _rest17723_)
                              (_E1772917744_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1772517740_))))
                         (let ((_K1773417773_
                                (lambda (_core-id17771_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id17771_)))
                               (_K1773117758_
                                (lambda (_proc17756_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc17756_)))
                               (_K1773017749_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id17724_))))
                           (let ((_try-match1772817752_
                                  (lambda ()
                                    (if (##null? _rest1772517740_)
                                        (_K1773017749_)
                                        (_E1772917744_)))))
                             (if (##pair? _rest1772517740_)
                                 (let ((_tl1773617778_
                                        (##cdr _rest1772517740_))
                                       (_hd1773517776_
                                        (##car _rest1772517740_)))
                                   (if (##eq? _hd1773517776_ '=>)
                                       (if (##pair? _tl1773617778_)
                                           (let ((_tl1773817783_
                                                  (##cdr _tl1773617778_))
                                                 (_hd1773717781_
                                                  (##car _tl1773617778_)))
                                             (if (##null? _tl1773817783_)
                                                 (let ((_core-id17786_
                                                        _hd1773717781_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id17786_))
                                                 (_E1772917744_)))
                                           (if (##null? _tl1773617778_)
                                               (let ((_proc17766_
                                                      _hd1773517776_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc17766_))
                                               (_E1772917744_)))
                                       (if (##null? _tl1773617778_)
                                           (let ((_proc17766_ _hd1773517776_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc17766_))
                                           (_E1772917744_))))
                                 (_try-match1772817752_))))))))))
             (if (##pair? _bind1770917716_)
                 (let ((_hd1771317791_ (##car _bind1770917716_))
                       (_tl1771417793_ (##cdr _bind1770917716_)))
                   (let* ((_id17796_ _hd1771317791_)
                          (_rest17798_ _tl1771417793_))
                     (_K1771217788_ _rest17798_ _id17796_)))
                 (_E1771117720_))))
         _bindings17706_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self17803_)
        (let ((_bindings17805_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self17803_
           _bindings17805_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g18410_
        (let ((_g18409_ (##length _g18410_)))
          (cond ((##fx= _g18409_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g18410_))
                ((##fx= _g18409_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g18410_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g18410_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self17449_)
        (letrec ((_linux-variant?17451_
                  (lambda (_sys-type17550_)
                    (let* ((_g1755117559_
                            (string-split
                             (symbol->string _sys-type17550_)
                             '#\-))
                           (_else1755317567_ (lambda () '#f))
                           (_K1755517572_
                            (lambda (_rest17570_) (not (null? _rest17570_)))))
                      (if (##pair? _g1755117559_)
                          (let ((_hd1755617575_ (##car _g1755117559_))
                                (_tl1755717577_ (##cdr _g1755117559_)))
                            (if (equal? _hd1755617575_ '"linux")
                                (let ((_rest17580_ _tl1755717577_))
                                  (_K1755517572_ _rest17580_))
                                (_else1755317567_)))
                          (_else1755317567_)))))
                 (_bsd-variant17452_
                  (lambda (_sys-type17509_)
                    (let ((_sys-type-str17511_
                           (symbol->string _sys-type17509_)))
                      (let _lp17513_ ((_rest17515_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest1751617524_ _rest17515_)
                               (_else1751817532_ (lambda () '#f))
                               (_K1752017538_
                                (lambda (_rest17535_ _sys17536_)
                                  (if (string-prefix?
                                       _sys17536_
                                       _sys-type-str17511_)
                                      _sys17536_
                                      (_lp17513_ _rest17535_)))))
                          (if (##pair? _rest1751617524_)
                              (let ((_hd1752117541_ (##car _rest1751617524_))
                                    (_tl1752217543_ (##cdr _rest1751617524_)))
                                (let* ((_sys17546_ _hd1752117541_)
                                       (_rest17548_ _tl1752217543_))
                                  (_K1752017538_ _rest17548_ _sys17546_)))
                              (_else1751817532_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self17449_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self17449_)
          (let* ((_g1745317465_ (system-type))
                 (_else1745517473_ (lambda () '#!void))
                 (_K1745717485_
                  (lambda (_sys-type17476_ _sys-vendor17477_ _sys-cpu17478_)
                    (gx#core-bind-feature!__%
                     _sys-cpu17478_
                     '#f
                     '0
                     _self17449_)
                    (gx#core-bind-feature!__%
                     _sys-type17476_
                     '#f
                     '0
                     _self17449_)
                    (if (_linux-variant?17451_ _sys-type17476_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self17449_)
                        (let ((_$e17480_ (_bsd-variant17452_ _sys-type17476_)))
                          (if _$e17480_
                              ((lambda (_sys-prefix17483_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self17449_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix17483_)
                                  '#f
                                  '0
                                  _self17449_))
                               _$e17480_)
                              '#!void))))))
            (if (##pair? _g1745317465_)
                (let ((_hd1745817488_ (##car _g1745317465_))
                      (_tl1745917490_ (##cdr _g1745317465_)))
                  (let ((_sys-cpu17493_ _hd1745817488_))
                    (if (##pair? _tl1745917490_)
                        (let ((_hd1746017495_ (##car _tl1745917490_))
                              (_tl1746117497_ (##cdr _tl1745917490_)))
                          (let ((_sys-vendor17500_ _hd1746017495_))
                            (if (##pair? _tl1746117497_)
                                (let ((_hd1746217502_ (##car _tl1746117497_))
                                      (_tl1746317504_ (##cdr _tl1746117497_)))
                                  (let ((_sys-type17507_ _hd1746217502_))
                                    (if (##null? _tl1746317504_)
                                        (_K1745717485_
                                         _sys-type17507_
                                         _sys-vendor17500_
                                         _sys-cpu17493_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self17449_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
