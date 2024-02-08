(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707384296)
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
      (lambda (_self166682_ _bind?166683_)
        (if (##fx< '2 (##structure-length _self166682_))
            (begin
              (##unchecked-structure-set!
               _self166682_
               'root
               '1
               (##structure-type _self166682_)
               '#f)
              (##unchecked-structure-set!
               _self166682_
               (make-table 'test: eq?)
               '2
               (##structure-type _self166682_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self166682_
                   '2
                   (##vector-length _self166682_)))
        (if _bind?166683_
            (begin
              (let ((__method170927
                     (method-ref _self166682_ 'bind-core-syntax-expanders!)))
                (if __method170927
                    (__method170927 _self166682_)
                    (error '"Missing method"
                           _self166682_
                           'bind-core-syntax-expanders!)))
              (let ((__method170928
                     (method-ref _self166682_ 'bind-core-macro-expanders!)))
                (if __method170928
                    (__method170928 _self166682_)
                    (error '"Missing method"
                           _self166682_
                           'bind-core-macro-expanders!)))
              (let ((__method170929
                     (method-ref _self166682_ 'bind-core-features!)))
                (if __method170929
                    (__method170929 _self166682_)
                    (error '"Missing method"
                           _self166682_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self166688_)
        (let ((_bind?166690_ '#t))
          (gx#root-context:::init!__% _self166688_ _bind?166690_))))
    (define gx#root-context:::init!
      (lambda _g170932_
        (let ((_g170931_ (##length _g170932_)))
          (cond ((##fx= _g170931_ 1)
                 (apply (lambda (_self166688_)
                          (gx#root-context:::init!__0 _self166688_))
                        _g170932_))
                ((##fx= _g170931_ 2)
                 (apply (lambda (_self166692_ _bind?166693_)
                          (gx#root-context:::init!__%
                           _self166692_
                           _bind?166693_))
                        _g170932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g170932_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t170888)
        (let ((__bind-core-syntax-expanders!170889
               (make-promise
                (lambda ()
                  (let ((__tmp170892
                         (direct-method-ref
                          __t170888
                          'bind-core-syntax-expanders!)))
                    (if __tmp170892
                        __tmp170892
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!170890
               (make-promise
                (lambda ()
                  (let ((__tmp170893
                         (direct-method-ref
                          __t170888
                          'bind-core-macro-expanders!)))
                    (if __tmp170893
                        __tmp170893
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!170891
               (make-promise
                (lambda ()
                  (let ((__tmp170894
                         (direct-method-ref __t170888 'bind-core-features!)))
                    (if __tmp170894
                        __tmp170894
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda166680166685_
                 (lambda (_self166682_ _bind?166683_)
                   (if (##fx< '2 (##structure-length _self166682_))
                       (begin
                         (##unchecked-structure-set!
                          _self166682_
                          'root
                          '1
                          (##structure-type _self166682_)
                          '#f)
                         (##unchecked-structure-set!
                          _self166682_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self166682_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self166682_
                              '2
                              (##vector-length _self166682_)))
                   (if _bind?166683_
                       (begin
                         ((force __bind-core-syntax-expanders!170889)
                          _self166682_)
                         ((force __bind-core-macro-expanders!170890)
                          _self166682_)
                         ((force __bind-core-features!170891) _self166682_))
                       '#!void))))
            (lambda _g170934_
              (let ((_g170933_ (##length _g170934_)))
                (cond ((##fx= _g170933_ 1)
                       (apply (lambda (_self166688_)
                                (let ((_bind?166690_ '#t))
                                  (_opt-lambda166680166685_
                                   _self166688_
                                   _bind?166690_)))
                              _g170934_))
                      ((##fx= _g170933_ 2)
                       (apply (lambda (_self166692_ _bind?166693_)
                                (_opt-lambda166680166685_
                                 _self166692_
                                 _bind?166693_))
                              _g170934_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g170934_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self166538_ _super166539_)
        (let ((_super166547_
               (let ((_$e166541_ _super166539_))
                 (if _$e166541_
                     _$e166541_
                     (let ((_$e166544_ (gx#core-context-root__0)))
                       (if _$e166544_
                           _$e166544_
                           (let ((__obj170930
                                  (make-object* gx#root-context::t '3)))
                             (gx#root-context:::init! __obj170930)
                             __obj170930)))))))
          (if (##fx< '5 (##structure-length _self166538_))
              (begin
                (##unchecked-structure-set!
                 _self166538_
                 'top
                 '1
                 (##structure-type _self166538_)
                 '#f)
                (##unchecked-structure-set!
                 _self166538_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self166538_)
                 '#f)
                (##unchecked-structure-set!
                 _self166538_
                 _super166547_
                 '3
                 (##structure-type _self166538_)
                 '#f)
                (##unchecked-structure-set!
                 _self166538_
                 '#f
                 '4
                 (##structure-type _self166538_)
                 '#f)
                (##unchecked-structure-set!
                 _self166538_
                 '#f
                 '5
                 (##structure-type _self166538_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self166538_
                     '5
                     (##vector-length _self166538_))))))
    (define gx#top-context:::init!__0
      (lambda (_self166552_)
        (let ((_super166554_ '#f))
          (gx#top-context:::init!__% _self166552_ _super166554_))))
    (define gx#top-context:::init!
      (lambda _g170936_
        (let ((_g170935_ (##length _g170936_)))
          (cond ((##fx= _g170935_ 1)
                 (apply (lambda (_self166552_)
                          (gx#top-context:::init!__0 _self166552_))
                        _g170936_))
                ((##fx= _g170935_ 2)
                 (apply (lambda (_self166556_ _super166557_)
                          (gx#top-context:::init!__%
                           _self166556_
                           _super166557_))
                        _g170936_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g170936_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self166269_ _bindings166270_)
        (for-each
         (lambda (_bind166272_)
           (let* ((_bind166273166280_ _bind166272_)
                  (_E166275166284_
                   (lambda ()
                     (error '"No clause matching" _bind166273166280_)))
                  (_K166276166393_
                   (lambda (_rest166287_ _id166288_)
                     (gx#core-context-put!
                      _self166269_
                      _id166288_
                      (##structure
                       gx#syntax-binding::t
                       _id166288_
                       _id166288_
                       '#f
                       (let* ((_rest166289166300_ _rest166287_)
                              (_E166291166304_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest166289166300_)))
                              (_K166292166369_
                               (lambda (_compiler166307_
                                        _expander166308_
                                        _key166309_)
                                 ((let* ((_key166310166323_ _key166309_)
                                         (_E166316166327_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key166310166323_))))
                                    (let ((_K166321166363_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K166320166356_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K166319166348_
                                           (lambda () gx#make-definition-form))
                                          (_K166318166340_
                                           (lambda () gx#make-special-form))
                                          (_K166317166332_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match166315166335_
                                              (lambda ()
                                                (if (##eq? _key166310166323_
                                                           'expr:)
                                                    (_K166317166332_)
                                                    (_E166316166327_))))
                                             (_try-match166314166343_
                                              (lambda ()
                                                (if (##eq? _key166310166323_
                                                           'special:)
                                                    (_K166318166340_)
                                                    (_try-match166315166335_))))
                                             (_try-match166313166351_
                                              (lambda ()
                                                (if (##eq? _key166310166323_
                                                           'define:)
                                                    (_K166319166348_)
                                                    (_try-match166314166343_))))
                                             (_try-match166312166359_
                                              (lambda ()
                                                (if (##eq? _key166310166323_
                                                           'module:)
                                                    (_K166320166356_)
                                                    (_try-match166313166351_)))))
                                        (if (##eq? _key166310166323_ 'top:)
                                            (_K166321166363_)
                                            (_try-match166312166359_)))))
                                  _expander166308_
                                  _id166288_
                                  (let ((_$e166366_ _compiler166307_))
                                    (if _$e166366_
                                        _$e166366_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest166289166300_)
                             (let ((_hd166293166372_
                                    (##car _rest166289166300_))
                                   (_tl166294166374_
                                    (##cdr _rest166289166300_)))
                               (let ((_key166377_ _hd166293166372_))
                                 (if (##pair? _tl166294166374_)
                                     (let ((_hd166295166379_
                                            (##car _tl166294166374_))
                                           (_tl166296166381_
                                            (##cdr _tl166294166374_)))
                                       (let ((_expander166384_
                                              _hd166295166379_))
                                         (if (##pair? _tl166296166381_)
                                             (let ((_hd166297166386_
                                                    (##car _tl166296166381_))
                                                   (_tl166298166388_
                                                    (##cdr _tl166296166381_)))
                                               (let ((_compiler166391_
                                                      _hd166297166386_))
                                                 (if (##null? _tl166298166388_)
                                                     (_K166292166369_
                                                      _compiler166391_
                                                      _expander166384_
                                                      _key166377_)
                                                     (_E166291166304_))))
                                             (_E166291166304_))))
                                     (_E166291166304_))))
                             (_E166291166304_))))))))
             (if (##pair? _bind166273166280_)
                 (let ((_hd166277166396_ (##car _bind166273166280_))
                       (_tl166278166398_ (##cdr _bind166273166280_)))
                   (let* ((_id166401_ _hd166277166396_)
                          (_rest166403_ _tl166278166398_))
                     (_K166276166393_ _rest166403_ _id166401_)))
                 (_E166275166284_))))
         _bindings166270_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self166408_)
        (let ((_bindings166410_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self166408_
           _bindings166410_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g170938_
        (let ((_g170937_ (##length _g170938_)))
          (cond ((##fx= _g170937_ 1)
                 (apply (lambda (_self166408_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self166408_))
                        _g170938_))
                ((##fx= _g170937_ 2)
                 (apply (lambda (_self166412_ _bindings166413_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self166412_
                           _bindings166413_))
                        _g170938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g170938_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self166041_ _bindings166042_)
        (for-each
         (lambda (_bind166044_)
           (let* ((_bind166045166052_ _bind166044_)
                  (_E166047166056_
                   (lambda ()
                     (error '"No clause matching" _bind166045166052_)))
                  (_K166048166124_
                   (lambda (_rest166059_ _id166060_)
                     (gx#core-context-put!
                      _self166041_
                      _id166060_
                      (##structure
                       gx#syntax-binding::t
                       _id166060_
                       _id166060_
                       '#f
                       (let* ((_rest166061166076_ _rest166059_)
                              (_E166065166080_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest166061166076_))))
                         (let ((_K166070166109_
                                (lambda (_core-id166107_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id166107_)))
                               (_K166067166094_
                                (lambda (_proc166092_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc166092_)))
                               (_K166066166085_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id166060_))))
                           (let ((_try-match166064166088_
                                  (lambda ()
                                    (if (##null? _rest166061166076_)
                                        (_K166066166085_)
                                        (_E166065166080_)))))
                             (if (##pair? _rest166061166076_)
                                 (let ((_tl166072166114_
                                        (##cdr _rest166061166076_))
                                       (_hd166071166112_
                                        (##car _rest166061166076_)))
                                   (if (##eq? _hd166071166112_ '=>)
                                       (if (##pair? _tl166072166114_)
                                           (let ((_tl166074166119_
                                                  (##cdr _tl166072166114_))
                                                 (_hd166073166117_
                                                  (##car _tl166072166114_)))
                                             (if (##null? _tl166074166119_)
                                                 (let ((_core-id166122_
                                                        _hd166073166117_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id166122_))
                                                 (_E166065166080_)))
                                           (if (##null? _tl166072166114_)
                                               (let ((_proc166102_
                                                      _hd166071166112_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc166102_))
                                               (_E166065166080_)))
                                       (if (##null? _tl166072166114_)
                                           (let ((_proc166102_
                                                  _hd166071166112_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc166102_))
                                           (_E166065166080_))))
                                 (_try-match166064166088_))))))))))
             (if (##pair? _bind166045166052_)
                 (let ((_hd166049166127_ (##car _bind166045166052_))
                       (_tl166050166129_ (##cdr _bind166045166052_)))
                   (let* ((_id166132_ _hd166049166127_)
                          (_rest166134_ _tl166050166129_))
                     (_K166048166124_ _rest166134_ _id166132_)))
                 (_E166047166056_))))
         _bindings166042_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self166139_)
        (let ((_bindings166141_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self166139_
           _bindings166141_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g170940_
        (let ((_g170939_ (##length _g170940_)))
          (cond ((##fx= _g170939_ 1)
                 (apply (lambda (_self166139_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self166139_))
                        _g170940_))
                ((##fx= _g170939_ 2)
                 (apply (lambda (_self166143_ _bindings166144_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self166143_
                           _bindings166144_))
                        _g170940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g170940_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self165785_)
        (letrec ((_linux-variant?165787_
                  (lambda (_sys-type165886_)
                    (let* ((_g165887165895_
                            (string-split
                             (symbol->string _sys-type165886_)
                             '#\-))
                           (_else165889165903_ (lambda () '#f))
                           (_K165891165908_
                            (lambda (_rest165906_)
                              (not (null? _rest165906_)))))
                      (if (##pair? _g165887165895_)
                          (let ((_hd165892165911_ (##car _g165887165895_))
                                (_tl165893165913_ (##cdr _g165887165895_)))
                            (if (equal? _hd165892165911_ '"linux")
                                (let ((_rest165916_ _tl165893165913_))
                                  (_K165891165908_ _rest165916_))
                                (_else165889165903_)))
                          (_else165889165903_)))))
                 (_bsd-variant165788_
                  (lambda (_sys-type165845_)
                    (let ((_sys-type-str165847_
                           (symbol->string _sys-type165845_)))
                      (let _lp165849_ ((_rest165851_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest165852165860_ _rest165851_)
                               (_else165854165868_ (lambda () '#f))
                               (_K165856165874_
                                (lambda (_rest165871_ _sys165872_)
                                  (if (string-prefix?
                                       _sys165872_
                                       _sys-type-str165847_)
                                      _sys165872_
                                      (_lp165849_ _rest165871_)))))
                          (if (##pair? _rest165852165860_)
                              (let ((_hd165857165877_
                                     (##car _rest165852165860_))
                                    (_tl165858165879_
                                     (##cdr _rest165852165860_)))
                                (let* ((_sys165882_ _hd165857165877_)
                                       (_rest165884_ _tl165858165879_))
                                  (_K165856165874_ _rest165884_ _sys165882_)))
                              (_else165854165868_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self165785_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self165785_)
          (let* ((_g165789165801_ (system-type))
                 (_else165791165809_ (lambda () '#!void))
                 (_K165793165821_
                  (lambda (_sys-type165812_ _sys-vendor165813_ _sys-cpu165814_)
                    (gx#core-bind-feature!__%
                     _sys-cpu165814_
                     '#f
                     '0
                     _self165785_)
                    (gx#core-bind-feature!__%
                     _sys-type165812_
                     '#f
                     '0
                     _self165785_)
                    (if (_linux-variant?165787_ _sys-type165812_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self165785_)
                        (let ((_$e165816_
                               (_bsd-variant165788_ _sys-type165812_)))
                          (if _$e165816_
                              ((lambda (_sys-prefix165819_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self165785_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix165819_)
                                  '#f
                                  '0
                                  _self165785_))
                               _$e165816_)
                              '#!void))))))
            (if (##pair? _g165789165801_)
                (let ((_hd165794165824_ (##car _g165789165801_))
                      (_tl165795165826_ (##cdr _g165789165801_)))
                  (let ((_sys-cpu165829_ _hd165794165824_))
                    (if (##pair? _tl165795165826_)
                        (let ((_hd165796165831_ (##car _tl165795165826_))
                              (_tl165797165833_ (##cdr _tl165795165826_)))
                          (let ((_sys-vendor165836_ _hd165796165831_))
                            (if (##pair? _tl165797165833_)
                                (let ((_hd165798165838_
                                       (##car _tl165797165833_))
                                      (_tl165799165840_
                                       (##cdr _tl165797165833_)))
                                  (let ((_sys-type165843_ _hd165798165838_))
                                    (if (##null? _tl165799165840_)
                                        (_K165793165821_
                                         _sys-type165843_
                                         _sys-vendor165836_
                                         _sys-cpu165829_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self165785_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
