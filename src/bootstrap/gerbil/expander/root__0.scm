(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1710487492)
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
      (lambda (_self95483_ _bind?95484_)
        (if (##fx< '2 (##structure-length _self95483_))
            (begin
              (##unchecked-structure-set!
               _self95483_
               'root
               '1
               (##structure-type _self95483_)
               '#f)
              (##unchecked-structure-set!
               _self95483_
               (make-hash-table-eq)
               '2
               (##structure-type _self95483_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self95483_
                   '2
                   (##vector-length _self95483_)))
        (if _bind?95484_
            (begin
              (let ((__method95535
                     (method-ref _self95483_ 'bind-core-syntax-expanders!)))
                (if __method95535
                    (__method95535 _self95483_)
                    (error '"Missing method"
                           _self95483_
                           'bind-core-syntax-expanders!)))
              (let ((__method95536
                     (method-ref _self95483_ 'bind-core-macro-expanders!)))
                (if __method95536
                    (__method95536 _self95483_)
                    (error '"Missing method"
                           _self95483_
                           'bind-core-macro-expanders!)))
              (let ((__method95537
                     (method-ref _self95483_ 'bind-core-features!)))
                (if __method95537
                    (__method95537 _self95483_)
                    (error '"Missing method"
                           _self95483_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self95489_)
        (let ((_bind?95491_ '#t))
          (gx#root-context:::init!__% _self95489_ _bind?95491_))))
    (define gx#root-context:::init!
      (lambda _g95540_
        (let ((_g95539_ (##length _g95540_)))
          (cond ((##fx= _g95539_ 1)
                 (apply (lambda (_self95489_)
                          (gx#root-context:::init!__0 _self95489_))
                        _g95540_))
                ((##fx= _g95539_ 2)
                 (apply (lambda (_self95493_ _bind?95494_)
                          (gx#root-context:::init!__%
                           _self95493_
                           _bind?95494_))
                        _g95540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g95540_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass95495 __method-table95496)
        (let ((__bind-core-syntax-expanders!95497
               (make-promise
                (lambda ()
                  (let ((__method95500
                         (symbolic-table-ref
                          __method-table95496
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method95500
                        __method95500
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!95498
               (make-promise
                (lambda ()
                  (let ((__method95501
                         (symbolic-table-ref
                          __method-table95496
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method95501
                        __method95501
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!95499
               (make-promise
                (lambda ()
                  (let ((__method95502
                         (symbolic-table-ref
                          __method-table95496
                          'bind-core-features!
                          '#f)))
                    (if __method95502
                        __method95502
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda9548195486_
                 (lambda (_self95483_ _bind?95484_)
                   (if (##fx< '2 (##structure-length _self95483_))
                       (begin
                         (##unchecked-structure-set!
                          _self95483_
                          'root
                          '1
                          (##structure-type _self95483_)
                          '#f)
                         (##unchecked-structure-set!
                          _self95483_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self95483_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self95483_
                              '2
                              (##vector-length _self95483_)))
                   (if _bind?95484_
                       (begin
                         ((force __bind-core-syntax-expanders!95497)
                          _self95483_)
                         ((force __bind-core-macro-expanders!95498)
                          _self95483_)
                         ((force __bind-core-features!95499) _self95483_))
                       '#!void))))
            (lambda _g95542_
              (let ((_g95541_ (##length _g95542_)))
                (cond ((##fx= _g95541_ 1)
                       (apply (lambda (_self95489_)
                                (let ((_bind?95491_ '#t))
                                  (_opt-lambda9548195486_
                                   _self95489_
                                   _bind?95491_)))
                              _g95542_))
                      ((##fx= _g95541_ 2)
                       (apply (lambda (_self95493_ _bind?95494_)
                                (_opt-lambda9548195486_
                                 _self95493_
                                 _bind?95494_))
                              _g95542_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g95542_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self95339_ _super95340_)
        (let ((_super95348_
               (let ((_$e95342_ _super95340_))
                 (if _$e95342_
                     _$e95342_
                     (let ((_$e95345_ (gx#core-context-root__0)))
                       (if _$e95345_
                           _$e95345_
                           (let ((__obj95538
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj95538)
                             __obj95538)))))))
          (if (##fx< '5 (##structure-length _self95339_))
              (begin
                (##unchecked-structure-set!
                 _self95339_
                 'top
                 '1
                 (##structure-type _self95339_)
                 '#f)
                (##unchecked-structure-set!
                 _self95339_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self95339_)
                 '#f)
                (##unchecked-structure-set!
                 _self95339_
                 _super95348_
                 '3
                 (##structure-type _self95339_)
                 '#f)
                (##unchecked-structure-set!
                 _self95339_
                 '#f
                 '4
                 (##structure-type _self95339_)
                 '#f)
                (##unchecked-structure-set!
                 _self95339_
                 '#f
                 '5
                 (##structure-type _self95339_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self95339_
                     '5
                     (##vector-length _self95339_))))))
    (define gx#top-context:::init!__0
      (lambda (_self95353_)
        (let ((_super95355_ '#f))
          (gx#top-context:::init!__% _self95353_ _super95355_))))
    (define gx#top-context:::init!
      (lambda _g95544_
        (let ((_g95543_ (##length _g95544_)))
          (cond ((##fx= _g95543_ 1)
                 (apply (lambda (_self95353_)
                          (gx#top-context:::init!__0 _self95353_))
                        _g95544_))
                ((##fx= _g95543_ 2)
                 (apply (lambda (_self95357_ _super95358_)
                          (gx#top-context:::init!__% _self95357_ _super95358_))
                        _g95544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g95544_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self95070_ _bindings95071_)
        (for-each
         (lambda (_bind95073_)
           (let* ((_bind9507495081_ _bind95073_)
                  (_E9507695085_
                   (lambda () (error '"No clause matching" _bind9507495081_)))
                  (_K9507795194_
                   (lambda (_rest95088_ _id95089_)
                     (gx#core-context-put!
                      _self95070_
                      _id95089_
                      (##structure
                       gx#syntax-binding::t
                       _id95089_
                       _id95089_
                       '#f
                       (let* ((_rest9509095101_ _rest95088_)
                              (_E9509295105_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9509095101_)))
                              (_K9509395170_
                               (lambda (_compiler95108_
                                        _expander95109_
                                        _key95110_)
                                 ((let* ((_key9511195124_ _key95110_)
                                         (_E9511795128_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9511195124_))))
                                    (let ((_K9512295164_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9512195157_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9512095149_
                                           (lambda () gx#make-definition-form))
                                          (_K9511995141_
                                           (lambda () gx#make-special-form))
                                          (_K9511895133_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9511695136_
                                              (lambda ()
                                                (if (##eq? _key9511195124_
                                                           'expr:)
                                                    (_K9511895133_)
                                                    (_E9511795128_))))
                                             (_try-match9511595144_
                                              (lambda ()
                                                (if (##eq? _key9511195124_
                                                           'special:)
                                                    (_K9511995141_)
                                                    (_try-match9511695136_))))
                                             (_try-match9511495152_
                                              (lambda ()
                                                (if (##eq? _key9511195124_
                                                           'define:)
                                                    (_K9512095149_)
                                                    (_try-match9511595144_))))
                                             (_try-match9511395160_
                                              (lambda ()
                                                (if (##eq? _key9511195124_
                                                           'module:)
                                                    (_K9512195157_)
                                                    (_try-match9511495152_)))))
                                        (if (##eq? _key9511195124_ 'top:)
                                            (_K9512295164_)
                                            (_try-match9511395160_)))))
                                  _expander95109_
                                  _id95089_
                                  (let ((_$e95167_ _compiler95108_))
                                    (if _$e95167_
                                        _$e95167_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9509095101_)
                             (let ((_hd9509495173_ (##car _rest9509095101_))
                                   (_tl9509595175_ (##cdr _rest9509095101_)))
                               (let ((_key95178_ _hd9509495173_))
                                 (if (##pair? _tl9509595175_)
                                     (let ((_hd9509695180_
                                            (##car _tl9509595175_))
                                           (_tl9509795182_
                                            (##cdr _tl9509595175_)))
                                       (let ((_expander95185_ _hd9509695180_))
                                         (if (##pair? _tl9509795182_)
                                             (let ((_hd9509895187_
                                                    (##car _tl9509795182_))
                                                   (_tl9509995189_
                                                    (##cdr _tl9509795182_)))
                                               (let ((_compiler95192_
                                                      _hd9509895187_))
                                                 (if (##null? _tl9509995189_)
                                                     (_K9509395170_
                                                      _compiler95192_
                                                      _expander95185_
                                                      _key95178_)
                                                     (_E9509295105_))))
                                             (_E9509295105_))))
                                     (_E9509295105_))))
                             (_E9509295105_))))))))
             (if (##pair? _bind9507495081_)
                 (let ((_hd9507895197_ (##car _bind9507495081_))
                       (_tl9507995199_ (##cdr _bind9507495081_)))
                   (let* ((_id95202_ _hd9507895197_)
                          (_rest95204_ _tl9507995199_))
                     (_K9507795194_ _rest95204_ _id95202_)))
                 (_E9507695085_))))
         _bindings95071_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self95209_)
        (let ((_bindings95211_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self95209_
           _bindings95211_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g95546_
        (let ((_g95545_ (##length _g95546_)))
          (cond ((##fx= _g95545_ 1)
                 (apply (lambda (_self95209_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self95209_))
                        _g95546_))
                ((##fx= _g95545_ 2)
                 (apply (lambda (_self95213_ _bindings95214_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self95213_
                           _bindings95214_))
                        _g95546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g95546_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self94842_ _bindings94843_)
        (for-each
         (lambda (_bind94845_)
           (let* ((_bind9484694853_ _bind94845_)
                  (_E9484894857_
                   (lambda () (error '"No clause matching" _bind9484694853_)))
                  (_K9484994925_
                   (lambda (_rest94860_ _id94861_)
                     (gx#core-context-put!
                      _self94842_
                      _id94861_
                      (##structure
                       gx#syntax-binding::t
                       _id94861_
                       _id94861_
                       '#f
                       (let* ((_rest9486294877_ _rest94860_)
                              (_E9486694881_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9486294877_))))
                         (let ((_K9487194910_
                                (lambda (_core-id94908_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id94908_)))
                               (_K9486894895_
                                (lambda (_proc94893_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc94893_)))
                               (_K9486794886_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id94861_))))
                           (let ((_try-match9486594889_
                                  (lambda ()
                                    (if (##null? _rest9486294877_)
                                        (_K9486794886_)
                                        (_E9486694881_)))))
                             (if (##pair? _rest9486294877_)
                                 (let ((_tl9487394915_
                                        (##cdr _rest9486294877_))
                                       (_hd9487294913_
                                        (##car _rest9486294877_)))
                                   (if (##eq? _hd9487294913_ '=>)
                                       (if (##pair? _tl9487394915_)
                                           (let ((_tl9487594920_
                                                  (##cdr _tl9487394915_))
                                                 (_hd9487494918_
                                                  (##car _tl9487394915_)))
                                             (if (##null? _tl9487594920_)
                                                 (let ((_core-id94923_
                                                        _hd9487494918_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id94923_))
                                                 (_E9486694881_)))
                                           (if (##null? _tl9487394915_)
                                               (let ((_proc94903_
                                                      _hd9487294913_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc94903_))
                                               (_E9486694881_)))
                                       (if (##null? _tl9487394915_)
                                           (let ((_proc94903_ _hd9487294913_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc94903_))
                                           (_E9486694881_))))
                                 (_try-match9486594889_))))))))))
             (if (##pair? _bind9484694853_)
                 (let ((_hd9485094928_ (##car _bind9484694853_))
                       (_tl9485194930_ (##cdr _bind9484694853_)))
                   (let* ((_id94933_ _hd9485094928_)
                          (_rest94935_ _tl9485194930_))
                     (_K9484994925_ _rest94935_ _id94933_)))
                 (_E9484894857_))))
         _bindings94843_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self94940_)
        (let ((_bindings94942_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self94940_
           _bindings94942_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g95548_
        (let ((_g95547_ (##length _g95548_)))
          (cond ((##fx= _g95547_ 1)
                 (apply (lambda (_self94940_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self94940_))
                        _g95548_))
                ((##fx= _g95547_ 2)
                 (apply (lambda (_self94944_ _bindings94945_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self94944_
                           _bindings94945_))
                        _g95548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g95548_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self94586_)
        (letrec ((_linux-variant?94588_
                  (lambda (_sys-type94687_)
                    (let* ((_g9468894696_
                            (string-split
                             (symbol->string _sys-type94687_)
                             '#\-))
                           (_else9469094704_ (lambda () '#f))
                           (_K9469294709_
                            (lambda (_rest94707_) (not (null? _rest94707_)))))
                      (if (##pair? _g9468894696_)
                          (let ((_hd9469394712_ (##car _g9468894696_))
                                (_tl9469494714_ (##cdr _g9468894696_)))
                            (if (equal? _hd9469394712_ '"linux")
                                (let ((_rest94717_ _tl9469494714_))
                                  (_K9469294709_ _rest94717_))
                                (_else9469094704_)))
                          (_else9469094704_)))))
                 (_bsd-variant94589_
                  (lambda (_sys-type94646_)
                    (let ((_sys-type-str94648_
                           (symbol->string _sys-type94646_)))
                      (let _lp94650_ ((_rest94652_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9465394661_ _rest94652_)
                               (_else9465594669_ (lambda () '#f))
                               (_K9465794675_
                                (lambda (_rest94672_ _sys94673_)
                                  (if (string-prefix?
                                       _sys94673_
                                       _sys-type-str94648_)
                                      _sys94673_
                                      (_lp94650_ _rest94672_)))))
                          (if (##pair? _rest9465394661_)
                              (let ((_hd9465894678_ (##car _rest9465394661_))
                                    (_tl9465994680_ (##cdr _rest9465394661_)))
                                (let* ((_sys94683_ _hd9465894678_)
                                       (_rest94685_ _tl9465994680_))
                                  (_K9465794675_ _rest94685_ _sys94683_)))
                              (_else9465594669_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self94586_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self94586_)
          (let* ((_g9459094602_ (system-type))
                 (_else9459294610_ (lambda () '#!void))
                 (_K9459494622_
                  (lambda (_sys-type94613_ _sys-vendor94614_ _sys-cpu94615_)
                    (gx#core-bind-feature!__%
                     _sys-cpu94615_
                     '#f
                     '0
                     _self94586_)
                    (gx#core-bind-feature!__%
                     _sys-type94613_
                     '#f
                     '0
                     _self94586_)
                    (if (_linux-variant?94588_ _sys-type94613_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self94586_)
                        (let ((_$e94617_ (_bsd-variant94589_ _sys-type94613_)))
                          (if _$e94617_
                              ((lambda (_sys-prefix94620_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self94586_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix94620_)
                                  '#f
                                  '0
                                  _self94586_))
                               _$e94617_)
                              '#!void))))))
            (if (##pair? _g9459094602_)
                (let ((_hd9459594625_ (##car _g9459094602_))
                      (_tl9459694627_ (##cdr _g9459094602_)))
                  (let ((_sys-cpu94630_ _hd9459594625_))
                    (if (##pair? _tl9459694627_)
                        (let ((_hd9459794632_ (##car _tl9459694627_))
                              (_tl9459894634_ (##cdr _tl9459694627_)))
                          (let ((_sys-vendor94637_ _hd9459794632_))
                            (if (##pair? _tl9459894634_)
                                (let ((_hd9459994639_ (##car _tl9459894634_))
                                      (_tl9460094641_ (##cdr _tl9459894634_)))
                                  (let ((_sys-type94644_ _hd9459994639_))
                                    (if (##null? _tl9460094641_)
                                        (_K9459494622_
                                         _sys-type94644_
                                         _sys-vendor94637_
                                         _sys-cpu94630_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self94586_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
