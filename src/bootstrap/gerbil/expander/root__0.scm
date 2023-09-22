(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1695377612)
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
      (lambda (_self19658_ _bind?19659_)
        (if (##fx< '2 (##vector-length _self19658_))
            (begin
              (##vector-set! _self19658_ '1 'root)
              (##vector-set! _self19658_ '2 (make-table 'test: eq?)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self19658_))
        (if _bind?19659_
            (begin
              (let ((__method19709
                     (method-ref _self19658_ 'bind-core-syntax-expanders!)))
                (if __method19709
                    (__method19709 _self19658_)
                    (error '"Missing method"
                           _self19658_
                           'bind-core-syntax-expanders!)))
              (let ((__method19710
                     (method-ref _self19658_ 'bind-core-macro-expanders!)))
                (if __method19710
                    (__method19710 _self19658_)
                    (error '"Missing method"
                           _self19658_
                           'bind-core-macro-expanders!)))
              (let ((__method19711
                     (method-ref _self19658_ 'bind-core-features!)))
                (if __method19711
                    (__method19711 _self19658_)
                    (error '"Missing method"
                           _self19658_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self19664_)
        (let ((_bind?19666_ '#t))
          (gx#root-context:::init!__% _self19664_ _bind?19666_))))
    (define gx#root-context:::init!
      (lambda _g19714_
        (let ((_g19713_ (##length _g19714_)))
          (cond ((##fx= _g19713_ 1)
                 (apply (lambda (_self19664_)
                          (gx#root-context:::init!__0 _self19664_))
                        _g19714_))
                ((##fx= _g19713_ 2)
                 (apply (lambda (_self19668_ _bind?19669_)
                          (gx#root-context:::init!__%
                           _self19668_
                           _bind?19669_))
                        _g19714_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g19714_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t19670)
        (let ((__bind-core-syntax-expanders!19671
               (make-promise
                (lambda ()
                  (let ((__tmp19674
                         (direct-method-ref
                          __t19670
                          'bind-core-syntax-expanders!)))
                    (if __tmp19674
                        __tmp19674
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!19672
               (make-promise
                (lambda ()
                  (let ((__tmp19675
                         (direct-method-ref
                          __t19670
                          'bind-core-macro-expanders!)))
                    (if __tmp19675
                        __tmp19675
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!19673
               (make-promise
                (lambda ()
                  (let ((__tmp19676
                         (direct-method-ref __t19670 'bind-core-features!)))
                    (if __tmp19676
                        __tmp19676
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda1965619661_
                 (lambda (_self19658_ _bind?19659_)
                   (if (##fx< '2 (##vector-length _self19658_))
                       (begin
                         (##vector-set! _self19658_ '1 'root)
                         (##vector-set!
                          _self19658_
                          '2
                          (make-table 'test: eq?)))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self19658_))
                   (if _bind?19659_
                       (begin
                         ((force __bind-core-syntax-expanders!19671)
                          _self19658_)
                         ((force __bind-core-macro-expanders!19672)
                          _self19658_)
                         ((force __bind-core-features!19673) _self19658_))
                       '#!void))))
            (lambda _g19716_
              (let ((_g19715_ (##length _g19716_)))
                (cond ((##fx= _g19715_ 1)
                       (apply (lambda (_self19664_)
                                (let ((_bind?19666_ '#t))
                                  (_opt-lambda1965619661_
                                   _self19664_
                                   _bind?19666_)))
                              _g19716_))
                      ((##fx= _g19715_ 2)
                       (apply (lambda (_self19668_ _bind?19669_)
                                (_opt-lambda1965619661_
                                 _self19668_
                                 _bind?19669_))
                              _g19716_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g19716_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self19514_ _super19515_)
        (let ((_super19523_
               (let ((_$e19517_ _super19515_))
                 (if _$e19517_
                     _$e19517_
                     (let ((_$e19520_ (gx#core-context-root__0)))
                       (if _$e19520_
                           _$e19520_
                           (let ((__obj19712
                                  (make-object gx#root-context::t '2)))
                             (gx#root-context:::init!__0 __obj19712)
                             __obj19712)))))))
          (if (##fx< '5 (##vector-length _self19514_))
              (begin
                (##vector-set! _self19514_ '1 'top)
                (##vector-set! _self19514_ '2 (make-table 'test: eq?))
                (##vector-set! _self19514_ '3 _super19523_)
                (##vector-set! _self19514_ '4 '#f)
                (##vector-set! _self19514_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self19514_)))))
    (define gx#top-context:::init!__0
      (lambda (_self19528_)
        (let ((_super19530_ '#f))
          (gx#top-context:::init!__% _self19528_ _super19530_))))
    (define gx#top-context:::init!
      (lambda _g19718_
        (let ((_g19717_ (##length _g19718_)))
          (cond ((##fx= _g19717_ 1)
                 (apply (lambda (_self19528_)
                          (gx#top-context:::init!__0 _self19528_))
                        _g19718_))
                ((##fx= _g19717_ 2)
                 (apply (lambda (_self19532_ _super19533_)
                          (gx#top-context:::init!__% _self19532_ _super19533_))
                        _g19718_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g19718_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self19245_ _bindings19246_)
        (for-each
         (lambda (_bind19248_)
           (let* ((_bind1924919256_ _bind19248_)
                  (_E1925119260_
                   (lambda () (error '"No clause matching" _bind1924919256_)))
                  (_K1925219369_
                   (lambda (_rest19263_ _id19264_)
                     (gx#core-context-put!
                      _self19245_
                      _id19264_
                      (##structure
                       gx#syntax-binding::t
                       _id19264_
                       _id19264_
                       '#f
                       (let* ((_rest1926519276_ _rest19263_)
                              (_E1926719280_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1926519276_)))
                              (_K1926819345_
                               (lambda (_compiler19283_
                                        _expander19284_
                                        _key19285_)
                                 ((let* ((_key1928619299_ _key19285_)
                                         (_E1929219303_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1928619299_))))
                                    (let ((_K1929719339_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K1929619332_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K1929519324_
                                           (lambda () gx#make-definition-form))
                                          (_K1929419316_
                                           (lambda () gx#make-special-form))
                                          (_K1929319308_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match1929119311_
                                              (lambda ()
                                                (if (##eq? _key1928619299_
                                                           'expr:)
                                                    (_K1929319308_)
                                                    (_E1929219303_))))
                                             (_try-match1929019319_
                                              (lambda ()
                                                (if (##eq? _key1928619299_
                                                           'special:)
                                                    (_K1929419316_)
                                                    (_try-match1929119311_))))
                                             (_try-match1928919327_
                                              (lambda ()
                                                (if (##eq? _key1928619299_
                                                           'define:)
                                                    (_K1929519324_)
                                                    (_try-match1929019319_))))
                                             (_try-match1928819335_
                                              (lambda ()
                                                (if (##eq? _key1928619299_
                                                           'module:)
                                                    (_K1929619332_)
                                                    (_try-match1928919327_)))))
                                        (if (##eq? _key1928619299_ 'top:)
                                            (_K1929719339_)
                                            (_try-match1928819335_)))))
                                  _expander19284_
                                  _id19264_
                                  (let ((_$e19342_ _compiler19283_))
                                    (if _$e19342_
                                        _$e19342_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1926519276_)
                             (let ((_hd1926919348_ (##car _rest1926519276_))
                                   (_tl1927019350_ (##cdr _rest1926519276_)))
                               (let ((_key19353_ _hd1926919348_))
                                 (if (##pair? _tl1927019350_)
                                     (let ((_hd1927119355_
                                            (##car _tl1927019350_))
                                           (_tl1927219357_
                                            (##cdr _tl1927019350_)))
                                       (let ((_expander19360_ _hd1927119355_))
                                         (if (##pair? _tl1927219357_)
                                             (let ((_hd1927319362_
                                                    (##car _tl1927219357_))
                                                   (_tl1927419364_
                                                    (##cdr _tl1927219357_)))
                                               (let ((_compiler19367_
                                                      _hd1927319362_))
                                                 (if (##null? _tl1927419364_)
                                                     (_K1926819345_
                                                      _compiler19367_
                                                      _expander19360_
                                                      _key19353_)
                                                     (_E1926719280_))))
                                             (_E1926719280_))))
                                     (_E1926719280_))))
                             (_E1926719280_))))))))
             (if (##pair? _bind1924919256_)
                 (let ((_hd1925319372_ (##car _bind1924919256_))
                       (_tl1925419374_ (##cdr _bind1924919256_)))
                   (let* ((_id19377_ _hd1925319372_)
                          (_rest19379_ _tl1925419374_))
                     (_K1925219369_ _rest19379_ _id19377_)))
                 (_E1925119260_))))
         _bindings19246_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self19384_)
        (let ((_bindings19386_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self19384_
           _bindings19386_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g19720_
        (let ((_g19719_ (##length _g19720_)))
          (cond ((##fx= _g19719_ 1)
                 (apply (lambda (_self19384_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self19384_))
                        _g19720_))
                ((##fx= _g19719_ 2)
                 (apply (lambda (_self19388_ _bindings19389_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self19388_
                           _bindings19389_))
                        _g19720_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g19720_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self19017_ _bindings19018_)
        (for-each
         (lambda (_bind19020_)
           (let* ((_bind1902119028_ _bind19020_)
                  (_E1902319032_
                   (lambda () (error '"No clause matching" _bind1902119028_)))
                  (_K1902419100_
                   (lambda (_rest19035_ _id19036_)
                     (gx#core-context-put!
                      _self19017_
                      _id19036_
                      (##structure
                       gx#syntax-binding::t
                       _id19036_
                       _id19036_
                       '#f
                       (let* ((_rest1903719052_ _rest19035_)
                              (_E1904119056_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1903719052_))))
                         (let ((_K1904619085_
                                (lambda (_core-id19083_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id19083_)))
                               (_K1904319070_
                                (lambda (_proc19068_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc19068_)))
                               (_K1904219061_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id19036_))))
                           (let ((_try-match1904019064_
                                  (lambda ()
                                    (if (##null? _rest1903719052_)
                                        (_K1904219061_)
                                        (_E1904119056_)))))
                             (if (##pair? _rest1903719052_)
                                 (let ((_tl1904819090_
                                        (##cdr _rest1903719052_))
                                       (_hd1904719088_
                                        (##car _rest1903719052_)))
                                   (if (##eq? _hd1904719088_ '=>)
                                       (if (##pair? _tl1904819090_)
                                           (let ((_tl1905019095_
                                                  (##cdr _tl1904819090_))
                                                 (_hd1904919093_
                                                  (##car _tl1904819090_)))
                                             (if (##null? _tl1905019095_)
                                                 (let ((_core-id19098_
                                                        _hd1904919093_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id19098_))
                                                 (_E1904119056_)))
                                           (if (##null? _tl1904819090_)
                                               (let ((_proc19078_
                                                      _hd1904719088_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc19078_))
                                               (_E1904119056_)))
                                       (if (##null? _tl1904819090_)
                                           (let ((_proc19078_ _hd1904719088_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc19078_))
                                           (_E1904119056_))))
                                 (_try-match1904019064_))))))))))
             (if (##pair? _bind1902119028_)
                 (let ((_hd1902519103_ (##car _bind1902119028_))
                       (_tl1902619105_ (##cdr _bind1902119028_)))
                   (let* ((_id19108_ _hd1902519103_)
                          (_rest19110_ _tl1902619105_))
                     (_K1902419100_ _rest19110_ _id19108_)))
                 (_E1902319032_))))
         _bindings19018_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self19115_)
        (let ((_bindings19117_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self19115_
           _bindings19117_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g19722_
        (let ((_g19721_ (##length _g19722_)))
          (cond ((##fx= _g19721_ 1)
                 (apply (lambda (_self19115_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self19115_))
                        _g19722_))
                ((##fx= _g19721_ 2)
                 (apply (lambda (_self19119_ _bindings19120_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self19119_
                           _bindings19120_))
                        _g19722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g19722_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self18761_)
        (letrec ((_linux-variant?18763_
                  (lambda (_sys-type18862_)
                    (let* ((_g1886318871_
                            (string-split
                             (symbol->string _sys-type18862_)
                             '#\-))
                           (_else1886518879_ (lambda () '#f))
                           (_K1886718884_
                            (lambda (_rest18882_) (not (null? _rest18882_)))))
                      (if (##pair? _g1886318871_)
                          (let ((_hd1886818887_ (##car _g1886318871_))
                                (_tl1886918889_ (##cdr _g1886318871_)))
                            (if (equal? _hd1886818887_ '"linux")
                                (let ((_rest18892_ _tl1886918889_))
                                  (_K1886718884_ _rest18892_))
                                (_else1886518879_)))
                          (_else1886518879_)))))
                 (_bsd-variant18764_
                  (lambda (_sys-type18821_)
                    (let ((_sys-type-str18823_
                           (symbol->string _sys-type18821_)))
                      (let _lp18825_ ((_rest18827_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest1882818836_ _rest18827_)
                               (_else1883018844_ (lambda () '#f))
                               (_K1883218850_
                                (lambda (_rest18847_ _sys18848_)
                                  (if (string-prefix?
                                       _sys18848_
                                       _sys-type-str18823_)
                                      _sys18848_
                                      (_lp18825_ _rest18847_)))))
                          (if (##pair? _rest1882818836_)
                              (let ((_hd1883318853_ (##car _rest1882818836_))
                                    (_tl1883418855_ (##cdr _rest1882818836_)))
                                (let* ((_sys18858_ _hd1883318853_)
                                       (_rest18860_ _tl1883418855_))
                                  (_K1883218850_ _rest18860_ _sys18858_)))
                              (_else1883018844_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self18761_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self18761_)
          (let* ((_g1876518777_ (system-type))
                 (_else1876718785_ (lambda () '#!void))
                 (_K1876918797_
                  (lambda (_sys-type18788_ _sys-vendor18789_ _sys-cpu18790_)
                    (gx#core-bind-feature!__%
                     _sys-cpu18790_
                     '#f
                     '0
                     _self18761_)
                    (gx#core-bind-feature!__%
                     _sys-type18788_
                     '#f
                     '0
                     _self18761_)
                    (if (_linux-variant?18763_ _sys-type18788_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self18761_)
                        (let ((_$e18792_ (_bsd-variant18764_ _sys-type18788_)))
                          (if _$e18792_
                              ((lambda (_sys-prefix18795_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self18761_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix18795_)
                                  '#f
                                  '0
                                  _self18761_))
                               _$e18792_)
                              '#!void))))))
            (if (##pair? _g1876518777_)
                (let ((_hd1877018800_ (##car _g1876518777_))
                      (_tl1877118802_ (##cdr _g1876518777_)))
                  (let ((_sys-cpu18805_ _hd1877018800_))
                    (if (##pair? _tl1877118802_)
                        (let ((_hd1877218807_ (##car _tl1877118802_))
                              (_tl1877318809_ (##cdr _tl1877118802_)))
                          (let ((_sys-vendor18812_ _hd1877218807_))
                            (if (##pair? _tl1877318809_)
                                (let ((_hd1877418814_ (##car _tl1877318809_))
                                      (_tl1877518816_ (##cdr _tl1877318809_)))
                                  (let ((_sys-type18819_ _hd1877418814_))
                                    (if (##null? _tl1877518816_)
                                        (_K1876918797_
                                         _sys-type18819_
                                         _sys-vendor18812_
                                         _sys-cpu18805_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self18761_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
