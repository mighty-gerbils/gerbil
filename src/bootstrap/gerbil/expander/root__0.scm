(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708203246)
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
      (lambda (_self171379_ _bind?171380_)
        (if (##fx< '2 (##structure-length _self171379_))
            (begin
              (##unchecked-structure-set!
               _self171379_
               'root
               '1
               (##structure-type _self171379_)
               '#f)
              (##unchecked-structure-set!
               _self171379_
               (make-hash-table-eq)
               '2
               (##structure-type _self171379_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self171379_
                   '2
                   (##vector-length _self171379_)))
        (if _bind?171380_
            (begin
              (let ((__method175497
                     (method-ref _self171379_ 'bind-core-syntax-expanders!)))
                (if __method175497
                    (__method175497 _self171379_)
                    (error '"Missing method"
                           _self171379_
                           'bind-core-syntax-expanders!)))
              (let ((__method175498
                     (method-ref _self171379_ 'bind-core-macro-expanders!)))
                (if __method175498
                    (__method175498 _self171379_)
                    (error '"Missing method"
                           _self171379_
                           'bind-core-macro-expanders!)))
              (let ((__method175499
                     (method-ref _self171379_ 'bind-core-features!)))
                (if __method175499
                    (__method175499 _self171379_)
                    (error '"Missing method"
                           _self171379_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self171385_)
        (let ((_bind?171387_ '#t))
          (gx#root-context:::init!__% _self171385_ _bind?171387_))))
    (define gx#root-context:::init!
      (lambda _g175502_
        (let ((_g175501_ (##length _g175502_)))
          (cond ((##fx= _g175501_ 1)
                 (apply (lambda (_self171385_)
                          (gx#root-context:::init!__0 _self171385_))
                        _g175502_))
                ((##fx= _g175501_ 2)
                 (apply (lambda (_self171389_ _bind?171390_)
                          (gx#root-context:::init!__%
                           _self171389_
                           _bind?171390_))
                        _g175502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g175502_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t175458)
        (let ((__bind-core-syntax-expanders!175459
               (make-promise
                (lambda ()
                  (let ((__tmp175462
                         (direct-method-ref
                          __t175458
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp175462
                        __tmp175462
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!175460
               (make-promise
                (lambda ()
                  (let ((__tmp175463
                         (direct-method-ref
                          __t175458
                          '#f
                          'bind-core-features!)))
                    (if __tmp175463
                        __tmp175463
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!175461
               (make-promise
                (lambda ()
                  (let ((__tmp175464
                         (direct-method-ref
                          __t175458
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp175464
                        __tmp175464
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda171377171382_
                 (lambda (_self171379_ _bind?171380_)
                   (if (##fx< '2 (##structure-length _self171379_))
                       (begin
                         (##unchecked-structure-set!
                          _self171379_
                          'root
                          '1
                          (##structure-type _self171379_)
                          '#f)
                         (##unchecked-structure-set!
                          _self171379_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self171379_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self171379_
                              '2
                              (##vector-length _self171379_)))
                   (if _bind?171380_
                       (begin
                         ((force __bind-core-syntax-expanders!175459)
                          _self171379_)
                         ((force __bind-core-macro-expanders!175461)
                          _self171379_)
                         ((force __bind-core-features!175460) _self171379_))
                       '#!void))))
            (lambda _g175504_
              (let ((_g175503_ (##length _g175504_)))
                (cond ((##fx= _g175503_ 1)
                       (apply (lambda (_self171385_)
                                (let ((_bind?171387_ '#t))
                                  (_opt-lambda171377171382_
                                   _self171385_
                                   _bind?171387_)))
                              _g175504_))
                      ((##fx= _g175503_ 2)
                       (apply (lambda (_self171389_ _bind?171390_)
                                (_opt-lambda171377171382_
                                 _self171389_
                                 _bind?171390_))
                              _g175504_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g175504_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self171235_ _super171236_)
        (let ((_super171244_
               (let ((_$e171238_ _super171236_))
                 (if _$e171238_
                     _$e171238_
                     (let ((_$e171241_ (gx#core-context-root__0)))
                       (if _$e171241_
                           _$e171241_
                           (let ((__obj175500
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj175500)
                             __obj175500)))))))
          (if (##fx< '5 (##structure-length _self171235_))
              (begin
                (##unchecked-structure-set!
                 _self171235_
                 'top
                 '1
                 (##structure-type _self171235_)
                 '#f)
                (##unchecked-structure-set!
                 _self171235_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self171235_)
                 '#f)
                (##unchecked-structure-set!
                 _self171235_
                 _super171244_
                 '3
                 (##structure-type _self171235_)
                 '#f)
                (##unchecked-structure-set!
                 _self171235_
                 '#f
                 '4
                 (##structure-type _self171235_)
                 '#f)
                (##unchecked-structure-set!
                 _self171235_
                 '#f
                 '5
                 (##structure-type _self171235_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self171235_
                     '5
                     (##vector-length _self171235_))))))
    (define gx#top-context:::init!__0
      (lambda (_self171249_)
        (let ((_super171251_ '#f))
          (gx#top-context:::init!__% _self171249_ _super171251_))))
    (define gx#top-context:::init!
      (lambda _g175506_
        (let ((_g175505_ (##length _g175506_)))
          (cond ((##fx= _g175505_ 1)
                 (apply (lambda (_self171249_)
                          (gx#top-context:::init!__0 _self171249_))
                        _g175506_))
                ((##fx= _g175505_ 2)
                 (apply (lambda (_self171253_ _super171254_)
                          (gx#top-context:::init!__%
                           _self171253_
                           _super171254_))
                        _g175506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g175506_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self170966_ _bindings170967_)
        (for-each
         (lambda (_bind170969_)
           (let* ((_bind170970170977_ _bind170969_)
                  (_E170972170981_
                   (lambda ()
                     (error '"No clause matching" _bind170970170977_)))
                  (_K170973171090_
                   (lambda (_rest170984_ _id170985_)
                     (gx#core-context-put!
                      _self170966_
                      _id170985_
                      (##structure
                       gx#syntax-binding::t
                       _id170985_
                       _id170985_
                       '#f
                       (let* ((_rest170986170997_ _rest170984_)
                              (_E170988171001_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest170986170997_)))
                              (_K170989171066_
                               (lambda (_compiler171004_
                                        _expander171005_
                                        _key171006_)
                                 ((let* ((_key171007171020_ _key171006_)
                                         (_E171013171024_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key171007171020_))))
                                    (let ((_K171018171060_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K171017171053_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K171016171045_
                                           (lambda () gx#make-definition-form))
                                          (_K171015171037_
                                           (lambda () gx#make-special-form))
                                          (_K171014171029_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match171012171032_
                                              (lambda ()
                                                (if (##eq? _key171007171020_
                                                           'expr:)
                                                    (_K171014171029_)
                                                    (_E171013171024_))))
                                             (_try-match171011171040_
                                              (lambda ()
                                                (if (##eq? _key171007171020_
                                                           'special:)
                                                    (_K171015171037_)
                                                    (_try-match171012171032_))))
                                             (_try-match171010171048_
                                              (lambda ()
                                                (if (##eq? _key171007171020_
                                                           'define:)
                                                    (_K171016171045_)
                                                    (_try-match171011171040_))))
                                             (_try-match171009171056_
                                              (lambda ()
                                                (if (##eq? _key171007171020_
                                                           'module:)
                                                    (_K171017171053_)
                                                    (_try-match171010171048_)))))
                                        (if (##eq? _key171007171020_ 'top:)
                                            (_K171018171060_)
                                            (_try-match171009171056_)))))
                                  _expander171005_
                                  _id170985_
                                  (let ((_$e171063_ _compiler171004_))
                                    (if _$e171063_
                                        _$e171063_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest170986170997_)
                             (let ((_hd170990171069_
                                    (##car _rest170986170997_))
                                   (_tl170991171071_
                                    (##cdr _rest170986170997_)))
                               (let ((_key171074_ _hd170990171069_))
                                 (if (##pair? _tl170991171071_)
                                     (let ((_hd170992171076_
                                            (##car _tl170991171071_))
                                           (_tl170993171078_
                                            (##cdr _tl170991171071_)))
                                       (let ((_expander171081_
                                              _hd170992171076_))
                                         (if (##pair? _tl170993171078_)
                                             (let ((_hd170994171083_
                                                    (##car _tl170993171078_))
                                                   (_tl170995171085_
                                                    (##cdr _tl170993171078_)))
                                               (let ((_compiler171088_
                                                      _hd170994171083_))
                                                 (if (##null? _tl170995171085_)
                                                     (_K170989171066_
                                                      _compiler171088_
                                                      _expander171081_
                                                      _key171074_)
                                                     (_E170988171001_))))
                                             (_E170988171001_))))
                                     (_E170988171001_))))
                             (_E170988171001_))))))))
             (if (##pair? _bind170970170977_)
                 (let ((_hd170974171093_ (##car _bind170970170977_))
                       (_tl170975171095_ (##cdr _bind170970170977_)))
                   (let* ((_id171098_ _hd170974171093_)
                          (_rest171100_ _tl170975171095_))
                     (_K170973171090_ _rest171100_ _id171098_)))
                 (_E170972170981_))))
         _bindings170967_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self171105_)
        (let ((_bindings171107_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self171105_
           _bindings171107_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g175508_
        (let ((_g175507_ (##length _g175508_)))
          (cond ((##fx= _g175507_ 1)
                 (apply (lambda (_self171105_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self171105_))
                        _g175508_))
                ((##fx= _g175507_ 2)
                 (apply (lambda (_self171109_ _bindings171110_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self171109_
                           _bindings171110_))
                        _g175508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g175508_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self170738_ _bindings170739_)
        (for-each
         (lambda (_bind170741_)
           (let* ((_bind170742170749_ _bind170741_)
                  (_E170744170753_
                   (lambda ()
                     (error '"No clause matching" _bind170742170749_)))
                  (_K170745170821_
                   (lambda (_rest170756_ _id170757_)
                     (gx#core-context-put!
                      _self170738_
                      _id170757_
                      (##structure
                       gx#syntax-binding::t
                       _id170757_
                       _id170757_
                       '#f
                       (let* ((_rest170758170773_ _rest170756_)
                              (_E170762170777_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest170758170773_))))
                         (let ((_K170767170806_
                                (lambda (_core-id170804_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id170804_)))
                               (_K170764170791_
                                (lambda (_proc170789_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc170789_)))
                               (_K170763170782_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id170757_))))
                           (let ((_try-match170761170785_
                                  (lambda ()
                                    (if (##null? _rest170758170773_)
                                        (_K170763170782_)
                                        (_E170762170777_)))))
                             (if (##pair? _rest170758170773_)
                                 (let ((_tl170769170811_
                                        (##cdr _rest170758170773_))
                                       (_hd170768170809_
                                        (##car _rest170758170773_)))
                                   (if (##eq? _hd170768170809_ '=>)
                                       (if (##pair? _tl170769170811_)
                                           (let ((_tl170771170816_
                                                  (##cdr _tl170769170811_))
                                                 (_hd170770170814_
                                                  (##car _tl170769170811_)))
                                             (if (##null? _tl170771170816_)
                                                 (let ((_core-id170819_
                                                        _hd170770170814_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id170819_))
                                                 (_E170762170777_)))
                                           (if (##null? _tl170769170811_)
                                               (let ((_proc170799_
                                                      _hd170768170809_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc170799_))
                                               (_E170762170777_)))
                                       (if (##null? _tl170769170811_)
                                           (let ((_proc170799_
                                                  _hd170768170809_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc170799_))
                                           (_E170762170777_))))
                                 (_try-match170761170785_))))))))))
             (if (##pair? _bind170742170749_)
                 (let ((_hd170746170824_ (##car _bind170742170749_))
                       (_tl170747170826_ (##cdr _bind170742170749_)))
                   (let* ((_id170829_ _hd170746170824_)
                          (_rest170831_ _tl170747170826_))
                     (_K170745170821_ _rest170831_ _id170829_)))
                 (_E170744170753_))))
         _bindings170739_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self170836_)
        (let ((_bindings170838_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self170836_
           _bindings170838_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g175510_
        (let ((_g175509_ (##length _g175510_)))
          (cond ((##fx= _g175509_ 1)
                 (apply (lambda (_self170836_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self170836_))
                        _g175510_))
                ((##fx= _g175509_ 2)
                 (apply (lambda (_self170840_ _bindings170841_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self170840_
                           _bindings170841_))
                        _g175510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g175510_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self170482_)
        (letrec ((_linux-variant?170484_
                  (lambda (_sys-type170583_)
                    (let* ((_g170584170592_
                            (string-split
                             (symbol->string _sys-type170583_)
                             '#\-))
                           (_else170586170600_ (lambda () '#f))
                           (_K170588170605_
                            (lambda (_rest170603_)
                              (not (null? _rest170603_)))))
                      (if (##pair? _g170584170592_)
                          (let ((_hd170589170608_ (##car _g170584170592_))
                                (_tl170590170610_ (##cdr _g170584170592_)))
                            (if (equal? _hd170589170608_ '"linux")
                                (let ((_rest170613_ _tl170590170610_))
                                  (_K170588170605_ _rest170613_))
                                (_else170586170600_)))
                          (_else170586170600_)))))
                 (_bsd-variant170485_
                  (lambda (_sys-type170542_)
                    (let ((_sys-type-str170544_
                           (symbol->string _sys-type170542_)))
                      (let _lp170546_ ((_rest170548_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest170549170557_ _rest170548_)
                               (_else170551170565_ (lambda () '#f))
                               (_K170553170571_
                                (lambda (_rest170568_ _sys170569_)
                                  (if (string-prefix?
                                       _sys170569_
                                       _sys-type-str170544_)
                                      _sys170569_
                                      (_lp170546_ _rest170568_)))))
                          (if (##pair? _rest170549170557_)
                              (let ((_hd170554170574_
                                     (##car _rest170549170557_))
                                    (_tl170555170576_
                                     (##cdr _rest170549170557_)))
                                (let* ((_sys170579_ _hd170554170574_)
                                       (_rest170581_ _tl170555170576_))
                                  (_K170553170571_ _rest170581_ _sys170579_)))
                              (_else170551170565_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self170482_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self170482_)
          (let* ((_g170486170498_ (system-type))
                 (_else170488170506_ (lambda () '#!void))
                 (_K170490170518_
                  (lambda (_sys-type170509_ _sys-vendor170510_ _sys-cpu170511_)
                    (gx#core-bind-feature!__%
                     _sys-cpu170511_
                     '#f
                     '0
                     _self170482_)
                    (gx#core-bind-feature!__%
                     _sys-type170509_
                     '#f
                     '0
                     _self170482_)
                    (if (_linux-variant?170484_ _sys-type170509_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self170482_)
                        (let ((_$e170513_
                               (_bsd-variant170485_ _sys-type170509_)))
                          (if _$e170513_
                              ((lambda (_sys-prefix170516_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self170482_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix170516_)
                                  '#f
                                  '0
                                  _self170482_))
                               _$e170513_)
                              '#!void))))))
            (if (##pair? _g170486170498_)
                (let ((_hd170491170521_ (##car _g170486170498_))
                      (_tl170492170523_ (##cdr _g170486170498_)))
                  (let ((_sys-cpu170526_ _hd170491170521_))
                    (if (##pair? _tl170492170523_)
                        (let ((_hd170493170528_ (##car _tl170492170523_))
                              (_tl170494170530_ (##cdr _tl170492170523_)))
                          (let ((_sys-vendor170533_ _hd170493170528_))
                            (if (##pair? _tl170494170530_)
                                (let ((_hd170495170535_
                                       (##car _tl170494170530_))
                                      (_tl170496170537_
                                       (##cdr _tl170494170530_)))
                                  (let ((_sys-type170540_ _hd170495170535_))
                                    (if (##null? _tl170496170537_)
                                        (_K170490170518_
                                         _sys-type170540_
                                         _sys-vendor170533_
                                         _sys-cpu170526_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self170482_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
