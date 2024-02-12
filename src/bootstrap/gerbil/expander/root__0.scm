(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707742541)
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
      (lambda (_self174246_ _bind?174247_)
        (if (##fx< '2 (##structure-length _self174246_))
            (begin
              (##unchecked-structure-set!
               _self174246_
               'root
               '1
               (##structure-type _self174246_)
               '#f)
              (##unchecked-structure-set!
               _self174246_
               (make-table 'test: eq?)
               '2
               (##structure-type _self174246_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self174246_
                   '2
                   (##vector-length _self174246_)))
        (if _bind?174247_
            (begin
              (let ((__method178865
                     (method-ref _self174246_ 'bind-core-syntax-expanders!)))
                (if __method178865
                    (__method178865 _self174246_)
                    (error '"Missing method"
                           _self174246_
                           'bind-core-syntax-expanders!)))
              (let ((__method178866
                     (method-ref _self174246_ 'bind-core-macro-expanders!)))
                (if __method178866
                    (__method178866 _self174246_)
                    (error '"Missing method"
                           _self174246_
                           'bind-core-macro-expanders!)))
              (let ((__method178867
                     (method-ref _self174246_ 'bind-core-features!)))
                (if __method178867
                    (__method178867 _self174246_)
                    (error '"Missing method"
                           _self174246_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self174252_)
        (let ((_bind?174254_ '#t))
          (gx#root-context:::init!__% _self174252_ _bind?174254_))))
    (define gx#root-context:::init!
      (lambda _g178870_
        (let ((_g178869_ (##length _g178870_)))
          (cond ((##fx= _g178869_ 1)
                 (apply (lambda (_self174252_)
                          (gx#root-context:::init!__0 _self174252_))
                        _g178870_))
                ((##fx= _g178869_ 2)
                 (apply (lambda (_self174256_ _bind?174257_)
                          (gx#root-context:::init!__%
                           _self174256_
                           _bind?174257_))
                        _g178870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g178870_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t178826)
        (let ((__bind-core-syntax-expanders!178827
               (make-promise
                (lambda ()
                  (let ((__tmp178830
                         (direct-method-ref
                          __t178826
                          'bind-core-syntax-expanders!)))
                    (if __tmp178830
                        __tmp178830
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!178828
               (make-promise
                (lambda ()
                  (let ((__tmp178831
                         (direct-method-ref
                          __t178826
                          'bind-core-macro-expanders!)))
                    (if __tmp178831
                        __tmp178831
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!178829
               (make-promise
                (lambda ()
                  (let ((__tmp178832
                         (direct-method-ref __t178826 'bind-core-features!)))
                    (if __tmp178832
                        __tmp178832
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda174244174249_
                 (lambda (_self174246_ _bind?174247_)
                   (if (##fx< '2 (##structure-length _self174246_))
                       (begin
                         (##unchecked-structure-set!
                          _self174246_
                          'root
                          '1
                          (##structure-type _self174246_)
                          '#f)
                         (##unchecked-structure-set!
                          _self174246_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self174246_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self174246_
                              '2
                              (##vector-length _self174246_)))
                   (if _bind?174247_
                       (begin
                         ((force __bind-core-syntax-expanders!178827)
                          _self174246_)
                         ((force __bind-core-macro-expanders!178828)
                          _self174246_)
                         ((force __bind-core-features!178829) _self174246_))
                       '#!void))))
            (lambda _g178872_
              (let ((_g178871_ (##length _g178872_)))
                (cond ((##fx= _g178871_ 1)
                       (apply (lambda (_self174252_)
                                (let ((_bind?174254_ '#t))
                                  (_opt-lambda174244174249_
                                   _self174252_
                                   _bind?174254_)))
                              _g178872_))
                      ((##fx= _g178871_ 2)
                       (apply (lambda (_self174256_ _bind?174257_)
                                (_opt-lambda174244174249_
                                 _self174256_
                                 _bind?174257_))
                              _g178872_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g178872_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self174102_ _super174103_)
        (let ((_super174111_
               (let ((_$e174105_ _super174103_))
                 (if _$e174105_
                     _$e174105_
                     (let ((_$e174108_ (gx#core-context-root__0)))
                       (if _$e174108_
                           _$e174108_
                           (let ((__obj178868
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj178868)
                             __obj178868)))))))
          (if (##fx< '5 (##structure-length _self174102_))
              (begin
                (##unchecked-structure-set!
                 _self174102_
                 'top
                 '1
                 (##structure-type _self174102_)
                 '#f)
                (##unchecked-structure-set!
                 _self174102_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self174102_)
                 '#f)
                (##unchecked-structure-set!
                 _self174102_
                 _super174111_
                 '3
                 (##structure-type _self174102_)
                 '#f)
                (##unchecked-structure-set!
                 _self174102_
                 '#f
                 '4
                 (##structure-type _self174102_)
                 '#f)
                (##unchecked-structure-set!
                 _self174102_
                 '#f
                 '5
                 (##structure-type _self174102_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self174102_
                     '5
                     (##vector-length _self174102_))))))
    (define gx#top-context:::init!__0
      (lambda (_self174116_)
        (let ((_super174118_ '#f))
          (gx#top-context:::init!__% _self174116_ _super174118_))))
    (define gx#top-context:::init!
      (lambda _g178874_
        (let ((_g178873_ (##length _g178874_)))
          (cond ((##fx= _g178873_ 1)
                 (apply (lambda (_self174116_)
                          (gx#top-context:::init!__0 _self174116_))
                        _g178874_))
                ((##fx= _g178873_ 2)
                 (apply (lambda (_self174120_ _super174121_)
                          (gx#top-context:::init!__%
                           _self174120_
                           _super174121_))
                        _g178874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g178874_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self173833_ _bindings173834_)
        (for-each
         (lambda (_bind173836_)
           (let* ((_bind173837173844_ _bind173836_)
                  (_E173839173848_
                   (lambda ()
                     (error '"No clause matching" _bind173837173844_)))
                  (_K173840173957_
                   (lambda (_rest173851_ _id173852_)
                     (gx#core-context-put!
                      _self173833_
                      _id173852_
                      (##structure
                       gx#syntax-binding::t
                       _id173852_
                       _id173852_
                       '#f
                       (let* ((_rest173853173864_ _rest173851_)
                              (_E173855173868_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest173853173864_)))
                              (_K173856173933_
                               (lambda (_compiler173871_
                                        _expander173872_
                                        _key173873_)
                                 ((let* ((_key173874173887_ _key173873_)
                                         (_E173880173891_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key173874173887_))))
                                    (let ((_K173885173927_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K173884173920_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K173883173912_
                                           (lambda () gx#make-definition-form))
                                          (_K173882173904_
                                           (lambda () gx#make-special-form))
                                          (_K173881173896_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match173879173899_
                                              (lambda ()
                                                (if (##eq? _key173874173887_
                                                           'expr:)
                                                    (_K173881173896_)
                                                    (_E173880173891_))))
                                             (_try-match173878173907_
                                              (lambda ()
                                                (if (##eq? _key173874173887_
                                                           'special:)
                                                    (_K173882173904_)
                                                    (_try-match173879173899_))))
                                             (_try-match173877173915_
                                              (lambda ()
                                                (if (##eq? _key173874173887_
                                                           'define:)
                                                    (_K173883173912_)
                                                    (_try-match173878173907_))))
                                             (_try-match173876173923_
                                              (lambda ()
                                                (if (##eq? _key173874173887_
                                                           'module:)
                                                    (_K173884173920_)
                                                    (_try-match173877173915_)))))
                                        (if (##eq? _key173874173887_ 'top:)
                                            (_K173885173927_)
                                            (_try-match173876173923_)))))
                                  _expander173872_
                                  _id173852_
                                  (let ((_$e173930_ _compiler173871_))
                                    (if _$e173930_
                                        _$e173930_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest173853173864_)
                             (let ((_hd173857173936_
                                    (##car _rest173853173864_))
                                   (_tl173858173938_
                                    (##cdr _rest173853173864_)))
                               (let ((_key173941_ _hd173857173936_))
                                 (if (##pair? _tl173858173938_)
                                     (let ((_hd173859173943_
                                            (##car _tl173858173938_))
                                           (_tl173860173945_
                                            (##cdr _tl173858173938_)))
                                       (let ((_expander173948_
                                              _hd173859173943_))
                                         (if (##pair? _tl173860173945_)
                                             (let ((_hd173861173950_
                                                    (##car _tl173860173945_))
                                                   (_tl173862173952_
                                                    (##cdr _tl173860173945_)))
                                               (let ((_compiler173955_
                                                      _hd173861173950_))
                                                 (if (##null? _tl173862173952_)
                                                     (_K173856173933_
                                                      _compiler173955_
                                                      _expander173948_
                                                      _key173941_)
                                                     (_E173855173868_))))
                                             (_E173855173868_))))
                                     (_E173855173868_))))
                             (_E173855173868_))))))))
             (if (##pair? _bind173837173844_)
                 (let ((_hd173841173960_ (##car _bind173837173844_))
                       (_tl173842173962_ (##cdr _bind173837173844_)))
                   (let* ((_id173965_ _hd173841173960_)
                          (_rest173967_ _tl173842173962_))
                     (_K173840173957_ _rest173967_ _id173965_)))
                 (_E173839173848_))))
         _bindings173834_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self173972_)
        (let ((_bindings173974_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self173972_
           _bindings173974_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g178876_
        (let ((_g178875_ (##length _g178876_)))
          (cond ((##fx= _g178875_ 1)
                 (apply (lambda (_self173972_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self173972_))
                        _g178876_))
                ((##fx= _g178875_ 2)
                 (apply (lambda (_self173976_ _bindings173977_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self173976_
                           _bindings173977_))
                        _g178876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g178876_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self173605_ _bindings173606_)
        (for-each
         (lambda (_bind173608_)
           (let* ((_bind173609173616_ _bind173608_)
                  (_E173611173620_
                   (lambda ()
                     (error '"No clause matching" _bind173609173616_)))
                  (_K173612173688_
                   (lambda (_rest173623_ _id173624_)
                     (gx#core-context-put!
                      _self173605_
                      _id173624_
                      (##structure
                       gx#syntax-binding::t
                       _id173624_
                       _id173624_
                       '#f
                       (let* ((_rest173625173640_ _rest173623_)
                              (_E173629173644_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest173625173640_))))
                         (let ((_K173634173673_
                                (lambda (_core-id173671_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id173671_)))
                               (_K173631173658_
                                (lambda (_proc173656_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc173656_)))
                               (_K173630173649_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id173624_))))
                           (let ((_try-match173628173652_
                                  (lambda ()
                                    (if (##null? _rest173625173640_)
                                        (_K173630173649_)
                                        (_E173629173644_)))))
                             (if (##pair? _rest173625173640_)
                                 (let ((_tl173636173678_
                                        (##cdr _rest173625173640_))
                                       (_hd173635173676_
                                        (##car _rest173625173640_)))
                                   (if (##eq? _hd173635173676_ '=>)
                                       (if (##pair? _tl173636173678_)
                                           (let ((_tl173638173683_
                                                  (##cdr _tl173636173678_))
                                                 (_hd173637173681_
                                                  (##car _tl173636173678_)))
                                             (if (##null? _tl173638173683_)
                                                 (let ((_core-id173686_
                                                        _hd173637173681_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id173686_))
                                                 (_E173629173644_)))
                                           (if (##null? _tl173636173678_)
                                               (let ((_proc173666_
                                                      _hd173635173676_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc173666_))
                                               (_E173629173644_)))
                                       (if (##null? _tl173636173678_)
                                           (let ((_proc173666_
                                                  _hd173635173676_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc173666_))
                                           (_E173629173644_))))
                                 (_try-match173628173652_))))))))))
             (if (##pair? _bind173609173616_)
                 (let ((_hd173613173691_ (##car _bind173609173616_))
                       (_tl173614173693_ (##cdr _bind173609173616_)))
                   (let* ((_id173696_ _hd173613173691_)
                          (_rest173698_ _tl173614173693_))
                     (_K173612173688_ _rest173698_ _id173696_)))
                 (_E173611173620_))))
         _bindings173606_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self173703_)
        (let ((_bindings173705_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self173703_
           _bindings173705_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g178878_
        (let ((_g178877_ (##length _g178878_)))
          (cond ((##fx= _g178877_ 1)
                 (apply (lambda (_self173703_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self173703_))
                        _g178878_))
                ((##fx= _g178877_ 2)
                 (apply (lambda (_self173707_ _bindings173708_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self173707_
                           _bindings173708_))
                        _g178878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g178878_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self173349_)
        (letrec ((_linux-variant?173351_
                  (lambda (_sys-type173450_)
                    (let* ((_g173451173459_
                            (string-split
                             (symbol->string _sys-type173450_)
                             '#\-))
                           (_else173453173467_ (lambda () '#f))
                           (_K173455173472_
                            (lambda (_rest173470_)
                              (not (null? _rest173470_)))))
                      (if (##pair? _g173451173459_)
                          (let ((_hd173456173475_ (##car _g173451173459_))
                                (_tl173457173477_ (##cdr _g173451173459_)))
                            (if (equal? _hd173456173475_ '"linux")
                                (let ((_rest173480_ _tl173457173477_))
                                  (_K173455173472_ _rest173480_))
                                (_else173453173467_)))
                          (_else173453173467_)))))
                 (_bsd-variant173352_
                  (lambda (_sys-type173409_)
                    (let ((_sys-type-str173411_
                           (symbol->string _sys-type173409_)))
                      (let _lp173413_ ((_rest173415_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest173416173424_ _rest173415_)
                               (_else173418173432_ (lambda () '#f))
                               (_K173420173438_
                                (lambda (_rest173435_ _sys173436_)
                                  (if (string-prefix?
                                       _sys173436_
                                       _sys-type-str173411_)
                                      _sys173436_
                                      (_lp173413_ _rest173435_)))))
                          (if (##pair? _rest173416173424_)
                              (let ((_hd173421173441_
                                     (##car _rest173416173424_))
                                    (_tl173422173443_
                                     (##cdr _rest173416173424_)))
                                (let* ((_sys173446_ _hd173421173441_)
                                       (_rest173448_ _tl173422173443_))
                                  (_K173420173438_ _rest173448_ _sys173446_)))
                              (_else173418173432_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self173349_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self173349_)
          (let* ((_g173353173365_ (system-type))
                 (_else173355173373_ (lambda () '#!void))
                 (_K173357173385_
                  (lambda (_sys-type173376_ _sys-vendor173377_ _sys-cpu173378_)
                    (gx#core-bind-feature!__%
                     _sys-cpu173378_
                     '#f
                     '0
                     _self173349_)
                    (gx#core-bind-feature!__%
                     _sys-type173376_
                     '#f
                     '0
                     _self173349_)
                    (if (_linux-variant?173351_ _sys-type173376_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self173349_)
                        (let ((_$e173380_
                               (_bsd-variant173352_ _sys-type173376_)))
                          (if _$e173380_
                              ((lambda (_sys-prefix173383_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self173349_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix173383_)
                                  '#f
                                  '0
                                  _self173349_))
                               _$e173380_)
                              '#!void))))))
            (if (##pair? _g173353173365_)
                (let ((_hd173358173388_ (##car _g173353173365_))
                      (_tl173359173390_ (##cdr _g173353173365_)))
                  (let ((_sys-cpu173393_ _hd173358173388_))
                    (if (##pair? _tl173359173390_)
                        (let ((_hd173360173395_ (##car _tl173359173390_))
                              (_tl173361173397_ (##cdr _tl173359173390_)))
                          (let ((_sys-vendor173400_ _hd173360173395_))
                            (if (##pair? _tl173361173397_)
                                (let ((_hd173362173402_
                                       (##car _tl173361173397_))
                                      (_tl173363173404_
                                       (##cdr _tl173361173397_)))
                                  (let ((_sys-type173407_ _hd173362173402_))
                                    (if (##null? _tl173363173404_)
                                        (_K173357173385_
                                         _sys-type173407_
                                         _sys-vendor173400_
                                         _sys-cpu173393_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self173349_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
