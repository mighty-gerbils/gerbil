(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707601717)
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
      (lambda (_self172566_ _bind?172567_)
        (if (##fx< '2 (##structure-length _self172566_))
            (begin
              (##unchecked-structure-set!
               _self172566_
               'root
               '1
               (##structure-type _self172566_)
               '#f)
              (##unchecked-structure-set!
               _self172566_
               (make-table 'test: eq?)
               '2
               (##structure-type _self172566_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self172566_
                   '2
                   (##vector-length _self172566_)))
        (if _bind?172567_
            (begin
              (let ((__method177085
                     (method-ref _self172566_ 'bind-core-syntax-expanders!)))
                (if __method177085
                    (__method177085 _self172566_)
                    (error '"Missing method"
                           _self172566_
                           'bind-core-syntax-expanders!)))
              (let ((__method177086
                     (method-ref _self172566_ 'bind-core-macro-expanders!)))
                (if __method177086
                    (__method177086 _self172566_)
                    (error '"Missing method"
                           _self172566_
                           'bind-core-macro-expanders!)))
              (let ((__method177087
                     (method-ref _self172566_ 'bind-core-features!)))
                (if __method177087
                    (__method177087 _self172566_)
                    (error '"Missing method"
                           _self172566_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self172572_)
        (let ((_bind?172574_ '#t))
          (gx#root-context:::init!__% _self172572_ _bind?172574_))))
    (define gx#root-context:::init!
      (lambda _g177090_
        (let ((_g177089_ (##length _g177090_)))
          (cond ((##fx= _g177089_ 1)
                 (apply (lambda (_self172572_)
                          (gx#root-context:::init!__0 _self172572_))
                        _g177090_))
                ((##fx= _g177089_ 2)
                 (apply (lambda (_self172576_ _bind?172577_)
                          (gx#root-context:::init!__%
                           _self172576_
                           _bind?172577_))
                        _g177090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g177090_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t177046)
        (let ((__bind-core-macro-expanders!177047
               (make-promise
                (lambda ()
                  (let ((__tmp177050
                         (direct-method-ref
                          __t177046
                          'bind-core-macro-expanders!)))
                    (if __tmp177050
                        __tmp177050
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!177048
               (make-promise
                (lambda ()
                  (let ((__tmp177051
                         (direct-method-ref
                          __t177046
                          'bind-core-syntax-expanders!)))
                    (if __tmp177051
                        __tmp177051
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!177049
               (make-promise
                (lambda ()
                  (let ((__tmp177052
                         (direct-method-ref __t177046 'bind-core-features!)))
                    (if __tmp177052
                        __tmp177052
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda172564172569_
                 (lambda (_self172566_ _bind?172567_)
                   (if (##fx< '2 (##structure-length _self172566_))
                       (begin
                         (##unchecked-structure-set!
                          _self172566_
                          'root
                          '1
                          (##structure-type _self172566_)
                          '#f)
                         (##unchecked-structure-set!
                          _self172566_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self172566_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self172566_
                              '2
                              (##vector-length _self172566_)))
                   (if _bind?172567_
                       (begin
                         ((force __bind-core-syntax-expanders!177048)
                          _self172566_)
                         ((force __bind-core-macro-expanders!177047)
                          _self172566_)
                         ((force __bind-core-features!177049) _self172566_))
                       '#!void))))
            (lambda _g177092_
              (let ((_g177091_ (##length _g177092_)))
                (cond ((##fx= _g177091_ 1)
                       (apply (lambda (_self172572_)
                                (let ((_bind?172574_ '#t))
                                  (_opt-lambda172564172569_
                                   _self172572_
                                   _bind?172574_)))
                              _g177092_))
                      ((##fx= _g177091_ 2)
                       (apply (lambda (_self172576_ _bind?172577_)
                                (_opt-lambda172564172569_
                                 _self172576_
                                 _bind?172577_))
                              _g177092_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g177092_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self172422_ _super172423_)
        (let ((_super172431_
               (let ((_$e172425_ _super172423_))
                 (if _$e172425_
                     _$e172425_
                     (let ((_$e172428_ (gx#core-context-root__0)))
                       (if _$e172428_
                           _$e172428_
                           (let ((__obj177088
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj177088)
                             __obj177088)))))))
          (if (##fx< '5 (##structure-length _self172422_))
              (begin
                (##unchecked-structure-set!
                 _self172422_
                 'top
                 '1
                 (##structure-type _self172422_)
                 '#f)
                (##unchecked-structure-set!
                 _self172422_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self172422_)
                 '#f)
                (##unchecked-structure-set!
                 _self172422_
                 _super172431_
                 '3
                 (##structure-type _self172422_)
                 '#f)
                (##unchecked-structure-set!
                 _self172422_
                 '#f
                 '4
                 (##structure-type _self172422_)
                 '#f)
                (##unchecked-structure-set!
                 _self172422_
                 '#f
                 '5
                 (##structure-type _self172422_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self172422_
                     '5
                     (##vector-length _self172422_))))))
    (define gx#top-context:::init!__0
      (lambda (_self172436_)
        (let ((_super172438_ '#f))
          (gx#top-context:::init!__% _self172436_ _super172438_))))
    (define gx#top-context:::init!
      (lambda _g177094_
        (let ((_g177093_ (##length _g177094_)))
          (cond ((##fx= _g177093_ 1)
                 (apply (lambda (_self172436_)
                          (gx#top-context:::init!__0 _self172436_))
                        _g177094_))
                ((##fx= _g177093_ 2)
                 (apply (lambda (_self172440_ _super172441_)
                          (gx#top-context:::init!__%
                           _self172440_
                           _super172441_))
                        _g177094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g177094_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self172153_ _bindings172154_)
        (for-each
         (lambda (_bind172156_)
           (let* ((_bind172157172164_ _bind172156_)
                  (_E172159172168_
                   (lambda ()
                     (error '"No clause matching" _bind172157172164_)))
                  (_K172160172277_
                   (lambda (_rest172171_ _id172172_)
                     (gx#core-context-put!
                      _self172153_
                      _id172172_
                      (##structure
                       gx#syntax-binding::t
                       _id172172_
                       _id172172_
                       '#f
                       (let* ((_rest172173172184_ _rest172171_)
                              (_E172175172188_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest172173172184_)))
                              (_K172176172253_
                               (lambda (_compiler172191_
                                        _expander172192_
                                        _key172193_)
                                 ((let* ((_key172194172207_ _key172193_)
                                         (_E172200172211_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key172194172207_))))
                                    (let ((_K172205172247_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K172204172240_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K172203172232_
                                           (lambda () gx#make-definition-form))
                                          (_K172202172224_
                                           (lambda () gx#make-special-form))
                                          (_K172201172216_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match172199172219_
                                              (lambda ()
                                                (if (##eq? _key172194172207_
                                                           'expr:)
                                                    (_K172201172216_)
                                                    (_E172200172211_))))
                                             (_try-match172198172227_
                                              (lambda ()
                                                (if (##eq? _key172194172207_
                                                           'special:)
                                                    (_K172202172224_)
                                                    (_try-match172199172219_))))
                                             (_try-match172197172235_
                                              (lambda ()
                                                (if (##eq? _key172194172207_
                                                           'define:)
                                                    (_K172203172232_)
                                                    (_try-match172198172227_))))
                                             (_try-match172196172243_
                                              (lambda ()
                                                (if (##eq? _key172194172207_
                                                           'module:)
                                                    (_K172204172240_)
                                                    (_try-match172197172235_)))))
                                        (if (##eq? _key172194172207_ 'top:)
                                            (_K172205172247_)
                                            (_try-match172196172243_)))))
                                  _expander172192_
                                  _id172172_
                                  (let ((_$e172250_ _compiler172191_))
                                    (if _$e172250_
                                        _$e172250_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest172173172184_)
                             (let ((_hd172177172256_
                                    (##car _rest172173172184_))
                                   (_tl172178172258_
                                    (##cdr _rest172173172184_)))
                               (let ((_key172261_ _hd172177172256_))
                                 (if (##pair? _tl172178172258_)
                                     (let ((_hd172179172263_
                                            (##car _tl172178172258_))
                                           (_tl172180172265_
                                            (##cdr _tl172178172258_)))
                                       (let ((_expander172268_
                                              _hd172179172263_))
                                         (if (##pair? _tl172180172265_)
                                             (let ((_hd172181172270_
                                                    (##car _tl172180172265_))
                                                   (_tl172182172272_
                                                    (##cdr _tl172180172265_)))
                                               (let ((_compiler172275_
                                                      _hd172181172270_))
                                                 (if (##null? _tl172182172272_)
                                                     (_K172176172253_
                                                      _compiler172275_
                                                      _expander172268_
                                                      _key172261_)
                                                     (_E172175172188_))))
                                             (_E172175172188_))))
                                     (_E172175172188_))))
                             (_E172175172188_))))))))
             (if (##pair? _bind172157172164_)
                 (let ((_hd172161172280_ (##car _bind172157172164_))
                       (_tl172162172282_ (##cdr _bind172157172164_)))
                   (let* ((_id172285_ _hd172161172280_)
                          (_rest172287_ _tl172162172282_))
                     (_K172160172277_ _rest172287_ _id172285_)))
                 (_E172159172168_))))
         _bindings172154_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self172292_)
        (let ((_bindings172294_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self172292_
           _bindings172294_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g177096_
        (let ((_g177095_ (##length _g177096_)))
          (cond ((##fx= _g177095_ 1)
                 (apply (lambda (_self172292_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self172292_))
                        _g177096_))
                ((##fx= _g177095_ 2)
                 (apply (lambda (_self172296_ _bindings172297_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self172296_
                           _bindings172297_))
                        _g177096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g177096_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self171925_ _bindings171926_)
        (for-each
         (lambda (_bind171928_)
           (let* ((_bind171929171936_ _bind171928_)
                  (_E171931171940_
                   (lambda ()
                     (error '"No clause matching" _bind171929171936_)))
                  (_K171932172008_
                   (lambda (_rest171943_ _id171944_)
                     (gx#core-context-put!
                      _self171925_
                      _id171944_
                      (##structure
                       gx#syntax-binding::t
                       _id171944_
                       _id171944_
                       '#f
                       (let* ((_rest171945171960_ _rest171943_)
                              (_E171949171964_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest171945171960_))))
                         (let ((_K171954171993_
                                (lambda (_core-id171991_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id171991_)))
                               (_K171951171978_
                                (lambda (_proc171976_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc171976_)))
                               (_K171950171969_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id171944_))))
                           (let ((_try-match171948171972_
                                  (lambda ()
                                    (if (##null? _rest171945171960_)
                                        (_K171950171969_)
                                        (_E171949171964_)))))
                             (if (##pair? _rest171945171960_)
                                 (let ((_tl171956171998_
                                        (##cdr _rest171945171960_))
                                       (_hd171955171996_
                                        (##car _rest171945171960_)))
                                   (if (##eq? _hd171955171996_ '=>)
                                       (if (##pair? _tl171956171998_)
                                           (let ((_tl171958172003_
                                                  (##cdr _tl171956171998_))
                                                 (_hd171957172001_
                                                  (##car _tl171956171998_)))
                                             (if (##null? _tl171958172003_)
                                                 (let ((_core-id172006_
                                                        _hd171957172001_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id172006_))
                                                 (_E171949171964_)))
                                           (if (##null? _tl171956171998_)
                                               (let ((_proc171986_
                                                      _hd171955171996_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc171986_))
                                               (_E171949171964_)))
                                       (if (##null? _tl171956171998_)
                                           (let ((_proc171986_
                                                  _hd171955171996_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc171986_))
                                           (_E171949171964_))))
                                 (_try-match171948171972_))))))))))
             (if (##pair? _bind171929171936_)
                 (let ((_hd171933172011_ (##car _bind171929171936_))
                       (_tl171934172013_ (##cdr _bind171929171936_)))
                   (let* ((_id172016_ _hd171933172011_)
                          (_rest172018_ _tl171934172013_))
                     (_K171932172008_ _rest172018_ _id172016_)))
                 (_E171931171940_))))
         _bindings171926_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self172023_)
        (let ((_bindings172025_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self172023_
           _bindings172025_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g177098_
        (let ((_g177097_ (##length _g177098_)))
          (cond ((##fx= _g177097_ 1)
                 (apply (lambda (_self172023_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self172023_))
                        _g177098_))
                ((##fx= _g177097_ 2)
                 (apply (lambda (_self172027_ _bindings172028_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self172027_
                           _bindings172028_))
                        _g177098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g177098_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self171669_)
        (letrec ((_linux-variant?171671_
                  (lambda (_sys-type171770_)
                    (let* ((_g171771171779_
                            (string-split
                             (symbol->string _sys-type171770_)
                             '#\-))
                           (_else171773171787_ (lambda () '#f))
                           (_K171775171792_
                            (lambda (_rest171790_)
                              (not (null? _rest171790_)))))
                      (if (##pair? _g171771171779_)
                          (let ((_hd171776171795_ (##car _g171771171779_))
                                (_tl171777171797_ (##cdr _g171771171779_)))
                            (if (equal? _hd171776171795_ '"linux")
                                (let ((_rest171800_ _tl171777171797_))
                                  (_K171775171792_ _rest171800_))
                                (_else171773171787_)))
                          (_else171773171787_)))))
                 (_bsd-variant171672_
                  (lambda (_sys-type171729_)
                    (let ((_sys-type-str171731_
                           (symbol->string _sys-type171729_)))
                      (let _lp171733_ ((_rest171735_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest171736171744_ _rest171735_)
                               (_else171738171752_ (lambda () '#f))
                               (_K171740171758_
                                (lambda (_rest171755_ _sys171756_)
                                  (if (string-prefix?
                                       _sys171756_
                                       _sys-type-str171731_)
                                      _sys171756_
                                      (_lp171733_ _rest171755_)))))
                          (if (##pair? _rest171736171744_)
                              (let ((_hd171741171761_
                                     (##car _rest171736171744_))
                                    (_tl171742171763_
                                     (##cdr _rest171736171744_)))
                                (let* ((_sys171766_ _hd171741171761_)
                                       (_rest171768_ _tl171742171763_))
                                  (_K171740171758_ _rest171768_ _sys171766_)))
                              (_else171738171752_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self171669_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self171669_)
          (let* ((_g171673171685_ (system-type))
                 (_else171675171693_ (lambda () '#!void))
                 (_K171677171705_
                  (lambda (_sys-type171696_ _sys-vendor171697_ _sys-cpu171698_)
                    (gx#core-bind-feature!__%
                     _sys-cpu171698_
                     '#f
                     '0
                     _self171669_)
                    (gx#core-bind-feature!__%
                     _sys-type171696_
                     '#f
                     '0
                     _self171669_)
                    (if (_linux-variant?171671_ _sys-type171696_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self171669_)
                        (let ((_$e171700_
                               (_bsd-variant171672_ _sys-type171696_)))
                          (if _$e171700_
                              ((lambda (_sys-prefix171703_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self171669_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix171703_)
                                  '#f
                                  '0
                                  _self171669_))
                               _$e171700_)
                              '#!void))))))
            (if (##pair? _g171673171685_)
                (let ((_hd171678171708_ (##car _g171673171685_))
                      (_tl171679171710_ (##cdr _g171673171685_)))
                  (let ((_sys-cpu171713_ _hd171678171708_))
                    (if (##pair? _tl171679171710_)
                        (let ((_hd171680171715_ (##car _tl171679171710_))
                              (_tl171681171717_ (##cdr _tl171679171710_)))
                          (let ((_sys-vendor171720_ _hd171680171715_))
                            (if (##pair? _tl171681171717_)
                                (let ((_hd171682171722_
                                       (##car _tl171681171717_))
                                      (_tl171683171724_
                                       (##cdr _tl171681171717_)))
                                  (let ((_sys-type171727_ _hd171682171722_))
                                    (if (##null? _tl171683171724_)
                                        (_K171677171705_
                                         _sys-type171727_
                                         _sys-vendor171720_
                                         _sys-cpu171713_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self171669_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
