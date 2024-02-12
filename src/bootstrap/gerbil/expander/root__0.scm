(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707773928)
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
      (lambda (_self174471_ _bind?174472_)
        (if (##fx< '2 (##structure-length _self174471_))
            (begin
              (##unchecked-structure-set!
               _self174471_
               'root
               '1
               (##structure-type _self174471_)
               '#f)
              (##unchecked-structure-set!
               _self174471_
               (make-table 'test: eq?)
               '2
               (##structure-type _self174471_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self174471_
                   '2
                   (##vector-length _self174471_)))
        (if _bind?174472_
            (begin
              (let ((__method179090
                     (method-ref _self174471_ 'bind-core-syntax-expanders!)))
                (if __method179090
                    (__method179090 _self174471_)
                    (error '"Missing method"
                           _self174471_
                           'bind-core-syntax-expanders!)))
              (let ((__method179091
                     (method-ref _self174471_ 'bind-core-macro-expanders!)))
                (if __method179091
                    (__method179091 _self174471_)
                    (error '"Missing method"
                           _self174471_
                           'bind-core-macro-expanders!)))
              (let ((__method179092
                     (method-ref _self174471_ 'bind-core-features!)))
                (if __method179092
                    (__method179092 _self174471_)
                    (error '"Missing method"
                           _self174471_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self174477_)
        (let ((_bind?174479_ '#t))
          (gx#root-context:::init!__% _self174477_ _bind?174479_))))
    (define gx#root-context:::init!
      (lambda _g179095_
        (let ((_g179094_ (##length _g179095_)))
          (cond ((##fx= _g179094_ 1)
                 (apply (lambda (_self174477_)
                          (gx#root-context:::init!__0 _self174477_))
                        _g179095_))
                ((##fx= _g179094_ 2)
                 (apply (lambda (_self174481_ _bind?174482_)
                          (gx#root-context:::init!__%
                           _self174481_
                           _bind?174482_))
                        _g179095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g179095_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t179051)
        (let ((__bind-core-features!179052
               (make-promise
                (lambda ()
                  (let ((__tmp179055
                         (direct-method-ref __t179051 'bind-core-features!)))
                    (if __tmp179055
                        __tmp179055
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!179053
               (make-promise
                (lambda ()
                  (let ((__tmp179056
                         (direct-method-ref
                          __t179051
                          'bind-core-syntax-expanders!)))
                    (if __tmp179056
                        __tmp179056
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!179054
               (make-promise
                (lambda ()
                  (let ((__tmp179057
                         (direct-method-ref
                          __t179051
                          'bind-core-macro-expanders!)))
                    (if __tmp179057
                        __tmp179057
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda174469174474_
                 (lambda (_self174471_ _bind?174472_)
                   (if (##fx< '2 (##structure-length _self174471_))
                       (begin
                         (##unchecked-structure-set!
                          _self174471_
                          'root
                          '1
                          (##structure-type _self174471_)
                          '#f)
                         (##unchecked-structure-set!
                          _self174471_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self174471_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self174471_
                              '2
                              (##vector-length _self174471_)))
                   (if _bind?174472_
                       (begin
                         ((force __bind-core-syntax-expanders!179053)
                          _self174471_)
                         ((force __bind-core-macro-expanders!179054)
                          _self174471_)
                         ((force __bind-core-features!179052) _self174471_))
                       '#!void))))
            (lambda _g179097_
              (let ((_g179096_ (##length _g179097_)))
                (cond ((##fx= _g179096_ 1)
                       (apply (lambda (_self174477_)
                                (let ((_bind?174479_ '#t))
                                  (_opt-lambda174469174474_
                                   _self174477_
                                   _bind?174479_)))
                              _g179097_))
                      ((##fx= _g179096_ 2)
                       (apply (lambda (_self174481_ _bind?174482_)
                                (_opt-lambda174469174474_
                                 _self174481_
                                 _bind?174482_))
                              _g179097_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g179097_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self174327_ _super174328_)
        (let ((_super174336_
               (let ((_$e174330_ _super174328_))
                 (if _$e174330_
                     _$e174330_
                     (let ((_$e174333_ (gx#core-context-root__0)))
                       (if _$e174333_
                           _$e174333_
                           (let ((__obj179093
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj179093)
                             __obj179093)))))))
          (if (##fx< '5 (##structure-length _self174327_))
              (begin
                (##unchecked-structure-set!
                 _self174327_
                 'top
                 '1
                 (##structure-type _self174327_)
                 '#f)
                (##unchecked-structure-set!
                 _self174327_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self174327_)
                 '#f)
                (##unchecked-structure-set!
                 _self174327_
                 _super174336_
                 '3
                 (##structure-type _self174327_)
                 '#f)
                (##unchecked-structure-set!
                 _self174327_
                 '#f
                 '4
                 (##structure-type _self174327_)
                 '#f)
                (##unchecked-structure-set!
                 _self174327_
                 '#f
                 '5
                 (##structure-type _self174327_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self174327_
                     '5
                     (##vector-length _self174327_))))))
    (define gx#top-context:::init!__0
      (lambda (_self174341_)
        (let ((_super174343_ '#f))
          (gx#top-context:::init!__% _self174341_ _super174343_))))
    (define gx#top-context:::init!
      (lambda _g179099_
        (let ((_g179098_ (##length _g179099_)))
          (cond ((##fx= _g179098_ 1)
                 (apply (lambda (_self174341_)
                          (gx#top-context:::init!__0 _self174341_))
                        _g179099_))
                ((##fx= _g179098_ 2)
                 (apply (lambda (_self174345_ _super174346_)
                          (gx#top-context:::init!__%
                           _self174345_
                           _super174346_))
                        _g179099_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g179099_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self174058_ _bindings174059_)
        (for-each
         (lambda (_bind174061_)
           (let* ((_bind174062174069_ _bind174061_)
                  (_E174064174073_
                   (lambda ()
                     (error '"No clause matching" _bind174062174069_)))
                  (_K174065174182_
                   (lambda (_rest174076_ _id174077_)
                     (gx#core-context-put!
                      _self174058_
                      _id174077_
                      (##structure
                       gx#syntax-binding::t
                       _id174077_
                       _id174077_
                       '#f
                       (let* ((_rest174078174089_ _rest174076_)
                              (_E174080174093_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest174078174089_)))
                              (_K174081174158_
                               (lambda (_compiler174096_
                                        _expander174097_
                                        _key174098_)
                                 ((let* ((_key174099174112_ _key174098_)
                                         (_E174105174116_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key174099174112_))))
                                    (let ((_K174110174152_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K174109174145_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K174108174137_
                                           (lambda () gx#make-definition-form))
                                          (_K174107174129_
                                           (lambda () gx#make-special-form))
                                          (_K174106174121_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match174104174124_
                                              (lambda ()
                                                (if (##eq? _key174099174112_
                                                           'expr:)
                                                    (_K174106174121_)
                                                    (_E174105174116_))))
                                             (_try-match174103174132_
                                              (lambda ()
                                                (if (##eq? _key174099174112_
                                                           'special:)
                                                    (_K174107174129_)
                                                    (_try-match174104174124_))))
                                             (_try-match174102174140_
                                              (lambda ()
                                                (if (##eq? _key174099174112_
                                                           'define:)
                                                    (_K174108174137_)
                                                    (_try-match174103174132_))))
                                             (_try-match174101174148_
                                              (lambda ()
                                                (if (##eq? _key174099174112_
                                                           'module:)
                                                    (_K174109174145_)
                                                    (_try-match174102174140_)))))
                                        (if (##eq? _key174099174112_ 'top:)
                                            (_K174110174152_)
                                            (_try-match174101174148_)))))
                                  _expander174097_
                                  _id174077_
                                  (let ((_$e174155_ _compiler174096_))
                                    (if _$e174155_
                                        _$e174155_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest174078174089_)
                             (let ((_hd174082174161_
                                    (##car _rest174078174089_))
                                   (_tl174083174163_
                                    (##cdr _rest174078174089_)))
                               (let ((_key174166_ _hd174082174161_))
                                 (if (##pair? _tl174083174163_)
                                     (let ((_hd174084174168_
                                            (##car _tl174083174163_))
                                           (_tl174085174170_
                                            (##cdr _tl174083174163_)))
                                       (let ((_expander174173_
                                              _hd174084174168_))
                                         (if (##pair? _tl174085174170_)
                                             (let ((_hd174086174175_
                                                    (##car _tl174085174170_))
                                                   (_tl174087174177_
                                                    (##cdr _tl174085174170_)))
                                               (let ((_compiler174180_
                                                      _hd174086174175_))
                                                 (if (##null? _tl174087174177_)
                                                     (_K174081174158_
                                                      _compiler174180_
                                                      _expander174173_
                                                      _key174166_)
                                                     (_E174080174093_))))
                                             (_E174080174093_))))
                                     (_E174080174093_))))
                             (_E174080174093_))))))))
             (if (##pair? _bind174062174069_)
                 (let ((_hd174066174185_ (##car _bind174062174069_))
                       (_tl174067174187_ (##cdr _bind174062174069_)))
                   (let* ((_id174190_ _hd174066174185_)
                          (_rest174192_ _tl174067174187_))
                     (_K174065174182_ _rest174192_ _id174190_)))
                 (_E174064174073_))))
         _bindings174059_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self174197_)
        (let ((_bindings174199_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self174197_
           _bindings174199_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g179101_
        (let ((_g179100_ (##length _g179101_)))
          (cond ((##fx= _g179100_ 1)
                 (apply (lambda (_self174197_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self174197_))
                        _g179101_))
                ((##fx= _g179100_ 2)
                 (apply (lambda (_self174201_ _bindings174202_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self174201_
                           _bindings174202_))
                        _g179101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g179101_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self173830_ _bindings173831_)
        (for-each
         (lambda (_bind173833_)
           (let* ((_bind173834173841_ _bind173833_)
                  (_E173836173845_
                   (lambda ()
                     (error '"No clause matching" _bind173834173841_)))
                  (_K173837173913_
                   (lambda (_rest173848_ _id173849_)
                     (gx#core-context-put!
                      _self173830_
                      _id173849_
                      (##structure
                       gx#syntax-binding::t
                       _id173849_
                       _id173849_
                       '#f
                       (let* ((_rest173850173865_ _rest173848_)
                              (_E173854173869_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest173850173865_))))
                         (let ((_K173859173898_
                                (lambda (_core-id173896_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id173896_)))
                               (_K173856173883_
                                (lambda (_proc173881_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc173881_)))
                               (_K173855173874_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id173849_))))
                           (let ((_try-match173853173877_
                                  (lambda ()
                                    (if (##null? _rest173850173865_)
                                        (_K173855173874_)
                                        (_E173854173869_)))))
                             (if (##pair? _rest173850173865_)
                                 (let ((_tl173861173903_
                                        (##cdr _rest173850173865_))
                                       (_hd173860173901_
                                        (##car _rest173850173865_)))
                                   (if (##eq? _hd173860173901_ '=>)
                                       (if (##pair? _tl173861173903_)
                                           (let ((_tl173863173908_
                                                  (##cdr _tl173861173903_))
                                                 (_hd173862173906_
                                                  (##car _tl173861173903_)))
                                             (if (##null? _tl173863173908_)
                                                 (let ((_core-id173911_
                                                        _hd173862173906_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id173911_))
                                                 (_E173854173869_)))
                                           (if (##null? _tl173861173903_)
                                               (let ((_proc173891_
                                                      _hd173860173901_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc173891_))
                                               (_E173854173869_)))
                                       (if (##null? _tl173861173903_)
                                           (let ((_proc173891_
                                                  _hd173860173901_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc173891_))
                                           (_E173854173869_))))
                                 (_try-match173853173877_))))))))))
             (if (##pair? _bind173834173841_)
                 (let ((_hd173838173916_ (##car _bind173834173841_))
                       (_tl173839173918_ (##cdr _bind173834173841_)))
                   (let* ((_id173921_ _hd173838173916_)
                          (_rest173923_ _tl173839173918_))
                     (_K173837173913_ _rest173923_ _id173921_)))
                 (_E173836173845_))))
         _bindings173831_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self173928_)
        (let ((_bindings173930_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self173928_
           _bindings173930_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g179103_
        (let ((_g179102_ (##length _g179103_)))
          (cond ((##fx= _g179102_ 1)
                 (apply (lambda (_self173928_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self173928_))
                        _g179103_))
                ((##fx= _g179102_ 2)
                 (apply (lambda (_self173932_ _bindings173933_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self173932_
                           _bindings173933_))
                        _g179103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g179103_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self173574_)
        (letrec ((_linux-variant?173576_
                  (lambda (_sys-type173675_)
                    (let* ((_g173676173684_
                            (string-split
                             (symbol->string _sys-type173675_)
                             '#\-))
                           (_else173678173692_ (lambda () '#f))
                           (_K173680173697_
                            (lambda (_rest173695_)
                              (not (null? _rest173695_)))))
                      (if (##pair? _g173676173684_)
                          (let ((_hd173681173700_ (##car _g173676173684_))
                                (_tl173682173702_ (##cdr _g173676173684_)))
                            (if (equal? _hd173681173700_ '"linux")
                                (let ((_rest173705_ _tl173682173702_))
                                  (_K173680173697_ _rest173705_))
                                (_else173678173692_)))
                          (_else173678173692_)))))
                 (_bsd-variant173577_
                  (lambda (_sys-type173634_)
                    (let ((_sys-type-str173636_
                           (symbol->string _sys-type173634_)))
                      (let _lp173638_ ((_rest173640_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest173641173649_ _rest173640_)
                               (_else173643173657_ (lambda () '#f))
                               (_K173645173663_
                                (lambda (_rest173660_ _sys173661_)
                                  (if (string-prefix?
                                       _sys173661_
                                       _sys-type-str173636_)
                                      _sys173661_
                                      (_lp173638_ _rest173660_)))))
                          (if (##pair? _rest173641173649_)
                              (let ((_hd173646173666_
                                     (##car _rest173641173649_))
                                    (_tl173647173668_
                                     (##cdr _rest173641173649_)))
                                (let* ((_sys173671_ _hd173646173666_)
                                       (_rest173673_ _tl173647173668_))
                                  (_K173645173663_ _rest173673_ _sys173671_)))
                              (_else173643173657_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self173574_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self173574_)
          (let* ((_g173578173590_ (system-type))
                 (_else173580173598_ (lambda () '#!void))
                 (_K173582173610_
                  (lambda (_sys-type173601_ _sys-vendor173602_ _sys-cpu173603_)
                    (gx#core-bind-feature!__%
                     _sys-cpu173603_
                     '#f
                     '0
                     _self173574_)
                    (gx#core-bind-feature!__%
                     _sys-type173601_
                     '#f
                     '0
                     _self173574_)
                    (if (_linux-variant?173576_ _sys-type173601_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self173574_)
                        (let ((_$e173605_
                               (_bsd-variant173577_ _sys-type173601_)))
                          (if _$e173605_
                              ((lambda (_sys-prefix173608_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self173574_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix173608_)
                                  '#f
                                  '0
                                  _self173574_))
                               _$e173605_)
                              '#!void))))))
            (if (##pair? _g173578173590_)
                (let ((_hd173583173613_ (##car _g173578173590_))
                      (_tl173584173615_ (##cdr _g173578173590_)))
                  (let ((_sys-cpu173618_ _hd173583173613_))
                    (if (##pair? _tl173584173615_)
                        (let ((_hd173585173620_ (##car _tl173584173615_))
                              (_tl173586173622_ (##cdr _tl173584173615_)))
                          (let ((_sys-vendor173625_ _hd173585173620_))
                            (if (##pair? _tl173586173622_)
                                (let ((_hd173587173627_
                                       (##car _tl173586173622_))
                                      (_tl173588173629_
                                       (##cdr _tl173586173622_)))
                                  (let ((_sys-type173632_ _hd173587173627_))
                                    (if (##null? _tl173588173629_)
                                        (_K173582173610_
                                         _sys-type173632_
                                         _sys-vendor173625_
                                         _sys-cpu173618_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self173574_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
