(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1710694204)
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
      (lambda (_self94198_ _bind?94199_)
        (if (##fx< '2 (##structure-length _self94198_))
            (begin
              (##unchecked-structure-set!
               _self94198_
               'root
               '1
               (##structure-type _self94198_)
               '#f)
              (##unchecked-structure-set!
               _self94198_
               (make-hash-table-eq)
               '2
               (##structure-type _self94198_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94198_
                   '2
                   (##vector-length _self94198_)))
        (if _bind?94199_
            (begin
              (let ((__method94250
                     (method-ref _self94198_ 'bind-core-syntax-expanders!)))
                (if __method94250
                    (__method94250 _self94198_)
                    (error '"Missing method"
                           _self94198_
                           'bind-core-syntax-expanders!)))
              (let ((__method94251
                     (method-ref _self94198_ 'bind-core-macro-expanders!)))
                (if __method94251
                    (__method94251 _self94198_)
                    (error '"Missing method"
                           _self94198_
                           'bind-core-macro-expanders!)))
              (let ((__method94252
                     (method-ref _self94198_ 'bind-core-features!)))
                (if __method94252
                    (__method94252 _self94198_)
                    (error '"Missing method"
                           _self94198_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self94204_)
        (let ((_bind?94206_ '#t))
          (gx#root-context:::init!__% _self94204_ _bind?94206_))))
    (define gx#root-context:::init!
      (lambda _g94255_
        (let ((_g94254_ (##length _g94255_)))
          (cond ((##fx= _g94254_ 1)
                 (apply (lambda (_self94204_)
                          (gx#root-context:::init!__0 _self94204_))
                        _g94255_))
                ((##fx= _g94254_ 2)
                 (apply (lambda (_self94208_ _bind?94209_)
                          (gx#root-context:::init!__%
                           _self94208_
                           _bind?94209_))
                        _g94255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g94255_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass94210 __method-table94211)
        (let ((__bind-core-macro-expanders!94212
               (make-promise
                (lambda ()
                  (let ((__method94215
                         (symbolic-table-ref
                          __method-table94211
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method94215
                        __method94215
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!94213
               (make-promise
                (lambda ()
                  (let ((__method94216
                         (symbolic-table-ref
                          __method-table94211
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method94216
                        __method94216
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!94214
               (make-promise
                (lambda ()
                  (let ((__method94217
                         (symbolic-table-ref
                          __method-table94211
                          'bind-core-features!
                          '#f)))
                    (if __method94217
                        __method94217
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda9419694201_
                 (lambda (_self94198_ _bind?94199_)
                   (if (##fx< '2 (##structure-length _self94198_))
                       (begin
                         (##unchecked-structure-set!
                          _self94198_
                          'root
                          '1
                          (##structure-type _self94198_)
                          '#f)
                         (##unchecked-structure-set!
                          _self94198_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self94198_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self94198_
                              '2
                              (##vector-length _self94198_)))
                   (if _bind?94199_
                       (begin
                         ((force __bind-core-syntax-expanders!94213)
                          _self94198_)
                         ((force __bind-core-macro-expanders!94212)
                          _self94198_)
                         ((force __bind-core-features!94214) _self94198_))
                       '#!void))))
            (lambda _g94257_
              (let ((_g94256_ (##length _g94257_)))
                (cond ((##fx= _g94256_ 1)
                       (apply (lambda (_self94204_)
                                (let ((_bind?94206_ '#t))
                                  (_opt-lambda9419694201_
                                   _self94204_
                                   _bind?94206_)))
                              _g94257_))
                      ((##fx= _g94256_ 2)
                       (apply (lambda (_self94208_ _bind?94209_)
                                (_opt-lambda9419694201_
                                 _self94208_
                                 _bind?94209_))
                              _g94257_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g94257_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self94054_ _super94055_)
        (let ((_super94063_
               (let ((_$e94057_ _super94055_))
                 (if _$e94057_
                     _$e94057_
                     (let ((_$e94060_ (gx#core-context-root__0)))
                       (if _$e94060_
                           _$e94060_
                           (let ((__obj94253
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj94253)
                             __obj94253)))))))
          (if (##fx< '5 (##structure-length _self94054_))
              (begin
                (##unchecked-structure-set!
                 _self94054_
                 'top
                 '1
                 (##structure-type _self94054_)
                 '#f)
                (##unchecked-structure-set!
                 _self94054_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self94054_)
                 '#f)
                (##unchecked-structure-set!
                 _self94054_
                 _super94063_
                 '3
                 (##structure-type _self94054_)
                 '#f)
                (##unchecked-structure-set!
                 _self94054_
                 '#f
                 '4
                 (##structure-type _self94054_)
                 '#f)
                (##unchecked-structure-set!
                 _self94054_
                 '#f
                 '5
                 (##structure-type _self94054_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self94054_
                     '5
                     (##vector-length _self94054_))))))
    (define gx#top-context:::init!__0
      (lambda (_self94068_)
        (let ((_super94070_ '#f))
          (gx#top-context:::init!__% _self94068_ _super94070_))))
    (define gx#top-context:::init!
      (lambda _g94259_
        (let ((_g94258_ (##length _g94259_)))
          (cond ((##fx= _g94258_ 1)
                 (apply (lambda (_self94068_)
                          (gx#top-context:::init!__0 _self94068_))
                        _g94259_))
                ((##fx= _g94258_ 2)
                 (apply (lambda (_self94072_ _super94073_)
                          (gx#top-context:::init!__% _self94072_ _super94073_))
                        _g94259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g94259_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self93785_ _bindings93786_)
        (for-each
         (lambda (_bind93788_)
           (let* ((_bind9378993796_ _bind93788_)
                  (_E9379193800_
                   (lambda () (error '"No clause matching" _bind9378993796_)))
                  (_K9379293909_
                   (lambda (_rest93803_ _id93804_)
                     (gx#core-context-put!
                      _self93785_
                      _id93804_
                      (##structure
                       gx#syntax-binding::t
                       _id93804_
                       _id93804_
                       '#f
                       (let* ((_rest9380593816_ _rest93803_)
                              (_E9380793820_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9380593816_)))
                              (_K9380893885_
                               (lambda (_compiler93823_
                                        _expander93824_
                                        _key93825_)
                                 ((let* ((_key9382693839_ _key93825_)
                                         (_E9383293843_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9382693839_))))
                                    (let ((_K9383793879_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9383693872_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9383593864_
                                           (lambda () gx#make-definition-form))
                                          (_K9383493856_
                                           (lambda () gx#make-special-form))
                                          (_K9383393848_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9383193851_
                                              (lambda ()
                                                (if (##eq? _key9382693839_
                                                           'expr:)
                                                    (_K9383393848_)
                                                    (_E9383293843_))))
                                             (_try-match9383093859_
                                              (lambda ()
                                                (if (##eq? _key9382693839_
                                                           'special:)
                                                    (_K9383493856_)
                                                    (_try-match9383193851_))))
                                             (_try-match9382993867_
                                              (lambda ()
                                                (if (##eq? _key9382693839_
                                                           'define:)
                                                    (_K9383593864_)
                                                    (_try-match9383093859_))))
                                             (_try-match9382893875_
                                              (lambda ()
                                                (if (##eq? _key9382693839_
                                                           'module:)
                                                    (_K9383693872_)
                                                    (_try-match9382993867_)))))
                                        (if (##eq? _key9382693839_ 'top:)
                                            (_K9383793879_)
                                            (_try-match9382893875_)))))
                                  _expander93824_
                                  _id93804_
                                  (let ((_$e93882_ _compiler93823_))
                                    (if _$e93882_
                                        _$e93882_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9380593816_)
                             (let ((_hd9380993888_ (##car _rest9380593816_))
                                   (_tl9381093890_ (##cdr _rest9380593816_)))
                               (let ((_key93893_ _hd9380993888_))
                                 (if (##pair? _tl9381093890_)
                                     (let ((_hd9381193895_
                                            (##car _tl9381093890_))
                                           (_tl9381293897_
                                            (##cdr _tl9381093890_)))
                                       (let ((_expander93900_ _hd9381193895_))
                                         (if (##pair? _tl9381293897_)
                                             (let ((_hd9381393902_
                                                    (##car _tl9381293897_))
                                                   (_tl9381493904_
                                                    (##cdr _tl9381293897_)))
                                               (let ((_compiler93907_
                                                      _hd9381393902_))
                                                 (if (##null? _tl9381493904_)
                                                     (_K9380893885_
                                                      _compiler93907_
                                                      _expander93900_
                                                      _key93893_)
                                                     (_E9380793820_))))
                                             (_E9380793820_))))
                                     (_E9380793820_))))
                             (_E9380793820_))))))))
             (if (##pair? _bind9378993796_)
                 (let ((_hd9379393912_ (##car _bind9378993796_))
                       (_tl9379493914_ (##cdr _bind9378993796_)))
                   (let* ((_id93917_ _hd9379393912_)
                          (_rest93919_ _tl9379493914_))
                     (_K9379293909_ _rest93919_ _id93917_)))
                 (_E9379193800_))))
         _bindings93786_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self93924_)
        (let ((_bindings93926_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self93924_
           _bindings93926_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g94261_
        (let ((_g94260_ (##length _g94261_)))
          (cond ((##fx= _g94260_ 1)
                 (apply (lambda (_self93924_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self93924_))
                        _g94261_))
                ((##fx= _g94260_ 2)
                 (apply (lambda (_self93928_ _bindings93929_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self93928_
                           _bindings93929_))
                        _g94261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g94261_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self93557_ _bindings93558_)
        (for-each
         (lambda (_bind93560_)
           (let* ((_bind9356193568_ _bind93560_)
                  (_E9356393572_
                   (lambda () (error '"No clause matching" _bind9356193568_)))
                  (_K9356493640_
                   (lambda (_rest93575_ _id93576_)
                     (gx#core-context-put!
                      _self93557_
                      _id93576_
                      (##structure
                       gx#syntax-binding::t
                       _id93576_
                       _id93576_
                       '#f
                       (let* ((_rest9357793592_ _rest93575_)
                              (_E9358193596_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9357793592_))))
                         (let ((_K9358693625_
                                (lambda (_core-id93623_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id93623_)))
                               (_K9358393610_
                                (lambda (_proc93608_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc93608_)))
                               (_K9358293601_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id93576_))))
                           (let ((_try-match9358093604_
                                  (lambda ()
                                    (if (##null? _rest9357793592_)
                                        (_K9358293601_)
                                        (_E9358193596_)))))
                             (if (##pair? _rest9357793592_)
                                 (let ((_tl9358893630_
                                        (##cdr _rest9357793592_))
                                       (_hd9358793628_
                                        (##car _rest9357793592_)))
                                   (if (##eq? _hd9358793628_ '=>)
                                       (if (##pair? _tl9358893630_)
                                           (let ((_tl9359093635_
                                                  (##cdr _tl9358893630_))
                                                 (_hd9358993633_
                                                  (##car _tl9358893630_)))
                                             (if (##null? _tl9359093635_)
                                                 (let ((_core-id93638_
                                                        _hd9358993633_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id93638_))
                                                 (_E9358193596_)))
                                           (if (##null? _tl9358893630_)
                                               (let ((_proc93618_
                                                      _hd9358793628_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc93618_))
                                               (_E9358193596_)))
                                       (if (##null? _tl9358893630_)
                                           (let ((_proc93618_ _hd9358793628_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc93618_))
                                           (_E9358193596_))))
                                 (_try-match9358093604_))))))))))
             (if (##pair? _bind9356193568_)
                 (let ((_hd9356593643_ (##car _bind9356193568_))
                       (_tl9356693645_ (##cdr _bind9356193568_)))
                   (let* ((_id93648_ _hd9356593643_)
                          (_rest93650_ _tl9356693645_))
                     (_K9356493640_ _rest93650_ _id93648_)))
                 (_E9356393572_))))
         _bindings93558_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self93655_)
        (let ((_bindings93657_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self93655_
           _bindings93657_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g94263_
        (let ((_g94262_ (##length _g94263_)))
          (cond ((##fx= _g94262_ 1)
                 (apply (lambda (_self93655_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self93655_))
                        _g94263_))
                ((##fx= _g94262_ 2)
                 (apply (lambda (_self93659_ _bindings93660_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self93659_
                           _bindings93660_))
                        _g94263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g94263_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self93301_)
        (letrec ((_linux-variant?93303_
                  (lambda (_sys-type93402_)
                    (let* ((_g9340393411_
                            (string-split
                             (symbol->string _sys-type93402_)
                             '#\-))
                           (_else9340593419_ (lambda () '#f))
                           (_K9340793424_
                            (lambda (_rest93422_) (not (null? _rest93422_)))))
                      (if (##pair? _g9340393411_)
                          (let ((_hd9340893427_ (##car _g9340393411_))
                                (_tl9340993429_ (##cdr _g9340393411_)))
                            (if (equal? _hd9340893427_ '"linux")
                                (let ((_rest93432_ _tl9340993429_))
                                  (_K9340793424_ _rest93432_))
                                (_else9340593419_)))
                          (_else9340593419_)))))
                 (_bsd-variant93304_
                  (lambda (_sys-type93361_)
                    (let ((_sys-type-str93363_
                           (symbol->string _sys-type93361_)))
                      (let _lp93365_ ((_rest93367_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9336893376_ _rest93367_)
                               (_else9337093384_ (lambda () '#f))
                               (_K9337293390_
                                (lambda (_rest93387_ _sys93388_)
                                  (if (string-prefix?
                                       _sys93388_
                                       _sys-type-str93363_)
                                      _sys93388_
                                      (_lp93365_ _rest93387_)))))
                          (if (##pair? _rest9336893376_)
                              (let ((_hd9337393393_ (##car _rest9336893376_))
                                    (_tl9337493395_ (##cdr _rest9336893376_)))
                                (let* ((_sys93398_ _hd9337393393_)
                                       (_rest93400_ _tl9337493395_))
                                  (_K9337293390_ _rest93400_ _sys93398_)))
                              (_else9337093384_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self93301_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self93301_)
          (let* ((_g9330593317_ (system-type))
                 (_else9330793325_ (lambda () '#!void))
                 (_K9330993337_
                  (lambda (_sys-type93328_ _sys-vendor93329_ _sys-cpu93330_)
                    (gx#core-bind-feature!__%
                     _sys-cpu93330_
                     '#f
                     '0
                     _self93301_)
                    (gx#core-bind-feature!__%
                     _sys-type93328_
                     '#f
                     '0
                     _self93301_)
                    (if (_linux-variant?93303_ _sys-type93328_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self93301_)
                        (let ((_$e93332_ (_bsd-variant93304_ _sys-type93328_)))
                          (if _$e93332_
                              ((lambda (_sys-prefix93335_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self93301_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix93335_)
                                  '#f
                                  '0
                                  _self93301_))
                               _$e93332_)
                              '#!void))))))
            (if (##pair? _g9330593317_)
                (let ((_hd9331093340_ (##car _g9330593317_))
                      (_tl9331193342_ (##cdr _g9330593317_)))
                  (let ((_sys-cpu93345_ _hd9331093340_))
                    (if (##pair? _tl9331193342_)
                        (let ((_hd9331293347_ (##car _tl9331193342_))
                              (_tl9331393349_ (##cdr _tl9331193342_)))
                          (let ((_sys-vendor93352_ _hd9331293347_))
                            (if (##pair? _tl9331393349_)
                                (let ((_hd9331493354_ (##car _tl9331393349_))
                                      (_tl9331593356_ (##cdr _tl9331393349_)))
                                  (let ((_sys-type93359_ _hd9331493354_))
                                    (if (##null? _tl9331593356_)
                                        (_K9330993337_
                                         _sys-type93359_
                                         _sys-vendor93352_
                                         _sys-cpu93345_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self93301_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
