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
                                  (cons (cons '%%app
                                              (cons '=> (cons '%#call '())))
                                        (cons (cons '%%ref
                                                    (cons '=>
                                                          (cons '%#ref '())))
                                              (cons (cons '%%begin-module
                                                          (cons '=>
                                                                (cons '%#begin
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
    (define gx#root-context:::init!__opt-lambda12589
      (lambda (_self12591_ _bind?12592_)
        (begin
          (direct-struct-instance-init! _self12591_ 'root (make-hash-table-eq))
          (if _bind?12592_
              (begin
                (call-method _self12591_ 'bind-core-syntax-expanders!)
                (call-method _self12591_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self12597_)
          (let ((_bind?12599_ '#t))
            (gx#root-context:::init!__opt-lambda12589
             _self12597_
             _bind?12599_))))
      (define gx#root-context:::init!
        (lambda _g12605_
          (let ((_g12604_ (length _g12605_)))
            (cond ((fx= _g12604_ 1)
                   (apply gx#root-context:::init!__0 _g12605_))
                  ((fx= _g12604_ 2)
                   (apply gx#root-context:::init!__opt-lambda12589 _g12605_))
                  (else (error "No clause matching arguments" _g12605_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12567
      (lambda (_self12569_ _super12570_)
        (let ((_super12578_
               (let ((_$e12572_ _super12570_))
                 (if _$e12572_
                     _$e12572_
                     (let ((_$e12575_ (gx#core-context-root__0)))
                       (if _$e12575_
                           _$e12575_
                           (let ((__obj12603
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj12603)
                               __obj12603))))))))
          (direct-struct-instance-init!
           _self12569_
           'top
           (make-hash-table-eq)
           _super12578_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self12583_)
          (let ((_super12585_ '#f))
            (gx#top-context:::init!__opt-lambda12567
             _self12583_
             _super12585_))))
      (define gx#top-context:::init!
        (lambda _g12607_
          (let ((_g12606_ (length _g12607_)))
            (cond ((fx= _g12606_ 1) (apply gx#top-context:::init!__0 _g12607_))
                  ((fx= _g12606_ 2)
                   (apply gx#top-context:::init!__opt-lambda12567 _g12607_))
                  (else (error "No clause matching arguments" _g12607_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12420
      (lambda (_self12422_ _bindings12423_)
        (for-each
         (lambda (_bind12425_)
           (let ((_bind1242612433_ _bind12425_))
             (let ((_E1242812437_
                    (lambda ()
                      (error '"No clause matching" _bind1242612433_))))
               (let ((_K1242912546_
                      (lambda (_rest12440_ _id12441_)
                        (gx#core-context-put!
                         _self12422_
                         _id12441_
                         (##structure
                          gx#syntax-binding::t
                          _id12441_
                          _id12441_
                          '#f
                          (let ((_rest1244212453_ _rest12440_))
                            (let ((_E1244412457_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1244212453_))))
                              (let ((_K1244512522_
                                     (lambda (_compiler12460_
                                              _expander12461_
                                              _key12462_)
                                       ((let ((_key1246312476_ _key12462_))
                                          (let ((_E1246912480_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1246312476_))))
                                            (let ((_try-match1246812488_
                                                   (lambda ()
                                                     (let ((_K1247012485_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1246312476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1247012485_)
                   (_E1246912480_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1246712496_
                                                     (lambda ()
                                                       (let ((_K1247112493_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1246312476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1247112493_)
                     (_try-match1246812488_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1246612504_
                                                       (lambda ()
                                                         (let ((_K1247212501_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1246312476_ 'define:)
                       (_K1247212501_)
                       (_try-match1246712496_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1246512512_
                                                         (lambda ()
                                                           (let ((_K1247312509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1246312476_ 'module:)
                         (_K1247312509_)
                         (_try-match1246612504_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1247412516_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1246312476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1247412516_)
                  (_try-match1246512512_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12461_
                                        _id12441_
                                        (let ((_$e12519_ _compiler12460_))
                                          (if _$e12519_
                                              _$e12519_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1244212453_)
                                    (let ((_hd1244612525_
                                           (##car _rest1244212453_))
                                          (_tl1244712527_
                                           (##cdr _rest1244212453_)))
                                      (let ((_key12530_ _hd1244612525_))
                                        (if (##pair? _tl1244712527_)
                                            (let ((_hd1244812532_
                                                   (##car _tl1244712527_))
                                                  (_tl1244912534_
                                                   (##cdr _tl1244712527_)))
                                              (let ((_expander12537_
                                                     _hd1244812532_))
                                                (if (##pair? _tl1244912534_)
                                                    (let ((_hd1245012539_
                                                           (##car _tl1244912534_))
                                                          (_tl1245112541_
                                                           (##cdr _tl1244912534_)))
                                                      (let ((_compiler12544_
                                                             _hd1245012539_))
                                                        (if (##null? _tl1245112541_)
                                                            (_K1244512522_
                                                             _compiler12544_
                                                             _expander12537_
                                                             _key12530_)
                                                            (_E1244412457_))))
                                                    (_E1244412457_))))
                                            (_E1244412457_))))
                                    (_E1244412457_))))))))))
                 (if (##pair? _bind1242612433_)
                     (let ((_hd1243012549_ (##car _bind1242612433_))
                           (_tl1243112551_ (##cdr _bind1242612433_)))
                       (let ((_id12554_ _hd1243012549_))
                         (let ((_rest12556_ _tl1243112551_))
                           (_K1242912546_ _rest12556_ _id12554_))))
                     (_E1242812437_))))))
         _bindings12423_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12561_)
          (let ((_bindings12563_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12420
             _self12561_
             _bindings12563_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g12609_
          (let ((_g12608_ (length _g12609_)))
            (cond ((fx= _g12608_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g12609_))
                  ((fx= _g12608_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12420
                          _g12609_))
                  (else (error "No clause matching arguments" _g12609_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12314
      (lambda (_self12316_ _bindings12317_)
        (for-each
         (lambda (_bind12319_)
           (let ((_bind1232012327_ _bind12319_))
             (let ((_E1232212331_
                    (lambda ()
                      (error '"No clause matching" _bind1232012327_))))
               (let ((_K1232312399_
                      (lambda (_rest12334_ _id12335_)
                        (gx#core-context-put!
                         _self12316_
                         _id12335_
                         (##structure
                          gx#syntax-binding::t
                          _id12335_
                          _id12335_
                          '#f
                          (let ((_rest1233612351_ _rest12334_))
                            (let ((_E1234012355_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1233612351_))))
                              (let ((_try-match1233912363_
                                     (lambda ()
                                       (let ((_K1234112360_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12335_))))
                                         (if (##null? _rest1233612351_)
                                             (_K1234112360_)
                                             (_E1234012355_))))))
                                (let ((_try-match1233812379_
                                       (lambda ()
                                         (let ((_K1234212369_
                                                (lambda (_proc12367_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12367_))))
                                           (if (##pair? _rest1233612351_)
                                               (let ((_hd1234312372_
                                                      (##car _rest1233612351_))
                                                     (_tl1234412374_
                                                      (##cdr _rest1233612351_)))
                                                 (let ((_proc12377_
                                                        _hd1234312372_))
                                                   (if (##null? _tl1234412374_)
                                                       (_K1234212369_
                                                        _proc12377_)
                                                       (_try-match1233912363_))))
                                               (_try-match1233912363_))))))
                                  (let ((_K1234512384_
                                         (lambda (_core-id12382_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12382_))))
                                    (if (##pair? _rest1233612351_)
                                        (let ((_hd1234612387_
                                               (##car _rest1233612351_))
                                              (_tl1234712389_
                                               (##cdr _rest1233612351_)))
                                          (if (##eq? _hd1234612387_ '=>)
                                              (if (##pair? _tl1234712389_)
                                                  (let ((_hd1234812392_
                                                         (##car _tl1234712389_))
                                                        (_tl1234912394_
                                                         (##cdr _tl1234712389_)))
                                                    (let ((_core-id12397_
                                                           _hd1234812392_))
                                                      (if (##null? _tl1234912394_)
                                                          (_K1234512384_
                                                           _core-id12397_)
                                                          (_try-match1233812379_))))
                                                  (_try-match1233812379_))
                                              (_try-match1233812379_)))
                                        (_try-match1233812379_))))))))))))
                 (if (##pair? _bind1232012327_)
                     (let ((_hd1232412402_ (##car _bind1232012327_))
                           (_tl1232512404_ (##cdr _bind1232012327_)))
                       (let ((_id12407_ _hd1232412402_))
                         (let ((_rest12409_ _tl1232512404_))
                           (_K1232312399_ _rest12409_ _id12407_))))
                     (_E1232212331_))))))
         _bindings12317_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12414_)
          (let ((_bindings12416_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12314
             _self12414_
             _bindings12416_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g12611_
          (let ((_g12610_ (length _g12611_)))
            (cond ((fx= _g12610_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g12611_))
                  ((fx= _g12610_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12314
                          _g12611_))
                  (else (error "No clause matching arguments" _g12611_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
