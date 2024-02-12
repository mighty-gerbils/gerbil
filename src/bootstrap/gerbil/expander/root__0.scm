(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707740668)
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
      (lambda (_self174248_ _bind?174249_)
        (if (##fx< '2 (##structure-length _self174248_))
            (begin
              (##unchecked-structure-set!
               _self174248_
               'root
               '1
               (##structure-type _self174248_)
               '#f)
              (##unchecked-structure-set!
               _self174248_
               (make-table 'test: eq?)
               '2
               (##structure-type _self174248_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self174248_
                   '2
                   (##vector-length _self174248_)))
        (if _bind?174249_
            (begin
              (let ((__method178867
                     (method-ref _self174248_ 'bind-core-syntax-expanders!)))
                (if __method178867
                    (__method178867 _self174248_)
                    (error '"Missing method"
                           _self174248_
                           'bind-core-syntax-expanders!)))
              (let ((__method178868
                     (method-ref _self174248_ 'bind-core-macro-expanders!)))
                (if __method178868
                    (__method178868 _self174248_)
                    (error '"Missing method"
                           _self174248_
                           'bind-core-macro-expanders!)))
              (let ((__method178869
                     (method-ref _self174248_ 'bind-core-features!)))
                (if __method178869
                    (__method178869 _self174248_)
                    (error '"Missing method"
                           _self174248_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self174254_)
        (let ((_bind?174256_ '#t))
          (gx#root-context:::init!__% _self174254_ _bind?174256_))))
    (define gx#root-context:::init!
      (lambda _g178872_
        (let ((_g178871_ (##length _g178872_)))
          (cond ((##fx= _g178871_ 1)
                 (apply (lambda (_self174254_)
                          (gx#root-context:::init!__0 _self174254_))
                        _g178872_))
                ((##fx= _g178871_ 2)
                 (apply (lambda (_self174258_ _bind?174259_)
                          (gx#root-context:::init!__%
                           _self174258_
                           _bind?174259_))
                        _g178872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g178872_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t178828)
        (let ((__bind-core-syntax-expanders!178829
               (make-promise
                (lambda ()
                  (let ((__tmp178832
                         (direct-method-ref
                          __t178828
                          'bind-core-syntax-expanders!)))
                    (if __tmp178832
                        __tmp178832
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!178830
               (make-promise
                (lambda ()
                  (let ((__tmp178833
                         (direct-method-ref
                          __t178828
                          'bind-core-macro-expanders!)))
                    (if __tmp178833
                        __tmp178833
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!178831
               (make-promise
                (lambda ()
                  (let ((__tmp178834
                         (direct-method-ref __t178828 'bind-core-features!)))
                    (if __tmp178834
                        __tmp178834
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda174246174251_
                 (lambda (_self174248_ _bind?174249_)
                   (if (##fx< '2 (##structure-length _self174248_))
                       (begin
                         (##unchecked-structure-set!
                          _self174248_
                          'root
                          '1
                          (##structure-type _self174248_)
                          '#f)
                         (##unchecked-structure-set!
                          _self174248_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self174248_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self174248_
                              '2
                              (##vector-length _self174248_)))
                   (if _bind?174249_
                       (begin
                         ((force __bind-core-syntax-expanders!178829)
                          _self174248_)
                         ((force __bind-core-macro-expanders!178830)
                          _self174248_)
                         ((force __bind-core-features!178831) _self174248_))
                       '#!void))))
            (lambda _g178874_
              (let ((_g178873_ (##length _g178874_)))
                (cond ((##fx= _g178873_ 1)
                       (apply (lambda (_self174254_)
                                (let ((_bind?174256_ '#t))
                                  (_opt-lambda174246174251_
                                   _self174254_
                                   _bind?174256_)))
                              _g178874_))
                      ((##fx= _g178873_ 2)
                       (apply (lambda (_self174258_ _bind?174259_)
                                (_opt-lambda174246174251_
                                 _self174258_
                                 _bind?174259_))
                              _g178874_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g178874_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self174104_ _super174105_)
        (let ((_super174113_
               (let ((_$e174107_ _super174105_))
                 (if _$e174107_
                     _$e174107_
                     (let ((_$e174110_ (gx#core-context-root__0)))
                       (if _$e174110_
                           _$e174110_
                           (let ((__obj178870
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj178870)
                             __obj178870)))))))
          (if (##fx< '5 (##structure-length _self174104_))
              (begin
                (##unchecked-structure-set!
                 _self174104_
                 'top
                 '1
                 (##structure-type _self174104_)
                 '#f)
                (##unchecked-structure-set!
                 _self174104_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self174104_)
                 '#f)
                (##unchecked-structure-set!
                 _self174104_
                 _super174113_
                 '3
                 (##structure-type _self174104_)
                 '#f)
                (##unchecked-structure-set!
                 _self174104_
                 '#f
                 '4
                 (##structure-type _self174104_)
                 '#f)
                (##unchecked-structure-set!
                 _self174104_
                 '#f
                 '5
                 (##structure-type _self174104_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self174104_
                     '5
                     (##vector-length _self174104_))))))
    (define gx#top-context:::init!__0
      (lambda (_self174118_)
        (let ((_super174120_ '#f))
          (gx#top-context:::init!__% _self174118_ _super174120_))))
    (define gx#top-context:::init!
      (lambda _g178876_
        (let ((_g178875_ (##length _g178876_)))
          (cond ((##fx= _g178875_ 1)
                 (apply (lambda (_self174118_)
                          (gx#top-context:::init!__0 _self174118_))
                        _g178876_))
                ((##fx= _g178875_ 2)
                 (apply (lambda (_self174122_ _super174123_)
                          (gx#top-context:::init!__%
                           _self174122_
                           _super174123_))
                        _g178876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g178876_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self173835_ _bindings173836_)
        (for-each
         (lambda (_bind173838_)
           (let* ((_bind173839173846_ _bind173838_)
                  (_E173841173850_
                   (lambda ()
                     (error '"No clause matching" _bind173839173846_)))
                  (_K173842173959_
                   (lambda (_rest173853_ _id173854_)
                     (gx#core-context-put!
                      _self173835_
                      _id173854_
                      (##structure
                       gx#syntax-binding::t
                       _id173854_
                       _id173854_
                       '#f
                       (let* ((_rest173855173866_ _rest173853_)
                              (_E173857173870_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest173855173866_)))
                              (_K173858173935_
                               (lambda (_compiler173873_
                                        _expander173874_
                                        _key173875_)
                                 ((let* ((_key173876173889_ _key173875_)
                                         (_E173882173893_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key173876173889_))))
                                    (let ((_K173887173929_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K173886173922_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K173885173914_
                                           (lambda () gx#make-definition-form))
                                          (_K173884173906_
                                           (lambda () gx#make-special-form))
                                          (_K173883173898_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match173881173901_
                                              (lambda ()
                                                (if (##eq? _key173876173889_
                                                           'expr:)
                                                    (_K173883173898_)
                                                    (_E173882173893_))))
                                             (_try-match173880173909_
                                              (lambda ()
                                                (if (##eq? _key173876173889_
                                                           'special:)
                                                    (_K173884173906_)
                                                    (_try-match173881173901_))))
                                             (_try-match173879173917_
                                              (lambda ()
                                                (if (##eq? _key173876173889_
                                                           'define:)
                                                    (_K173885173914_)
                                                    (_try-match173880173909_))))
                                             (_try-match173878173925_
                                              (lambda ()
                                                (if (##eq? _key173876173889_
                                                           'module:)
                                                    (_K173886173922_)
                                                    (_try-match173879173917_)))))
                                        (if (##eq? _key173876173889_ 'top:)
                                            (_K173887173929_)
                                            (_try-match173878173925_)))))
                                  _expander173874_
                                  _id173854_
                                  (let ((_$e173932_ _compiler173873_))
                                    (if _$e173932_
                                        _$e173932_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest173855173866_)
                             (let ((_hd173859173938_
                                    (##car _rest173855173866_))
                                   (_tl173860173940_
                                    (##cdr _rest173855173866_)))
                               (let ((_key173943_ _hd173859173938_))
                                 (if (##pair? _tl173860173940_)
                                     (let ((_hd173861173945_
                                            (##car _tl173860173940_))
                                           (_tl173862173947_
                                            (##cdr _tl173860173940_)))
                                       (let ((_expander173950_
                                              _hd173861173945_))
                                         (if (##pair? _tl173862173947_)
                                             (let ((_hd173863173952_
                                                    (##car _tl173862173947_))
                                                   (_tl173864173954_
                                                    (##cdr _tl173862173947_)))
                                               (let ((_compiler173957_
                                                      _hd173863173952_))
                                                 (if (##null? _tl173864173954_)
                                                     (_K173858173935_
                                                      _compiler173957_
                                                      _expander173950_
                                                      _key173943_)
                                                     (_E173857173870_))))
                                             (_E173857173870_))))
                                     (_E173857173870_))))
                             (_E173857173870_))))))))
             (if (##pair? _bind173839173846_)
                 (let ((_hd173843173962_ (##car _bind173839173846_))
                       (_tl173844173964_ (##cdr _bind173839173846_)))
                   (let* ((_id173967_ _hd173843173962_)
                          (_rest173969_ _tl173844173964_))
                     (_K173842173959_ _rest173969_ _id173967_)))
                 (_E173841173850_))))
         _bindings173836_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self173974_)
        (let ((_bindings173976_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self173974_
           _bindings173976_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g178878_
        (let ((_g178877_ (##length _g178878_)))
          (cond ((##fx= _g178877_ 1)
                 (apply (lambda (_self173974_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self173974_))
                        _g178878_))
                ((##fx= _g178877_ 2)
                 (apply (lambda (_self173978_ _bindings173979_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self173978_
                           _bindings173979_))
                        _g178878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g178878_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self173607_ _bindings173608_)
        (for-each
         (lambda (_bind173610_)
           (let* ((_bind173611173618_ _bind173610_)
                  (_E173613173622_
                   (lambda ()
                     (error '"No clause matching" _bind173611173618_)))
                  (_K173614173690_
                   (lambda (_rest173625_ _id173626_)
                     (gx#core-context-put!
                      _self173607_
                      _id173626_
                      (##structure
                       gx#syntax-binding::t
                       _id173626_
                       _id173626_
                       '#f
                       (let* ((_rest173627173642_ _rest173625_)
                              (_E173631173646_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest173627173642_))))
                         (let ((_K173636173675_
                                (lambda (_core-id173673_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id173673_)))
                               (_K173633173660_
                                (lambda (_proc173658_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc173658_)))
                               (_K173632173651_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id173626_))))
                           (let ((_try-match173630173654_
                                  (lambda ()
                                    (if (##null? _rest173627173642_)
                                        (_K173632173651_)
                                        (_E173631173646_)))))
                             (if (##pair? _rest173627173642_)
                                 (let ((_tl173638173680_
                                        (##cdr _rest173627173642_))
                                       (_hd173637173678_
                                        (##car _rest173627173642_)))
                                   (if (##eq? _hd173637173678_ '=>)
                                       (if (##pair? _tl173638173680_)
                                           (let ((_tl173640173685_
                                                  (##cdr _tl173638173680_))
                                                 (_hd173639173683_
                                                  (##car _tl173638173680_)))
                                             (if (##null? _tl173640173685_)
                                                 (let ((_core-id173688_
                                                        _hd173639173683_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id173688_))
                                                 (_E173631173646_)))
                                           (if (##null? _tl173638173680_)
                                               (let ((_proc173668_
                                                      _hd173637173678_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc173668_))
                                               (_E173631173646_)))
                                       (if (##null? _tl173638173680_)
                                           (let ((_proc173668_
                                                  _hd173637173678_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc173668_))
                                           (_E173631173646_))))
                                 (_try-match173630173654_))))))))))
             (if (##pair? _bind173611173618_)
                 (let ((_hd173615173693_ (##car _bind173611173618_))
                       (_tl173616173695_ (##cdr _bind173611173618_)))
                   (let* ((_id173698_ _hd173615173693_)
                          (_rest173700_ _tl173616173695_))
                     (_K173614173690_ _rest173700_ _id173698_)))
                 (_E173613173622_))))
         _bindings173608_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self173705_)
        (let ((_bindings173707_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self173705_
           _bindings173707_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g178880_
        (let ((_g178879_ (##length _g178880_)))
          (cond ((##fx= _g178879_ 1)
                 (apply (lambda (_self173705_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self173705_))
                        _g178880_))
                ((##fx= _g178879_ 2)
                 (apply (lambda (_self173709_ _bindings173710_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self173709_
                           _bindings173710_))
                        _g178880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g178880_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self173351_)
        (letrec ((_linux-variant?173353_
                  (lambda (_sys-type173452_)
                    (let* ((_g173453173461_
                            (string-split
                             (symbol->string _sys-type173452_)
                             '#\-))
                           (_else173455173469_ (lambda () '#f))
                           (_K173457173474_
                            (lambda (_rest173472_)
                              (not (null? _rest173472_)))))
                      (if (##pair? _g173453173461_)
                          (let ((_hd173458173477_ (##car _g173453173461_))
                                (_tl173459173479_ (##cdr _g173453173461_)))
                            (if (equal? _hd173458173477_ '"linux")
                                (let ((_rest173482_ _tl173459173479_))
                                  (_K173457173474_ _rest173482_))
                                (_else173455173469_)))
                          (_else173455173469_)))))
                 (_bsd-variant173354_
                  (lambda (_sys-type173411_)
                    (let ((_sys-type-str173413_
                           (symbol->string _sys-type173411_)))
                      (let _lp173415_ ((_rest173417_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest173418173426_ _rest173417_)
                               (_else173420173434_ (lambda () '#f))
                               (_K173422173440_
                                (lambda (_rest173437_ _sys173438_)
                                  (if (string-prefix?
                                       _sys173438_
                                       _sys-type-str173413_)
                                      _sys173438_
                                      (_lp173415_ _rest173437_)))))
                          (if (##pair? _rest173418173426_)
                              (let ((_hd173423173443_
                                     (##car _rest173418173426_))
                                    (_tl173424173445_
                                     (##cdr _rest173418173426_)))
                                (let* ((_sys173448_ _hd173423173443_)
                                       (_rest173450_ _tl173424173445_))
                                  (_K173422173440_ _rest173450_ _sys173448_)))
                              (_else173420173434_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self173351_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self173351_)
          (let* ((_g173355173367_ (system-type))
                 (_else173357173375_ (lambda () '#!void))
                 (_K173359173387_
                  (lambda (_sys-type173378_ _sys-vendor173379_ _sys-cpu173380_)
                    (gx#core-bind-feature!__%
                     _sys-cpu173380_
                     '#f
                     '0
                     _self173351_)
                    (gx#core-bind-feature!__%
                     _sys-type173378_
                     '#f
                     '0
                     _self173351_)
                    (if (_linux-variant?173353_ _sys-type173378_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self173351_)
                        (let ((_$e173382_
                               (_bsd-variant173354_ _sys-type173378_)))
                          (if _$e173382_
                              ((lambda (_sys-prefix173385_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self173351_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix173385_)
                                  '#f
                                  '0
                                  _self173351_))
                               _$e173382_)
                              '#!void))))))
            (if (##pair? _g173355173367_)
                (let ((_hd173360173390_ (##car _g173355173367_))
                      (_tl173361173392_ (##cdr _g173355173367_)))
                  (let ((_sys-cpu173395_ _hd173360173390_))
                    (if (##pair? _tl173361173392_)
                        (let ((_hd173362173397_ (##car _tl173361173392_))
                              (_tl173363173399_ (##cdr _tl173361173392_)))
                          (let ((_sys-vendor173402_ _hd173362173397_))
                            (if (##pair? _tl173363173399_)
                                (let ((_hd173364173404_
                                       (##car _tl173363173399_))
                                      (_tl173365173406_
                                       (##cdr _tl173363173399_)))
                                  (let ((_sys-type173409_ _hd173364173404_))
                                    (if (##null? _tl173365173406_)
                                        (_K173359173387_
                                         _sys-type173409_
                                         _sys-vendor173402_
                                         _sys-cpu173395_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self173351_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
