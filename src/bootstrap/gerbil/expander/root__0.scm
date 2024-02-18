(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708271951)
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
      (lambda (_self184708_ _bind?184709_)
        (if (##fx< '2 (##structure-length _self184708_))
            (begin
              (##unchecked-structure-set!
               _self184708_
               'root
               '1
               (##structure-type _self184708_)
               '#f)
              (##unchecked-structure-set!
               _self184708_
               (make-hash-table-eq)
               '2
               (##structure-type _self184708_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self184708_
                   '2
                   (##vector-length _self184708_)))
        (if _bind?184709_
            (begin
              (let ((__method188826
                     (method-ref _self184708_ 'bind-core-syntax-expanders!)))
                (if __method188826
                    (__method188826 _self184708_)
                    (error '"Missing method"
                           _self184708_
                           'bind-core-syntax-expanders!)))
              (let ((__method188827
                     (method-ref _self184708_ 'bind-core-macro-expanders!)))
                (if __method188827
                    (__method188827 _self184708_)
                    (error '"Missing method"
                           _self184708_
                           'bind-core-macro-expanders!)))
              (let ((__method188828
                     (method-ref _self184708_ 'bind-core-features!)))
                (if __method188828
                    (__method188828 _self184708_)
                    (error '"Missing method"
                           _self184708_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self184714_)
        (let ((_bind?184716_ '#t))
          (gx#root-context:::init!__% _self184714_ _bind?184716_))))
    (define gx#root-context:::init!
      (lambda _g188831_
        (let ((_g188830_ (##length _g188831_)))
          (cond ((##fx= _g188830_ 1)
                 (apply (lambda (_self184714_)
                          (gx#root-context:::init!__0 _self184714_))
                        _g188831_))
                ((##fx= _g188830_ 2)
                 (apply (lambda (_self184718_ _bind?184719_)
                          (gx#root-context:::init!__%
                           _self184718_
                           _bind?184719_))
                        _g188831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g188831_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t188787)
        (let ((__bind-core-macro-expanders!188788
               (make-promise
                (lambda ()
                  (let ((__tmp188791
                         (direct-method-ref
                          __t188787
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp188791
                        __tmp188791
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!188789
               (make-promise
                (lambda ()
                  (let ((__tmp188792
                         (direct-method-ref
                          __t188787
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp188792
                        __tmp188792
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!188790
               (make-promise
                (lambda ()
                  (let ((__tmp188793
                         (direct-method-ref
                          __t188787
                          '#f
                          'bind-core-features!)))
                    (if __tmp188793
                        __tmp188793
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda184706184711_
                 (lambda (_self184708_ _bind?184709_)
                   (if (##fx< '2 (##structure-length _self184708_))
                       (begin
                         (##unchecked-structure-set!
                          _self184708_
                          'root
                          '1
                          (##structure-type _self184708_)
                          '#f)
                         (##unchecked-structure-set!
                          _self184708_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self184708_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self184708_
                              '2
                              (##vector-length _self184708_)))
                   (if _bind?184709_
                       (begin
                         ((force __bind-core-syntax-expanders!188789)
                          _self184708_)
                         ((force __bind-core-macro-expanders!188788)
                          _self184708_)
                         ((force __bind-core-features!188790) _self184708_))
                       '#!void))))
            (lambda _g188833_
              (let ((_g188832_ (##length _g188833_)))
                (cond ((##fx= _g188832_ 1)
                       (apply (lambda (_self184714_)
                                (let ((_bind?184716_ '#t))
                                  (_opt-lambda184706184711_
                                   _self184714_
                                   _bind?184716_)))
                              _g188833_))
                      ((##fx= _g188832_ 2)
                       (apply (lambda (_self184718_ _bind?184719_)
                                (_opt-lambda184706184711_
                                 _self184718_
                                 _bind?184719_))
                              _g188833_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g188833_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self184564_ _super184565_)
        (let ((_super184573_
               (let ((_$e184567_ _super184565_))
                 (if _$e184567_
                     _$e184567_
                     (let ((_$e184570_ (gx#core-context-root__0)))
                       (if _$e184570_
                           _$e184570_
                           (let ((__obj188829
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj188829)
                             __obj188829)))))))
          (if (##fx< '5 (##structure-length _self184564_))
              (begin
                (##unchecked-structure-set!
                 _self184564_
                 'top
                 '1
                 (##structure-type _self184564_)
                 '#f)
                (##unchecked-structure-set!
                 _self184564_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self184564_)
                 '#f)
                (##unchecked-structure-set!
                 _self184564_
                 _super184573_
                 '3
                 (##structure-type _self184564_)
                 '#f)
                (##unchecked-structure-set!
                 _self184564_
                 '#f
                 '4
                 (##structure-type _self184564_)
                 '#f)
                (##unchecked-structure-set!
                 _self184564_
                 '#f
                 '5
                 (##structure-type _self184564_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self184564_
                     '5
                     (##vector-length _self184564_))))))
    (define gx#top-context:::init!__0
      (lambda (_self184578_)
        (let ((_super184580_ '#f))
          (gx#top-context:::init!__% _self184578_ _super184580_))))
    (define gx#top-context:::init!
      (lambda _g188835_
        (let ((_g188834_ (##length _g188835_)))
          (cond ((##fx= _g188834_ 1)
                 (apply (lambda (_self184578_)
                          (gx#top-context:::init!__0 _self184578_))
                        _g188835_))
                ((##fx= _g188834_ 2)
                 (apply (lambda (_self184582_ _super184583_)
                          (gx#top-context:::init!__%
                           _self184582_
                           _super184583_))
                        _g188835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g188835_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self184295_ _bindings184296_)
        (for-each
         (lambda (_bind184298_)
           (let* ((_bind184299184306_ _bind184298_)
                  (_E184301184310_
                   (lambda ()
                     (error '"No clause matching" _bind184299184306_)))
                  (_K184302184419_
                   (lambda (_rest184313_ _id184314_)
                     (gx#core-context-put!
                      _self184295_
                      _id184314_
                      (##structure
                       gx#syntax-binding::t
                       _id184314_
                       _id184314_
                       '#f
                       (let* ((_rest184315184326_ _rest184313_)
                              (_E184317184330_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest184315184326_)))
                              (_K184318184395_
                               (lambda (_compiler184333_
                                        _expander184334_
                                        _key184335_)
                                 ((let* ((_key184336184349_ _key184335_)
                                         (_E184342184353_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key184336184349_))))
                                    (let ((_K184347184389_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K184346184382_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K184345184374_
                                           (lambda () gx#make-definition-form))
                                          (_K184344184366_
                                           (lambda () gx#make-special-form))
                                          (_K184343184358_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match184341184361_
                                              (lambda ()
                                                (if (##eq? _key184336184349_
                                                           'expr:)
                                                    (_K184343184358_)
                                                    (_E184342184353_))))
                                             (_try-match184340184369_
                                              (lambda ()
                                                (if (##eq? _key184336184349_
                                                           'special:)
                                                    (_K184344184366_)
                                                    (_try-match184341184361_))))
                                             (_try-match184339184377_
                                              (lambda ()
                                                (if (##eq? _key184336184349_
                                                           'define:)
                                                    (_K184345184374_)
                                                    (_try-match184340184369_))))
                                             (_try-match184338184385_
                                              (lambda ()
                                                (if (##eq? _key184336184349_
                                                           'module:)
                                                    (_K184346184382_)
                                                    (_try-match184339184377_)))))
                                        (if (##eq? _key184336184349_ 'top:)
                                            (_K184347184389_)
                                            (_try-match184338184385_)))))
                                  _expander184334_
                                  _id184314_
                                  (let ((_$e184392_ _compiler184333_))
                                    (if _$e184392_
                                        _$e184392_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest184315184326_)
                             (let ((_hd184319184398_
                                    (##car _rest184315184326_))
                                   (_tl184320184400_
                                    (##cdr _rest184315184326_)))
                               (let ((_key184403_ _hd184319184398_))
                                 (if (##pair? _tl184320184400_)
                                     (let ((_hd184321184405_
                                            (##car _tl184320184400_))
                                           (_tl184322184407_
                                            (##cdr _tl184320184400_)))
                                       (let ((_expander184410_
                                              _hd184321184405_))
                                         (if (##pair? _tl184322184407_)
                                             (let ((_hd184323184412_
                                                    (##car _tl184322184407_))
                                                   (_tl184324184414_
                                                    (##cdr _tl184322184407_)))
                                               (let ((_compiler184417_
                                                      _hd184323184412_))
                                                 (if (##null? _tl184324184414_)
                                                     (_K184318184395_
                                                      _compiler184417_
                                                      _expander184410_
                                                      _key184403_)
                                                     (_E184317184330_))))
                                             (_E184317184330_))))
                                     (_E184317184330_))))
                             (_E184317184330_))))))))
             (if (##pair? _bind184299184306_)
                 (let ((_hd184303184422_ (##car _bind184299184306_))
                       (_tl184304184424_ (##cdr _bind184299184306_)))
                   (let* ((_id184427_ _hd184303184422_)
                          (_rest184429_ _tl184304184424_))
                     (_K184302184419_ _rest184429_ _id184427_)))
                 (_E184301184310_))))
         _bindings184296_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self184434_)
        (let ((_bindings184436_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self184434_
           _bindings184436_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g188837_
        (let ((_g188836_ (##length _g188837_)))
          (cond ((##fx= _g188836_ 1)
                 (apply (lambda (_self184434_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self184434_))
                        _g188837_))
                ((##fx= _g188836_ 2)
                 (apply (lambda (_self184438_ _bindings184439_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self184438_
                           _bindings184439_))
                        _g188837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g188837_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self184067_ _bindings184068_)
        (for-each
         (lambda (_bind184070_)
           (let* ((_bind184071184078_ _bind184070_)
                  (_E184073184082_
                   (lambda ()
                     (error '"No clause matching" _bind184071184078_)))
                  (_K184074184150_
                   (lambda (_rest184085_ _id184086_)
                     (gx#core-context-put!
                      _self184067_
                      _id184086_
                      (##structure
                       gx#syntax-binding::t
                       _id184086_
                       _id184086_
                       '#f
                       (let* ((_rest184087184102_ _rest184085_)
                              (_E184091184106_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest184087184102_))))
                         (let ((_K184096184135_
                                (lambda (_core-id184133_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id184133_)))
                               (_K184093184120_
                                (lambda (_proc184118_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc184118_)))
                               (_K184092184111_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id184086_))))
                           (let ((_try-match184090184114_
                                  (lambda ()
                                    (if (##null? _rest184087184102_)
                                        (_K184092184111_)
                                        (_E184091184106_)))))
                             (if (##pair? _rest184087184102_)
                                 (let ((_tl184098184140_
                                        (##cdr _rest184087184102_))
                                       (_hd184097184138_
                                        (##car _rest184087184102_)))
                                   (if (##eq? _hd184097184138_ '=>)
                                       (if (##pair? _tl184098184140_)
                                           (let ((_tl184100184145_
                                                  (##cdr _tl184098184140_))
                                                 (_hd184099184143_
                                                  (##car _tl184098184140_)))
                                             (if (##null? _tl184100184145_)
                                                 (let ((_core-id184148_
                                                        _hd184099184143_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id184148_))
                                                 (_E184091184106_)))
                                           (if (##null? _tl184098184140_)
                                               (let ((_proc184128_
                                                      _hd184097184138_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc184128_))
                                               (_E184091184106_)))
                                       (if (##null? _tl184098184140_)
                                           (let ((_proc184128_
                                                  _hd184097184138_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc184128_))
                                           (_E184091184106_))))
                                 (_try-match184090184114_))))))))))
             (if (##pair? _bind184071184078_)
                 (let ((_hd184075184153_ (##car _bind184071184078_))
                       (_tl184076184155_ (##cdr _bind184071184078_)))
                   (let* ((_id184158_ _hd184075184153_)
                          (_rest184160_ _tl184076184155_))
                     (_K184074184150_ _rest184160_ _id184158_)))
                 (_E184073184082_))))
         _bindings184068_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self184165_)
        (let ((_bindings184167_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self184165_
           _bindings184167_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g188839_
        (let ((_g188838_ (##length _g188839_)))
          (cond ((##fx= _g188838_ 1)
                 (apply (lambda (_self184165_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self184165_))
                        _g188839_))
                ((##fx= _g188838_ 2)
                 (apply (lambda (_self184169_ _bindings184170_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self184169_
                           _bindings184170_))
                        _g188839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g188839_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self183811_)
        (letrec ((_linux-variant?183813_
                  (lambda (_sys-type183912_)
                    (let* ((_g183913183921_
                            (string-split
                             (symbol->string _sys-type183912_)
                             '#\-))
                           (_else183915183929_ (lambda () '#f))
                           (_K183917183934_
                            (lambda (_rest183932_)
                              (not (null? _rest183932_)))))
                      (if (##pair? _g183913183921_)
                          (let ((_hd183918183937_ (##car _g183913183921_))
                                (_tl183919183939_ (##cdr _g183913183921_)))
                            (if (equal? _hd183918183937_ '"linux")
                                (let ((_rest183942_ _tl183919183939_))
                                  (_K183917183934_ _rest183942_))
                                (_else183915183929_)))
                          (_else183915183929_)))))
                 (_bsd-variant183814_
                  (lambda (_sys-type183871_)
                    (let ((_sys-type-str183873_
                           (symbol->string _sys-type183871_)))
                      (let _lp183875_ ((_rest183877_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest183878183886_ _rest183877_)
                               (_else183880183894_ (lambda () '#f))
                               (_K183882183900_
                                (lambda (_rest183897_ _sys183898_)
                                  (if (string-prefix?
                                       _sys183898_
                                       _sys-type-str183873_)
                                      _sys183898_
                                      (_lp183875_ _rest183897_)))))
                          (if (##pair? _rest183878183886_)
                              (let ((_hd183883183903_
                                     (##car _rest183878183886_))
                                    (_tl183884183905_
                                     (##cdr _rest183878183886_)))
                                (let* ((_sys183908_ _hd183883183903_)
                                       (_rest183910_ _tl183884183905_))
                                  (_K183882183900_ _rest183910_ _sys183908_)))
                              (_else183880183894_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self183811_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self183811_)
          (let* ((_g183815183827_ (system-type))
                 (_else183817183835_ (lambda () '#!void))
                 (_K183819183847_
                  (lambda (_sys-type183838_ _sys-vendor183839_ _sys-cpu183840_)
                    (gx#core-bind-feature!__%
                     _sys-cpu183840_
                     '#f
                     '0
                     _self183811_)
                    (gx#core-bind-feature!__%
                     _sys-type183838_
                     '#f
                     '0
                     _self183811_)
                    (if (_linux-variant?183813_ _sys-type183838_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self183811_)
                        (let ((_$e183842_
                               (_bsd-variant183814_ _sys-type183838_)))
                          (if _$e183842_
                              ((lambda (_sys-prefix183845_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self183811_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix183845_)
                                  '#f
                                  '0
                                  _self183811_))
                               _$e183842_)
                              '#!void))))))
            (if (##pair? _g183815183827_)
                (let ((_hd183820183850_ (##car _g183815183827_))
                      (_tl183821183852_ (##cdr _g183815183827_)))
                  (let ((_sys-cpu183855_ _hd183820183850_))
                    (if (##pair? _tl183821183852_)
                        (let ((_hd183822183857_ (##car _tl183821183852_))
                              (_tl183823183859_ (##cdr _tl183821183852_)))
                          (let ((_sys-vendor183862_ _hd183822183857_))
                            (if (##pair? _tl183823183859_)
                                (let ((_hd183824183864_
                                       (##car _tl183823183859_))
                                      (_tl183825183866_
                                       (##cdr _tl183823183859_)))
                                  (let ((_sys-type183869_ _hd183824183864_))
                                    (if (##null? _tl183825183866_)
                                        (_K183819183847_
                                         _sys-type183869_
                                         _sys-vendor183862_
                                         _sys-cpu183855_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self183811_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
