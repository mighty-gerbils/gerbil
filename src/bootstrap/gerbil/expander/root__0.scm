(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1710699091)
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
      (lambda (_self96864_ _bind?96865_)
        (if (##fx< '2 (##structure-length _self96864_))
            (begin
              (##unchecked-structure-set!
               _self96864_
               'root
               '1
               (##structure-type _self96864_)
               '#f)
              (##unchecked-structure-set!
               _self96864_
               (make-hash-table-eq)
               '2
               (##structure-type _self96864_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self96864_
                   '2
                   (##vector-length _self96864_)))
        (if _bind?96865_
            (begin
              (let ((__method96916
                     (method-ref _self96864_ 'bind-core-syntax-expanders!)))
                (if __method96916
                    (__method96916 _self96864_)
                    (error '"Missing method"
                           _self96864_
                           'bind-core-syntax-expanders!)))
              (let ((__method96917
                     (method-ref _self96864_ 'bind-core-macro-expanders!)))
                (if __method96917
                    (__method96917 _self96864_)
                    (error '"Missing method"
                           _self96864_
                           'bind-core-macro-expanders!)))
              (let ((__method96918
                     (method-ref _self96864_ 'bind-core-features!)))
                (if __method96918
                    (__method96918 _self96864_)
                    (error '"Missing method"
                           _self96864_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self96870_)
        (let ((_bind?96872_ '#t))
          (gx#root-context:::init!__% _self96870_ _bind?96872_))))
    (define gx#root-context:::init!
      (lambda _g96921_
        (let ((_g96920_ (##length _g96921_)))
          (cond ((##fx= _g96920_ 1)
                 (apply (lambda (_self96870_)
                          (gx#root-context:::init!__0 _self96870_))
                        _g96921_))
                ((##fx= _g96920_ 2)
                 (apply (lambda (_self96874_ _bind?96875_)
                          (gx#root-context:::init!__%
                           _self96874_
                           _bind?96875_))
                        _g96921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g96921_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass96876 __method-table96877)
        (let ((__bind-core-syntax-expanders!96878
               (make-promise
                (lambda ()
                  (let ((__method96881
                         (symbolic-table-ref
                          __method-table96877
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method96881
                        __method96881
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!96879
               (make-promise
                (lambda ()
                  (let ((__method96882
                         (symbolic-table-ref
                          __method-table96877
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method96882
                        __method96882
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!96880
               (make-promise
                (lambda ()
                  (let ((__method96883
                         (symbolic-table-ref
                          __method-table96877
                          'bind-core-features!
                          '#f)))
                    (if __method96883
                        __method96883
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda9686296867_
                 (lambda (_self96864_ _bind?96865_)
                   (if (##fx< '2 (##structure-length _self96864_))
                       (begin
                         (##unchecked-structure-set!
                          _self96864_
                          'root
                          '1
                          (##structure-type _self96864_)
                          '#f)
                         (##unchecked-structure-set!
                          _self96864_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self96864_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self96864_
                              '2
                              (##vector-length _self96864_)))
                   (if _bind?96865_
                       (begin
                         ((force __bind-core-syntax-expanders!96878)
                          _self96864_)
                         ((force __bind-core-macro-expanders!96879)
                          _self96864_)
                         ((force __bind-core-features!96880) _self96864_))
                       '#!void))))
            (lambda _g96923_
              (let ((_g96922_ (##length _g96923_)))
                (cond ((##fx= _g96922_ 1)
                       (apply (lambda (_self96870_)
                                (let ((_bind?96872_ '#t))
                                  (_opt-lambda9686296867_
                                   _self96870_
                                   _bind?96872_)))
                              _g96923_))
                      ((##fx= _g96922_ 2)
                       (apply (lambda (_self96874_ _bind?96875_)
                                (_opt-lambda9686296867_
                                 _self96874_
                                 _bind?96875_))
                              _g96923_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g96923_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self96720_ _super96721_)
        (let ((_super96729_
               (let ((_$e96723_ _super96721_))
                 (if _$e96723_
                     _$e96723_
                     (let ((_$e96726_ (gx#core-context-root__0)))
                       (if _$e96726_
                           _$e96726_
                           (let ((__obj96919
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj96919)
                             __obj96919)))))))
          (if (##fx< '5 (##structure-length _self96720_))
              (begin
                (##unchecked-structure-set!
                 _self96720_
                 'top
                 '1
                 (##structure-type _self96720_)
                 '#f)
                (##unchecked-structure-set!
                 _self96720_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self96720_)
                 '#f)
                (##unchecked-structure-set!
                 _self96720_
                 _super96729_
                 '3
                 (##structure-type _self96720_)
                 '#f)
                (##unchecked-structure-set!
                 _self96720_
                 '#f
                 '4
                 (##structure-type _self96720_)
                 '#f)
                (##unchecked-structure-set!
                 _self96720_
                 '#f
                 '5
                 (##structure-type _self96720_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self96720_
                     '5
                     (##vector-length _self96720_))))))
    (define gx#top-context:::init!__0
      (lambda (_self96734_)
        (let ((_super96736_ '#f))
          (gx#top-context:::init!__% _self96734_ _super96736_))))
    (define gx#top-context:::init!
      (lambda _g96925_
        (let ((_g96924_ (##length _g96925_)))
          (cond ((##fx= _g96924_ 1)
                 (apply (lambda (_self96734_)
                          (gx#top-context:::init!__0 _self96734_))
                        _g96925_))
                ((##fx= _g96924_ 2)
                 (apply (lambda (_self96738_ _super96739_)
                          (gx#top-context:::init!__% _self96738_ _super96739_))
                        _g96925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g96925_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self96451_ _bindings96452_)
        (for-each
         (lambda (_bind96454_)
           (let* ((_bind9645596462_ _bind96454_)
                  (_E9645796466_
                   (lambda () (error '"No clause matching" _bind9645596462_)))
                  (_K9645896575_
                   (lambda (_rest96469_ _id96470_)
                     (gx#core-context-put!
                      _self96451_
                      _id96470_
                      (##structure
                       gx#syntax-binding::t
                       _id96470_
                       _id96470_
                       '#f
                       (let* ((_rest9647196482_ _rest96469_)
                              (_E9647396486_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9647196482_)))
                              (_K9647496551_
                               (lambda (_compiler96489_
                                        _expander96490_
                                        _key96491_)
                                 ((let* ((_key9649296505_ _key96491_)
                                         (_E9649896509_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9649296505_))))
                                    (let ((_K9650396545_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9650296538_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9650196530_
                                           (lambda () gx#make-definition-form))
                                          (_K9650096522_
                                           (lambda () gx#make-special-form))
                                          (_K9649996514_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9649796517_
                                              (lambda ()
                                                (if (##eq? _key9649296505_
                                                           'expr:)
                                                    (_K9649996514_)
                                                    (_E9649896509_))))
                                             (_try-match9649696525_
                                              (lambda ()
                                                (if (##eq? _key9649296505_
                                                           'special:)
                                                    (_K9650096522_)
                                                    (_try-match9649796517_))))
                                             (_try-match9649596533_
                                              (lambda ()
                                                (if (##eq? _key9649296505_
                                                           'define:)
                                                    (_K9650196530_)
                                                    (_try-match9649696525_))))
                                             (_try-match9649496541_
                                              (lambda ()
                                                (if (##eq? _key9649296505_
                                                           'module:)
                                                    (_K9650296538_)
                                                    (_try-match9649596533_)))))
                                        (if (##eq? _key9649296505_ 'top:)
                                            (_K9650396545_)
                                            (_try-match9649496541_)))))
                                  _expander96490_
                                  _id96470_
                                  (let ((_$e96548_ _compiler96489_))
                                    (if _$e96548_
                                        _$e96548_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9647196482_)
                             (let ((_hd9647596554_ (##car _rest9647196482_))
                                   (_tl9647696556_ (##cdr _rest9647196482_)))
                               (let ((_key96559_ _hd9647596554_))
                                 (if (##pair? _tl9647696556_)
                                     (let ((_hd9647796561_
                                            (##car _tl9647696556_))
                                           (_tl9647896563_
                                            (##cdr _tl9647696556_)))
                                       (let ((_expander96566_ _hd9647796561_))
                                         (if (##pair? _tl9647896563_)
                                             (let ((_hd9647996568_
                                                    (##car _tl9647896563_))
                                                   (_tl9648096570_
                                                    (##cdr _tl9647896563_)))
                                               (let ((_compiler96573_
                                                      _hd9647996568_))
                                                 (if (##null? _tl9648096570_)
                                                     (_K9647496551_
                                                      _compiler96573_
                                                      _expander96566_
                                                      _key96559_)
                                                     (_E9647396486_))))
                                             (_E9647396486_))))
                                     (_E9647396486_))))
                             (_E9647396486_))))))))
             (if (##pair? _bind9645596462_)
                 (let ((_hd9645996578_ (##car _bind9645596462_))
                       (_tl9646096580_ (##cdr _bind9645596462_)))
                   (let* ((_id96583_ _hd9645996578_)
                          (_rest96585_ _tl9646096580_))
                     (_K9645896575_ _rest96585_ _id96583_)))
                 (_E9645796466_))))
         _bindings96452_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self96590_)
        (let ((_bindings96592_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self96590_
           _bindings96592_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g96927_
        (let ((_g96926_ (##length _g96927_)))
          (cond ((##fx= _g96926_ 1)
                 (apply (lambda (_self96590_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self96590_))
                        _g96927_))
                ((##fx= _g96926_ 2)
                 (apply (lambda (_self96594_ _bindings96595_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self96594_
                           _bindings96595_))
                        _g96927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g96927_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self96223_ _bindings96224_)
        (for-each
         (lambda (_bind96226_)
           (let* ((_bind9622796234_ _bind96226_)
                  (_E9622996238_
                   (lambda () (error '"No clause matching" _bind9622796234_)))
                  (_K9623096306_
                   (lambda (_rest96241_ _id96242_)
                     (gx#core-context-put!
                      _self96223_
                      _id96242_
                      (##structure
                       gx#syntax-binding::t
                       _id96242_
                       _id96242_
                       '#f
                       (let* ((_rest9624396258_ _rest96241_)
                              (_E9624796262_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9624396258_))))
                         (let ((_K9625296291_
                                (lambda (_core-id96289_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id96289_)))
                               (_K9624996276_
                                (lambda (_proc96274_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc96274_)))
                               (_K9624896267_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id96242_))))
                           (let ((_try-match9624696270_
                                  (lambda ()
                                    (if (##null? _rest9624396258_)
                                        (_K9624896267_)
                                        (_E9624796262_)))))
                             (if (##pair? _rest9624396258_)
                                 (let ((_tl9625496296_
                                        (##cdr _rest9624396258_))
                                       (_hd9625396294_
                                        (##car _rest9624396258_)))
                                   (if (##eq? _hd9625396294_ '=>)
                                       (if (##pair? _tl9625496296_)
                                           (let ((_tl9625696301_
                                                  (##cdr _tl9625496296_))
                                                 (_hd9625596299_
                                                  (##car _tl9625496296_)))
                                             (if (##null? _tl9625696301_)
                                                 (let ((_core-id96304_
                                                        _hd9625596299_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id96304_))
                                                 (_E9624796262_)))
                                           (if (##null? _tl9625496296_)
                                               (let ((_proc96284_
                                                      _hd9625396294_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc96284_))
                                               (_E9624796262_)))
                                       (if (##null? _tl9625496296_)
                                           (let ((_proc96284_ _hd9625396294_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc96284_))
                                           (_E9624796262_))))
                                 (_try-match9624696270_))))))))))
             (if (##pair? _bind9622796234_)
                 (let ((_hd9623196309_ (##car _bind9622796234_))
                       (_tl9623296311_ (##cdr _bind9622796234_)))
                   (let* ((_id96314_ _hd9623196309_)
                          (_rest96316_ _tl9623296311_))
                     (_K9623096306_ _rest96316_ _id96314_)))
                 (_E9622996238_))))
         _bindings96224_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self96321_)
        (let ((_bindings96323_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self96321_
           _bindings96323_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g96929_
        (let ((_g96928_ (##length _g96929_)))
          (cond ((##fx= _g96928_ 1)
                 (apply (lambda (_self96321_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self96321_))
                        _g96929_))
                ((##fx= _g96928_ 2)
                 (apply (lambda (_self96325_ _bindings96326_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self96325_
                           _bindings96326_))
                        _g96929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g96929_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self95967_)
        (letrec ((_linux-variant?95969_
                  (lambda (_sys-type96068_)
                    (let* ((_g9606996077_
                            (string-split
                             (symbol->string _sys-type96068_)
                             '#\-))
                           (_else9607196085_ (lambda () '#f))
                           (_K9607396090_
                            (lambda (_rest96088_) (not (null? _rest96088_)))))
                      (if (##pair? _g9606996077_)
                          (let ((_hd9607496093_ (##car _g9606996077_))
                                (_tl9607596095_ (##cdr _g9606996077_)))
                            (if (equal? _hd9607496093_ '"linux")
                                (let ((_rest96098_ _tl9607596095_))
                                  (_K9607396090_ _rest96098_))
                                (_else9607196085_)))
                          (_else9607196085_)))))
                 (_bsd-variant95970_
                  (lambda (_sys-type96027_)
                    (let ((_sys-type-str96029_
                           (symbol->string _sys-type96027_)))
                      (let _lp96031_ ((_rest96033_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9603496042_ _rest96033_)
                               (_else9603696050_ (lambda () '#f))
                               (_K9603896056_
                                (lambda (_rest96053_ _sys96054_)
                                  (if (string-prefix?
                                       _sys96054_
                                       _sys-type-str96029_)
                                      _sys96054_
                                      (_lp96031_ _rest96053_)))))
                          (if (##pair? _rest9603496042_)
                              (let ((_hd9603996059_ (##car _rest9603496042_))
                                    (_tl9604096061_ (##cdr _rest9603496042_)))
                                (let* ((_sys96064_ _hd9603996059_)
                                       (_rest96066_ _tl9604096061_))
                                  (_K9603896056_ _rest96066_ _sys96064_)))
                              (_else9603696050_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self95967_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self95967_)
          (let* ((_g9597195983_ (system-type))
                 (_else9597395991_ (lambda () '#!void))
                 (_K9597596003_
                  (lambda (_sys-type95994_ _sys-vendor95995_ _sys-cpu95996_)
                    (gx#core-bind-feature!__%
                     _sys-cpu95996_
                     '#f
                     '0
                     _self95967_)
                    (gx#core-bind-feature!__%
                     _sys-type95994_
                     '#f
                     '0
                     _self95967_)
                    (if (_linux-variant?95969_ _sys-type95994_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self95967_)
                        (let ((_$e95998_ (_bsd-variant95970_ _sys-type95994_)))
                          (if _$e95998_
                              ((lambda (_sys-prefix96001_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self95967_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix96001_)
                                  '#f
                                  '0
                                  _self95967_))
                               _$e95998_)
                              '#!void))))))
            (if (##pair? _g9597195983_)
                (let ((_hd9597696006_ (##car _g9597195983_))
                      (_tl9597796008_ (##cdr _g9597195983_)))
                  (let ((_sys-cpu96011_ _hd9597696006_))
                    (if (##pair? _tl9597796008_)
                        (let ((_hd9597896013_ (##car _tl9597796008_))
                              (_tl9597996015_ (##cdr _tl9597796008_)))
                          (let ((_sys-vendor96018_ _hd9597896013_))
                            (if (##pair? _tl9597996015_)
                                (let ((_hd9598096020_ (##car _tl9597996015_))
                                      (_tl9598196022_ (##cdr _tl9597996015_)))
                                  (let ((_sys-type96025_ _hd9598096020_))
                                    (if (##null? _tl9598196022_)
                                        (_K9597596003_
                                         _sys-type96025_
                                         _sys-vendor96018_
                                         _sys-cpu96011_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self95967_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
