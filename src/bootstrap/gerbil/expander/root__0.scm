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
    (define gx#root-context:::init!__opt-lambda13782
      (lambda (_self13784_ _bind?13785_)
        (begin
          (if (##fx< '2 (##vector-length _self13784_))
              (begin
                (##vector-set! _self13784_ '1 'root)
                (##vector-set! _self13784_ '2 (make-hash-table-eq)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self13784_))
          (if _bind?13785_
              (begin
                (call-method _self13784_ 'bind-core-syntax-expanders!)
                (call-method _self13784_ 'bind-core-macro-expanders!)
                (call-method _self13784_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self13790_)
          (let ((_bind?13792_ '#t))
            (gx#root-context:::init!__opt-lambda13782
             _self13790_
             _bind?13792_))))
      (define gx#root-context:::init!
        (lambda _g13798_
          (let ((_g13797_ (length _g13798_)))
            (cond ((fx= _g13797_ 1)
                   (apply gx#root-context:::init!__0 _g13798_))
                  ((fx= _g13797_ 2)
                   (apply gx#root-context:::init!__opt-lambda13782 _g13798_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g13798_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda13760
      (lambda (_self13762_ _super13763_)
        (let ((_super13771_
               (let ((_$e13765_ _super13763_))
                 (if _$e13765_
                     _$e13765_
                     (let ((_$e13768_ (gx#core-context-root__0)))
                       (if _$e13768_
                           _$e13768_
                           (let ((__obj13796
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj13796)
                               __obj13796))))))))
          (if (##fx< '5 (##vector-length _self13762_))
              (begin
                (##vector-set! _self13762_ '1 'top)
                (##vector-set! _self13762_ '2 (make-hash-table-eq))
                (##vector-set! _self13762_ '3 _super13771_)
                (##vector-set! _self13762_ '4 '#f)
                (##vector-set! _self13762_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self13762_)))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self13776_)
          (let ((_super13778_ '#f))
            (gx#top-context:::init!__opt-lambda13760
             _self13776_
             _super13778_))))
      (define gx#top-context:::init!
        (lambda _g13800_
          (let ((_g13799_ (length _g13800_)))
            (cond ((fx= _g13799_ 1) (apply gx#top-context:::init!__0 _g13800_))
                  ((fx= _g13799_ 2)
                   (apply gx#top-context:::init!__opt-lambda13760 _g13800_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g13800_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda13613
      (lambda (_self13615_ _bindings13616_)
        (for-each
         (lambda (_bind13618_)
           (let* ((_bind1361913626_ _bind13618_)
                  (_E1362113630_
                   (lambda () (error '"No clause matching" _bind1361913626_)))
                  (_K1362213739_
                   (lambda (_rest13633_ _id13634_)
                     (gx#core-context-put!
                      _self13615_
                      _id13634_
                      (##structure
                       gx#syntax-binding::t
                       _id13634_
                       _id13634_
                       '#f
                       (let* ((_rest1363513646_ _rest13633_)
                              (_E1363713650_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1363513646_)))
                              (_K1363813715_
                               (lambda (_compiler13653_
                                        _expander13654_
                                        _key13655_)
                                 ((let* ((_key1365613669_ _key13655_)
                                         (_E1366213673_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1365613669_)))
                                         (_try-match1366113681_
                                          (lambda ()
                                            (let ((_K1366313678_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1365613669_
                                                         'expr:)
                                                  (_K1366313678_)
                                                  (_E1366213673_)))))
                                         (_try-match1366013689_
                                          (lambda ()
                                            (let ((_K1366413686_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1365613669_
                                                         'special:)
                                                  (_K1366413686_)
                                                  (_try-match1366113681_)))))
                                         (_try-match1365913697_
                                          (lambda ()
                                            (let ((_K1366513694_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1365613669_
                                                         'define:)
                                                  (_K1366513694_)
                                                  (_try-match1366013689_)))))
                                         (_try-match1365813705_
                                          (lambda ()
                                            (let ((_K1366613702_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1365613669_
                                                         'module:)
                                                  (_K1366613702_)
                                                  (_try-match1365913697_)))))
                                         (_K1366713709_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1365613669_ 'top:)
                                        (_K1366713709_)
                                        (_try-match1365813705_)))
                                  _expander13654_
                                  _id13634_
                                  (let ((_$e13712_ _compiler13653_))
                                    (if _$e13712_
                                        _$e13712_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1363513646_)
                             (let ((_hd1363913718_ (##car _rest1363513646_))
                                   (_tl1364013720_ (##cdr _rest1363513646_)))
                               (let ((_key13723_ _hd1363913718_))
                                 (if (##pair? _tl1364013720_)
                                     (let ((_hd1364113725_
                                            (##car _tl1364013720_))
                                           (_tl1364213727_
                                            (##cdr _tl1364013720_)))
                                       (let ((_expander13730_ _hd1364113725_))
                                         (if (##pair? _tl1364213727_)
                                             (let ((_hd1364313732_
                                                    (##car _tl1364213727_))
                                                   (_tl1364413734_
                                                    (##cdr _tl1364213727_)))
                                               (let ((_compiler13737_
                                                      _hd1364313732_))
                                                 (if (##null? _tl1364413734_)
                                                     (_K1363813715_
                                                      _compiler13737_
                                                      _expander13730_
                                                      _key13723_)
                                                     (_E1363713650_))))
                                             (_E1363713650_))))
                                     (_E1363713650_))))
                             (_E1363713650_))))))))
             (if (##pair? _bind1361913626_)
                 (let ((_hd1362313742_ (##car _bind1361913626_))
                       (_tl1362413744_ (##cdr _bind1361913626_)))
                   (let* ((_id13747_ _hd1362313742_)
                          (_rest13749_ _tl1362413744_))
                     (_K1362213739_ _rest13749_ _id13747_)))
                 (_E1362113630_))))
         _bindings13616_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self13754_)
          (let ((_bindings13756_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda13613
             _self13754_
             _bindings13756_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g13802_
          (let ((_g13801_ (length _g13802_)))
            (cond ((fx= _g13801_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g13802_))
                  ((fx= _g13801_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda13613
                          _g13802_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g13802_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda13507
      (lambda (_self13509_ _bindings13510_)
        (for-each
         (lambda (_bind13512_)
           (let* ((_bind1351313520_ _bind13512_)
                  (_E1351513524_
                   (lambda () (error '"No clause matching" _bind1351313520_)))
                  (_K1351613592_
                   (lambda (_rest13527_ _id13528_)
                     (gx#core-context-put!
                      _self13509_
                      _id13528_
                      (##structure
                       gx#syntax-binding::t
                       _id13528_
                       _id13528_
                       '#f
                       (let* ((_rest1352913544_ _rest13527_)
                              (_E1353313548_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1352913544_)))
                              (_try-match1353213556_
                               (lambda ()
                                 (let ((_K1353413553_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id13528_))))
                                   (if (##null? _rest1352913544_)
                                       (_K1353413553_)
                                       (_E1353313548_)))))
                              (_try-match1353113572_
                               (lambda ()
                                 (let ((_K1353513562_
                                        (lambda (_proc13560_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc13560_))))
                                   (if (##pair? _rest1352913544_)
                                       (let ((_hd1353613565_
                                              (##car _rest1352913544_))
                                             (_tl1353713567_
                                              (##cdr _rest1352913544_)))
                                         (let ((_proc13570_ _hd1353613565_))
                                           (if (##null? _tl1353713567_)
                                               (_K1353513562_ _proc13570_)
                                               (_try-match1353213556_))))
                                       (_try-match1353213556_)))))
                              (_K1353813577_
                               (lambda (_core-id13575_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id13575_))))
                         (if (##pair? _rest1352913544_)
                             (let ((_hd1353913580_ (##car _rest1352913544_))
                                   (_tl1354013582_ (##cdr _rest1352913544_)))
                               (if (##eq? _hd1353913580_ '=>)
                                   (if (##pair? _tl1354013582_)
                                       (let ((_hd1354113585_
                                              (##car _tl1354013582_))
                                             (_tl1354213587_
                                              (##cdr _tl1354013582_)))
                                         (let ((_core-id13590_ _hd1354113585_))
                                           (if (##null? _tl1354213587_)
                                               (_K1353813577_ _core-id13590_)
                                               (_try-match1353113572_))))
                                       (_try-match1353113572_))
                                   (_try-match1353113572_)))
                             (_try-match1353113572_))))))))
             (if (##pair? _bind1351313520_)
                 (let ((_hd1351713595_ (##car _bind1351313520_))
                       (_tl1351813597_ (##cdr _bind1351313520_)))
                   (let* ((_id13600_ _hd1351713595_)
                          (_rest13602_ _tl1351813597_))
                     (_K1351613592_ _rest13602_ _id13600_)))
                 (_E1351513524_))))
         _bindings13510_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self13607_)
          (let ((_bindings13609_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda13507
             _self13607_
             _bindings13609_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g13804_
          (let ((_g13803_ (length _g13804_)))
            (cond ((fx= _g13803_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g13804_))
                  ((fx= _g13803_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda13507
                          _g13804_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g13804_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self13422_)
      (letrec ((_linux-variant?13424_
                (lambda (_sys-type13476_)
                  (let* ((_g1347713485_
                          (string-split (symbol->string _sys-type13476_) '#\-))
                         (_E1348013489_
                          (lambda ()
                            (error '"No clause matching" _g1347713485_)))
                         (_else1347913493_ (lambda () '#f))
                         (_K1348113498_
                          (lambda (_rest13496_) (not (null? _rest13496_)))))
                    (if (##pair? _g1347713485_)
                        (let ((_hd1348213501_ (##car _g1347713485_))
                              (_tl1348313503_ (##cdr _g1347713485_)))
                          (if (equal? _hd1348213501_ '"linux")
                              (let ((_rest13506_ _tl1348313503_))
                                (_K1348113498_ _rest13506_))
                              (_else1347913493_)))
                        (_else1347913493_))))))
        (begin
          (gx#core-bind-feature!__opt-lambda9619 'gerbil '#f '0 _self13422_)
          (gx#core-bind-feature!__opt-lambda9619
           (gerbil-system)
           '#f
           '0
           _self13422_)
          (let* ((_g1342513437_ (system-type))
                 (_E1342813441_
                  (lambda () (error '"No clause matching" _g1342513437_)))
                 (_else1342713445_ (lambda () '#!void))
                 (_K1342913452_
                  (lambda (_sys-type13448_ _sys-vendor13449_ _sys-cpu13450_)
                    (begin
                      (gx#core-bind-feature!__opt-lambda9619
                       _sys-cpu13450_
                       '#f
                       '0
                       _self13422_)
                      (gx#core-bind-feature!__opt-lambda9619
                       _sys-type13448_
                       '#f
                       '0
                       _self13422_)
                      (if (_linux-variant?13424_ _sys-type13448_)
                          (gx#core-bind-feature!__opt-lambda9619
                           'linux
                           '#f
                           '0
                           _self13422_)
                          '#!void)))))
            (if (##pair? _g1342513437_)
                (let ((_hd1343013455_ (##car _g1342513437_))
                      (_tl1343113457_ (##cdr _g1342513437_)))
                  (let ((_sys-cpu13460_ _hd1343013455_))
                    (if (##pair? _tl1343113457_)
                        (let ((_hd1343213462_ (##car _tl1343113457_))
                              (_tl1343313464_ (##cdr _tl1343113457_)))
                          (let ((_sys-vendor13467_ _hd1343213462_))
                            (if (##pair? _tl1343313464_)
                                (let ((_hd1343413469_ (##car _tl1343313464_))
                                      (_tl1343513471_ (##cdr _tl1343313464_)))
                                  (let ((_sys-type13474_ _hd1343413469_))
                                    (if (##null? _tl1343513471_)
                                        (_K1342913452_
                                         _sys-type13474_
                                         _sys-vendor13467_
                                         _sys-cpu13460_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
