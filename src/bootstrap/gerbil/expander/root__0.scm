(declare (block) (standard-bindings) (extended-bindings))
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
                                                                '()))))
                                        (cons (cons '%#module
                                                    (cons 'top:
                                                          (cons gx#core-expand-module%
                                                                (cons gx#core-compile-top-module%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons '%#export
                                                          (cons 'module:
                                                                (cons gx#core-expand-export%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-compile-top-export% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#provide
                                                                (cons 'module:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-expand-provide%
                                    (cons gx#core-compile-top-provide% '()))))
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
                                (cons gx#core-compile-top-define-alias% '()))))
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
                                                                '()))))
                                        (cons (cons '%#call
                                                    (cons 'expr:
                                                          (cons gx#core-expand-call%
                                                                (cons gx#core-compile-top-call%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons '%#if
                                                          (cons 'expr:
                                                                (cons gx#core-expand-if%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-compile-top-if% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#ref
                                                                (cons 'expr:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
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
                                              (cons '=> (cons '%#module '())))
                                        (cons (cons 'export
                                                    (cons '=>
                                                          (cons '%#export
                                                                '())))
                                              (cons (cons 'provide
                                                          (cons '=>
                                                                (cons '%#provide
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'declare
                                                                (cons '=>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '%#declare '())))
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
                                      (cons gx#macro-expand-define-syntax '()))
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
                                                                (cons '%#begin-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '_ '())
                                                          (cons (cons '... '())
                                                                (cons (cons 'else
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
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
    (lambda (_self18257_ _bind?18258_)
      (if (##fx< '2 (##vector-length _self18257_))
          (begin
            (##vector-set! _self18257_ '1 'root)
            (##vector-set! _self18257_ '2 (make-table 'test: eq?)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self18257_))
      (if _bind?18258_
          (begin
            (call-method _self18257_ 'bind-core-syntax-expanders!)
            (call-method _self18257_ 'bind-core-macro-expanders!)
            (call-method _self18257_ 'bind-core-features!))
          '#!void)))
  (define gx#root-context:::init!__0
    (lambda (_self18263_)
      (let ((_bind?18265_ '#t))
        (gx#root-context:::init!__% _self18263_ _bind?18265_))))
  (define gx#root-context:::init!
    (lambda _g18303_
      (let ((_g18302_ (length _g18303_)))
        (cond ((##fx= _g18302_ 1) (apply gx#root-context:::init!__0 _g18303_))
              ((##fx= _g18302_ 2) (apply gx#root-context:::init!__% _g18303_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#root-context:::init!
                _g18303_))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (define gx#top-context:::init!__%
    (lambda (_self18113_ _super18114_)
      (let ((_super18122_
             (let ((_$e18116_ _super18114_))
               (if _$e18116_
                   _$e18116_
                   (let ((_$e18119_ (gx#core-context-root__0)))
                     (if _$e18119_
                         _$e18119_
                         (let ((__obj18301
                                (make-object gx#root-context::t '2)))
                           (gx#root-context:::init!__0 __obj18301)
                           __obj18301)))))))
        (if (##fx< '5 (##vector-length _self18113_))
            (begin
              (##vector-set! _self18113_ '1 'top)
              (##vector-set! _self18113_ '2 (make-table 'test: eq?))
              (##vector-set! _self18113_ '3 _super18122_)
              (##vector-set! _self18113_ '4 '#f)
              (##vector-set! _self18113_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self18113_)))))
  (define gx#top-context:::init!__0
    (lambda (_self18127_)
      (let ((_super18129_ '#f))
        (gx#top-context:::init!__% _self18127_ _super18129_))))
  (define gx#top-context:::init!
    (lambda _g18305_
      (let ((_g18304_ (length _g18305_)))
        (cond ((##fx= _g18304_ 1) (apply gx#top-context:::init!__0 _g18305_))
              ((##fx= _g18304_ 2) (apply gx#top-context:::init!__% _g18305_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#top-context:::init!
                _g18305_))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (define gx#expander-context::bind-core-syntax-expanders!__%
    (lambda (_self17844_ _bindings17845_)
      (for-each
       (lambda (_bind17847_)
         (let* ((_bind1784817855_ _bind17847_)
                (_E1785017859_
                 (lambda () (error '"No clause matching" _bind1784817855_)))
                (_K1785117968_
                 (lambda (_rest17862_ _id17863_)
                   (gx#core-context-put!
                    _self17844_
                    _id17863_
                    (##structure
                     gx#syntax-binding::t
                     _id17863_
                     _id17863_
                     '#f
                     (let* ((_rest1786417875_ _rest17862_)
                            (_E1786617879_
                             (lambda ()
                               (error '"No clause matching" _rest1786417875_)))
                            (_K1786717944_
                             (lambda (_compiler17882_
                                      _expander17883_
                                      _key17884_)
                               ((let* ((_key1788517898_ _key17884_)
                                       (_E1789117902_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _key1788517898_))))
                                  (let ((_K1789617938_
                                         (lambda () gx#make-top-special-form))
                                        (_K1789517931_
                                         (lambda ()
                                           gx#make-module-special-form))
                                        (_K1789417923_
                                         (lambda () gx#make-definition-form))
                                        (_K1789317915_
                                         (lambda () gx#make-special-form))
                                        (_K1789217907_
                                         (lambda () gx#make-expression-form)))
                                    (let* ((_try-match1789017910_
                                            (lambda ()
                                              (if (##eq? _key1788517898_
                                                         'expr:)
                                                  (_K1789217907_)
                                                  (_E1789117902_))))
                                           (_try-match1788917918_
                                            (lambda ()
                                              (if (##eq? _key1788517898_
                                                         'special:)
                                                  (_K1789317915_)
                                                  (_try-match1789017910_))))
                                           (_try-match1788817926_
                                            (lambda ()
                                              (if (##eq? _key1788517898_
                                                         'define:)
                                                  (_K1789417923_)
                                                  (_try-match1788917918_))))
                                           (_try-match1788717934_
                                            (lambda ()
                                              (if (##eq? _key1788517898_
                                                         'module:)
                                                  (_K1789517931_)
                                                  (_try-match1788817926_)))))
                                      (if (##eq? _key1788517898_ 'top:)
                                          (_K1789617938_)
                                          (_try-match1788717934_)))))
                                _expander17883_
                                _id17863_
                                (let ((_$e17941_ _compiler17882_))
                                  (if _$e17941_
                                      _$e17941_
                                      gx#core-compile-top-error))))))
                       (if (##pair? _rest1786417875_)
                           (let ((_hd1786817947_ (##car _rest1786417875_))
                                 (_tl1786917949_ (##cdr _rest1786417875_)))
                             (let ((_key17952_ _hd1786817947_))
                               (if (##pair? _tl1786917949_)
                                   (let ((_hd1787017954_
                                          (##car _tl1786917949_))
                                         (_tl1787117956_
                                          (##cdr _tl1786917949_)))
                                     (let ((_expander17959_ _hd1787017954_))
                                       (if (##pair? _tl1787117956_)
                                           (let ((_hd1787217961_
                                                  (##car _tl1787117956_))
                                                 (_tl1787317963_
                                                  (##cdr _tl1787117956_)))
                                             (let ((_compiler17966_
                                                    _hd1787217961_))
                                               (if (##null? _tl1787317963_)
                                                   (_K1786717944_
                                                    _compiler17966_
                                                    _expander17959_
                                                    _key17952_)
                                                   (_E1786617879_))))
                                           (_E1786617879_))))
                                   (_E1786617879_))))
                           (_E1786617879_))))))))
           (if (##pair? _bind1784817855_)
               (let ((_hd1785217971_ (##car _bind1784817855_))
                     (_tl1785317973_ (##cdr _bind1784817855_)))
                 (let* ((_id17976_ _hd1785217971_)
                        (_rest17978_ _tl1785317973_))
                   (_K1785117968_ _rest17978_ _id17976_)))
               (_E1785017859_))))
       _bindings17845_)))
  (define gx#expander-context::bind-core-syntax-expanders!__0
    (lambda (_self17983_)
      (let ((_bindings17985_ gx#*core-syntax-expanders*))
        (gx#expander-context::bind-core-syntax-expanders!__%
         _self17983_
         _bindings17985_))))
  (define gx#expander-context::bind-core-syntax-expanders!
    (lambda _g18307_
      (let ((_g18306_ (length _g18307_)))
        (cond ((##fx= _g18306_ 1)
               (apply gx#expander-context::bind-core-syntax-expanders!__0
                      _g18307_))
              ((##fx= _g18306_ 2)
               (apply gx#expander-context::bind-core-syntax-expanders!__%
                      _g18307_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#expander-context::bind-core-syntax-expanders!
                _g18307_))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (define gx#expander-context::bind-core-macro-expanders!__%
    (lambda (_self17616_ _bindings17617_)
      (for-each
       (lambda (_bind17619_)
         (let* ((_bind1762017627_ _bind17619_)
                (_E1762217631_
                 (lambda () (error '"No clause matching" _bind1762017627_)))
                (_K1762317699_
                 (lambda (_rest17634_ _id17635_)
                   (gx#core-context-put!
                    _self17616_
                    _id17635_
                    (##structure
                     gx#syntax-binding::t
                     _id17635_
                     _id17635_
                     '#f
                     (let* ((_rest1763617651_ _rest17634_)
                            (_E1764017655_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest1763617651_))))
                       (let ((_K1764517684_
                              (lambda (_core-id17682_)
                                (##structure
                                 gx#rename-macro-expander::t
                                 _core-id17682_)))
                             (_K1764217669_
                              (lambda (_proc17667_)
                                (##structure
                                 gx#macro-expander::t
                                 _proc17667_)))
                             (_K1764117660_
                              (lambda ()
                                (##structure
                                 gx#reserved-expander::t
                                 _id17635_))))
                         (let ((_try-match1763917663_
                                (lambda ()
                                  (if (##null? _rest1763617651_)
                                      (_K1764117660_)
                                      (_E1764017655_)))))
                           (if (##pair? _rest1763617651_)
                               (let ((_tl1764717689_ (##cdr _rest1763617651_))
                                     (_hd1764617687_ (##car _rest1763617651_)))
                                 (if (##eq? _hd1764617687_ '=>)
                                     (if (##pair? _tl1764717689_)
                                         (let ((_tl1764917694_
                                                (##cdr _tl1764717689_))
                                               (_hd1764817692_
                                                (##car _tl1764717689_)))
                                           (if (##null? _tl1764917694_)
                                               (let ((_core-id17697_
                                                      _hd1764817692_))
                                                 (##structure
                                                  gx#rename-macro-expander::t
                                                  _core-id17697_))
                                               (_E1764017655_)))
                                         (if (##null? _tl1764717689_)
                                             (let ((_proc17677_
                                                    _hd1764617687_))
                                               (##structure
                                                gx#macro-expander::t
                                                _proc17677_))
                                             (_E1764017655_)))
                                     (if (##null? _tl1764717689_)
                                         (let ((_proc17677_ _hd1764617687_))
                                           (##structure
                                            gx#macro-expander::t
                                            _proc17677_))
                                         (_E1764017655_))))
                               (_try-match1763917663_))))))))))
           (if (##pair? _bind1762017627_)
               (let ((_hd1762417702_ (##car _bind1762017627_))
                     (_tl1762517704_ (##cdr _bind1762017627_)))
                 (let* ((_id17707_ _hd1762417702_)
                        (_rest17709_ _tl1762517704_))
                   (_K1762317699_ _rest17709_ _id17707_)))
               (_E1762217631_))))
       _bindings17617_)))
  (define gx#expander-context::bind-core-macro-expanders!__0
    (lambda (_self17714_)
      (let ((_bindings17716_ gx#*core-macro-expanders*))
        (gx#expander-context::bind-core-macro-expanders!__%
         _self17714_
         _bindings17716_))))
  (define gx#expander-context::bind-core-macro-expanders!
    (lambda _g18309_
      (let ((_g18308_ (length _g18309_)))
        (cond ((##fx= _g18308_ 1)
               (apply gx#expander-context::bind-core-macro-expanders!__0
                      _g18309_))
              ((##fx= _g18308_ 2)
               (apply gx#expander-context::bind-core-macro-expanders!__%
                      _g18309_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#expander-context::bind-core-macro-expanders!
                _g18309_))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self17397_)
      (letrec ((_linux-variant?17399_
                (lambda (_sys-type17461_)
                  (let* ((_g1746217470_
                          (string-split (symbol->string _sys-type17461_) '#\-))
                         (_else1746417478_ (lambda () '#f))
                         (_K1746617483_
                          (lambda (_rest17481_) (not (null? _rest17481_)))))
                    (if (##pair? _g1746217470_)
                        (let ((_hd1746717486_ (##car _g1746217470_))
                              (_tl1746817488_ (##cdr _g1746217470_)))
                          (if (equal? _hd1746717486_ '"linux")
                              (let ((_rest17491_ _tl1746817488_))
                                (_K1746617483_ _rest17491_))
                              (_else1746417478_)))
                        (_else1746417478_)))))
               (_bsd-variant17400_
                (lambda (_sys-type17457_)
                  (let ((_sys-prefix17459_
                         (list->string
                          (filter char-alphabetic?
                                  (string->list
                                   (symbol->string _sys-type17457_))))))
                    (if (member _sys-prefix17459_
                                (cons '"openbsd"
                                      (cons '"netbsd"
                                            (cons '"freebsd"
                                                  (cons '"darwin" '())))))
                        _sys-prefix17459_
                        '#f)))))
        (gx#core-bind-feature!__% 'gerbil '#f '0 _self17397_)
        (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self17397_)
        (let* ((_g1740117413_ (system-type))
               (_else1740317421_ (lambda () '#!void))
               (_K1740517433_
                (lambda (_sys-type17424_ _sys-vendor17425_ _sys-cpu17426_)
                  (gx#core-bind-feature!__% _sys-cpu17426_ '#f '0 _self17397_)
                  (gx#core-bind-feature!__% _sys-type17424_ '#f '0 _self17397_)
                  (if (_linux-variant?17399_ _sys-type17424_)
                      (gx#core-bind-feature!__%
                       (string->symbol '"linux")
                       '#f
                       '0
                       _self17397_)
                      (let ((_$e17428_ (_bsd-variant17400_ _sys-type17424_)))
                        (if _$e17428_
                            ((lambda (_sys-prefix17431_)
                               (gx#core-bind-feature!__%
                                (string->symbol '"bsd")
                                '#f
                                '0
                                _self17397_)
                               (gx#core-bind-feature!__%
                                (string->symbol _sys-prefix17431_)
                                '#f
                                '0
                                _self17397_))
                             _$e17428_)
                            '#!void))))))
          (if (##pair? _g1740117413_)
              (let ((_hd1740617436_ (##car _g1740117413_))
                    (_tl1740717438_ (##cdr _g1740117413_)))
                (let ((_sys-cpu17441_ _hd1740617436_))
                  (if (##pair? _tl1740717438_)
                      (let ((_hd1740817443_ (##car _tl1740717438_))
                            (_tl1740917445_ (##cdr _tl1740717438_)))
                        (let ((_sys-vendor17448_ _hd1740817443_))
                          (if (##pair? _tl1740917445_)
                              (let ((_hd1741017450_ (##car _tl1740917445_))
                                    (_tl1741117452_ (##cdr _tl1740917445_)))
                                (let ((_sys-type17455_ _hd1741017450_))
                                  (if (##null? _tl1741117452_)
                                      (_K1740517433_
                                       _sys-type17455_
                                       _sys-vendor17448_
                                       _sys-cpu17441_)
                                      '#!void)))
                              '#!void)))
                      '#!void)))
              '#!void))
        (if (gerbil-runtime-smp?)
            (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self17397_)
            '#!void))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
