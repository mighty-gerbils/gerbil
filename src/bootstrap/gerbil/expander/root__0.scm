(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1707767844)
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
      (lambda (_self174275_ _bind?174276_)
        (if (##fx< '2 (##structure-length _self174275_))
            (begin
              (##unchecked-structure-set!
               _self174275_
               'root
               '1
               (##structure-type _self174275_)
               '#f)
              (##unchecked-structure-set!
               _self174275_
               (make-table 'test: eq?)
               '2
               (##structure-type _self174275_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self174275_
                   '2
                   (##vector-length _self174275_)))
        (if _bind?174276_
            (begin
              (let ((__method178894
                     (method-ref _self174275_ 'bind-core-syntax-expanders!)))
                (if __method178894
                    (__method178894 _self174275_)
                    (error '"Missing method"
                           _self174275_
                           'bind-core-syntax-expanders!)))
              (let ((__method178895
                     (method-ref _self174275_ 'bind-core-macro-expanders!)))
                (if __method178895
                    (__method178895 _self174275_)
                    (error '"Missing method"
                           _self174275_
                           'bind-core-macro-expanders!)))
              (let ((__method178896
                     (method-ref _self174275_ 'bind-core-features!)))
                (if __method178896
                    (__method178896 _self174275_)
                    (error '"Missing method"
                           _self174275_
                           'bind-core-features!))))
            '#!void)))
    (define gx#root-context:::init!__0
      (lambda (_self174281_)
        (let ((_bind?174283_ '#t))
          (gx#root-context:::init!__% _self174281_ _bind?174283_))))
    (define gx#root-context:::init!
      (lambda _g178899_
        (let ((_g178898_ (##length _g178899_)))
          (cond ((##fx= _g178898_ 1)
                 (apply (lambda (_self174281_)
                          (gx#root-context:::init!__0 _self174281_))
                        _g178899_))
                ((##fx= _g178898_ 2)
                 (apply (lambda (_self174285_ _bind?174286_)
                          (gx#root-context:::init!__%
                           _self174285_
                           _bind?174286_))
                        _g178899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g178899_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__t178855)
        (let ((__bind-core-macro-expanders!178856
               (make-promise
                (lambda ()
                  (let ((__tmp178859
                         (direct-method-ref
                          __t178855
                          'bind-core-macro-expanders!)))
                    (if __tmp178859
                        __tmp178859
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!178857
               (make-promise
                (lambda ()
                  (let ((__tmp178860
                         (direct-method-ref
                          __t178855
                          'bind-core-syntax-expanders!)))
                    (if __tmp178860
                        __tmp178860
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!178858
               (make-promise
                (lambda ()
                  (let ((__tmp178861
                         (direct-method-ref __t178855 'bind-core-features!)))
                    (if __tmp178861
                        __tmp178861
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_opt-lambda174273174278_
                 (lambda (_self174275_ _bind?174276_)
                   (if (##fx< '2 (##structure-length _self174275_))
                       (begin
                         (##unchecked-structure-set!
                          _self174275_
                          'root
                          '1
                          (##structure-type _self174275_)
                          '#f)
                         (##unchecked-structure-set!
                          _self174275_
                          (make-table 'test: eq?)
                          '2
                          (##structure-type _self174275_)
                          '#f))
                       (error '"struct-instance-init!: too many arguments for struct"
                              _self174275_
                              '2
                              (##vector-length _self174275_)))
                   (if _bind?174276_
                       (begin
                         ((force __bind-core-syntax-expanders!178857)
                          _self174275_)
                         ((force __bind-core-macro-expanders!178856)
                          _self174275_)
                         ((force __bind-core-features!178858) _self174275_))
                       '#!void))))
            (lambda _g178901_
              (let ((_g178900_ (##length _g178901_)))
                (cond ((##fx= _g178900_ 1)
                       (apply (lambda (_self174281_)
                                (let ((_bind?174283_ '#t))
                                  (_opt-lambda174273174278_
                                   _self174281_
                                   _bind?174283_)))
                              _g178901_))
                      ((##fx= _g178900_ 2)
                       (apply (lambda (_self174285_ _bind?174286_)
                                (_opt-lambda174273174278_
                                 _self174285_
                                 _bind?174286_))
                              _g178901_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g178901_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_self174131_ _super174132_)
        (let ((_super174140_
               (let ((_$e174134_ _super174132_))
                 (if _$e174134_
                     _$e174134_
                     (let ((_$e174137_ (gx#core-context-root__0)))
                       (if _$e174137_
                           _$e174137_
                           (let ((__obj178897
                                  (##structure gx#root-context::t '#f '#f)))
                             (gx#root-context:::init! __obj178897)
                             __obj178897)))))))
          (if (##fx< '5 (##structure-length _self174131_))
              (begin
                (##unchecked-structure-set!
                 _self174131_
                 'top
                 '1
                 (##structure-type _self174131_)
                 '#f)
                (##unchecked-structure-set!
                 _self174131_
                 (make-table 'test: eq?)
                 '2
                 (##structure-type _self174131_)
                 '#f)
                (##unchecked-structure-set!
                 _self174131_
                 _super174140_
                 '3
                 (##structure-type _self174131_)
                 '#f)
                (##unchecked-structure-set!
                 _self174131_
                 '#f
                 '4
                 (##structure-type _self174131_)
                 '#f)
                (##unchecked-structure-set!
                 _self174131_
                 '#f
                 '5
                 (##structure-type _self174131_)
                 '#f))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self174131_
                     '5
                     (##vector-length _self174131_))))))
    (define gx#top-context:::init!__0
      (lambda (_self174145_)
        (let ((_super174147_ '#f))
          (gx#top-context:::init!__% _self174145_ _super174147_))))
    (define gx#top-context:::init!
      (lambda _g178903_
        (let ((_g178902_ (##length _g178903_)))
          (cond ((##fx= _g178902_ 1)
                 (apply (lambda (_self174145_)
                          (gx#top-context:::init!__0 _self174145_))
                        _g178903_))
                ((##fx= _g178902_ 2)
                 (apply (lambda (_self174149_ _super174150_)
                          (gx#top-context:::init!__%
                           _self174149_
                           _super174150_))
                        _g178903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g178903_))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_self173862_ _bindings173863_)
        (for-each
         (lambda (_bind173865_)
           (let* ((_bind173866173873_ _bind173865_)
                  (_E173868173877_
                   (lambda ()
                     (error '"No clause matching" _bind173866173873_)))
                  (_K173869173986_
                   (lambda (_rest173880_ _id173881_)
                     (gx#core-context-put!
                      _self173862_
                      _id173881_
                      (##structure
                       gx#syntax-binding::t
                       _id173881_
                       _id173881_
                       '#f
                       (let* ((_rest173882173893_ _rest173880_)
                              (_E173884173897_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest173882173893_)))
                              (_K173885173962_
                               (lambda (_compiler173900_
                                        _expander173901_
                                        _key173902_)
                                 ((let* ((_key173903173916_ _key173902_)
                                         (_E173909173920_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _key173903173916_))))
                                    (let ((_K173914173956_
                                           (lambda ()
                                             gx#make-top-special-form))
                                          (_K173913173949_
                                           (lambda ()
                                             gx#make-module-special-form))
                                          (_K173912173941_
                                           (lambda () gx#make-definition-form))
                                          (_K173911173933_
                                           (lambda () gx#make-special-form))
                                          (_K173910173925_
                                           (lambda ()
                                             gx#make-expression-form)))
                                      (let* ((_try-match173908173928_
                                              (lambda ()
                                                (if (##eq? _key173903173916_
                                                           'expr:)
                                                    (_K173910173925_)
                                                    (_E173909173920_))))
                                             (_try-match173907173936_
                                              (lambda ()
                                                (if (##eq? _key173903173916_
                                                           'special:)
                                                    (_K173911173933_)
                                                    (_try-match173908173928_))))
                                             (_try-match173906173944_
                                              (lambda ()
                                                (if (##eq? _key173903173916_
                                                           'define:)
                                                    (_K173912173941_)
                                                    (_try-match173907173936_))))
                                             (_try-match173905173952_
                                              (lambda ()
                                                (if (##eq? _key173903173916_
                                                           'module:)
                                                    (_K173913173949_)
                                                    (_try-match173906173944_)))))
                                        (if (##eq? _key173903173916_ 'top:)
                                            (_K173914173956_)
                                            (_try-match173905173952_)))))
                                  _expander173901_
                                  _id173881_
                                  (let ((_$e173959_ _compiler173900_))
                                    (if _$e173959_
                                        _$e173959_
                                        gx#core-compile-top-error))))))
                         (if (##pair? _rest173882173893_)
                             (let ((_hd173886173965_
                                    (##car _rest173882173893_))
                                   (_tl173887173967_
                                    (##cdr _rest173882173893_)))
                               (let ((_key173970_ _hd173886173965_))
                                 (if (##pair? _tl173887173967_)
                                     (let ((_hd173888173972_
                                            (##car _tl173887173967_))
                                           (_tl173889173974_
                                            (##cdr _tl173887173967_)))
                                       (let ((_expander173977_
                                              _hd173888173972_))
                                         (if (##pair? _tl173889173974_)
                                             (let ((_hd173890173979_
                                                    (##car _tl173889173974_))
                                                   (_tl173891173981_
                                                    (##cdr _tl173889173974_)))
                                               (let ((_compiler173984_
                                                      _hd173890173979_))
                                                 (if (##null? _tl173891173981_)
                                                     (_K173885173962_
                                                      _compiler173984_
                                                      _expander173977_
                                                      _key173970_)
                                                     (_E173884173897_))))
                                             (_E173884173897_))))
                                     (_E173884173897_))))
                             (_E173884173897_))))))))
             (if (##pair? _bind173866173873_)
                 (let ((_hd173870173989_ (##car _bind173866173873_))
                       (_tl173871173991_ (##cdr _bind173866173873_)))
                   (let* ((_id173994_ _hd173870173989_)
                          (_rest173996_ _tl173871173991_))
                     (_K173869173986_ _rest173996_ _id173994_)))
                 (_E173868173877_))))
         _bindings173863_)))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_self174001_)
        (let ((_bindings174003_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _self174001_
           _bindings174003_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g178905_
        (let ((_g178904_ (##length _g178905_)))
          (cond ((##fx= _g178904_ 1)
                 (apply (lambda (_self174001_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _self174001_))
                        _g178905_))
                ((##fx= _g178904_ 2)
                 (apply (lambda (_self174005_ _bindings174006_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _self174005_
                           _bindings174006_))
                        _g178905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g178905_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_self173634_ _bindings173635_)
        (for-each
         (lambda (_bind173637_)
           (let* ((_bind173638173645_ _bind173637_)
                  (_E173640173649_
                   (lambda ()
                     (error '"No clause matching" _bind173638173645_)))
                  (_K173641173717_
                   (lambda (_rest173652_ _id173653_)
                     (gx#core-context-put!
                      _self173634_
                      _id173653_
                      (##structure
                       gx#syntax-binding::t
                       _id173653_
                       _id173653_
                       '#f
                       (let* ((_rest173654173669_ _rest173652_)
                              (_E173658173673_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest173654173669_))))
                         (let ((_K173663173702_
                                (lambda (_core-id173700_)
                                  (##structure
                                   gx#rename-macro-expander::t
                                   _core-id173700_)))
                               (_K173660173687_
                                (lambda (_proc173685_)
                                  (##structure
                                   gx#macro-expander::t
                                   _proc173685_)))
                               (_K173659173678_
                                (lambda ()
                                  (##structure
                                   gx#reserved-expander::t
                                   _id173653_))))
                           (let ((_try-match173657173681_
                                  (lambda ()
                                    (if (##null? _rest173654173669_)
                                        (_K173659173678_)
                                        (_E173658173673_)))))
                             (if (##pair? _rest173654173669_)
                                 (let ((_tl173665173707_
                                        (##cdr _rest173654173669_))
                                       (_hd173664173705_
                                        (##car _rest173654173669_)))
                                   (if (##eq? _hd173664173705_ '=>)
                                       (if (##pair? _tl173665173707_)
                                           (let ((_tl173667173712_
                                                  (##cdr _tl173665173707_))
                                                 (_hd173666173710_
                                                  (##car _tl173665173707_)))
                                             (if (##null? _tl173667173712_)
                                                 (let ((_core-id173715_
                                                        _hd173666173710_))
                                                   (##structure
                                                    gx#rename-macro-expander::t
                                                    _core-id173715_))
                                                 (_E173658173673_)))
                                           (if (##null? _tl173665173707_)
                                               (let ((_proc173695_
                                                      _hd173664173705_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _proc173695_))
                                               (_E173658173673_)))
                                       (if (##null? _tl173665173707_)
                                           (let ((_proc173695_
                                                  _hd173664173705_))
                                             (##structure
                                              gx#macro-expander::t
                                              _proc173695_))
                                           (_E173658173673_))))
                                 (_try-match173657173681_))))))))))
             (if (##pair? _bind173638173645_)
                 (let ((_hd173642173720_ (##car _bind173638173645_))
                       (_tl173643173722_ (##cdr _bind173638173645_)))
                   (let* ((_id173725_ _hd173642173720_)
                          (_rest173727_ _tl173643173722_))
                     (_K173641173717_ _rest173727_ _id173725_)))
                 (_E173640173649_))))
         _bindings173635_)))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_self173732_)
        (let ((_bindings173734_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _self173732_
           _bindings173734_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g178907_
        (let ((_g178906_ (##length _g178907_)))
          (cond ((##fx= _g178906_ 1)
                 (apply (lambda (_self173732_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _self173732_))
                        _g178907_))
                ((##fx= _g178906_ 2)
                 (apply (lambda (_self173736_ _bindings173737_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _self173736_
                           _bindings173737_))
                        _g178907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g178907_))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_self173378_)
        (letrec ((_linux-variant?173380_
                  (lambda (_sys-type173479_)
                    (let* ((_g173480173488_
                            (string-split
                             (symbol->string _sys-type173479_)
                             '#\-))
                           (_else173482173496_ (lambda () '#f))
                           (_K173484173501_
                            (lambda (_rest173499_)
                              (not (null? _rest173499_)))))
                      (if (##pair? _g173480173488_)
                          (let ((_hd173485173504_ (##car _g173480173488_))
                                (_tl173486173506_ (##cdr _g173480173488_)))
                            (if (equal? _hd173485173504_ '"linux")
                                (let ((_rest173509_ _tl173486173506_))
                                  (_K173484173501_ _rest173509_))
                                (_else173482173496_)))
                          (_else173482173496_)))))
                 (_bsd-variant173381_
                  (lambda (_sys-type173438_)
                    (let ((_sys-type-str173440_
                           (symbol->string _sys-type173438_)))
                      (let _lp173442_ ((_rest173444_
                                        '("openbsd"
                                          "netbsd"
                                          "freebsd"
                                          "darwin")))
                        (let* ((_rest173445173453_ _rest173444_)
                               (_else173447173461_ (lambda () '#f))
                               (_K173449173467_
                                (lambda (_rest173464_ _sys173465_)
                                  (if (string-prefix?
                                       _sys173465_
                                       _sys-type-str173440_)
                                      _sys173465_
                                      (_lp173442_ _rest173464_)))))
                          (if (##pair? _rest173445173453_)
                              (let ((_hd173450173470_
                                     (##car _rest173445173453_))
                                    (_tl173451173472_
                                     (##cdr _rest173445173453_)))
                                (let* ((_sys173475_ _hd173450173470_)
                                       (_rest173477_ _tl173451173472_))
                                  (_K173449173467_ _rest173477_ _sys173475_)))
                              (_else173447173461_))))))))
          (gx#core-bind-feature!__% 'gerbil '#f '0 _self173378_)
          (gx#core-bind-feature!__% (gerbil-system) '#f '0 _self173378_)
          (let* ((_g173382173394_ (system-type))
                 (_else173384173402_ (lambda () '#!void))
                 (_K173386173414_
                  (lambda (_sys-type173405_ _sys-vendor173406_ _sys-cpu173407_)
                    (gx#core-bind-feature!__%
                     _sys-cpu173407_
                     '#f
                     '0
                     _self173378_)
                    (gx#core-bind-feature!__%
                     _sys-type173405_
                     '#f
                     '0
                     _self173378_)
                    (if (_linux-variant?173380_ _sys-type173405_)
                        (gx#core-bind-feature!__%
                         (string->symbol '"linux")
                         '#f
                         '0
                         _self173378_)
                        (let ((_$e173409_
                               (_bsd-variant173381_ _sys-type173405_)))
                          (if _$e173409_
                              ((lambda (_sys-prefix173412_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol '"bsd")
                                  '#f
                                  '0
                                  _self173378_)
                                 (gx#core-bind-feature!__%
                                  (string->symbol _sys-prefix173412_)
                                  '#f
                                  '0
                                  _self173378_))
                               _$e173409_)
                              '#!void))))))
            (if (##pair? _g173382173394_)
                (let ((_hd173387173417_ (##car _g173382173394_))
                      (_tl173388173419_ (##cdr _g173382173394_)))
                  (let ((_sys-cpu173422_ _hd173387173417_))
                    (if (##pair? _tl173388173419_)
                        (let ((_hd173389173424_ (##car _tl173388173419_))
                              (_tl173390173426_ (##cdr _tl173388173419_)))
                          (let ((_sys-vendor173429_ _hd173389173424_))
                            (if (##pair? _tl173390173426_)
                                (let ((_hd173391173431_
                                       (##car _tl173390173426_))
                                      (_tl173392173433_
                                       (##cdr _tl173390173426_)))
                                  (let ((_sys-type173436_ _hd173391173431_))
                                    (if (##null? _tl173392173433_)
                                        (_K173386173414_
                                         _sys-type173436_
                                         _sys-vendor173429_
                                         _sys-cpu173422_)
                                        '#!void)))
                                '#!void)))
                        '#!void)))
                '#!void))
          (if (gerbil-runtime-smp?)
              (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _self173378_)
              '#!void))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
