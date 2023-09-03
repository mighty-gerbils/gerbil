(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1693679894)
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
      (lambda (_self18355_ _bind?18356_)
        (if (##fx< '2 (##vector-length _self18355_))
            (begin
              (##vector-set! _self18355_ '1 'root)
              (##vector-set! _self18355_ '2 (make-table 'test: eq?)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self18355_))
        (if _bind?18356_
            (begin
              (let ((__method18406
                     (method-ref _self18355_ 'bind-core-syntax-expanders!)))
                (if __method18406
                    (__method18406 _self18355_)
                    (error '"Missing method"
                           _self18355_
                           'bind-core-syntax-expanders!)))
              (let ((__method18407
                     (method-ref _self18355_ 'bind-core-macro-expanders!)))
                (if __method18407
                    (__method18407 _self18355_)
                    (error '"Missing method"
                           _self18355_
                           'bind-core-macro-expanders!)))
              (let ((__method18408
                     (method-ref _self18355_ 'bind-core-features!)))
                (if __method18408
                    (__method18408 _self18355_)
                    (error '"Missing method"
                           _self18355_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self18361_)
        (let ((_bind?18363_ '#t))
          (gx#root-context:::init!__% _self18361_ _bind?18363_))))
    (define gx#root-context:::init!
      (lambda _g18411_
        (let ((_g18410_ (##length _g18411_)))
          (cond ((##fx= _g18410_ 1)
                 (apply gx#root-context:::init!__0 _g18411_))
                ((##fx= _g18410_ 2)
                 (apply gx#root-context:::init!__% _g18411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g18411_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t18367)
        (let ((__bind-core-syntax-expanders!18368
               (make-promise
                (lambda ()
                  (let ((__tmp18371
                         (direct-method-ref
                          __t18367
                          'bind-core-syntax-expanders!)))
                    (if __tmp18371
                        __tmp18371
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!18369
               (make-promise
                (lambda ()
                  (let ((__tmp18372
                         (direct-method-ref
                          __t18367
                          'bind-core-macro-expanders!)))
                    (if __tmp18372
                        __tmp18372
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!18370
               (make-promise
                (lambda ()
                  (let ((__tmp18373
                         (direct-method-ref __t18367 'bind-core-features!)))
                    (if __tmp18373
                        __tmp18373
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda1835318358_
                 (lambda (_self18355_ _bind?18356_)
                   (if (##fx< '2 (##vector-length _self18355_))
                       (begin
                         (##vector-set! _self18355_ '1 'root)
                         (##vector-set!
                          _self18355_
                          '2
                          (make-table 'test: eq?)))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self18355_))
                   (if _bind?18356_
                       (begin
                         ((force __bind-core-syntax-expanders!18368)
                          _self18355_)
                         ((force __bind-core-macro-expanders!18369)
                          _self18355_)
                         ((force __bind-core-features!18370) _self18355_))
                       '#!void))))
            (lambda _g18413_
              (let ((_g18412_ (##length _g18413_)))
                (cond ((##fx= _g18412_ 1)
                       (apply (lambda (_self18361_)
                                (let ((_bind?18363_ '#t))
                                  (_opt-lambda1835318358_
                                   _self18361_
                                   _bind?18363_)))
                              _g18413_))
                      ((##fx= _g18412_ 2)
                       (apply _opt-lambda1835318358_ _g18413_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g18413_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self18211_ _super18212_)
        (let ((_super18220_
               (let ((_$e18214_ _super18212_))
                 (if _$e18214_
                     _$e18214_
                     (let ((_$e18217_ (gx#core-context-root__0)))
                       (if _$e18217_
                           _$e18217_
                           (let ((__obj18409
                                  (make-object gx#root-context::t '2)))
                             (gx#root-context:::init!__0 __obj18409)
                             __obj18409)))))))
          (if (##fx< '5 (##vector-length _self18211_))
              (begin
                (##vector-set! _self18211_ '1 'top)
                (##vector-set! _self18211_ '2 (make-table 'test: eq?))
                (##vector-set! _self18211_ '3 _super18220_)
                (##vector-set! _self18211_ '4 '#f)
                (##vector-set! _self18211_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self18211_)))))
    (define gx#top-context:::init!__0
      (lambda (_self18225_)
        (let ((_super18227_ '#f))
          (gx#top-context:::init!__% _self18225_ _super18227_))))
    (define gx#top-context:::init!
      (lambda _g18415_
        (let ((_g18414_ (##length _g18415_)))
          (cond ((##fx= _g18414_ 1) (apply gx#top-context:::init!__0 _g18415_))
                ((##fx= _g18414_ 2) (apply gx#top-context:::init!__% _g18415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g18415_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self17942_ _bindings17943_)
        (for-each
         (lambda (_bind17945_)
           (let* ((_bind1794617953_ _bind17945_)
                  (_E1794817957_
                   (lambda () (error '"No clause matching" _bind1794617953_)))
                  (_K1794918066_
                   (lambda (_rest17960_ _id17961_)
                     (gx#core-context-put!
                      _self17942_
                      _id17961_
                      (##structure
                       gx#syntax-binding::t
                       _id17961_
                       _id17961_
                       '#f
                       (let* ((_rest1796217973_ _rest17960_)
                              (_E1796417977_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1796217973_)))
                              (_K1796518042_
                               (lambda (_compiler17980_
                                        _expander17981_
                                        _key17982_)
                                 ((let* ((_key1798317996_ _key17982_)
                                         (_E1798918000_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1798317996_))))
                                    (let ((_K1799418036_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K1799318029_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K1799218021_
                                           (lambda () gx#make-definition-form))
                                          (_K1799118013_
                                           (lambda () gx#make-special-form))
                                          (_K1799018005_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match1798818008_
                                              (lambda ()
                                                (if (##eq? _key1798317996_
                                                           'expr:)
                                                    (_K1799018005_)
                                                    (_E1798918000_))))
                                             (_try-match1798718016_
                                              (lambda ()
                                                (if (##eq? _key1798317996_
                                                           'special:)
                                                    (_K1799118013_)
                                                    (_try-match1798818008_))))
                                             (_try-match1798618024_
                                              (lambda ()
                                                (if (##eq? _key1798317996_
                                                           'define:)
                                                    (_K1799218021_)
                                                    (_try-match1798718016_))))
                                             (_try-match1798518032_
                                              (lambda ()
                                                (if (##eq? _key1798317996_
                                                           'module:)
                                                    (_K1799318029_)
                                                    (_try-match1798618024_)))))
                                        (if (##eq? _key1798317996_ 'top:)
                                            (_K1799418036_)
                                            (_try-match1798518032_)))))
                                  _expander17981_
                                  _id17961_
                                  (let ((_$e18039_ _compiler17980_))
                                    (if _$e18039_
                                        _$e18039_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1796217973_)
                             (let ((_hd1796618045_ (##car _rest1796217973_))
                                   (_tl1796718047_ (##cdr _rest1796217973_)))
                               (let ((_key18050_ _hd1796618045_))
                                 (if (##pair? _tl1796718047_)
                                     (let ((_hd1796818052_
                                            (##car _tl1796718047_))
                                           (_tl1796918054_
                                            (##cdr _tl1796718047_)))
                                       (let ((_expander18057_ _hd1796818052_))
                                         (if (##pair? _tl1796918054_)
                                             (let ((_hd1797018059_
                                                    (##car _tl1796918054_))
                                                   (_tl1797118061_
                                                    (##cdr _tl1796918054_)))
                                               (let ((_compiler18064_
                                                      _hd1797018059_))
                                                 (if (##null? _tl1797118061_)
                                                     (_K1796518042_
                                                      _compiler18064_
                                                      _expander18057_
                                                      _key18050_)
                                                     (_E1796417977_))))
                                             (_E1796417977_))))
                                     (_E1796417977_))))
                             (_E1796417977_))))))))
             (if (##pair? _bind1794617953_)
                 (let ((_hd1795018069_ (##car _bind1794617953_))
                       (_tl1795118071_ (##cdr _bind1794617953_)))
                   (let* ((_id18074_ _hd1795018069_)
                          (_rest18076_ _tl1795118071_))
                     (_K1794918066_ _rest18076_ _id18074_)))
                 (_E1794817957_))))
         _bindings17943_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self18081_)
        (let ((_bindings18083_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self18081_
           _bindings18083_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g18417_
        (let ((_g18416_ (##length _g18417_)))
          (cond ((##fx= _g18416_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g18417_))
                ((##fx= _g18416_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g18417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g18417_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self17714_ _bindings17715_)
        (for-each
         (lambda (_bind17717_)
           (let* ((_bind1771817725_ _bind17717_)
                  (_E1772017729_
                   (lambda () (error '"No clause matching" _bind1771817725_)))
                  (_K1772117797_
                   (lambda (_rest17732_ _id17733_)
                     (gx#core-context-put!
                      _self17714_
                      _id17733_
                      (##structure
                       gx#syntax-binding::t
                       _id17733_
                       _id17733_
                       '#f
                       (let* ((_rest1773417749_ _rest17732_)
                              (_E1773817753_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1773417749_))))
                         (let ((_K1774317782_
                                (lambda (_core-id17780_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id17780_)))
                               (_K1774017767_
                                (lambda (_proc17765_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc17765_)))
                               (_K1773917758_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id17733_))))
                           (let ((_try-match1773717761_
                                  (lambda ()
                                    (if (##null? _rest1773417749_)
                                        (_K1773917758_)
                                        (_E1773817753_)))))
                             (if (##pair? _rest1773417749_)
                                 (let ((_tl1774517787_
                                        (##cdr _rest1773417749_))
                                       (_hd1774417785_
                                        (##car _rest1773417749_)))
                                   (if (##eq? _hd1774417785_ '=>)
                                       (if (##pair? _tl1774517787_)
                                           (let ((_tl1774717792_
                                                  (##cdr _tl1774517787_))
                                                 (_hd1774617790_
                                                  (##car _tl1774517787_)))
                                             (if (##null? _tl1774717792_)
                                                 (let ((_core-id17795_
                                                        _hd1774617790_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id17795_))
                                                 (_E1773817753_)))
                                           (if (##null? _tl1774517787_)
                                               (let ((_proc17775_
                                                      _hd1774417785_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc17775_))
                                               (_E1773817753_)))
                                       (if (##null? _tl1774517787_)
                                           (let ((_proc17775_ _hd1774417785_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc17775_))
                                           (_E1773817753_))))
                                 (_try-match1773717761_))))))))))
             (if (##pair? _bind1771817725_)
                 (let ((_hd1772217800_ (##car _bind1771817725_))
                       (_tl1772317802_ (##cdr _bind1771817725_)))
                   (let* ((_id17805_ _hd1772217800_)
                          (_rest17807_ _tl1772317802_))
                     (_K1772117797_ _rest17807_ _id17805_)))
                 (_E1772017729_))))
         _bindings17715_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self17812_)
        (let ((_bindings17814_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self17812_
           _bindings17814_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g18419_
        (let ((_g18418_ (##length _g18419_)))
          (cond ((##fx= _g18418_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g18419_))
                ((##fx= _g18418_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g18419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g18419_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self17458_)
        (letrec ((_linux-variant?17460_
                  (lambda (_sys-type17559_)
                    (let* ((_g1756017568_
                            (string-split
                             (symbol->string _sys-type17559_)
                             '#\-))
                           (_else1756217576_ (lambda () '#f))
                           (_K1756417581_
                            (lambda (_rest17579_) (not (null? _rest17579_)))))
                      (if (##pair? _g1756017568_)
                          (let ((_hd1756517584_ (##car _g1756017568_))
                                (_tl1756617586_ (##cdr _g1756017568_)))
                            (if (equal? _hd1756517584_ '"linux")
                                (let ((_rest17589_ _tl1756617586_))
                                  (_K1756417581_ _rest17589_))
                                (_else1756217576_)))
                          (_else1756217576_)))))
                 (_bsd-variant17461_
                  (lambda (_sys-type17518_)
                    (let ((_sys-type-str17520_
                           (symbol->string _sys-type17518_)))
                      (let _lp17522_ ((_rest17524_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest1752517533_ _rest17524_)
                               (_else1752717541_ (lambda () '#f))
                               (_K1752917547_
                                (lambda (_rest17544_ _sys17545_)
                                  (if (string-prefix?
                                       _sys17545_
                                       _sys-type-str17520_)
                                      _sys17545_
                                      (_lp17522_ _rest17544_)))))
                          (if (##pair? _rest1752517533_)
                              (let ((_hd1753017550_ (##car _rest1752517533_))
                                    (_tl1753117552_ (##cdr _rest1752517533_)))
                                (let* ((_sys17555_ _hd1753017550_)
                                       (_rest17557_ _tl1753117552_))
                                  (_K1752917547_ _rest17557_ _sys17555_)))
                              (_else1752717541_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self17458_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self17458_)
          (let* ((_g1746217474_ (system-type))
                 (_else1746417482_ (lambda () '#!void))
                 (_K1746617494_
                  (lambda (_sys-type17485_ _sys-vendor17486_ _sys-cpu17487_)
                    (gx#core-bind-feature!__%
                     _sys-cpu17487_
                     '#f
                     '0
                     _self17458_)
                    (gx#core-bind-feature!__%
                     _sys-type17485_
                     '#f
                     '0
                     _self17458_)
                    (if (_linux-variant?17460_ _sys-type17485_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self17458_)
                        (let ((_$e17489_ (_bsd-variant17461_ _sys-type17485_)))
                          (if _$e17489_
                              ((lambda (_sys-prefix17492_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self17458_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix17492_)
                                  '#f
                                  '0
                                  _self17458_))
                               _$e17489_)
                              '#!void))))))
            (if (##pair? _g1746217474_)
                (let ((_hd1746717497_ (##car _g1746217474_))
                      (_tl1746817499_ (##cdr _g1746217474_)))
                  (let ((_sys-cpu17502_ _hd1746717497_))
                    (if (##pair? _tl1746817499_)
                        (let ((_hd1746917504_ (##car _tl1746817499_))
                              (_tl1747017506_ (##cdr _tl1746817499_)))
                          (let ((_sys-vendor17509_ _hd1746917504_))
                            (if (##pair? _tl1747017506_)
                                (let ((_hd1747117511_ (##car _tl1747017506_))
                                      (_tl1747217513_ (##cdr _tl1747017506_)))
                                  (let ((_sys-type17516_ _hd1747117511_))
                                    (if (##null? _tl1747217513_)
                                        (_K1746617494_
                                         _sys-type17516_
                                         _sys-vendor17509_
                                         _sys-cpu17502_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self17458_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
