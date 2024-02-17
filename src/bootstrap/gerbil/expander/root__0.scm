(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708210941)
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
      (lambda (_self171382_ _bind?171383_)
        (if (##fx< '2 (##structure-length _self171382_))
            (begin
              (##unchecked-structure-set!
               _self171382_
               'root
               '1
               (##structure-type _self171382_)
               '#f)
              (##unchecked-structure-set!
               _self171382_
               (make-hash-table-eq)
               '2
               (##structure-type _self171382_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self171382_
                   '2
                   (##vector-length _self171382_)))
        (if _bind?171383_
            (begin
              (let ((__method175500
                     (method-ref _self171382_ 'bind-core-syntax-expanders!)))
                (if __method175500
                    (__method175500 _self171382_)
                    (error '"Missing method"
                           _self171382_
                           'bind-core-syntax-expanders!)))
              (let ((__method175501
                     (method-ref _self171382_ 'bind-core-macro-expanders!)))
                (if __method175501
                    (__method175501 _self171382_)
                    (error '"Missing method"
                           _self171382_
                           'bind-core-macro-expanders!)))
              (let ((__method175502
                     (method-ref _self171382_ 'bind-core-features!)))
                (if __method175502
                    (__method175502 _self171382_)
                    (error '"Missing method"
                           _self171382_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self171388_)
        (let ((_bind?171390_ '#t))
          (gx#root-context:::init!__% _self171388_ _bind?171390_))))
    (define gx#root-context:::init!
      (lambda _g175505_
        (let ((_g175504_ (##length _g175505_)))
          (cond ((##fx= _g175504_ 1)
                 (apply (lambda (_self171388_)
                          (gx#root-context:::init!__0 _self171388_))
                        _g175505_))
                ((##fx= _g175504_ 2)
                 (apply (lambda (_self171392_ _bind?171393_)
                          (gx#root-context:::init!__%
                           _self171392_
                           _bind?171393_))
                        _g175505_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g175505_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t175461)
        (let ((__bind-core-features!175462
               (make-promise
                (lambda ()
                  (let ((__tmp175465
                         (direct-method-ref
                          __t175461
                          '#f
                          'bind-core-features!)))
                    (if __tmp175465
                        __tmp175465
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!175463
               (make-promise
                (lambda ()
                  (let ((__tmp175466
                         (direct-method-ref
                          __t175461
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp175466
                        __tmp175466
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!175464
               (make-promise
                (lambda ()
                  (let ((__tmp175467
                         (direct-method-ref
                          __t175461
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp175467
                        __tmp175467
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda171380171385_
                 (lambda (_self171382_ _bind?171383_)
                   (if (##fx< '2 (##structure-length _self171382_))
                       (begin
                         (##unchecked-structure-set!
                          _self171382_
                          'root
                          '1
                          (##structure-type _self171382_)
                          '#f)
                         (##unchecked-structure-set!
                          _self171382_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self171382_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self171382_
                              '2
                              (##vector-length _self171382_)))
                   (if _bind?171383_
                       (begin
                         ((force __bind-core-syntax-expanders!175463)
                          _self171382_)
                         ((force __bind-core-macro-expanders!175464)
                          _self171382_)
                         ((force __bind-core-features!175462) _self171382_))
                       '#!void))))
            (lambda _g175507_
              (let ((_g175506_ (##length _g175507_)))
                (cond ((##fx= _g175506_ 1)
                       (apply (lambda (_self171388_)
                                (let ((_bind?171390_ '#t))
                                  (_opt-lambda171380171385_
                                   _self171388_
                                   _bind?171390_)))
                              _g175507_))
                      ((##fx= _g175506_ 2)
                       (apply (lambda (_self171392_ _bind?171393_)
                                (_opt-lambda171380171385_
                                 _self171392_
                                 _bind?171393_))
                              _g175507_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g175507_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self171238_ _super171239_)
        (let ((_super171247_
               (let ((_$e171241_ _super171239_))
                 (if _$e171241_
                     _$e171241_
                     (let ((_$e171244_ (gx#core-context-root__0)))
                       (if _$e171244_
                           _$e171244_
                           (let ((__obj175503
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj175503)
                             __obj175503)))))))
          (if (##fx< '5 (##structure-length _self171238_))
              (begin
                (##unchecked-structure-set!
                 _self171238_
                 'top
                 '1
                 (##structure-type _self171238_)
                 '#f)
                (##unchecked-structure-set!
                 _self171238_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self171238_)
                 '#f)
                (##unchecked-structure-set!
                 _self171238_
                 _super171247_
                 '3
                 (##structure-type _self171238_)
                 '#f)
                (##unchecked-structure-set!
                 _self171238_
                 '#f
                 '4
                 (##structure-type _self171238_)
                 '#f)
                (##unchecked-structure-set!
                 _self171238_
                 '#f
                 '5
                 (##structure-type _self171238_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self171238_
                     '5
                     (##vector-length _self171238_))))))
    (define gx#top-context:::init!__0
      (lambda (_self171252_)
        (let ((_super171254_ '#f))
          (gx#top-context:::init!__% _self171252_ _super171254_))))
    (define gx#top-context:::init!
      (lambda _g175509_
        (let ((_g175508_ (##length _g175509_)))
          (cond ((##fx= _g175508_ 1)
                 (apply (lambda (_self171252_)
                          (gx#top-context:::init!__0 _self171252_))
                        _g175509_))
                ((##fx= _g175508_ 2)
                 (apply (lambda (_self171256_ _super171257_)
                          (gx#top-context:::init!__%
                           _self171256_
                           _super171257_))
                        _g175509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g175509_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self170969_ _bindings170970_)
        (for-each
         (lambda (_bind170972_)
           (let* ((_bind170973170980_ _bind170972_)
                  (_E170975170984_
                   (lambda ()
                     (error '"No clause matching" _bind170973170980_)))
                  (_K170976171093_
                   (lambda (_rest170987_ _id170988_)
                     (gx#core-context-put!
                      _self170969_
                      _id170988_
                      (##structure
                       gx#syntax-binding::t
                       _id170988_
                       _id170988_
                       '#f
                       (let* ((_rest170989171000_ _rest170987_)
                              (_E170991171004_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest170989171000_)))
                              (_K170992171069_
                               (lambda (_compiler171007_
                                        _expander171008_
                                        _key171009_)
                                 ((let* ((_key171010171023_ _key171009_)
                                         (_E171016171027_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key171010171023_))))
                                    (let ((_K171021171063_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K171020171056_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K171019171048_
                                           (lambda () gx#make-definition-form))
                                          (_K171018171040_
                                           (lambda () gx#make-special-form))
                                          (_K171017171032_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match171015171035_
                                              (lambda ()
                                                (if (##eq? _key171010171023_
                                                           'expr:)
                                                    (_K171017171032_)
                                                    (_E171016171027_))))
                                             (_try-match171014171043_
                                              (lambda ()
                                                (if (##eq? _key171010171023_
                                                           'special:)
                                                    (_K171018171040_)
                                                    (_try-match171015171035_))))
                                             (_try-match171013171051_
                                              (lambda ()
                                                (if (##eq? _key171010171023_
                                                           'define:)
                                                    (_K171019171048_)
                                                    (_try-match171014171043_))))
                                             (_try-match171012171059_
                                              (lambda ()
                                                (if (##eq? _key171010171023_
                                                           'module:)
                                                    (_K171020171056_)
                                                    (_try-match171013171051_)))))
                                        (if (##eq? _key171010171023_ 'top:)
                                            (_K171021171063_)
                                            (_try-match171012171059_)))))
                                  _expander171008_
                                  _id170988_
                                  (let ((_$e171066_ _compiler171007_))
                                    (if _$e171066_
                                        _$e171066_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest170989171000_)
                             (let ((_hd170993171072_
                                    (##car _rest170989171000_))
                                   (_tl170994171074_
                                    (##cdr _rest170989171000_)))
                               (let ((_key171077_ _hd170993171072_))
                                 (if (##pair? _tl170994171074_)
                                     (let ((_hd170995171079_
                                            (##car _tl170994171074_))
                                           (_tl170996171081_
                                            (##cdr _tl170994171074_)))
                                       (let ((_expander171084_
                                              _hd170995171079_))
                                         (if (##pair? _tl170996171081_)
                                             (let ((_hd170997171086_
                                                    (##car _tl170996171081_))
                                                   (_tl170998171088_
                                                    (##cdr _tl170996171081_)))
                                               (let ((_compiler171091_
                                                      _hd170997171086_))
                                                 (if (##null? _tl170998171088_)
                                                     (_K170992171069_
                                                      _compiler171091_
                                                      _expander171084_
                                                      _key171077_)
                                                     (_E170991171004_))))
                                             (_E170991171004_))))
                                     (_E170991171004_))))
                             (_E170991171004_))))))))
             (if (##pair? _bind170973170980_)
                 (let ((_hd170977171096_ (##car _bind170973170980_))
                       (_tl170978171098_ (##cdr _bind170973170980_)))
                   (let* ((_id171101_ _hd170977171096_)
                          (_rest171103_ _tl170978171098_))
                     (_K170976171093_ _rest171103_ _id171101_)))
                 (_E170975170984_))))
         _bindings170970_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self171108_)
        (let ((_bindings171110_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self171108_
           _bindings171110_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g175511_
        (let ((_g175510_ (##length _g175511_)))
          (cond ((##fx= _g175510_ 1)
                 (apply (lambda (_self171108_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self171108_))
                        _g175511_))
                ((##fx= _g175510_ 2)
                 (apply (lambda (_self171112_ _bindings171113_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self171112_
                           _bindings171113_))
                        _g175511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g175511_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self170741_ _bindings170742_)
        (for-each
         (lambda (_bind170744_)
           (let* ((_bind170745170752_ _bind170744_)
                  (_E170747170756_
                   (lambda ()
                     (error '"No clause matching" _bind170745170752_)))
                  (_K170748170824_
                   (lambda (_rest170759_ _id170760_)
                     (gx#core-context-put!
                      _self170741_
                      _id170760_
                      (##structure
                       gx#syntax-binding::t
                       _id170760_
                       _id170760_
                       '#f
                       (let* ((_rest170761170776_ _rest170759_)
                              (_E170765170780_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest170761170776_))))
                         (let ((_K170770170809_
                                (lambda (_core-id170807_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id170807_)))
                               (_K170767170794_
                                (lambda (_proc170792_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc170792_)))
                               (_K170766170785_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id170760_))))
                           (let ((_try-match170764170788_
                                  (lambda ()
                                    (if (##null? _rest170761170776_)
                                        (_K170766170785_)
                                        (_E170765170780_)))))
                             (if (##pair? _rest170761170776_)
                                 (let ((_tl170772170814_
                                        (##cdr _rest170761170776_))
                                       (_hd170771170812_
                                        (##car _rest170761170776_)))
                                   (if (##eq? _hd170771170812_ '=>)
                                       (if (##pair? _tl170772170814_)
                                           (let ((_tl170774170819_
                                                  (##cdr _tl170772170814_))
                                                 (_hd170773170817_
                                                  (##car _tl170772170814_)))
                                             (if (##null? _tl170774170819_)
                                                 (let ((_core-id170822_
                                                        _hd170773170817_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id170822_))
                                                 (_E170765170780_)))
                                           (if (##null? _tl170772170814_)
                                               (let ((_proc170802_
                                                      _hd170771170812_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc170802_))
                                               (_E170765170780_)))
                                       (if (##null? _tl170772170814_)
                                           (let ((_proc170802_
                                                  _hd170771170812_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc170802_))
                                           (_E170765170780_))))
                                 (_try-match170764170788_))))))))))
             (if (##pair? _bind170745170752_)
                 (let ((_hd170749170827_ (##car _bind170745170752_))
                       (_tl170750170829_ (##cdr _bind170745170752_)))
                   (let* ((_id170832_ _hd170749170827_)
                          (_rest170834_ _tl170750170829_))
                     (_K170748170824_ _rest170834_ _id170832_)))
                 (_E170747170756_))))
         _bindings170742_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self170839_)
        (let ((_bindings170841_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self170839_
           _bindings170841_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g175513_
        (let ((_g175512_ (##length _g175513_)))
          (cond ((##fx= _g175512_ 1)
                 (apply (lambda (_self170839_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self170839_))
                        _g175513_))
                ((##fx= _g175512_ 2)
                 (apply (lambda (_self170843_ _bindings170844_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self170843_
                           _bindings170844_))
                        _g175513_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g175513_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self170485_)
        (letrec ((_linux-variant?170487_
                  (lambda (_sys-type170586_)
                    (let* ((_g170587170595_
                            (string-split
                             (symbol->string _sys-type170586_)
                             '#\-))
                           (_else170589170603_ (lambda () '#f))
                           (_K170591170608_
                            (lambda (_rest170606_)
                              (not (null? _rest170606_)))))
                      (if (##pair? _g170587170595_)
                          (let ((_hd170592170611_ (##car _g170587170595_))
                                (_tl170593170613_ (##cdr _g170587170595_)))
                            (if (equal? _hd170592170611_ '"linux")
                                (let ((_rest170616_ _tl170593170613_))
                                  (_K170591170608_ _rest170616_))
                                (_else170589170603_)))
                          (_else170589170603_)))))
                 (_bsd-variant170488_
                  (lambda (_sys-type170545_)
                    (let ((_sys-type-str170547_
                           (symbol->string _sys-type170545_)))
                      (let _lp170549_ ((_rest170551_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest170552170560_ _rest170551_)
                               (_else170554170568_ (lambda () '#f))
                               (_K170556170574_
                                (lambda (_rest170571_ _sys170572_)
                                  (if (string-prefix?
                                       _sys170572_
                                       _sys-type-str170547_)
                                      _sys170572_
                                      (_lp170549_ _rest170571_)))))
                          (if (##pair? _rest170552170560_)
                              (let ((_hd170557170577_
                                     (##car _rest170552170560_))
                                    (_tl170558170579_
                                     (##cdr _rest170552170560_)))
                                (let* ((_sys170582_ _hd170557170577_)
                                       (_rest170584_ _tl170558170579_))
                                  (_K170556170574_ _rest170584_ _sys170582_)))
                              (_else170554170568_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self170485_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self170485_)
          (let* ((_g170489170501_ (system-type))
                 (_else170491170509_ (lambda () '#!void))
                 (_K170493170521_
                  (lambda (_sys-type170512_ _sys-vendor170513_ _sys-cpu170514_)
                    (gx#core-bind-feature!__%
                     _sys-cpu170514_
                     '#f
                     '0
                     _self170485_)
                    (gx#core-bind-feature!__%
                     _sys-type170512_
                     '#f
                     '0
                     _self170485_)
                    (if (_linux-variant?170487_ _sys-type170512_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self170485_)
                        (let ((_$e170516_
                               (_bsd-variant170488_ _sys-type170512_)))
                          (if _$e170516_
                              ((lambda (_sys-prefix170519_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self170485_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix170519_)
                                  '#f
                                  '0
                                  _self170485_))
                               _$e170516_)
                              '#!void))))))
            (if (##pair? _g170489170501_)
                (let ((_hd170494170524_ (##car _g170489170501_))
                      (_tl170495170526_ (##cdr _g170489170501_)))
                  (let ((_sys-cpu170529_ _hd170494170524_))
                    (if (##pair? _tl170495170526_)
                        (let ((_hd170496170531_ (##car _tl170495170526_))
                              (_tl170497170533_ (##cdr _tl170495170526_)))
                          (let ((_sys-vendor170536_ _hd170496170531_))
                            (if (##pair? _tl170497170533_)
                                (let ((_hd170498170538_
                                       (##car _tl170497170533_))
                                      (_tl170499170540_
                                       (##cdr _tl170497170533_)))
                                  (let ((_sys-type170543_ _hd170498170538_))
                                    (if (##null? _tl170499170540_)
                                        (_K170493170521_
                                         _sys-type170543_
                                         _sys-vendor170536_
                                         _sys-cpu170529_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self170485_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
