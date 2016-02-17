(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
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
                                                                '()))))
                                        (cons (cons '%#export
                                                    (cons 'module:
                                                          (cons gx#core-expand-export%
                                                                (cons gx#core-compile-top-export%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons '%#provide
                                                          (cons 'module:
                                                                (cons gx#core-expand-provide%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-compile-top-provide% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#declare
                                                                (cons 'special:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-expand-declare%
                                    (cons gx#core-compile-top-declare% '()))))
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
                                                            '()))))
                                    (cons (cons '%#define-syntax
                                                (cons 'define:
                                                      (cons gx#core-expand-define-syntax%
                                                            (cons gx#core-compile-top-define-syntax%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons '%#define-alias
                                                      (cons 'define:
                                                            (cons gx#core-expand-define-alias%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-compile-top-define-alias% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#define-runtime
                                                            (cons 'define:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-expand-define-runtime%
                                (cons gx#core-compile-top-define-runtime%
                                      '()))))
              (cons (cons '%#begin-annotation
                          (cons 'expr:
                                (cons gx#core-expand-begin-annotation%
                                      (cons '#f '()))))
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
                                                              '()))))
                                      (cons (cons '%#letrec-values
                                                  (cons 'expr:
                                                        (cons gx#core-expand-letrec-values%
                                                              (cons gx#core-compile-top-letrec-values%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons '%#letrec*-values
                                                        (cons 'expr:
                                                              (cons gx#core-expand-letrec*-values%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons gx#core-compile-top-letrec*-values% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#let-syntax
                                                              (cons 'expr:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons gx#core-expand-let-syntax% (cons '#f '()))))
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
                                                                '()))))
                                        (cons (cons '%#if
                                                    (cons 'expr:
                                                          (cons gx#core-expand-if%
                                                                (cons gx#core-compile-top-if%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons '%#ref
                                                          (cons 'expr:
                                                                (cons gx#core-expand-ref%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-compile-top-ref% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#set!
                                                                (cons 'expr:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-expand-setq%
                                    (cons gx#core-compile-top-setq% '()))))
                  (cons (cons '%#expression
                              (cons 'expr:
                                    (cons gx#core-expand-expression%
                                          (cons '#f '()))))
                        '())))))))))))))))))))))))))))))))
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
                                  (cons (cons '_ '())
                                        (cons (cons '... '())
                                              (cons (cons 'else '())
                                                    (cons (cons '=> '())
                                                          (cons (cons 'unquote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (cons 'unquote-splicing '())
                              (cons (cons 'unsyntax '())
                                    (cons (cons 'unsyntax-splicing '())
                                          '()))))))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  (define gx#root-context:::init!
    (let ((_opt-lambda3888538890_
           (lambda (_self38887_ _bind?38888_)
             (begin
               (direct-struct-instance-init!
                _self38887_
                'root
                (make-hash-table-eq))
               (if _bind?38888_
                   (begin
                     (call-method _self38887_ 'bind-core-syntax-expanders!)
                     (call-method _self38887_ 'bind-core-macro-expanders!))
                   '#!void)))))
      (lambda _g40502_
        (let ((_g40501_ (length _g40502_)))
          (cond ((fx= _g40501_ 1)
                 (apply (lambda (_self38893_)
                          (let ((_bind?38895_ '#t))
                            (_opt-lambda3888538890_ _self38893_ _bind?38895_)))
                        _g40502_))
                ((fx= _g40501_ 2)
                 (apply (lambda (_self38897_ _bind?38898_)
                          (_opt-lambda3888538890_ _self38897_ _bind?38898_))
                        _g40502_))
                (else (error "No clause matching arguments" _g40502_)))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (define gx#top-context:::init!
    (let ((_opt-lambda3886338876_
           (lambda (_self38865_ _super38866_)
             (let ((_super38874_
                    (let ((_$e38868_ _super38866_))
                      (if _$e38868_
                          _$e38868_
                          (let ((_$e38871_ (gx#core-context-root)))
                            (if _$e38871_
                                _$e38871_
                                (gx#make-root-context)))))))
               (direct-struct-instance-init!
                _self38865_
                'top
                (make-hash-table-eq)
                _super38874_
                '#f
                '#f)))))
      (lambda _g40504_
        (let ((_g40503_ (length _g40504_)))
          (cond ((fx= _g40503_ 1)
                 (apply (lambda (_self38879_)
                          (let ((_super38881_ '#f))
                            (_opt-lambda3886338876_ _self38879_ _super38881_)))
                        _g40504_))
                ((fx= _g40503_ 2)
                 (apply (lambda (_self38883_ _super38884_)
                          (_opt-lambda3886338876_ _self38883_ _super38884_))
                        _g40504_))
                (else (error "No clause matching arguments" _g40504_)))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (define gx#expander-context::bind-core-syntax-expanders!
    (let ((_opt-lambda3871638854_
           (lambda (_self38718_ _bindings38719_)
             (for-each
              (lambda (_bind38721_)
                (let ((_bind3872238729_ _bind38721_))
                  (let ((_E3872438733_
                         (lambda ()
                           (error '"No clause matching" _bind3872238729_))))
                    (let ((_K3872538842_
                           (lambda (_rest38736_ _id38737_)
                             (gx#core-context-put!
                              _self38718_
                              _id38737_
                              (gx#make-syntax-binding
                               _id38737_
                               _id38737_
                               '#f
                               (let ((_rest3873838749_ _rest38736_))
                                 (let ((_E3874038753_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest3873838749_))))
                                   (let ((_K3874138818_
                                          (lambda (_compiler38756_
                                                   _expander38757_
                                                   _key38758_)
                                            ((let ((_key3875938772_
                                                    _key38758_))
                                               (let ((_E3876538776_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _key3875938772_))))
                                                 (let ((_try-match3876438784_
                                                        (lambda ()
                                                          (let ((_K3876638781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda () gx#make-expression-form)))
                    (if (##eq? _key3875938772_ 'expr:)
                        (_K3876638781_)
                        (_E3876538776_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_try-match3876338792_
                                                          (lambda ()
                                                            (let ((_K3876738789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda () gx#make-special-form)))
                      (if (##eq? _key3875938772_ 'special:)
                          (_K3876738789_)
                          (_try-match3876438784_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_try-match3876238800_
                                                            (lambda ()
                                                              (let ((_K3876838797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda () gx#make-definition-form)))
                        (if (##eq? _key3875938772_ 'define:)
                            (_K3876838797_)
                            (_try-match3876338792_))))))
               (let ((_try-match3876138808_
                      (lambda ()
                        (let ((_K3876938805_
                               (lambda () gx#make-module-special-form)))
                          (if (##eq? _key3875938772_ 'module:)
                              (_K3876938805_)
                              (_try-match3876238800_))))))
                 (let ((_K3877038812_ (lambda () gx#make-top-special-form)))
                   (if (##eq? _key3875938772_ 'top:)
                       (_K3877038812_)
                       (_try-match3876138808_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _expander38757_
                                             _id38737_
                                             (let ((_$e38815_ _compiler38756_))
                                               (if _$e38815_
                                                   _$e38815_
                                                   gx#core-compile-top-error))))))
                                     (if (##pair? _rest3873838749_)
                                         (let ((_hd3874238821_
                                                (##car _rest3873838749_))
                                               (_tl3874338823_
                                                (##cdr _rest3873838749_)))
                                           (let ((_key38826_ _hd3874238821_))
                                             (if (##pair? _tl3874338823_)
                                                 (let ((_hd3874438828_
                                                        (##car _tl3874338823_))
                                                       (_tl3874538830_
                                                        (##cdr _tl3874338823_)))
                                                   (let ((_expander38833_
                                                          _hd3874438828_))
                                                     (if (##pair? _tl3874538830_)
                                                         (let ((_hd3874638835_
                                                                (##car _tl3874538830_))
                                                               (_tl3874738837_
                                                                (##cdr _tl3874538830_)))
                                                           (let ((_compiler38840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd3874638835_))
                     (if (##null? _tl3874738837_)
                         (_K3874138818_
                          _compiler38840_
                          _expander38833_
                          _key38826_)
                         (_E3874038753_))))
                 (_E3874038753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E3874038753_))))
                                         (_E3874038753_))))))))))
                      (if (##pair? _bind3872238729_)
                          (let ((_hd3872638845_ (##car _bind3872238729_))
                                (_tl3872738847_ (##cdr _bind3872238729_)))
                            (let ((_id38850_ _hd3872638845_))
                              (let ((_rest38852_ _tl3872738847_))
                                (_K3872538842_ _rest38852_ _id38850_))))
                          (_E3872438733_))))))
              _bindings38719_))))
      (lambda _g40506_
        (let ((_g40505_ (length _g40506_)))
          (cond ((fx= _g40505_ 1)
                 (apply (lambda (_self38857_)
                          (let ((_bindings38859_ gx#*core-syntax-expanders*))
                            (_opt-lambda3871638854_
                             _self38857_
                             _bindings38859_)))
                        _g40506_))
                ((fx= _g40505_ 2)
                 (apply (lambda (_self38861_ _bindings38862_)
                          (_opt-lambda3871638854_ _self38861_ _bindings38862_))
                        _g40506_))
                (else (error "No clause matching arguments" _g40506_)))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (define gx#expander-context::bind-core-macro-expanders!
    (let ((_opt-lambda3861038707_
           (lambda (_self38612_ _bindings38613_)
             (for-each
              (lambda (_bind38615_)
                (let ((_bind3861638623_ _bind38615_))
                  (let ((_E3861838627_
                         (lambda ()
                           (error '"No clause matching" _bind3861638623_))))
                    (let ((_K3861938695_
                           (lambda (_rest38630_ _id38631_)
                             (gx#core-context-put!
                              _self38612_
                              _id38631_
                              (gx#make-syntax-binding
                               _id38631_
                               _id38631_
                               '#f
                               (let ((_rest3863238647_ _rest38630_))
                                 (let ((_E3863638651_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest3863238647_))))
                                   (let ((_try-match3863538659_
                                          (lambda ()
                                            (let ((_K3863738656_
                                                   (lambda ()
                                                     (gx#make-reserved-expander
                                                      _id38631_))))
                                              (if (##null? _rest3863238647_)
                                                  (_K3863738656_)
                                                  (_E3863638651_))))))
                                     (let ((_try-match3863438675_
                                            (lambda ()
                                              (let ((_K3863838665_
                                                     (lambda (_proc38663_)
                                                       (gx#make-macro-expander
                                                        _proc38663_))))
                                                (if (##pair? _rest3863238647_)
                                                    (let ((_hd3863938668_
                                                           (##car _rest3863238647_))
                                                          (_tl3864038670_
                                                           (##cdr _rest3863238647_)))
                                                      (let ((_proc38673_
                                                             _hd3863938668_))
                                                        (if (##null? _tl3864038670_)
                                                            (_K3863838665_
                                                             _proc38673_)
                                                            (_try-match3863538659_))))
                                                    (_try-match3863538659_))))))
                                       (let ((_K3864138680_
                                              (lambda (_core-id38678_)
                                                (gx#make-rename-macro-expander
                                                 _core-id38678_))))
                                         (if (##pair? _rest3863238647_)
                                             (let ((_hd3864238683_
                                                    (##car _rest3863238647_))
                                                   (_tl3864338685_
                                                    (##cdr _rest3863238647_)))
                                               (if (##eq? _hd3864238683_ '=>)
                                                   (if (##pair? _tl3864338685_)
                                                       (let ((_hd3864438688_
                                                              (##car _tl3864338685_))
                                                             (_tl3864538690_
                                                              (##cdr _tl3864338685_)))
                                                         (let ((_core-id38693_
                                                                _hd3864438688_))
                                                           (if (##null? _tl3864538690_)
                                                               (_K3864138680_
                                                                _core-id38693_)
                                                               (_try-match3863438675_))))
                                                       (_try-match3863438675_))
                                                   (_try-match3863438675_)))
                                             (_try-match3863438675_))))))))))))
                      (if (##pair? _bind3861638623_)
                          (let ((_hd3862038698_ (##car _bind3861638623_))
                                (_tl3862138700_ (##cdr _bind3861638623_)))
                            (let ((_id38703_ _hd3862038698_))
                              (let ((_rest38705_ _tl3862138700_))
                                (_K3861938695_ _rest38705_ _id38703_))))
                          (_E3861838627_))))))
              _bindings38613_))))
      (lambda _g40508_
        (let ((_g40507_ (length _g40508_)))
          (cond ((fx= _g40507_ 1)
                 (apply (lambda (_self38710_)
                          (let ((_bindings38712_ gx#*core-macro-expanders*))
                            (_opt-lambda3861038707_
                             _self38710_
                             _bindings38712_)))
                        _g40508_))
                ((fx= _g40507_ 2)
                 (apply (lambda (_self38714_ _bindings38715_)
                          (_opt-lambda3861038707_ _self38714_ _bindings38715_))
                        _g40508_))
                (else (error "No clause matching arguments" _g40508_)))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
