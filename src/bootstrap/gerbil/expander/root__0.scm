(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1708451994)
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
      (lambda (_self92491_ _bind?92492_)
        (if (##fx< '2 (##structure-length _self92491_))
            (begin
              (##unchecked-structure-set!
               _self92491_
               'root
               '1
               (##structure-type _self92491_)
               '#f)
              (##unchecked-structure-set!
               _self92491_
               (make-hash-table-eq)
               '2
               (##structure-type _self92491_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92491_
                   '2
                   (##vector-length _self92491_)))
        (if _bind?92492_
            (begin
              (let ((__method92543
                     (method-ref _self92491_ 'bind-core-syntax-expanders!)))
                (if __method92543
                    (__method92543 _self92491_)
                    (error '"Missing method"
                           _self92491_
                           'bind-core-syntax-expanders!)))
              (let ((__method92544
                     (method-ref _self92491_ 'bind-core-macro-expanders!)))
                (if __method92544
                    (__method92544 _self92491_)
                    (error '"Missing method"
                           _self92491_
                           'bind-core-macro-expanders!)))
              (let ((__method92545
                     (method-ref _self92491_ 'bind-core-features!)))
                (if __method92545
                    (__method92545 _self92491_)
                    (error '"Missing method"
                           _self92491_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self92497_)
        (let ((_bind?92499_ '#t))
          (gx#root-context:::init!__% _self92497_ _bind?92499_))))
    (define gx#root-context:::init!
      (lambda _g92548_
        (let ((_g92547_ (##length _g92548_)))
          (cond ((##fx= _g92547_ 1)
                 (apply (lambda (_self92497_)
                          (gx#root-context:::init!__0 _self92497_))
                        _g92548_))
                ((##fx= _g92547_ 2)
                 (apply (lambda (_self92501_ _bind?92502_)
                          (gx#root-context:::init!__%
                           _self92501_
                           _bind?92502_))
                        _g92548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g92548_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass92503 __method-table92504)
        (let ((__bind-core-features!92505
               (make-promise
                (lambda ()
                  (let ((__method92508
                         (symbolic-table-ref
                          __method-table92504
                          'bind-core-features!
                          '#f)))
                    (if __method92508
                        __method92508
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!92506
               (make-promise
                (lambda ()
                  (let ((__method92509
                         (symbolic-table-ref
                          __method-table92504
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method92509
                        __method92509
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!92507
               (make-promise
                (lambda ()
                  (let ((__method92510
                         (symbolic-table-ref
                          __method-table92504
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method92510
                        __method92510
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda9248992494_
                 (lambda (_self92491_ _bind?92492_)
                   (if (##fx< '2 (##structure-length _self92491_))
                       (begin
                         (##unchecked-structure-set!
                          _self92491_
                          'root
                          '1
                          (##structure-type _self92491_)
                          '#f)
                         (##unchecked-structure-set!
                          _self92491_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self92491_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self92491_
                              '2
                              (##vector-length _self92491_)))
                   (if _bind?92492_
                       (begin
                         ((force __bind-core-syntax-expanders!92506)
                          _self92491_)
                         ((force __bind-core-macro-expanders!92507)
                          _self92491_)
                         ((force __bind-core-features!92505) _self92491_))
                       '#!void))))
            (lambda _g92550_
              (let ((_g92549_ (##length _g92550_)))
                (cond ((##fx= _g92549_ 1)
                       (apply (lambda (_self92497_)
                                (let ((_bind?92499_ '#t))
                                  (_opt-lambda9248992494_
                                   _self92497_
                                   _bind?92499_)))
                              _g92550_))
                      ((##fx= _g92549_ 2)
                       (apply (lambda (_self92501_ _bind?92502_)
                                (_opt-lambda9248992494_
                                 _self92501_
                                 _bind?92502_))
                              _g92550_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g92550_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self92347_ _super92348_)
        (let ((_super92356_
               (let ((_$e92350_ _super92348_))
                 (if _$e92350_
                     _$e92350_
                     (let ((_$e92353_ (gx#core-context-root__0)))
                       (if _$e92353_
                           _$e92353_
                           (let ((__obj92546
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj92546)
                             __obj92546)))))))
          (if (##fx< '5 (##structure-length _self92347_))
              (begin
                (##unchecked-structure-set!
                 _self92347_
                 'top
                 '1
                 (##structure-type _self92347_)
                 '#f)
                (##unchecked-structure-set!
                 _self92347_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self92347_)
                 '#f)
                (##unchecked-structure-set!
                 _self92347_
                 _super92356_
                 '3
                 (##structure-type _self92347_)
                 '#f)
                (##unchecked-structure-set!
                 _self92347_
                 '#f
                 '4
                 (##structure-type _self92347_)
                 '#f)
                (##unchecked-structure-set!
                 _self92347_
                 '#f
                 '5
                 (##structure-type _self92347_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self92347_
                     '5
                     (##vector-length _self92347_))))))
    (define gx#top-context:::init!__0
      (lambda (_self92361_)
        (let ((_super92363_ '#f))
          (gx#top-context:::init!__% _self92361_ _super92363_))))
    (define gx#top-context:::init!
      (lambda _g92552_
        (let ((_g92551_ (##length _g92552_)))
          (cond ((##fx= _g92551_ 1)
                 (apply (lambda (_self92361_)
                          (gx#top-context:::init!__0 _self92361_))
                        _g92552_))
                ((##fx= _g92551_ 2)
                 (apply (lambda (_self92365_ _super92366_)
                          (gx#top-context:::init!__% _self92365_ _super92366_))
                        _g92552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g92552_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self92078_ _bindings92079_)
        (for-each
         (lambda (_bind92081_)
           (let* ((_bind9208292089_ _bind92081_)
                  (_E9208492093_
                   (lambda () (error '"No clause matching" _bind9208292089_)))
                  (_K9208592202_
                   (lambda (_rest92096_ _id92097_)
                     (gx#core-context-put!
                      _self92078_
                      _id92097_
                      (##structure
                       gx#syntax-binding::t
                       _id92097_
                       _id92097_
                       '#f
                       (let* ((_rest9209892109_ _rest92096_)
                              (_E9210092113_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9209892109_)))
                              (_K9210192178_
                               (lambda (_compiler92116_
                                        _expander92117_
                                        _key92118_)
                                 ((let* ((_key9211992132_ _key92118_)
                                         (_E9212592136_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9211992132_))))
                                    (let ((_K9213092172_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9212992165_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9212892157_
                                           (lambda () gx#make-definition-form))
                                          (_K9212792149_
                                           (lambda () gx#make-special-form))
                                          (_K9212692141_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9212492144_
                                              (lambda ()
                                                (if (##eq? _key9211992132_
                                                           'expr:)
                                                    (_K9212692141_)
                                                    (_E9212592136_))))
                                             (_try-match9212392152_
                                              (lambda ()
                                                (if (##eq? _key9211992132_
                                                           'special:)
                                                    (_K9212792149_)
                                                    (_try-match9212492144_))))
                                             (_try-match9212292160_
                                              (lambda ()
                                                (if (##eq? _key9211992132_
                                                           'define:)
                                                    (_K9212892157_)
                                                    (_try-match9212392152_))))
                                             (_try-match9212192168_
                                              (lambda ()
                                                (if (##eq? _key9211992132_
                                                           'module:)
                                                    (_K9212992165_)
                                                    (_try-match9212292160_)))))
                                        (if (##eq? _key9211992132_ 'top:)
                                            (_K9213092172_)
                                            (_try-match9212192168_)))))
                                  _expander92117_
                                  _id92097_
                                  (let ((_$e92175_ _compiler92116_))
                                    (if _$e92175_
                                        _$e92175_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9209892109_)
                             (let ((_hd9210292181_ (##car _rest9209892109_))
                                   (_tl9210392183_ (##cdr _rest9209892109_)))
                               (let ((_key92186_ _hd9210292181_))
                                 (if (##pair? _tl9210392183_)
                                     (let ((_hd9210492188_
                                            (##car _tl9210392183_))
                                           (_tl9210592190_
                                            (##cdr _tl9210392183_)))
                                       (let ((_expander92193_ _hd9210492188_))
                                         (if (##pair? _tl9210592190_)
                                             (let ((_hd9210692195_
                                                    (##car _tl9210592190_))
                                                   (_tl9210792197_
                                                    (##cdr _tl9210592190_)))
                                               (let ((_compiler92200_
                                                      _hd9210692195_))
                                                 (if (##null? _tl9210792197_)
                                                     (_K9210192178_
                                                      _compiler92200_
                                                      _expander92193_
                                                      _key92186_)
                                                     (_E9210092113_))))
                                             (_E9210092113_))))
                                     (_E9210092113_))))
                             (_E9210092113_))))))))
             (if (##pair? _bind9208292089_)
                 (let ((_hd9208692205_ (##car _bind9208292089_))
                       (_tl9208792207_ (##cdr _bind9208292089_)))
                   (let* ((_id92210_ _hd9208692205_)
                          (_rest92212_ _tl9208792207_))
                     (_K9208592202_ _rest92212_ _id92210_)))
                 (_E9208492093_))))
         _bindings92079_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self92217_)
        (let ((_bindings92219_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self92217_
           _bindings92219_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g92554_
        (let ((_g92553_ (##length _g92554_)))
          (cond ((##fx= _g92553_ 1)
                 (apply (lambda (_self92217_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self92217_))
                        _g92554_))
                ((##fx= _g92553_ 2)
                 (apply (lambda (_self92221_ _bindings92222_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self92221_
                           _bindings92222_))
                        _g92554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g92554_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self91850_ _bindings91851_)
        (for-each
         (lambda (_bind91853_)
           (let* ((_bind9185491861_ _bind91853_)
                  (_E9185691865_
                   (lambda () (error '"No clause matching" _bind9185491861_)))
                  (_K9185791933_
                   (lambda (_rest91868_ _id91869_)
                     (gx#core-context-put!
                      _self91850_
                      _id91869_
                      (##structure
                       gx#syntax-binding::t
                       _id91869_
                       _id91869_
                       '#f
                       (let* ((_rest9187091885_ _rest91868_)
                              (_E9187491889_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9187091885_))))
                         (let ((_K9187991918_
                                (lambda (_core-id91916_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id91916_)))
                               (_K9187691903_
                                (lambda (_proc91901_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc91901_)))
                               (_K9187591894_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id91869_))))
                           (let ((_try-match9187391897_
                                  (lambda ()
                                    (if (##null? _rest9187091885_)
                                        (_K9187591894_)
                                        (_E9187491889_)))))
                             (if (##pair? _rest9187091885_)
                                 (let ((_tl9188191923_
                                        (##cdr _rest9187091885_))
                                       (_hd9188091921_
                                        (##car _rest9187091885_)))
                                   (if (##eq? _hd9188091921_ '=>)
                                       (if (##pair? _tl9188191923_)
                                           (let ((_tl9188391928_
                                                  (##cdr _tl9188191923_))
                                                 (_hd9188291926_
                                                  (##car _tl9188191923_)))
                                             (if (##null? _tl9188391928_)
                                                 (let ((_core-id91931_
                                                        _hd9188291926_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id91931_))
                                                 (_E9187491889_)))
                                           (if (##null? _tl9188191923_)
                                               (let ((_proc91911_
                                                      _hd9188091921_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc91911_))
                                               (_E9187491889_)))
                                       (if (##null? _tl9188191923_)
                                           (let ((_proc91911_ _hd9188091921_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc91911_))
                                           (_E9187491889_))))
                                 (_try-match9187391897_))))))))))
             (if (##pair? _bind9185491861_)
                 (let ((_hd9185891936_ (##car _bind9185491861_))
                       (_tl9185991938_ (##cdr _bind9185491861_)))
                   (let* ((_id91941_ _hd9185891936_)
                          (_rest91943_ _tl9185991938_))
                     (_K9185791933_ _rest91943_ _id91941_)))
                 (_E9185691865_))))
         _bindings91851_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self91948_)
        (let ((_bindings91950_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self91948_
           _bindings91950_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g92556_
        (let ((_g92555_ (##length _g92556_)))
          (cond ((##fx= _g92555_ 1)
                 (apply (lambda (_self91948_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self91948_))
                        _g92556_))
                ((##fx= _g92555_ 2)
                 (apply (lambda (_self91952_ _bindings91953_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self91952_
                           _bindings91953_))
                        _g92556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g92556_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self91594_)
        (letrec ((_linux-variant?91596_
                  (lambda (_sys-type91695_)
                    (let* ((_g9169691704_
                            (string-split
                             (symbol->string _sys-type91695_)
                             '#\-))
                           (_else9169891712_ (lambda () '#f))
                           (_K9170091717_
                            (lambda (_rest91715_) (not (null? _rest91715_)))))
                      (if (##pair? _g9169691704_)
                          (let ((_hd9170191720_ (##car _g9169691704_))
                                (_tl9170291722_ (##cdr _g9169691704_)))
                            (if (equal? _hd9170191720_ '"linux")
                                (let ((_rest91725_ _tl9170291722_))
                                  (_K9170091717_ _rest91725_))
                                (_else9169891712_)))
                          (_else9169891712_)))))
                 (_bsd-variant91597_
                  (lambda (_sys-type91654_)
                    (let ((_sys-type-str91656_
                           (symbol->string _sys-type91654_)))
                      (let _lp91658_ ((_rest91660_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9166191669_ _rest91660_)
                               (_else9166391677_ (lambda () '#f))
                               (_K9166591683_
                                (lambda (_rest91680_ _sys91681_)
                                  (if (string-prefix?
                                       _sys91681_
                                       _sys-type-str91656_)
                                      _sys91681_
                                      (_lp91658_ _rest91680_)))))
                          (if (##pair? _rest9166191669_)
                              (let ((_hd9166691686_ (##car _rest9166191669_))
                                    (_tl9166791688_ (##cdr _rest9166191669_)))
                                (let* ((_sys91691_ _hd9166691686_)
                                       (_rest91693_ _tl9166791688_))
                                  (_K9166591683_ _rest91693_ _sys91691_)))
                              (_else9166391677_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self91594_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self91594_)
          (let* ((_g9159891610_ (system-type))
                 (_else9160091618_ (lambda () '#!void))
                 (_K9160291630_
                  (lambda (_sys-type91621_ _sys-vendor91622_ _sys-cpu91623_)
                    (gx#core-bind-feature!__%
                     _sys-cpu91623_
                     '#f
                     '0
                     _self91594_)
                    (gx#core-bind-feature!__%
                     _sys-type91621_
                     '#f
                     '0
                     _self91594_)
                    (if (_linux-variant?91596_ _sys-type91621_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self91594_)
                        (let ((_$e91625_ (_bsd-variant91597_ _sys-type91621_)))
                          (if _$e91625_
                              ((lambda (_sys-prefix91628_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self91594_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix91628_)
                                  '#f
                                  '0
                                  _self91594_))
                               _$e91625_)
                              '#!void))))))
            (if (##pair? _g9159891610_)
                (let ((_hd9160391633_ (##car _g9159891610_))
                      (_tl9160491635_ (##cdr _g9159891610_)))
                  (let ((_sys-cpu91638_ _hd9160391633_))
                    (if (##pair? _tl9160491635_)
                        (let ((_hd9160591640_ (##car _tl9160491635_))
                              (_tl9160691642_ (##cdr _tl9160491635_)))
                          (let ((_sys-vendor91645_ _hd9160591640_))
                            (if (##pair? _tl9160691642_)
                                (let ((_hd9160791647_ (##car _tl9160691642_))
                                      (_tl9160891649_ (##cdr _tl9160691642_)))
                                  (let ((_sys-type91652_ _hd9160791647_))
                                    (if (##null? _tl9160891649_)
                                        (_K9160291630_
                                         _sys-type91652_
                                         _sys-vendor91645_
                                         _sys-cpu91638_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self91594_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
