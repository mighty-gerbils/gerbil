(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707573212)
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
      (lambda (_self172391_ _bind?172392_)
        (if (##fx< '2 (##structure-length _self172391_))
            (begin
              (##unchecked-structure-set!
               _self172391_
               'root
               '1
               (##structure-type _self172391_)
               '#f)
              (##unchecked-structure-set!
               _self172391_
               (make-table 'test: eq?)
               '2
               (##structure-type _self172391_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self172391_
                   '2
                   (##vector-length _self172391_)))
        (if _bind?172392_
            (begin
              (let ((__method176910
                     (method-ref _self172391_ 'bind-core-syntax-expanders!)))
                (if __method176910
                    (__method176910 _self172391_)
                    (error '"Missing method"
                           _self172391_
                           'bind-core-syntax-expanders!)))
              (let ((__method176911
                     (method-ref _self172391_ 'bind-core-macro-expanders!)))
                (if __method176911
                    (__method176911 _self172391_)
                    (error '"Missing method"
                           _self172391_
                           'bind-core-macro-expanders!)))
              (let ((__method176912
                     (method-ref _self172391_ 'bind-core-features!)))
                (if __method176912
                    (__method176912 _self172391_)
                    (error '"Missing method"
                           _self172391_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self172397_)
        (let ((_bind?172399_ '#t))
          (gx#root-context:::init!__% _self172397_ _bind?172399_))))
    (define gx#root-context:::init!
      (lambda _g176915_
        (let ((_g176914_ (##length _g176915_)))
          (cond ((##fx= _g176914_ 1)
                 (apply (lambda (_self172397_)
                          (gx#root-context:::init!__0 _self172397_))
                        _g176915_))
                ((##fx= _g176914_ 2)
                 (apply (lambda (_self172401_ _bind?172402_)
                          (gx#root-context:::init!__%
                           _self172401_
                           _bind?172402_))
                        _g176915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g176915_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t176871)
        (let ((__bind-core-features!176872
               (make-promise
                (lambda ()
                  (let ((__tmp176875
                         (direct-method-ref __t176871 'bind-core-features!)))
                    (if __tmp176875
                        __tmp176875
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!176873
               (make-promise
                (lambda ()
                  (let ((__tmp176876
                         (direct-method-ref
                          __t176871
                          'bind-core-syntax-expanders!)))
                    (if __tmp176876
                        __tmp176876
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!176874
               (make-promise
                (lambda ()
                  (let ((__tmp176877
                         (direct-method-ref
                          __t176871
                          'bind-core-macro-expanders!)))
                    (if __tmp176877
                        __tmp176877
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda172389172394_
                 (lambda (_self172391_ _bind?172392_)
                   (if (##fx< '2 (##structure-length _self172391_))
                       (begin
                         (##unchecked-structure-set!
                          _self172391_
                          'root
                          '1
                          (##structure-type _self172391_)
                          '#f)
                         (##unchecked-structure-set!
                          _self172391_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self172391_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self172391_
                              '2
                              (##vector-length _self172391_)))
                   (if _bind?172392_
                       (begin
                         ((force __bind-core-syntax-expanders!176873)
                          _self172391_)
                         ((force __bind-core-macro-expanders!176874)
                          _self172391_)
                         ((force __bind-core-features!176872) _self172391_))
                       '#!void))))
            (lambda _g176917_
              (let ((_g176916_ (##length _g176917_)))
                (cond ((##fx= _g176916_ 1)
                       (apply (lambda (_self172397_)
                                (let ((_bind?172399_ '#t))
                                  (_opt-lambda172389172394_
                                   _self172397_
                                   _bind?172399_)))
                              _g176917_))
                      ((##fx= _g176916_ 2)
                       (apply (lambda (_self172401_ _bind?172402_)
                                (_opt-lambda172389172394_
                                 _self172401_
                                 _bind?172402_))
                              _g176917_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g176917_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self172247_ _super172248_)
        (let ((_super172256_
               (let ((_$e172250_ _super172248_))
                 (if _$e172250_
                     _$e172250_
                     (let ((_$e172253_ (gx#core-context-root__0)))
                       (if _$e172253_
                           _$e172253_
                           (let ((__obj176913
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj176913)
                             __obj176913)))))))
          (if (##fx< '5 (##structure-length _self172247_))
              (begin
                (##unchecked-structure-set!
                 _self172247_
                 'top
                 '1
                 (##structure-type _self172247_)
                 '#f)
                (##unchecked-structure-set!
                 _self172247_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self172247_)
                 '#f)
                (##unchecked-structure-set!
                 _self172247_
                 _super172256_
                 '3
                 (##structure-type _self172247_)
                 '#f)
                (##unchecked-structure-set!
                 _self172247_
                 '#f
                 '4
                 (##structure-type _self172247_)
                 '#f)
                (##unchecked-structure-set!
                 _self172247_
                 '#f
                 '5
                 (##structure-type _self172247_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self172247_
                     '5
                     (##vector-length _self172247_))))))
    (define gx#top-context:::init!__0
      (lambda (_self172261_)
        (let ((_super172263_ '#f))
          (gx#top-context:::init!__% _self172261_ _super172263_))))
    (define gx#top-context:::init!
      (lambda _g176919_
        (let ((_g176918_ (##length _g176919_)))
          (cond ((##fx= _g176918_ 1)
                 (apply (lambda (_self172261_)
                          (gx#top-context:::init!__0 _self172261_))
                        _g176919_))
                ((##fx= _g176918_ 2)
                 (apply (lambda (_self172265_ _super172266_)
                          (gx#top-context:::init!__%
                           _self172265_
                           _super172266_))
                        _g176919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g176919_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self171978_ _bindings171979_)
        (for-each
         (lambda (_bind171981_)
           (let* ((_bind171982171989_ _bind171981_)
                  (_E171984171993_
                   (lambda ()
                     (error '"No clause matching" _bind171982171989_)))
                  (_K171985172102_
                   (lambda (_rest171996_ _id171997_)
                     (gx#core-context-put!
                      _self171978_
                      _id171997_
                      (##structure
                       gx#syntax-binding::t
                       _id171997_
                       _id171997_
                       '#f
                       (let* ((_rest171998172009_ _rest171996_)
                              (_E172000172013_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest171998172009_)))
                              (_K172001172078_
                               (lambda (_compiler172016_
                                        _expander172017_
                                        _key172018_)
                                 ((let* ((_key172019172032_ _key172018_)
                                         (_E172025172036_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key172019172032_))))
                                    (let ((_K172030172072_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K172029172065_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K172028172057_
                                           (lambda () gx#make-definition-form))
                                          (_K172027172049_
                                           (lambda () gx#make-special-form))
                                          (_K172026172041_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match172024172044_
                                              (lambda ()
                                                (if (##eq? _key172019172032_
                                                           'expr:)
                                                    (_K172026172041_)
                                                    (_E172025172036_))))
                                             (_try-match172023172052_
                                              (lambda ()
                                                (if (##eq? _key172019172032_
                                                           'special:)
                                                    (_K172027172049_)
                                                    (_try-match172024172044_))))
                                             (_try-match172022172060_
                                              (lambda ()
                                                (if (##eq? _key172019172032_
                                                           'define:)
                                                    (_K172028172057_)
                                                    (_try-match172023172052_))))
                                             (_try-match172021172068_
                                              (lambda ()
                                                (if (##eq? _key172019172032_
                                                           'module:)
                                                    (_K172029172065_)
                                                    (_try-match172022172060_)))))
                                        (if (##eq? _key172019172032_ 'top:)
                                            (_K172030172072_)
                                            (_try-match172021172068_)))))
                                  _expander172017_
                                  _id171997_
                                  (let ((_$e172075_ _compiler172016_))
                                    (if _$e172075_
                                        _$e172075_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest171998172009_)
                             (let ((_hd172002172081_
                                    (##car _rest171998172009_))
                                   (_tl172003172083_
                                    (##cdr _rest171998172009_)))
                               (let ((_key172086_ _hd172002172081_))
                                 (if (##pair? _tl172003172083_)
                                     (let ((_hd172004172088_
                                            (##car _tl172003172083_))
                                           (_tl172005172090_
                                            (##cdr _tl172003172083_)))
                                       (let ((_expander172093_
                                              _hd172004172088_))
                                         (if (##pair? _tl172005172090_)
                                             (let ((_hd172006172095_
                                                    (##car _tl172005172090_))
                                                   (_tl172007172097_
                                                    (##cdr _tl172005172090_)))
                                               (let ((_compiler172100_
                                                      _hd172006172095_))
                                                 (if (##null? _tl172007172097_)
                                                     (_K172001172078_
                                                      _compiler172100_
                                                      _expander172093_
                                                      _key172086_)
                                                     (_E172000172013_))))
                                             (_E172000172013_))))
                                     (_E172000172013_))))
                             (_E172000172013_))))))))
             (if (##pair? _bind171982171989_)
                 (let ((_hd171986172105_ (##car _bind171982171989_))
                       (_tl171987172107_ (##cdr _bind171982171989_)))
                   (let* ((_id172110_ _hd171986172105_)
                          (_rest172112_ _tl171987172107_))
                     (_K171985172102_ _rest172112_ _id172110_)))
                 (_E171984171993_))))
         _bindings171979_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self172117_)
        (let ((_bindings172119_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self172117_
           _bindings172119_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g176921_
        (let ((_g176920_ (##length _g176921_)))
          (cond ((##fx= _g176920_ 1)
                 (apply (lambda (_self172117_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self172117_))
                        _g176921_))
                ((##fx= _g176920_ 2)
                 (apply (lambda (_self172121_ _bindings172122_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self172121_
                           _bindings172122_))
                        _g176921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g176921_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self171750_ _bindings171751_)
        (for-each
         (lambda (_bind171753_)
           (let* ((_bind171754171761_ _bind171753_)
                  (_E171756171765_
                   (lambda ()
                     (error '"No clause matching" _bind171754171761_)))
                  (_K171757171833_
                   (lambda (_rest171768_ _id171769_)
                     (gx#core-context-put!
                      _self171750_
                      _id171769_
                      (##structure
                       gx#syntax-binding::t
                       _id171769_
                       _id171769_
                       '#f
                       (let* ((_rest171770171785_ _rest171768_)
                              (_E171774171789_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest171770171785_))))
                         (let ((_K171779171818_
                                (lambda (_core-id171816_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id171816_)))
                               (_K171776171803_
                                (lambda (_proc171801_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc171801_)))
                               (_K171775171794_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id171769_))))
                           (let ((_try-match171773171797_
                                  (lambda ()
                                    (if (##null? _rest171770171785_)
                                        (_K171775171794_)
                                        (_E171774171789_)))))
                             (if (##pair? _rest171770171785_)
                                 (let ((_tl171781171823_
                                        (##cdr _rest171770171785_))
                                       (_hd171780171821_
                                        (##car _rest171770171785_)))
                                   (if (##eq? _hd171780171821_ '=>)
                                       (if (##pair? _tl171781171823_)
                                           (let ((_tl171783171828_
                                                  (##cdr _tl171781171823_))
                                                 (_hd171782171826_
                                                  (##car _tl171781171823_)))
                                             (if (##null? _tl171783171828_)
                                                 (let ((_core-id171831_
                                                        _hd171782171826_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id171831_))
                                                 (_E171774171789_)))
                                           (if (##null? _tl171781171823_)
                                               (let ((_proc171811_
                                                      _hd171780171821_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc171811_))
                                               (_E171774171789_)))
                                       (if (##null? _tl171781171823_)
                                           (let ((_proc171811_
                                                  _hd171780171821_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc171811_))
                                           (_E171774171789_))))
                                 (_try-match171773171797_))))))))))
             (if (##pair? _bind171754171761_)
                 (let ((_hd171758171836_ (##car _bind171754171761_))
                       (_tl171759171838_ (##cdr _bind171754171761_)))
                   (let* ((_id171841_ _hd171758171836_)
                          (_rest171843_ _tl171759171838_))
                     (_K171757171833_ _rest171843_ _id171841_)))
                 (_E171756171765_))))
         _bindings171751_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self171848_)
        (let ((_bindings171850_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self171848_
           _bindings171850_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g176923_
        (let ((_g176922_ (##length _g176923_)))
          (cond ((##fx= _g176922_ 1)
                 (apply (lambda (_self171848_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self171848_))
                        _g176923_))
                ((##fx= _g176922_ 2)
                 (apply (lambda (_self171852_ _bindings171853_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self171852_
                           _bindings171853_))
                        _g176923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g176923_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self171494_)
        (letrec ((_linux-variant?171496_
                  (lambda (_sys-type171595_)
                    (let* ((_g171596171604_
                            (string-split
                             (symbol->string _sys-type171595_)
                             '#\-))
                           (_else171598171612_ (lambda () '#f))
                           (_K171600171617_
                            (lambda (_rest171615_)
                              (not (null? _rest171615_)))))
                      (if (##pair? _g171596171604_)
                          (let ((_hd171601171620_ (##car _g171596171604_))
                                (_tl171602171622_ (##cdr _g171596171604_)))
                            (if (equal? _hd171601171620_ '"linux")
                                (let ((_rest171625_ _tl171602171622_))
                                  (_K171600171617_ _rest171625_))
                                (_else171598171612_)))
                          (_else171598171612_)))))
                 (_bsd-variant171497_
                  (lambda (_sys-type171554_)
                    (let ((_sys-type-str171556_
                           (symbol->string _sys-type171554_)))
                      (let _lp171558_ ((_rest171560_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest171561171569_ _rest171560_)
                               (_else171563171577_ (lambda () '#f))
                               (_K171565171583_
                                (lambda (_rest171580_ _sys171581_)
                                  (if (string-prefix?
                                       _sys171581_
                                       _sys-type-str171556_)
                                      _sys171581_
                                      (_lp171558_ _rest171580_)))))
                          (if (##pair? _rest171561171569_)
                              (let ((_hd171566171586_
                                     (##car _rest171561171569_))
                                    (_tl171567171588_
                                     (##cdr _rest171561171569_)))
                                (let* ((_sys171591_ _hd171566171586_)
                                       (_rest171593_ _tl171567171588_))
                                  (_K171565171583_ _rest171593_ _sys171591_)))
                              (_else171563171577_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self171494_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self171494_)
          (let* ((_g171498171510_ (system-type))
                 (_else171500171518_ (lambda () '#!void))
                 (_K171502171530_
                  (lambda (_sys-type171521_ _sys-vendor171522_ _sys-cpu171523_)
                    (gx#core-bind-feature!__%
                     _sys-cpu171523_
                     '#f
                     '0
                     _self171494_)
                    (gx#core-bind-feature!__%
                     _sys-type171521_
                     '#f
                     '0
                     _self171494_)
                    (if (_linux-variant?171496_ _sys-type171521_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self171494_)
                        (let ((_$e171525_
                               (_bsd-variant171497_ _sys-type171521_)))
                          (if _$e171525_
                              ((lambda (_sys-prefix171528_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self171494_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix171528_)
                                  '#f
                                  '0
                                  _self171494_))
                               _$e171525_)
                              '#!void))))))
            (if (##pair? _g171498171510_)
                (let ((_hd171503171533_ (##car _g171498171510_))
                      (_tl171504171535_ (##cdr _g171498171510_)))
                  (let ((_sys-cpu171538_ _hd171503171533_))
                    (if (##pair? _tl171504171535_)
                        (let ((_hd171505171540_ (##car _tl171504171535_))
                              (_tl171506171542_ (##cdr _tl171504171535_)))
                          (let ((_sys-vendor171545_ _hd171505171540_))
                            (if (##pair? _tl171506171542_)
                                (let ((_hd171507171547_
                                       (##car _tl171506171542_))
                                      (_tl171508171549_
                                       (##cdr _tl171506171542_)))
                                  (let ((_sys-type171552_ _hd171507171547_))
                                    (if (##null? _tl171508171549_)
                                        (_K171502171530_
                                         _sys-type171552_
                                         _sys-vendor171545_
                                         _sys-cpu171538_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self171494_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
