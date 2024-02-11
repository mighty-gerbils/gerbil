(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707647933)
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
      (lambda (_self172351_ _bind?172352_)
        (if (##fx< '2 (##structure-length _self172351_))
            (begin
              (##unchecked-structure-set!
               _self172351_
               'root
               '1
               (##structure-type _self172351_)
               '#f)
              (##unchecked-structure-set!
               _self172351_
               (make-table 'test: eq?)
               '2
               (##structure-type _self172351_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self172351_
                   '2
                   (##vector-length _self172351_)))
        (if _bind?172352_
            (begin
              (let ((__method176870
                     (method-ref _self172351_ 'bind-core-syntax-expanders!)))
                (if __method176870
                    (__method176870 _self172351_)
                    (error '"Missing method"
                           _self172351_
                           'bind-core-syntax-expanders!)))
              (let ((__method176871
                     (method-ref _self172351_ 'bind-core-macro-expanders!)))
                (if __method176871
                    (__method176871 _self172351_)
                    (error '"Missing method"
                           _self172351_
                           'bind-core-macro-expanders!)))
              (let ((__method176872
                     (method-ref _self172351_ 'bind-core-features!)))
                (if __method176872
                    (__method176872 _self172351_)
                    (error '"Missing method"
                           _self172351_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self172357_)
        (let ((_bind?172359_ '#t))
          (gx#root-context:::init!__% _self172357_ _bind?172359_))))
    (define gx#root-context:::init!
      (lambda _g176883_
        (let ((_g176882_ (##length _g176883_)))
          (cond ((##fx= _g176882_ 1)
                 (apply (lambda (_self172357_)
                          (gx#root-context:::init!__0 _self172357_))
                        _g176883_))
                ((##fx= _g176882_ 2)
                 (apply (lambda (_self172361_ _bind?172362_)
                          (gx#root-context:::init!__%
                           _self172361_
                           _bind?172362_))
                        _g176883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g176883_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t176831)
        (let ((__bind-core-features!176832
               (make-promise
                (lambda ()
                  (let ((__tmp176835
                         (direct-method-ref __t176831 'bind-core-features!)))
                    (if __tmp176835
                        __tmp176835
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!176833
               (make-promise
                (lambda ()
                  (let ((__tmp176836
                         (direct-method-ref
                          __t176831
                          'bind-core-syntax-expanders!)))
                    (if __tmp176836
                        __tmp176836
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!176834
               (make-promise
                (lambda ()
                  (let ((__tmp176837
                         (direct-method-ref
                          __t176831
                          'bind-core-macro-expanders!)))
                    (if __tmp176837
                        __tmp176837
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda172349172354_
                 (lambda (_self172351_ _bind?172352_)
                   (if (##fx< '2 (##structure-length _self172351_))
                       (begin
                         (##unchecked-structure-set!
                          _self172351_
                          'root
                          '1
                          (##structure-type _self172351_)
                          '#f)
                         (##unchecked-structure-set!
                          _self172351_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self172351_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self172351_
                              '2
                              (##vector-length _self172351_)))
                   (if _bind?172352_
                       (begin
                         ((force __bind-core-syntax-expanders!176833)
                          _self172351_)
                         ((force __bind-core-macro-expanders!176834)
                          _self172351_)
                         ((force __bind-core-features!176832) _self172351_))
                       '#!void))))
            (lambda _g176885_
              (let ((_g176884_ (##length _g176885_)))
                (cond ((##fx= _g176884_ 1)
                       (apply (lambda (_self172357_)
                                (let ((_bind?172359_ '#t))
                                  (_opt-lambda172349172354_
                                   _self172357_
                                   _bind?172359_)))
                              _g176885_))
                      ((##fx= _g176884_ 2)
                       (apply (lambda (_self172361_ _bind?172362_)
                                (_opt-lambda172349172354_
                                 _self172361_
                                 _bind?172362_))
                              _g176885_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g176885_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self172207_ _super172208_)
        (let ((_super172216_
               (let ((_$e172210_ _super172208_))
                 (if _$e172210_
                     _$e172210_
                     (let ((_$e172213_ (gx#core-context-root__0)))
                       (if _$e172213_
                           _$e172213_
                           (let ((__obj176873
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj176873)
                             __obj176873)))))))
          (if (##fx< '5 (##structure-length _self172207_))
              (begin
                (##unchecked-structure-set!
                 _self172207_
                 'top
                 '1
                 (##structure-type _self172207_)
                 '#f)
                (##unchecked-structure-set!
                 _self172207_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self172207_)
                 '#f)
                (##unchecked-structure-set!
                 _self172207_
                 _super172216_
                 '3
                 (##structure-type _self172207_)
                 '#f)
                (##unchecked-structure-set!
                 _self172207_
                 '#f
                 '4
                 (##structure-type _self172207_)
                 '#f)
                (##unchecked-structure-set!
                 _self172207_
                 '#f
                 '5
                 (##structure-type _self172207_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self172207_
                     '5
                     (##vector-length _self172207_))))))
    (define gx#top-context:::init!__0
      (lambda (_self172221_)
        (let ((_super172223_ '#f))
          (gx#top-context:::init!__% _self172221_ _super172223_))))
    (define gx#top-context:::init!
      (lambda _g176887_
        (let ((_g176886_ (##length _g176887_)))
          (cond ((##fx= _g176886_ 1)
                 (apply (lambda (_self172221_)
                          (gx#top-context:::init!__0 _self172221_))
                        _g176887_))
                ((##fx= _g176886_ 2)
                 (apply (lambda (_self172225_ _super172226_)
                          (gx#top-context:::init!__%
                           _self172225_
                           _super172226_))
                        _g176887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g176887_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self171938_ _bindings171939_)
        (for-each
         (lambda (_bind171941_)
           (let* ((_bind171942171949_ _bind171941_)
                  (_E171944171953_
                   (lambda ()
                     (error '"No clause matching" _bind171942171949_)))
                  (_K171945172062_
                   (lambda (_rest171956_ _id171957_)
                     (gx#core-context-put!
                      _self171938_
                      _id171957_
                      (let ((__obj176874
                             (##structure
                              gx#syntax-binding::t
                              '#f
                              '#f
                              '#f
                              '#f)))
                        (class-instance-init!
                         __obj176874
                         _id171957_
                         _id171957_
                         '#f
                         (let* ((_rest171958171969_ _rest171956_)
                                (_E171960171973_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _rest171958171969_)))
                                (_K171961172038_
                                 (lambda (_compiler171976_
                                          _expander171977_
                                          _key171978_)
                                   ((let* ((_key171979171992_ _key171978_)
                                           (_E171985171996_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _key171979171992_))))
                                      (let ((_K171990172032_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_K171989172025_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_K171988172017_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_K171987172009_
                                             (lambda () gx#make-special-form))
                                            (_K171986172001_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_try-match171984172004_
                                                (lambda ()
                                                  (if (##eq? _key171979171992_
                                                             'expr:)
                                                      (_K171986172001_)
                                                      (_E171985171996_))))
                                               (_try-match171983172012_
                                                (lambda ()
                                                  (if (##eq? _key171979171992_
                                                             'special:)
                                                      (_K171987172009_)
                                                      (_try-match171984172004_))))
                                               (_try-match171982172020_
                                                (lambda ()
                                                  (if (##eq? _key171979171992_
                                                             'define:)
                                                      (_K171988172017_)
                                                      (_try-match171983172012_))))
                                               (_try-match171981172028_
                                                (lambda ()
                                                  (if (##eq? _key171979171992_
                                                             'module:)
                                                      (_K171989172025_)
                                                      (_try-match171982172020_)))))
                                          (if (##eq? _key171979171992_ 'top:)
                                              (_K171990172032_)
                                              (_try-match171981172028_)))))
                                    _expander171977_
                                    _id171957_
                                    (let ((_$e172035_ _compiler171976_))
                                      (if _$e172035_
                                          _$e172035_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _rest171958171969_)
                               (let ((_hd171962172041_
                                      (##car _rest171958171969_))
                                     (_tl171963172043_
                                      (##cdr _rest171958171969_)))
                                 (let ((_key172046_ _hd171962172041_))
                                   (if (##pair? _tl171963172043_)
                                       (let ((_hd171964172048_
                                              (##car _tl171963172043_))
                                             (_tl171965172050_
                                              (##cdr _tl171963172043_)))
                                         (let ((_expander172053_
                                                _hd171964172048_))
                                           (if (##pair? _tl171965172050_)
                                               (let ((_hd171966172055_
                                                      (##car _tl171965172050_))
                                                     (_tl171967172057_
                                                      (##cdr _tl171965172050_)))
                                                 (let ((_compiler172060_
                                                        _hd171966172055_))
                                                   (if (##null? _tl171967172057_)
                                                       (_K171961172038_
                                                        _compiler172060_
                                                        _expander172053_
                                                        _key172046_)
                                                       (_E171960171973_))))
                                               (_E171960171973_))))
                                       (_E171960171973_))))
                               (_E171960171973_))))
                        __obj176874)))))
             (if (##pair? _bind171942171949_)
                 (let ((_hd171946172065_ (##car _bind171942171949_))
                       (_tl171947172067_ (##cdr _bind171942171949_)))
                   (let* ((_id172070_ _hd171946172065_)
                          (_rest172072_ _tl171947172067_))
                     (_K171945172062_ _rest172072_ _id172070_)))
                 (_E171944171953_))))
         _bindings171939_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self172077_)
        (let ((_bindings172079_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self172077_
           _bindings172079_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g176889_
        (let ((_g176888_ (##length _g176889_)))
          (cond ((##fx= _g176888_ 1)
                 (apply (lambda (_self172077_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self172077_))
                        _g176889_))
                ((##fx= _g176888_ 2)
                 (apply (lambda (_self172081_ _bindings172082_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self172081_
                           _bindings172082_))
                        _g176889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g176889_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self171710_ _bindings171711_)
        (for-each
         (lambda (_bind171713_)
           (let* ((_bind171714171721_ _bind171713_)
                  (_E171716171725_
                   (lambda ()
                     (error '"No clause matching" _bind171714171721_)))
                  (_K171717171793_
                   (lambda (_rest171728_ _id171729_)
                     (gx#core-context-put!
                      _self171710_
                      _id171729_
                      (let ((__obj176881
                             (##structure
                              gx#syntax-binding::t
                              '#f
                              '#f
                              '#f
                              '#f)))
                        (class-instance-init!
                         __obj176881
                         _id171729_
                         _id171729_
                         '#f
                         (let* ((_rest171730171745_ _rest171728_)
                                (_E171734171749_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _rest171730171745_))))
                           (let ((_K171739171778_
                                  (lambda (_core-id171776_)
                                    (let ((__obj176875
                                           (##structure
                                            gx#rename-macro-expander::t
                                            '#f)))
                                      (class-instance-init!
                                       __obj176875
                                       _core-id171776_)
                                      __obj176875)))
                                 (_K171736171763_
                                  (lambda (_proc171761_)
                                    (let ((__obj176876
                                           (##structure
                                            gx#macro-expander::t
                                            '#f)))
                                      (class-instance-init!
                                       __obj176876
                                       _proc171761_)
                                      __obj176876)))
                                 (_K171735171754_
                                  (lambda ()
                                    (let ((__obj176877
                                           (##structure
                                            gx#reserved-expander::t
                                            '#f)))
                                      (class-instance-init!
                                       __obj176877
                                       _id171729_)
                                      __obj176877))))
                             (let ((_try-match171733171757_
                                    (lambda ()
                                      (if (##null? _rest171730171745_)
                                          (_K171735171754_)
                                          (_E171734171749_)))))
                               (if (##pair? _rest171730171745_)
                                   (let ((_tl171741171783_
                                          (##cdr _rest171730171745_))
                                         (_hd171740171781_
                                          (##car _rest171730171745_)))
                                     (if (##eq? _hd171740171781_ '=>)
                                         (if (##pair? _tl171741171783_)
                                             (let ((_tl171743171788_
                                                    (##cdr _tl171741171783_))
                                                   (_hd171742171786_
                                                    (##car _tl171741171783_)))
                                               (if (##null? _tl171743171788_)
                                                   (let* ((_core-id171791_
                                                           _hd171742171786_)
                                                          (__obj176878
                                                           (##structure
                                                            gx#rename-macro-expander::t
                                                            '#f)))
                                                     (class-instance-init!
                                                      __obj176878
                                                      _core-id171791_)
                                                     __obj176878)
                                                   (_E171734171749_)))
                                             (if (##null? _tl171741171783_)
                                                 (let* ((_proc171771_
                                                         _hd171740171781_)
                                                        (__obj176879
                                                         (##structure
                                                          gx#macro-expander::t
                                                          '#f)))
                                                   (class-instance-init!
                                                    __obj176879
                                                    _proc171771_)
                                                   __obj176879)
                                                 (_E171734171749_)))
                                         (if (##null? _tl171741171783_)
                                             (let* ((_proc171771_
                                                     _hd171740171781_)
                                                    (__obj176880
                                                     (##structure
                                                      gx#macro-expander::t
                                                      '#f)))
                                               (class-instance-init!
                                                __obj176880
                                                _proc171771_)
                                               __obj176880)
                                             (_E171734171749_))))
                                   (_try-match171733171757_))))))
                        __obj176881)))))
             (if (##pair? _bind171714171721_)
                 (let ((_hd171718171796_ (##car _bind171714171721_))
                       (_tl171719171798_ (##cdr _bind171714171721_)))
                   (let* ((_id171801_ _hd171718171796_)
                          (_rest171803_ _tl171719171798_))
                     (_K171717171793_ _rest171803_ _id171801_)))
                 (_E171716171725_))))
         _bindings171711_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self171808_)
        (let ((_bindings171810_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self171808_
           _bindings171810_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g176891_
        (let ((_g176890_ (##length _g176891_)))
          (cond ((##fx= _g176890_ 1)
                 (apply (lambda (_self171808_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self171808_))
                        _g176891_))
                ((##fx= _g176890_ 2)
                 (apply (lambda (_self171812_ _bindings171813_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self171812_
                           _bindings171813_))
                        _g176891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g176891_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self171454_)
        (letrec ((_linux-variant?171456_
                  (lambda (_sys-type171555_)
                    (let* ((_g171556171564_
                            (string-split
                             (symbol->string _sys-type171555_)
                             '#\-))
                           (_else171558171572_ (lambda () '#f))
                           (_K171560171577_
                            (lambda (_rest171575_)
                              (not (null? _rest171575_)))))
                      (if (##pair? _g171556171564_)
                          (let ((_hd171561171580_ (##car _g171556171564_))
                                (_tl171562171582_ (##cdr _g171556171564_)))
                            (if (equal? _hd171561171580_ '"linux")
                                (let ((_rest171585_ _tl171562171582_))
                                  (_K171560171577_ _rest171585_))
                                (_else171558171572_)))
                          (_else171558171572_)))))
                 (_bsd-variant171457_
                  (lambda (_sys-type171514_)
                    (let ((_sys-type-str171516_
                           (symbol->string _sys-type171514_)))
                      (let _lp171518_ ((_rest171520_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest171521171529_ _rest171520_)
                               (_else171523171537_ (lambda () '#f))
                               (_K171525171543_
                                (lambda (_rest171540_ _sys171541_)
                                  (if (string-prefix?
                                       _sys171541_
                                       _sys-type-str171516_)
                                      _sys171541_
                                      (_lp171518_ _rest171540_)))))
                          (if (##pair? _rest171521171529_)
                              (let ((_hd171526171546_
                                     (##car _rest171521171529_))
                                    (_tl171527171548_
                                     (##cdr _rest171521171529_)))
                                (let* ((_sys171551_ _hd171526171546_)
                                       (_rest171553_ _tl171527171548_))
                                  (_K171525171543_ _rest171553_ _sys171551_)))
                              (_else171523171537_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self171454_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self171454_)
          (let* ((_g171458171470_ (system-type))
                 (_else171460171478_ (lambda () '#!void))
                 (_K171462171490_
                  (lambda (_sys-type171481_ _sys-vendor171482_ _sys-cpu171483_)
                    (gx#core-bind-feature!__%
                     _sys-cpu171483_
                     '#f
                     '0
                     _self171454_)
                    (gx#core-bind-feature!__%
                     _sys-type171481_
                     '#f
                     '0
                     _self171454_)
                    (if (_linux-variant?171456_ _sys-type171481_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self171454_)
                        (let ((_$e171485_
                               (_bsd-variant171457_ _sys-type171481_)))
                          (if _$e171485_
                              ((lambda (_sys-prefix171488_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self171454_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix171488_)
                                  '#f
                                  '0
                                  _self171454_))
                               _$e171485_)
                              '#!void))))))
            (if (##pair? _g171458171470_)
                (let ((_hd171463171493_ (##car _g171458171470_))
                      (_tl171464171495_ (##cdr _g171458171470_)))
                  (let ((_sys-cpu171498_ _hd171463171493_))
                    (if (##pair? _tl171464171495_)
                        (let ((_hd171465171500_ (##car _tl171464171495_))
                              (_tl171466171502_ (##cdr _tl171464171495_)))
                          (let ((_sys-vendor171505_ _hd171465171500_))
                            (if (##pair? _tl171466171502_)
                                (let ((_hd171467171507_
                                       (##car _tl171466171502_))
                                      (_tl171468171509_
                                       (##cdr _tl171466171502_)))
                                  (let ((_sys-type171512_ _hd171467171507_))
                                    (if (##null? _tl171468171509_)
                                        (_K171462171490_
                                         _sys-type171512_
                                         _sys-vendor171505_
                                         _sys-cpu171498_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self171454_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
