(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707841980)
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
      (lambda (_self175627_ _bind?175628_)
        (if (##fx< '2 (##structure-length _self175627_))
            (begin
              (##unchecked-structure-set!
               _self175627_
               'root
               '1
               (##structure-type _self175627_)
               '#f)
              (##unchecked-structure-set!
               _self175627_
               (make-table 'test: eq?)
               '2
               (##structure-type _self175627_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self175627_
                   '2
                   (##vector-length _self175627_)))
        (if _bind?175628_
            (begin
              (let ((__method180246
                     (method-ref _self175627_ 'bind-core-syntax-expanders!)))
                (if __method180246
                    (__method180246 _self175627_)
                    (error '"Missing method"
                           _self175627_
                           'bind-core-syntax-expanders!)))
              (let ((__method180247
                     (method-ref _self175627_ 'bind-core-macro-expanders!)))
                (if __method180247
                    (__method180247 _self175627_)
                    (error '"Missing method"
                           _self175627_
                           'bind-core-macro-expanders!)))
              (let ((__method180248
                     (method-ref _self175627_ 'bind-core-features!)))
                (if __method180248
                    (__method180248 _self175627_)
                    (error '"Missing method"
                           _self175627_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self175633_)
        (let ((_bind?175635_ '#t))
          (gx#root-context:::init!__% _self175633_ _bind?175635_))))
    (define gx#root-context:::init!
      (lambda _g180251_
        (let ((_g180250_ (##length _g180251_)))
          (cond ((##fx= _g180250_ 1)
                 (apply (lambda (_self175633_)
                          (gx#root-context:::init!__0 _self175633_))
                        _g180251_))
                ((##fx= _g180250_ 2)
                 (apply (lambda (_self175637_ _bind?175638_)
                          (gx#root-context:::init!__%
                           _self175637_
                           _bind?175638_))
                        _g180251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g180251_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t180207)
        (let ((__bind-core-macro-expanders!180208
               (make-promise
                (lambda ()
                  (let ((__tmp180211
                         (direct-method-ref
                          __t180207
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp180211
                        __tmp180211
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!180209
               (make-promise
                (lambda ()
                  (let ((__tmp180212
                         (direct-method-ref
                          __t180207
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp180212
                        __tmp180212
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!180210
               (make-promise
                (lambda ()
                  (let ((__tmp180213
                         (direct-method-ref
                          __t180207
                          '#f
                          'bind-core-features!)))
                    (if __tmp180213
                        __tmp180213
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda175625175630_
                 (lambda (_self175627_ _bind?175628_)
                   (if (##fx< '2 (##structure-length _self175627_))
                       (begin
                         (##unchecked-structure-set!
                          _self175627_
                          'root
                          '1
                          (##structure-type _self175627_)
                          '#f)
                         (##unchecked-structure-set!
                          _self175627_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self175627_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self175627_
                              '2
                              (##vector-length _self175627_)))
                   (if _bind?175628_
                       (begin
                         ((force __bind-core-syntax-expanders!180209)
                          _self175627_)
                         ((force __bind-core-macro-expanders!180208)
                          _self175627_)
                         ((force __bind-core-features!180210) _self175627_))
                       '#!void))))
            (lambda _g180253_
              (let ((_g180252_ (##length _g180253_)))
                (cond ((##fx= _g180252_ 1)
                       (apply (lambda (_self175633_)
                                (let ((_bind?175635_ '#t))
                                  (_opt-lambda175625175630_
                                   _self175633_
                                   _bind?175635_)))
                              _g180253_))
                      ((##fx= _g180252_ 2)
                       (apply (lambda (_self175637_ _bind?175638_)
                                (_opt-lambda175625175630_
                                 _self175637_
                                 _bind?175638_))
                              _g180253_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g180253_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self175483_ _super175484_)
        (let ((_super175492_
               (let ((_$e175486_ _super175484_))
                 (if _$e175486_
                     _$e175486_
                     (let ((_$e175489_ (gx#core-context-root__0)))
                       (if _$e175489_
                           _$e175489_
                           (let ((__obj180249
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj180249)
                             __obj180249)))))))
          (if (##fx< '5 (##structure-length _self175483_))
              (begin
                (##unchecked-structure-set!
                 _self175483_
                 'top
                 '1
                 (##structure-type _self175483_)
                 '#f)
                (##unchecked-structure-set!
                 _self175483_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self175483_)
                 '#f)
                (##unchecked-structure-set!
                 _self175483_
                 _super175492_
                 '3
                 (##structure-type _self175483_)
                 '#f)
                (##unchecked-structure-set!
                 _self175483_
                 '#f
                 '4
                 (##structure-type _self175483_)
                 '#f)
                (##unchecked-structure-set!
                 _self175483_
                 '#f
                 '5
                 (##structure-type _self175483_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self175483_
                     '5
                     (##vector-length _self175483_))))))
    (define gx#top-context:::init!__0
      (lambda (_self175497_)
        (let ((_super175499_ '#f))
          (gx#top-context:::init!__% _self175497_ _super175499_))))
    (define gx#top-context:::init!
      (lambda _g180255_
        (let ((_g180254_ (##length _g180255_)))
          (cond ((##fx= _g180254_ 1)
                 (apply (lambda (_self175497_)
                          (gx#top-context:::init!__0 _self175497_))
                        _g180255_))
                ((##fx= _g180254_ 2)
                 (apply (lambda (_self175501_ _super175502_)
                          (gx#top-context:::init!__%
                           _self175501_
                           _super175502_))
                        _g180255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g180255_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self175214_ _bindings175215_)
        (for-each
         (lambda (_bind175217_)
           (let* ((_bind175218175225_ _bind175217_)
                  (_E175220175229_
                   (lambda ()
                     (error '"No clause matching" _bind175218175225_)))
                  (_K175221175338_
                   (lambda (_rest175232_ _id175233_)
                     (gx#core-context-put!
                      _self175214_
                      _id175233_
                      (##structure
                       gx#syntax-binding::t
                       _id175233_
                       _id175233_
                       '#f
                       (let* ((_rest175234175245_ _rest175232_)
                              (_E175236175249_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest175234175245_)))
                              (_K175237175314_
                               (lambda (_compiler175252_
                                        _expander175253_
                                        _key175254_)
                                 ((let* ((_key175255175268_ _key175254_)
                                         (_E175261175272_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key175255175268_))))
                                    (let ((_K175266175308_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K175265175301_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K175264175293_
                                           (lambda () gx#make-definition-form))
                                          (_K175263175285_
                                           (lambda () gx#make-special-form))
                                          (_K175262175277_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match175260175280_
                                              (lambda ()
                                                (if (##eq? _key175255175268_
                                                           'expr:)
                                                    (_K175262175277_)
                                                    (_E175261175272_))))
                                             (_try-match175259175288_
                                              (lambda ()
                                                (if (##eq? _key175255175268_
                                                           'special:)
                                                    (_K175263175285_)
                                                    (_try-match175260175280_))))
                                             (_try-match175258175296_
                                              (lambda ()
                                                (if (##eq? _key175255175268_
                                                           'define:)
                                                    (_K175264175293_)
                                                    (_try-match175259175288_))))
                                             (_try-match175257175304_
                                              (lambda ()
                                                (if (##eq? _key175255175268_
                                                           'module:)
                                                    (_K175265175301_)
                                                    (_try-match175258175296_)))))
                                        (if (##eq? _key175255175268_ 'top:)
                                            (_K175266175308_)
                                            (_try-match175257175304_)))))
                                  _expander175253_
                                  _id175233_
                                  (let ((_$e175311_ _compiler175252_))
                                    (if _$e175311_
                                        _$e175311_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest175234175245_)
                             (let ((_hd175238175317_
                                    (##car _rest175234175245_))
                                   (_tl175239175319_
                                    (##cdr _rest175234175245_)))
                               (let ((_key175322_ _hd175238175317_))
                                 (if (##pair? _tl175239175319_)
                                     (let ((_hd175240175324_
                                            (##car _tl175239175319_))
                                           (_tl175241175326_
                                            (##cdr _tl175239175319_)))
                                       (let ((_expander175329_
                                              _hd175240175324_))
                                         (if (##pair? _tl175241175326_)
                                             (let ((_hd175242175331_
                                                    (##car _tl175241175326_))
                                                   (_tl175243175333_
                                                    (##cdr _tl175241175326_)))
                                               (let ((_compiler175336_
                                                      _hd175242175331_))
                                                 (if (##null? _tl175243175333_)
                                                     (_K175237175314_
                                                      _compiler175336_
                                                      _expander175329_
                                                      _key175322_)
                                                     (_E175236175249_))))
                                             (_E175236175249_))))
                                     (_E175236175249_))))
                             (_E175236175249_))))))))
             (if (##pair? _bind175218175225_)
                 (let ((_hd175222175341_ (##car _bind175218175225_))
                       (_tl175223175343_ (##cdr _bind175218175225_)))
                   (let* ((_id175346_ _hd175222175341_)
                          (_rest175348_ _tl175223175343_))
                     (_K175221175338_ _rest175348_ _id175346_)))
                 (_E175220175229_))))
         _bindings175215_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self175353_)
        (let ((_bindings175355_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self175353_
           _bindings175355_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g180257_
        (let ((_g180256_ (##length _g180257_)))
          (cond ((##fx= _g180256_ 1)
                 (apply (lambda (_self175353_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self175353_))
                        _g180257_))
                ((##fx= _g180256_ 2)
                 (apply (lambda (_self175357_ _bindings175358_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self175357_
                           _bindings175358_))
                        _g180257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g180257_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self174986_ _bindings174987_)
        (for-each
         (lambda (_bind174989_)
           (let* ((_bind174990174997_ _bind174989_)
                  (_E174992175001_
                   (lambda ()
                     (error '"No clause matching" _bind174990174997_)))
                  (_K174993175069_
                   (lambda (_rest175004_ _id175005_)
                     (gx#core-context-put!
                      _self174986_
                      _id175005_
                      (##structure
                       gx#syntax-binding::t
                       _id175005_
                       _id175005_
                       '#f
                       (let* ((_rest175006175021_ _rest175004_)
                              (_E175010175025_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest175006175021_))))
                         (let ((_K175015175054_
                                (lambda (_core-id175052_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id175052_)))
                               (_K175012175039_
                                (lambda (_proc175037_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc175037_)))
                               (_K175011175030_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id175005_))))
                           (let ((_try-match175009175033_
                                  (lambda ()
                                    (if (##null? _rest175006175021_)
                                        (_K175011175030_)
                                        (_E175010175025_)))))
                             (if (##pair? _rest175006175021_)
                                 (let ((_tl175017175059_
                                        (##cdr _rest175006175021_))
                                       (_hd175016175057_
                                        (##car _rest175006175021_)))
                                   (if (##eq? _hd175016175057_ '=>)
                                       (if (##pair? _tl175017175059_)
                                           (let ((_tl175019175064_
                                                  (##cdr _tl175017175059_))
                                                 (_hd175018175062_
                                                  (##car _tl175017175059_)))
                                             (if (##null? _tl175019175064_)
                                                 (let ((_core-id175067_
                                                        _hd175018175062_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id175067_))
                                                 (_E175010175025_)))
                                           (if (##null? _tl175017175059_)
                                               (let ((_proc175047_
                                                      _hd175016175057_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc175047_))
                                               (_E175010175025_)))
                                       (if (##null? _tl175017175059_)
                                           (let ((_proc175047_
                                                  _hd175016175057_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc175047_))
                                           (_E175010175025_))))
                                 (_try-match175009175033_))))))))))
             (if (##pair? _bind174990174997_)
                 (let ((_hd174994175072_ (##car _bind174990174997_))
                       (_tl174995175074_ (##cdr _bind174990174997_)))
                   (let* ((_id175077_ _hd174994175072_)
                          (_rest175079_ _tl174995175074_))
                     (_K174993175069_ _rest175079_ _id175077_)))
                 (_E174992175001_))))
         _bindings174987_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self175084_)
        (let ((_bindings175086_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self175084_
           _bindings175086_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g180259_
        (let ((_g180258_ (##length _g180259_)))
          (cond ((##fx= _g180258_ 1)
                 (apply (lambda (_self175084_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self175084_))
                        _g180259_))
                ((##fx= _g180258_ 2)
                 (apply (lambda (_self175088_ _bindings175089_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self175088_
                           _bindings175089_))
                        _g180259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g180259_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self174730_)
        (letrec ((_linux-variant?174732_
                  (lambda (_sys-type174831_)
                    (let* ((_g174832174840_
                            (string-split
                             (symbol->string _sys-type174831_)
                             '#\-))
                           (_else174834174848_ (lambda () '#f))
                           (_K174836174853_
                            (lambda (_rest174851_)
                              (not (null? _rest174851_)))))
                      (if (##pair? _g174832174840_)
                          (let ((_hd174837174856_ (##car _g174832174840_))
                                (_tl174838174858_ (##cdr _g174832174840_)))
                            (if (equal? _hd174837174856_ '"linux")
                                (let ((_rest174861_ _tl174838174858_))
                                  (_K174836174853_ _rest174861_))
                                (_else174834174848_)))
                          (_else174834174848_)))))
                 (_bsd-variant174733_
                  (lambda (_sys-type174790_)
                    (let ((_sys-type-str174792_
                           (symbol->string _sys-type174790_)))
                      (let _lp174794_ ((_rest174796_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest174797174805_ _rest174796_)
                               (_else174799174813_ (lambda () '#f))
                               (_K174801174819_
                                (lambda (_rest174816_ _sys174817_)
                                  (if (string-prefix?
                                       _sys174817_
                                       _sys-type-str174792_)
                                      _sys174817_
                                      (_lp174794_ _rest174816_)))))
                          (if (##pair? _rest174797174805_)
                              (let ((_hd174802174822_
                                     (##car _rest174797174805_))
                                    (_tl174803174824_
                                     (##cdr _rest174797174805_)))
                                (let* ((_sys174827_ _hd174802174822_)
                                       (_rest174829_ _tl174803174824_))
                                  (_K174801174819_ _rest174829_ _sys174827_)))
                              (_else174799174813_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self174730_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self174730_)
          (let* ((_g174734174746_ (system-type))
                 (_else174736174754_ (lambda () '#!void))
                 (_K174738174766_
                  (lambda (_sys-type174757_ _sys-vendor174758_ _sys-cpu174759_)
                    (gx#core-bind-feature!__%
                     _sys-cpu174759_
                     '#f
                     '0
                     _self174730_)
                    (gx#core-bind-feature!__%
                     _sys-type174757_
                     '#f
                     '0
                     _self174730_)
                    (if (_linux-variant?174732_ _sys-type174757_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self174730_)
                        (let ((_$e174761_
                               (_bsd-variant174733_ _sys-type174757_)))
                          (if _$e174761_
                              ((lambda (_sys-prefix174764_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self174730_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix174764_)
                                  '#f
                                  '0
                                  _self174730_))
                               _$e174761_)
                              '#!void))))))
            (if (##pair? _g174734174746_)
                (let ((_hd174739174769_ (##car _g174734174746_))
                      (_tl174740174771_ (##cdr _g174734174746_)))
                  (let ((_sys-cpu174774_ _hd174739174769_))
                    (if (##pair? _tl174740174771_)
                        (let ((_hd174741174776_ (##car _tl174740174771_))
                              (_tl174742174778_ (##cdr _tl174740174771_)))
                          (let ((_sys-vendor174781_ _hd174741174776_))
                            (if (##pair? _tl174742174778_)
                                (let ((_hd174743174783_
                                       (##car _tl174742174778_))
                                      (_tl174744174785_
                                       (##cdr _tl174742174778_)))
                                  (let ((_sys-type174788_ _hd174743174783_))
                                    (if (##null? _tl174744174785_)
                                        (_K174738174766_
                                         _sys-type174788_
                                         _sys-vendor174781_
                                         _sys-cpu174774_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self174730_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
