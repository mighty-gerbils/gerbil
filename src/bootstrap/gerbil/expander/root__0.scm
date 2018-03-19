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
    (define gx#root-context:::init!__%
      (lambda (_self17064_ _bind?17065_)
        (begin
          (if (##fx< '2 (##vector-length _self17064_))
              (begin
                (##vector-set! _self17064_ '1 'root)
                (##vector-set! _self17064_ '2 (make-hash-table-eq)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self17064_))
          (if _bind?17065_
              (begin
                (call-method _self17064_ 'bind-core-syntax-expanders!)
                (call-method _self17064_ 'bind-core-macro-expanders!)
                (call-method _self17064_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self17070_)
          (let ((_bind?17072_ '#t))
            (gx#root-context:::init!__% _self17070_ _bind?17072_))))
      (define gx#root-context:::init!
        (lambda _g17110_
          (let ((_g17109_ (length _g17110_)))
            (cond ((##fx= _g17109_ 1)
                   (apply gx#root-context:::init!__0 _g17110_))
                  ((##fx= _g17109_ 2)
                   (apply gx#root-context:::init!__% _g17110_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g17110_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__%
      (lambda (_self16920_ _super16921_)
        (let ((_super16929_
               (let ((_$e16923_ _super16921_))
                 (if _$e16923_
                     _$e16923_
                     (let ((_$e16926_ (gx#core-context-root__0)))
                       (if _$e16926_
                           _$e16926_
                           (let ((__obj17108
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj17108)
                               __obj17108))))))))
          (if (##fx< '5 (##vector-length _self16920_))
              (begin
                (##vector-set! _self16920_ '1 'top)
                (##vector-set! _self16920_ '2 (make-hash-table-eq))
                (##vector-set! _self16920_ '3 _super16929_)
                (##vector-set! _self16920_ '4 '#f)
                (##vector-set! _self16920_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16920_)))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self16934_)
          (let ((_super16936_ '#f))
            (gx#top-context:::init!__% _self16934_ _super16936_))))
      (define gx#top-context:::init!
        (lambda _g17112_
          (let ((_g17111_ (length _g17112_)))
            (cond ((##fx= _g17111_ 1)
                   (apply gx#top-context:::init!__0 _g17112_))
                  ((##fx= _g17111_ 2)
                   (apply gx#top-context:::init!__% _g17112_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g17112_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self16651_ _bindings16652_)
        (for-each
         (lambda (_bind16654_)
           (let* ((_bind1665516662_ _bind16654_)
                  (_E1665716666_
                   (lambda () (error '"No clause matching" _bind1665516662_)))
                  (_K1665816775_
                   (lambda (_rest16669_ _id16670_)
                     (gx#core-context-put!
                      _self16651_
                      _id16670_
                      (##structure
                       gx#syntax-binding::t
                       _id16670_
                       _id16670_
                       '#f
                       (let* ((_rest1667116682_ _rest16669_)
                              (_E1667316686_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1667116682_)))
                              (_K1667416751_
                               (lambda (_compiler16689_
                                        _expander16690_
                                        _key16691_)
                                 ((let* ((_key1669216705_ _key16691_)
                                         (_E1669816709_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1669216705_))))
                                    (let ((_K1670316745_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K1670216738_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K1670116730_
                                           (lambda () gx#make-definition-form))
                                          (_K1670016722_
                                           (lambda () gx#make-special-form))
                                          (_K1669916714_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match1669716717_
                                              (lambda ()
                                                (if (##eq? _key1669216705_
                                                           'expr:)
                                                    (_K1669916714_)
                                                    (_E1669816709_))))
                                             (_try-match1669616725_
                                              (lambda ()
                                                (if (##eq? _key1669216705_
                                                           'special:)
                                                    (_K1670016722_)
                                                    (_try-match1669716717_))))
                                             (_try-match1669516733_
                                              (lambda ()
                                                (if (##eq? _key1669216705_
                                                           'define:)
                                                    (_K1670116730_)
                                                    (_try-match1669616725_))))
                                             (_try-match1669416741_
                                              (lambda ()
                                                (if (##eq? _key1669216705_
                                                           'module:)
                                                    (_K1670216738_)
                                                    (_try-match1669516733_)))))
                                        (if (##eq? _key1669216705_ 'top:)
                                            (_K1670316745_)
                                            (_try-match1669416741_)))))
                                  _expander16690_
                                  _id16670_
                                  (let ((_$e16748_ _compiler16689_))
                                    (if _$e16748_
                                        _$e16748_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1667116682_)
                             (let ((_hd1667516754_ (##car _rest1667116682_))
                                   (_tl1667616756_ (##cdr _rest1667116682_)))
                               (let ((_key16759_ _hd1667516754_))
                                 (if (##pair? _tl1667616756_)
                                     (let ((_hd1667716761_
                                            (##car _tl1667616756_))
                                           (_tl1667816763_
                                            (##cdr _tl1667616756_)))
                                       (let ((_expander16766_ _hd1667716761_))
                                         (if (##pair? _tl1667816763_)
                                             (let ((_hd1667916768_
                                                    (##car _tl1667816763_))
                                                   (_tl1668016770_
                                                    (##cdr _tl1667816763_)))
                                               (let ((_compiler16773_
                                                      _hd1667916768_))
                                                 (if (##null? _tl1668016770_)
                                                     (_K1667416751_
                                                      _compiler16773_
                                                      _expander16766_
                                                      _key16759_)
                                                     (_E1667316686_))))
                                             (_E1667316686_))))
                                     (_E1667316686_))))
                             (_E1667316686_))))))))
             (if (##pair? _bind1665516662_)
                 (let ((_hd1665916778_ (##car _bind1665516662_))
                       (_tl1666016780_ (##cdr _bind1665516662_)))
                   (let* ((_id16783_ _hd1665916778_)
                          (_rest16785_ _tl1666016780_))
                     (_K1665816775_ _rest16785_ _id16783_)))
                 (_E1665716666_))))
         _bindings16652_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self16790_)
          (let ((_bindings16792_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__%
             _self16790_
             _bindings16792_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g17114_
          (let ((_g17113_ (length _g17114_)))
            (cond ((##fx= _g17113_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g17114_))
                  ((##fx= _g17113_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__%
                          _g17114_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g17114_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self16423_ _bindings16424_)
        (for-each
         (lambda (_bind16426_)
           (let* ((_bind1642716434_ _bind16426_)
                  (_E1642916438_
                   (lambda () (error '"No clause matching" _bind1642716434_)))
                  (_K1643016506_
                   (lambda (_rest16441_ _id16442_)
                     (gx#core-context-put!
                      _self16423_
                      _id16442_
                      (##structure
                       gx#syntax-binding::t
                       _id16442_
                       _id16442_
                       '#f
                       (let* ((_rest1644316458_ _rest16441_)
                              (_E1644716462_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1644316458_))))
                         (let ((_K1645216491_
                                (lambda (_core-id16489_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id16489_)))
                               (_K1644916476_
                                (lambda (_proc16474_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc16474_)))
                               (_K1644816467_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id16442_))))
                           (let ((_try-match1644616470_
                                  (lambda ()
                                    (if (##null? _rest1644316458_)
                                        (_K1644816467_)
                                        (_E1644716462_)))))
                             (if (##pair? _rest1644316458_)
                                 (let ((_tl1645416496_
                                        (##cdr _rest1644316458_))
                                       (_hd1645316494_
                                        (##car _rest1644316458_)))
                                   (if (##eq? _hd1645316494_ '=>)
                                       (if (##pair? _tl1645416496_)
                                           (let ((_tl1645616501_
                                                  (##cdr _tl1645416496_))
                                                 (_hd1645516499_
                                                  (##car _tl1645416496_)))
                                             (if (##null? _tl1645616501_)
                                                 (let ((_core-id16504_
                                                        _hd1645516499_))
                                                   (_K1645216491_
                                                    _core-id16504_))
                                                 (_E1644716462_)))
                                           (if (##null? _tl1645416496_)
                                               (let ((_proc16484_
                                                      _hd1645316494_))
                                                 (_K1644916476_ _proc16484_))
                                               (_E1644716462_)))
                                       (if (##null? _tl1645416496_)
                                           (let ((_proc16484_ _hd1645316494_))
                                             (_K1644916476_ _proc16484_))
                                           (_E1644716462_))))
                                 (_try-match1644616470_))))))))))
             (if (##pair? _bind1642716434_)
                 (let ((_hd1643116509_ (##car _bind1642716434_))
                       (_tl1643216511_ (##cdr _bind1642716434_)))
                   (let* ((_id16514_ _hd1643116509_)
                          (_rest16516_ _tl1643216511_))
                     (_K1643016506_ _rest16516_ _id16514_)))
                 (_E1642916438_))))
         _bindings16424_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self16521_)
          (let ((_bindings16523_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__%
             _self16521_
             _bindings16523_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g17116_
          (let ((_g17115_ (length _g17116_)))
            (cond ((##fx= _g17115_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g17116_))
                  ((##fx= _g17115_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__%
                          _g17116_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g17116_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self16214_)
      (letrec ((_linux-variant?16216_
                (lambda (_sys-type16268_)
                  (let* ((_g1626916277_
                          (string-split (symbol->string _sys-type16268_) '#\-))
                         (_else1627116285_ (lambda () '#f))
                         (_K1627316290_
                          (lambda (_rest16288_) (not (null? _rest16288_)))))
                    (if (##pair? _g1626916277_)
                        (let ((_hd1627416293_ (##car _g1626916277_))
                              (_tl1627516295_ (##cdr _g1626916277_)))
                          (if (equal? _hd1627416293_ '"linux")
                              (let ((_rest16298_ _tl1627516295_))
                                (_K1627316290_ _rest16298_))
                              (_else1627116285_)))
                        (_else1627116285_))))))
        (begin
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self16214_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self16214_)
          (let* ((_g1621716229_ (system-type))
                 (_else1621916237_ (lambda () '#!void))
                 (_K1622116244_
                  (lambda (_sys-type16240_ _sys-vendor16241_ _sys-cpu16242_)
                    (begin
                      (gx#core-bind-feature!__%
                       _sys-cpu16242_
                       '#f
                       '0
                       _self16214_)
                      (gx#core-bind-feature!__%
                       _sys-type16240_
                       '#f
                       '0
                       _self16214_)
                      (if (_linux-variant?16216_ _sys-type16240_)
                          (gx#core-bind-feature!__% 'linux '#f '0 _self16214_)
                          '#!void)))))
            (if (##pair? _g1621716229_)
                (let ((_hd1622216247_ (##car _g1621716229_))
                      (_tl1622316249_ (##cdr _g1621716229_)))
                  (let ((_sys-cpu16252_ _hd1622216247_))
                    (if (##pair? _tl1622316249_)
                        (let ((_hd1622416254_ (##car _tl1622316249_))
                              (_tl1622516256_ (##cdr _tl1622316249_)))
                          (let ((_sys-vendor16259_ _hd1622416254_))
                            (if (##pair? _tl1622516256_)
                                (let ((_hd1622616261_ (##car _tl1622516256_))
                                      (_tl1622716263_ (##cdr _tl1622516256_)))
                                  (let ((_sys-type16266_ _hd1622616261_))
                                    (if (##null? _tl1622716263_)
                                        (_K1622116244_
                                         _sys-type16266_
                                         _sys-vendor16259_
                                         _sys-cpu16252_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self16214_)
              '#!void)))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
