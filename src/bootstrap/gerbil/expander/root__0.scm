(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707674932)
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
      (lambda (_self174238_ _bind?174239_)
        (if (##fx< '2 (##structure-length _self174238_))
            (begin
              (##unchecked-structure-set!
               _self174238_
               'root
               '1
               (##structure-type _self174238_)
               '#f)
              (##unchecked-structure-set!
               _self174238_
               (make-table 'test: eq?)
               '2
               (##structure-type _self174238_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self174238_
                   '2
                   (##vector-length _self174238_)))
        (if _bind?174239_
            (begin
              (let ((__method178857
                     (method-ref _self174238_ 'bind-core-syntax-expanders!)))
                (if __method178857
                    (__method178857 _self174238_)
                    (error '"Missing method"
                           _self174238_
                           'bind-core-syntax-expanders!)))
              (let ((__method178858
                     (method-ref _self174238_ 'bind-core-macro-expanders!)))
                (if __method178858
                    (__method178858 _self174238_)
                    (error '"Missing method"
                           _self174238_
                           'bind-core-macro-expanders!)))
              (let ((__method178859
                     (method-ref _self174238_ 'bind-core-features!)))
                (if __method178859
                    (__method178859 _self174238_)
                    (error '"Missing method"
                           _self174238_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self174244_)
        (let ((_bind?174246_ '#t))
          (gx#root-context:::init!__% _self174244_ _bind?174246_))))
    (define gx#root-context:::init!
      (lambda _g178862_
        (let ((_g178861_ (##length _g178862_)))
          (cond ((##fx= _g178861_ 1)
                 (apply (lambda (_self174244_)
                          (gx#root-context:::init!__0 _self174244_))
                        _g178862_))
                ((##fx= _g178861_ 2)
                 (apply (lambda (_self174248_ _bind?174249_)
                          (gx#root-context:::init!__%
                           _self174248_
                           _bind?174249_))
                        _g178862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g178862_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t178818)
        (let ((__bind-core-features!178819
               (make-promise
                (lambda ()
                  (let ((__tmp178822
                         (direct-method-ref __t178818 'bind-core-features!)))
                    (if __tmp178822
                        __tmp178822
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!178820
               (make-promise
                (lambda ()
                  (let ((__tmp178823
                         (direct-method-ref
                          __t178818
                          'bind-core-syntax-expanders!)))
                    (if __tmp178823
                        __tmp178823
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!178821
               (make-promise
                (lambda ()
                  (let ((__tmp178824
                         (direct-method-ref
                          __t178818
                          'bind-core-macro-expanders!)))
                    (if __tmp178824
                        __tmp178824
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda174236174241_
                 (lambda (_self174238_ _bind?174239_)
                   (if (##fx< '2 (##structure-length _self174238_))
                       (begin
                         (##unchecked-structure-set!
                          _self174238_
                          'root
                          '1
                          (##structure-type _self174238_)
                          '#f)
                         (##unchecked-structure-set!
                          _self174238_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self174238_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self174238_
                              '2
                              (##vector-length _self174238_)))
                   (if _bind?174239_
                       (begin
                         ((force __bind-core-syntax-expanders!178820)
                          _self174238_)
                         ((force __bind-core-macro-expanders!178821)
                          _self174238_)
                         ((force __bind-core-features!178819) _self174238_))
                       '#!void))))
            (lambda _g178864_
              (let ((_g178863_ (##length _g178864_)))
                (cond ((##fx= _g178863_ 1)
                       (apply (lambda (_self174244_)
                                (let ((_bind?174246_ '#t))
                                  (_opt-lambda174236174241_
                                   _self174244_
                                   _bind?174246_)))
                              _g178864_))
                      ((##fx= _g178863_ 2)
                       (apply (lambda (_self174248_ _bind?174249_)
                                (_opt-lambda174236174241_
                                 _self174248_
                                 _bind?174249_))
                              _g178864_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g178864_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self174094_ _super174095_)
        (let ((_super174103_
               (let ((_$e174097_ _super174095_))
                 (if _$e174097_
                     _$e174097_
                     (let ((_$e174100_ (gx#core-context-root__0)))
                       (if _$e174100_
                           _$e174100_
                           (let ((__obj178860
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj178860)
                             __obj178860)))))))
          (if (##fx< '5 (##structure-length _self174094_))
              (begin
                (##unchecked-structure-set!
                 _self174094_
                 'top
                 '1
                 (##structure-type _self174094_)
                 '#f)
                (##unchecked-structure-set!
                 _self174094_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self174094_)
                 '#f)
                (##unchecked-structure-set!
                 _self174094_
                 _super174103_
                 '3
                 (##structure-type _self174094_)
                 '#f)
                (##unchecked-structure-set!
                 _self174094_
                 '#f
                 '4
                 (##structure-type _self174094_)
                 '#f)
                (##unchecked-structure-set!
                 _self174094_
                 '#f
                 '5
                 (##structure-type _self174094_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self174094_
                     '5
                     (##vector-length _self174094_))))))
    (define gx#top-context:::init!__0
      (lambda (_self174108_)
        (let ((_super174110_ '#f))
          (gx#top-context:::init!__% _self174108_ _super174110_))))
    (define gx#top-context:::init!
      (lambda _g178866_
        (let ((_g178865_ (##length _g178866_)))
          (cond ((##fx= _g178865_ 1)
                 (apply (lambda (_self174108_)
                          (gx#top-context:::init!__0 _self174108_))
                        _g178866_))
                ((##fx= _g178865_ 2)
                 (apply (lambda (_self174112_ _super174113_)
                          (gx#top-context:::init!__%
                           _self174112_
                           _super174113_))
                        _g178866_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g178866_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self173825_ _bindings173826_)
        (for-each
         (lambda (_bind173828_)
           (let* ((_bind173829173836_ _bind173828_)
                  (_E173831173840_
                   (lambda ()
                     (error '"No clause matching" _bind173829173836_)))
                  (_K173832173949_
                   (lambda (_rest173843_ _id173844_)
                     (gx#core-context-put!
                      _self173825_
                      _id173844_
                      (##structure
                       gx#syntax-binding::t
                       _id173844_
                       _id173844_
                       '#f
                       (let* ((_rest173845173856_ _rest173843_)
                              (_E173847173860_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest173845173856_)))
                              (_K173848173925_
                               (lambda (_compiler173863_
                                        _expander173864_
                                        _key173865_)
                                 ((let* ((_key173866173879_ _key173865_)
                                         (_E173872173883_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key173866173879_))))
                                    (let ((_K173877173919_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K173876173912_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K173875173904_
                                           (lambda () gx#make-definition-form))
                                          (_K173874173896_
                                           (lambda () gx#make-special-form))
                                          (_K173873173888_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match173871173891_
                                              (lambda ()
                                                (if (##eq? _key173866173879_
                                                           'expr:)
                                                    (_K173873173888_)
                                                    (_E173872173883_))))
                                             (_try-match173870173899_
                                              (lambda ()
                                                (if (##eq? _key173866173879_
                                                           'special:)
                                                    (_K173874173896_)
                                                    (_try-match173871173891_))))
                                             (_try-match173869173907_
                                              (lambda ()
                                                (if (##eq? _key173866173879_
                                                           'define:)
                                                    (_K173875173904_)
                                                    (_try-match173870173899_))))
                                             (_try-match173868173915_
                                              (lambda ()
                                                (if (##eq? _key173866173879_
                                                           'module:)
                                                    (_K173876173912_)
                                                    (_try-match173869173907_)))))
                                        (if (##eq? _key173866173879_ 'top:)
                                            (_K173877173919_)
                                            (_try-match173868173915_)))))
                                  _expander173864_
                                  _id173844_
                                  (let ((_$e173922_ _compiler173863_))
                                    (if _$e173922_
                                        _$e173922_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest173845173856_)
                             (let ((_hd173849173928_
                                    (##car _rest173845173856_))
                                   (_tl173850173930_
                                    (##cdr _rest173845173856_)))
                               (let ((_key173933_ _hd173849173928_))
                                 (if (##pair? _tl173850173930_)
                                     (let ((_hd173851173935_
                                            (##car _tl173850173930_))
                                           (_tl173852173937_
                                            (##cdr _tl173850173930_)))
                                       (let ((_expander173940_
                                              _hd173851173935_))
                                         (if (##pair? _tl173852173937_)
                                             (let ((_hd173853173942_
                                                    (##car _tl173852173937_))
                                                   (_tl173854173944_
                                                    (##cdr _tl173852173937_)))
                                               (let ((_compiler173947_
                                                      _hd173853173942_))
                                                 (if (##null? _tl173854173944_)
                                                     (_K173848173925_
                                                      _compiler173947_
                                                      _expander173940_
                                                      _key173933_)
                                                     (_E173847173860_))))
                                             (_E173847173860_))))
                                     (_E173847173860_))))
                             (_E173847173860_))))))))
             (if (##pair? _bind173829173836_)
                 (let ((_hd173833173952_ (##car _bind173829173836_))
                       (_tl173834173954_ (##cdr _bind173829173836_)))
                   (let* ((_id173957_ _hd173833173952_)
                          (_rest173959_ _tl173834173954_))
                     (_K173832173949_ _rest173959_ _id173957_)))
                 (_E173831173840_))))
         _bindings173826_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self173964_)
        (let ((_bindings173966_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self173964_
           _bindings173966_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g178868_
        (let ((_g178867_ (##length _g178868_)))
          (cond ((##fx= _g178867_ 1)
                 (apply (lambda (_self173964_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self173964_))
                        _g178868_))
                ((##fx= _g178867_ 2)
                 (apply (lambda (_self173968_ _bindings173969_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self173968_
                           _bindings173969_))
                        _g178868_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g178868_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self173597_ _bindings173598_)
        (for-each
         (lambda (_bind173600_)
           (let* ((_bind173601173608_ _bind173600_)
                  (_E173603173612_
                   (lambda ()
                     (error '"No clause matching" _bind173601173608_)))
                  (_K173604173680_
                   (lambda (_rest173615_ _id173616_)
                     (gx#core-context-put!
                      _self173597_
                      _id173616_
                      (##structure
                       gx#syntax-binding::t
                       _id173616_
                       _id173616_
                       '#f
                       (let* ((_rest173617173632_ _rest173615_)
                              (_E173621173636_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest173617173632_))))
                         (let ((_K173626173665_
                                (lambda (_core-id173663_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id173663_)))
                               (_K173623173650_
                                (lambda (_proc173648_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc173648_)))
                               (_K173622173641_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id173616_))))
                           (let ((_try-match173620173644_
                                  (lambda ()
                                    (if (##null? _rest173617173632_)
                                        (_K173622173641_)
                                        (_E173621173636_)))))
                             (if (##pair? _rest173617173632_)
                                 (let ((_tl173628173670_
                                        (##cdr _rest173617173632_))
                                       (_hd173627173668_
                                        (##car _rest173617173632_)))
                                   (if (##eq? _hd173627173668_ '=>)
                                       (if (##pair? _tl173628173670_)
                                           (let ((_tl173630173675_
                                                  (##cdr _tl173628173670_))
                                                 (_hd173629173673_
                                                  (##car _tl173628173670_)))
                                             (if (##null? _tl173630173675_)
                                                 (let ((_core-id173678_
                                                        _hd173629173673_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id173678_))
                                                 (_E173621173636_)))
                                           (if (##null? _tl173628173670_)
                                               (let ((_proc173658_
                                                      _hd173627173668_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc173658_))
                                               (_E173621173636_)))
                                       (if (##null? _tl173628173670_)
                                           (let ((_proc173658_
                                                  _hd173627173668_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc173658_))
                                           (_E173621173636_))))
                                 (_try-match173620173644_))))))))))
             (if (##pair? _bind173601173608_)
                 (let ((_hd173605173683_ (##car _bind173601173608_))
                       (_tl173606173685_ (##cdr _bind173601173608_)))
                   (let* ((_id173688_ _hd173605173683_)
                          (_rest173690_ _tl173606173685_))
                     (_K173604173680_ _rest173690_ _id173688_)))
                 (_E173603173612_))))
         _bindings173598_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self173695_)
        (let ((_bindings173697_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self173695_
           _bindings173697_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g178870_
        (let ((_g178869_ (##length _g178870_)))
          (cond ((##fx= _g178869_ 1)
                 (apply (lambda (_self173695_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self173695_))
                        _g178870_))
                ((##fx= _g178869_ 2)
                 (apply (lambda (_self173699_ _bindings173700_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self173699_
                           _bindings173700_))
                        _g178870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g178870_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self173341_)
        (letrec ((_linux-variant?173343_
                  (lambda (_sys-type173442_)
                    (let* ((_g173443173451_
                            (string-split
                             (symbol->string _sys-type173442_)
                             '#\-))
                           (_else173445173459_ (lambda () '#f))
                           (_K173447173464_
                            (lambda (_rest173462_)
                              (not (null? _rest173462_)))))
                      (if (##pair? _g173443173451_)
                          (let ((_hd173448173467_ (##car _g173443173451_))
                                (_tl173449173469_ (##cdr _g173443173451_)))
                            (if (equal? _hd173448173467_ '"linux")
                                (let ((_rest173472_ _tl173449173469_))
                                  (_K173447173464_ _rest173472_))
                                (_else173445173459_)))
                          (_else173445173459_)))))
                 (_bsd-variant173344_
                  (lambda (_sys-type173401_)
                    (let ((_sys-type-str173403_
                           (symbol->string _sys-type173401_)))
                      (let _lp173405_ ((_rest173407_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest173408173416_ _rest173407_)
                               (_else173410173424_ (lambda () '#f))
                               (_K173412173430_
                                (lambda (_rest173427_ _sys173428_)
                                  (if (string-prefix?
                                       _sys173428_
                                       _sys-type-str173403_)
                                      _sys173428_
                                      (_lp173405_ _rest173427_)))))
                          (if (##pair? _rest173408173416_)
                              (let ((_hd173413173433_
                                     (##car _rest173408173416_))
                                    (_tl173414173435_
                                     (##cdr _rest173408173416_)))
                                (let* ((_sys173438_ _hd173413173433_)
                                       (_rest173440_ _tl173414173435_))
                                  (_K173412173430_ _rest173440_ _sys173438_)))
                              (_else173410173424_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self173341_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self173341_)
          (let* ((_g173345173357_ (system-type))
                 (_else173347173365_ (lambda () '#!void))
                 (_K173349173377_
                  (lambda (_sys-type173368_ _sys-vendor173369_ _sys-cpu173370_)
                    (gx#core-bind-feature!__%
                     _sys-cpu173370_
                     '#f
                     '0
                     _self173341_)
                    (gx#core-bind-feature!__%
                     _sys-type173368_
                     '#f
                     '0
                     _self173341_)
                    (if (_linux-variant?173343_ _sys-type173368_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self173341_)
                        (let ((_$e173372_
                               (_bsd-variant173344_ _sys-type173368_)))
                          (if _$e173372_
                              ((lambda (_sys-prefix173375_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self173341_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix173375_)
                                  '#f
                                  '0
                                  _self173341_))
                               _$e173372_)
                              '#!void))))))
            (if (##pair? _g173345173357_)
                (let ((_hd173350173380_ (##car _g173345173357_))
                      (_tl173351173382_ (##cdr _g173345173357_)))
                  (let ((_sys-cpu173385_ _hd173350173380_))
                    (if (##pair? _tl173351173382_)
                        (let ((_hd173352173387_ (##car _tl173351173382_))
                              (_tl173353173389_ (##cdr _tl173351173382_)))
                          (let ((_sys-vendor173392_ _hd173352173387_))
                            (if (##pair? _tl173353173389_)
                                (let ((_hd173354173394_
                                       (##car _tl173353173389_))
                                      (_tl173355173396_
                                       (##cdr _tl173353173389_)))
                                  (let ((_sys-type173399_ _hd173354173394_))
                                    (if (##null? _tl173355173396_)
                                        (_K173349173377_
                                         _sys-type173399_
                                         _sys-vendor173392_
                                         _sys-cpu173385_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self173341_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
