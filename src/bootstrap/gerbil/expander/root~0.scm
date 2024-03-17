(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1710715075)
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
      (lambda (_self96854_ _bind?96855_)
        (if (##fx< '2 (##structure-length _self96854_))
            (begin
              (##unchecked-structure-set!
               _self96854_
               'root
               '1
               (##structure-type _self96854_)
               '#f)
              (##unchecked-structure-set!
               _self96854_
               (make-hash-table-eq)
               '2
               (##structure-type _self96854_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self96854_
                   '2
                   (##vector-length _self96854_)))
        (if _bind?96855_
            (begin
              (let ((__method96906
                     (method-ref _self96854_ 'bind-core-syntax-expanders!)))
                (if __method96906
                    (__method96906 _self96854_)
                    (error '"Missing method"
                           _self96854_
                           'bind-core-syntax-expanders!)))
              (let ((__method96907
                     (method-ref _self96854_ 'bind-core-macro-expanders!)))
                (if __method96907
                    (__method96907 _self96854_)
                    (error '"Missing method"
                           _self96854_
                           'bind-core-macro-expanders!)))
              (let ((__method96908
                     (method-ref _self96854_ 'bind-core-features!)))
                (if __method96908
                    (__method96908 _self96854_)
                    (error '"Missing method"
                           _self96854_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self96860_)
        (let ((_bind?96862_ '#t))
          (gx#root-context:::init!__% _self96860_ _bind?96862_))))
    (define gx#root-context:::init!
      (lambda _g96911_
        (let ((_g96910_ (##length _g96911_)))
          (cond ((##fx= _g96910_ 1)
                 (apply (lambda (_self96860_)
                          (gx#root-context:::init!__0 _self96860_))
                        _g96911_))
                ((##fx= _g96910_ 2)
                 (apply (lambda (_self96864_ _bind?96865_)
                          (gx#root-context:::init!__%
                           _self96864_
                           _bind?96865_))
                        _g96911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g96911_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass96866 __method-table96867)
        (let ((__bind-core-features!96868
               (make-promise
                (lambda ()
                  (let ((__method96871
                         (symbolic-table-ref
                          __method-table96867
                          'bind-core-features!
                          '#f)))
                    (if __method96871
                        __method96871
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!96869
               (make-promise
                (lambda ()
                  (let ((__method96872
                         (symbolic-table-ref
                          __method-table96867
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method96872
                        __method96872
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!96870
               (make-promise
                (lambda ()
                  (let ((__method96873
                         (symbolic-table-ref
                          __method-table96867
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method96873
                        __method96873
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda9685296857_
                 (lambda (_self96854_ _bind?96855_)
                   (if (##fx< '2 (##structure-length _self96854_))
                       (begin
                         (##unchecked-structure-set!
                          _self96854_
                          'root
                          '1
                          (##structure-type _self96854_)
                          '#f)
                         (##unchecked-structure-set!
                          _self96854_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self96854_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self96854_
                              '2
                              (##vector-length _self96854_)))
                   (if _bind?96855_
                       (begin
                         ((force __bind-core-syntax-expanders!96869)
                          _self96854_)
                         ((force __bind-core-macro-expanders!96870)
                          _self96854_)
                         ((force __bind-core-features!96868) _self96854_))
                       '#!void))))
            (lambda _g96913_
              (let ((_g96912_ (##length _g96913_)))
                (cond ((##fx= _g96912_ 1)
                       (apply (lambda (_self96860_)
                                (let ((_bind?96862_ '#t))
                                  (_opt-lambda9685296857_
                                   _self96860_
                                   _bind?96862_)))
                              _g96913_))
                      ((##fx= _g96912_ 2)
                       (apply (lambda (_self96864_ _bind?96865_)
                                (_opt-lambda9685296857_
                                 _self96864_
                                 _bind?96865_))
                              _g96913_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g96913_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self96710_ _super96711_)
        (let ((_super96719_
               (let ((_$e96713_ _super96711_))
                 (if _$e96713_
                     _$e96713_
                     (let ((_$e96716_ (gx#core-context-root__0)))
                       (if _$e96716_
                           _$e96716_
                           (let ((__obj96909
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj96909)
                             __obj96909)))))))
          (if (##fx< '5 (##structure-length _self96710_))
              (begin
                (##unchecked-structure-set!
                 _self96710_
                 'top
                 '1
                 (##structure-type _self96710_)
                 '#f)
                (##unchecked-structure-set!
                 _self96710_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self96710_)
                 '#f)
                (##unchecked-structure-set!
                 _self96710_
                 _super96719_
                 '3
                 (##structure-type _self96710_)
                 '#f)
                (##unchecked-structure-set!
                 _self96710_
                 '#f
                 '4
                 (##structure-type _self96710_)
                 '#f)
                (##unchecked-structure-set!
                 _self96710_
                 '#f
                 '5
                 (##structure-type _self96710_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self96710_
                     '5
                     (##vector-length _self96710_))))))
    (define gx#top-context:::init!__0
      (lambda (_self96724_)
        (let ((_super96726_ '#f))
          (gx#top-context:::init!__% _self96724_ _super96726_))))
    (define gx#top-context:::init!
      (lambda _g96915_
        (let ((_g96914_ (##length _g96915_)))
          (cond ((##fx= _g96914_ 1)
                 (apply (lambda (_self96724_)
                          (gx#top-context:::init!__0 _self96724_))
                        _g96915_))
                ((##fx= _g96914_ 2)
                 (apply (lambda (_self96728_ _super96729_)
                          (gx#top-context:::init!__% _self96728_ _super96729_))
                        _g96915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g96915_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self96441_ _bindings96442_)
        (for-each
         (lambda (_bind96444_)
           (let* ((_bind9644596452_ _bind96444_)
                  (_E9644796456_
                   (lambda () (error '"No clause matching" _bind9644596452_)))
                  (_K9644896565_
                   (lambda (_rest96459_ _id96460_)
                     (gx#core-context-put!
                      _self96441_
                      _id96460_
                      (##structure
                       gx#syntax-binding::t
                       _id96460_
                       _id96460_
                       '#f
                       (let* ((_rest9646196472_ _rest96459_)
                              (_E9646396476_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9646196472_)))
                              (_K9646496541_
                               (lambda (_compiler96479_
                                        _expander96480_
                                        _key96481_)
                                 ((let* ((_key9648296495_ _key96481_)
                                         (_E9648896499_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9648296495_))))
                                    (let ((_K9649396535_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9649296528_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9649196520_
                                           (lambda () gx#make-definition-form))
                                          (_K9649096512_
                                           (lambda () gx#make-special-form))
                                          (_K9648996504_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9648796507_
                                              (lambda ()
                                                (if (##eq? _key9648296495_
                                                           'expr:)
                                                    (_K9648996504_)
                                                    (_E9648896499_))))
                                             (_try-match9648696515_
                                              (lambda ()
                                                (if (##eq? _key9648296495_
                                                           'special:)
                                                    (_K9649096512_)
                                                    (_try-match9648796507_))))
                                             (_try-match9648596523_
                                              (lambda ()
                                                (if (##eq? _key9648296495_
                                                           'define:)
                                                    (_K9649196520_)
                                                    (_try-match9648696515_))))
                                             (_try-match9648496531_
                                              (lambda ()
                                                (if (##eq? _key9648296495_
                                                           'module:)
                                                    (_K9649296528_)
                                                    (_try-match9648596523_)))))
                                        (if (##eq? _key9648296495_ 'top:)
                                            (_K9649396535_)
                                            (_try-match9648496531_)))))
                                  _expander96480_
                                  _id96460_
                                  (let ((_$e96538_ _compiler96479_))
                                    (if _$e96538_
                                        _$e96538_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9646196472_)
                             (let ((_hd9646596544_ (##car _rest9646196472_))
                                   (_tl9646696546_ (##cdr _rest9646196472_)))
                               (let ((_key96549_ _hd9646596544_))
                                 (if (##pair? _tl9646696546_)
                                     (let ((_hd9646796551_
                                            (##car _tl9646696546_))
                                           (_tl9646896553_
                                            (##cdr _tl9646696546_)))
                                       (let ((_expander96556_ _hd9646796551_))
                                         (if (##pair? _tl9646896553_)
                                             (let ((_hd9646996558_
                                                    (##car _tl9646896553_))
                                                   (_tl9647096560_
                                                    (##cdr _tl9646896553_)))
                                               (let ((_compiler96563_
                                                      _hd9646996558_))
                                                 (if (##null? _tl9647096560_)
                                                     (_K9646496541_
                                                      _compiler96563_
                                                      _expander96556_
                                                      _key96549_)
                                                     (_E9646396476_))))
                                             (_E9646396476_))))
                                     (_E9646396476_))))
                             (_E9646396476_))))))))
             (if (##pair? _bind9644596452_)
                 (let ((_hd9644996568_ (##car _bind9644596452_))
                       (_tl9645096570_ (##cdr _bind9644596452_)))
                   (let* ((_id96573_ _hd9644996568_)
                          (_rest96575_ _tl9645096570_))
                     (_K9644896565_ _rest96575_ _id96573_)))
                 (_E9644796456_))))
         _bindings96442_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self96580_)
        (let ((_bindings96582_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self96580_
           _bindings96582_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g96917_
        (let ((_g96916_ (##length _g96917_)))
          (cond ((##fx= _g96916_ 1)
                 (apply (lambda (_self96580_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self96580_))
                        _g96917_))
                ((##fx= _g96916_ 2)
                 (apply (lambda (_self96584_ _bindings96585_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self96584_
                           _bindings96585_))
                        _g96917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g96917_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self96213_ _bindings96214_)
        (for-each
         (lambda (_bind96216_)
           (let* ((_bind9621796224_ _bind96216_)
                  (_E9621996228_
                   (lambda () (error '"No clause matching" _bind9621796224_)))
                  (_K9622096296_
                   (lambda (_rest96231_ _id96232_)
                     (gx#core-context-put!
                      _self96213_
                      _id96232_
                      (##structure
                       gx#syntax-binding::t
                       _id96232_
                       _id96232_
                       '#f
                       (let* ((_rest9623396248_ _rest96231_)
                              (_E9623796252_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9623396248_))))
                         (let ((_K9624296281_
                                (lambda (_core-id96279_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id96279_)))
                               (_K9623996266_
                                (lambda (_proc96264_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc96264_)))
                               (_K9623896257_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id96232_))))
                           (let ((_try-match9623696260_
                                  (lambda ()
                                    (if (##null? _rest9623396248_)
                                        (_K9623896257_)
                                        (_E9623796252_)))))
                             (if (##pair? _rest9623396248_)
                                 (let ((_tl9624496286_
                                        (##cdr _rest9623396248_))
                                       (_hd9624396284_
                                        (##car _rest9623396248_)))
                                   (if (##eq? _hd9624396284_ '=>)
                                       (if (##pair? _tl9624496286_)
                                           (let ((_tl9624696291_
                                                  (##cdr _tl9624496286_))
                                                 (_hd9624596289_
                                                  (##car _tl9624496286_)))
                                             (if (##null? _tl9624696291_)
                                                 (let ((_core-id96294_
                                                        _hd9624596289_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id96294_))
                                                 (_E9623796252_)))
                                           (if (##null? _tl9624496286_)
                                               (let ((_proc96274_
                                                      _hd9624396284_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc96274_))
                                               (_E9623796252_)))
                                       (if (##null? _tl9624496286_)
                                           (let ((_proc96274_ _hd9624396284_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc96274_))
                                           (_E9623796252_))))
                                 (_try-match9623696260_))))))))))
             (if (##pair? _bind9621796224_)
                 (let ((_hd9622196299_ (##car _bind9621796224_))
                       (_tl9622296301_ (##cdr _bind9621796224_)))
                   (let* ((_id96304_ _hd9622196299_)
                          (_rest96306_ _tl9622296301_))
                     (_K9622096296_ _rest96306_ _id96304_)))
                 (_E9621996228_))))
         _bindings96214_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self96311_)
        (let ((_bindings96313_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self96311_
           _bindings96313_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g96919_
        (let ((_g96918_ (##length _g96919_)))
          (cond ((##fx= _g96918_ 1)
                 (apply (lambda (_self96311_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self96311_))
                        _g96919_))
                ((##fx= _g96918_ 2)
                 (apply (lambda (_self96315_ _bindings96316_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self96315_
                           _bindings96316_))
                        _g96919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g96919_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self95957_)
        (letrec ((_linux-variant?95959_
                  (lambda (_sys-type96058_)
                    (let* ((_g9605996067_
                            (string-split
                             (symbol->string _sys-type96058_)
                             '#\-))
                           (_else9606196075_ (lambda () '#f))
                           (_K9606396080_
                            (lambda (_rest96078_) (not (null? _rest96078_)))))
                      (if (##pair? _g9605996067_)
                          (let ((_hd9606496083_ (##car _g9605996067_))
                                (_tl9606596085_ (##cdr _g9605996067_)))
                            (if (equal? _hd9606496083_ '"linux")
                                (let ((_rest96088_ _tl9606596085_))
                                  (_K9606396080_ _rest96088_))
                                (_else9606196075_)))
                          (_else9606196075_)))))
                 (_bsd-variant95960_
                  (lambda (_sys-type96017_)
                    (let ((_sys-type-str96019_
                           (symbol->string _sys-type96017_)))
                      (let _lp96021_ ((_rest96023_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9602496032_ _rest96023_)
                               (_else9602696040_ (lambda () '#f))
                               (_K9602896046_
                                (lambda (_rest96043_ _sys96044_)
                                  (if (string-prefix?
                                       _sys96044_
                                       _sys-type-str96019_)
                                      _sys96044_
                                      (_lp96021_ _rest96043_)))))
                          (if (##pair? _rest9602496032_)
                              (let ((_hd9602996049_ (##car _rest9602496032_))
                                    (_tl9603096051_ (##cdr _rest9602496032_)))
                                (let* ((_sys96054_ _hd9602996049_)
                                       (_rest96056_ _tl9603096051_))
                                  (_K9602896046_ _rest96056_ _sys96054_)))
                              (_else9602696040_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self95957_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self95957_)
          (let* ((_g9596195973_ (system-type))
                 (_else9596395981_ (lambda () '#!void))
                 (_K9596595993_
                  (lambda (_sys-type95984_ _sys-vendor95985_ _sys-cpu95986_)
                    (gx#core-bind-feature!__%
                     _sys-cpu95986_
                     '#f
                     '0
                     _self95957_)
                    (gx#core-bind-feature!__%
                     _sys-type95984_
                     '#f
                     '0
                     _self95957_)
                    (if (_linux-variant?95959_ _sys-type95984_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self95957_)
                        (let ((_$e95988_ (_bsd-variant95960_ _sys-type95984_)))
                          (if _$e95988_
                              ((lambda (_sys-prefix95991_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self95957_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix95991_)
                                  '#f
                                  '0
                                  _self95957_))
                               _$e95988_)
                              '#!void))))))
            (if (##pair? _g9596195973_)
                (let ((_hd9596695996_ (##car _g9596195973_))
                      (_tl9596795998_ (##cdr _g9596195973_)))
                  (let ((_sys-cpu96001_ _hd9596695996_))
                    (if (##pair? _tl9596795998_)
                        (let ((_hd9596896003_ (##car _tl9596795998_))
                              (_tl9596996005_ (##cdr _tl9596795998_)))
                          (let ((_sys-vendor96008_ _hd9596896003_))
                            (if (##pair? _tl9596996005_)
                                (let ((_hd9597096010_ (##car _tl9596996005_))
                                      (_tl9597196012_ (##cdr _tl9596996005_)))
                                  (let ((_sys-type96015_ _hd9597096010_))
                                    (if (##null? _tl9597196012_)
                                        (_K9596595993_
                                         _sys-type96015_
                                         _sys-vendor96008_
                                         _sys-cpu96001_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self95957_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
