(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707555133)
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
      (lambda (_self166633_ _bind?166634_)
        (if (##fx< '2 (##structure-length _self166633_))
            (begin
              (##unchecked-structure-set!
               _self166633_
               'root
               '1
               (##structure-type _self166633_)
               '#f)
              (##unchecked-structure-set!
               _self166633_
               (make-table 'test: eq?)
               '2
               (##structure-type _self166633_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self166633_
                   '2
                   (##vector-length _self166633_)))
        (if _bind?166634_
            (begin
              (let ((__method170878
                     (method-ref _self166633_ 'bind-core-syntax-expanders!)))
                (if __method170878
                    (__method170878 _self166633_)
                    (error '"Missing method"
                           _self166633_
                           'bind-core-syntax-expanders!)))
              (let ((__method170879
                     (method-ref _self166633_ 'bind-core-macro-expanders!)))
                (if __method170879
                    (__method170879 _self166633_)
                    (error '"Missing method"
                           _self166633_
                           'bind-core-macro-expanders!)))
              (let ((__method170880
                     (method-ref _self166633_ 'bind-core-features!)))
                (if __method170880
                    (__method170880 _self166633_)
                    (error '"Missing method"
                           _self166633_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self166639_)
        (let ((_bind?166641_ '#t))
          (gx#root-context:::init!__% _self166639_ _bind?166641_))))
    (define gx#root-context:::init!
      (lambda _g170883_
        (let ((_g170882_ (##length _g170883_)))
          (cond ((##fx= _g170882_ 1)
                 (apply (lambda (_self166639_)
                          (gx#root-context:::init!__0 _self166639_))
                        _g170883_))
                ((##fx= _g170882_ 2)
                 (apply (lambda (_self166643_ _bind?166644_)
                          (gx#root-context:::init!__%
                           _self166643_
                           _bind?166644_))
                        _g170883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g170883_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t170839)
        (let ((__bind-core-macro-expanders!170840
               (make-promise
                (lambda ()
                  (let ((__tmp170843
                         (direct-method-ref
                          __t170839
                          'bind-core-macro-expanders!)))
                    (if __tmp170843
                        __tmp170843
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!170841
               (make-promise
                (lambda ()
                  (let ((__tmp170844
                         (direct-method-ref
                          __t170839
                          'bind-core-syntax-expanders!)))
                    (if __tmp170844
                        __tmp170844
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!170842
               (make-promise
                (lambda ()
                  (let ((__tmp170845
                         (direct-method-ref __t170839 'bind-core-features!)))
                    (if __tmp170845
                        __tmp170845
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda166631166636_
                 (lambda (_self166633_ _bind?166634_)
                   (if (##fx< '2 (##structure-length _self166633_))
                       (begin
                         (##unchecked-structure-set!
                          _self166633_
                          'root
                          '1
                          (##structure-type _self166633_)
                          '#f)
                         (##unchecked-structure-set!
                          _self166633_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self166633_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self166633_
                              '2
                              (##vector-length _self166633_)))
                   (if _bind?166634_
                       (begin
                         ((force __bind-core-syntax-expanders!170841)
                          _self166633_)
                         ((force __bind-core-macro-expanders!170840)
                          _self166633_)
                         ((force __bind-core-features!170842) _self166633_))
                       '#!void))))
            (lambda _g170885_
              (let ((_g170884_ (##length _g170885_)))
                (cond ((##fx= _g170884_ 1)
                       (apply (lambda (_self166639_)
                                (let ((_bind?166641_ '#t))
                                  (_opt-lambda166631166636_
                                   _self166639_
                                   _bind?166641_)))
                              _g170885_))
                      ((##fx= _g170884_ 2)
                       (apply (lambda (_self166643_ _bind?166644_)
                                (_opt-lambda166631166636_
                                 _self166643_
                                 _bind?166644_))
                              _g170885_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g170885_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self166489_ _super166490_)
        (let ((_super166498_
               (let ((_$e166492_ _super166490_))
                 (if _$e166492_
                     _$e166492_
                     (let ((_$e166495_ (gx#core-context-root__0)))
                       (if _$e166495_
                           _$e166495_
                           (let ((__obj170881
                                  (make-object gx#root-context::t '3)))
                             (gx#root-context:::init! __obj170881)
                             __obj170881)))))))
          (if (##fx< '5 (##structure-length _self166489_))
              (begin
                (##unchecked-structure-set!
                 _self166489_
                 'top
                 '1
                 (##structure-type _self166489_)
                 '#f)
                (##unchecked-structure-set!
                 _self166489_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self166489_)
                 '#f)
                (##unchecked-structure-set!
                 _self166489_
                 _super166498_
                 '3
                 (##structure-type _self166489_)
                 '#f)
                (##unchecked-structure-set!
                 _self166489_
                 '#f
                 '4
                 (##structure-type _self166489_)
                 '#f)
                (##unchecked-structure-set!
                 _self166489_
                 '#f
                 '5
                 (##structure-type _self166489_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self166489_
                     '5
                     (##vector-length _self166489_))))))
    (define gx#top-context:::init!__0
      (lambda (_self166503_)
        (let ((_super166505_ '#f))
          (gx#top-context:::init!__% _self166503_ _super166505_))))
    (define gx#top-context:::init!
      (lambda _g170887_
        (let ((_g170886_ (##length _g170887_)))
          (cond ((##fx= _g170886_ 1)
                 (apply (lambda (_self166503_)
                          (gx#top-context:::init!__0 _self166503_))
                        _g170887_))
                ((##fx= _g170886_ 2)
                 (apply (lambda (_self166507_ _super166508_)
                          (gx#top-context:::init!__%
                           _self166507_
                           _super166508_))
                        _g170887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g170887_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self166220_ _bindings166221_)
        (for-each
         (lambda (_bind166223_)
           (let* ((_bind166224166231_ _bind166223_)
                  (_E166226166235_
                   (lambda ()
                     (error '"No clause matching" _bind166224166231_)))
                  (_K166227166344_
                   (lambda (_rest166238_ _id166239_)
                     (gx#core-context-put!
                      _self166220_
                      _id166239_
                      (##structure
                       gx#syntax-binding::t
                       _id166239_
                       _id166239_
                       '#f
                       (let* ((_rest166240166251_ _rest166238_)
                              (_E166242166255_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest166240166251_)))
                              (_K166243166320_
                               (lambda (_compiler166258_
                                        _expander166259_
                                        _key166260_)
                                 ((let* ((_key166261166274_ _key166260_)
                                         (_E166267166278_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key166261166274_))))
                                    (let ((_K166272166314_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K166271166307_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K166270166299_
                                           (lambda () gx#make-definition-form))
                                          (_K166269166291_
                                           (lambda () gx#make-special-form))
                                          (_K166268166283_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match166266166286_
                                              (lambda ()
                                                (if (##eq? _key166261166274_
                                                           'expr:)
                                                    (_K166268166283_)
                                                    (_E166267166278_))))
                                             (_try-match166265166294_
                                              (lambda ()
                                                (if (##eq? _key166261166274_
                                                           'special:)
                                                    (_K166269166291_)
                                                    (_try-match166266166286_))))
                                             (_try-match166264166302_
                                              (lambda ()
                                                (if (##eq? _key166261166274_
                                                           'define:)
                                                    (_K166270166299_)
                                                    (_try-match166265166294_))))
                                             (_try-match166263166310_
                                              (lambda ()
                                                (if (##eq? _key166261166274_
                                                           'module:)
                                                    (_K166271166307_)
                                                    (_try-match166264166302_)))))
                                        (if (##eq? _key166261166274_ 'top:)
                                            (_K166272166314_)
                                            (_try-match166263166310_)))))
                                  _expander166259_
                                  _id166239_
                                  (let ((_$e166317_ _compiler166258_))
                                    (if _$e166317_
                                        _$e166317_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest166240166251_)
                             (let ((_hd166244166323_
                                    (##car _rest166240166251_))
                                   (_tl166245166325_
                                    (##cdr _rest166240166251_)))
                               (let ((_key166328_ _hd166244166323_))
                                 (if (##pair? _tl166245166325_)
                                     (let ((_hd166246166330_
                                            (##car _tl166245166325_))
                                           (_tl166247166332_
                                            (##cdr _tl166245166325_)))
                                       (let ((_expander166335_
                                              _hd166246166330_))
                                         (if (##pair? _tl166247166332_)
                                             (let ((_hd166248166337_
                                                    (##car _tl166247166332_))
                                                   (_tl166249166339_
                                                    (##cdr _tl166247166332_)))
                                               (let ((_compiler166342_
                                                      _hd166248166337_))
                                                 (if (##null? _tl166249166339_)
                                                     (_K166243166320_
                                                      _compiler166342_
                                                      _expander166335_
                                                      _key166328_)
                                                     (_E166242166255_))))
                                             (_E166242166255_))))
                                     (_E166242166255_))))
                             (_E166242166255_))))))))
             (if (##pair? _bind166224166231_)
                 (let ((_hd166228166347_ (##car _bind166224166231_))
                       (_tl166229166349_ (##cdr _bind166224166231_)))
                   (let* ((_id166352_ _hd166228166347_)
                          (_rest166354_ _tl166229166349_))
                     (_K166227166344_ _rest166354_ _id166352_)))
                 (_E166226166235_))))
         _bindings166221_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self166359_)
        (let ((_bindings166361_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self166359_
           _bindings166361_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g170889_
        (let ((_g170888_ (##length _g170889_)))
          (cond ((##fx= _g170888_ 1)
                 (apply (lambda (_self166359_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self166359_))
                        _g170889_))
                ((##fx= _g170888_ 2)
                 (apply (lambda (_self166363_ _bindings166364_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self166363_
                           _bindings166364_))
                        _g170889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g170889_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self165992_ _bindings165993_)
        (for-each
         (lambda (_bind165995_)
           (let* ((_bind165996166003_ _bind165995_)
                  (_E165998166007_
                   (lambda ()
                     (error '"No clause matching" _bind165996166003_)))
                  (_K165999166075_
                   (lambda (_rest166010_ _id166011_)
                     (gx#core-context-put!
                      _self165992_
                      _id166011_
                      (##structure
                       gx#syntax-binding::t
                       _id166011_
                       _id166011_
                       '#f
                       (let* ((_rest166012166027_ _rest166010_)
                              (_E166016166031_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest166012166027_))))
                         (let ((_K166021166060_
                                (lambda (_core-id166058_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id166058_)))
                               (_K166018166045_
                                (lambda (_proc166043_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc166043_)))
                               (_K166017166036_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id166011_))))
                           (let ((_try-match166015166039_
                                  (lambda ()
                                    (if (##null? _rest166012166027_)
                                        (_K166017166036_)
                                        (_E166016166031_)))))
                             (if (##pair? _rest166012166027_)
                                 (let ((_tl166023166065_
                                        (##cdr _rest166012166027_))
                                       (_hd166022166063_
                                        (##car _rest166012166027_)))
                                   (if (##eq? _hd166022166063_ '=>)
                                       (if (##pair? _tl166023166065_)
                                           (let ((_tl166025166070_
                                                  (##cdr _tl166023166065_))
                                                 (_hd166024166068_
                                                  (##car _tl166023166065_)))
                                             (if (##null? _tl166025166070_)
                                                 (let ((_core-id166073_
                                                        _hd166024166068_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id166073_))
                                                 (_E166016166031_)))
                                           (if (##null? _tl166023166065_)
                                               (let ((_proc166053_
                                                      _hd166022166063_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc166053_))
                                               (_E166016166031_)))
                                       (if (##null? _tl166023166065_)
                                           (let ((_proc166053_
                                                  _hd166022166063_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc166053_))
                                           (_E166016166031_))))
                                 (_try-match166015166039_))))))))))
             (if (##pair? _bind165996166003_)
                 (let ((_hd166000166078_ (##car _bind165996166003_))
                       (_tl166001166080_ (##cdr _bind165996166003_)))
                   (let* ((_id166083_ _hd166000166078_)
                          (_rest166085_ _tl166001166080_))
                     (_K165999166075_ _rest166085_ _id166083_)))
                 (_E165998166007_))))
         _bindings165993_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self166090_)
        (let ((_bindings166092_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self166090_
           _bindings166092_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g170891_
        (let ((_g170890_ (##length _g170891_)))
          (cond ((##fx= _g170890_ 1)
                 (apply (lambda (_self166090_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self166090_))
                        _g170891_))
                ((##fx= _g170890_ 2)
                 (apply (lambda (_self166094_ _bindings166095_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self166094_
                           _bindings166095_))
                        _g170891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g170891_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self165736_)
        (letrec ((_linux-variant?165738_
                  (lambda (_sys-type165837_)
                    (let* ((_g165838165846_
                            (string-split
                             (symbol->string _sys-type165837_)
                             '#\-))
                           (_else165840165854_ (lambda () '#f))
                           (_K165842165859_
                            (lambda (_rest165857_)
                              (not (null? _rest165857_)))))
                      (if (##pair? _g165838165846_)
                          (let ((_hd165843165862_ (##car _g165838165846_))
                                (_tl165844165864_ (##cdr _g165838165846_)))
                            (if (equal? _hd165843165862_ '"linux")
                                (let ((_rest165867_ _tl165844165864_))
                                  (_K165842165859_ _rest165867_))
                                (_else165840165854_)))
                          (_else165840165854_)))))
                 (_bsd-variant165739_
                  (lambda (_sys-type165796_)
                    (let ((_sys-type-str165798_
                           (symbol->string _sys-type165796_)))
                      (let _lp165800_ ((_rest165802_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest165803165811_ _rest165802_)
                               (_else165805165819_ (lambda () '#f))
                               (_K165807165825_
                                (lambda (_rest165822_ _sys165823_)
                                  (if (string-prefix?
                                       _sys165823_
                                       _sys-type-str165798_)
                                      _sys165823_
                                      (_lp165800_ _rest165822_)))))
                          (if (##pair? _rest165803165811_)
                              (let ((_hd165808165828_
                                     (##car _rest165803165811_))
                                    (_tl165809165830_
                                     (##cdr _rest165803165811_)))
                                (let* ((_sys165833_ _hd165808165828_)
                                       (_rest165835_ _tl165809165830_))
                                  (_K165807165825_ _rest165835_ _sys165833_)))
                              (_else165805165819_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self165736_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self165736_)
          (let* ((_g165740165752_ (system-type))
                 (_else165742165760_ (lambda () '#!void))
                 (_K165744165772_
                  (lambda (_sys-type165763_ _sys-vendor165764_ _sys-cpu165765_)
                    (gx#core-bind-feature!__%
                     _sys-cpu165765_
                     '#f
                     '0
                     _self165736_)
                    (gx#core-bind-feature!__%
                     _sys-type165763_
                     '#f
                     '0
                     _self165736_)
                    (if (_linux-variant?165738_ _sys-type165763_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self165736_)
                        (let ((_$e165767_
                               (_bsd-variant165739_ _sys-type165763_)))
                          (if _$e165767_
                              ((lambda (_sys-prefix165770_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self165736_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix165770_)
                                  '#f
                                  '0
                                  _self165736_))
                               _$e165767_)
                              '#!void))))))
            (if (##pair? _g165740165752_)
                (let ((_hd165745165775_ (##car _g165740165752_))
                      (_tl165746165777_ (##cdr _g165740165752_)))
                  (let ((_sys-cpu165780_ _hd165745165775_))
                    (if (##pair? _tl165746165777_)
                        (let ((_hd165747165782_ (##car _tl165746165777_))
                              (_tl165748165784_ (##cdr _tl165746165777_)))
                          (let ((_sys-vendor165787_ _hd165747165782_))
                            (if (##pair? _tl165748165784_)
                                (let ((_hd165749165789_
                                       (##car _tl165748165784_))
                                      (_tl165750165791_
                                       (##cdr _tl165748165784_)))
                                  (let ((_sys-type165794_ _hd165749165789_))
                                    (if (##null? _tl165750165791_)
                                        (_K165744165772_
                                         _sys-type165794_
                                         _sys-vendor165787_
                                         _sys-cpu165780_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self165736_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
