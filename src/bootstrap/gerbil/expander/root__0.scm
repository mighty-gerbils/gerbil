(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707734703)
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
      (lambda (_self174247_ _bind?174248_)
        (if (##fx< '2 (##structure-length _self174247_))
            (begin
              (##unchecked-structure-set!
               _self174247_
               'root
               '1
               (##structure-type _self174247_)
               '#f)
              (##unchecked-structure-set!
               _self174247_
               (make-table 'test: eq?)
               '2
               (##structure-type _self174247_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self174247_
                   '2
                   (##vector-length _self174247_)))
        (if _bind?174248_
            (begin
              (let ((__method178866
                     (method-ref _self174247_ 'bind-core-syntax-expanders!)))
                (if __method178866
                    (__method178866 _self174247_)
                    (error '"Missing method"
                           _self174247_
                           'bind-core-syntax-expanders!)))
              (let ((__method178867
                     (method-ref _self174247_ 'bind-core-macro-expanders!)))
                (if __method178867
                    (__method178867 _self174247_)
                    (error '"Missing method"
                           _self174247_
                           'bind-core-macro-expanders!)))
              (let ((__method178868
                     (method-ref _self174247_ 'bind-core-features!)))
                (if __method178868
                    (__method178868 _self174247_)
                    (error '"Missing method"
                           _self174247_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self174253_)
        (let ((_bind?174255_ '#t))
          (gx#root-context:::init!__% _self174253_ _bind?174255_))))
    (define gx#root-context:::init!
      (lambda _g178871_
        (let ((_g178870_ (##length _g178871_)))
          (cond ((##fx= _g178870_ 1)
                 (apply (lambda (_self174253_)
                          (gx#root-context:::init!__0 _self174253_))
                        _g178871_))
                ((##fx= _g178870_ 2)
                 (apply (lambda (_self174257_ _bind?174258_)
                          (gx#root-context:::init!__%
                           _self174257_
                           _bind?174258_))
                        _g178871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g178871_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t178827)
        (let ((__bind-core-features!178828
               (make-promise
                (lambda ()
                  (let ((__tmp178831
                         (direct-method-ref __t178827 'bind-core-features!)))
                    (if __tmp178831
                        __tmp178831
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!178829
               (make-promise
                (lambda ()
                  (let ((__tmp178832
                         (direct-method-ref
                          __t178827
                          'bind-core-macro-expanders!)))
                    (if __tmp178832
                        __tmp178832
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!178830
               (make-promise
                (lambda ()
                  (let ((__tmp178833
                         (direct-method-ref
                          __t178827
                          'bind-core-syntax-expanders!)))
                    (if __tmp178833
                        __tmp178833
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda174245174250_
                 (lambda (_self174247_ _bind?174248_)
                   (if (##fx< '2 (##structure-length _self174247_))
                       (begin
                         (##unchecked-structure-set!
                          _self174247_
                          'root
                          '1
                          (##structure-type _self174247_)
                          '#f)
                         (##unchecked-structure-set!
                          _self174247_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self174247_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self174247_
                              '2
                              (##vector-length _self174247_)))
                   (if _bind?174248_
                       (begin
                         ((force __bind-core-syntax-expanders!178830)
                          _self174247_)
                         ((force __bind-core-macro-expanders!178829)
                          _self174247_)
                         ((force __bind-core-features!178828) _self174247_))
                       '#!void))))
            (lambda _g178873_
              (let ((_g178872_ (##length _g178873_)))
                (cond ((##fx= _g178872_ 1)
                       (apply (lambda (_self174253_)
                                (let ((_bind?174255_ '#t))
                                  (_opt-lambda174245174250_
                                   _self174253_
                                   _bind?174255_)))
                              _g178873_))
                      ((##fx= _g178872_ 2)
                       (apply (lambda (_self174257_ _bind?174258_)
                                (_opt-lambda174245174250_
                                 _self174257_
                                 _bind?174258_))
                              _g178873_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g178873_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self174103_ _super174104_)
        (let ((_super174112_
               (let ((_$e174106_ _super174104_))
                 (if _$e174106_
                     _$e174106_
                     (let ((_$e174109_ (gx#core-context-root__0)))
                       (if _$e174109_
                           _$e174109_
                           (let ((__obj178869
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj178869)
                             __obj178869)))))))
          (if (##fx< '5 (##structure-length _self174103_))
              (begin
                (##unchecked-structure-set!
                 _self174103_
                 'top
                 '1
                 (##structure-type _self174103_)
                 '#f)
                (##unchecked-structure-set!
                 _self174103_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self174103_)
                 '#f)
                (##unchecked-structure-set!
                 _self174103_
                 _super174112_
                 '3
                 (##structure-type _self174103_)
                 '#f)
                (##unchecked-structure-set!
                 _self174103_
                 '#f
                 '4
                 (##structure-type _self174103_)
                 '#f)
                (##unchecked-structure-set!
                 _self174103_
                 '#f
                 '5
                 (##structure-type _self174103_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self174103_
                     '5
                     (##vector-length _self174103_))))))
    (define gx#top-context:::init!__0
      (lambda (_self174117_)
        (let ((_super174119_ '#f))
          (gx#top-context:::init!__% _self174117_ _super174119_))))
    (define gx#top-context:::init!
      (lambda _g178875_
        (let ((_g178874_ (##length _g178875_)))
          (cond ((##fx= _g178874_ 1)
                 (apply (lambda (_self174117_)
                          (gx#top-context:::init!__0 _self174117_))
                        _g178875_))
                ((##fx= _g178874_ 2)
                 (apply (lambda (_self174121_ _super174122_)
                          (gx#top-context:::init!__%
                           _self174121_
                           _super174122_))
                        _g178875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g178875_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self173834_ _bindings173835_)
        (for-each
         (lambda (_bind173837_)
           (let* ((_bind173838173845_ _bind173837_)
                  (_E173840173849_
                   (lambda ()
                     (error '"No clause matching" _bind173838173845_)))
                  (_K173841173958_
                   (lambda (_rest173852_ _id173853_)
                     (gx#core-context-put!
                      _self173834_
                      _id173853_
                      (##structure
                       gx#syntax-binding::t
                       _id173853_
                       _id173853_
                       '#f
                       (let* ((_rest173854173865_ _rest173852_)
                              (_E173856173869_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest173854173865_)))
                              (_K173857173934_
                               (lambda (_compiler173872_
                                        _expander173873_
                                        _key173874_)
                                 ((let* ((_key173875173888_ _key173874_)
                                         (_E173881173892_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key173875173888_))))
                                    (let ((_K173886173928_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K173885173921_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K173884173913_
                                           (lambda () gx#make-definition-form))
                                          (_K173883173905_
                                           (lambda () gx#make-special-form))
                                          (_K173882173897_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match173880173900_
                                              (lambda ()
                                                (if (##eq? _key173875173888_
                                                           'expr:)
                                                    (_K173882173897_)
                                                    (_E173881173892_))))
                                             (_try-match173879173908_
                                              (lambda ()
                                                (if (##eq? _key173875173888_
                                                           'special:)
                                                    (_K173883173905_)
                                                    (_try-match173880173900_))))
                                             (_try-match173878173916_
                                              (lambda ()
                                                (if (##eq? _key173875173888_
                                                           'define:)
                                                    (_K173884173913_)
                                                    (_try-match173879173908_))))
                                             (_try-match173877173924_
                                              (lambda ()
                                                (if (##eq? _key173875173888_
                                                           'module:)
                                                    (_K173885173921_)
                                                    (_try-match173878173916_)))))
                                        (if (##eq? _key173875173888_ 'top:)
                                            (_K173886173928_)
                                            (_try-match173877173924_)))))
                                  _expander173873_
                                  _id173853_
                                  (let ((_$e173931_ _compiler173872_))
                                    (if _$e173931_
                                        _$e173931_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest173854173865_)
                             (let ((_hd173858173937_
                                    (##car _rest173854173865_))
                                   (_tl173859173939_
                                    (##cdr _rest173854173865_)))
                               (let ((_key173942_ _hd173858173937_))
                                 (if (##pair? _tl173859173939_)
                                     (let ((_hd173860173944_
                                            (##car _tl173859173939_))
                                           (_tl173861173946_
                                            (##cdr _tl173859173939_)))
                                       (let ((_expander173949_
                                              _hd173860173944_))
                                         (if (##pair? _tl173861173946_)
                                             (let ((_hd173862173951_
                                                    (##car _tl173861173946_))
                                                   (_tl173863173953_
                                                    (##cdr _tl173861173946_)))
                                               (let ((_compiler173956_
                                                      _hd173862173951_))
                                                 (if (##null? _tl173863173953_)
                                                     (_K173857173934_
                                                      _compiler173956_
                                                      _expander173949_
                                                      _key173942_)
                                                     (_E173856173869_))))
                                             (_E173856173869_))))
                                     (_E173856173869_))))
                             (_E173856173869_))))))))
             (if (##pair? _bind173838173845_)
                 (let ((_hd173842173961_ (##car _bind173838173845_))
                       (_tl173843173963_ (##cdr _bind173838173845_)))
                   (let* ((_id173966_ _hd173842173961_)
                          (_rest173968_ _tl173843173963_))
                     (_K173841173958_ _rest173968_ _id173966_)))
                 (_E173840173849_))))
         _bindings173835_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self173973_)
        (let ((_bindings173975_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self173973_
           _bindings173975_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g178877_
        (let ((_g178876_ (##length _g178877_)))
          (cond ((##fx= _g178876_ 1)
                 (apply (lambda (_self173973_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self173973_))
                        _g178877_))
                ((##fx= _g178876_ 2)
                 (apply (lambda (_self173977_ _bindings173978_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self173977_
                           _bindings173978_))
                        _g178877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g178877_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self173606_ _bindings173607_)
        (for-each
         (lambda (_bind173609_)
           (let* ((_bind173610173617_ _bind173609_)
                  (_E173612173621_
                   (lambda ()
                     (error '"No clause matching" _bind173610173617_)))
                  (_K173613173689_
                   (lambda (_rest173624_ _id173625_)
                     (gx#core-context-put!
                      _self173606_
                      _id173625_
                      (##structure
                       gx#syntax-binding::t
                       _id173625_
                       _id173625_
                       '#f
                       (let* ((_rest173626173641_ _rest173624_)
                              (_E173630173645_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest173626173641_))))
                         (let ((_K173635173674_
                                (lambda (_core-id173672_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id173672_)))
                               (_K173632173659_
                                (lambda (_proc173657_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc173657_)))
                               (_K173631173650_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id173625_))))
                           (let ((_try-match173629173653_
                                  (lambda ()
                                    (if (##null? _rest173626173641_)
                                        (_K173631173650_)
                                        (_E173630173645_)))))
                             (if (##pair? _rest173626173641_)
                                 (let ((_tl173637173679_
                                        (##cdr _rest173626173641_))
                                       (_hd173636173677_
                                        (##car _rest173626173641_)))
                                   (if (##eq? _hd173636173677_ '=>)
                                       (if (##pair? _tl173637173679_)
                                           (let ((_tl173639173684_
                                                  (##cdr _tl173637173679_))
                                                 (_hd173638173682_
                                                  (##car _tl173637173679_)))
                                             (if (##null? _tl173639173684_)
                                                 (let ((_core-id173687_
                                                        _hd173638173682_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id173687_))
                                                 (_E173630173645_)))
                                           (if (##null? _tl173637173679_)
                                               (let ((_proc173667_
                                                      _hd173636173677_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc173667_))
                                               (_E173630173645_)))
                                       (if (##null? _tl173637173679_)
                                           (let ((_proc173667_
                                                  _hd173636173677_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc173667_))
                                           (_E173630173645_))))
                                 (_try-match173629173653_))))))))))
             (if (##pair? _bind173610173617_)
                 (let ((_hd173614173692_ (##car _bind173610173617_))
                       (_tl173615173694_ (##cdr _bind173610173617_)))
                   (let* ((_id173697_ _hd173614173692_)
                          (_rest173699_ _tl173615173694_))
                     (_K173613173689_ _rest173699_ _id173697_)))
                 (_E173612173621_))))
         _bindings173607_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self173704_)
        (let ((_bindings173706_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self173704_
           _bindings173706_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g178879_
        (let ((_g178878_ (##length _g178879_)))
          (cond ((##fx= _g178878_ 1)
                 (apply (lambda (_self173704_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self173704_))
                        _g178879_))
                ((##fx= _g178878_ 2)
                 (apply (lambda (_self173708_ _bindings173709_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self173708_
                           _bindings173709_))
                        _g178879_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g178879_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self173350_)
        (letrec ((_linux-variant?173352_
                  (lambda (_sys-type173451_)
                    (let* ((_g173452173460_
                            (string-split
                             (symbol->string _sys-type173451_)
                             '#\-))
                           (_else173454173468_ (lambda () '#f))
                           (_K173456173473_
                            (lambda (_rest173471_)
                              (not (null? _rest173471_)))))
                      (if (##pair? _g173452173460_)
                          (let ((_hd173457173476_ (##car _g173452173460_))
                                (_tl173458173478_ (##cdr _g173452173460_)))
                            (if (equal? _hd173457173476_ '"linux")
                                (let ((_rest173481_ _tl173458173478_))
                                  (_K173456173473_ _rest173481_))
                                (_else173454173468_)))
                          (_else173454173468_)))))
                 (_bsd-variant173353_
                  (lambda (_sys-type173410_)
                    (let ((_sys-type-str173412_
                           (symbol->string _sys-type173410_)))
                      (let _lp173414_ ((_rest173416_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest173417173425_ _rest173416_)
                               (_else173419173433_ (lambda () '#f))
                               (_K173421173439_
                                (lambda (_rest173436_ _sys173437_)
                                  (if (string-prefix?
                                       _sys173437_
                                       _sys-type-str173412_)
                                      _sys173437_
                                      (_lp173414_ _rest173436_)))))
                          (if (##pair? _rest173417173425_)
                              (let ((_hd173422173442_
                                     (##car _rest173417173425_))
                                    (_tl173423173444_
                                     (##cdr _rest173417173425_)))
                                (let* ((_sys173447_ _hd173422173442_)
                                       (_rest173449_ _tl173423173444_))
                                  (_K173421173439_ _rest173449_ _sys173447_)))
                              (_else173419173433_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self173350_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self173350_)
          (let* ((_g173354173366_ (system-type))
                 (_else173356173374_ (lambda () '#!void))
                 (_K173358173386_
                  (lambda (_sys-type173377_ _sys-vendor173378_ _sys-cpu173379_)
                    (gx#core-bind-feature!__%
                     _sys-cpu173379_
                     '#f
                     '0
                     _self173350_)
                    (gx#core-bind-feature!__%
                     _sys-type173377_
                     '#f
                     '0
                     _self173350_)
                    (if (_linux-variant?173352_ _sys-type173377_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self173350_)
                        (let ((_$e173381_
                               (_bsd-variant173353_ _sys-type173377_)))
                          (if _$e173381_
                              ((lambda (_sys-prefix173384_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self173350_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix173384_)
                                  '#f
                                  '0
                                  _self173350_))
                               _$e173381_)
                              '#!void))))))
            (if (##pair? _g173354173366_)
                (let ((_hd173359173389_ (##car _g173354173366_))
                      (_tl173360173391_ (##cdr _g173354173366_)))
                  (let ((_sys-cpu173394_ _hd173359173389_))
                    (if (##pair? _tl173360173391_)
                        (let ((_hd173361173396_ (##car _tl173360173391_))
                              (_tl173362173398_ (##cdr _tl173360173391_)))
                          (let ((_sys-vendor173401_ _hd173361173396_))
                            (if (##pair? _tl173362173398_)
                                (let ((_hd173363173403_
                                       (##car _tl173362173398_))
                                      (_tl173364173405_
                                       (##cdr _tl173362173398_)))
                                  (let ((_sys-type173408_ _hd173363173403_))
                                    (if (##null? _tl173364173405_)
                                        (_K173358173386_
                                         _sys-type173408_
                                         _sys-vendor173401_
                                         _sys-cpu173394_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self173350_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
