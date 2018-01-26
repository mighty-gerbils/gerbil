(declare (block) (standard-bindings) (extended-bindings))
(begin
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
  (begin
    (define gx#root-context:::init!__opt-lambda16426
      (lambda (_self16428_ _bind?16429_)
        (begin
          (if (##fx< '2 (##vector-length _self16428_))
              (begin
                (##vector-set! _self16428_ '1 'root)
                (##vector-set! _self16428_ '2 (make-hash-table-eq)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16428_))
          (if _bind?16429_
              (begin
                (call-method _self16428_ 'bind-core-syntax-expanders!)
                (call-method _self16428_ 'bind-core-macro-expanders!)
                (call-method _self16428_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self16434_)
          (let ((_bind?16436_ '#t))
            (gx#root-context:::init!__opt-lambda16426
             _self16434_
             _bind?16436_))))
      (define gx#root-context:::init!
        (lambda _g16442_
          (let ((_g16441_ (length _g16442_)))
            (cond ((fx= _g16441_ 1)
                   (apply gx#root-context:::init!__0 _g16442_))
                  ((fx= _g16441_ 2)
                   (apply gx#root-context:::init!__opt-lambda16426 _g16442_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g16442_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda16282
      (lambda (_self16284_ _super16285_)
        (let ((_super16293_
               (let ((_$e16287_ _super16285_))
                 (if _$e16287_
                     _$e16287_
                     (let ((_$e16290_ (gx#core-context-root__0)))
                       (if _$e16290_
                           _$e16290_
                           (let ((__obj16440
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj16440)
                               __obj16440))))))))
          (if (##fx< '5 (##vector-length _self16284_))
              (begin
                (##vector-set! _self16284_ '1 'top)
                (##vector-set! _self16284_ '2 (make-hash-table-eq))
                (##vector-set! _self16284_ '3 _super16293_)
                (##vector-set! _self16284_ '4 '#f)
                (##vector-set! _self16284_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16284_)))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self16298_)
          (let ((_super16300_ '#f))
            (gx#top-context:::init!__opt-lambda16282
             _self16298_
             _super16300_))))
      (define gx#top-context:::init!
        (lambda _g16444_
          (let ((_g16443_ (length _g16444_)))
            (cond ((fx= _g16443_ 1) (apply gx#top-context:::init!__0 _g16444_))
                  ((fx= _g16443_ 2)
                   (apply gx#top-context:::init!__opt-lambda16282 _g16444_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g16444_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda16013
      (lambda (_self16015_ _bindings16016_)
        (for-each
         (lambda (_bind16018_)
           (let* ((_bind1601916026_ _bind16018_)
                  (_E1602116030_
                   (lambda () (error '"No clause matching" _bind1601916026_)))
                  (_K1602216139_
                   (lambda (_rest16033_ _id16034_)
                     (gx#core-context-put!
                      _self16015_
                      _id16034_
                      (##structure
                       gx#syntax-binding::t
                       _id16034_
                       _id16034_
                       '#f
                       (let* ((_rest1603516046_ _rest16033_)
                              (_E1603716050_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1603516046_)))
                              (_K1603816115_
                               (lambda (_compiler16053_
                                        _expander16054_
                                        _key16055_)
                                 ((let* ((_key1605616069_ _key16055_)
                                         (_E1606216073_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1605616069_)))
                                         (_try-match1606116081_
                                          (lambda ()
                                            (let ((_K1606316078_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1605616069_
                                                         'expr:)
                                                  (_K1606316078_)
                                                  (_E1606216073_)))))
                                         (_try-match1606016089_
                                          (lambda ()
                                            (let ((_K1606416086_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1605616069_
                                                         'special:)
                                                  (_K1606416086_)
                                                  (_try-match1606116081_)))))
                                         (_try-match1605916097_
                                          (lambda ()
                                            (let ((_K1606516094_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1605616069_
                                                         'define:)
                                                  (_K1606516094_)
                                                  (_try-match1606016089_)))))
                                         (_try-match1605816105_
                                          (lambda ()
                                            (let ((_K1606616102_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1605616069_
                                                         'module:)
                                                  (_K1606616102_)
                                                  (_try-match1605916097_)))))
                                         (_K1606716109_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1605616069_ 'top:)
                                        (_K1606716109_)
                                        (_try-match1605816105_)))
                                  _expander16054_
                                  _id16034_
                                  (let ((_$e16112_ _compiler16053_))
                                    (if _$e16112_
                                        _$e16112_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1603516046_)
                             (let ((_hd1603916118_ (##car _rest1603516046_))
                                   (_tl1604016120_ (##cdr _rest1603516046_)))
                               (let ((_key16123_ _hd1603916118_))
                                 (if (##pair? _tl1604016120_)
                                     (let ((_hd1604116125_
                                            (##car _tl1604016120_))
                                           (_tl1604216127_
                                            (##cdr _tl1604016120_)))
                                       (let ((_expander16130_ _hd1604116125_))
                                         (if (##pair? _tl1604216127_)
                                             (let ((_hd1604316132_
                                                    (##car _tl1604216127_))
                                                   (_tl1604416134_
                                                    (##cdr _tl1604216127_)))
                                               (let ((_compiler16137_
                                                      _hd1604316132_))
                                                 (if (##null? _tl1604416134_)
                                                     (_K1603816115_
                                                      _compiler16137_
                                                      _expander16130_
                                                      _key16123_)
                                                     (_E1603716050_))))
                                             (_E1603716050_))))
                                     (_E1603716050_))))
                             (_E1603716050_))))))))
             (if (##pair? _bind1601916026_)
                 (let ((_hd1602316142_ (##car _bind1601916026_))
                       (_tl1602416144_ (##cdr _bind1601916026_)))
                   (let* ((_id16147_ _hd1602316142_)
                          (_rest16149_ _tl1602416144_))
                     (_K1602216139_ _rest16149_ _id16147_)))
                 (_E1602116030_))))
         _bindings16016_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self16154_)
          (let ((_bindings16156_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda16013
             _self16154_
             _bindings16156_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g16446_
          (let ((_g16445_ (length _g16446_)))
            (cond ((fx= _g16445_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g16446_))
                  ((fx= _g16445_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda16013
                          _g16446_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g16446_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda15785
      (lambda (_self15787_ _bindings15788_)
        (for-each
         (lambda (_bind15790_)
           (let* ((_bind1579115798_ _bind15790_)
                  (_E1579315802_
                   (lambda () (error '"No clause matching" _bind1579115798_)))
                  (_K1579415870_
                   (lambda (_rest15805_ _id15806_)
                     (gx#core-context-put!
                      _self15787_
                      _id15806_
                      (##structure
                       gx#syntax-binding::t
                       _id15806_
                       _id15806_
                       '#f
                       (let* ((_rest1580715822_ _rest15805_)
                              (_E1581115826_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1580715822_)))
                              (_try-match1581015834_
                               (lambda ()
                                 (let ((_K1581215831_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id15806_))))
                                   (if (##null? _rest1580715822_)
                                       (_K1581215831_)
                                       (_E1581115826_)))))
                              (_try-match1580915850_
                               (lambda ()
                                 (let ((_K1581315840_
                                        (lambda (_proc15838_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc15838_))))
                                   (if (##pair? _rest1580715822_)
                                       (let ((_hd1581415843_
                                              (##car _rest1580715822_))
                                             (_tl1581515845_
                                              (##cdr _rest1580715822_)))
                                         (let ((_proc15848_ _hd1581415843_))
                                           (if (##null? _tl1581515845_)
                                               (_K1581315840_ _proc15848_)
                                               (_try-match1581015834_))))
                                       (_try-match1581015834_)))))
                              (_K1581615855_
                               (lambda (_core-id15853_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id15853_))))
                         (if (##pair? _rest1580715822_)
                             (let ((_hd1581715858_ (##car _rest1580715822_))
                                   (_tl1581815860_ (##cdr _rest1580715822_)))
                               (if (##eq? _hd1581715858_ '=>)
                                   (if (##pair? _tl1581815860_)
                                       (let ((_hd1581915863_
                                              (##car _tl1581815860_))
                                             (_tl1582015865_
                                              (##cdr _tl1581815860_)))
                                         (let ((_core-id15868_ _hd1581915863_))
                                           (if (##null? _tl1582015865_)
                                               (_K1581615855_ _core-id15868_)
                                               (_try-match1580915850_))))
                                       (_try-match1580915850_))
                                   (_try-match1580915850_)))
                             (_try-match1580915850_))))))))
             (if (##pair? _bind1579115798_)
                 (let ((_hd1579515873_ (##car _bind1579115798_))
                       (_tl1579615875_ (##cdr _bind1579115798_)))
                   (let* ((_id15878_ _hd1579515873_)
                          (_rest15880_ _tl1579615875_))
                     (_K1579415870_ _rest15880_ _id15878_)))
                 (_E1579315802_))))
         _bindings15788_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self15885_)
          (let ((_bindings15887_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda15785
             _self15885_
             _bindings15887_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g16448_
          (let ((_g16447_ (length _g16448_)))
            (cond ((fx= _g16447_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g16448_))
                  ((fx= _g16447_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda15785
                          _g16448_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g16448_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self15578_)
      (letrec ((_linux-variant?15580_
                (lambda (_sys-type15632_)
                  (let* ((_g1563315641_
                          (string-split (symbol->string _sys-type15632_) '#\-))
                         (_E1563615645_
                          (lambda ()
                            (error '"No clause matching" _g1563315641_)))
                         (_else1563515649_ (lambda () '#f))
                         (_K1563715654_
                          (lambda (_rest15652_) (not (null? _rest15652_)))))
                    (if (##pair? _g1563315641_)
                        (let ((_hd1563815657_ (##car _g1563315641_))
                              (_tl1563915659_ (##cdr _g1563315641_)))
                          (if (equal? _hd1563815657_ '"linux")
                              (let ((_rest15662_ _tl1563915659_))
                                (_K1563715654_ _rest15662_))
                              (_else1563515649_)))
                        (_else1563515649_))))))
        (begin
          (gx#core-bind-feature!__opt-lambda10722 'gerbil '#f '0 _self15578_)
          (gx#core-bind-feature!__opt-lambda10722
           (gerbil-system)
           '#f
           '0
           _self15578_)
          (let* ((_g1558115593_ (system-type))
                 (_E1558415597_
                  (lambda () (error '"No clause matching" _g1558115593_)))
                 (_else1558315601_ (lambda () '#!void))
                 (_K1558515608_
                  (lambda (_sys-type15604_ _sys-vendor15605_ _sys-cpu15606_)
                    (begin
                      (gx#core-bind-feature!__opt-lambda10722
                       _sys-cpu15606_
                       '#f
                       '0
                       _self15578_)
                      (gx#core-bind-feature!__opt-lambda10722
                       _sys-type15604_
                       '#f
                       '0
                       _self15578_)
                      (if (_linux-variant?15580_ _sys-type15604_)
                          (gx#core-bind-feature!__opt-lambda10722
                           'linux
                           '#f
                           '0
                           _self15578_)
                          '#!void)))))
            (if (##pair? _g1558115593_)
                (let ((_hd1558615611_ (##car _g1558115593_))
                      (_tl1558715613_ (##cdr _g1558115593_)))
                  (let ((_sys-cpu15616_ _hd1558615611_))
                    (if (##pair? _tl1558715613_)
                        (let ((_hd1558815618_ (##car _tl1558715613_))
                              (_tl1558915620_ (##cdr _tl1558715613_)))
                          (let ((_sys-vendor15623_ _hd1558815618_))
                            (if (##pair? _tl1558915620_)
                                (let ((_hd1559015625_ (##car _tl1558915620_))
                                      (_tl1559115627_ (##cdr _tl1558915620_)))
                                  (let ((_sys-type15630_ _hd1559015625_))
                                    (if (##null? _tl1559115627_)
                                        (_K1558515608_
                                         _sys-type15630_
                                         _sys-vendor15623_
                                         _sys-cpu15616_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
