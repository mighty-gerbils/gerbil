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
    (define gx#root-context:::init!__opt-lambda13725
      (lambda (_self13727_ _bind?13728_)
        (begin
          (if (##fx< '2 (##vector-length _self13727_))
              (begin
                (##vector-set! _self13727_ '1 'root)
                (##vector-set! _self13727_ '2 (make-hash-table-eq)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self13727_))
          (if _bind?13728_
              (begin
                (call-method _self13727_ 'bind-core-syntax-expanders!)
                (call-method _self13727_ 'bind-core-macro-expanders!)
                (call-method _self13727_ 'bind-core-features!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self13733_)
          (let ((_bind?13735_ '#t))
            (gx#root-context:::init!__opt-lambda13725
             _self13733_
             _bind?13735_))))
      (define gx#root-context:::init!
        (lambda _g13741_
          (let ((_g13740_ (length _g13741_)))
            (cond ((fx= _g13740_ 1)
                   (apply gx#root-context:::init!__0 _g13741_))
                  ((fx= _g13740_ 2)
                   (apply gx#root-context:::init!__opt-lambda13725 _g13741_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g13741_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda13703
      (lambda (_self13705_ _super13706_)
        (let ((_super13714_
               (let ((_$e13708_ _super13706_))
                 (if _$e13708_
                     _$e13708_
                     (let ((_$e13711_ (gx#core-context-root__0)))
                       (if _$e13711_
                           _$e13711_
                           (let ((__obj13739
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj13739)
                               __obj13739))))))))
          (if (##fx< '5 (##vector-length _self13705_))
              (begin
                (##vector-set! _self13705_ '1 'top)
                (##vector-set! _self13705_ '2 (make-hash-table-eq))
                (##vector-set! _self13705_ '3 _super13714_)
                (##vector-set! _self13705_ '4 '#f)
                (##vector-set! _self13705_ '5 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self13705_)))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self13719_)
          (let ((_super13721_ '#f))
            (gx#top-context:::init!__opt-lambda13703
             _self13719_
             _super13721_))))
      (define gx#top-context:::init!
        (lambda _g13743_
          (let ((_g13742_ (length _g13743_)))
            (cond ((fx= _g13742_ 1) (apply gx#top-context:::init!__0 _g13743_))
                  ((fx= _g13742_ 2)
                   (apply gx#top-context:::init!__opt-lambda13703 _g13743_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g13743_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda13556
      (lambda (_self13558_ _bindings13559_)
        (for-each
         (lambda (_bind13561_)
           (let* ((_bind1356213569_ _bind13561_)
                  (_E1356413573_
                   (lambda () (error '"No clause matching" _bind1356213569_)))
                  (_K1356513682_
                   (lambda (_rest13576_ _id13577_)
                     (gx#core-context-put!
                      _self13558_
                      _id13577_
                      (##structure
                       gx#syntax-binding::t
                       _id13577_
                       _id13577_
                       '#f
                       (let* ((_rest1357813589_ _rest13576_)
                              (_E1358013593_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1357813589_)))
                              (_K1358113658_
                               (lambda (_compiler13596_
                                        _expander13597_
                                        _key13598_)
                                 ((let* ((_key1359913612_ _key13598_)
                                         (_E1360513616_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key1359913612_)))
                                         (_try-match1360413624_
                                          (lambda ()
                                            (let ((_K1360613621_
                                                   (lambda ()
                                                     gx#make-expression-form)))
                                              (if (##eq? _key1359913612_
                                                         'expr:)
                                                  (_K1360613621_)
                                                  (_E1360513616_)))))
                                         (_try-match1360313632_
                                          (lambda ()
                                            (let ((_K1360713629_
                                                   (lambda ()
                                                     gx#make-special-form)))
                                              (if (##eq? _key1359913612_
                                                         'special:)
                                                  (_K1360713629_)
                                                  (_try-match1360413624_)))))
                                         (_try-match1360213640_
                                          (lambda ()
                                            (let ((_K1360813637_
                                                   (lambda ()
                                                     gx#make-definition-form)))
                                              (if (##eq? _key1359913612_
                                                         'define:)
                                                  (_K1360813637_)
                                                  (_try-match1360313632_)))))
                                         (_try-match1360113648_
                                          (lambda ()
                                            (let ((_K1360913645_
                                                   (lambda ()
                                                     gx#make-module-special-form)))
                                              (if (##eq? _key1359913612_
                                                         'module:)
                                                  (_K1360913645_)
                                                  (_try-match1360213640_)))))
                                         (_K1361013652_
                                          (lambda ()
                                            gx#make-top-special-form)))
                                    (if (##eq? _key1359913612_ 'top:)
                                        (_K1361013652_)
                                        (_try-match1360113648_)))
                                  _expander13597_
                                  _id13577_
                                  (let ((_$e13655_ _compiler13596_))
                                    (if _$e13655_
                                        _$e13655_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest1357813589_)
                             (let ((_hd1358213661_ (##car _rest1357813589_))
                                   (_tl1358313663_ (##cdr _rest1357813589_)))
                               (let ((_key13666_ _hd1358213661_))
                                 (if (##pair? _tl1358313663_)
                                     (let ((_hd1358413668_
                                            (##car _tl1358313663_))
                                           (_tl1358513670_
                                            (##cdr _tl1358313663_)))
                                       (let ((_expander13673_ _hd1358413668_))
                                         (if (##pair? _tl1358513670_)
                                             (let ((_hd1358613675_
                                                    (##car _tl1358513670_))
                                                   (_tl1358713677_
                                                    (##cdr _tl1358513670_)))
                                               (let ((_compiler13680_
                                                      _hd1358613675_))
                                                 (if (##null? _tl1358713677_)
                                                     (_K1358113658_
                                                      _compiler13680_
                                                      _expander13673_
                                                      _key13666_)
                                                     (_E1358013593_))))
                                             (_E1358013593_))))
                                     (_E1358013593_))))
                             (_E1358013593_))))))))
             (if (##pair? _bind1356213569_)
                 (let ((_hd1356613685_ (##car _bind1356213569_))
                       (_tl1356713687_ (##cdr _bind1356213569_)))
                   (let* ((_id13690_ _hd1356613685_)
                          (_rest13692_ _tl1356713687_))
                     (_K1356513682_ _rest13692_ _id13690_)))
                 (_E1356413573_))))
         _bindings13559_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self13697_)
          (let ((_bindings13699_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda13556
             _self13697_
             _bindings13699_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g13745_
          (let ((_g13744_ (length _g13745_)))
            (cond ((fx= _g13744_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g13745_))
                  ((fx= _g13744_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda13556
                          _g13745_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g13745_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda13450
      (lambda (_self13452_ _bindings13453_)
        (for-each
         (lambda (_bind13455_)
           (let* ((_bind1345613463_ _bind13455_)
                  (_E1345813467_
                   (lambda () (error '"No clause matching" _bind1345613463_)))
                  (_K1345913535_
                   (lambda (_rest13470_ _id13471_)
                     (gx#core-context-put!
                      _self13452_
                      _id13471_
                      (##structure
                       gx#syntax-binding::t
                       _id13471_
                       _id13471_
                       '#f
                       (let* ((_rest1347213487_ _rest13470_)
                              (_E1347613491_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest1347213487_)))
                              (_try-match1347513499_
                               (lambda ()
                                 (let ((_K1347713496_
                                        (lambda ()
                                          (##structure
                                           gx#reserved-expander::t
                                           _id13471_))))
                                   (if (##null? _rest1347213487_)
                                       (_K1347713496_)
                                       (_E1347613491_)))))
                              (_try-match1347413515_
                               (lambda ()
                                 (let ((_K1347813505_
                                        (lambda (_proc13503_)
                                          (##structure
                                           gx#macro-expander::t
                                           _proc13503_))))
                                   (if (##pair? _rest1347213487_)
                                       (let ((_hd1347913508_
                                              (##car _rest1347213487_))
                                             (_tl1348013510_
                                              (##cdr _rest1347213487_)))
                                         (let ((_proc13513_ _hd1347913508_))
                                           (if (##null? _tl1348013510_)
                                               (_K1347813505_ _proc13513_)
                                               (_try-match1347513499_))))
                                       (_try-match1347513499_)))))
                              (_K1348113520_
                               (lambda (_core-id13518_)
                                 (##structure
                                  gx#rename-macro-expander::t
                                  _core-id13518_))))
                         (if (##pair? _rest1347213487_)
                             (let ((_hd1348213523_ (##car _rest1347213487_))
                                   (_tl1348313525_ (##cdr _rest1347213487_)))
                               (if (##eq? _hd1348213523_ '=>)
                                   (if (##pair? _tl1348313525_)
                                       (let ((_hd1348413528_
                                              (##car _tl1348313525_))
                                             (_tl1348513530_
                                              (##cdr _tl1348313525_)))
                                         (let ((_core-id13533_ _hd1348413528_))
                                           (if (##null? _tl1348513530_)
                                               (_K1348113520_ _core-id13533_)
                                               (_try-match1347413515_))))
                                       (_try-match1347413515_))
                                   (_try-match1347413515_)))
                             (_try-match1347413515_))))))))
             (if (##pair? _bind1345613463_)
                 (let ((_hd1346013538_ (##car _bind1345613463_))
                       (_tl1346113540_ (##cdr _bind1345613463_)))
                   (let* ((_id13543_ _hd1346013538_)
                          (_rest13545_ _tl1346113540_))
                     (_K1345913535_ _rest13545_ _id13543_)))
                 (_E1345813467_))))
         _bindings13453_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self13550_)
          (let ((_bindings13552_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda13450
             _self13550_
             _bindings13552_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g13747_
          (let ((_g13746_ (length _g13747_)))
            (cond ((fx= _g13746_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g13747_))
                  ((fx= _g13746_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda13450
                          _g13747_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g13747_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f)
  (define gx#expander-context::bind-core-features!
    (lambda (_self13365_)
      (letrec ((_linux-variant?13367_
                (lambda (_sys-type13419_)
                  (let* ((_g1342013428_
                          (string-split (symbol->string _sys-type13419_) '#\-))
                         (_E1342313432_
                          (lambda ()
                            (error '"No clause matching" _g1342013428_)))
                         (_else1342213436_ (lambda () '#f))
                         (_K1342413441_
                          (lambda (_rest13439_) (not (null? _rest13439_)))))
                    (if (##pair? _g1342013428_)
                        (let ((_hd1342513444_ (##car _g1342013428_))
                              (_tl1342613446_ (##cdr _g1342013428_)))
                          (if (equal? _hd1342513444_ '"linux")
                              (let ((_rest13449_ _tl1342613446_))
                                (_K1342413441_ _rest13449_))
                              (_else1342213436_)))
                        (_else1342213436_))))))
        (begin
          (gx#core-bind-feature!__opt-lambda9619 'gerbil '#f '0 _self13365_)
          (gx#core-bind-feature!__opt-lambda9619
           (gerbil-system)
           '#f
           '0
           _self13365_)
          (let* ((_g1336813380_ (system-type))
                 (_E1337113384_
                  (lambda () (error '"No clause matching" _g1336813380_)))
                 (_else1337013388_ (lambda () '#!void))
                 (_K1337213395_
                  (lambda (_sys-type13391_ _sys-vendor13392_ _sys-cpu13393_)
                    (begin
                      (gx#core-bind-feature!__opt-lambda9619
                       _sys-cpu13393_
                       '#f
                       '0
                       _self13365_)
                      (gx#core-bind-feature!__opt-lambda9619
                       _sys-type13391_
                       '#f
                       '0
                       _self13365_)
                      (if (_linux-variant?13367_ _sys-type13391_)
                          (gx#core-bind-feature!__opt-lambda9619
                           'linux
                           '#f
                           '0
                           _self13365_)
                          '#!void)))))
            (if (##pair? _g1336813380_)
                (let ((_hd1337313398_ (##car _g1336813380_))
                      (_tl1337413400_ (##cdr _g1336813380_)))
                  (let ((_sys-cpu13403_ _hd1337313398_))
                    (if (##pair? _tl1337413400_)
                        (let ((_hd1337513405_ (##car _tl1337413400_))
                              (_tl1337613407_ (##cdr _tl1337413400_)))
                          (let ((_sys-vendor13410_ _hd1337513405_))
                            (if (##pair? _tl1337613407_)
                                (let ((_hd1337713412_ (##car _tl1337613407_))
                                      (_tl1337813414_ (##cdr _tl1337613407_)))
                                  (let ((_sys-type13417_ _hd1337713412_))
                                    (if (##null? _tl1337813414_)
                                        (_K1337213395_
                                         _sys-type13417_
                                         _sys-vendor13410_
                                         _sys-cpu13403_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-features!
   gx#expander-context::bind-core-features!
   '#f))
