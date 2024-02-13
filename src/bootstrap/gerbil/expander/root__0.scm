(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707846530)
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
      (lambda (_self175631_ _bind?175632_)
        (if (##fx< '2 (##structure-length _self175631_))
            (begin
              (##unchecked-structure-set!
               _self175631_
               'root
               '1
               (##structure-type _self175631_)
               '#f)
              (##unchecked-structure-set!
               _self175631_
               (make-table 'test: eq?)
               '2
               (##structure-type _self175631_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self175631_
                   '2
                   (##vector-length _self175631_)))
        (if _bind?175632_
            (begin
              (let ((__method180250
                     (method-ref _self175631_ 'bind-core-syntax-expanders!)))
                (if __method180250
                    (__method180250 _self175631_)
                    (error '"Missing method"
                           _self175631_
                           'bind-core-syntax-expanders!)))
              (let ((__method180251
                     (method-ref _self175631_ 'bind-core-macro-expanders!)))
                (if __method180251
                    (__method180251 _self175631_)
                    (error '"Missing method"
                           _self175631_
                           'bind-core-macro-expanders!)))
              (let ((__method180252
                     (method-ref _self175631_ 'bind-core-features!)))
                (if __method180252
                    (__method180252 _self175631_)
                    (error '"Missing method"
                           _self175631_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self175637_)
        (let ((_bind?175639_ '#t))
          (gx#root-context:::init!__% _self175637_ _bind?175639_))))
    (define gx#root-context:::init!
      (lambda _g180255_
        (let ((_g180254_ (##length _g180255_)))
          (cond ((##fx= _g180254_ 1)
                 (apply (lambda (_self175637_)
                          (gx#root-context:::init!__0 _self175637_))
                        _g180255_))
                ((##fx= _g180254_ 2)
                 (apply (lambda (_self175641_ _bind?175642_)
                          (gx#root-context:::init!__%
                           _self175641_
                           _bind?175642_))
                        _g180255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g180255_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t180211)
        (let ((__bind-core-macro-expanders!180212
               (make-promise
                (lambda ()
                  (let ((__tmp180215
                         (direct-method-ref
                          __t180211
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp180215
                        __tmp180215
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!180213
               (make-promise
                (lambda ()
                  (let ((__tmp180216
                         (direct-method-ref
                          __t180211
                          '#f
                          'bind-core-features!)))
                    (if __tmp180216
                        __tmp180216
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!180214
               (make-promise
                (lambda ()
                  (let ((__tmp180217
                         (direct-method-ref
                          __t180211
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp180217
                        __tmp180217
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda175629175634_
                 (lambda (_self175631_ _bind?175632_)
                   (if (##fx< '2 (##structure-length _self175631_))
                       (begin
                         (##unchecked-structure-set!
                          _self175631_
                          'root
                          '1
                          (##structure-type _self175631_)
                          '#f)
                         (##unchecked-structure-set!
                          _self175631_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self175631_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self175631_
                              '2
                              (##vector-length _self175631_)))
                   (if _bind?175632_
                       (begin
                         ((force __bind-core-syntax-expanders!180214)
                          _self175631_)
                         ((force __bind-core-macro-expanders!180212)
                          _self175631_)
                         ((force __bind-core-features!180213) _self175631_))
                       '#!void))))
            (lambda _g180257_
              (let ((_g180256_ (##length _g180257_)))
                (cond ((##fx= _g180256_ 1)
                       (apply (lambda (_self175637_)
                                (let ((_bind?175639_ '#t))
                                  (_opt-lambda175629175634_
                                   _self175637_
                                   _bind?175639_)))
                              _g180257_))
                      ((##fx= _g180256_ 2)
                       (apply (lambda (_self175641_ _bind?175642_)
                                (_opt-lambda175629175634_
                                 _self175641_
                                 _bind?175642_))
                              _g180257_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g180257_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self175487_ _super175488_)
        (let ((_super175496_
               (let ((_$e175490_ _super175488_))
                 (if _$e175490_
                     _$e175490_
                     (let ((_$e175493_ (gx#core-context-root__0)))
                       (if _$e175493_
                           _$e175493_
                           (let ((__obj180253
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj180253)
                             __obj180253)))))))
          (if (##fx< '5 (##structure-length _self175487_))
              (begin
                (##unchecked-structure-set!
                 _self175487_
                 'top
                 '1
                 (##structure-type _self175487_)
                 '#f)
                (##unchecked-structure-set!
                 _self175487_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self175487_)
                 '#f)
                (##unchecked-structure-set!
                 _self175487_
                 _super175496_
                 '3
                 (##structure-type _self175487_)
                 '#f)
                (##unchecked-structure-set!
                 _self175487_
                 '#f
                 '4
                 (##structure-type _self175487_)
                 '#f)
                (##unchecked-structure-set!
                 _self175487_
                 '#f
                 '5
                 (##structure-type _self175487_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self175487_
                     '5
                     (##vector-length _self175487_))))))
    (define gx#top-context:::init!__0
      (lambda (_self175501_)
        (let ((_super175503_ '#f))
          (gx#top-context:::init!__% _self175501_ _super175503_))))
    (define gx#top-context:::init!
      (lambda _g180259_
        (let ((_g180258_ (##length _g180259_)))
          (cond ((##fx= _g180258_ 1)
                 (apply (lambda (_self175501_)
                          (gx#top-context:::init!__0 _self175501_))
                        _g180259_))
                ((##fx= _g180258_ 2)
                 (apply (lambda (_self175505_ _super175506_)
                          (gx#top-context:::init!__%
                           _self175505_
                           _super175506_))
                        _g180259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g180259_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self175218_ _bindings175219_)
        (for-each
         (lambda (_bind175221_)
           (let* ((_bind175222175229_ _bind175221_)
                  (_E175224175233_
                   (lambda ()
                     (error '"No clause matching" _bind175222175229_)))
                  (_K175225175342_
                   (lambda (_rest175236_ _id175237_)
                     (gx#core-context-put!
                      _self175218_
                      _id175237_
                      (##structure
                       gx#syntax-binding::t
                       _id175237_
                       _id175237_
                       '#f
                       (let* ((_rest175238175249_ _rest175236_)
                              (_E175240175253_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest175238175249_)))
                              (_K175241175318_
                               (lambda (_compiler175256_
                                        _expander175257_
                                        _key175258_)
                                 ((let* ((_key175259175272_ _key175258_)
                                         (_E175265175276_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key175259175272_))))
                                    (let ((_K175270175312_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K175269175305_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K175268175297_
                                           (lambda () gx#make-definition-form))
                                          (_K175267175289_
                                           (lambda () gx#make-special-form))
                                          (_K175266175281_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match175264175284_
                                              (lambda ()
                                                (if (##eq? _key175259175272_
                                                           'expr:)
                                                    (_K175266175281_)
                                                    (_E175265175276_))))
                                             (_try-match175263175292_
                                              (lambda ()
                                                (if (##eq? _key175259175272_
                                                           'special:)
                                                    (_K175267175289_)
                                                    (_try-match175264175284_))))
                                             (_try-match175262175300_
                                              (lambda ()
                                                (if (##eq? _key175259175272_
                                                           'define:)
                                                    (_K175268175297_)
                                                    (_try-match175263175292_))))
                                             (_try-match175261175308_
                                              (lambda ()
                                                (if (##eq? _key175259175272_
                                                           'module:)
                                                    (_K175269175305_)
                                                    (_try-match175262175300_)))))
                                        (if (##eq? _key175259175272_ 'top:)
                                            (_K175270175312_)
                                            (_try-match175261175308_)))))
                                  _expander175257_
                                  _id175237_
                                  (let ((_$e175315_ _compiler175256_))
                                    (if _$e175315_
                                        _$e175315_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest175238175249_)
                             (let ((_hd175242175321_
                                    (##car _rest175238175249_))
                                   (_tl175243175323_
                                    (##cdr _rest175238175249_)))
                               (let ((_key175326_ _hd175242175321_))
                                 (if (##pair? _tl175243175323_)
                                     (let ((_hd175244175328_
                                            (##car _tl175243175323_))
                                           (_tl175245175330_
                                            (##cdr _tl175243175323_)))
                                       (let ((_expander175333_
                                              _hd175244175328_))
                                         (if (##pair? _tl175245175330_)
                                             (let ((_hd175246175335_
                                                    (##car _tl175245175330_))
                                                   (_tl175247175337_
                                                    (##cdr _tl175245175330_)))
                                               (let ((_compiler175340_
                                                      _hd175246175335_))
                                                 (if (##null? _tl175247175337_)
                                                     (_K175241175318_
                                                      _compiler175340_
                                                      _expander175333_
                                                      _key175326_)
                                                     (_E175240175253_))))
                                             (_E175240175253_))))
                                     (_E175240175253_))))
                             (_E175240175253_))))))))
             (if (##pair? _bind175222175229_)
                 (let ((_hd175226175345_ (##car _bind175222175229_))
                       (_tl175227175347_ (##cdr _bind175222175229_)))
                   (let* ((_id175350_ _hd175226175345_)
                          (_rest175352_ _tl175227175347_))
                     (_K175225175342_ _rest175352_ _id175350_)))
                 (_E175224175233_))))
         _bindings175219_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self175357_)
        (let ((_bindings175359_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self175357_
           _bindings175359_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g180261_
        (let ((_g180260_ (##length _g180261_)))
          (cond ((##fx= _g180260_ 1)
                 (apply (lambda (_self175357_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self175357_))
                        _g180261_))
                ((##fx= _g180260_ 2)
                 (apply (lambda (_self175361_ _bindings175362_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self175361_
                           _bindings175362_))
                        _g180261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g180261_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self174990_ _bindings174991_)
        (for-each
         (lambda (_bind174993_)
           (let* ((_bind174994175001_ _bind174993_)
                  (_E174996175005_
                   (lambda ()
                     (error '"No clause matching" _bind174994175001_)))
                  (_K174997175073_
                   (lambda (_rest175008_ _id175009_)
                     (gx#core-context-put!
                      _self174990_
                      _id175009_
                      (##structure
                       gx#syntax-binding::t
                       _id175009_
                       _id175009_
                       '#f
                       (let* ((_rest175010175025_ _rest175008_)
                              (_E175014175029_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest175010175025_))))
                         (let ((_K175019175058_
                                (lambda (_core-id175056_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id175056_)))
                               (_K175016175043_
                                (lambda (_proc175041_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc175041_)))
                               (_K175015175034_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id175009_))))
                           (let ((_try-match175013175037_
                                  (lambda ()
                                    (if (##null? _rest175010175025_)
                                        (_K175015175034_)
                                        (_E175014175029_)))))
                             (if (##pair? _rest175010175025_)
                                 (let ((_tl175021175063_
                                        (##cdr _rest175010175025_))
                                       (_hd175020175061_
                                        (##car _rest175010175025_)))
                                   (if (##eq? _hd175020175061_ '=>)
                                       (if (##pair? _tl175021175063_)
                                           (let ((_tl175023175068_
                                                  (##cdr _tl175021175063_))
                                                 (_hd175022175066_
                                                  (##car _tl175021175063_)))
                                             (if (##null? _tl175023175068_)
                                                 (let ((_core-id175071_
                                                        _hd175022175066_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id175071_))
                                                 (_E175014175029_)))
                                           (if (##null? _tl175021175063_)
                                               (let ((_proc175051_
                                                      _hd175020175061_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc175051_))
                                               (_E175014175029_)))
                                       (if (##null? _tl175021175063_)
                                           (let ((_proc175051_
                                                  _hd175020175061_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc175051_))
                                           (_E175014175029_))))
                                 (_try-match175013175037_))))))))))
             (if (##pair? _bind174994175001_)
                 (let ((_hd174998175076_ (##car _bind174994175001_))
                       (_tl174999175078_ (##cdr _bind174994175001_)))
                   (let* ((_id175081_ _hd174998175076_)
                          (_rest175083_ _tl174999175078_))
                     (_K174997175073_ _rest175083_ _id175081_)))
                 (_E174996175005_))))
         _bindings174991_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self175088_)
        (let ((_bindings175090_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self175088_
           _bindings175090_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g180263_
        (let ((_g180262_ (##length _g180263_)))
          (cond ((##fx= _g180262_ 1)
                 (apply (lambda (_self175088_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self175088_))
                        _g180263_))
                ((##fx= _g180262_ 2)
                 (apply (lambda (_self175092_ _bindings175093_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self175092_
                           _bindings175093_))
                        _g180263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g180263_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self174734_)
        (letrec ((_linux-variant?174736_
                  (lambda (_sys-type174835_)
                    (let* ((_g174836174844_
                            (string-split
                             (symbol->string _sys-type174835_)
                             '#\-))
                           (_else174838174852_ (lambda () '#f))
                           (_K174840174857_
                            (lambda (_rest174855_)
                              (not (null? _rest174855_)))))
                      (if (##pair? _g174836174844_)
                          (let ((_hd174841174860_ (##car _g174836174844_))
                                (_tl174842174862_ (##cdr _g174836174844_)))
                            (if (equal? _hd174841174860_ '"linux")
                                (let ((_rest174865_ _tl174842174862_))
                                  (_K174840174857_ _rest174865_))
                                (_else174838174852_)))
                          (_else174838174852_)))))
                 (_bsd-variant174737_
                  (lambda (_sys-type174794_)
                    (let ((_sys-type-str174796_
                           (symbol->string _sys-type174794_)))
                      (let _lp174798_ ((_rest174800_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest174801174809_ _rest174800_)
                               (_else174803174817_ (lambda () '#f))
                               (_K174805174823_
                                (lambda (_rest174820_ _sys174821_)
                                  (if (string-prefix?
                                       _sys174821_
                                       _sys-type-str174796_)
                                      _sys174821_
                                      (_lp174798_ _rest174820_)))))
                          (if (##pair? _rest174801174809_)
                              (let ((_hd174806174826_
                                     (##car _rest174801174809_))
                                    (_tl174807174828_
                                     (##cdr _rest174801174809_)))
                                (let* ((_sys174831_ _hd174806174826_)
                                       (_rest174833_ _tl174807174828_))
                                  (_K174805174823_ _rest174833_ _sys174831_)))
                              (_else174803174817_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self174734_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self174734_)
          (let* ((_g174738174750_ (system-type))
                 (_else174740174758_ (lambda () '#!void))
                 (_K174742174770_
                  (lambda (_sys-type174761_ _sys-vendor174762_ _sys-cpu174763_)
                    (gx#core-bind-feature!__%
                     _sys-cpu174763_
                     '#f
                     '0
                     _self174734_)
                    (gx#core-bind-feature!__%
                     _sys-type174761_
                     '#f
                     '0
                     _self174734_)
                    (if (_linux-variant?174736_ _sys-type174761_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self174734_)
                        (let ((_$e174765_
                               (_bsd-variant174737_ _sys-type174761_)))
                          (if _$e174765_
                              ((lambda (_sys-prefix174768_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self174734_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix174768_)
                                  '#f
                                  '0
                                  _self174734_))
                               _$e174765_)
                              '#!void))))))
            (if (##pair? _g174738174750_)
                (let ((_hd174743174773_ (##car _g174738174750_))
                      (_tl174744174775_ (##cdr _g174738174750_)))
                  (let ((_sys-cpu174778_ _hd174743174773_))
                    (if (##pair? _tl174744174775_)
                        (let ((_hd174745174780_ (##car _tl174744174775_))
                              (_tl174746174782_ (##cdr _tl174744174775_)))
                          (let ((_sys-vendor174785_ _hd174745174780_))
                            (if (##pair? _tl174746174782_)
                                (let ((_hd174747174787_
                                       (##car _tl174746174782_))
                                      (_tl174748174789_
                                       (##cdr _tl174746174782_)))
                                  (let ((_sys-type174792_ _hd174747174787_))
                                    (if (##null? _tl174748174789_)
                                        (_K174742174770_
                                         _sys-type174792_
                                         _sys-vendor174785_
                                         _sys-cpu174778_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self174734_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
