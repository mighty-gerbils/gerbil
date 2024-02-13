(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707831900)
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
      (lambda (_self174980_ _bind?174981_)
        (if (##fx< '2 (##structure-length _self174980_))
            (begin
              (##unchecked-structure-set!
               _self174980_
               'root
               '1
               (##structure-type _self174980_)
               '#f)
              (##unchecked-structure-set!
               _self174980_
               (make-table 'test: eq?)
               '2
               (##structure-type _self174980_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self174980_
                   '2
                   (##vector-length _self174980_)))
        (if _bind?174981_
            (begin
              (let ((__method179599
                     (method-ref _self174980_ 'bind-core-syntax-expanders!)))
                (if __method179599
                    (__method179599 _self174980_)
                    (error '"Missing method"
                           _self174980_
                           'bind-core-syntax-expanders!)))
              (let ((__method179600
                     (method-ref _self174980_ 'bind-core-macro-expanders!)))
                (if __method179600
                    (__method179600 _self174980_)
                    (error '"Missing method"
                           _self174980_
                           'bind-core-macro-expanders!)))
              (let ((__method179601
                     (method-ref _self174980_ 'bind-core-features!)))
                (if __method179601
                    (__method179601 _self174980_)
                    (error '"Missing method"
                           _self174980_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self174986_)
        (let ((_bind?174988_ '#t))
          (gx#root-context:::init!__% _self174986_ _bind?174988_))))
    (define gx#root-context:::init!
      (lambda _g179604_
        (let ((_g179603_ (##length _g179604_)))
          (cond ((##fx= _g179603_ 1)
                 (apply (lambda (_self174986_)
                          (gx#root-context:::init!__0 _self174986_))
                        _g179604_))
                ((##fx= _g179603_ 2)
                 (apply (lambda (_self174990_ _bind?174991_)
                          (gx#root-context:::init!__%
                           _self174990_
                           _bind?174991_))
                        _g179604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g179604_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t179560)
        (let ((__bind-core-features!179561
               (make-promise
                (lambda ()
                  (let ((__tmp179564
                         (direct-method-ref
                          __t179560
                          '#f
                          'bind-core-features!)))
                    (if __tmp179564
                        __tmp179564
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!179562
               (make-promise
                (lambda ()
                  (let ((__tmp179565
                         (direct-method-ref
                          __t179560
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp179565
                        __tmp179565
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!179563
               (make-promise
                (lambda ()
                  (let ((__tmp179566
                         (direct-method-ref
                          __t179560
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp179566
                        __tmp179566
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda174978174983_
                 (lambda (_self174980_ _bind?174981_)
                   (if (##fx< '2 (##structure-length _self174980_))
                       (begin
                         (##unchecked-structure-set!
                          _self174980_
                          'root
                          '1
                          (##structure-type _self174980_)
                          '#f)
                         (##unchecked-structure-set!
                          _self174980_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self174980_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self174980_
                              '2
                              (##vector-length _self174980_)))
                   (if _bind?174981_
                       (begin
                         ((force __bind-core-syntax-expanders!179562)
                          _self174980_)
                         ((force __bind-core-macro-expanders!179563)
                          _self174980_)
                         ((force __bind-core-features!179561) _self174980_))
                       '#!void))))
            (lambda _g179606_
              (let ((_g179605_ (##length _g179606_)))
                (cond ((##fx= _g179605_ 1)
                       (apply (lambda (_self174986_)
                                (let ((_bind?174988_ '#t))
                                  (_opt-lambda174978174983_
                                   _self174986_
                                   _bind?174988_)))
                              _g179606_))
                      ((##fx= _g179605_ 2)
                       (apply (lambda (_self174990_ _bind?174991_)
                                (_opt-lambda174978174983_
                                 _self174990_
                                 _bind?174991_))
                              _g179606_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g179606_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self174836_ _super174837_)
        (let ((_super174845_
               (let ((_$e174839_ _super174837_))
                 (if _$e174839_
                     _$e174839_
                     (let ((_$e174842_ (gx#core-context-root__0)))
                       (if _$e174842_
                           _$e174842_
                           (let ((__obj179602
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj179602)
                             __obj179602)))))))
          (if (##fx< '5 (##structure-length _self174836_))
              (begin
                (##unchecked-structure-set!
                 _self174836_
                 'top
                 '1
                 (##structure-type _self174836_)
                 '#f)
                (##unchecked-structure-set!
                 _self174836_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self174836_)
                 '#f)
                (##unchecked-structure-set!
                 _self174836_
                 _super174845_
                 '3
                 (##structure-type _self174836_)
                 '#f)
                (##unchecked-structure-set!
                 _self174836_
                 '#f
                 '4
                 (##structure-type _self174836_)
                 '#f)
                (##unchecked-structure-set!
                 _self174836_
                 '#f
                 '5
                 (##structure-type _self174836_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self174836_
                     '5
                     (##vector-length _self174836_))))))
    (define gx#top-context:::init!__0
      (lambda (_self174850_)
        (let ((_super174852_ '#f))
          (gx#top-context:::init!__% _self174850_ _super174852_))))
    (define gx#top-context:::init!
      (lambda _g179608_
        (let ((_g179607_ (##length _g179608_)))
          (cond ((##fx= _g179607_ 1)
                 (apply (lambda (_self174850_)
                          (gx#top-context:::init!__0 _self174850_))
                        _g179608_))
                ((##fx= _g179607_ 2)
                 (apply (lambda (_self174854_ _super174855_)
                          (gx#top-context:::init!__%
                           _self174854_
                           _super174855_))
                        _g179608_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g179608_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self174567_ _bindings174568_)
        (for-each
         (lambda (_bind174570_)
           (let* ((_bind174571174578_ _bind174570_)
                  (_E174573174582_
                   (lambda ()
                     (error '"No clause matching" _bind174571174578_)))
                  (_K174574174691_
                   (lambda (_rest174585_ _id174586_)
                     (gx#core-context-put!
                      _self174567_
                      _id174586_
                      (##structure
                       gx#syntax-binding::t
                       _id174586_
                       _id174586_
                       '#f
                       (let* ((_rest174587174598_ _rest174585_)
                              (_E174589174602_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest174587174598_)))
                              (_K174590174667_
                               (lambda (_compiler174605_
                                        _expander174606_
                                        _key174607_)
                                 ((let* ((_key174608174621_ _key174607_)
                                         (_E174614174625_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key174608174621_))))
                                    (let ((_K174619174661_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K174618174654_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K174617174646_
                                           (lambda () gx#make-definition-form))
                                          (_K174616174638_
                                           (lambda () gx#make-special-form))
                                          (_K174615174630_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match174613174633_
                                              (lambda ()
                                                (if (##eq? _key174608174621_
                                                           'expr:)
                                                    (_K174615174630_)
                                                    (_E174614174625_))))
                                             (_try-match174612174641_
                                              (lambda ()
                                                (if (##eq? _key174608174621_
                                                           'special:)
                                                    (_K174616174638_)
                                                    (_try-match174613174633_))))
                                             (_try-match174611174649_
                                              (lambda ()
                                                (if (##eq? _key174608174621_
                                                           'define:)
                                                    (_K174617174646_)
                                                    (_try-match174612174641_))))
                                             (_try-match174610174657_
                                              (lambda ()
                                                (if (##eq? _key174608174621_
                                                           'module:)
                                                    (_K174618174654_)
                                                    (_try-match174611174649_)))))
                                        (if (##eq? _key174608174621_ 'top:)
                                            (_K174619174661_)
                                            (_try-match174610174657_)))))
                                  _expander174606_
                                  _id174586_
                                  (let ((_$e174664_ _compiler174605_))
                                    (if _$e174664_
                                        _$e174664_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest174587174598_)
                             (let ((_hd174591174670_
                                    (##car _rest174587174598_))
                                   (_tl174592174672_
                                    (##cdr _rest174587174598_)))
                               (let ((_key174675_ _hd174591174670_))
                                 (if (##pair? _tl174592174672_)
                                     (let ((_hd174593174677_
                                            (##car _tl174592174672_))
                                           (_tl174594174679_
                                            (##cdr _tl174592174672_)))
                                       (let ((_expander174682_
                                              _hd174593174677_))
                                         (if (##pair? _tl174594174679_)
                                             (let ((_hd174595174684_
                                                    (##car _tl174594174679_))
                                                   (_tl174596174686_
                                                    (##cdr _tl174594174679_)))
                                               (let ((_compiler174689_
                                                      _hd174595174684_))
                                                 (if (##null? _tl174596174686_)
                                                     (_K174590174667_
                                                      _compiler174689_
                                                      _expander174682_
                                                      _key174675_)
                                                     (_E174589174602_))))
                                             (_E174589174602_))))
                                     (_E174589174602_))))
                             (_E174589174602_))))))))
             (if (##pair? _bind174571174578_)
                 (let ((_hd174575174694_ (##car _bind174571174578_))
                       (_tl174576174696_ (##cdr _bind174571174578_)))
                   (let* ((_id174699_ _hd174575174694_)
                          (_rest174701_ _tl174576174696_))
                     (_K174574174691_ _rest174701_ _id174699_)))
                 (_E174573174582_))))
         _bindings174568_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self174706_)
        (let ((_bindings174708_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self174706_
           _bindings174708_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g179610_
        (let ((_g179609_ (##length _g179610_)))
          (cond ((##fx= _g179609_ 1)
                 (apply (lambda (_self174706_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self174706_))
                        _g179610_))
                ((##fx= _g179609_ 2)
                 (apply (lambda (_self174710_ _bindings174711_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self174710_
                           _bindings174711_))
                        _g179610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g179610_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self174339_ _bindings174340_)
        (for-each
         (lambda (_bind174342_)
           (let* ((_bind174343174350_ _bind174342_)
                  (_E174345174354_
                   (lambda ()
                     (error '"No clause matching" _bind174343174350_)))
                  (_K174346174422_
                   (lambda (_rest174357_ _id174358_)
                     (gx#core-context-put!
                      _self174339_
                      _id174358_
                      (##structure
                       gx#syntax-binding::t
                       _id174358_
                       _id174358_
                       '#f
                       (let* ((_rest174359174374_ _rest174357_)
                              (_E174363174378_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest174359174374_))))
                         (let ((_K174368174407_
                                (lambda (_core-id174405_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id174405_)))
                               (_K174365174392_
                                (lambda (_proc174390_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc174390_)))
                               (_K174364174383_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id174358_))))
                           (let ((_try-match174362174386_
                                  (lambda ()
                                    (if (##null? _rest174359174374_)
                                        (_K174364174383_)
                                        (_E174363174378_)))))
                             (if (##pair? _rest174359174374_)
                                 (let ((_tl174370174412_
                                        (##cdr _rest174359174374_))
                                       (_hd174369174410_
                                        (##car _rest174359174374_)))
                                   (if (##eq? _hd174369174410_ '=>)
                                       (if (##pair? _tl174370174412_)
                                           (let ((_tl174372174417_
                                                  (##cdr _tl174370174412_))
                                                 (_hd174371174415_
                                                  (##car _tl174370174412_)))
                                             (if (##null? _tl174372174417_)
                                                 (let ((_core-id174420_
                                                        _hd174371174415_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id174420_))
                                                 (_E174363174378_)))
                                           (if (##null? _tl174370174412_)
                                               (let ((_proc174400_
                                                      _hd174369174410_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc174400_))
                                               (_E174363174378_)))
                                       (if (##null? _tl174370174412_)
                                           (let ((_proc174400_
                                                  _hd174369174410_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc174400_))
                                           (_E174363174378_))))
                                 (_try-match174362174386_))))))))))
             (if (##pair? _bind174343174350_)
                 (let ((_hd174347174425_ (##car _bind174343174350_))
                       (_tl174348174427_ (##cdr _bind174343174350_)))
                   (let* ((_id174430_ _hd174347174425_)
                          (_rest174432_ _tl174348174427_))
                     (_K174346174422_ _rest174432_ _id174430_)))
                 (_E174345174354_))))
         _bindings174340_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self174437_)
        (let ((_bindings174439_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self174437_
           _bindings174439_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g179612_
        (let ((_g179611_ (##length _g179612_)))
          (cond ((##fx= _g179611_ 1)
                 (apply (lambda (_self174437_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self174437_))
                        _g179612_))
                ((##fx= _g179611_ 2)
                 (apply (lambda (_self174441_ _bindings174442_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self174441_
                           _bindings174442_))
                        _g179612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g179612_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self174083_)
        (letrec ((_linux-variant?174085_
                  (lambda (_sys-type174184_)
                    (let* ((_g174185174193_
                            (string-split
                             (symbol->string _sys-type174184_)
                             '#\-))
                           (_else174187174201_ (lambda () '#f))
                           (_K174189174206_
                            (lambda (_rest174204_)
                              (not (null? _rest174204_)))))
                      (if (##pair? _g174185174193_)
                          (let ((_hd174190174209_ (##car _g174185174193_))
                                (_tl174191174211_ (##cdr _g174185174193_)))
                            (if (equal? _hd174190174209_ '"linux")
                                (let ((_rest174214_ _tl174191174211_))
                                  (_K174189174206_ _rest174214_))
                                (_else174187174201_)))
                          (_else174187174201_)))))
                 (_bsd-variant174086_
                  (lambda (_sys-type174143_)
                    (let ((_sys-type-str174145_
                           (symbol->string _sys-type174143_)))
                      (let _lp174147_ ((_rest174149_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest174150174158_ _rest174149_)
                               (_else174152174166_ (lambda () '#f))
                               (_K174154174172_
                                (lambda (_rest174169_ _sys174170_)
                                  (if (string-prefix?
                                       _sys174170_
                                       _sys-type-str174145_)
                                      _sys174170_
                                      (_lp174147_ _rest174169_)))))
                          (if (##pair? _rest174150174158_)
                              (let ((_hd174155174175_
                                     (##car _rest174150174158_))
                                    (_tl174156174177_
                                     (##cdr _rest174150174158_)))
                                (let* ((_sys174180_ _hd174155174175_)
                                       (_rest174182_ _tl174156174177_))
                                  (_K174154174172_ _rest174182_ _sys174180_)))
                              (_else174152174166_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self174083_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self174083_)
          (let* ((_g174087174099_ (system-type))
                 (_else174089174107_ (lambda () '#!void))
                 (_K174091174119_
                  (lambda (_sys-type174110_ _sys-vendor174111_ _sys-cpu174112_)
                    (gx#core-bind-feature!__%
                     _sys-cpu174112_
                     '#f
                     '0
                     _self174083_)
                    (gx#core-bind-feature!__%
                     _sys-type174110_
                     '#f
                     '0
                     _self174083_)
                    (if (_linux-variant?174085_ _sys-type174110_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self174083_)
                        (let ((_$e174114_
                               (_bsd-variant174086_ _sys-type174110_)))
                          (if _$e174114_
                              ((lambda (_sys-prefix174117_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self174083_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix174117_)
                                  '#f
                                  '0
                                  _self174083_))
                               _$e174114_)
                              '#!void))))))
            (if (##pair? _g174087174099_)
                (let ((_hd174092174122_ (##car _g174087174099_))
                      (_tl174093174124_ (##cdr _g174087174099_)))
                  (let ((_sys-cpu174127_ _hd174092174122_))
                    (if (##pair? _tl174093174124_)
                        (let ((_hd174094174129_ (##car _tl174093174124_))
                              (_tl174095174131_ (##cdr _tl174093174124_)))
                          (let ((_sys-vendor174134_ _hd174094174129_))
                            (if (##pair? _tl174095174131_)
                                (let ((_hd174096174136_
                                       (##car _tl174095174131_))
                                      (_tl174097174138_
                                       (##cdr _tl174095174131_)))
                                  (let ((_sys-type174141_ _hd174096174136_))
                                    (if (##null? _tl174097174138_)
                                        (_K174091174119_
                                         _sys-type174141_
                                         _sys-vendor174134_
                                         _sys-cpu174127_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self174083_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
