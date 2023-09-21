(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1695292397)
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
      (lambda (_self19061_ _bind?19062_)
        (if (##fx< '2 (##vector-length _self19061_))
            (begin
              (##vector-set! _self19061_ '1 'root)
              (##vector-set! _self19061_ '2 (make-table 'test: eq?)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self19061_))
        (if _bind?19062_
            (begin
              (let ((__method19112
                     (method-ref _self19061_ 'bind-core-syntax-expanders!)))
                (if __method19112
                    (__method19112 _self19061_)
                    (error '"Missing method"
                           _self19061_
                           'bind-core-syntax-expanders!)))
              (let ((__method19113
                     (method-ref _self19061_ 'bind-core-macro-expanders!)))
                (if __method19113
                    (__method19113 _self19061_)
                    (error '"Missing method"
                           _self19061_
                           'bind-core-macro-expanders!)))
              (let ((__method19114
                     (method-ref _self19061_ 'bind-core-features!)))
                (if __method19114
                    (__method19114 _self19061_)
                    (error '"Missing method"
                           _self19061_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self19067_)
        (let ((_bind?19069_ '#t))
          (gx#root-context:::init!__% _self19067_ _bind?19069_))))
    (define gx#root-context:::init!
      (lambda _g19117_
        (let ((_g19116_ (##length _g19117_)))
          (cond ((##fx= _g19116_ 1)
                 (apply (lambda (_self19067_)
                          (gx#root-context:::init!__0 _self19067_))
                        _g19117_))
                ((##fx= _g19116_ 2)
                 (apply (lambda (_self19071_ _bind?19072_)
                          (gx#root-context:::init!__%
                           _self19071_
                           _bind?19072_))
                        _g19117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g19117_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t19073)
        (let ((__bind-core-macro-expanders!19074
               (make-promise
                (lambda ()
                  (let ((__tmp19077
                         (direct-method-ref
                          __t19073
                          'bind-core-macro-expanders!)))
                    (if __tmp19077
                        __tmp19077
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!19075
               (make-promise
                (lambda ()
                  (let ((__tmp19078
                         (direct-method-ref __t19073 'bind-core-features!)))
                    (if __tmp19078
                        __tmp19078
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!19076
               (make-promise
                (lambda ()
                  (let ((__tmp19079
                         (direct-method-ref
                          __t19073
                          'bind-core-syntax-expanders!)))
                    (if __tmp19079
                        __tmp19079
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda1905919064_
                 (lambda (_self19061_ _bind?19062_)
                   (if (##fx< '2 (##vector-length _self19061_))
                       (begin
                         (##vector-set! _self19061_ '1 'root)
                         (##vector-set!
                          _self19061_
                          '2
                          (make-table 'test: eq?)))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self19061_))
                   (if _bind?19062_
                       (begin
                         ((force __bind-core-syntax-expanders!19076)
                          _self19061_)
                         ((force __bind-core-macro-expanders!19074)
                          _self19061_)
                         ((force __bind-core-features!19075) _self19061_))
                       '#!void))))
            (lambda _g19119_
              (let ((_g19118_ (##length _g19119_)))
                (cond ((##fx= _g19118_ 1)
                       (apply (lambda (_self19067_)
                                (let ((_bind?19069_ '#t))
                                  (_opt-lambda1905919064_
                                   _self19067_
                                   _bind?19069_)))
                              _g19119_))
                      ((##fx= _g19118_ 2)
                       (apply (lambda (_self19071_ _bind?19072_)
                                (_opt-lambda1905919064_
                                 _self19071_
                                 _bind?19072_))
                              _g19119_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g19119_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self18917_ _super18918_)
        (let ((_super18926_
               (let ((_$e18920_ _super18918_))
                 (if _$e18920_
                     _$e18920_
                     (let ((_$e18923_ (gx#core-context-root__0)))
                       (if _$e18923_
                           _$e18923_
                           (let ((__obj19115
                                  (make-object gx#root-context::t '2)))
                             (gx#root-context:::init!__0 __obj19115)
                             __obj19115)))))))
          (if (##fx< '5 (##vector-length _self18917_))
              (begin
                (##vector-set! _self18917_ '1 'top)
                (##vector-set! _self18917_ '2 (make-table 'test: eq?))
                (##vector-set! _self18917_ '3 _super18926_)
                (##vector-set! _self18917_ '4 '#f)
                (##vector-set! _self18917_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self18917_)))))
    (define gx#top-context:::init!__0
      (lambda (_self18931_)
        (let ((_super18933_ '#f))
          (gx#top-context:::init!__% _self18931_ _super18933_))))
    (define gx#top-context:::init!
      (lambda _g19121_
        (let ((_g19120_ (##length _g19121_)))
          (cond ((##fx= _g19120_ 1)
                 (apply (lambda (_self18931_)
                          (gx#top-context:::init!__0 _self18931_))
                        _g19121_))
                ((##fx= _g19120_ 2)
                 (apply (lambda (_self18935_ _super18936_)
                          (gx#top-context:::init!__% _self18935_ _super18936_))
                        _g19121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g19121_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self18648_ _bindings18649_)
        (for-each
         (lambda (_bind18651_)
           (let* ((_bind1865218659_ _bind18651_)
                  (_E1865418663_
                   (lambda () (error '"No clause matching" _bind1865218659_)))
                  (_K1865518772_
                   (lambda (_rest18666_ _id18667_)
                     (gx#core-context-put!
                      _self18648_
                      _id18667_
                      (##structure
                       gx#syntax-binding::t
                       _id18667_
                       _id18667_
                       '#f
                       (let* ((_rest1866818679_ _rest18666_)
                              (_E1867018683_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1866818679_)))
                              (_K1867118748_
                               (lambda (_compiler18686_
                                        _expander18687_
                                        _key18688_)
                                 ((let* ((_key1868918702_ _key18688_)
                                         (_E1869518706_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1868918702_))))
                                    (let ((_K1870018742_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K1869918735_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K1869818727_
                                           (lambda () gx#make-definition-form))
                                          (_K1869718719_
                                           (lambda () gx#make-special-form))
                                          (_K1869618711_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match1869418714_
                                              (lambda ()
                                                (if (##eq? _key1868918702_
                                                           'expr:)
                                                    (_K1869618711_)
                                                    (_E1869518706_))))
                                             (_try-match1869318722_
                                              (lambda ()
                                                (if (##eq? _key1868918702_
                                                           'special:)
                                                    (_K1869718719_)
                                                    (_try-match1869418714_))))
                                             (_try-match1869218730_
                                              (lambda ()
                                                (if (##eq? _key1868918702_
                                                           'define:)
                                                    (_K1869818727_)
                                                    (_try-match1869318722_))))
                                             (_try-match1869118738_
                                              (lambda ()
                                                (if (##eq? _key1868918702_
                                                           'module:)
                                                    (_K1869918735_)
                                                    (_try-match1869218730_)))))
                                        (if (##eq? _key1868918702_ 'top:)
                                            (_K1870018742_)
                                            (_try-match1869118738_)))))
                                  _expander18687_
                                  _id18667_
                                  (let ((_$e18745_ _compiler18686_))
                                    (if _$e18745_
                                        _$e18745_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1866818679_)
                             (let ((_hd1867218751_ (##car _rest1866818679_))
                                   (_tl1867318753_ (##cdr _rest1866818679_)))
                               (let ((_key18756_ _hd1867218751_))
                                 (if (##pair? _tl1867318753_)
                                     (let ((_hd1867418758_
                                            (##car _tl1867318753_))
                                           (_tl1867518760_
                                            (##cdr _tl1867318753_)))
                                       (let ((_expander18763_ _hd1867418758_))
                                         (if (##pair? _tl1867518760_)
                                             (let ((_hd1867618765_
                                                    (##car _tl1867518760_))
                                                   (_tl1867718767_
                                                    (##cdr _tl1867518760_)))
                                               (let ((_compiler18770_
                                                      _hd1867618765_))
                                                 (if (##null? _tl1867718767_)
                                                     (_K1867118748_
                                                      _compiler18770_
                                                      _expander18763_
                                                      _key18756_)
                                                     (_E1867018683_))))
                                             (_E1867018683_))))
                                     (_E1867018683_))))
                             (_E1867018683_))))))))
             (if (##pair? _bind1865218659_)
                 (let ((_hd1865618775_ (##car _bind1865218659_))
                       (_tl1865718777_ (##cdr _bind1865218659_)))
                   (let* ((_id18780_ _hd1865618775_)
                          (_rest18782_ _tl1865718777_))
                     (_K1865518772_ _rest18782_ _id18780_)))
                 (_E1865418663_))))
         _bindings18649_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self18787_)
        (let ((_bindings18789_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self18787_
           _bindings18789_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g19123_
        (let ((_g19122_ (##length _g19123_)))
          (cond ((##fx= _g19122_ 1)
                 (apply (lambda (_self18787_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self18787_))
                        _g19123_))
                ((##fx= _g19122_ 2)
                 (apply (lambda (_self18791_ _bindings18792_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self18791_
                           _bindings18792_))
                        _g19123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g19123_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self18420_ _bindings18421_)
        (for-each
         (lambda (_bind18423_)
           (let* ((_bind1842418431_ _bind18423_)
                  (_E1842618435_
                   (lambda () (error '"No clause matching" _bind1842418431_)))
                  (_K1842718503_
                   (lambda (_rest18438_ _id18439_)
                     (gx#core-context-put!
                      _self18420_
                      _id18439_
                      (##structure
                       gx#syntax-binding::t
                       _id18439_
                       _id18439_
                       '#f
                       (let* ((_rest1844018455_ _rest18438_)
                              (_E1844418459_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1844018455_))))
                         (let ((_K1844918488_
                                (lambda (_core-id18486_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id18486_)))
                               (_K1844618473_
                                (lambda (_proc18471_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc18471_)))
                               (_K1844518464_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id18439_))))
                           (let ((_try-match1844318467_
                                  (lambda ()
                                    (if (##null? _rest1844018455_)
                                        (_K1844518464_)
                                        (_E1844418459_)))))
                             (if (##pair? _rest1844018455_)
                                 (let ((_tl1845118493_
                                        (##cdr _rest1844018455_))
                                       (_hd1845018491_
                                        (##car _rest1844018455_)))
                                   (if (##eq? _hd1845018491_ '=>)
                                       (if (##pair? _tl1845118493_)
                                           (let ((_tl1845318498_
                                                  (##cdr _tl1845118493_))
                                                 (_hd1845218496_
                                                  (##car _tl1845118493_)))
                                             (if (##null? _tl1845318498_)
                                                 (let ((_core-id18501_
                                                        _hd1845218496_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id18501_))
                                                 (_E1844418459_)))
                                           (if (##null? _tl1845118493_)
                                               (let ((_proc18481_
                                                      _hd1845018491_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc18481_))
                                               (_E1844418459_)))
                                       (if (##null? _tl1845118493_)
                                           (let ((_proc18481_ _hd1845018491_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc18481_))
                                           (_E1844418459_))))
                                 (_try-match1844318467_))))))))))
             (if (##pair? _bind1842418431_)
                 (let ((_hd1842818506_ (##car _bind1842418431_))
                       (_tl1842918508_ (##cdr _bind1842418431_)))
                   (let* ((_id18511_ _hd1842818506_)
                          (_rest18513_ _tl1842918508_))
                     (_K1842718503_ _rest18513_ _id18511_)))
                 (_E1842618435_))))
         _bindings18421_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self18518_)
        (let ((_bindings18520_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self18518_
           _bindings18520_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g19125_
        (let ((_g19124_ (##length _g19125_)))
          (cond ((##fx= _g19124_ 1)
                 (apply (lambda (_self18518_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self18518_))
                        _g19125_))
                ((##fx= _g19124_ 2)
                 (apply (lambda (_self18522_ _bindings18523_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self18522_
                           _bindings18523_))
                        _g19125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g19125_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self18164_)
        (letrec ((_linux-variant?18166_
                  (lambda (_sys-type18265_)
                    (let* ((_g1826618274_
                            (string-split
                             (symbol->string _sys-type18265_)
                             '#\-))
                           (_else1826818282_ (lambda () '#f))
                           (_K1827018287_
                            (lambda (_rest18285_) (not (null? _rest18285_)))))
                      (if (##pair? _g1826618274_)
                          (let ((_hd1827118290_ (##car _g1826618274_))
                                (_tl1827218292_ (##cdr _g1826618274_)))
                            (if (equal? _hd1827118290_ '"linux")
                                (let ((_rest18295_ _tl1827218292_))
                                  (_K1827018287_ _rest18295_))
                                (_else1826818282_)))
                          (_else1826818282_)))))
                 (_bsd-variant18167_
                  (lambda (_sys-type18224_)
                    (let ((_sys-type-str18226_
                           (symbol->string _sys-type18224_)))
                      (let _lp18228_ ((_rest18230_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest1823118239_ _rest18230_)
                               (_else1823318247_ (lambda () '#f))
                               (_K1823518253_
                                (lambda (_rest18250_ _sys18251_)
                                  (if (string-prefix?
                                       _sys18251_
                                       _sys-type-str18226_)
                                      _sys18251_
                                      (_lp18228_ _rest18250_)))))
                          (if (##pair? _rest1823118239_)
                              (let ((_hd1823618256_ (##car _rest1823118239_))
                                    (_tl1823718258_ (##cdr _rest1823118239_)))
                                (let* ((_sys18261_ _hd1823618256_)
                                       (_rest18263_ _tl1823718258_))
                                  (_K1823518253_ _rest18263_ _sys18261_)))
                              (_else1823318247_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self18164_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self18164_)
          (let* ((_g1816818180_ (system-type))
                 (_else1817018188_ (lambda () '#!void))
                 (_K1817218200_
                  (lambda (_sys-type18191_ _sys-vendor18192_ _sys-cpu18193_)
                    (gx#core-bind-feature!__%
                     _sys-cpu18193_
                     '#f
                     '0
                     _self18164_)
                    (gx#core-bind-feature!__%
                     _sys-type18191_
                     '#f
                     '0
                     _self18164_)
                    (if (_linux-variant?18166_ _sys-type18191_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self18164_)
                        (let ((_$e18195_ (_bsd-variant18167_ _sys-type18191_)))
                          (if _$e18195_
                              ((lambda (_sys-prefix18198_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self18164_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix18198_)
                                  '#f
                                  '0
                                  _self18164_))
                               _$e18195_)
                              '#!void))))))
            (if (##pair? _g1816818180_)
                (let ((_hd1817318203_ (##car _g1816818180_))
                      (_tl1817418205_ (##cdr _g1816818180_)))
                  (let ((_sys-cpu18208_ _hd1817318203_))
                    (if (##pair? _tl1817418205_)
                        (let ((_hd1817518210_ (##car _tl1817418205_))
                              (_tl1817618212_ (##cdr _tl1817418205_)))
                          (let ((_sys-vendor18215_ _hd1817518210_))
                            (if (##pair? _tl1817618212_)
                                (let ((_hd1817718217_ (##car _tl1817618212_))
                                      (_tl1817818219_ (##cdr _tl1817618212_)))
                                  (let ((_sys-type18222_ _hd1817718217_))
                                    (if (##null? _tl1817818219_)
                                        (_K1817218200_
                                         _sys-type18222_
                                         _sys-vendor18215_
                                         _sys-cpu18208_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self18164_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
