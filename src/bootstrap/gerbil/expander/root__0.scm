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
    (define gx#root-context:::init!__opt-lambda16423
      (lambda (_self16425_ _bind?16426_)
        (begin
          (if (##fx< '2 (##vector-length _self16425_))
              (begin
                (##vector-set! _self16425_ '1 'root)
                (##vector-set! _self16425_ '2 (make-hash-table-eq)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16425_))
          (if _bind?16426_
              (begin
                (call-method _self16425_ 'bind-core-syntax-expanders!)
                (call-method _self16425_ 'bind-core-macro-expanders!)
                (call-method _self16425_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self16431_)
          (let ((_bind?16433_ '#t))
            (gx#root-context:::init!__opt-lambda16423
             _self16431_
             _bind?16433_))))
      (define gx#root-context:::init!
        (lambda _g16439_
          (let ((_g16438_ (length _g16439_)))
            (cond ((fx= _g16438_ 1)
                   (apply gx#root-context:::init!__0 _g16439_))
                  ((fx= _g16438_ 2)
                   (apply gx#root-context:::init!__opt-lambda16423 _g16439_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g16439_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda16279
      (lambda (_self16281_ _super16282_)
        (let ((_super16290_
               (let ((_$e16284_ _super16282_))
                 (if _$e16284_
                     _$e16284_
                     (let ((_$e16287_ (gx#core-context-root__0)))
                       (if _$e16287_
                           _$e16287_
                           (let ((__obj16437
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj16437)
                               __obj16437))))))))
          (if (##fx< '5 (##vector-length _self16281_))
              (begin
                (##vector-set! _self16281_ '1 'top)
                (##vector-set! _self16281_ '2 (make-hash-table-eq))
                (##vector-set! _self16281_ '3 _super16290_)
                (##vector-set! _self16281_ '4 '#f)
                (##vector-set! _self16281_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16281_)))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self16295_)
          (let ((_super16297_ '#f))
            (gx#top-context:::init!__opt-lambda16279
             _self16295_
             _super16297_))))
      (define gx#top-context:::init!
        (lambda _g16441_
          (let ((_g16440_ (length _g16441_)))
            (cond ((fx= _g16440_ 1) (apply gx#top-context:::init!__0 _g16441_))
                  ((fx= _g16440_ 2)
                   (apply gx#top-context:::init!__opt-lambda16279 _g16441_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g16441_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda16010
      (lambda (_self16012_ _bindings16013_)
        (for-each
         (lambda (_bind16015_)
           (let* ((_bind1601616023_ _bind16015_)
                  (_E1601816027_
                   (lambda () (error '"No clause matching" _bind1601616023_)))
                  (_K1601916136_
                   (lambda (_rest16030_ _id16031_)
                     (gx#core-context-put!
                      _self16012_
                      _id16031_
                      (##structure
                       gx#syntax-binding::t
                       _id16031_
                       _id16031_
                       '#f
                       (let* ((_rest1603216043_ _rest16030_)
                              (_E1603416047_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1603216043_)))
                              (_K1603516112_
                               (lambda (_compiler16050_
                                        _expander16051_
                                        _key16052_)
                                 ((let* ((_key1605316066_ _key16052_)
                                         (_E1605916070_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1605316066_)))
                                         (_try-match1605816078_
                                          (lambda ()
                                            (let ((_K1606016075_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1605316066_
                                                         'expr:)
                                                  (_K1606016075_)
                                                  (_E1605916070_)))))
                                         (_try-match1605716086_
                                          (lambda ()
                                            (let ((_K1606116083_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1605316066_
                                                         'special:)
                                                  (_K1606116083_)
                                                  (_try-match1605816078_)))))
                                         (_try-match1605616094_
                                          (lambda ()
                                            (let ((_K1606216091_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1605316066_
                                                         'define:)
                                                  (_K1606216091_)
                                                  (_try-match1605716086_)))))
                                         (_try-match1605516102_
                                          (lambda ()
                                            (let ((_K1606316099_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1605316066_
                                                         'module:)
                                                  (_K1606316099_)
                                                  (_try-match1605616094_)))))
                                         (_K1606416106_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1605316066_ 'top:)
                                        (_K1606416106_)
                                        (_try-match1605516102_)))
                                  _expander16051_
                                  _id16031_
                                  (let ((_$e16109_ _compiler16050_))
                                    (if _$e16109_
                                        _$e16109_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1603216043_)
                             (let ((_hd1603616115_ (##car _rest1603216043_))
                                   (_tl1603716117_ (##cdr _rest1603216043_)))
                               (let ((_key16120_ _hd1603616115_))
                                 (if (##pair? _tl1603716117_)
                                     (let ((_hd1603816122_
                                            (##car _tl1603716117_))
                                           (_tl1603916124_
                                            (##cdr _tl1603716117_)))
                                       (let ((_expander16127_ _hd1603816122_))
                                         (if (##pair? _tl1603916124_)
                                             (let ((_hd1604016129_
                                                    (##car _tl1603916124_))
                                                   (_tl1604116131_
                                                    (##cdr _tl1603916124_)))
                                               (let ((_compiler16134_
                                                      _hd1604016129_))
                                                 (if (##null? _tl1604116131_)
                                                     (_K1603516112_
                                                      _compiler16134_
                                                      _expander16127_
                                                      _key16120_)
                                                     (_E1603416047_))))
                                             (_E1603416047_))))
                                     (_E1603416047_))))
                             (_E1603416047_))))))))
             (if (##pair? _bind1601616023_)
                 (let ((_hd1602016139_ (##car _bind1601616023_))
                       (_tl1602116141_ (##cdr _bind1601616023_)))
                   (let* ((_id16144_ _hd1602016139_)
                          (_rest16146_ _tl1602116141_))
                     (_K1601916136_ _rest16146_ _id16144_)))
                 (_E1601816027_))))
         _bindings16013_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self16151_)
          (let ((_bindings16153_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda16010
             _self16151_
             _bindings16153_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g16443_
          (let ((_g16442_ (length _g16443_)))
            (cond ((fx= _g16442_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g16443_))
                  ((fx= _g16442_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda16010
                          _g16443_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g16443_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda15782
      (lambda (_self15784_ _bindings15785_)
        (for-each
         (lambda (_bind15787_)
           (let* ((_bind1578815795_ _bind15787_)
                  (_E1579015799_
                   (lambda () (error '"No clause matching" _bind1578815795_)))
                  (_K1579115867_
                   (lambda (_rest15802_ _id15803_)
                     (gx#core-context-put!
                      _self15784_
                      _id15803_
                      (##structure
                       gx#syntax-binding::t
                       _id15803_
                       _id15803_
                       '#f
                       (let* ((_rest1580415819_ _rest15802_)
                              (_E1580815823_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1580415819_)))
                              (_try-match1580715831_
                               (lambda ()
                                 (let ((_K1580915828_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id15803_))))
                                   (if (##null? _rest1580415819_)
                                       (_K1580915828_)
                                       (_E1580815823_)))))
                              (_try-match1580615847_
                               (lambda ()
                                 (let ((_K1581015837_
                                        (lambda (_proc15835_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc15835_))))
                                   (if (##pair? _rest1580415819_)
                                       (let ((_hd1581115840_
                                              (##car _rest1580415819_))
                                             (_tl1581215842_
                                              (##cdr _rest1580415819_)))
                                         (let ((_proc15845_ _hd1581115840_))
                                           (if (##null? _tl1581215842_)
                                               (_K1581015837_ _proc15845_)
                                               (_try-match1580715831_))))
                                       (_try-match1580715831_)))))
                              (_K1581315852_
                               (lambda (_core-id15850_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id15850_))))
                         (if (##pair? _rest1580415819_)
                             (let ((_hd1581415855_ (##car _rest1580415819_))
                                   (_tl1581515857_ (##cdr _rest1580415819_)))
                               (if (##eq? _hd1581415855_ '=>)
                                   (if (##pair? _tl1581515857_)
                                       (let ((_hd1581615860_
                                              (##car _tl1581515857_))
                                             (_tl1581715862_
                                              (##cdr _tl1581515857_)))
                                         (let ((_core-id15865_ _hd1581615860_))
                                           (if (##null? _tl1581715862_)
                                               (_K1581315852_ _core-id15865_)
                                               (_try-match1580615847_))))
                                       (_try-match1580615847_))
                                   (_try-match1580615847_)))
                             (_try-match1580615847_))))))))
             (if (##pair? _bind1578815795_)
                 (let ((_hd1579215870_ (##car _bind1578815795_))
                       (_tl1579315872_ (##cdr _bind1578815795_)))
                   (let* ((_id15875_ _hd1579215870_)
                          (_rest15877_ _tl1579315872_))
                     (_K1579115867_ _rest15877_ _id15875_)))
                 (_E1579015799_))))
         _bindings15785_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self15882_)
          (let ((_bindings15884_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda15782
             _self15882_
             _bindings15884_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g16445_
          (let ((_g16444_ (length _g16445_)))
            (cond ((fx= _g16444_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g16445_))
                  ((fx= _g16444_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda15782
                          _g16445_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g16445_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self15575_)
      (letrec ((_linux-variant?15577_
                (lambda (_sys-type15629_)
                  (let* ((_g1563015638_
                          (string-split (symbol->string _sys-type15629_) '#\-))
                         (_E1563315642_
                          (lambda ()
                            (error '"No clause matching" _g1563015638_)))
                         (_else1563215646_ (lambda () '#f))
                         (_K1563415651_
                          (lambda (_rest15649_) (not (null? _rest15649_)))))
                    (if (##pair? _g1563015638_)
                        (let ((_hd1563515654_ (##car _g1563015638_))
                              (_tl1563615656_ (##cdr _g1563015638_)))
                          (if (equal? _hd1563515654_ '"linux")
                              (let ((_rest15659_ _tl1563615656_))
                                (_K1563415651_ _rest15659_))
                              (_else1563215646_)))
                        (_else1563215646_))))))
        (begin
          (gx#core-bind-feature!__opt-lambda10722 'gerbil '#f '0 _self15575_)
          (gx#core-bind-feature!__opt-lambda10722
           (gerbil-system)
           '#f
           '0
           _self15575_)
          (let* ((_g1557815590_ (system-type))
                 (_E1558115594_
                  (lambda () (error '"No clause matching" _g1557815590_)))
                 (_else1558015598_ (lambda () '#!void))
                 (_K1558215605_
                  (lambda (_sys-type15601_ _sys-vendor15602_ _sys-cpu15603_)
                    (begin
                      (gx#core-bind-feature!__opt-lambda10722
                       _sys-cpu15603_
                       '#f
                       '0
                       _self15575_)
                      (gx#core-bind-feature!__opt-lambda10722
                       _sys-type15601_
                       '#f
                       '0
                       _self15575_)
                      (if (_linux-variant?15577_ _sys-type15601_)
                          (gx#core-bind-feature!__opt-lambda10722
                           'linux
                           '#f
                           '0
                           _self15575_)
                          '#!void)))))
            (if (##pair? _g1557815590_)
                (let ((_hd1558315608_ (##car _g1557815590_))
                      (_tl1558415610_ (##cdr _g1557815590_)))
                  (let ((_sys-cpu15613_ _hd1558315608_))
                    (if (##pair? _tl1558415610_)
                        (let ((_hd1558515615_ (##car _tl1558415610_))
                              (_tl1558615617_ (##cdr _tl1558415610_)))
                          (let ((_sys-vendor15620_ _hd1558515615_))
                            (if (##pair? _tl1558615617_)
                                (let ((_hd1558715622_ (##car _tl1558615617_))
                                      (_tl1558815624_ (##cdr _tl1558615617_)))
                                  (let ((_sys-type15627_ _hd1558715622_))
                                    (if (##null? _tl1558815624_)
                                        (_K1558215605_
                                         _sys-type15627_
                                         _sys-vendor15620_
                                         _sys-cpu15613_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
