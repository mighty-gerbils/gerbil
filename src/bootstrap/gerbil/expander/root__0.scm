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
    (let ((_opt-lambda1082910834_
           (lambda (_self10831_ _bind?10832_)
             (begin
               (direct-struct-instance-init!
                _self10831_
                'root
                (make-hash-table-eq))
               (if _bind?10832_
                   (begin
                     (call-method _self10831_ 'bind-core-syntax-expanders!)
                     (call-method _self10831_ 'bind-core-macro-expanders!))
                   '#!void)))))
      (lambda _g12446_
        (let ((_g12445_ (length _g12446_)))
          (cond ((fx= _g12445_ 1)
                 (apply (lambda (_self10837_)
                          (let ((_bind?10839_ '#t))
                            (_opt-lambda1082910834_ _self10837_ _bind?10839_)))
                        _g12446_))
                ((fx= _g12445_ 2)
                 (apply (lambda (_self10841_ _bind?10842_)
                          (_opt-lambda1082910834_ _self10841_ _bind?10842_))
                        _g12446_))
                (else (error "No clause matching arguments" _g12446_)))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (define gx#top-context:::init!
    (let ((_opt-lambda1080710820_
           (lambda (_self10809_ _super10810_)
             (let ((_super10818_
                    (let ((_$e10812_ _super10810_))
                      (if _$e10812_
                          _$e10812_
                          (let ((_$e10815_ (gx#core-context-root)))
                            (if _$e10815_
                                _$e10815_
                                (gx#make-root-context)))))))
               (direct-struct-instance-init!
                _self10809_
                'top
                (make-hash-table-eq)
                _super10818_
                '#f
                '#f)))))
      (lambda _g12448_
        (let ((_g12447_ (length _g12448_)))
          (cond ((fx= _g12447_ 1)
                 (apply (lambda (_self10823_)
                          (let ((_super10825_ '#f))
                            (_opt-lambda1080710820_ _self10823_ _super10825_)))
                        _g12448_))
                ((fx= _g12447_ 2)
                 (apply (lambda (_self10827_ _super10828_)
                          (_opt-lambda1080710820_ _self10827_ _super10828_))
                        _g12448_))
                (else (error "No clause matching arguments" _g12448_)))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (define gx#expander-context::bind-core-syntax-expanders!
    (let ((_opt-lambda1066010798_
           (lambda (_self10662_ _bindings10663_)
             (for-each
              (lambda (_bind10665_)
                (let ((_bind1066610673_ _bind10665_))
                  (let ((_E1066810677_
                         (lambda ()
                           (error '"No clause matching" _bind1066610673_))))
                    (let ((_K1066910786_
                           (lambda (_rest10680_ _id10681_)
                             (gx#core-context-put!
                              _self10662_
                              _id10681_
                              (gx#make-syntax-binding
                               _id10681_
                               _id10681_
                               '#f
                               (let ((_rest1068210693_ _rest10680_))
                                 (let ((_E1068410697_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest1068210693_))))
                                   (let ((_K1068510762_
                                          (lambda (_compiler10700_
                                                   _expander10701_
                                                   _key10702_)
                                            ((let ((_key1070310716_
                                                    _key10702_))
                                               (let ((_E1070910720_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _key1070310716_))))
                                                 (let ((_try-match1070810728_
                                                        (lambda ()
                                                          (let ((_K1071010725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda () gx#make-expression-form)))
                    (if (##eq? _key1070310716_ 'expr:)
                        (_K1071010725_)
                        (_E1070910720_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_try-match1070710736_
                                                          (lambda ()
                                                            (let ((_K1071110733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda () gx#make-special-form)))
                      (if (##eq? _key1070310716_ 'special:)
                          (_K1071110733_)
                          (_try-match1070810728_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_try-match1070610744_
                                                            (lambda ()
                                                              (let ((_K1071210741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda () gx#make-definition-form)))
                        (if (##eq? _key1070310716_ 'define:)
                            (_K1071210741_)
                            (_try-match1070710736_))))))
               (let ((_try-match1070510752_
                      (lambda ()
                        (let ((_K1071310749_
                               (lambda () gx#make-module-special-form)))
                          (if (##eq? _key1070310716_ 'module:)
                              (_K1071310749_)
                              (_try-match1070610744_))))))
                 (let ((_K1071410756_ (lambda () gx#make-top-special-form)))
                   (if (##eq? _key1070310716_ 'top:)
                       (_K1071410756_)
                       (_try-match1070510752_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _expander10701_
                                             _id10681_
                                             (let ((_$e10759_ _compiler10700_))
                                               (if _$e10759_
                                                   _$e10759_
                                                   gx#core-compile-top-error))))))
                                     (if (##pair? _rest1068210693_)
                                         (let ((_hd1068610765_
                                                (##car _rest1068210693_))
                                               (_tl1068710767_
                                                (##cdr _rest1068210693_)))
                                           (let ((_key10770_ _hd1068610765_))
                                             (if (##pair? _tl1068710767_)
                                                 (let ((_hd1068810772_
                                                        (##car _tl1068710767_))
                                                       (_tl1068910774_
                                                        (##cdr _tl1068710767_)))
                                                   (let ((_expander10777_
                                                          _hd1068810772_))
                                                     (if (##pair? _tl1068910774_)
                                                         (let ((_hd1069010779_
                                                                (##car _tl1068910774_))
                                                               (_tl1069110781_
                                                                (##cdr _tl1068910774_)))
                                                           (let ((_compiler10784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1069010779_))
                     (if (##null? _tl1069110781_)
                         (_K1068510762_
                          _compiler10784_
                          _expander10777_
                          _key10770_)
                         (_E1068410697_))))
                 (_E1068410697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1068410697_))))
                                         (_E1068410697_))))))))))
                      (if (##pair? _bind1066610673_)
                          (let ((_hd1067010789_ (##car _bind1066610673_))
                                (_tl1067110791_ (##cdr _bind1066610673_)))
                            (let ((_id10794_ _hd1067010789_))
                              (let ((_rest10796_ _tl1067110791_))
                                (_K1066910786_ _rest10796_ _id10794_))))
                          (_E1066810677_))))))
              _bindings10663_))))
      (lambda _g12450_
        (let ((_g12449_ (length _g12450_)))
          (cond ((fx= _g12449_ 1)
                 (apply (lambda (_self10801_)
                          (let ((_bindings10803_ gx#*core-syntax-expanders*))
                            (_opt-lambda1066010798_
                             _self10801_
                             _bindings10803_)))
                        _g12450_))
                ((fx= _g12449_ 2)
                 (apply (lambda (_self10805_ _bindings10806_)
                          (_opt-lambda1066010798_ _self10805_ _bindings10806_))
                        _g12450_))
                (else (error "No clause matching arguments" _g12450_)))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (define gx#expander-context::bind-core-macro-expanders!
    (let ((_opt-lambda1055410651_
           (lambda (_self10556_ _bindings10557_)
             (for-each
              (lambda (_bind10559_)
                (let ((_bind1056010567_ _bind10559_))
                  (let ((_E1056210571_
                         (lambda ()
                           (error '"No clause matching" _bind1056010567_))))
                    (let ((_K1056310639_
                           (lambda (_rest10574_ _id10575_)
                             (gx#core-context-put!
                              _self10556_
                              _id10575_
                              (gx#make-syntax-binding
                               _id10575_
                               _id10575_
                               '#f
                               (let ((_rest1057610591_ _rest10574_))
                                 (let ((_E1058010595_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest1057610591_))))
                                   (let ((_try-match1057910603_
                                          (lambda ()
                                            (let ((_K1058110600_
                                                   (lambda ()
                                                     (gx#make-reserved-expander
                                                      _id10575_))))
                                              (if (##null? _rest1057610591_)
                                                  (_K1058110600_)
                                                  (_E1058010595_))))))
                                     (let ((_try-match1057810619_
                                            (lambda ()
                                              (let ((_K1058210609_
                                                     (lambda (_proc10607_)
                                                       (gx#make-macro-expander
                                                        _proc10607_))))
                                                (if (##pair? _rest1057610591_)
                                                    (let ((_hd1058310612_
                                                           (##car _rest1057610591_))
                                                          (_tl1058410614_
                                                           (##cdr _rest1057610591_)))
                                                      (let ((_proc10617_
                                                             _hd1058310612_))
                                                        (if (##null? _tl1058410614_)
                                                            (_K1058210609_
                                                             _proc10617_)
                                                            (_try-match1057910603_))))
                                                    (_try-match1057910603_))))))
                                       (let ((_K1058510624_
                                              (lambda (_core-id10622_)
                                                (gx#make-rename-macro-expander
                                                 _core-id10622_))))
                                         (if (##pair? _rest1057610591_)
                                             (let ((_hd1058610627_
                                                    (##car _rest1057610591_))
                                                   (_tl1058710629_
                                                    (##cdr _rest1057610591_)))
                                               (if (##eq? _hd1058610627_ '=>)
                                                   (if (##pair? _tl1058710629_)
                                                       (let ((_hd1058810632_
                                                              (##car _tl1058710629_))
                                                             (_tl1058910634_
                                                              (##cdr _tl1058710629_)))
                                                         (let ((_core-id10637_
                                                                _hd1058810632_))
                                                           (if (##null? _tl1058910634_)
                                                               (_K1058510624_
                                                                _core-id10637_)
                                                               (_try-match1057810619_))))
                                                       (_try-match1057810619_))
                                                   (_try-match1057810619_)))
                                             (_try-match1057810619_))))))))))))
                      (if (##pair? _bind1056010567_)
                          (let ((_hd1056410642_ (##car _bind1056010567_))
                                (_tl1056510644_ (##cdr _bind1056010567_)))
                            (let ((_id10647_ _hd1056410642_))
                              (let ((_rest10649_ _tl1056510644_))
                                (_K1056310639_ _rest10649_ _id10647_))))
                          (_E1056210571_))))))
              _bindings10557_))))
      (lambda _g12452_
        (let ((_g12451_ (length _g12452_)))
          (cond ((fx= _g12451_ 1)
                 (apply (lambda (_self10654_)
                          (let ((_bindings10656_ gx#*core-macro-expanders*))
                            (_opt-lambda1055410651_
                             _self10654_
                             _bindings10656_)))
                        _g12452_))
                ((fx= _g12451_ 2)
                 (apply (lambda (_self10658_ _bindings10659_)
                          (_opt-lambda1055410651_ _self10658_ _bindings10659_))
                        _g12452_))
                (else (error "No clause matching arguments" _g12452_)))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
