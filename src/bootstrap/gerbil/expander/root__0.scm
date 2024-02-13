(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707840756)
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
      (lambda (_self175733_ _bind?175734_)
        (if (##fx< '2 (##structure-length _self175733_))
            (begin
              (##unchecked-structure-set!
               _self175733_
               'root
               '1
               (##structure-type _self175733_)
               '#f)
              (##unchecked-structure-set!
               _self175733_
               (make-table 'test: eq?)
               '2
               (##structure-type _self175733_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self175733_
                   '2
                   (##vector-length _self175733_)))
        (if _bind?175734_
            (begin
              (let ((__method180352
                     (method-ref _self175733_ 'bind-core-syntax-expanders!)))
                (if __method180352
                    (__method180352 _self175733_)
                    (error '"Missing method"
                           _self175733_
                           'bind-core-syntax-expanders!)))
              (let ((__method180353
                     (method-ref _self175733_ 'bind-core-macro-expanders!)))
                (if __method180353
                    (__method180353 _self175733_)
                    (error '"Missing method"
                           _self175733_
                           'bind-core-macro-expanders!)))
              (let ((__method180354
                     (method-ref _self175733_ 'bind-core-features!)))
                (if __method180354
                    (__method180354 _self175733_)
                    (error '"Missing method"
                           _self175733_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self175739_)
        (let ((_bind?175741_ '#t))
          (gx#root-context:::init!__% _self175739_ _bind?175741_))))
    (define gx#root-context:::init!
      (lambda _g180357_
        (let ((_g180356_ (##length _g180357_)))
          (cond ((##fx= _g180356_ 1)
                 (apply (lambda (_self175739_)
                          (gx#root-context:::init!__0 _self175739_))
                        _g180357_))
                ((##fx= _g180356_ 2)
                 (apply (lambda (_self175743_ _bind?175744_)
                          (gx#root-context:::init!__%
                           _self175743_
                           _bind?175744_))
                        _g180357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g180357_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t180313)
        (let ((__bind-core-syntax-expanders!180314
               (make-promise
                (lambda ()
                  (let ((__tmp180317
                         (direct-method-ref
                          __t180313
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp180317
                        __tmp180317
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!180315
               (make-promise
                (lambda ()
                  (let ((__tmp180318
                         (direct-method-ref
                          __t180313
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp180318
                        __tmp180318
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!180316
               (make-promise
                (lambda ()
                  (let ((__tmp180319
                         (direct-method-ref
                          __t180313
                          '#f
                          'bind-core-features!)))
                    (if __tmp180319
                        __tmp180319
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda175731175736_
                 (lambda (_self175733_ _bind?175734_)
                   (if (##fx< '2 (##structure-length _self175733_))
                       (begin
                         (##unchecked-structure-set!
                          _self175733_
                          'root
                          '1
                          (##structure-type _self175733_)
                          '#f)
                         (##unchecked-structure-set!
                          _self175733_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self175733_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self175733_
                              '2
                              (##vector-length _self175733_)))
                   (if _bind?175734_
                       (begin
                         ((force __bind-core-syntax-expanders!180314)
                          _self175733_)
                         ((force __bind-core-macro-expanders!180315)
                          _self175733_)
                         ((force __bind-core-features!180316) _self175733_))
                       '#!void))))
            (lambda _g180359_
              (let ((_g180358_ (##length _g180359_)))
                (cond ((##fx= _g180358_ 1)
                       (apply (lambda (_self175739_)
                                (let ((_bind?175741_ '#t))
                                  (_opt-lambda175731175736_
                                   _self175739_
                                   _bind?175741_)))
                              _g180359_))
                      ((##fx= _g180358_ 2)
                       (apply (lambda (_self175743_ _bind?175744_)
                                (_opt-lambda175731175736_
                                 _self175743_
                                 _bind?175744_))
                              _g180359_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g180359_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self175589_ _super175590_)
        (let ((_super175598_
               (let ((_$e175592_ _super175590_))
                 (if _$e175592_
                     _$e175592_
                     (let ((_$e175595_ (gx#core-context-root__0)))
                       (if _$e175595_
                           _$e175595_
                           (let ((__obj180355
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj180355)
                             __obj180355)))))))
          (if (##fx< '5 (##structure-length _self175589_))
              (begin
                (##unchecked-structure-set!
                 _self175589_
                 'top
                 '1
                 (##structure-type _self175589_)
                 '#f)
                (##unchecked-structure-set!
                 _self175589_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self175589_)
                 '#f)
                (##unchecked-structure-set!
                 _self175589_
                 _super175598_
                 '3
                 (##structure-type _self175589_)
                 '#f)
                (##unchecked-structure-set!
                 _self175589_
                 '#f
                 '4
                 (##structure-type _self175589_)
                 '#f)
                (##unchecked-structure-set!
                 _self175589_
                 '#f
                 '5
                 (##structure-type _self175589_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self175589_
                     '5
                     (##vector-length _self175589_))))))
    (define gx#top-context:::init!__0
      (lambda (_self175603_)
        (let ((_super175605_ '#f))
          (gx#top-context:::init!__% _self175603_ _super175605_))))
    (define gx#top-context:::init!
      (lambda _g180361_
        (let ((_g180360_ (##length _g180361_)))
          (cond ((##fx= _g180360_ 1)
                 (apply (lambda (_self175603_)
                          (gx#top-context:::init!__0 _self175603_))
                        _g180361_))
                ((##fx= _g180360_ 2)
                 (apply (lambda (_self175607_ _super175608_)
                          (gx#top-context:::init!__%
                           _self175607_
                           _super175608_))
                        _g180361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g180361_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self175320_ _bindings175321_)
        (for-each
         (lambda (_bind175323_)
           (let* ((_bind175324175331_ _bind175323_)
                  (_E175326175335_
                   (lambda ()
                     (error '"No clause matching" _bind175324175331_)))
                  (_K175327175444_
                   (lambda (_rest175338_ _id175339_)
                     (gx#core-context-put!
                      _self175320_
                      _id175339_
                      (##structure
                       gx#syntax-binding::t
                       _id175339_
                       _id175339_
                       '#f
                       (let* ((_rest175340175351_ _rest175338_)
                              (_E175342175355_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest175340175351_)))
                              (_K175343175420_
                               (lambda (_compiler175358_
                                        _expander175359_
                                        _key175360_)
                                 ((let* ((_key175361175374_ _key175360_)
                                         (_E175367175378_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key175361175374_))))
                                    (let ((_K175372175414_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K175371175407_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K175370175399_
                                           (lambda () gx#make-definition-form))
                                          (_K175369175391_
                                           (lambda () gx#make-special-form))
                                          (_K175368175383_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match175366175386_
                                              (lambda ()
                                                (if (##eq? _key175361175374_
                                                           'expr:)
                                                    (_K175368175383_)
                                                    (_E175367175378_))))
                                             (_try-match175365175394_
                                              (lambda ()
                                                (if (##eq? _key175361175374_
                                                           'special:)
                                                    (_K175369175391_)
                                                    (_try-match175366175386_))))
                                             (_try-match175364175402_
                                              (lambda ()
                                                (if (##eq? _key175361175374_
                                                           'define:)
                                                    (_K175370175399_)
                                                    (_try-match175365175394_))))
                                             (_try-match175363175410_
                                              (lambda ()
                                                (if (##eq? _key175361175374_
                                                           'module:)
                                                    (_K175371175407_)
                                                    (_try-match175364175402_)))))
                                        (if (##eq? _key175361175374_ 'top:)
                                            (_K175372175414_)
                                            (_try-match175363175410_)))))
                                  _expander175359_
                                  _id175339_
                                  (let ((_$e175417_ _compiler175358_))
                                    (if _$e175417_
                                        _$e175417_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest175340175351_)
                             (let ((_hd175344175423_
                                    (##car _rest175340175351_))
                                   (_tl175345175425_
                                    (##cdr _rest175340175351_)))
                               (let ((_key175428_ _hd175344175423_))
                                 (if (##pair? _tl175345175425_)
                                     (let ((_hd175346175430_
                                            (##car _tl175345175425_))
                                           (_tl175347175432_
                                            (##cdr _tl175345175425_)))
                                       (let ((_expander175435_
                                              _hd175346175430_))
                                         (if (##pair? _tl175347175432_)
                                             (let ((_hd175348175437_
                                                    (##car _tl175347175432_))
                                                   (_tl175349175439_
                                                    (##cdr _tl175347175432_)))
                                               (let ((_compiler175442_
                                                      _hd175348175437_))
                                                 (if (##null? _tl175349175439_)
                                                     (_K175343175420_
                                                      _compiler175442_
                                                      _expander175435_
                                                      _key175428_)
                                                     (_E175342175355_))))
                                             (_E175342175355_))))
                                     (_E175342175355_))))
                             (_E175342175355_))))))))
             (if (##pair? _bind175324175331_)
                 (let ((_hd175328175447_ (##car _bind175324175331_))
                       (_tl175329175449_ (##cdr _bind175324175331_)))
                   (let* ((_id175452_ _hd175328175447_)
                          (_rest175454_ _tl175329175449_))
                     (_K175327175444_ _rest175454_ _id175452_)))
                 (_E175326175335_))))
         _bindings175321_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self175459_)
        (let ((_bindings175461_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self175459_
           _bindings175461_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g180363_
        (let ((_g180362_ (##length _g180363_)))
          (cond ((##fx= _g180362_ 1)
                 (apply (lambda (_self175459_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self175459_))
                        _g180363_))
                ((##fx= _g180362_ 2)
                 (apply (lambda (_self175463_ _bindings175464_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self175463_
                           _bindings175464_))
                        _g180363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g180363_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self175092_ _bindings175093_)
        (for-each
         (lambda (_bind175095_)
           (let* ((_bind175096175103_ _bind175095_)
                  (_E175098175107_
                   (lambda ()
                     (error '"No clause matching" _bind175096175103_)))
                  (_K175099175175_
                   (lambda (_rest175110_ _id175111_)
                     (gx#core-context-put!
                      _self175092_
                      _id175111_
                      (##structure
                       gx#syntax-binding::t
                       _id175111_
                       _id175111_
                       '#f
                       (let* ((_rest175112175127_ _rest175110_)
                              (_E175116175131_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest175112175127_))))
                         (let ((_K175121175160_
                                (lambda (_core-id175158_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id175158_)))
                               (_K175118175145_
                                (lambda (_proc175143_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc175143_)))
                               (_K175117175136_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id175111_))))
                           (let ((_try-match175115175139_
                                  (lambda ()
                                    (if (##null? _rest175112175127_)
                                        (_K175117175136_)
                                        (_E175116175131_)))))
                             (if (##pair? _rest175112175127_)
                                 (let ((_tl175123175165_
                                        (##cdr _rest175112175127_))
                                       (_hd175122175163_
                                        (##car _rest175112175127_)))
                                   (if (##eq? _hd175122175163_ '=>)
                                       (if (##pair? _tl175123175165_)
                                           (let ((_tl175125175170_
                                                  (##cdr _tl175123175165_))
                                                 (_hd175124175168_
                                                  (##car _tl175123175165_)))
                                             (if (##null? _tl175125175170_)
                                                 (let ((_core-id175173_
                                                        _hd175124175168_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id175173_))
                                                 (_E175116175131_)))
                                           (if (##null? _tl175123175165_)
                                               (let ((_proc175153_
                                                      _hd175122175163_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc175153_))
                                               (_E175116175131_)))
                                       (if (##null? _tl175123175165_)
                                           (let ((_proc175153_
                                                  _hd175122175163_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc175153_))
                                           (_E175116175131_))))
                                 (_try-match175115175139_))))))))))
             (if (##pair? _bind175096175103_)
                 (let ((_hd175100175178_ (##car _bind175096175103_))
                       (_tl175101175180_ (##cdr _bind175096175103_)))
                   (let* ((_id175183_ _hd175100175178_)
                          (_rest175185_ _tl175101175180_))
                     (_K175099175175_ _rest175185_ _id175183_)))
                 (_E175098175107_))))
         _bindings175093_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self175190_)
        (let ((_bindings175192_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self175190_
           _bindings175192_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g180365_
        (let ((_g180364_ (##length _g180365_)))
          (cond ((##fx= _g180364_ 1)
                 (apply (lambda (_self175190_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self175190_))
                        _g180365_))
                ((##fx= _g180364_ 2)
                 (apply (lambda (_self175194_ _bindings175195_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self175194_
                           _bindings175195_))
                        _g180365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g180365_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self174836_)
        (letrec ((_linux-variant?174838_
                  (lambda (_sys-type174937_)
                    (let* ((_g174938174946_
                            (string-split
                             (symbol->string _sys-type174937_)
                             '#\-))
                           (_else174940174954_ (lambda () '#f))
                           (_K174942174959_
                            (lambda (_rest174957_)
                              (not (null? _rest174957_)))))
                      (if (##pair? _g174938174946_)
                          (let ((_hd174943174962_ (##car _g174938174946_))
                                (_tl174944174964_ (##cdr _g174938174946_)))
                            (if (equal? _hd174943174962_ '"linux")
                                (let ((_rest174967_ _tl174944174964_))
                                  (_K174942174959_ _rest174967_))
                                (_else174940174954_)))
                          (_else174940174954_)))))
                 (_bsd-variant174839_
                  (lambda (_sys-type174896_)
                    (let ((_sys-type-str174898_
                           (symbol->string _sys-type174896_)))
                      (let _lp174900_ ((_rest174902_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest174903174911_ _rest174902_)
                               (_else174905174919_ (lambda () '#f))
                               (_K174907174925_
                                (lambda (_rest174922_ _sys174923_)
                                  (if (string-prefix?
                                       _sys174923_
                                       _sys-type-str174898_)
                                      _sys174923_
                                      (_lp174900_ _rest174922_)))))
                          (if (##pair? _rest174903174911_)
                              (let ((_hd174908174928_
                                     (##car _rest174903174911_))
                                    (_tl174909174930_
                                     (##cdr _rest174903174911_)))
                                (let* ((_sys174933_ _hd174908174928_)
                                       (_rest174935_ _tl174909174930_))
                                  (_K174907174925_ _rest174935_ _sys174933_)))
                              (_else174905174919_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self174836_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self174836_)
          (let* ((_g174840174852_ (system-type))
                 (_else174842174860_ (lambda () '#!void))
                 (_K174844174872_
                  (lambda (_sys-type174863_ _sys-vendor174864_ _sys-cpu174865_)
                    (gx#core-bind-feature!__%
                     _sys-cpu174865_
                     '#f
                     '0
                     _self174836_)
                    (gx#core-bind-feature!__%
                     _sys-type174863_
                     '#f
                     '0
                     _self174836_)
                    (if (_linux-variant?174838_ _sys-type174863_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self174836_)
                        (let ((_$e174867_
                               (_bsd-variant174839_ _sys-type174863_)))
                          (if _$e174867_
                              ((lambda (_sys-prefix174870_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self174836_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix174870_)
                                  '#f
                                  '0
                                  _self174836_))
                               _$e174867_)
                              '#!void))))))
            (if (##pair? _g174840174852_)
                (let ((_hd174845174875_ (##car _g174840174852_))
                      (_tl174846174877_ (##cdr _g174840174852_)))
                  (let ((_sys-cpu174880_ _hd174845174875_))
                    (if (##pair? _tl174846174877_)
                        (let ((_hd174847174882_ (##car _tl174846174877_))
                              (_tl174848174884_ (##cdr _tl174846174877_)))
                          (let ((_sys-vendor174887_ _hd174847174882_))
                            (if (##pair? _tl174848174884_)
                                (let ((_hd174849174889_
                                       (##car _tl174848174884_))
                                      (_tl174850174891_
                                       (##cdr _tl174848174884_)))
                                  (let ((_sys-type174894_ _hd174849174889_))
                                    (if (##null? _tl174850174891_)
                                        (_K174844174872_
                                         _sys-type174894_
                                         _sys-vendor174887_
                                         _sys-cpu174880_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self174836_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
