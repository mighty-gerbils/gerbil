(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707659879)
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
      (lambda (_self172133_ _bind?172134_)
        (if (##fx< '2 (##structure-length _self172133_))
            (begin
              (##unchecked-structure-set!
               _self172133_
               'root
               '1
               (##structure-type _self172133_)
               '#f)
              (##unchecked-structure-set!
               _self172133_
               (make-table 'test: eq?)
               '2
               (##structure-type _self172133_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self172133_
                   '2
                   (##vector-length _self172133_)))
        (if _bind?172134_
            (begin
              (let ((__method176652
                     (method-ref _self172133_ 'bind-core-syntax-expanders!)))
                (if __method176652
                    (__method176652 _self172133_)
                    (error '"Missing method"
                           _self172133_
                           'bind-core-syntax-expanders!)))
              (let ((__method176653
                     (method-ref _self172133_ 'bind-core-macro-expanders!)))
                (if __method176653
                    (__method176653 _self172133_)
                    (error '"Missing method"
                           _self172133_
                           'bind-core-macro-expanders!)))
              (let ((__method176654
                     (method-ref _self172133_ 'bind-core-features!)))
                (if __method176654
                    (__method176654 _self172133_)
                    (error '"Missing method"
                           _self172133_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self172139_)
        (let ((_bind?172141_ '#t))
          (gx#root-context:::init!__% _self172139_ _bind?172141_))))
    (define gx#root-context:::init!
      (lambda _g176657_
        (let ((_g176656_ (##length _g176657_)))
          (cond ((##fx= _g176656_ 1)
                 (apply (lambda (_self172139_)
                          (gx#root-context:::init!__0 _self172139_))
                        _g176657_))
                ((##fx= _g176656_ 2)
                 (apply (lambda (_self172143_ _bind?172144_)
                          (gx#root-context:::init!__%
                           _self172143_
                           _bind?172144_))
                        _g176657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g176657_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t176613)
        (let ((__bind-core-macro-expanders!176614
               (make-promise
                (lambda ()
                  (let ((__tmp176617
                         (direct-method-ref
                          __t176613
                          'bind-core-macro-expanders!)))
                    (if __tmp176617
                        __tmp176617
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!176615
               (make-promise
                (lambda ()
                  (let ((__tmp176618
                         (direct-method-ref __t176613 'bind-core-features!)))
                    (if __tmp176618
                        __tmp176618
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!176616
               (make-promise
                (lambda ()
                  (let ((__tmp176619
                         (direct-method-ref
                          __t176613
                          'bind-core-syntax-expanders!)))
                    (if __tmp176619
                        __tmp176619
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda172131172136_
                 (lambda (_self172133_ _bind?172134_)
                   (if (##fx< '2 (##structure-length _self172133_))
                       (begin
                         (##unchecked-structure-set!
                          _self172133_
                          'root
                          '1
                          (##structure-type _self172133_)
                          '#f)
                         (##unchecked-structure-set!
                          _self172133_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self172133_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self172133_
                              '2
                              (##vector-length _self172133_)))
                   (if _bind?172134_
                       (begin
                         ((force __bind-core-syntax-expanders!176616)
                          _self172133_)
                         ((force __bind-core-macro-expanders!176614)
                          _self172133_)
                         ((force __bind-core-features!176615) _self172133_))
                       '#!void))))
            (lambda _g176659_
              (let ((_g176658_ (##length _g176659_)))
                (cond ((##fx= _g176658_ 1)
                       (apply (lambda (_self172139_)
                                (let ((_bind?172141_ '#t))
                                  (_opt-lambda172131172136_
                                   _self172139_
                                   _bind?172141_)))
                              _g176659_))
                      ((##fx= _g176658_ 2)
                       (apply (lambda (_self172143_ _bind?172144_)
                                (_opt-lambda172131172136_
                                 _self172143_
                                 _bind?172144_))
                              _g176659_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g176659_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self171989_ _super171990_)
        (let ((_super171998_
               (let ((_$e171992_ _super171990_))
                 (if _$e171992_
                     _$e171992_
                     (let ((_$e171995_ (gx#core-context-root__0)))
                       (if _$e171995_
                           _$e171995_
                           (let ((__obj176655
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj176655)
                             __obj176655)))))))
          (if (##fx< '5 (##structure-length _self171989_))
              (begin
                (##unchecked-structure-set!
                 _self171989_
                 'top
                 '1
                 (##structure-type _self171989_)
                 '#f)
                (##unchecked-structure-set!
                 _self171989_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self171989_)
                 '#f)
                (##unchecked-structure-set!
                 _self171989_
                 _super171998_
                 '3
                 (##structure-type _self171989_)
                 '#f)
                (##unchecked-structure-set!
                 _self171989_
                 '#f
                 '4
                 (##structure-type _self171989_)
                 '#f)
                (##unchecked-structure-set!
                 _self171989_
                 '#f
                 '5
                 (##structure-type _self171989_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self171989_
                     '5
                     (##vector-length _self171989_))))))
    (define gx#top-context:::init!__0
      (lambda (_self172003_)
        (let ((_super172005_ '#f))
          (gx#top-context:::init!__% _self172003_ _super172005_))))
    (define gx#top-context:::init!
      (lambda _g176661_
        (let ((_g176660_ (##length _g176661_)))
          (cond ((##fx= _g176660_ 1)
                 (apply (lambda (_self172003_)
                          (gx#top-context:::init!__0 _self172003_))
                        _g176661_))
                ((##fx= _g176660_ 2)
                 (apply (lambda (_self172007_ _super172008_)
                          (gx#top-context:::init!__%
                           _self172007_
                           _super172008_))
                        _g176661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g176661_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self171720_ _bindings171721_)
        (for-each
         (lambda (_bind171723_)
           (let* ((_bind171724171731_ _bind171723_)
                  (_E171726171735_
                   (lambda ()
                     (error '"No clause matching" _bind171724171731_)))
                  (_K171727171844_
                   (lambda (_rest171738_ _id171739_)
                     (gx#core-context-put!
                      _self171720_
                      _id171739_
                      (##structure
                       gx#syntax-binding::t
                       _id171739_
                       _id171739_
                       '#f
                       (let* ((_rest171740171751_ _rest171738_)
                              (_E171742171755_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest171740171751_)))
                              (_K171743171820_
                               (lambda (_compiler171758_
                                        _expander171759_
                                        _key171760_)
                                 ((let* ((_key171761171774_ _key171760_)
                                         (_E171767171778_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key171761171774_))))
                                    (let ((_K171772171814_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K171771171807_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K171770171799_
                                           (lambda () gx#make-definition-form))
                                          (_K171769171791_
                                           (lambda () gx#make-special-form))
                                          (_K171768171783_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match171766171786_
                                              (lambda ()
                                                (if (##eq? _key171761171774_
                                                           'expr:)
                                                    (_K171768171783_)
                                                    (_E171767171778_))))
                                             (_try-match171765171794_
                                              (lambda ()
                                                (if (##eq? _key171761171774_
                                                           'special:)
                                                    (_K171769171791_)
                                                    (_try-match171766171786_))))
                                             (_try-match171764171802_
                                              (lambda ()
                                                (if (##eq? _key171761171774_
                                                           'define:)
                                                    (_K171770171799_)
                                                    (_try-match171765171794_))))
                                             (_try-match171763171810_
                                              (lambda ()
                                                (if (##eq? _key171761171774_
                                                           'module:)
                                                    (_K171771171807_)
                                                    (_try-match171764171802_)))))
                                        (if (##eq? _key171761171774_ 'top:)
                                            (_K171772171814_)
                                            (_try-match171763171810_)))))
                                  _expander171759_
                                  _id171739_
                                  (let ((_$e171817_ _compiler171758_))
                                    (if _$e171817_
                                        _$e171817_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest171740171751_)
                             (let ((_hd171744171823_
                                    (##car _rest171740171751_))
                                   (_tl171745171825_
                                    (##cdr _rest171740171751_)))
                               (let ((_key171828_ _hd171744171823_))
                                 (if (##pair? _tl171745171825_)
                                     (let ((_hd171746171830_
                                            (##car _tl171745171825_))
                                           (_tl171747171832_
                                            (##cdr _tl171745171825_)))
                                       (let ((_expander171835_
                                              _hd171746171830_))
                                         (if (##pair? _tl171747171832_)
                                             (let ((_hd171748171837_
                                                    (##car _tl171747171832_))
                                                   (_tl171749171839_
                                                    (##cdr _tl171747171832_)))
                                               (let ((_compiler171842_
                                                      _hd171748171837_))
                                                 (if (##null? _tl171749171839_)
                                                     (_K171743171820_
                                                      _compiler171842_
                                                      _expander171835_
                                                      _key171828_)
                                                     (_E171742171755_))))
                                             (_E171742171755_))))
                                     (_E171742171755_))))
                             (_E171742171755_))))))))
             (if (##pair? _bind171724171731_)
                 (let ((_hd171728171847_ (##car _bind171724171731_))
                       (_tl171729171849_ (##cdr _bind171724171731_)))
                   (let* ((_id171852_ _hd171728171847_)
                          (_rest171854_ _tl171729171849_))
                     (_K171727171844_ _rest171854_ _id171852_)))
                 (_E171726171735_))))
         _bindings171721_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self171859_)
        (let ((_bindings171861_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self171859_
           _bindings171861_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g176663_
        (let ((_g176662_ (##length _g176663_)))
          (cond ((##fx= _g176662_ 1)
                 (apply (lambda (_self171859_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self171859_))
                        _g176663_))
                ((##fx= _g176662_ 2)
                 (apply (lambda (_self171863_ _bindings171864_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self171863_
                           _bindings171864_))
                        _g176663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g176663_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self171492_ _bindings171493_)
        (for-each
         (lambda (_bind171495_)
           (let* ((_bind171496171503_ _bind171495_)
                  (_E171498171507_
                   (lambda ()
                     (error '"No clause matching" _bind171496171503_)))
                  (_K171499171575_
                   (lambda (_rest171510_ _id171511_)
                     (gx#core-context-put!
                      _self171492_
                      _id171511_
                      (##structure
                       gx#syntax-binding::t
                       _id171511_
                       _id171511_
                       '#f
                       (let* ((_rest171512171527_ _rest171510_)
                              (_E171516171531_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest171512171527_))))
                         (let ((_K171521171560_
                                (lambda (_core-id171558_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id171558_)))
                               (_K171518171545_
                                (lambda (_proc171543_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc171543_)))
                               (_K171517171536_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id171511_))))
                           (let ((_try-match171515171539_
                                  (lambda ()
                                    (if (##null? _rest171512171527_)
                                        (_K171517171536_)
                                        (_E171516171531_)))))
                             (if (##pair? _rest171512171527_)
                                 (let ((_tl171523171565_
                                        (##cdr _rest171512171527_))
                                       (_hd171522171563_
                                        (##car _rest171512171527_)))
                                   (if (##eq? _hd171522171563_ '=>)
                                       (if (##pair? _tl171523171565_)
                                           (let ((_tl171525171570_
                                                  (##cdr _tl171523171565_))
                                                 (_hd171524171568_
                                                  (##car _tl171523171565_)))
                                             (if (##null? _tl171525171570_)
                                                 (let ((_core-id171573_
                                                        _hd171524171568_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id171573_))
                                                 (_E171516171531_)))
                                           (if (##null? _tl171523171565_)
                                               (let ((_proc171553_
                                                      _hd171522171563_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc171553_))
                                               (_E171516171531_)))
                                       (if (##null? _tl171523171565_)
                                           (let ((_proc171553_
                                                  _hd171522171563_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc171553_))
                                           (_E171516171531_))))
                                 (_try-match171515171539_))))))))))
             (if (##pair? _bind171496171503_)
                 (let ((_hd171500171578_ (##car _bind171496171503_))
                       (_tl171501171580_ (##cdr _bind171496171503_)))
                   (let* ((_id171583_ _hd171500171578_)
                          (_rest171585_ _tl171501171580_))
                     (_K171499171575_ _rest171585_ _id171583_)))
                 (_E171498171507_))))
         _bindings171493_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self171590_)
        (let ((_bindings171592_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self171590_
           _bindings171592_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g176665_
        (let ((_g176664_ (##length _g176665_)))
          (cond ((##fx= _g176664_ 1)
                 (apply (lambda (_self171590_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self171590_))
                        _g176665_))
                ((##fx= _g176664_ 2)
                 (apply (lambda (_self171594_ _bindings171595_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self171594_
                           _bindings171595_))
                        _g176665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g176665_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self171236_)
        (letrec ((_linux-variant?171238_
                  (lambda (_sys-type171337_)
                    (let* ((_g171338171346_
                            (string-split
                             (symbol->string _sys-type171337_)
                             '#\-))
                           (_else171340171354_ (lambda () '#f))
                           (_K171342171359_
                            (lambda (_rest171357_)
                              (not (null? _rest171357_)))))
                      (if (##pair? _g171338171346_)
                          (let ((_hd171343171362_ (##car _g171338171346_))
                                (_tl171344171364_ (##cdr _g171338171346_)))
                            (if (equal? _hd171343171362_ '"linux")
                                (let ((_rest171367_ _tl171344171364_))
                                  (_K171342171359_ _rest171367_))
                                (_else171340171354_)))
                          (_else171340171354_)))))
                 (_bsd-variant171239_
                  (lambda (_sys-type171296_)
                    (let ((_sys-type-str171298_
                           (symbol->string _sys-type171296_)))
                      (let _lp171300_ ((_rest171302_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest171303171311_ _rest171302_)
                               (_else171305171319_ (lambda () '#f))
                               (_K171307171325_
                                (lambda (_rest171322_ _sys171323_)
                                  (if (string-prefix?
                                       _sys171323_
                                       _sys-type-str171298_)
                                      _sys171323_
                                      (_lp171300_ _rest171322_)))))
                          (if (##pair? _rest171303171311_)
                              (let ((_hd171308171328_
                                     (##car _rest171303171311_))
                                    (_tl171309171330_
                                     (##cdr _rest171303171311_)))
                                (let* ((_sys171333_ _hd171308171328_)
                                       (_rest171335_ _tl171309171330_))
                                  (_K171307171325_ _rest171335_ _sys171333_)))
                              (_else171305171319_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self171236_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self171236_)
          (let* ((_g171240171252_ (system-type))
                 (_else171242171260_ (lambda () '#!void))
                 (_K171244171272_
                  (lambda (_sys-type171263_ _sys-vendor171264_ _sys-cpu171265_)
                    (gx#core-bind-feature!__%
                     _sys-cpu171265_
                     '#f
                     '0
                     _self171236_)
                    (gx#core-bind-feature!__%
                     _sys-type171263_
                     '#f
                     '0
                     _self171236_)
                    (if (_linux-variant?171238_ _sys-type171263_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self171236_)
                        (let ((_$e171267_
                               (_bsd-variant171239_ _sys-type171263_)))
                          (if _$e171267_
                              ((lambda (_sys-prefix171270_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self171236_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix171270_)
                                  '#f
                                  '0
                                  _self171236_))
                               _$e171267_)
                              '#!void))))))
            (if (##pair? _g171240171252_)
                (let ((_hd171245171275_ (##car _g171240171252_))
                      (_tl171246171277_ (##cdr _g171240171252_)))
                  (let ((_sys-cpu171280_ _hd171245171275_))
                    (if (##pair? _tl171246171277_)
                        (let ((_hd171247171282_ (##car _tl171246171277_))
                              (_tl171248171284_ (##cdr _tl171246171277_)))
                          (let ((_sys-vendor171287_ _hd171247171282_))
                            (if (##pair? _tl171248171284_)
                                (let ((_hd171249171289_
                                       (##car _tl171248171284_))
                                      (_tl171250171291_
                                       (##cdr _tl171248171284_)))
                                  (let ((_sys-type171294_ _hd171249171289_))
                                    (if (##null? _tl171250171291_)
                                        (_K171244171272_
                                         _sys-type171294_
                                         _sys-vendor171287_
                                         _sys-cpu171280_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self171236_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
