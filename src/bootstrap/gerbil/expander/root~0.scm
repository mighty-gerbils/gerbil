(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1711709197)
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
      (lambda (_self93773_ _bind?93774_)
        (if (##fx< '2 (##structure-length _self93773_))
            (begin
              (##unchecked-structure-set! _self93773_ 'root '1 '#f '#f)
              (##unchecked-structure-set!
               _self93773_
               (make-hash-table-eq)
               '2
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _self93773_
                   '2
                   (##vector-length _self93773_)))
        (if _bind?93774_
            (begin
              (let ((__method93825
                     (__method-ref _self93773_ 'bind-core-syntax-expanders!)))
                (if __method93825
                    (__method93825 _self93773_)
                    (error '"Missing method"
                           _self93773_
                           'bind-core-syntax-expanders!)))
              (let ((__method93826
                     (__method-ref _self93773_ 'bind-core-macro-expanders!)))
                (if __method93826
                    (__method93826 _self93773_)
                    (error '"Missing method"
                           _self93773_
                           'bind-core-macro-expanders!)))
              (let ((__method93827
                     (__method-ref _self93773_ 'bind-core-features!)))
                (if __method93827
                    (__method93827 _self93773_)
                    (error '"Missing method"
                           _self93773_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self93779_)
        (let ((_bind?93781_ '#t))
          (gx#root-context:::init!__% _self93779_ _bind?93781_))))
    (define gx#root-context:::init!
      (lambda _g93830_
        (let ((_g93829_ (##length _g93830_)))
          (cond ((##fx= _g93829_ 1)
                 (apply (lambda (_self93779_)
                          (gx#root-context:::init!__0 _self93779_))
                        _g93830_))
                ((##fx= _g93829_ 2)
                 (apply (lambda (_self93783_ _bind?93784_)
                          (gx#root-context:::init!__%
                           _self93783_
                           _bind?93784_))
                        _g93830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g93830_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass93785 __method-table93786)
        (let ((__bind-core-features!93787
               (__make-promise
                (lambda ()
                  (let ((__method93790
                         (symbolic-table-ref
                          __method-table93786
                          'bind-core-features!
                          '#f)))
                    (if __method93790
                        __method93790
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!93788
               (__make-promise
                (lambda ()
                  (let ((__method93791
                         (symbolic-table-ref
                          __method-table93786
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method93791
                        __method93791
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!93789
               (__make-promise
                (lambda ()
                  (let ((__method93792
                         (symbolic-table-ref
                          __method-table93786
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method93792
                        __method93792
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_opt-lambda9377193776_
                 (lambda (_self93773_ _bind?93774_)
                   (if (##fx< '2 (##structure-length _self93773_))
                       (begin
                         (##unchecked-structure-set!
                          _self93773_
                          'root
                          '1
                          '#f
                          '#f)
                         (##unchecked-structure-set!
                          _self93773_
                          (make-hash-table-eq)
                          '2
                          '#f
                          '#f)
                         '#!void)
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self93773_
                              '2
                              (##vector-length _self93773_)))
                   (if _bind?93774_
                       (begin
                         ((force __bind-core-syntax-expanders!93789)
                          _self93773_)
                         ((force __bind-core-macro-expanders!93788)
                          _self93773_)
                         ((force __bind-core-features!93787) _self93773_))
                       '#!void))))
            (lambda _g93832_
              (let ((_g93831_ (##length _g93832_)))
                (cond ((##fx= _g93831_ 1)
                       (apply (lambda (_self93779_)
                                (let ((_bind?93781_ '#t))
                                  (_opt-lambda9377193776_
                                   _self93779_
                                   _bind?93781_)))
                              _g93832_))
                      ((##fx= _g93831_ 2)
                       (apply (lambda (_self93783_ _bind?93784_)
                                (_opt-lambda9377193776_
                                 _self93783_
                                 _bind?93784_))
                              _g93832_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g93832_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self93629_ _super93630_)
        (let ((_super93638_
               (let ((_$e93632_ _super93630_))
                 (if _$e93632_
                     _$e93632_
                     (let ((_$e93635_ (gx#core-context-root__0)))
                       (if _$e93635_
                           _$e93635_
                           (let ((__obj93828
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj93828)
                             __obj93828)))))))
          (if (##fx< '5 (##structure-length _self93629_))
              (begin
                (##unchecked-structure-set! _self93629_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _self93629_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _self93629_
                 _super93638_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _self93629_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _self93629_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _self93629_
                     '5
                     (##vector-length _self93629_))))))
    (define gx#top-context:::init!__0
      (lambda (_self93643_)
        (let ((_super93645_ '#f))
          (gx#top-context:::init!__% _self93643_ _super93645_))))
    (define gx#top-context:::init!
      (lambda _g93834_
        (let ((_g93833_ (##length _g93834_)))
          (cond ((##fx= _g93833_ 1)
                 (apply (lambda (_self93643_)
                          (gx#top-context:::init!__0 _self93643_))
                        _g93834_))
                ((##fx= _g93833_ 2)
                 (apply (lambda (_self93647_ _super93648_)
                          (gx#top-context:::init!__% _self93647_ _super93648_))
                        _g93834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g93834_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self93360_ _bindings93361_)
        (for-each
         (lambda (_bind93363_)
           (let* ((_bind9336493371_ _bind93363_)
                  (_E9336693375_
                   (lambda () (error '"No clause matching" _bind9336493371_)))
                  (_K9336793484_
                   (lambda (_rest93378_ _id93379_)
                     (gx#core-context-put!
                      _self93360_
                      _id93379_
                      (##structure
                       gx#syntax-binding::t
                       _id93379_
                       _id93379_
                       '#f
                       (let* ((_rest9338093391_ _rest93378_)
                              (_E9338293395_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9338093391_)))
                              (_K9338393460_
                               (lambda (_compiler93398_
                                        _expander93399_
                                        _key93400_)
                                 ((let* ((_key9340193414_ _key93400_)
                                         (_E9340793418_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9340193414_))))
                                    (let ((_K9341293454_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9341193447_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9341093439_
                                           (lambda () gx#make-definition-form))
                                          (_K9340993431_
                                           (lambda () gx#make-special-form))
                                          (_K9340893423_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9340693426_
                                              (lambda ()
                                                (if (##eq? _key9340193414_
                                                           'expr:)
                                                    (_K9340893423_)
                                                    (_E9340793418_))))
                                             (_try-match9340593434_
                                              (lambda ()
                                                (if (##eq? _key9340193414_
                                                           'special:)
                                                    (_K9340993431_)
                                                    (_try-match9340693426_))))
                                             (_try-match9340493442_
                                              (lambda ()
                                                (if (##eq? _key9340193414_
                                                           'define:)
                                                    (_K9341093439_)
                                                    (_try-match9340593434_))))
                                             (_try-match9340393450_
                                              (lambda ()
                                                (if (##eq? _key9340193414_
                                                           'module:)
                                                    (_K9341193447_)
                                                    (_try-match9340493442_)))))
                                        (if (##eq? _key9340193414_ 'top:)
                                            (_K9341293454_)
                                            (_try-match9340393450_)))))
                                  _expander93399_
                                  _id93379_
                                  (let ((_$e93457_ _compiler93398_))
                                    (if _$e93457_
                                        _$e93457_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9338093391_)
                             (let ((_hd9338493463_ (##car _rest9338093391_))
                                   (_tl9338593465_ (##cdr _rest9338093391_)))
                               (let ((_key93468_ _hd9338493463_))
                                 (if (##pair? _tl9338593465_)
                                     (let ((_hd9338693470_
                                            (##car _tl9338593465_))
                                           (_tl9338793472_
                                            (##cdr _tl9338593465_)))
                                       (let ((_expander93475_ _hd9338693470_))
                                         (if (##pair? _tl9338793472_)
                                             (let ((_hd9338893477_
                                                    (##car _tl9338793472_))
                                                   (_tl9338993479_
                                                    (##cdr _tl9338793472_)))
                                               (let ((_compiler93482_
                                                      _hd9338893477_))
                                                 (if (##null? _tl9338993479_)
                                                     (_K9338393460_
                                                      _compiler93482_
                                                      _expander93475_
                                                      _key93468_)
                                                     (_E9338293395_))))
                                             (_E9338293395_))))
                                     (_E9338293395_))))
                             (_E9338293395_))))))))
             (if (##pair? _bind9336493371_)
                 (let ((_hd9336893487_ (##car _bind9336493371_))
                       (_tl9336993489_ (##cdr _bind9336493371_)))
                   (let* ((_id93492_ _hd9336893487_)
                          (_rest93494_ _tl9336993489_))
                     (_K9336793484_ _rest93494_ _id93492_)))
                 (_E9336693375_))))
         _bindings93361_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self93499_)
        (let ((_bindings93501_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self93499_
           _bindings93501_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g93836_
        (let ((_g93835_ (##length _g93836_)))
          (cond ((##fx= _g93835_ 1)
                 (apply (lambda (_self93499_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self93499_))
                        _g93836_))
                ((##fx= _g93835_ 2)
                 (apply (lambda (_self93503_ _bindings93504_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self93503_
                           _bindings93504_))
                        _g93836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g93836_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self93132_ _bindings93133_)
        (for-each
         (lambda (_bind93135_)
           (let* ((_bind9313693143_ _bind93135_)
                  (_E9313893147_
                   (lambda () (error '"No clause matching" _bind9313693143_)))
                  (_K9313993215_
                   (lambda (_rest93150_ _id93151_)
                     (gx#core-context-put!
                      _self93132_
                      _id93151_
                      (##structure
                       gx#syntax-binding::t
                       _id93151_
                       _id93151_
                       '#f
                       (let* ((_rest9315293167_ _rest93150_)
                              (_E9315693171_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9315293167_))))
                         (let ((_K9316193200_
                                (lambda (_core-id93198_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id93198_)))
                               (_K9315893185_
                                (lambda (_proc93183_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc93183_)))
                               (_K9315793176_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id93151_))))
                           (let ((_try-match9315593179_
                                  (lambda ()
                                    (if (##null? _rest9315293167_)
                                        (_K9315793176_)
                                        (_E9315693171_)))))
                             (if (##pair? _rest9315293167_)
                                 (let ((_tl9316393205_
                                        (##cdr _rest9315293167_))
                                       (_hd9316293203_
                                        (##car _rest9315293167_)))
                                   (if (##eq? _hd9316293203_ '=>)
                                       (if (##pair? _tl9316393205_)
                                           (let ((_tl9316593210_
                                                  (##cdr _tl9316393205_))
                                                 (_hd9316493208_
                                                  (##car _tl9316393205_)))
                                             (if (##null? _tl9316593210_)
                                                 (let ((_core-id93213_
                                                        _hd9316493208_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id93213_))
                                                 (_E9315693171_)))
                                           (if (##null? _tl9316393205_)
                                               (let ((_proc93193_
                                                      _hd9316293203_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc93193_))
                                               (_E9315693171_)))
                                       (if (##null? _tl9316393205_)
                                           (let ((_proc93193_ _hd9316293203_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc93193_))
                                           (_E9315693171_))))
                                 (_try-match9315593179_))))))))))
             (if (##pair? _bind9313693143_)
                 (let ((_hd9314093218_ (##car _bind9313693143_))
                       (_tl9314193220_ (##cdr _bind9313693143_)))
                   (let* ((_id93223_ _hd9314093218_)
                          (_rest93225_ _tl9314193220_))
                     (_K9313993215_ _rest93225_ _id93223_)))
                 (_E9313893147_))))
         _bindings93133_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self93230_)
        (let ((_bindings93232_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self93230_
           _bindings93232_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g93838_
        (let ((_g93837_ (##length _g93838_)))
          (cond ((##fx= _g93837_ 1)
                 (apply (lambda (_self93230_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self93230_))
                        _g93838_))
                ((##fx= _g93837_ 2)
                 (apply (lambda (_self93234_ _bindings93235_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self93234_
                           _bindings93235_))
                        _g93838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g93838_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self92876_)
        (letrec ((_linux-variant?92878_
                  (lambda (_sys-type92977_)
                    (let* ((_g9297892986_
                            (__string-split
                             (symbol->string _sys-type92977_)
                             '#\-))
                           (_else9298092994_ (lambda () '#f))
                           (_K9298292999_
                            (lambda (_rest92997_) (not (null? _rest92997_)))))
                      (if (##pair? _g9297892986_)
                          (let ((_hd9298393002_ (##car _g9297892986_))
                                (_tl9298493004_ (##cdr _g9297892986_)))
                            (if (equal? _hd9298393002_ '"linux")
                                (let ((_rest93007_ _tl9298493004_))
                                  (_K9298292999_ _rest93007_))
                                (_else9298092994_)))
                          (_else9298092994_)))))
                 (_bsd-variant92879_
                  (lambda (_sys-type92936_)
                    (let ((_sys-type-str92938_
                           (symbol->string _sys-type92936_)))
                      (let _lp92940_ ((_rest92942_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9294392951_ _rest92942_)
                               (_else9294592959_ (lambda () '#f))
                               (_K9294792965_
                                (lambda (_rest92962_ _sys92963_)
                                  (if (string-prefix?
                                       _sys92963_
                                       _sys-type-str92938_)
                                      _sys92963_
                                      (_lp92940_ _rest92962_)))))
                          (if (##pair? _rest9294392951_)
                              (let ((_hd9294892968_ (##car _rest9294392951_))
                                    (_tl9294992970_ (##cdr _rest9294392951_)))
                                (let* ((_sys92973_ _hd9294892968_)
                                       (_rest92975_ _tl9294992970_))
                                  (_K9294792965_ _rest92975_ _sys92973_)))
                              (_else9294592959_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self92876_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self92876_)
          (let* ((_g9288092892_ (system-type))
                 (_else9288292900_ (lambda () '#!void))
                 (_K9288492912_
                  (lambda (_sys-type92903_ _sys-vendor92904_ _sys-cpu92905_)
                    (gx#core-bind-feature!__%
                     _sys-cpu92905_
                     '#f
                     '0
                     _self92876_)
                    (gx#core-bind-feature!__%
                     _sys-type92903_
                     '#f
                     '0
                     _self92876_)
                    (if (_linux-variant?92878_ _sys-type92903_)
                        (gx#core-bind-feature!__%
                         (##string->symbol '"linux")
                         '#f
                         '0
                         _self92876_)
                        (let ((_$e92907_ (_bsd-variant92879_ _sys-type92903_)))
                          (if _$e92907_
                              ((lambda (_sys-prefix92910_)
                                 (gx#core-bind-feature!__%
                                  (##string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self92876_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix92910_)
                                  '#f
                                  '0
                                  _self92876_))
                               _$e92907_)
                              '#!void))))))
            (if (##pair? _g9288092892_)
                (let ((_hd9288592915_ (##car _g9288092892_))
                      (_tl9288692917_ (##cdr _g9288092892_)))
                  (let ((_sys-cpu92920_ _hd9288592915_))
                    (if (##pair? _tl9288692917_)
                        (let ((_hd9288792922_ (##car _tl9288692917_))
                              (_tl9288892924_ (##cdr _tl9288692917_)))
                          (let ((_sys-vendor92927_ _hd9288792922_))
                            (if (##pair? _tl9288892924_)
                                (let ((_hd9288992929_ (##car _tl9288892924_))
                                      (_tl9289092931_ (##cdr _tl9288892924_)))
                                  (let ((_sys-type92934_ _hd9288992929_))
                                    (if (##null? _tl9289092931_)
                                        (_K9288492912_
                                         _sys-type92934_
                                         _sys-vendor92927_
                                         _sys-cpu92920_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self92876_)
              '#!void))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
