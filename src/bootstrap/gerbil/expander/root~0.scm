(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1710776832)
  (begin
    (declare (not safe))
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons '%#module
                                                      (cons 'top:
                                                            (cons gx#core-expand-module%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-compile-top-module% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#export
                                                            (cons 'top:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-expand-export%
                                (cons gx#core-compile-top-export% '()))))
              (cons (cons '%#provide
                          (cons 'module:
                                (cons gx#core-expand-provide%
                                      (cons gx#core-compile-top-provide%
                                            '()))))
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
                                  (cons gx#core-compile-top-define-alias%
                                        '()))))
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons '%#call
                                                      (cons 'expr:
                                                            (cons gx#core-expand-call%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-compile-top-call% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#if
                                                            (cons 'expr:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-expand-if%
                                (cons gx#core-compile-top-if% '()))))
              (cons (cons '%#ref
                          (cons 'expr:
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
                                                (cons '=>
                                                      (cons '%#module '())))
                                          (cons (cons 'export
                                                      (cons '=>
                                                            (cons '%#export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'provide
                                                            (cons '=>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#provide '())))
              (cons (cons 'declare (cons '=> (cons '%#declare '())))
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
                                        (cons gx#macro-expand-define-syntax
                                              '()))
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#begin-module '())))
              (cons (cons '_ '())
                    (cons (cons '... '())
                          (cons (cons 'else '())
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
    (define gx#root-context:::init!__%
      (lambda (_self97184_ _bind?97185_)
        (if (##fx< '2 (##structure-length _self97184_))
            (begin
              (##unchecked-structure-set!
               _self97184_
               'root
               '1
               (##structure-type _self97184_)
               '#f)
              (##unchecked-structure-set!
               _self97184_
               (make-hash-table-eq)
               '2
               (##structure-type _self97184_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self97184_
                   '2
                   (##vector-length _self97184_)))
        (if _bind?97185_
            (begin
              (let ((__method97236
                     (method-ref _self97184_ 'bind-core-syntax-expanders!)))
                (if __method97236
                    (__method97236 _self97184_)
                    (error '"Missing method"
                           _self97184_
                           'bind-core-syntax-expanders!)))
              (let ((__method97237
                     (method-ref _self97184_ 'bind-core-macro-expanders!)))
                (if __method97237
                    (__method97237 _self97184_)
                    (error '"Missing method"
                           _self97184_
                           'bind-core-macro-expanders!)))
              (let ((__method97238
                     (method-ref _self97184_ 'bind-core-features!)))
                (if __method97238
                    (__method97238 _self97184_)
                    (error '"Missing method"
                           _self97184_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self97190_)
        (let ((_bind?97192_ '#t))
          (gx#root-context:::init!__% _self97190_ _bind?97192_))))
    (define gx#root-context:::init!
      (lambda _g97241_
        (let ((_g97240_ (##length _g97241_)))
          (cond ((##fx= _g97240_ 1)
                 (apply (lambda (_self97190_)
                          (gx#root-context:::init!__0 _self97190_))
                        _g97241_))
                ((##fx= _g97240_ 2)
                 (apply (lambda (_self97194_ _bind?97195_)
                          (gx#root-context:::init!__%
                           _self97194_
                           _bind?97195_))
                        _g97241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g97241_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass97196 __method-table97197)
        (let ((__bind-core-syntax-expanders!97198
               (make-promise
                (lambda ()
                  (let ((__method97201
                         (symbolic-table-ref
                          __method-table97197
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method97201
                        __method97201
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!97199
               (make-promise
                (lambda ()
                  (let ((__method97202
                         (symbolic-table-ref
                          __method-table97197
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method97202
                        __method97202
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!97200
               (make-promise
                (lambda ()
                  (let ((__method97203
                         (symbolic-table-ref
                          __method-table97197
                          'bind-core-features!
                          '#f)))
                    (if __method97203
                        __method97203
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda9718297187_
                 (lambda (_self97184_ _bind?97185_)
                   (if (##fx< '2 (##structure-length _self97184_))
                       (begin
                         (##unchecked-structure-set!
                          _self97184_
                          'root
                          '1
                          (##structure-type _self97184_)
                          '#f)
                         (##unchecked-structure-set!
                          _self97184_
                          (make-hash-table-eq)
                          '2
                          (##structure-type _self97184_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self97184_
                              '2
                              (##vector-length _self97184_)))
                   (if _bind?97185_
                       (begin
                         ((force __bind-core-syntax-expanders!97198)
                          _self97184_)
                         ((force __bind-core-macro-expanders!97199)
                          _self97184_)
                         ((force __bind-core-features!97200) _self97184_))
                       '#!void))))
            (lambda _g97243_
              (let ((_g97242_ (##length _g97243_)))
                (cond ((##fx= _g97242_ 1)
                       (apply (lambda (_self97190_)
                                (let ((_bind?97192_ '#t))
                                  (_opt-lambda9718297187_
                                   _self97190_
                                   _bind?97192_)))
                              _g97243_))
                      ((##fx= _g97242_ 2)
                       (apply (lambda (_self97194_ _bind?97195_)
                                (_opt-lambda9718297187_
                                 _self97194_
                                 _bind?97195_))
                              _g97243_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g97243_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self97040_ _super97041_)
        (let ((_super97049_
               (let ((_$e97043_ _super97041_))
                 (if _$e97043_
                     _$e97043_
                     (let ((_$e97046_ (gx#core-context-root__0)))
                       (if _$e97046_
                           _$e97046_
                           (let ((__obj97239
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj97239)
                             __obj97239)))))))
          (if (##fx< '5 (##structure-length _self97040_))
              (begin
                (##unchecked-structure-set!
                 _self97040_
                 'top
                 '1
                 (##structure-type _self97040_)
                 '#f)
                (##unchecked-structure-set!
                 _self97040_
                 (make-hash-table-eq)
                 '2
                 (##structure-type _self97040_)
                 '#f)
                (##unchecked-structure-set!
                 _self97040_
                 _super97049_
                 '3
                 (##structure-type _self97040_)
                 '#f)
                (##unchecked-structure-set!
                 _self97040_
                 '#f
                 '4
                 (##structure-type _self97040_)
                 '#f)
                (##unchecked-structure-set!
                 _self97040_
                 '#f
                 '5
                 (##structure-type _self97040_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self97040_
                     '5
                     (##vector-length _self97040_))))))
    (define gx#top-context:::init!__0
      (lambda (_self97054_)
        (let ((_super97056_ '#f))
          (gx#top-context:::init!__% _self97054_ _super97056_))))
    (define gx#top-context:::init!
      (lambda _g97245_
        (let ((_g97244_ (##length _g97245_)))
          (cond ((##fx= _g97244_ 1)
                 (apply (lambda (_self97054_)
                          (gx#top-context:::init!__0 _self97054_))
                        _g97245_))
                ((##fx= _g97244_ 2)
                 (apply (lambda (_self97058_ _super97059_)
                          (gx#top-context:::init!__% _self97058_ _super97059_))
                        _g97245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g97245_))))))
    (bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self96771_ _bindings96772_)
        (for-each
         (lambda (_bind96774_)
           (let* ((_bind9677596782_ _bind96774_)
                  (_E9677796786_
                   (lambda () (error '"No clause matching" _bind9677596782_)))
                  (_K9677896895_
                   (lambda (_rest96789_ _id96790_)
                     (gx#core-context-put!
                      _self96771_
                      _id96790_
                      (##structure
                       gx#syntax-binding::t
                       _id96790_
                       _id96790_
                       '#f
                       (let* ((_rest9679196802_ _rest96789_)
                              (_E9679396806_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9679196802_)))
                              (_K9679496871_
                               (lambda (_compiler96809_
                                        _expander96810_
                                        _key96811_)
                                 ((let* ((_key9681296825_ _key96811_)
                                         (_E9681896829_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key9681296825_))))
                                    (let ((_K9682396865_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K9682296858_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K9682196850_
                                           (lambda () gx#make-definition-form))
                                          (_K9682096842_
                                           (lambda () gx#make-special-form))
                                          (_K9681996834_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match9681796837_
                                              (lambda ()
                                                (if (##eq? _key9681296825_
                                                           'expr:)
                                                    (_K9681996834_)
                                                    (_E9681896829_))))
                                             (_try-match9681696845_
                                              (lambda ()
                                                (if (##eq? _key9681296825_
                                                           'special:)
                                                    (_K9682096842_)
                                                    (_try-match9681796837_))))
                                             (_try-match9681596853_
                                              (lambda ()
                                                (if (##eq? _key9681296825_
                                                           'define:)
                                                    (_K9682196850_)
                                                    (_try-match9681696845_))))
                                             (_try-match9681496861_
                                              (lambda ()
                                                (if (##eq? _key9681296825_
                                                           'module:)
                                                    (_K9682296858_)
                                                    (_try-match9681596853_)))))
                                        (if (##eq? _key9681296825_ 'top:)
                                            (_K9682396865_)
                                            (_try-match9681496861_)))))
                                  _expander96810_
                                  _id96790_
                                  (let ((_$e96868_ _compiler96809_))
                                    (if _$e96868_
                                        _$e96868_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest9679196802_)
                             (let ((_hd9679596874_ (##car _rest9679196802_))
                                   (_tl9679696876_ (##cdr _rest9679196802_)))
                               (let ((_key96879_ _hd9679596874_))
                                 (if (##pair? _tl9679696876_)
                                     (let ((_hd9679796881_
                                            (##car _tl9679696876_))
                                           (_tl9679896883_
                                            (##cdr _tl9679696876_)))
                                       (let ((_expander96886_ _hd9679796881_))
                                         (if (##pair? _tl9679896883_)
                                             (let ((_hd9679996888_
                                                    (##car _tl9679896883_))
                                                   (_tl9680096890_
                                                    (##cdr _tl9679896883_)))
                                               (let ((_compiler96893_
                                                      _hd9679996888_))
                                                 (if (##null? _tl9680096890_)
                                                     (_K9679496871_
                                                      _compiler96893_
                                                      _expander96886_
                                                      _key96879_)
                                                     (_E9679396806_))))
                                             (_E9679396806_))))
                                     (_E9679396806_))))
                             (_E9679396806_))))))))
             (if (##pair? _bind9677596782_)
                 (let ((_hd9677996898_ (##car _bind9677596782_))
                       (_tl9678096900_ (##cdr _bind9677596782_)))
                   (let* ((_id96903_ _hd9677996898_)
                          (_rest96905_ _tl9678096900_))
                     (_K9677896895_ _rest96905_ _id96903_)))
                 (_E9677796786_))))
         _bindings96772_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self96910_)
        (let ((_bindings96912_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self96910_
           _bindings96912_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g97247_
        (let ((_g97246_ (##length _g97247_)))
          (cond ((##fx= _g97246_ 1)
                 (apply (lambda (_self96910_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self96910_))
                        _g97247_))
                ((##fx= _g97246_ 2)
                 (apply (lambda (_self96914_ _bindings96915_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self96914_
                           _bindings96915_))
                        _g97247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g97247_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self96543_ _bindings96544_)
        (for-each
         (lambda (_bind96546_)
           (let* ((_bind9654796554_ _bind96546_)
                  (_E9654996558_
                   (lambda () (error '"No clause matching" _bind9654796554_)))
                  (_K9655096626_
                   (lambda (_rest96561_ _id96562_)
                     (gx#core-context-put!
                      _self96543_
                      _id96562_
                      (##structure
                       gx#syntax-binding::t
                       _id96562_
                       _id96562_
                       '#f
                       (let* ((_rest9656396578_ _rest96561_)
                              (_E9656796582_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest9656396578_))))
                         (let ((_K9657296611_
                                (lambda (_core-id96609_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id96609_)))
                               (_K9656996596_
                                (lambda (_proc96594_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc96594_)))
                               (_K9656896587_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id96562_))))
                           (let ((_try-match9656696590_
                                  (lambda ()
                                    (if (##null? _rest9656396578_)
                                        (_K9656896587_)
                                        (_E9656796582_)))))
                             (if (##pair? _rest9656396578_)
                                 (let ((_tl9657496616_
                                        (##cdr _rest9656396578_))
                                       (_hd9657396614_
                                        (##car _rest9656396578_)))
                                   (if (##eq? _hd9657396614_ '=>)
                                       (if (##pair? _tl9657496616_)
                                           (let ((_tl9657696621_
                                                  (##cdr _tl9657496616_))
                                                 (_hd9657596619_
                                                  (##car _tl9657496616_)))
                                             (if (##null? _tl9657696621_)
                                                 (let ((_core-id96624_
                                                        _hd9657596619_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id96624_))
                                                 (_E9656796582_)))
                                           (if (##null? _tl9657496616_)
                                               (let ((_proc96604_
                                                      _hd9657396614_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc96604_))
                                               (_E9656796582_)))
                                       (if (##null? _tl9657496616_)
                                           (let ((_proc96604_ _hd9657396614_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc96604_))
                                           (_E9656796582_))))
                                 (_try-match9656696590_))))))))))
             (if (##pair? _bind9654796554_)
                 (let ((_hd9655196629_ (##car _bind9654796554_))
                       (_tl9655296631_ (##cdr _bind9654796554_)))
                   (let* ((_id96634_ _hd9655196629_)
                          (_rest96636_ _tl9655296631_))
                     (_K9655096626_ _rest96636_ _id96634_)))
                 (_E9654996558_))))
         _bindings96544_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self96641_)
        (let ((_bindings96643_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self96641_
           _bindings96643_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g97249_
        (let ((_g97248_ (##length _g97249_)))
          (cond ((##fx= _g97248_ 1)
                 (apply (lambda (_self96641_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self96641_))
                        _g97249_))
                ((##fx= _g97248_ 2)
                 (apply (lambda (_self96645_ _bindings96646_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self96645_
                           _bindings96646_))
                        _g97249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g97249_))))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self96287_)
        (letrec ((_linux-variant?96289_
                  (lambda (_sys-type96388_)
                    (let* ((_g9638996397_
                            (string-split
                             (symbol->string _sys-type96388_)
                             '#\-))
                           (_else9639196405_ (lambda () '#f))
                           (_K9639396410_
                            (lambda (_rest96408_) (not (null? _rest96408_)))))
                      (if (##pair? _g9638996397_)
                          (let ((_hd9639496413_ (##car _g9638996397_))
                                (_tl9639596415_ (##cdr _g9638996397_)))
                            (if (equal? _hd9639496413_ '"linux")
                                (let ((_rest96418_ _tl9639596415_))
                                  (_K9639396410_ _rest96418_))
                                (_else9639196405_)))
                          (_else9639196405_)))))
                 (_bsd-variant96290_
                  (lambda (_sys-type96347_)
                    (let ((_sys-type-str96349_
                           (symbol->string _sys-type96347_)))
                      (let _lp96351_ ((_rest96353_
                                       '("openbsd"
                                         "netbsd"
                                         "freebsd"
                                         "darwin")))
                        (let* ((_rest9635496362_ _rest96353_)
                               (_else9635696370_ (lambda () '#f))
                               (_K9635896376_
                                (lambda (_rest96373_ _sys96374_)
                                  (if (string-prefix?
                                       _sys96374_
                                       _sys-type-str96349_)
                                      _sys96374_
                                      (_lp96351_ _rest96373_)))))
                          (if (##pair? _rest9635496362_)
                              (let ((_hd9635996379_ (##car _rest9635496362_))
                                    (_tl9636096381_ (##cdr _rest9635496362_)))
                                (let* ((_sys96384_ _hd9635996379_)
                                       (_rest96386_ _tl9636096381_))
                                  (_K9635896376_ _rest96386_ _sys96384_)))
                              (_else9635696370_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self96287_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self96287_)
          (let* ((_g9629196303_ (system-type))
                 (_else9629396311_ (lambda () '#!void))
                 (_K9629596323_
                  (lambda (_sys-type96314_ _sys-vendor96315_ _sys-cpu96316_)
                    (gx#core-bind-feature!__%
                     _sys-cpu96316_
                     '#f
                     '0
                     _self96287_)
                    (gx#core-bind-feature!__%
                     _sys-type96314_
                     '#f
                     '0
                     _self96287_)
                    (if (_linux-variant?96289_ _sys-type96314_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self96287_)
                        (let ((_$e96318_ (_bsd-variant96290_ _sys-type96314_)))
                          (if _$e96318_
                              ((lambda (_sys-prefix96321_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self96287_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix96321_)
                                  '#f
                                  '0
                                  _self96287_))
                               _$e96318_)
                              '#!void))))))
            (if (##pair? _g9629196303_)
                (let ((_hd9629696326_ (##car _g9629196303_))
                      (_tl9629796328_ (##cdr _g9629196303_)))
                  (let ((_sys-cpu96331_ _hd9629696326_))
                    (if (##pair? _tl9629796328_)
                        (let ((_hd9629896333_ (##car _tl9629796328_))
                              (_tl9629996335_ (##cdr _tl9629796328_)))
                          (let ((_sys-vendor96338_ _hd9629896333_))
                            (if (##pair? _tl9629996335_)
                                (let ((_hd9630096340_ (##car _tl9629996335_))
                                      (_tl9630196342_ (##cdr _tl9629996335_)))
                                  (let ((_sys-type96345_ _hd9630096340_))
                                    (if (##null? _tl9630196342_)
                                        (_K9629596323_
                                         _sys-type96345_
                                         _sys-vendor96338_
                                         _sys-cpu96331_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self96287_)
              '#!void))))
    (bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
