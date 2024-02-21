(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708510101)
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
      (lambda (_self95252_ _bind?95253_)
        (if (##fx< '2 (##structure-length _self95252_))
            (begin
              (##unchecked-structure-set!
               _self95252_
               'root
               '1
               (##structure-type _self95252_)
               '#f)
              (##unchecked-structure-set!
               _self95252_
               (make-hash-table-eq)
               '2
               (##structure-type _self95252_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self95252_
                   '2
                   (##vector-length _self95252_)))
        (if _bind?95253_
            (begin
              (let ((__method95304
                     (method-ref _self95252_ 'bind-core-syntax-expanders!)))
                (if __method95304
                    (__method95304 _self95252_)
                    (error '"Missing method"
                           _self95252_
                           'bind-core-syntax-expanders!)))
              (let ((__method95305
                     (method-ref _self95252_ 'bind-core-macro-expanders!)))
                (if __method95305
                    (__method95305 _self95252_)
                    (error '"Missing method"
                           _self95252_
                           'bind-core-macro-expanders!)))
              (let ((__method95306
                     (method-ref _self95252_ 'bind-core-features!)))
                (if __method95306
                    (__method95306 _self95252_)
                    (error '"Missing method"
                           _self95252_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self95258_)
        (let ((_bind?95260_ '#t))
          (gx#root-context:::init!__% _self95258_ _bind?95260_))))
    (define gx#root-context:::init!
      (lambda _g95309_
        (let ((_g95308_ (##length _g95309_)))
          (cond ((##fx= _g95308_ 1)
                 (apply (lambda (_self95258_)
                          (gx#root-context:::init!__0 _self95258_))
                        _g95309_))
                ((##fx= _g95308_ 2)
                 (apply (lambda (_self95262_ _bind?95263_)
                          (gx#root-context:::init!__%
                           _self95262_
                           _bind?95263_))
                        _g95309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g95309_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass95264 __method-table95265)
        (let ((__bind-core-features!95266
               (make-promise
                (lambda ()
                  (let ((__method95269
                         (symbolic-table-ref
                          __method-table95265
                          'bind-core-features!
                          '#f)))
                    (if __method95269
                        __method95269
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!95267
               (make-promise
                (lambda ()
                  (let ((__method95270
                         (symbolic-table-ref
                          __method-table95265
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method95270
                        __method95270
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!95268
               (make-promise
                (lambda ()
                  (let ((__method95271
                         (symbolic-table-ref
                          __method-table95265
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method95271
                        __method95271
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda9525095255_
                 (lambda (_self95252_ _bind?95253_)
                   (if (##fx< '2 (##structure-length _self95252_))
                       (begin
                         (##unchecked-structure-set!
                          _self95252_
                          'root
                          '1
                          (##structure-type _self95252_)
                          '#f)
                         (##unchecked-structure-set!
                          _self95252_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self95252_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self95252_
                              '2
                              (##vector-length _self95252_)))
                   (if _bind?95253_
                       (begin
                         ((force __bind-core-syntax-expanders!95267)
                          _self95252_)
                         ((force __bind-core-macro-expanders!95268)
                          _self95252_)
                         ((force __bind-core-features!95266) _self95252_))
                       '#!void))))
            (lambda _g95311_
              (let ((_g95310_ (##length _g95311_)))
                (cond ((##fx= _g95310_ 1)
                       (apply (lambda (_self95258_)
                                (let ((_bind?95260_ '#t))
                                  (_opt-lambda9525095255_
                                   _self95258_
                                   _bind?95260_)))
                              _g95311_))
                      ((##fx= _g95310_ 2)
                       (apply (lambda (_self95262_ _bind?95263_)
                                (_opt-lambda9525095255_
                                 _self95262_
                                 _bind?95263_))
                              _g95311_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g95311_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self95108_ _super95109_)
        (let ((_super95117_
               (let ((_$e95111_ _super95109_))
                 (if _$e95111_
                     _$e95111_
                     (let ((_$e95114_ (gx#core-context-root__0)))
                       (if _$e95114_
                           _$e95114_
                           (let ((__obj95307
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj95307)
                             __obj95307)))))))
          (if (##fx< '5 (##structure-length _self95108_))
              (begin
                (##unchecked-structure-set!
                 _self95108_
                 'top
                 '1
                 (##structure-type _self95108_)
                 '#f)
                (##unchecked-structure-set!
                 _self95108_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self95108_)
                 '#f)
                (##unchecked-structure-set!
                 _self95108_
                 _super95117_
                 '3
                 (##structure-type _self95108_)
                 '#f)
                (##unchecked-structure-set!
                 _self95108_
                 '#f
                 '4
                 (##structure-type _self95108_)
                 '#f)
                (##unchecked-structure-set!
                 _self95108_
                 '#f
                 '5
                 (##structure-type _self95108_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self95108_
                     '5
                     (##vector-length _self95108_))))))
    (define gx#top-context:::init!__0
      (lambda (_self95122_)
        (let ((_super95124_ '#f))
          (gx#top-context:::init!__% _self95122_ _super95124_))))
    (define gx#top-context:::init!
      (lambda _g95313_
        (let ((_g95312_ (##length _g95313_)))
          (cond ((##fx= _g95312_ 1)
                 (apply (lambda (_self95122_)
                          (gx#top-context:::init!__0 _self95122_))
                        _g95313_))
                ((##fx= _g95312_ 2)
                 (apply (lambda (_self95126_ _super95127_)
                          (gx#top-context:::init!__% _self95126_ _super95127_))
                        _g95313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g95313_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self94839_ _bindings94840_)
        (for-each
         (lambda (_bind94842_)
           (let* ((_bind9484394850_ _bind94842_)
                  (_E9484594854_
                   (lambda () (error '"No clause matching" _bind9484394850_)))
                  (_K9484694963_
                   (lambda (_rest94857_ _id94858_)
                     (gx#core-context-put!
                      _self94839_
                      _id94858_
                      (##structure
                       gx#syntax-binding::t
                       _id94858_
                       _id94858_
                       '#f
                       (let* ((_rest9485994870_ _rest94857_)
                              (_E9486194874_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9485994870_)))
                              (_K9486294939_
                               (lambda (_compiler94877_
                                        _expander94878_
                                        _key94879_)
                                 ((let* ((_key9488094893_ _key94879_)
                                         (_E9488694897_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9488094893_))))
                                    (let ((_K9489194933_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9489094926_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9488994918_
                                           (lambda () gx#make-definition-form))
                                          (_K9488894910_
                                           (lambda () gx#make-special-form))
                                          (_K9488794902_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9488594905_
                                              (lambda ()
                                                (if (##eq? _key9488094893_
                                                           'expr:)
                                                    (_K9488794902_)
                                                    (_E9488694897_))))
                                             (_try-match9488494913_
                                              (lambda ()
                                                (if (##eq? _key9488094893_
                                                           'special:)
                                                    (_K9488894910_)
                                                    (_try-match9488594905_))))
                                             (_try-match9488394921_
                                              (lambda ()
                                                (if (##eq? _key9488094893_
                                                           'define:)
                                                    (_K9488994918_)
                                                    (_try-match9488494913_))))
                                             (_try-match9488294929_
                                              (lambda ()
                                                (if (##eq? _key9488094893_
                                                           'module:)
                                                    (_K9489094926_)
                                                    (_try-match9488394921_)))))
                                        (if (##eq? _key9488094893_ 'top:)
                                            (_K9489194933_)
                                            (_try-match9488294929_)))))
                                  _expander94878_
                                  _id94858_
                                  (let ((_$e94936_ _compiler94877_))
                                    (if _$e94936_
                                        _$e94936_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9485994870_)
                             (let ((_hd9486394942_ (##car _rest9485994870_))
                                   (_tl9486494944_ (##cdr _rest9485994870_)))
                               (let ((_key94947_ _hd9486394942_))
                                 (if (##pair? _tl9486494944_)
                                     (let ((_hd9486594949_
                                            (##car _tl9486494944_))
                                           (_tl9486694951_
                                            (##cdr _tl9486494944_)))
                                       (let ((_expander94954_ _hd9486594949_))
                                         (if (##pair? _tl9486694951_)
                                             (let ((_hd9486794956_
                                                    (##car _tl9486694951_))
                                                   (_tl9486894958_
                                                    (##cdr _tl9486694951_)))
                                               (let ((_compiler94961_
                                                      _hd9486794956_))
                                                 (if (##null? _tl9486894958_)
                                                     (_K9486294939_
                                                      _compiler94961_
                                                      _expander94954_
                                                      _key94947_)
                                                     (_E9486194874_))))
                                             (_E9486194874_))))
                                     (_E9486194874_))))
                             (_E9486194874_))))))))
             (if (##pair? _bind9484394850_)
                 (let ((_hd9484794966_ (##car _bind9484394850_))
                       (_tl9484894968_ (##cdr _bind9484394850_)))
                   (let* ((_id94971_ _hd9484794966_)
                          (_rest94973_ _tl9484894968_))
                     (_K9484694963_ _rest94973_ _id94971_)))
                 (_E9484594854_))))
         _bindings94840_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self94978_)
        (let ((_bindings94980_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self94978_
           _bindings94980_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g95315_
        (let ((_g95314_ (##length _g95315_)))
          (cond ((##fx= _g95314_ 1)
                 (apply (lambda (_self94978_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self94978_))
                        _g95315_))
                ((##fx= _g95314_ 2)
                 (apply (lambda (_self94982_ _bindings94983_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self94982_
                           _bindings94983_))
                        _g95315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g95315_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self94611_ _bindings94612_)
        (for-each
         (lambda (_bind94614_)
           (let* ((_bind9461594622_ _bind94614_)
                  (_E9461794626_
                   (lambda () (error '"No clause matching" _bind9461594622_)))
                  (_K9461894694_
                   (lambda (_rest94629_ _id94630_)
                     (gx#core-context-put!
                      _self94611_
                      _id94630_
                      (##structure
                       gx#syntax-binding::t
                       _id94630_
                       _id94630_
                       '#f
                       (let* ((_rest9463194646_ _rest94629_)
                              (_E9463594650_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9463194646_))))
                         (let ((_K9464094679_
                                (lambda (_core-id94677_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id94677_)))
                               (_K9463794664_
                                (lambda (_proc94662_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc94662_)))
                               (_K9463694655_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id94630_))))
                           (let ((_try-match9463494658_
                                  (lambda ()
                                    (if (##null? _rest9463194646_)
                                        (_K9463694655_)
                                        (_E9463594650_)))))
                             (if (##pair? _rest9463194646_)
                                 (let ((_tl9464294684_
                                        (##cdr _rest9463194646_))
                                       (_hd9464194682_
                                        (##car _rest9463194646_)))
                                   (if (##eq? _hd9464194682_ '=>)
                                       (if (##pair? _tl9464294684_)
                                           (let ((_tl9464494689_
                                                  (##cdr _tl9464294684_))
                                                 (_hd9464394687_
                                                  (##car _tl9464294684_)))
                                             (if (##null? _tl9464494689_)
                                                 (let ((_core-id94692_
                                                        _hd9464394687_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id94692_))
                                                 (_E9463594650_)))
                                           (if (##null? _tl9464294684_)
                                               (let ((_proc94672_
                                                      _hd9464194682_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc94672_))
                                               (_E9463594650_)))
                                       (if (##null? _tl9464294684_)
                                           (let ((_proc94672_ _hd9464194682_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc94672_))
                                           (_E9463594650_))))
                                 (_try-match9463494658_))))))))))
             (if (##pair? _bind9461594622_)
                 (let ((_hd9461994697_ (##car _bind9461594622_))
                       (_tl9462094699_ (##cdr _bind9461594622_)))
                   (let* ((_id94702_ _hd9461994697_)
                          (_rest94704_ _tl9462094699_))
                     (_K9461894694_ _rest94704_ _id94702_)))
                 (_E9461794626_))))
         _bindings94612_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self94709_)
        (let ((_bindings94711_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self94709_
           _bindings94711_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g95317_
        (let ((_g95316_ (##length _g95317_)))
          (cond ((##fx= _g95316_ 1)
                 (apply (lambda (_self94709_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self94709_))
                        _g95317_))
                ((##fx= _g95316_ 2)
                 (apply (lambda (_self94713_ _bindings94714_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self94713_
                           _bindings94714_))
                        _g95317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g95317_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self94355_)
        (letrec ((_linux-variant?94357_
                  (lambda (_sys-type94456_)
                    (let* ((_g9445794465_
                            (string-split
                             (symbol->string _sys-type94456_)
                             '#\-))
                           (_else9445994473_ (lambda () '#f))
                           (_K9446194478_
                            (lambda (_rest94476_) (not (null? _rest94476_)))))
                      (if (##pair? _g9445794465_)
                          (let ((_hd9446294481_ (##car _g9445794465_))
                                (_tl9446394483_ (##cdr _g9445794465_)))
                            (if (equal? _hd9446294481_ '"linux")
                                (let ((_rest94486_ _tl9446394483_))
                                  (_K9446194478_ _rest94486_))
                                (_else9445994473_)))
                          (_else9445994473_)))))
                 (_bsd-variant94358_
                  (lambda (_sys-type94415_)
                    (let ((_sys-type-str94417_
                           (symbol->string _sys-type94415_)))
                      (let _lp94419_ ((_rest94421_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9442294430_ _rest94421_)
                               (_else9442494438_ (lambda () '#f))
                               (_K9442694444_
                                (lambda (_rest94441_ _sys94442_)
                                  (if (string-prefix?
                                       _sys94442_
                                       _sys-type-str94417_)
                                      _sys94442_
                                      (_lp94419_ _rest94441_)))))
                          (if (##pair? _rest9442294430_)
                              (let ((_hd9442794447_ (##car _rest9442294430_))
                                    (_tl9442894449_ (##cdr _rest9442294430_)))
                                (let* ((_sys94452_ _hd9442794447_)
                                       (_rest94454_ _tl9442894449_))
                                  (_K9442694444_ _rest94454_ _sys94452_)))
                              (_else9442494438_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self94355_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self94355_)
          (let* ((_g9435994371_ (system-type))
                 (_else9436194379_ (lambda () '#!void))
                 (_K9436394391_
                  (lambda (_sys-type94382_ _sys-vendor94383_ _sys-cpu94384_)
                    (gx#core-bind-feature!__%
                     _sys-cpu94384_
                     '#f
                     '0
                     _self94355_)
                    (gx#core-bind-feature!__%
                     _sys-type94382_
                     '#f
                     '0
                     _self94355_)
                    (if (_linux-variant?94357_ _sys-type94382_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self94355_)
                        (let ((_$e94386_ (_bsd-variant94358_ _sys-type94382_)))
                          (if _$e94386_
                              ((lambda (_sys-prefix94389_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self94355_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix94389_)
                                  '#f
                                  '0
                                  _self94355_))
                               _$e94386_)
                              '#!void))))))
            (if (##pair? _g9435994371_)
                (let ((_hd9436494394_ (##car _g9435994371_))
                      (_tl9436594396_ (##cdr _g9435994371_)))
                  (let ((_sys-cpu94399_ _hd9436494394_))
                    (if (##pair? _tl9436594396_)
                        (let ((_hd9436694401_ (##car _tl9436594396_))
                              (_tl9436794403_ (##cdr _tl9436594396_)))
                          (let ((_sys-vendor94406_ _hd9436694401_))
                            (if (##pair? _tl9436794403_)
                                (let ((_hd9436894408_ (##car _tl9436794403_))
                                      (_tl9436994410_ (##cdr _tl9436794403_)))
                                  (let ((_sys-type94413_ _hd9436894408_))
                                    (if (##null? _tl9436994410_)
                                        (_K9436394391_
                                         _sys-type94413_
                                         _sys-vendor94406_
                                         _sys-cpu94399_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self94355_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
