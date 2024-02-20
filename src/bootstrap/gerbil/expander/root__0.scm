(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708418155)
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
      (lambda (_self94924_ _bind?94925_)
        (if (##fx< '2 (##structure-length _self94924_))
            (begin
              (##unchecked-structure-set!
               _self94924_
               'root
               '1
               (##structure-type _self94924_)
               '#f)
              (##unchecked-structure-set!
               _self94924_
               (make-hash-table-eq)
               '2
               (##structure-type _self94924_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94924_
                   '2
                   (##vector-length _self94924_)))
        (if _bind?94925_
            (begin
              (let ((__method94975
                     (method-ref _self94924_ 'bind-core-syntax-expanders!)))
                (if __method94975
                    (__method94975 _self94924_)
                    (error '"Missing method"
                           _self94924_
                           'bind-core-syntax-expanders!)))
              (let ((__method94976
                     (method-ref _self94924_ 'bind-core-macro-expanders!)))
                (if __method94976
                    (__method94976 _self94924_)
                    (error '"Missing method"
                           _self94924_
                           'bind-core-macro-expanders!)))
              (let ((__method94977
                     (method-ref _self94924_ 'bind-core-features!)))
                (if __method94977
                    (__method94977 _self94924_)
                    (error '"Missing method"
                           _self94924_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self94930_)
        (let ((_bind?94932_ '#t))
          (gx#root-context:::init!__% _self94930_ _bind?94932_))))
    (define gx#root-context:::init!
      (lambda _g94980_
        (let ((_g94979_ (##length _g94980_)))
          (cond ((##fx= _g94979_ 1)
                 (apply (lambda (_self94930_)
                          (gx#root-context:::init!__0 _self94930_))
                        _g94980_))
                ((##fx= _g94979_ 2)
                 (apply (lambda (_self94934_ _bind?94935_)
                          (gx#root-context:::init!__%
                           _self94934_
                           _bind?94935_))
                        _g94980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g94980_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t94936)
        (let ((__bind-core-syntax-expanders!94937
               (make-promise
                (lambda ()
                  (let ((__tmp94940
                         (direct-method-ref
                          __t94936
                          '#f
                          'bind-core-syntax-expanders!)))
                    (if __tmp94940
                        __tmp94940
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!94938
               (make-promise
                (lambda ()
                  (let ((__tmp94941
                         (direct-method-ref
                          __t94936
                          '#f
                          'bind-core-macro-expanders!)))
                    (if __tmp94941
                        __tmp94941
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!94939
               (make-promise
                (lambda ()
                  (let ((__tmp94942
                         (direct-method-ref
                          __t94936
                          '#f
                          'bind-core-features!)))
                    (if __tmp94942
                        __tmp94942
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda9492294927_
                 (lambda (_self94924_ _bind?94925_)
                   (if (##fx< '2 (##structure-length _self94924_))
                       (begin
                         (##unchecked-structure-set!
                          _self94924_
                          'root
                          '1
                          (##structure-type _self94924_)
                          '#f)
                         (##unchecked-structure-set!
                          _self94924_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self94924_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self94924_
                              '2
                              (##vector-length _self94924_)))
                   (if _bind?94925_
                       (begin
                         ((force __bind-core-syntax-expanders!94937)
                          _self94924_)
                         ((force __bind-core-macro-expanders!94938)
                          _self94924_)
                         ((force __bind-core-features!94939) _self94924_))
                       '#!void))))
            (lambda _g94982_
              (let ((_g94981_ (##length _g94982_)))
                (cond ((##fx= _g94981_ 1)
                       (apply (lambda (_self94930_)
                                (let ((_bind?94932_ '#t))
                                  (_opt-lambda9492294927_
                                   _self94930_
                                   _bind?94932_)))
                              _g94982_))
                      ((##fx= _g94981_ 2)
                       (apply (lambda (_self94934_ _bind?94935_)
                                (_opt-lambda9492294927_
                                 _self94934_
                                 _bind?94935_))
                              _g94982_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g94982_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self94780_ _super94781_)
        (let ((_super94789_
               (let ((_$e94783_ _super94781_))
                 (if _$e94783_
                     _$e94783_
                     (let ((_$e94786_ (gx#core-context-root__0)))
                       (if _$e94786_
                           _$e94786_
                           (let ((__obj94978
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj94978)
                             __obj94978)))))))
          (if (##fx< '5 (##structure-length _self94780_))
              (begin
                (##unchecked-structure-set!
                 _self94780_
                 'top
                 '1
                 (##structure-type _self94780_)
                 '#f)
                (##unchecked-structure-set!
                 _self94780_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self94780_)
                 '#f)
                (##unchecked-structure-set!
                 _self94780_
                 _super94789_
                 '3
                 (##structure-type _self94780_)
                 '#f)
                (##unchecked-structure-set!
                 _self94780_
                 '#f
                 '4
                 (##structure-type _self94780_)
                 '#f)
                (##unchecked-structure-set!
                 _self94780_
                 '#f
                 '5
                 (##structure-type _self94780_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self94780_
                     '5
                     (##vector-length _self94780_))))))
    (define gx#top-context:::init!__0
      (lambda (_self94794_)
        (let ((_super94796_ '#f))
          (gx#top-context:::init!__% _self94794_ _super94796_))))
    (define gx#top-context:::init!
      (lambda _g94984_
        (let ((_g94983_ (##length _g94984_)))
          (cond ((##fx= _g94983_ 1)
                 (apply (lambda (_self94794_)
                          (gx#top-context:::init!__0 _self94794_))
                        _g94984_))
                ((##fx= _g94983_ 2)
                 (apply (lambda (_self94798_ _super94799_)
                          (gx#top-context:::init!__% _self94798_ _super94799_))
                        _g94984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g94984_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self94511_ _bindings94512_)
        (for-each
         (lambda (_bind94514_)
           (let* ((_bind9451594522_ _bind94514_)
                  (_E9451794526_
                   (lambda () (error '"No clause matching" _bind9451594522_)))
                  (_K9451894635_
                   (lambda (_rest94529_ _id94530_)
                     (gx#core-context-put!
                      _self94511_
                      _id94530_
                      (##structure
                       gx#syntax-binding::t
                       _id94530_
                       _id94530_
                       '#f
                       (let* ((_rest9453194542_ _rest94529_)
                              (_E9453394546_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9453194542_)))
                              (_K9453494611_
                               (lambda (_compiler94549_
                                        _expander94550_
                                        _key94551_)
                                 ((let* ((_key9455294565_ _key94551_)
                                         (_E9455894569_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9455294565_))))
                                    (let ((_K9456394605_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9456294598_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9456194590_
                                           (lambda () gx#make-definition-form))
                                          (_K9456094582_
                                           (lambda () gx#make-special-form))
                                          (_K9455994574_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9455794577_
                                              (lambda ()
                                                (if (##eq? _key9455294565_
                                                           'expr:)
                                                    (_K9455994574_)
                                                    (_E9455894569_))))
                                             (_try-match9455694585_
                                              (lambda ()
                                                (if (##eq? _key9455294565_
                                                           'special:)
                                                    (_K9456094582_)
                                                    (_try-match9455794577_))))
                                             (_try-match9455594593_
                                              (lambda ()
                                                (if (##eq? _key9455294565_
                                                           'define:)
                                                    (_K9456194590_)
                                                    (_try-match9455694585_))))
                                             (_try-match9455494601_
                                              (lambda ()
                                                (if (##eq? _key9455294565_
                                                           'module:)
                                                    (_K9456294598_)
                                                    (_try-match9455594593_)))))
                                        (if (##eq? _key9455294565_ 'top:)
                                            (_K9456394605_)
                                            (_try-match9455494601_)))))
                                  _expander94550_
                                  _id94530_
                                  (let ((_$e94608_ _compiler94549_))
                                    (if _$e94608_
                                        _$e94608_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9453194542_)
                             (let ((_hd9453594614_ (##car _rest9453194542_))
                                   (_tl9453694616_ (##cdr _rest9453194542_)))
                               (let ((_key94619_ _hd9453594614_))
                                 (if (##pair? _tl9453694616_)
                                     (let ((_hd9453794621_
                                            (##car _tl9453694616_))
                                           (_tl9453894623_
                                            (##cdr _tl9453694616_)))
                                       (let ((_expander94626_ _hd9453794621_))
                                         (if (##pair? _tl9453894623_)
                                             (let ((_hd9453994628_
                                                    (##car _tl9453894623_))
                                                   (_tl9454094630_
                                                    (##cdr _tl9453894623_)))
                                               (let ((_compiler94633_
                                                      _hd9453994628_))
                                                 (if (##null? _tl9454094630_)
                                                     (_K9453494611_
                                                      _compiler94633_
                                                      _expander94626_
                                                      _key94619_)
                                                     (_E9453394546_))))
                                             (_E9453394546_))))
                                     (_E9453394546_))))
                             (_E9453394546_))))))))
             (if (##pair? _bind9451594522_)
                 (let ((_hd9451994638_ (##car _bind9451594522_))
                       (_tl9452094640_ (##cdr _bind9451594522_)))
                   (let* ((_id94643_ _hd9451994638_)
                          (_rest94645_ _tl9452094640_))
                     (_K9451894635_ _rest94645_ _id94643_)))
                 (_E9451794526_))))
         _bindings94512_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self94650_)
        (let ((_bindings94652_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self94650_
           _bindings94652_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g94986_
        (let ((_g94985_ (##length _g94986_)))
          (cond ((##fx= _g94985_ 1)
                 (apply (lambda (_self94650_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self94650_))
                        _g94986_))
                ((##fx= _g94985_ 2)
                 (apply (lambda (_self94654_ _bindings94655_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self94654_
                           _bindings94655_))
                        _g94986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g94986_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self94283_ _bindings94284_)
        (for-each
         (lambda (_bind94286_)
           (let* ((_bind9428794294_ _bind94286_)
                  (_E9428994298_
                   (lambda () (error '"No clause matching" _bind9428794294_)))
                  (_K9429094366_
                   (lambda (_rest94301_ _id94302_)
                     (gx#core-context-put!
                      _self94283_
                      _id94302_
                      (##structure
                       gx#syntax-binding::t
                       _id94302_
                       _id94302_
                       '#f
                       (let* ((_rest9430394318_ _rest94301_)
                              (_E9430794322_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9430394318_))))
                         (let ((_K9431294351_
                                (lambda (_core-id94349_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id94349_)))
                               (_K9430994336_
                                (lambda (_proc94334_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc94334_)))
                               (_K9430894327_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id94302_))))
                           (let ((_try-match9430694330_
                                  (lambda ()
                                    (if (##null? _rest9430394318_)
                                        (_K9430894327_)
                                        (_E9430794322_)))))
                             (if (##pair? _rest9430394318_)
                                 (let ((_tl9431494356_
                                        (##cdr _rest9430394318_))
                                       (_hd9431394354_
                                        (##car _rest9430394318_)))
                                   (if (##eq? _hd9431394354_ '=>)
                                       (if (##pair? _tl9431494356_)
                                           (let ((_tl9431694361_
                                                  (##cdr _tl9431494356_))
                                                 (_hd9431594359_
                                                  (##car _tl9431494356_)))
                                             (if (##null? _tl9431694361_)
                                                 (let ((_core-id94364_
                                                        _hd9431594359_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id94364_))
                                                 (_E9430794322_)))
                                           (if (##null? _tl9431494356_)
                                               (let ((_proc94344_
                                                      _hd9431394354_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc94344_))
                                               (_E9430794322_)))
                                       (if (##null? _tl9431494356_)
                                           (let ((_proc94344_ _hd9431394354_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc94344_))
                                           (_E9430794322_))))
                                 (_try-match9430694330_))))))))))
             (if (##pair? _bind9428794294_)
                 (let ((_hd9429194369_ (##car _bind9428794294_))
                       (_tl9429294371_ (##cdr _bind9428794294_)))
                   (let* ((_id94374_ _hd9429194369_)
                          (_rest94376_ _tl9429294371_))
                     (_K9429094366_ _rest94376_ _id94374_)))
                 (_E9428994298_))))
         _bindings94284_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self94381_)
        (let ((_bindings94383_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self94381_
           _bindings94383_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g94988_
        (let ((_g94987_ (##length _g94988_)))
          (cond ((##fx= _g94987_ 1)
                 (apply (lambda (_self94381_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self94381_))
                        _g94988_))
                ((##fx= _g94987_ 2)
                 (apply (lambda (_self94385_ _bindings94386_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self94385_
                           _bindings94386_))
                        _g94988_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g94988_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self94027_)
        (letrec ((_linux-variant?94029_
                  (lambda (_sys-type94128_)
                    (let* ((_g9412994137_
                            (string-split
                             (symbol->string _sys-type94128_)
                             '#\-))
                           (_else9413194145_ (lambda () '#f))
                           (_K9413394150_
                            (lambda (_rest94148_) (not (null? _rest94148_)))))
                      (if (##pair? _g9412994137_)
                          (let ((_hd9413494153_ (##car _g9412994137_))
                                (_tl9413594155_ (##cdr _g9412994137_)))
                            (if (equal? _hd9413494153_ '"linux")
                                (let ((_rest94158_ _tl9413594155_))
                                  (_K9413394150_ _rest94158_))
                                (_else9413194145_)))
                          (_else9413194145_)))))
                 (_bsd-variant94030_
                  (lambda (_sys-type94087_)
                    (let ((_sys-type-str94089_
                           (symbol->string _sys-type94087_)))
                      (let _lp94091_ ((_rest94093_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9409494102_ _rest94093_)
                               (_else9409694110_ (lambda () '#f))
                               (_K9409894116_
                                (lambda (_rest94113_ _sys94114_)
                                  (if (string-prefix?
                                       _sys94114_
                                       _sys-type-str94089_)
                                      _sys94114_
                                      (_lp94091_ _rest94113_)))))
                          (if (##pair? _rest9409494102_)
                              (let ((_hd9409994119_ (##car _rest9409494102_))
                                    (_tl9410094121_ (##cdr _rest9409494102_)))
                                (let* ((_sys94124_ _hd9409994119_)
                                       (_rest94126_ _tl9410094121_))
                                  (_K9409894116_ _rest94126_ _sys94124_)))
                              (_else9409694110_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self94027_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self94027_)
          (let* ((_g9403194043_ (system-type))
                 (_else9403394051_ (lambda () '#!void))
                 (_K9403594063_
                  (lambda (_sys-type94054_ _sys-vendor94055_ _sys-cpu94056_)
                    (gx#core-bind-feature!__%
                     _sys-cpu94056_
                     '#f
                     '0
                     _self94027_)
                    (gx#core-bind-feature!__%
                     _sys-type94054_
                     '#f
                     '0
                     _self94027_)
                    (if (_linux-variant?94029_ _sys-type94054_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self94027_)
                        (let ((_$e94058_ (_bsd-variant94030_ _sys-type94054_)))
                          (if _$e94058_
                              ((lambda (_sys-prefix94061_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self94027_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix94061_)
                                  '#f
                                  '0
                                  _self94027_))
                               _$e94058_)
                              '#!void))))))
            (if (##pair? _g9403194043_)
                (let ((_hd9403694066_ (##car _g9403194043_))
                      (_tl9403794068_ (##cdr _g9403194043_)))
                  (let ((_sys-cpu94071_ _hd9403694066_))
                    (if (##pair? _tl9403794068_)
                        (let ((_hd9403894073_ (##car _tl9403794068_))
                              (_tl9403994075_ (##cdr _tl9403794068_)))
                          (let ((_sys-vendor94078_ _hd9403894073_))
                            (if (##pair? _tl9403994075_)
                                (let ((_hd9404094080_ (##car _tl9403994075_))
                                      (_tl9404194082_ (##cdr _tl9403994075_)))
                                  (let ((_sys-type94085_ _hd9404094080_))
                                    (if (##null? _tl9404194082_)
                                        (_K9403594063_
                                         _sys-type94085_
                                         _sys-vendor94078_
                                         _sys-cpu94071_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self94027_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
