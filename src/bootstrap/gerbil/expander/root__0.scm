(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707657571)
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
      (lambda (_self172260_ _bind?172261_)
        (if (##fx< '2 (##structure-length _self172260_))
            (begin
              (##unchecked-structure-set!
               _self172260_
               'root
               '1
               (##structure-type _self172260_)
               '#f)
              (##unchecked-structure-set!
               _self172260_
               (make-table 'test: eq?)
               '2
               (##structure-type _self172260_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self172260_
                   '2
                   (##vector-length _self172260_)))
        (if _bind?172261_
            (begin
              (let ((__method176779
                     (method-ref _self172260_ 'bind-core-syntax-expanders!)))
                (if __method176779
                    (__method176779 _self172260_)
                    (error '"Missing method"
                           _self172260_
                           'bind-core-syntax-expanders!)))
              (let ((__method176780
                     (method-ref _self172260_ 'bind-core-macro-expanders!)))
                (if __method176780
                    (__method176780 _self172260_)
                    (error '"Missing method"
                           _self172260_
                           'bind-core-macro-expanders!)))
              (let ((__method176781
                     (method-ref _self172260_ 'bind-core-features!)))
                (if __method176781
                    (__method176781 _self172260_)
                    (error '"Missing method"
                           _self172260_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self172266_)
        (let ((_bind?172268_ '#t))
          (gx#root-context:::init!__% _self172266_ _bind?172268_))))
    (define gx#root-context:::init!
      (lambda _g176784_
        (let ((_g176783_ (##length _g176784_)))
          (cond ((##fx= _g176783_ 1)
                 (apply (lambda (_self172266_)
                          (gx#root-context:::init!__0 _self172266_))
                        _g176784_))
                ((##fx= _g176783_ 2)
                 (apply (lambda (_self172270_ _bind?172271_)
                          (gx#root-context:::init!__%
                           _self172270_
                           _bind?172271_))
                        _g176784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g176784_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t176740)
        (let ((__bind-core-features!176741
               (make-promise
                (lambda ()
                  (let ((__tmp176744
                         (direct-method-ref __t176740 'bind-core-features!)))
                    (if __tmp176744
                        __tmp176744
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!176742
               (make-promise
                (lambda ()
                  (let ((__tmp176745
                         (direct-method-ref
                          __t176740
                          'bind-core-syntax-expanders!)))
                    (if __tmp176745
                        __tmp176745
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!176743
               (make-promise
                (lambda ()
                  (let ((__tmp176746
                         (direct-method-ref
                          __t176740
                          'bind-core-macro-expanders!)))
                    (if __tmp176746
                        __tmp176746
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_opt-lambda172258172263_
                 (lambda (_self172260_ _bind?172261_)
                   (if (##fx< '2 (##structure-length _self172260_))
                       (begin
                         (##unchecked-structure-set!
                          _self172260_
                          'root
                          '1
                          (##structure-type _self172260_)
                          '#f)
                         (##unchecked-structure-set!
                          _self172260_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self172260_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self172260_
                              '2
                              (##vector-length _self172260_)))
                   (if _bind?172261_
                       (begin
                         ((force __bind-core-syntax-expanders!176742)
                          _self172260_)
                         ((force __bind-core-macro-expanders!176743)
                          _self172260_)
                         ((force __bind-core-features!176741) _self172260_))
                       '#!void))))
            (lambda _g176786_
              (let ((_g176785_ (##length _g176786_)))
                (cond ((##fx= _g176785_ 1)
                       (apply (lambda (_self172266_)
                                (let ((_bind?172268_ '#t))
                                  (_opt-lambda172258172263_
                                   _self172266_
                                   _bind?172268_)))
                              _g176786_))
                      ((##fx= _g176785_ 2)
                       (apply (lambda (_self172270_ _bind?172271_)
                                (_opt-lambda172258172263_
                                 _self172270_
                                 _bind?172271_))
                              _g176786_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g176786_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self172116_ _super172117_)
        (let ((_super172125_
               (let ((_$e172119_ _super172117_))
                 (if _$e172119_
                     _$e172119_
                     (let ((_$e172122_ (gx#core-context-root__0)))
                       (if _$e172122_
                           _$e172122_
                           (let ((__obj176782
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj176782)
                             __obj176782)))))))
          (if (##fx< '5 (##structure-length _self172116_))
              (begin
                (##unchecked-structure-set!
                 _self172116_
                 'top
                 '1
                 (##structure-type _self172116_)
                 '#f)
                (##unchecked-structure-set!
                 _self172116_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self172116_)
                 '#f)
                (##unchecked-structure-set!
                 _self172116_
                 _super172125_
                 '3
                 (##structure-type _self172116_)
                 '#f)
                (##unchecked-structure-set!
                 _self172116_
                 '#f
                 '4
                 (##structure-type _self172116_)
                 '#f)
                (##unchecked-structure-set!
                 _self172116_
                 '#f
                 '5
                 (##structure-type _self172116_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self172116_
                     '5
                     (##vector-length _self172116_))))))
    (define gx#top-context:::init!__0
      (lambda (_self172130_)
        (let ((_super172132_ '#f))
          (gx#top-context:::init!__% _self172130_ _super172132_))))
    (define gx#top-context:::init!
      (lambda _g176788_
        (let ((_g176787_ (##length _g176788_)))
          (cond ((##fx= _g176787_ 1)
                 (apply (lambda (_self172130_)
                          (gx#top-context:::init!__0 _self172130_))
                        _g176788_))
                ((##fx= _g176787_ 2)
                 (apply (lambda (_self172134_ _super172135_)
                          (gx#top-context:::init!__%
                           _self172134_
                           _super172135_))
                        _g176788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g176788_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self171847_ _bindings171848_)
        (for-each
         (lambda (_bind171850_)
           (let* ((_bind171851171858_ _bind171850_)
                  (_E171853171862_
                   (lambda ()
                     (error '"No clause matching" _bind171851171858_)))
                  (_K171854171971_
                   (lambda (_rest171865_ _id171866_)
                     (gx#core-context-put!
                      _self171847_
                      _id171866_
                      (##structure
                       gx#syntax-binding::t
                       _id171866_
                       _id171866_
                       '#f
                       (let* ((_rest171867171878_ _rest171865_)
                              (_E171869171882_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest171867171878_)))
                              (_K171870171947_
                               (lambda (_compiler171885_
                                        _expander171886_
                                        _key171887_)
                                 ((let* ((_key171888171901_ _key171887_)
                                         (_E171894171905_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key171888171901_))))
                                    (let ((_K171899171941_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K171898171934_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K171897171926_
                                           (lambda () gx#make-definition-form))
                                          (_K171896171918_
                                           (lambda () gx#make-special-form))
                                          (_K171895171910_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match171893171913_
                                              (lambda ()
                                                (if (##eq? _key171888171901_
                                                           'expr:)
                                                    (_K171895171910_)
                                                    (_E171894171905_))))
                                             (_try-match171892171921_
                                              (lambda ()
                                                (if (##eq? _key171888171901_
                                                           'special:)
                                                    (_K171896171918_)
                                                    (_try-match171893171913_))))
                                             (_try-match171891171929_
                                              (lambda ()
                                                (if (##eq? _key171888171901_
                                                           'define:)
                                                    (_K171897171926_)
                                                    (_try-match171892171921_))))
                                             (_try-match171890171937_
                                              (lambda ()
                                                (if (##eq? _key171888171901_
                                                           'module:)
                                                    (_K171898171934_)
                                                    (_try-match171891171929_)))))
                                        (if (##eq? _key171888171901_ 'top:)
                                            (_K171899171941_)
                                            (_try-match171890171937_)))))
                                  _expander171886_
                                  _id171866_
                                  (let ((_$e171944_ _compiler171885_))
                                    (if _$e171944_
                                        _$e171944_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest171867171878_)
                             (let ((_hd171871171950_
                                    (##car _rest171867171878_))
                                   (_tl171872171952_
                                    (##cdr _rest171867171878_)))
                               (let ((_key171955_ _hd171871171950_))
                                 (if (##pair? _tl171872171952_)
                                     (let ((_hd171873171957_
                                            (##car _tl171872171952_))
                                           (_tl171874171959_
                                            (##cdr _tl171872171952_)))
                                       (let ((_expander171962_
                                              _hd171873171957_))
                                         (if (##pair? _tl171874171959_)
                                             (let ((_hd171875171964_
                                                    (##car _tl171874171959_))
                                                   (_tl171876171966_
                                                    (##cdr _tl171874171959_)))
                                               (let ((_compiler171969_
                                                      _hd171875171964_))
                                                 (if (##null? _tl171876171966_)
                                                     (_K171870171947_
                                                      _compiler171969_
                                                      _expander171962_
                                                      _key171955_)
                                                     (_E171869171882_))))
                                             (_E171869171882_))))
                                     (_E171869171882_))))
                             (_E171869171882_))))))))
             (if (##pair? _bind171851171858_)
                 (let ((_hd171855171974_ (##car _bind171851171858_))
                       (_tl171856171976_ (##cdr _bind171851171858_)))
                   (let* ((_id171979_ _hd171855171974_)
                          (_rest171981_ _tl171856171976_))
                     (_K171854171971_ _rest171981_ _id171979_)))
                 (_E171853171862_))))
         _bindings171848_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self171986_)
        (let ((_bindings171988_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self171986_
           _bindings171988_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g176790_
        (let ((_g176789_ (##length _g176790_)))
          (cond ((##fx= _g176789_ 1)
                 (apply (lambda (_self171986_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self171986_))
                        _g176790_))
                ((##fx= _g176789_ 2)
                 (apply (lambda (_self171990_ _bindings171991_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self171990_
                           _bindings171991_))
                        _g176790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g176790_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self171619_ _bindings171620_)
        (for-each
         (lambda (_bind171622_)
           (let* ((_bind171623171630_ _bind171622_)
                  (_E171625171634_
                   (lambda ()
                     (error '"No clause matching" _bind171623171630_)))
                  (_K171626171702_
                   (lambda (_rest171637_ _id171638_)
                     (gx#core-context-put!
                      _self171619_
                      _id171638_
                      (##structure
                       gx#syntax-binding::t
                       _id171638_
                       _id171638_
                       '#f
                       (let* ((_rest171639171654_ _rest171637_)
                              (_E171643171658_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest171639171654_))))
                         (let ((_K171648171687_
                                (lambda (_core-id171685_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id171685_)))
                               (_K171645171672_
                                (lambda (_proc171670_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc171670_)))
                               (_K171644171663_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id171638_))))
                           (let ((_try-match171642171666_
                                  (lambda ()
                                    (if (##null? _rest171639171654_)
                                        (_K171644171663_)
                                        (_E171643171658_)))))
                             (if (##pair? _rest171639171654_)
                                 (let ((_tl171650171692_
                                        (##cdr _rest171639171654_))
                                       (_hd171649171690_
                                        (##car _rest171639171654_)))
                                   (if (##eq? _hd171649171690_ '=>)
                                       (if (##pair? _tl171650171692_)
                                           (let ((_tl171652171697_
                                                  (##cdr _tl171650171692_))
                                                 (_hd171651171695_
                                                  (##car _tl171650171692_)))
                                             (if (##null? _tl171652171697_)
                                                 (let ((_core-id171700_
                                                        _hd171651171695_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id171700_))
                                                 (_E171643171658_)))
                                           (if (##null? _tl171650171692_)
                                               (let ((_proc171680_
                                                      _hd171649171690_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc171680_))
                                               (_E171643171658_)))
                                       (if (##null? _tl171650171692_)
                                           (let ((_proc171680_
                                                  _hd171649171690_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc171680_))
                                           (_E171643171658_))))
                                 (_try-match171642171666_))))))))))
             (if (##pair? _bind171623171630_)
                 (let ((_hd171627171705_ (##car _bind171623171630_))
                       (_tl171628171707_ (##cdr _bind171623171630_)))
                   (let* ((_id171710_ _hd171627171705_)
                          (_rest171712_ _tl171628171707_))
                     (_K171626171702_ _rest171712_ _id171710_)))
                 (_E171625171634_))))
         _bindings171620_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self171717_)
        (let ((_bindings171719_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self171717_
           _bindings171719_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g176792_
        (let ((_g176791_ (##length _g176792_)))
          (cond ((##fx= _g176791_ 1)
                 (apply (lambda (_self171717_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self171717_))
                        _g176792_))
                ((##fx= _g176791_ 2)
                 (apply (lambda (_self171721_ _bindings171722_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self171721_
                           _bindings171722_))
                        _g176792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g176792_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self171363_)
        (letrec ((_linux-variant?171365_
                  (lambda (_sys-type171464_)
                    (let* ((_g171465171473_
                            (string-split
                             (symbol->string _sys-type171464_)
                             '#\-))
                           (_else171467171481_ (lambda () '#f))
                           (_K171469171486_
                            (lambda (_rest171484_)
                              (not (null? _rest171484_)))))
                      (if (##pair? _g171465171473_)
                          (let ((_hd171470171489_ (##car _g171465171473_))
                                (_tl171471171491_ (##cdr _g171465171473_)))
                            (if (equal? _hd171470171489_ '"linux")
                                (let ((_rest171494_ _tl171471171491_))
                                  (_K171469171486_ _rest171494_))
                                (_else171467171481_)))
                          (_else171467171481_)))))
                 (_bsd-variant171366_
                  (lambda (_sys-type171423_)
                    (let ((_sys-type-str171425_
                           (symbol->string _sys-type171423_)))
                      (let _lp171427_ ((_rest171429_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest171430171438_ _rest171429_)
                               (_else171432171446_ (lambda () '#f))
                               (_K171434171452_
                                (lambda (_rest171449_ _sys171450_)
                                  (if (string-prefix?
                                       _sys171450_
                                       _sys-type-str171425_)
                                      _sys171450_
                                      (_lp171427_ _rest171449_)))))
                          (if (##pair? _rest171430171438_)
                              (let ((_hd171435171455_
                                     (##car _rest171430171438_))
                                    (_tl171436171457_
                                     (##cdr _rest171430171438_)))
                                (let* ((_sys171460_ _hd171435171455_)
                                       (_rest171462_ _tl171436171457_))
                                  (_K171434171452_ _rest171462_ _sys171460_)))
                              (_else171432171446_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self171363_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self171363_)
          (let* ((_g171367171379_ (system-type))
                 (_else171369171387_ (lambda () '#!void))
                 (_K171371171399_
                  (lambda (_sys-type171390_ _sys-vendor171391_ _sys-cpu171392_)
                    (gx#core-bind-feature!__%
                     _sys-cpu171392_
                     '#f
                     '0
                     _self171363_)
                    (gx#core-bind-feature!__%
                     _sys-type171390_
                     '#f
                     '0
                     _self171363_)
                    (if (_linux-variant?171365_ _sys-type171390_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self171363_)
                        (let ((_$e171394_
                               (_bsd-variant171366_ _sys-type171390_)))
                          (if _$e171394_
                              ((lambda (_sys-prefix171397_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self171363_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix171397_)
                                  '#f
                                  '0
                                  _self171363_))
                               _$e171394_)
                              '#!void))))))
            (if (##pair? _g171367171379_)
                (let ((_hd171372171402_ (##car _g171367171379_))
                      (_tl171373171404_ (##cdr _g171367171379_)))
                  (let ((_sys-cpu171407_ _hd171372171402_))
                    (if (##pair? _tl171373171404_)
                        (let ((_hd171374171409_ (##car _tl171373171404_))
                              (_tl171375171411_ (##cdr _tl171373171404_)))
                          (let ((_sys-vendor171414_ _hd171374171409_))
                            (if (##pair? _tl171375171411_)
                                (let ((_hd171376171416_
                                       (##car _tl171375171411_))
                                      (_tl171377171418_
                                       (##cdr _tl171375171411_)))
                                  (let ((_sys-type171421_ _hd171376171416_))
                                    (if (##null? _tl171377171418_)
                                        (_K171371171399_
                                         _sys-type171421_
                                         _sys-vendor171414_
                                         _sys-cpu171407_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self171363_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
