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
    (define gx#root-context:::init!__opt-lambda12519
      (lambda (_self12521_ _bind?12522_)
        (begin
          (direct-struct-instance-init! _self12521_ 'root (make-hash-table-eq))
          (if _bind?12522_
              (begin
                (call-method _self12521_ 'bind-core-syntax-expanders!)
                (call-method _self12521_ 'bind-core-macro-expanders!))
              '#!void))))
    (begin
      (define gx#root-context:::init!__0
        (lambda (_self12527_)
          (let ((_bind?12529_ '#t))
            (gx#root-context:::init!__opt-lambda12519
             _self12527_
             _bind?12529_))))
      (define gx#root-context:::init!
        (lambda _g12535_
          (let ((_g12534_ (length _g12535_)))
            (cond ((fx= _g12534_ 1)
                   (apply gx#root-context:::init!__0 _g12535_))
                  ((fx= _g12534_ 2)
                   (apply gx#root-context:::init!__opt-lambda12519 _g12535_))
                  (else (error "No clause matching arguments" _g12535_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (begin
    (define gx#top-context:::init!__opt-lambda12497
      (lambda (_self12499_ _super12500_)
        (let ((_super12508_
               (let ((_$e12502_ _super12500_))
                 (if _$e12502_
                     _$e12502_
                     (let ((_$e12505_ (gx#core-context-root__0)))
                       (if _$e12505_
                           _$e12505_
                           (let ((__obj12533
                                  (make-object gx#root-context::t '2)))
                             (begin
                               (gx#root-context:::init!__0 __obj12533)
                               __obj12533))))))))
          (direct-struct-instance-init!
           _self12499_
           'top
           (make-hash-table-eq)
           _super12508_
           '#f
           '#f))))
    (begin
      (define gx#top-context:::init!__0
        (lambda (_self12513_)
          (let ((_super12515_ '#f))
            (gx#top-context:::init!__opt-lambda12497
             _self12513_
             _super12515_))))
      (define gx#top-context:::init!
        (lambda _g12537_
          (let ((_g12536_ (length _g12537_)))
            (cond ((fx= _g12536_ 1) (apply gx#top-context:::init!__0 _g12537_))
                  ((fx= _g12536_ 2)
                   (apply gx#top-context:::init!__opt-lambda12497 _g12537_))
                  (else (error "No clause matching arguments" _g12537_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (begin
    (define gx#expander-context::bind-core-syntax-expanders!__opt-lambda12350
      (lambda (_self12352_ _bindings12353_)
        (for-each
         (lambda (_bind12355_)
           (let ((_bind1235612363_ _bind12355_))
             (let ((_E1235812367_
                    (lambda ()
                      (error '"No clause matching" _bind1235612363_))))
               (let ((_K1235912476_
                      (lambda (_rest12370_ _id12371_)
                        (gx#core-context-put!
                         _self12352_
                         _id12371_
                         (##structure
                          gx#syntax-binding::t
                          _id12371_
                          _id12371_
                          '#f
                          (let ((_rest1237212383_ _rest12370_))
                            (let ((_E1237412387_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1237212383_))))
                              (let ((_K1237512452_
                                     (lambda (_compiler12390_
                                              _expander12391_
                                              _key12392_)
                                       ((let ((_key1239312406_ _key12392_))
                                          (let ((_E1239912410_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _key1239312406_))))
                                            (let ((_try-match1239812418_
                                                   (lambda ()
                                                     (let ((_K1240012415_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _key1239312406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_K1240012415_)
                   (_E1239912410_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_try-match1239712426_
                                                     (lambda ()
                                                       (let ((_K1240112423_
                                                              (lambda ()
                                                                gx#make-special-form)))
                                                         (if (##eq? _key1239312406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'special:)
                     (_K1240112423_)
                     (_try-match1239812418_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_try-match1239612434_
                                                       (lambda ()
                                                         (let ((_K1240212431_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#make-definition-form)))
                   (if (##eq? _key1239312406_ 'define:)
                       (_K1240212431_)
                       (_try-match1239712426_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_try-match1239512442_
                                                         (lambda ()
                                                           (let ((_K1240312439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda () gx#make-module-special-form)))
                     (if (##eq? _key1239312406_ 'module:)
                         (_K1240312439_)
                         (_try-match1239612434_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1240412446_
                                                           (lambda ()
                                                             gx#make-top-special-form)))
                                                      (if (##eq? _key1239312406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'top:)
                  (_K1240412446_)
                  (_try-match1239512442_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _expander12391_
                                        _id12371_
                                        (let ((_$e12449_ _compiler12390_))
                                          (if _$e12449_
                                              _$e12449_
                                              gx#core-compile-top-error))))))
                                (if (##pair? _rest1237212383_)
                                    (let ((_hd1237612455_
                                           (##car _rest1237212383_))
                                          (_tl1237712457_
                                           (##cdr _rest1237212383_)))
                                      (let ((_key12460_ _hd1237612455_))
                                        (if (##pair? _tl1237712457_)
                                            (let ((_hd1237812462_
                                                   (##car _tl1237712457_))
                                                  (_tl1237912464_
                                                   (##cdr _tl1237712457_)))
                                              (let ((_expander12467_
                                                     _hd1237812462_))
                                                (if (##pair? _tl1237912464_)
                                                    (let ((_hd1238012469_
                                                           (##car _tl1237912464_))
                                                          (_tl1238112471_
                                                           (##cdr _tl1237912464_)))
                                                      (let ((_compiler12474_
                                                             _hd1238012469_))
                                                        (if (##null? _tl1238112471_)
                                                            (_K1237512452_
                                                             _compiler12474_
                                                             _expander12467_
                                                             _key12460_)
                                                            (_E1237412387_))))
                                                    (_E1237412387_))))
                                            (_E1237412387_))))
                                    (_E1237412387_))))))))))
                 (if (##pair? _bind1235612363_)
                     (let ((_hd1236012479_ (##car _bind1235612363_))
                           (_tl1236112481_ (##cdr _bind1235612363_)))
                       (let ((_id12484_ _hd1236012479_))
                         (let ((_rest12486_ _tl1236112481_))
                           (_K1235912476_ _rest12486_ _id12484_))))
                     (_E1235812367_))))))
         _bindings12353_)))
    (begin
      (define gx#expander-context::bind-core-syntax-expanders!__0
        (lambda (_self12491_)
          (let ((_bindings12493_ gx#*core-syntax-expanders*))
            (gx#expander-context::bind-core-syntax-expanders!__opt-lambda12350
             _self12491_
             _bindings12493_))))
      (define gx#expander-context::bind-core-syntax-expanders!
        (lambda _g12539_
          (let ((_g12538_ (length _g12539_)))
            (cond ((fx= _g12538_ 1)
                   (apply gx#expander-context::bind-core-syntax-expanders!__0
                          _g12539_))
                  ((fx= _g12538_ 2)
                   (apply gx#expander-context::bind-core-syntax-expanders!__opt-lambda12350
                          _g12539_))
                  (else (error "No clause matching arguments" _g12539_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (begin
    (define gx#expander-context::bind-core-macro-expanders!__opt-lambda12244
      (lambda (_self12246_ _bindings12247_)
        (for-each
         (lambda (_bind12249_)
           (let ((_bind1225012257_ _bind12249_))
             (let ((_E1225212261_
                    (lambda ()
                      (error '"No clause matching" _bind1225012257_))))
               (let ((_K1225312329_
                      (lambda (_rest12264_ _id12265_)
                        (gx#core-context-put!
                         _self12246_
                         _id12265_
                         (##structure
                          gx#syntax-binding::t
                          _id12265_
                          _id12265_
                          '#f
                          (let ((_rest1226612281_ _rest12264_))
                            (let ((_E1227012285_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _rest1226612281_))))
                              (let ((_try-match1226912293_
                                     (lambda ()
                                       (let ((_K1227112290_
                                              (lambda ()
                                                (##structure
                                                 gx#reserved-expander::t
                                                 _id12265_))))
                                         (if (##null? _rest1226612281_)
                                             (_K1227112290_)
                                             (_E1227012285_))))))
                                (let ((_try-match1226812309_
                                       (lambda ()
                                         (let ((_K1227212299_
                                                (lambda (_proc12297_)
                                                  (##structure
                                                   gx#macro-expander::t
                                                   _proc12297_))))
                                           (if (##pair? _rest1226612281_)
                                               (let ((_hd1227312302_
                                                      (##car _rest1226612281_))
                                                     (_tl1227412304_
                                                      (##cdr _rest1226612281_)))
                                                 (let ((_proc12307_
                                                        _hd1227312302_))
                                                   (if (##null? _tl1227412304_)
                                                       (_K1227212299_
                                                        _proc12307_)
                                                       (_try-match1226912293_))))
                                               (_try-match1226912293_))))))
                                  (let ((_K1227512314_
                                         (lambda (_core-id12312_)
                                           (##structure
                                            gx#rename-macro-expander::t
                                            _core-id12312_))))
                                    (if (##pair? _rest1226612281_)
                                        (let ((_hd1227612317_
                                               (##car _rest1226612281_))
                                              (_tl1227712319_
                                               (##cdr _rest1226612281_)))
                                          (if (##eq? _hd1227612317_ '=>)
                                              (if (##pair? _tl1227712319_)
                                                  (let ((_hd1227812322_
                                                         (##car _tl1227712319_))
                                                        (_tl1227912324_
                                                         (##cdr _tl1227712319_)))
                                                    (let ((_core-id12327_
                                                           _hd1227812322_))
                                                      (if (##null? _tl1227912324_)
                                                          (_K1227512314_
                                                           _core-id12327_)
                                                          (_try-match1226812309_))))
                                                  (_try-match1226812309_))
                                              (_try-match1226812309_)))
                                        (_try-match1226812309_))))))))))))
                 (if (##pair? _bind1225012257_)
                     (let ((_hd1225412332_ (##car _bind1225012257_))
                           (_tl1225512334_ (##cdr _bind1225012257_)))
                       (let ((_id12337_ _hd1225412332_))
                         (let ((_rest12339_ _tl1225512334_))
                           (_K1225312329_ _rest12339_ _id12337_))))
                     (_E1225212261_))))))
         _bindings12247_)))
    (begin
      (define gx#expander-context::bind-core-macro-expanders!__0
        (lambda (_self12344_)
          (let ((_bindings12346_ gx#*core-macro-expanders*))
            (gx#expander-context::bind-core-macro-expanders!__opt-lambda12244
             _self12344_
             _bindings12346_))))
      (define gx#expander-context::bind-core-macro-expanders!
        (lambda _g12541_
          (let ((_g12540_ (length _g12541_)))
            (cond ((fx= _g12540_ 1)
                   (apply gx#expander-context::bind-core-macro-expanders!__0
                          _g12541_))
                  ((fx= _g12540_ 2)
                   (apply gx#expander-context::bind-core-macro-expanders!__opt-lambda12244
                          _g12541_))
                  (else (error "No clause matching arguments" _g12541_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
