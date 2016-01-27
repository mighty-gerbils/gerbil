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
    (let ((_@super10979_
           (let ((_$super10973_
                  (make-promise
                   (lambda ()
                     (let ((_$e10970_
                            (struct-find-next-method
                             gx#root-context::t
                             ':init!)))
                       (if _$e10970_
                           _$e10970_
                           (error '"Cannot find super method"
                                  gx#root-context::t
                                  ':init!)))))))
             (lambda _$args10976_
               (apply (force _$super10973_) _$args10976_)))))
      (let ((_opt-lambda1098010985_
             (lambda (_self10982_ _bind?10983_)
               (begin
                 (direct-struct-instance-init!
                  _self10982_
                  'root
                  (make-hash-table-eq))
                 (if _bind?10983_
                     (begin
                       (call-method _self10982_ 'bind-core-syntax-expanders!)
                       (call-method _self10982_ 'bind-core-macro-expanders!))
                     '#!void)))))
        (lambda _g12609_
          (let ((_g12608_ (length _g12609_)))
            (cond ((fx= _g12608_ 1)
                   (apply (lambda (_self10988_)
                            (let ((_bind?10990_ '#t))
                              (_opt-lambda1098010985_
                               _self10988_
                               _bind?10990_)))
                          _g12609_))
                  ((fx= _g12608_ 2)
                   (apply (lambda (_self10992_ _bind?10993_)
                            (_opt-lambda1098010985_ _self10992_ _bind?10993_))
                          _g12609_))
                  (else (error "No clause matching arguments" _g12609_))))))))
  (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
  (define gx#top-context:::init!
    (let ((_@super10945_
           (let ((_$super10939_
                  (make-promise
                   (lambda ()
                     (let ((_$e10936_
                            (struct-find-next-method
                             gx#top-context::t
                             ':init!)))
                       (if _$e10936_
                           _$e10936_
                           (error '"Cannot find super method"
                                  gx#top-context::t
                                  ':init!)))))))
             (lambda _$args10942_
               (apply (force _$super10939_) _$args10942_)))))
      (let ((_opt-lambda1094610959_
             (lambda (_self10948_ _super10949_)
               (let ((_super10957_
                      (let ((_$e10951_ _super10949_))
                        (if _$e10951_
                            _$e10951_
                            (let ((_$e10954_ (gx#core-context-root)))
                              (if _$e10954_
                                  _$e10954_
                                  (gx#make-root-context)))))))
                 (direct-struct-instance-init!
                  _self10948_
                  'top
                  (make-hash-table-eq)
                  _super10957_
                  '#f
                  '#f)))))
        (lambda _g12611_
          (let ((_g12610_ (length _g12611_)))
            (cond ((fx= _g12610_ 1)
                   (apply (lambda (_self10962_)
                            (let ((_super10964_ '#f))
                              (_opt-lambda1094610959_
                               _self10962_
                               _super10964_)))
                          _g12611_))
                  ((fx= _g12610_ 2)
                   (apply (lambda (_self10966_ _super10967_)
                            (_opt-lambda1094610959_ _self10966_ _super10967_))
                          _g12611_))
                  (else (error "No clause matching arguments" _g12611_))))))))
  (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
  (define gx#expander-context::bind-core-syntax-expanders!
    (let ((_@super10786_
           (let ((_$super10780_
                  (make-promise
                   (lambda ()
                     (let ((_$e10777_
                            (struct-find-next-method
                             gx#expander-context::t
                             'bind-core-syntax-expanders!)))
                       (if _$e10777_
                           _$e10777_
                           (error '"Cannot find super method"
                                  gx#expander-context::t
                                  'bind-core-syntax-expanders!)))))))
             (lambda _$args10783_
               (apply (force _$super10780_) _$args10783_)))))
      (let ((_opt-lambda1078710925_
             (lambda (_self10789_ _bindings10790_)
               (for-each
                (lambda (_bind10792_)
                  (let ((_bind1079310800_ _bind10792_))
                    (let ((_E1079510804_
                           (lambda ()
                             (error '"No clause matching" _bind1079310800_))))
                      (let ((_K1079610913_
                             (lambda (_rest10807_ _id10808_)
                               (gx#core-context-put!
                                _self10789_
                                _id10808_
                                (gx#make-syntax-binding
                                 _id10808_
                                 _id10808_
                                 '#f
                                 (let ((_rest1080910820_ _rest10807_))
                                   (let ((_E1081110824_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest1080910820_))))
                                     (let ((_K1081210889_
                                            (lambda (_compiler10827_
                                                     _expander10828_
                                                     _key10829_)
                                              ((let ((_key1083010843_
                                                      _key10829_))
                                                 (let ((_E1083610847_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _key1083010843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_try-match1083510855_
                                                          (lambda ()
                                                            (let ((_K1083710852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda () gx#make-expression-form)))
                      (if (##eq? _key1083010843_ 'expr:)
                          (_K1083710852_)
                          (_E1083610847_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_try-match1083410863_
                                                            (lambda ()
                                                              (let ((_K1083810860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda () gx#make-special-form)))
                        (if (##eq? _key1083010843_ 'special:)
                            (_K1083810860_)
                            (_try-match1083510855_))))))
               (let ((_try-match1083310871_
                      (lambda ()
                        (let ((_K1083910868_
                               (lambda () gx#make-definition-form)))
                          (if (##eq? _key1083010843_ 'define:)
                              (_K1083910868_)
                              (_try-match1083410863_))))))
                 (let ((_try-match1083210879_
                        (lambda ()
                          (let ((_K1084010876_
                                 (lambda () gx#make-module-special-form)))
                            (if (##eq? _key1083010843_ 'module:)
                                (_K1084010876_)
                                (_try-match1083310871_))))))
                   (let ((_K1084110883_ (lambda () gx#make-top-special-form)))
                     (if (##eq? _key1083010843_ 'top:)
                         (_K1084110883_)
                         (_try-match1083210879_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _expander10828_
                                               _id10808_
                                               (let ((_$e10886_
                                                      _compiler10827_))
                                                 (if _$e10886_
                                                     _$e10886_
                                                     gx#core-compile-top-error))))))
                                       (if (##pair? _rest1080910820_)
                                           (let ((_hd1081310892_
                                                  (##car _rest1080910820_))
                                                 (_tl1081410894_
                                                  (##cdr _rest1080910820_)))
                                             (let ((_key10897_ _hd1081310892_))
                                               (if (##pair? _tl1081410894_)
                                                   (let ((_hd1081510899_
                                                          (##car _tl1081410894_))
                                                         (_tl1081610901_
                                                          (##cdr _tl1081410894_)))
                                                     (let ((_expander10904_
                                                            _hd1081510899_))
                                                       (if (##pair? _tl1081610901_)
                                                           (let ((_hd1081710906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##car _tl1081610901_))
                         (_tl1081810908_ (##cdr _tl1081610901_)))
                     (let ((_compiler10911_ _hd1081710906_))
                       (if (##null? _tl1081810908_)
                           (_K1081210889_
                            _compiler10911_
                            _expander10904_
                            _key10897_)
                           (_E1081110824_))))
                   (_E1081110824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1081110824_))))
                                           (_E1081110824_))))))))))
                        (if (##pair? _bind1079310800_)
                            (let ((_hd1079710916_ (##car _bind1079310800_))
                                  (_tl1079810918_ (##cdr _bind1079310800_)))
                              (let ((_id10921_ _hd1079710916_))
                                (let ((_rest10923_ _tl1079810918_))
                                  (_K1079610913_ _rest10923_ _id10921_))))
                            (_E1079510804_))))))
                _bindings10790_))))
        (lambda _g12613_
          (let ((_g12612_ (length _g12613_)))
            (cond ((fx= _g12612_ 1)
                   (apply (lambda (_self10928_)
                            (let ((_bindings10930_ gx#*core-syntax-expanders*))
                              (_opt-lambda1078710925_
                               _self10928_
                               _bindings10930_)))
                          _g12613_))
                  ((fx= _g12612_ 2)
                   (apply (lambda (_self10932_ _bindings10933_)
                            (_opt-lambda1078710925_
                             _self10932_
                             _bindings10933_))
                          _g12613_))
                  (else (error "No clause matching arguments" _g12613_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-syntax-expanders!
   gx#expander-context::bind-core-syntax-expanders!
   '#f)
  (define gx#expander-context::bind-core-macro-expanders!
    (let ((_@super10668_
           (let ((_$super10662_
                  (make-promise
                   (lambda ()
                     (let ((_$e10659_
                            (struct-find-next-method
                             gx#expander-context::t
                             'bind-core-macro-expanders!)))
                       (if _$e10659_
                           _$e10659_
                           (error '"Cannot find super method"
                                  gx#expander-context::t
                                  'bind-core-macro-expanders!)))))))
             (lambda _$args10665_
               (apply (force _$super10662_) _$args10665_)))))
      (let ((_opt-lambda1066910766_
             (lambda (_self10671_ _bindings10672_)
               (for-each
                (lambda (_bind10674_)
                  (let ((_bind1067510682_ _bind10674_))
                    (let ((_E1067710686_
                           (lambda ()
                             (error '"No clause matching" _bind1067510682_))))
                      (let ((_K1067810754_
                             (lambda (_rest10689_ _id10690_)
                               (gx#core-context-put!
                                _self10671_
                                _id10690_
                                (gx#make-syntax-binding
                                 _id10690_
                                 _id10690_
                                 '#f
                                 (let ((_rest1069110706_ _rest10689_))
                                   (let ((_E1069510710_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest1069110706_))))
                                     (let ((_try-match1069410718_
                                            (lambda ()
                                              (let ((_K1069610715_
                                                     (lambda ()
                                                       (gx#make-reserved-expander
                                                        _id10690_))))
                                                (if (##null? _rest1069110706_)
                                                    (_K1069610715_)
                                                    (_E1069510710_))))))
                                       (let ((_try-match1069310734_
                                              (lambda ()
                                                (let ((_K1069710724_
                                                       (lambda (_proc10722_)
                                                         (gx#make-macro-expander
                                                          _proc10722_))))
                                                  (if (##pair? _rest1069110706_)
                                                      (let ((_hd1069810727_
                                                             (##car _rest1069110706_))
                                                            (_tl1069910729_
                                                             (##cdr _rest1069110706_)))
                                                        (let ((_proc10732_
                                                               _hd1069810727_))
                                                          (if (##null? _tl1069910729_)
                                                              (_K1069710724_
                                                               _proc10732_)
                                                              (_try-match1069410718_))))
                                                      (_try-match1069410718_))))))
                                         (let ((_K1070010739_
                                                (lambda (_core-id10737_)
                                                  (gx#make-rename-macro-expander
                                                   _core-id10737_))))
                                           (if (##pair? _rest1069110706_)
                                               (let ((_hd1070110742_
                                                      (##car _rest1069110706_))
                                                     (_tl1070210744_
                                                      (##cdr _rest1069110706_)))
                                                 (if (##eq? _hd1070110742_ '=>)
                                                     (if (##pair? _tl1070210744_)
                                                         (let ((_hd1070310747_
                                                                (##car _tl1070210744_))
                                                               (_tl1070410749_
                                                                (##cdr _tl1070210744_)))
                                                           (let ((_core-id10752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1070310747_))
                     (if (##null? _tl1070410749_)
                         (_K1070010739_ _core-id10752_)
                         (_try-match1069310734_))))
                 (_try-match1069310734_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_try-match1069310734_)))
                                               (_try-match1069310734_))))))))))))
                        (if (##pair? _bind1067510682_)
                            (let ((_hd1067910757_ (##car _bind1067510682_))
                                  (_tl1068010759_ (##cdr _bind1067510682_)))
                              (let ((_id10762_ _hd1067910757_))
                                (let ((_rest10764_ _tl1068010759_))
                                  (_K1067810754_ _rest10764_ _id10762_))))
                            (_E1067710686_))))))
                _bindings10672_))))
        (lambda _g12615_
          (let ((_g12614_ (length _g12615_)))
            (cond ((fx= _g12614_ 1)
                   (apply (lambda (_self10769_)
                            (let ((_bindings10771_ gx#*core-macro-expanders*))
                              (_opt-lambda1066910766_
                               _self10769_
                               _bindings10771_)))
                          _g12615_))
                  ((fx= _g12614_ 2)
                   (apply (lambda (_self10773_ _bindings10774_)
                            (_opt-lambda1066910766_
                             _self10773_
                             _bindings10774_))
                          _g12615_))
                  (else (error "No clause matching arguments" _g12615_))))))))
  (bind-method!
   gx#expander-context::t
   'bind-core-macro-expanders!
   gx#expander-context::bind-core-macro-expanders!
   '#f))
