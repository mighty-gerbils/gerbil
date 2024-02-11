(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707651234)
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
      (lambda (_self172230_ _bind?172231_)
        (if (##fx< '2 (##structure-length _self172230_))
            (begin
              (##unchecked-structure-set!
               _self172230_
               'root
               '1
               (##structure-type _self172230_)
               '#f)
              (##unchecked-structure-set!
               _self172230_
               (make-table 'test: eq?)
               '2
               (##structure-type _self172230_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self172230_
                   '2
                   (##vector-length _self172230_)))
        (if _bind?172231_
            (begin
              (let ((__method176749
                     (method-ref _self172230_ 'bind-core-syntax-expanders!)))
                (if __method176749
                    (__method176749 _self172230_)
                    (error '"Missing method"
                           _self172230_
                           'bind-core-syntax-expanders!)))
              (let ((__method176750
                     (method-ref _self172230_ 'bind-core-macro-expanders!)))
                (if __method176750
                    (__method176750 _self172230_)
                    (error '"Missing method"
                           _self172230_
                           'bind-core-macro-expanders!)))
              (let ((__method176751
                     (method-ref _self172230_ 'bind-core-features!)))
                (if __method176751
                    (__method176751 _self172230_)
                    (error '"Missing method"
                           _self172230_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self172236_)
        (let ((_bind?172238_ '#t))
          (gx#root-context:::init!__% _self172236_ _bind?172238_))))
    (define gx#root-context:::init!
      (lambda _g176762_
        (let ((_g176761_ (##length _g176762_)))
          (cond ((##fx= _g176761_ 1)
                 (apply (lambda (_self172236_)
                          (gx#root-context:::init!__0 _self172236_))
                        _g176762_))
                ((##fx= _g176761_ 2)
                 (apply (lambda (_self172240_ _bind?172241_)
                          (gx#root-context:::init!__%
                           _self172240_
                           _bind?172241_))
                        _g176762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g176762_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t176710)
        (let ((__bind-core-features!176711
               (make-promise
                (lambda ()
                  (let ((__tmp176714
                         (direct-method-ref __t176710 'bind-core-features!)))
                    (if __tmp176714
                        __tmp176714
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!176712
               (make-promise
                (lambda ()
                  (let ((__tmp176715
                         (direct-method-ref
                          __t176710
                          'bind-core-syntax-expanders!)))
                    (if __tmp176715
                        __tmp176715
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!176713
               (make-promise
                (lambda ()
                  (let ((__tmp176716
                         (direct-method-ref
                          __t176710
                          'bind-core-macro-expanders!)))
                    (if __tmp176716
                        __tmp176716
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda172228172233_
                 (lambda (_self172230_ _bind?172231_)
                   (if (##fx< '2 (##structure-length _self172230_))
                       (begin
                         (##unchecked-structure-set!
                          _self172230_
                          'root
                          '1
                          (##structure-type _self172230_)
                          '#f)
                         (##unchecked-structure-set!
                          _self172230_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self172230_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self172230_
                              '2
                              (##vector-length _self172230_)))
                   (if _bind?172231_
                       (begin
                         ((force __bind-core-syntax-expanders!176712)
                          _self172230_)
                         ((force __bind-core-macro-expanders!176713)
                          _self172230_)
                         ((force __bind-core-features!176711) _self172230_))
                       '#!void))))
            (lambda _g176764_
              (let ((_g176763_ (##length _g176764_)))
                (cond ((##fx= _g176763_ 1)
                       (apply (lambda (_self172236_)
                                (let ((_bind?172238_ '#t))
                                  (_opt-lambda172228172233_
                                   _self172236_
                                   _bind?172238_)))
                              _g176764_))
                      ((##fx= _g176763_ 2)
                       (apply (lambda (_self172240_ _bind?172241_)
                                (_opt-lambda172228172233_
                                 _self172240_
                                 _bind?172241_))
                              _g176764_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g176764_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self172086_ _super172087_)
        (let ((_super172095_
               (let ((_$e172089_ _super172087_))
                 (if _$e172089_
                     _$e172089_
                     (let ((_$e172092_ (gx#core-context-root__0)))
                       (if _$e172092_
                           _$e172092_
                           (let ((__obj176752
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj176752)
                             __obj176752)))))))
          (if (##fx< '5 (##structure-length _self172086_))
              (begin
                (##unchecked-structure-set!
                 _self172086_
                 'top
                 '1
                 (##structure-type _self172086_)
                 '#f)
                (##unchecked-structure-set!
                 _self172086_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self172086_)
                 '#f)
                (##unchecked-structure-set!
                 _self172086_
                 _super172095_
                 '3
                 (##structure-type _self172086_)
                 '#f)
                (##unchecked-structure-set!
                 _self172086_
                 '#f
                 '4
                 (##structure-type _self172086_)
                 '#f)
                (##unchecked-structure-set!
                 _self172086_
                 '#f
                 '5
                 (##structure-type _self172086_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self172086_
                     '5
                     (##vector-length _self172086_))))))
    (define gx#top-context:::init!__0
      (lambda (_self172100_)
        (let ((_super172102_ '#f))
          (gx#top-context:::init!__% _self172100_ _super172102_))))
    (define gx#top-context:::init!
      (lambda _g176766_
        (let ((_g176765_ (##length _g176766_)))
          (cond ((##fx= _g176765_ 1)
                 (apply (lambda (_self172100_)
                          (gx#top-context:::init!__0 _self172100_))
                        _g176766_))
                ((##fx= _g176765_ 2)
                 (apply (lambda (_self172104_ _super172105_)
                          (gx#top-context:::init!__%
                           _self172104_
                           _super172105_))
                        _g176766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g176766_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self171817_ _bindings171818_)
        (for-each
         (lambda (_bind171820_)
           (let* ((_bind171821171828_ _bind171820_)
                  (_E171823171832_
                   (lambda ()
                     (error '"No clause matching" _bind171821171828_)))
                  (_K171824171941_
                   (lambda (_rest171835_ _id171836_)
                     (gx#core-context-put!
                      _self171817_
                      _id171836_
                      (let ((__obj176753
                             (##structure
                              gx#syntax-binding::t
                              '#f
                              '#f
                              '#f
                              '#f)))
                        (class-instance-init!
                         __obj176753
                         _id171836_
                         _id171836_
                         '#f
                         (let* ((_rest171837171848_ _rest171835_)
                                (_E171839171852_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _rest171837171848_)))
                                (_K171840171917_
                                 (lambda (_compiler171855_
                                          _expander171856_
                                          _key171857_)
                                   ((let* ((_key171858171871_ _key171857_)
                                           (_E171864171875_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _key171858171871_))))
                                      (let ((_K171869171911_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_K171868171904_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_K171867171896_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_K171866171888_
                                             (lambda () gx#make-special-form))
                                            (_K171865171880_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_try-match171863171883_
                                                (lambda ()
                                                  (if (##eq? _key171858171871_
                                                             'expr:)
                                                      (_K171865171880_)
                                                      (_E171864171875_))))
                                               (_try-match171862171891_
                                                (lambda ()
                                                  (if (##eq? _key171858171871_
                                                             'special:)
                                                      (_K171866171888_)
                                                      (_try-match171863171883_))))
                                               (_try-match171861171899_
                                                (lambda ()
                                                  (if (##eq? _key171858171871_
                                                             'define:)
                                                      (_K171867171896_)
                                                      (_try-match171862171891_))))
                                               (_try-match171860171907_
                                                (lambda ()
                                                  (if (##eq? _key171858171871_
                                                             'module:)
                                                      (_K171868171904_)
                                                      (_try-match171861171899_)))))
                                          (if (##eq? _key171858171871_ 'top:)
                                              (_K171869171911_)
                                              (_try-match171860171907_)))))
                                    _expander171856_
                                    _id171836_
                                    (let ((_$e171914_ _compiler171855_))
                                      (if _$e171914_
                                          _$e171914_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _rest171837171848_)
                               (let ((_hd171841171920_
                                      (##car _rest171837171848_))
                                     (_tl171842171922_
                                      (##cdr _rest171837171848_)))
                                 (let ((_key171925_ _hd171841171920_))
                                   (if (##pair? _tl171842171922_)
                                       (let ((_hd171843171927_
                                              (##car _tl171842171922_))
                                             (_tl171844171929_
                                              (##cdr _tl171842171922_)))
                                         (let ((_expander171932_
                                                _hd171843171927_))
                                           (if (##pair? _tl171844171929_)
                                               (let ((_hd171845171934_
                                                      (##car _tl171844171929_))
                                                     (_tl171846171936_
                                                      (##cdr _tl171844171929_)))
                                                 (let ((_compiler171939_
                                                        _hd171845171934_))
                                                   (if (##null? _tl171846171936_)
                                                       (_K171840171917_
                                                        _compiler171939_
                                                        _expander171932_
                                                        _key171925_)
                                                       (_E171839171852_))))
                                               (_E171839171852_))))
                                       (_E171839171852_))))
                               (_E171839171852_))))
                        __obj176753)))))
             (if (##pair? _bind171821171828_)
                 (let ((_hd171825171944_ (##car _bind171821171828_))
                       (_tl171826171946_ (##cdr _bind171821171828_)))
                   (let* ((_id171949_ _hd171825171944_)
                          (_rest171951_ _tl171826171946_))
                     (_K171824171941_ _rest171951_ _id171949_)))
                 (_E171823171832_))))
         _bindings171818_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self171956_)
        (let ((_bindings171958_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self171956_
           _bindings171958_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g176768_
        (let ((_g176767_ (##length _g176768_)))
          (cond ((##fx= _g176767_ 1)
                 (apply (lambda (_self171956_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self171956_))
                        _g176768_))
                ((##fx= _g176767_ 2)
                 (apply (lambda (_self171960_ _bindings171961_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self171960_
                           _bindings171961_))
                        _g176768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g176768_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self171589_ _bindings171590_)
        (for-each
         (lambda (_bind171592_)
           (let* ((_bind171593171600_ _bind171592_)
                  (_E171595171604_
                   (lambda ()
                     (error '"No clause matching" _bind171593171600_)))
                  (_K171596171672_
                   (lambda (_rest171607_ _id171608_)
                     (gx#core-context-put!
                      _self171589_
                      _id171608_
                      (let ((__obj176760
                             (##structure
                              gx#syntax-binding::t
                              '#f
                              '#f
                              '#f
                              '#f)))
                        (class-instance-init!
                         __obj176760
                         _id171608_
                         _id171608_
                         '#f
                         (let* ((_rest171609171624_ _rest171607_)
                                (_E171613171628_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _rest171609171624_))))
                           (let ((_K171618171657_
                                  (lambda (_core-id171655_)
                                    (let ((__obj176754
                                           (##structure
                                            gx#rename-macro-expander::t
                                            '#f)))
                                      (class-instance-init!
                                       __obj176754
                                       _core-id171655_)
                                      __obj176754)))
                                 (_K171615171642_
                                  (lambda (_proc171640_)
                                    (let ((__obj176755
                                           (##structure
                                            gx#macro-expander::t
                                            '#f)))
                                      (class-instance-init!
                                       __obj176755
                                       _proc171640_)
                                      __obj176755)))
                                 (_K171614171633_
                                  (lambda ()
                                    (let ((__obj176756
                                           (##structure
                                            gx#reserved-expander::t
                                            '#f)))
                                      (class-instance-init!
                                       __obj176756
                                       _id171608_)
                                      __obj176756))))
                             (let ((_try-match171612171636_
                                    (lambda ()
                                      (if (##null? _rest171609171624_)
                                          (_K171614171633_)
                                          (_E171613171628_)))))
                               (if (##pair? _rest171609171624_)
                                   (let ((_tl171620171662_
                                          (##cdr _rest171609171624_))
                                         (_hd171619171660_
                                          (##car _rest171609171624_)))
                                     (if (##eq? _hd171619171660_ '=>)
                                         (if (##pair? _tl171620171662_)
                                             (let ((_tl171622171667_
                                                    (##cdr _tl171620171662_))
                                                   (_hd171621171665_
                                                    (##car _tl171620171662_)))
                                               (if (##null? _tl171622171667_)
                                                   (let* ((_core-id171670_
                                                           _hd171621171665_)
                                                          (__obj176757
                                                           (##structure
                                                            gx#rename-macro-expander::t
                                                            '#f)))
                                                     (class-instance-init!
                                                      __obj176757
                                                      _core-id171670_)
                                                     __obj176757)
                                                   (_E171613171628_)))
                                             (if (##null? _tl171620171662_)
                                                 (let* ((_proc171650_
                                                         _hd171619171660_)
                                                        (__obj176758
                                                         (##structure
                                                          gx#macro-expander::t
                                                          '#f)))
                                                   (class-instance-init!
                                                    __obj176758
                                                    _proc171650_)
                                                   __obj176758)
                                                 (_E171613171628_)))
                                         (if (##null? _tl171620171662_)
                                             (let* ((_proc171650_
                                                     _hd171619171660_)
                                                    (__obj176759
                                                     (##structure
                                                      gx#macro-expander::t
                                                      '#f)))
                                               (class-instance-init!
                                                __obj176759
                                                _proc171650_)
                                               __obj176759)
                                             (_E171613171628_))))
                                   (_try-match171612171636_))))))
                        __obj176760)))))
             (if (##pair? _bind171593171600_)
                 (let ((_hd171597171675_ (##car _bind171593171600_))
                       (_tl171598171677_ (##cdr _bind171593171600_)))
                   (let* ((_id171680_ _hd171597171675_)
                          (_rest171682_ _tl171598171677_))
                     (_K171596171672_ _rest171682_ _id171680_)))
                 (_E171595171604_))))
         _bindings171590_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self171687_)
        (let ((_bindings171689_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self171687_
           _bindings171689_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g176770_
        (let ((_g176769_ (##length _g176770_)))
          (cond ((##fx= _g176769_ 1)
                 (apply (lambda (_self171687_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self171687_))
                        _g176770_))
                ((##fx= _g176769_ 2)
                 (apply (lambda (_self171691_ _bindings171692_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self171691_
                           _bindings171692_))
                        _g176770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g176770_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self171333_)
        (letrec ((_linux-variant?171335_
                  (lambda (_sys-type171434_)
                    (let* ((_g171435171443_
                            (string-split
                             (symbol->string _sys-type171434_)
                             '#\-))
                           (_else171437171451_ (lambda () '#f))
                           (_K171439171456_
                            (lambda (_rest171454_)
                              (not (null? _rest171454_)))))
                      (if (##pair? _g171435171443_)
                          (let ((_hd171440171459_ (##car _g171435171443_))
                                (_tl171441171461_ (##cdr _g171435171443_)))
                            (if (equal? _hd171440171459_ '"linux")
                                (let ((_rest171464_ _tl171441171461_))
                                  (_K171439171456_ _rest171464_))
                                (_else171437171451_)))
                          (_else171437171451_)))))
                 (_bsd-variant171336_
                  (lambda (_sys-type171393_)
                    (let ((_sys-type-str171395_
                           (symbol->string _sys-type171393_)))
                      (let _lp171397_ ((_rest171399_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest171400171408_ _rest171399_)
                               (_else171402171416_ (lambda () '#f))
                               (_K171404171422_
                                (lambda (_rest171419_ _sys171420_)
                                  (if (string-prefix?
                                       _sys171420_
                                       _sys-type-str171395_)
                                      _sys171420_
                                      (_lp171397_ _rest171419_)))))
                          (if (##pair? _rest171400171408_)
                              (let ((_hd171405171425_
                                     (##car _rest171400171408_))
                                    (_tl171406171427_
                                     (##cdr _rest171400171408_)))
                                (let* ((_sys171430_ _hd171405171425_)
                                       (_rest171432_ _tl171406171427_))
                                  (_K171404171422_ _rest171432_ _sys171430_)))
                              (_else171402171416_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self171333_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self171333_)
          (let* ((_g171337171349_ (system-type))
                 (_else171339171357_ (lambda () '#!void))
                 (_K171341171369_
                  (lambda (_sys-type171360_ _sys-vendor171361_ _sys-cpu171362_)
                    (gx#core-bind-feature!__%
                     _sys-cpu171362_
                     '#f
                     '0
                     _self171333_)
                    (gx#core-bind-feature!__%
                     _sys-type171360_
                     '#f
                     '0
                     _self171333_)
                    (if (_linux-variant?171335_ _sys-type171360_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self171333_)
                        (let ((_$e171364_
                               (_bsd-variant171336_ _sys-type171360_)))
                          (if _$e171364_
                              ((lambda (_sys-prefix171367_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self171333_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix171367_)
                                  '#f
                                  '0
                                  _self171333_))
                               _$e171364_)
                              '#!void))))))
            (if (##pair? _g171337171349_)
                (let ((_hd171342171372_ (##car _g171337171349_))
                      (_tl171343171374_ (##cdr _g171337171349_)))
                  (let ((_sys-cpu171377_ _hd171342171372_))
                    (if (##pair? _tl171343171374_)
                        (let ((_hd171344171379_ (##car _tl171343171374_))
                              (_tl171345171381_ (##cdr _tl171343171374_)))
                          (let ((_sys-vendor171384_ _hd171344171379_))
                            (if (##pair? _tl171345171381_)
                                (let ((_hd171346171386_
                                       (##car _tl171345171381_))
                                      (_tl171347171388_
                                       (##cdr _tl171345171381_)))
                                  (let ((_sys-type171391_ _hd171346171386_))
                                    (if (##null? _tl171347171388_)
                                        (_K171341171369_
                                         _sys-type171391_
                                         _sys-vendor171384_
                                         _sys-cpu171377_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self171333_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
