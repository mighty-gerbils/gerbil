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
  (begin
    (define gx#root-context:::init!__opt-lambda12595
      (lambda (_self12597_ _bind?12598_)
        (begin
          (direct-struct-instance-init! _self12597_ 'root (make-hash-table-eq))
          (if _bind?12598_
              (begin
                (call-method _self12597_ 'bind-core-syntax-expanders!)
                (call-method _self12597_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self12603_)
          (let ((_bind?12605_ '#t))
            (gx#root-context:::init!__opt-lambda12595
             _self12603_
             _bind?12605_))))
      (define gx#root-context:::init!
        (lambda _g12611_
          (let ((_g12610_ (length _g12611_)))
            (cond ((fx= _g12610_ 1)
                   (apply gx#root-context:::init!__0 _g12611_))
                  ((fx= _g12610_ 2)
                   (apply gx#root-context:::init!__opt-lambda12595 _g12611_))
                  (else (error "No clause matching arguments" _g12611_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12573
      (lambda (_self12575_ _super12576_)
        (let ((_super12584_
               (let ((_$e12578_ _super12576_))
                 (if _$e12578_
                     _$e12578_
                     (let ((_$e12581_ (gx#core-context-root__0)))
                       (if _$e12581_
                           _$e12581_
                           (let ((__obj12609
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj12609)
                               __obj12609))))))))
          (direct-struct-instance-init!
           _self12575_
           'top
           (make-hash-table-eq)
           _super12584_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self12589_)
          (let ((_super12591_ '#f))
            (gx#top-context:::init!__opt-lambda12573
             _self12589_
             _super12591_))))
      (define gx#top-context:::init!
        (lambda _g12613_
          (let ((_g12612_ (length _g12613_)))
            (cond ((fx= _g12612_ 1) (apply gx#top-context:::init!__0 _g12613_))
                  ((fx= _g12612_ 2)
                   (apply gx#top-context:::init!__opt-lambda12573 _g12613_))
                  (else (error "No clause matching arguments" _g12613_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12426
      (lambda (_self12428_ _bindings12429_)
        (for-each
         (lambda (_bind12431_)
           (let ((_bind1243212439_ _bind12431_))
             (let ((_E1243412443_
                    (lambda ()
                      (error '"No clause matching" _bind1243212439_))))
               (let ((_K1243512552_
                      (lambda (_rest12446_ _id12447_)
                        (gx#core-context-put!
                         _self12428_
                         _id12447_
                         (##structure
                          gx#syntax-binding::t
                          _id12447_
                          _id12447_
                          '#f
                          (let ((_rest1244812459_ _rest12446_))
                            (let ((_E1245012463_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1244812459_))))
                              (let ((_K1245112528_
                                     (lambda (_compiler12466_
                                              _expander12467_
                                              _key12468_)
                                       ((let ((_key1246912482_ _key12468_))
                                          (let ((_E1247512486_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1246912482_))))
                                            (let ((_try-match1247412494_
                                                   (lambda ()
                                                     (let ((_K1247612491_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1246912482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1247612491_)
                   (_E1247512486_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1247312502_
                                                     (lambda ()
                                                       (let ((_K1247712499_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1246912482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1247712499_)
                     (_try-match1247412494_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1247212510_
                                                       (lambda ()
                                                         (let ((_K1247812507_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1246912482_ 'define:)
                       (_K1247812507_)
                       (_try-match1247312502_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1247112518_
                                                         (lambda ()
                                                           (let ((_K1247912515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1246912482_ 'module:)
                         (_K1247912515_)
                         (_try-match1247212510_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1248012522_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1246912482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1248012522_)
                  (_try-match1247112518_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12467_
                                        _id12447_
                                        (let ((_$e12525_ _compiler12466_))
                                          (if _$e12525_
                                              _$e12525_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1244812459_)
                                    (let ((_hd1245212531_
                                           (##car _rest1244812459_))
                                          (_tl1245312533_
                                           (##cdr _rest1244812459_)))
                                      (let ((_key12536_ _hd1245212531_))
                                        (if (##pair? _tl1245312533_)
                                            (let ((_hd1245412538_
                                                   (##car _tl1245312533_))
                                                  (_tl1245512540_
                                                   (##cdr _tl1245312533_)))
                                              (let ((_expander12543_
                                                     _hd1245412538_))
                                                (if (##pair? _tl1245512540_)
                                                    (let ((_hd1245612545_
                                                           (##car _tl1245512540_))
                                                          (_tl1245712547_
                                                           (##cdr _tl1245512540_)))
                                                      (let ((_compiler12550_
                                                             _hd1245612545_))
                                                        (if (##null? _tl1245712547_)
                                                            (_K1245112528_
                                                             _compiler12550_
                                                             _expander12543_
                                                             _key12536_)
                                                            (_E1245012463_))))
                                                    (_E1245012463_))))
                                            (_E1245012463_))))
                                    (_E1245012463_))))))))))
                 (if (##pair? _bind1243212439_)
                     (let ((_hd1243612555_ (##car _bind1243212439_))
                           (_tl1243712557_ (##cdr _bind1243212439_)))
                       (let ((_id12560_ _hd1243612555_))
                         (let ((_rest12562_ _tl1243712557_))
                           (_K1243512552_ _rest12562_ _id12560_))))
                     (_E1243412443_))))))
         _bindings12429_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12567_)
          (let ((_bindings12569_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12426
             _self12567_
             _bindings12569_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g12615_
          (let ((_g12614_ (length _g12615_)))
            (cond ((fx= _g12614_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g12615_))
                  ((fx= _g12614_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12426
                          _g12615_))
                  (else (error "No clause matching arguments" _g12615_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12320
      (lambda (_self12322_ _bindings12323_)
        (for-each
         (lambda (_bind12325_)
           (let ((_bind1232612333_ _bind12325_))
             (let ((_E1232812337_
                    (lambda ()
                      (error '"No clause matching" _bind1232612333_))))
               (let ((_K1232912405_
                      (lambda (_rest12340_ _id12341_)
                        (gx#core-context-put!
                         _self12322_
                         _id12341_
                         (##structure
                          gx#syntax-binding::t
                          _id12341_
                          _id12341_
                          '#f
                          (let ((_rest1234212357_ _rest12340_))
                            (let ((_E1234612361_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1234212357_))))
                              (let ((_try-match1234512369_
                                     (lambda ()
                                       (let ((_K1234712366_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12341_))))
                                         (if (##null? _rest1234212357_)
                                             (_K1234712366_)
                                             (_E1234612361_))))))
                                (let ((_try-match1234412385_
                                       (lambda ()
                                         (let ((_K1234812375_
                                                (lambda (_proc12373_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12373_))))
                                           (if (##pair? _rest1234212357_)
                                               (let ((_hd1234912378_
                                                      (##car _rest1234212357_))
                                                     (_tl1235012380_
                                                      (##cdr _rest1234212357_)))
                                                 (let ((_proc12383_
                                                        _hd1234912378_))
                                                   (if (##null? _tl1235012380_)
                                                       (_K1234812375_
                                                        _proc12383_)
                                                       (_try-match1234512369_))))
                                               (_try-match1234512369_))))))
                                  (let ((_K1235112390_
                                         (lambda (_core-id12388_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12388_))))
                                    (if (##pair? _rest1234212357_)
                                        (let ((_hd1235212393_
                                               (##car _rest1234212357_))
                                              (_tl1235312395_
                                               (##cdr _rest1234212357_)))
                                          (if (##eq? _hd1235212393_ '=>)
                                              (if (##pair? _tl1235312395_)
                                                  (let ((_hd1235412398_
                                                         (##car _tl1235312395_))
                                                        (_tl1235512400_
                                                         (##cdr _tl1235312395_)))
                                                    (let ((_core-id12403_
                                                           _hd1235412398_))
                                                      (if (##null? _tl1235512400_)
                                                          (_K1235112390_
                                                           _core-id12403_)
                                                          (_try-match1234412385_))))
                                                  (_try-match1234412385_))
                                              (_try-match1234412385_)))
                                        (_try-match1234412385_))))))))))))
                 (if (##pair? _bind1232612333_)
                     (let ((_hd1233012408_ (##car _bind1232612333_))
                           (_tl1233112410_ (##cdr _bind1232612333_)))
                       (let ((_id12413_ _hd1233012408_))
                         (let ((_rest12415_ _tl1233112410_))
                           (_K1232912405_ _rest12415_ _id12413_))))
                     (_E1232812337_))))))
         _bindings12323_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12420_)
          (let ((_bindings12422_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12320
             _self12420_
             _bindings12422_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g12617_
          (let ((_g12616_ (length _g12617_)))
            (cond ((fx= _g12616_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g12617_))
                  ((fx= _g12616_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12320
                          _g12617_))
                  (else (error "No clause matching arguments" _g12617_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
