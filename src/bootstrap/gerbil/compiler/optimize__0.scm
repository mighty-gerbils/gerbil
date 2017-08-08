(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-optimizer-info (make-parameter '#f))
  (define gxc#current-compile-mutators (make-parameter '#f))
  (define gxc#current-compile-local-type (make-parameter '#f))
  (define gxc#optimizer-info::t
    (make-struct-type
     'gxc#optimizer-info::t
     '#f
     '2
     'optimizer-info
     '()
     ':init!))
  (define gxc#optimizer-info? (make-struct-predicate gxc#optimizer-info::t))
  (define gxc#make-optimizer-info
    (lambda _$args19948_
      (apply make-struct-instance gxc#optimizer-info::t _$args19948_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self19946_)
      (struct-instance-init!
       _self19946_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj19960 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj19960) __obj19960))))))
  (define gxc#optimize!
    (lambda (_ctx19940_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx19940_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx19940_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code19943_
                  (gxc#optimize-source
                   (##structure-ref _ctx19940_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx19940_
              _code19943_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx19885_)
      (let ((_deps19887_
             (let ((_imports19931_
                    (##structure-ref _ctx19885_ '8 gx#module-context::t '#f)))
               (let ((_$e19933_
                      (gx#core-context-prelude__opt-lambda11357 _ctx19885_)))
                 (if _$e19933_
                     ((lambda (_g1993519937_)
                        (cons _g1993519937_ _imports19931_))
                      _$e19933_)
                     _imports19931_)))))
        ((letrec ((_lp19889_
                   (lambda (_rest19891_)
                     (let ((_rest1989219900_ _rest19891_))
                       (let ((_E1989519904_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1989219900_))))
                         (let ((_else1989419908_ (lambda () '#!void)))
                           (let ((_K1989619919_
                                  (lambda (_rest19911_ _hd19912_)
                                    (if (##structure-instance-of?
                                         _hd19912_
                                         'gx#module-context::t)
                                        (begin
                                          (if (table-ref
                                               (##structure-ref
                                                (gxc#current-compile-optimizer-info)
                                                '2
                                                gxc#optimizer-info::t
                                                '#f)
                                               (##structure-ref
                                                _hd19912_
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '#f)
                                              '#!void
                                              (begin
                                                (let ((_$e19914_
                                                       (gx#core-context-prelude__opt-lambda11357
                                                        _hd19912_)))
                                                  (if _$e19914_
                                                      ((lambda (_pre19917_)
                                                         (_lp19889_
                                                          (cons _pre19917_
                                                                (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd19912_
                         '8
                         gx#module-context::t
                         '#f))))
               _$e19914_)
              (_lp19889_
               (##structure-ref _hd19912_ '8 gx#module-context::t '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#optimizer-load-ssxi
                                                 _hd19912_)))
                                          (_lp19889_ _rest19911_))
                                        (if (##structure-instance-of?
                                             _hd19912_
                                             'gx#prelude-context::t)
                                            (begin
                                              (if (table-ref
                                                   (##structure-ref
                                                    (gxc#current-compile-optimizer-info)
                                                    '2
                                                    gxc#optimizer-info::t
                                                    '#f)
                                                   (##structure-ref
                                                    _hd19912_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   '#f)
                                                  '#!void
                                                  (begin
                                                    (_lp19889_
                                                     (##structure-ref
                                                      _hd19912_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f))
                                                    (gxc#optimizer-load-ssxi
                                                     _hd19912_)))
                                              (_lp19889_ _rest19911_))
                                            (if (##structure-direct-instance-of?
                                                 _hd19912_
                                                 'gx#module-import::t)
                                                (_lp19889_
                                                 (cons (##direct-structure-ref
                                                        _hd19912_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       _rest19911_))
                                                (if (##structure-direct-instance-of?
                                                     _hd19912_
                                                     'gx#module-export::t)
                                                    (_lp19889_
                                                     (cons (##direct-structure-ref
                                                            _hd19912_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)
                                                           _rest19911_))
                                                    (if (##structure-direct-instance-of?
                                                         _hd19912_
                                                         'gx#import-set::t)
                                                        (_lp19889_
                                                         (cons (##direct-structure-ref
                                                                _hd19912_
                                                                '1
                                                                gx#import-set::t
                                                                '#f)
                                                               _rest19911_))
                                                        (error '"Unexpected module import"
                                                               _hd19912_)))))))))
                             (if (##pair? _rest1989219900_)
                                 (let ((_hd1989719922_
                                        (##car _rest1989219900_))
                                       (_tl1989819924_
                                        (##cdr _rest1989219900_)))
                                   (let ((_hd19927_ _hd1989719922_))
                                     (let ((_rest19929_ _tl1989819924_))
                                       (_K1989619919_ _rest19929_ _hd19927_))))
                                 (_else1989419908_)))))))))
           _lp19889_)
         _deps19887_))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx19865_)
      (if (if (##structure-instance-of? _ctx19865_ 'gx#module-context::t)
              (list? (##structure-ref _ctx19865_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht19867_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id19869_
                   (##structure-ref _ctx19865_ '1 gx#expander-context::t '#f)))
              (let ((_mod19871_ (table-ref _ht19867_ _id19869_ '#f)))
                (let ()
                  (let ((_$e19874_ _mod19871_))
                    (if _$e19874_
                        _$e19874_
                        (let ((_mod19877_
                               (gxc#optimizer-import-ssxi _ctx19865_)))
                          (let ((_val19882_
                                 (let ((_$e19879_ _mod19877_))
                                   (if _$e19879_ _$e19879_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht19867_ _id19869_ _val19882_)
                                _val19882_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx19842_)
      (let ((_catch-e19844_
             (lambda (_exn19863_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx19842_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn19863_))
                     '#!void)
                 '#f))))
        (let ((_import-e19845_
               (lambda ()
                 (let ((_str-id19848_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx19842_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path19856_
                          (let ((_odir1984919851_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1984919851_
                                (let ((_odir19854_ _odir1984919851_))
                                  (path-expand
                                   (string-append _str-id19848_ '".ss")
                                   _odir19854_))
                                '#f))))
                     (let ((_library-path19858_
                            (string->symbol
                             (string-append '":" _str-id19848_ '".ss"))))
                       (let ((_ssxi-path19860_
                              (if (if _artefact-path19856_
                                      (file-exists? _artefact-path19856_)
                                      '#f)
                                  _artefact-path19856_
                                  _library-path19858_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path19860_)
                             (gx#import-module__opt-lambda11392
                              _ssxi-path19860_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx19842_ '1 gx#expander-context::t '#f)
              (with-exception-catcher _catch-e19844_ _import-e19845_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args19839_
      (apply make-struct-instance gxc#!type::t _$args19839_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args19836_
      (apply make-struct-instance gxc#!alias::t _$args19836_)))
  (define gxc#!struct-type::t
    (make-struct-type
     'gxc#!struct-type::t
     gxc#!type::t
     '6
     '!struct-type
     '()
     ':init!))
  (define gxc#!struct-type? (make-struct-predicate gxc#!struct-type::t))
  (define gxc#make-!struct-type
    (lambda _$args19833_
      (apply make-struct-instance gxc#!struct-type::t _$args19833_)))
  (define gxc#!struct-type-super
    (make-struct-field-accessor gxc#!struct-type::t '0))
  (define gxc#!struct-type-fields
    (make-struct-field-accessor gxc#!struct-type::t '1))
  (define gxc#!struct-type-xfields
    (make-struct-field-accessor gxc#!struct-type::t '2))
  (define gxc#!struct-type-ctor
    (make-struct-field-accessor gxc#!struct-type::t '3))
  (define gxc#!struct-type-plist
    (make-struct-field-accessor gxc#!struct-type::t '4))
  (define gxc#!struct-type-methods
    (make-struct-field-accessor gxc#!struct-type::t '5))
  (define gxc#!struct-type-super-set!
    (make-struct-field-mutator gxc#!struct-type::t '0))
  (define gxc#!struct-type-fields-set!
    (make-struct-field-mutator gxc#!struct-type::t '1))
  (define gxc#!struct-type-xfields-set!
    (make-struct-field-mutator gxc#!struct-type::t '2))
  (define gxc#!struct-type-ctor-set!
    (make-struct-field-mutator gxc#!struct-type::t '3))
  (define gxc#!struct-type-plist-set!
    (make-struct-field-mutator gxc#!struct-type::t '4))
  (define gxc#!struct-type-methods-set!
    (make-struct-field-mutator gxc#!struct-type::t '5))
  (define gxc#!procedure::t
    (make-struct-type 'gxc#!procedure::t gxc#!type::t '0 '!procedure '() '#f))
  (define gxc#!procedure? (make-struct-predicate gxc#!procedure::t))
  (define gxc#make-!procedure
    (lambda _$args19830_
      (apply make-struct-instance gxc#!procedure::t _$args19830_)))
  (define gxc#!struct-pred::t
    (make-struct-type
     'gxc#!struct-pred::t
     gxc#!procedure::t
     '0
     '!struct-pred
     '()
     '#f))
  (define gxc#!struct-pred? (make-struct-predicate gxc#!struct-pred::t))
  (define gxc#make-!struct-pred
    (lambda _$args19827_
      (apply make-struct-instance gxc#!struct-pred::t _$args19827_)))
  (define gxc#!struct-cons::t
    (make-struct-type
     'gxc#!struct-cons::t
     gxc#!procedure::t
     '0
     '!struct-cons
     '()
     '#f))
  (define gxc#!struct-cons? (make-struct-predicate gxc#!struct-cons::t))
  (define gxc#make-!struct-cons
    (lambda _$args19824_
      (apply make-struct-instance gxc#!struct-cons::t _$args19824_)))
  (define gxc#!struct-getf::t
    (make-struct-type
     'gxc#!struct-getf::t
     gxc#!procedure::t
     '2
     '!struct-getf
     '()
     '#f))
  (define gxc#!struct-getf? (make-struct-predicate gxc#!struct-getf::t))
  (define gxc#make-!struct-getf
    (lambda _$args19821_
      (apply make-struct-instance gxc#!struct-getf::t _$args19821_)))
  (define gxc#!struct-getf-off
    (make-struct-field-accessor gxc#!struct-getf::t '0))
  (define gxc#!struct-getf-unchecked?
    (make-struct-field-accessor gxc#!struct-getf::t '1))
  (define gxc#!struct-getf-off-set!
    (make-struct-field-mutator gxc#!struct-getf::t '0))
  (define gxc#!struct-getf-unchecked?-set!
    (make-struct-field-mutator gxc#!struct-getf::t '1))
  (define gxc#!struct-setf::t
    (make-struct-type
     'gxc#!struct-setf::t
     gxc#!procedure::t
     '2
     '!struct-setf
     '()
     '#f))
  (define gxc#!struct-setf? (make-struct-predicate gxc#!struct-setf::t))
  (define gxc#make-!struct-setf
    (lambda _$args19818_
      (apply make-struct-instance gxc#!struct-setf::t _$args19818_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-unchecked?
    (make-struct-field-accessor gxc#!struct-setf::t '1))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-unchecked?-set!
    (make-struct-field-mutator gxc#!struct-setf::t '1))
  (define gxc#!lambda::t
    (make-struct-type
     'gxc#!lambda::t
     gxc#!procedure::t
     '4
     '!lambda
     '()
     ':init!))
  (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
  (define gxc#make-!lambda
    (lambda _$args19815_
      (apply make-struct-instance gxc#!lambda::t _$args19815_)))
  (define gxc#!lambda-arity (make-struct-field-accessor gxc#!lambda::t '0))
  (define gxc#!lambda-dispatch (make-struct-field-accessor gxc#!lambda::t '1))
  (define gxc#!lambda-inline (make-struct-field-accessor gxc#!lambda::t '2))
  (define gxc#!lambda-inline-typedecl
    (make-struct-field-accessor gxc#!lambda::t '3))
  (define gxc#!lambda-arity-set! (make-struct-field-mutator gxc#!lambda::t '0))
  (define gxc#!lambda-dispatch-set!
    (make-struct-field-mutator gxc#!lambda::t '1))
  (define gxc#!lambda-inline-set!
    (make-struct-field-mutator gxc#!lambda::t '2))
  (define gxc#!lambda-inline-typedecl-set!
    (make-struct-field-mutator gxc#!lambda::t '3))
  (define gxc#!case-lambda::t
    (make-struct-type
     'gxc#!case-lambda::t
     gxc#!procedure::t
     '1
     '!case-lambda
     '()
     '#f))
  (define gxc#!case-lambda? (make-struct-predicate gxc#!case-lambda::t))
  (define gxc#make-!case-lambda
    (lambda _$args19812_
      (apply make-struct-instance gxc#!case-lambda::t _$args19812_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self19804_
             _id19805_
             _super19806_
             _fields19807_
             _xfields19808_
             _ctor19809_
             _plist19810_)
      (struct-instance-init!
       _self19804_
       _id19805_
       _super19806_
       _fields19807_
       _xfields19808_
       _ctor19809_
       _plist19810_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda19768
      (lambda (_self19770_
               _id19771_
               _arity19772_
               _dispatch19773_
               _inline19774_
               _typedecl19775_)
        (struct-instance-init!
         _self19770_
         _id19771_
         _arity19772_
         _dispatch19773_
         _inline19774_
         _typedecl19775_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self19780_ _id19781_ _arity19782_ _dispatch19783_)
          (let ((_inline19785_ '#f))
            (let ((_typedecl19787_ '#f))
              (struct-instance-init!
               _self19780_
               _id19781_
               _arity19782_
               _dispatch19783_
               _inline19785_
               _typedecl19787_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self19789_
                 _id19790_
                 _arity19791_
                 _dispatch19792_
                 _inline19793_)
          (let ((_typedecl19795_ '#f))
            (struct-instance-init!
             _self19789_
             _id19790_
             _arity19791_
             _dispatch19792_
             _inline19793_
             _typedecl19795_))))
      (define gxc#!lambda:::init!
        (lambda _g19968_
          (let ((_g19967_ (length _g19968_)))
            (cond ((fx= _g19967_ 4) (apply gxc#!lambda:::init!__0 _g19968_))
                  ((fx= _g19967_ 5) (apply gxc#!lambda:::init!__1 _g19968_))
                  ((fx= _g19967_ 6) (apply struct-instance-init! _g19968_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g19968_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type19762_)
      (let ((_$e19764_
             (##structure-ref _type19762_ '7 gxc#!struct-type::t '#f)))
        (if _$e19764_
            (values _$e19764_)
            (let ((_vtab19767_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type19762_
                 _vtab19767_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab19767_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type19753_ _method19754_)
      (let ((_vtab1975519757_
             (##structure-ref _type19753_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1975519757_
            (let ((_vtab19760_ _vtab1975519757_))
              (table-ref _vtab19760_ _method19754_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda19735
      (lambda (_sym19737_ _type19738_ _local?19739_)
        (begin
          (if (##structure-instance-of? _type19738_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym19737_
                     _type19738_))
          (gxc#verbose
           '"declare-type "
           _sym19737_
           '" "
           (struct->list _type19738_))
          (table-set!
           (if _local?19739_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym19737_
           _type19738_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym19744_ _type19745_)
          (let ((_local?19747_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda19735
             _sym19744_
             _type19745_
             _local?19747_))))
      (define gxc#optimizer-declare-type!
        (lambda _g19970_
          (let ((_g19969_ (length _g19970_)))
            (cond ((fx= _g19969_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g19970_))
                  ((fx= _g19969_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda19735
                          _g19970_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g19970_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda19711
      (lambda (_type-t19713_ _method19714_ _sym19715_ _rebind?19716_)
        (let ((_type19718_ (gxc#optimizer-resolve-type _type-t19713_)))
          (if (##structure-instance-of? _type19718_ 'gxc#!struct-type::t)
              (let ((_vtab19720_ (gxc#!struct-type-vtab _type19718_)))
                (if _rebind?19716_
                    (if (hash-key? _vtab19720_ _method19714_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t19713_
                         '" "
                         _method19714_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t19713_
                         '" "
                         _method19714_))
                    (if (hash-key? _vtab19720_ _method19714_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t19713_
                           '" "
                           _method19714_
                           '" => "
                           _sym19715_)
                          (table-set! _vtab19720_ _method19714_ _sym19715_)))))
              (if (not _type19718_)
                  (gxc#verbose '"declare-method: unknown type " _type-t19713_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t19713_
                         _type19718_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t19725_ _method19726_ _sym19727_)
          (let ((_rebind?19729_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda19711
             _type-t19725_
             _method19726_
             _sym19727_
             _rebind?19729_))))
      (define gxc#optimizer-declare-method!
        (lambda _g19972_
          (let ((_g19971_ (length _g19972_)))
            (cond ((fx= _g19971_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g19972_))
                  ((fx= _g19971_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda19711
                          _g19972_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g19972_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym19701_)
      (let ((_$e19709_
             (let ((_ht1970219704_ (gxc#current-compile-local-type)))
               (if _ht1970219704_
                   (let ((_ht19707_ _ht1970219704_))
                     (table-ref _ht19707_ _sym19701_ '#f))
                   '#f))))
        (if _$e19709_
            _$e19709_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym19701_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym19693_)
      (let ((_type1969419696_ (gxc#optimizer-lookup-type _sym19693_)))
        (if _type1969419696_
            (let ((_type19699_ _type1969419696_))
              (if (##structure-instance-of? _type19699_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type19699_ '1 gxc#!type::t '#f))
                  _type19699_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t19688_ _method19689_)
      (let ((_type19691_ (gxc#optimizer-resolve-type _type-t19688_)))
        (if (##structure-instance-of? _type19691_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type19691_ _method19689_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx19684_)
      (begin
        (gxc#apply-collect-mutators _stx19684_)
        (let ((_stx19686_ (gxc#apply-lift-top-lambdas _stx19684_)))
          (begin
            (gxc#apply-collect-type-info _stx19686_)
            (gxc#apply-optimize-call _stx19686_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl19681_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19681_ '%#lambda gxc#xform-identity)
           (table-set! _tbl19681_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl19681_ '%#let-values gxc#xform-identity)
           (table-set! _tbl19681_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl19681_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl19681_ '%#quote gxc#xform-identity)
           (table-set! _tbl19681_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19681_ '%#call gxc#xform-identity)
           (table-set! _tbl19681_ '%#if gxc#xform-identity)
           (table-set! _tbl19681_ '%#ref gxc#xform-identity)
           (table-set! _tbl19681_ '%#set! gxc#xform-identity)
           (table-set! _tbl19681_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl19681_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl19681_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl19681_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl19681_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl19681_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl19681_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl19681_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl19681_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl19677_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19677_ '%#begin gxc#xform-identity)
           (table-set! _tbl19677_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl19677_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl19677_ '%#module gxc#xform-identity)
           (table-set! _tbl19677_ '%#import gxc#xform-identity)
           (table-set! _tbl19677_ '%#export gxc#xform-identity)
           (table-set! _tbl19677_ '%#provide gxc#xform-identity)
           (table-set! _tbl19677_ '%#extern gxc#xform-identity)
           (table-set! _tbl19677_ '%#define-values gxc#xform-identity)
           (table-set! _tbl19677_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl19677_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl19677_ '%#declare gxc#xform-identity)
           _tbl19677_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl19673_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19673_ (force gxc#&identity-special-form))
           (hash-copy! _tbl19673_ (force gxc#&identity-expression))
           _tbl19673_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl19669_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19669_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl19669_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl19669_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl19669_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl19669_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl19669_ '%#quote gxc#xform-identity)
           (table-set! _tbl19669_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19669_ '%#call gxc#xform-operands)
           (table-set! _tbl19669_ '%#if gxc#xform-operands)
           (table-set! _tbl19669_ '%#ref gxc#xform-identity)
           (table-set! _tbl19669_ '%#set! gxc#xform-setq%)
           (table-set! _tbl19669_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl19669_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl19669_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl19669_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl19669_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl19669_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl19669_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl19669_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl19669_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl19665_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19665_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl19665_ (force gxc#&identity))
           (table-set! _tbl19665_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19665_ '%#module gxc#xform-module%)
           (table-set! _tbl19665_ '%#define-values gxc#xform-define-values%)
           _tbl19665_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl19661_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19661_ (force gxc#&void))
           (table-set! _tbl19661_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19661_ '%#module gxc#collect-module%)
           (table-set! _tbl19661_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19661_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19661_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl19661_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl19661_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl19661_ '%#call gxc#collect-operands)
           (table-set! _tbl19661_ '%#if gxc#collect-operands)
           (table-set! _tbl19661_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl19661_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl19661_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl19661_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl19661_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl19661_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl19661_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl19661_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl19661_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl19661_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx19654_ . _args19656_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19654_ _args19656_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl19651_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19651_ (force gxc#&basic-xform))
           (table-set!
            _tbl19651_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl19651_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl19651_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl19651_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl19651_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx19644_ . _args19646_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19644_ _args19646_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl19641_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19641_ (force gxc#&basic-xform-expression))
           (table-set! _tbl19641_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19641_ '%#ref gxc#expression-subst-ref%)
           _tbl19641_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx19634_ . _args19636_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19634_ _args19636_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl19631_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19631_ (force gxc#&void))
           (table-set! _tbl19631_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19631_ '%#module gxc#collect-module%)
           (table-set!
            _tbl19631_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl19631_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19631_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19631_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl19631_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl19631_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl19631_ '%#call gxc#collect-type-call%)
           (table-set! _tbl19631_ '%#if gxc#collect-operands)
           (table-set! _tbl19631_ '%#set! gxc#collect-body-setq%)
           _tbl19631_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx19624_ . _args19626_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19624_ _args19626_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl19621_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19621_ (force gxc#&false))
           (table-set! _tbl19621_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl19621_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl19621_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl19621_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl19621_ '%#ref gxc#basic-expression-type-ref%)
           _tbl19621_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx19614_ . _args19616_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19614_ _args19616_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl19611_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19611_ (force gxc#&basic-xform))
           (table-set! _tbl19611_ '%#call gxc#optimize-call%)
           _tbl19611_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx19604_ . _args19606_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19604_ _args19606_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl19601_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19601_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl19601_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl19601_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl19601_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl19601_ '%#call gxc#generate-ssxi-call%)
           _tbl19601_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx19594_ . _args19596_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19594_ _args19596_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx19591_ . _args19592_) _stx19591_))
  (define gxc#xform-wrap-source
    (lambda (_stx19588_ _src-stx19589_)
      (gx#stx-wrap-source _stx19588_ (gx#stx-source _src-stx19589_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args19582_)
      (lambda (_g1958319585_)
        (apply gxc#compile-e _g1958319585_ _args19582_))))
  (define gxc#xform-begin%
    (lambda (_stx19541_ . _args19542_)
      (let ((_g1954419554_
             (lambda (_g1954519551_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1954519551_))))
        (let ((_g1954319579_
               (lambda (_g1954519557_)
                 (if (gx#stx-pair? _g1954519557_)
                     (let ((_e1954719559_ (gx#stx-e _g1954519557_)))
                       (let ((_hd1954819562_ (##car _e1954719559_))
                             (_tl1954919564_ (##cdr _e1954719559_)))
                         ((lambda (_L19567_)
                            (let ((_forms19577_
                                   (map (gxc#xform-apply-compile-e _args19542_)
                                        _L19567_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms19577_)
                               _stx19541_)))
                          _tl1954919564_)))
                     (_g1954419554_ _g1954519557_)))))
          (_g1954319579_ _stx19541_)))))
  (define gxc#xform-module%
    (lambda (_stx19478_ . _args19479_)
      (let ((_g1948119495_
             (lambda (_g1948219492_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1948219492_))))
        (let ((_g1948019538_
               (lambda (_g1948219498_)
                 (if (gx#stx-pair? _g1948219498_)
                     (let ((_e1948519500_ (gx#stx-e _g1948219498_)))
                       (let ((_hd1948619503_ (##car _e1948519500_))
                             (_tl1948719505_ (##cdr _e1948519500_)))
                         (if (gx#stx-pair? _tl1948719505_)
                             (let ((_e1948819508_ (gx#stx-e _tl1948719505_)))
                               (let ((_hd1948919511_ (##car _e1948819508_))
                                     (_tl1949019513_ (##cdr _e1948819508_)))
                                 ((lambda (_L19516_ _L19517_)
                                    (let ((_ctx19530_
                                           (gx#syntax-local-e__0 _L19517_)))
                                      (let ((_code19532_
                                             (##structure-ref
                                              _ctx19530_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code19535_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code19532_
                                                         _args19479_))
                                                gx#current-expander-context
                                                _ctx19530_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx19530_
                                               _code19535_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L19517_
                                                           (cons _code19535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx19478_)))))))
                                  _tl1949019513_
                                  _hd1948919511_)))
                             (_g1948119495_ _g1948219498_))))
                     (_g1948119495_ _g1948219498_)))))
          (_g1948019538_ _stx19478_)))))
  (define gxc#xform-define-values%
    (lambda (_stx19408_ . _args19409_)
      (let ((_g1941119428_
             (lambda (_g1941219425_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1941219425_))))
        (let ((_g1941019475_
               (lambda (_g1941219431_)
                 (if (gx#stx-pair? _g1941219431_)
                     (let ((_e1941519433_ (gx#stx-e _g1941219431_)))
                       (let ((_hd1941619436_ (##car _e1941519433_))
                             (_tl1941719438_ (##cdr _e1941519433_)))
                         (if (gx#stx-pair? _tl1941719438_)
                             (let ((_e1941819441_ (gx#stx-e _tl1941719438_)))
                               (let ((_hd1941919444_ (##car _e1941819441_))
                                     (_tl1942019446_ (##cdr _e1941819441_)))
                                 (if (gx#stx-pair? _tl1942019446_)
                                     (let ((_e1942119449_
                                            (gx#stx-e _tl1942019446_)))
                                       (let ((_hd1942219452_
                                              (##car _e1942119449_))
                                             (_tl1942319454_
                                              (##cdr _e1942119449_)))
                                         (if (gx#stx-null? _tl1942319454_)
                                             ((lambda (_L19457_ _L19458_)
                                                (let ((_expr19473_
                                                       (apply gxc#compile-e
                                                              _L19457_
                                                              _args19409_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L19458_
                                                               (cons _expr19473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx19408_)))
                                              _hd1942219452_
                                              _hd1941919444_)
                                             (_g1941119428_ _g1941219431_))))
                                     (_g1941119428_ _g1941219431_))))
                             (_g1941119428_ _g1941219431_))))
                     (_g1941119428_ _g1941219431_)))))
          (_g1941019475_ _stx19408_)))))
  (define gxc#xform-lambda%
    (lambda (_stx19351_ . _args19352_)
      (let ((_g1935419368_
             (lambda (_g1935519365_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1935519365_))))
        (let ((_g1935319405_
               (lambda (_g1935519371_)
                 (if (gx#stx-pair? _g1935519371_)
                     (let ((_e1935819373_ (gx#stx-e _g1935519371_)))
                       (let ((_hd1935919376_ (##car _e1935819373_))
                             (_tl1936019378_ (##cdr _e1935819373_)))
                         (if (gx#stx-pair? _tl1936019378_)
                             (let ((_e1936119381_ (gx#stx-e _tl1936019378_)))
                               (let ((_hd1936219384_ (##car _e1936119381_))
                                     (_tl1936319386_ (##cdr _e1936119381_)))
                                 ((lambda (_L19389_ _L19390_)
                                    (let ((_body19403_
                                           (map (gxc#xform-apply-compile-e
                                                 _args19352_)
                                                _L19389_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L19390_ _body19403_))
                                       _stx19351_)))
                                  _tl1936319386_
                                  _hd1936219384_)))
                             (_g1935419368_ _g1935519371_))))
                     (_g1935419368_ _g1935519371_)))))
          (_g1935319405_ _stx19351_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx19264_ . _args19265_)
      (let ((_clause-e19267_
             (lambda (_clause19308_)
               (let ((_g1931019321_
                      (lambda (_g1931119318_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1931119318_))))
                 (let ((_g1930919348_
                        (lambda (_g1931119324_)
                          (if (gx#stx-pair? _g1931119324_)
                              (let ((_e1931419326_ (gx#stx-e _g1931119324_)))
                                (let ((_hd1931519329_ (##car _e1931419326_))
                                      (_tl1931619331_ (##cdr _e1931419326_)))
                                  ((lambda (_L19334_ _L19335_)
                                     (let ((_body19346_
                                            (map (gxc#xform-apply-compile-e
                                                  _args19265_)
                                                 _L19334_)))
                                       (cons _L19335_ _body19346_)))
                                   _tl1931619331_
                                   _hd1931519329_)))
                              (_g1931019321_ _g1931119324_)))))
                   (_g1930919348_ _clause19308_))))))
        (let ((_g1926919279_
               (lambda (_g1927019276_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1927019276_))))
          (let ((_g1926819305_
                 (lambda (_g1927019282_)
                   (if (gx#stx-pair? _g1927019282_)
                       (let ((_e1927219284_ (gx#stx-e _g1927019282_)))
                         (let ((_hd1927319287_ (##car _e1927219284_))
                               (_tl1927419289_ (##cdr _e1927219284_)))
                           ((lambda (_L19292_)
                              (let ((_clauses19303_
                                     (map _clause-e19267_ _L19292_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses19303_)
                                 _stx19264_)))
                            _tl1927419289_)))
                       (_g1926919279_ _g1927019282_)))))
            (_g1926819305_ _stx19264_))))))
  (define gxc#xform-let-values%
    (lambda (_stx19058_ . _args19059_)
      (let ((_g1906119094_
             (lambda (_g1906219091_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1906219091_))))
        (let ((_g1906019261_
               (lambda (_g1906219097_)
                 (if (gx#stx-pair? _g1906219097_)
                     (let ((_e1906719099_ (gx#stx-e _g1906219097_)))
                       (let ((_hd1906819102_ (##car _e1906719099_))
                             (_tl1906919104_ (##cdr _e1906719099_)))
                         (if (gx#stx-pair? _tl1906919104_)
                             (let ((_e1907019107_ (gx#stx-e _tl1906919104_)))
                               (let ((_hd1907119110_ (##car _e1907019107_))
                                     (_tl1907219112_ (##cdr _e1907019107_)))
                                 (if (gx#stx-pair/null? _hd1907119110_)
                                     (if (fx>= (gx#stx-length _hd1907119110_)
                                               '0)
                                         (let ((_g19973_
                                                (gx#syntax-split-splice
                                                 _hd1907119110_
                                                 '0)))
                                           (begin
                                             (let ((_g19974_
                                                    (values-count _g19973_)))
                                               (if (not (fx= _g19974_ 2))
                                                   (error "Context expects 2 values"
                                                          _g19974_)))
                                             (let ((_target1907319115_
                                                    (values-ref _g19973_ 0))
                                                   (_tl1907519117_
                                                    (values-ref _g19973_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1907519117_)
                                                   (letrec ((_loop1907619120_
                                                             (lambda (_hd1907419123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1908019125_
                              _hd1908119127_)
                       (if (gx#stx-pair? _hd1907419123_)
                           (let ((_e1907719130_ (gx#stx-e _hd1907419123_)))
                             (let ((_lp-hd1907819133_ (##car _e1907719130_))
                                   (_lp-tl1907919135_ (##cdr _e1907719130_)))
                               (if (gx#stx-pair? _lp-hd1907819133_)
                                   (let ((_e1908419138_
                                          (gx#stx-e _lp-hd1907819133_)))
                                     (let ((_hd1908519141_
                                            (##car _e1908419138_))
                                           (_tl1908619143_
                                            (##cdr _e1908419138_)))
                                       (if (gx#stx-pair? _tl1908619143_)
                                           (let ((_e1908719146_
                                                  (gx#stx-e _tl1908619143_)))
                                             (let ((_hd1908819149_
                                                    (##car _e1908719146_))
                                                   (_tl1908919151_
                                                    (##cdr _e1908719146_)))
                                               (if (gx#stx-null?
                                                    _tl1908919151_)
                                                   (_loop1907619120_
                                                    _lp-tl1907919135_
                                                    (cons _hd1908819149_
                                                          _expr1908019125_)
                                                    (cons _hd1908519141_
                                                          _hd1908119127_))
                                                   (_g1906119094_
                                                    _g1906219097_))))
                                           (_g1906119094_ _g1906219097_))))
                                   (_g1906119094_ _g1906219097_))))
                           (let ((_expr1908219154_ (reverse _expr1908019125_))
                                 (_hd1908319156_ (reverse _hd1908119127_)))
                             ((lambda (_L19159_ _L19160_ _L19161_ _L19162_)
                                (let ((_g1918119197_
                                       (lambda (_g1918219194_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1918219194_))))
                                  (let ((_g1918019251_
                                         (lambda (_g1918219200_)
                                           (if (gx#stx-pair/null?
                                                _g1918219200_)
                                               (if (fx>= (gx#stx-length
                                                          _g1918219200_)
                                                         '0)
                                                   (let ((_g19975_
                                                          (gx#syntax-split-splice
                                                           _g1918219200_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19976_
                                                              (values-count
                                                               _g19975_)))
                                                         (if (not (fx= _g19976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19976_)))
               (let ((_target1918419202_ (values-ref _g19975_ 0))
                     (_tl1918619204_ (values-ref _g19975_ 1)))
                 (if (gx#stx-null? _tl1918619204_)
                     (letrec ((_loop1918719207_
                               (lambda (_hd1918519210_ _expr1919119212_)
                                 (if (gx#stx-pair? _hd1918519210_)
                                     (let ((_e1918819215_
                                            (gx#syntax-e _hd1918519210_)))
                                       (let ((_lp-hd1918919218_
                                              (##car _e1918819215_))
                                             (_lp-tl1919019220_
                                              (##cdr _e1918819215_)))
                                         (_loop1918719207_
                                          _lp-tl1919019220_
                                          (cons _lp-hd1918919218_
                                                _expr1919119212_))))
                                     (let ((_expr1919219223_
                                            (reverse _expr1919119212_)))
                                       ((lambda (_L19226_)
                                          (let ()
                                            (let ((_body19239_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args19059_)
                                                        _L19159_)))
                                              (gxc#xform-wrap-source
                                               (cons _L19162_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L19226_
                                                              _L19161_)
                                                             (foldr (lambda (_g1924019244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1924119246_
                                     _g1924219248_)
                              (cons (cons _g1924119246_
                                          (cons _g1924019244_ '()))
                                    _g1924219248_))
                            '()
                            _L19226_
                            _L19161_))
                   _body19239_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx19058_))))
                                        _expr1919219223_))))))
                       (_loop1918719207_ _target1918419202_ '()))
                     (_g1918119197_ _g1918219200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1918119197_
                                                    _g1918219200_))
                                               (_g1918119197_
                                                _g1918219200_)))))
                                    (_g1918019251_
                                     (map (gxc#xform-apply-compile-e
                                           _args19059_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1925319256_
                                                             _g1925419258_)
                                                      (cons _g1925319256_
                                                            _g1925419258_))
                                                    '()
                                                    _L19160_)))))))
                              _tl1907219112_
                              _expr1908219154_
                              _hd1908319156_
                              _hd1906819102_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1907619120_
                                                      _target1907319115_
                                                      '()
                                                      '()))
                                                   (_g1906119094_
                                                    _g1906219097_)))))
                                         (_g1906119094_ _g1906219097_))
                                     (_g1906119094_ _g1906219097_))))
                             (_g1906119094_ _g1906219097_))))
                     (_g1906119094_ _g1906219097_)))))
          (_g1906019261_ _stx19058_)))))
  (define gxc#xform-operands
    (lambda (_stx19014_ . _args19015_)
      (let ((_g1901719028_
             (lambda (_g1901819025_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1901819025_))))
        (let ((_g1901619055_
               (lambda (_g1901819031_)
                 (if (gx#stx-pair? _g1901819031_)
                     (let ((_e1902119033_ (gx#stx-e _g1901819031_)))
                       (let ((_hd1902219036_ (##car _e1902119033_))
                             (_tl1902319038_ (##cdr _e1902119033_)))
                         ((lambda (_L19041_ _L19042_)
                            (let ((_rands19053_
                                   (map (gxc#xform-apply-compile-e _args19015_)
                                        _L19041_)))
                              (gxc#xform-wrap-source
                               (cons _L19042_ _rands19053_)
                               _stx19014_)))
                          _tl1902319038_
                          _hd1902219036_)))
                     (_g1901719028_ _g1901819031_)))))
          (_g1901619055_ _stx19014_)))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx18944_ . _args18945_)
      (let ((_g1894718964_
             (lambda (_g1894818961_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1894818961_))))
        (let ((_g1894619011_
               (lambda (_g1894818967_)
                 (if (gx#stx-pair? _g1894818967_)
                     (let ((_e1895118969_ (gx#stx-e _g1894818967_)))
                       (let ((_hd1895218972_ (##car _e1895118969_))
                             (_tl1895318974_ (##cdr _e1895118969_)))
                         (if (gx#stx-pair? _tl1895318974_)
                             (let ((_e1895418977_ (gx#stx-e _tl1895318974_)))
                               (let ((_hd1895518980_ (##car _e1895418977_))
                                     (_tl1895618982_ (##cdr _e1895418977_)))
                                 (if (gx#stx-pair? _tl1895618982_)
                                     (let ((_e1895718985_
                                            (gx#stx-e _tl1895618982_)))
                                       (let ((_hd1895818988_
                                              (##car _e1895718985_))
                                             (_tl1895918990_
                                              (##cdr _e1895718985_)))
                                         (if (gx#stx-null? _tl1895918990_)
                                             ((lambda (_L18993_ _L18994_)
                                                (let ((_expr19009_
                                                       (apply gxc#compile-e
                                                              _L18993_
                                                              _args18945_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L18994_
                                                               (cons _expr19009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18944_)))
                                              _hd1895818988_
                                              _hd1895518980_)
                                             (_g1894718964_ _g1894818967_))))
                                     (_g1894718964_ _g1894818967_))))
                             (_g1894718964_ _g1894818967_))))
                     (_g1894718964_ _g1894818967_)))))
          (_g1894619011_ _stx18944_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx18875_)
      (let ((_g1887718894_
             (lambda (_g1887818891_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1887818891_))))
        (let ((_g1887618941_
               (lambda (_g1887818897_)
                 (if (gx#stx-pair? _g1887818897_)
                     (let ((_e1888118899_ (gx#stx-e _g1887818897_)))
                       (let ((_hd1888218902_ (##car _e1888118899_))
                             (_tl1888318904_ (##cdr _e1888118899_)))
                         (if (gx#stx-pair? _tl1888318904_)
                             (let ((_e1888418907_ (gx#stx-e _tl1888318904_)))
                               (let ((_hd1888518910_ (##car _e1888418907_))
                                     (_tl1888618912_ (##cdr _e1888418907_)))
                                 (if (gx#stx-pair? _tl1888618912_)
                                     (let ((_e1888718915_
                                            (gx#stx-e _tl1888618912_)))
                                       (let ((_hd1888818918_
                                              (##car _e1888718915_))
                                             (_tl1888918920_
                                              (##cdr _e1888718915_)))
                                         (if (gx#stx-null? _tl1888918920_)
                                             ((lambda (_L18923_ _L18924_)
                                                (let ((_sym18939_
                                                       (gxc#generate-runtime-binding-id
                                                        _L18924_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym18939_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym18939_
                                                     '#t)
                                                    (gxc#compile-e _L18923_))))
                                              _hd1888818918_
                                              _hd1888518910_)
                                             (_g1887718894_ _g1887818897_))))
                                     (_g1887718894_ _g1887818897_))))
                             (_g1887718894_ _g1887818897_))))
                     (_g1887718894_ _g1887818897_)))))
          (_g1887618941_ _stx18875_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form18109_)
      (let ((_g1811418271_
             (lambda (_g1811518268_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1811518268_))))
        (let ((_g1811318278_ (lambda (_g1811518274_) ((lambda () '#f)))))
          (let ((_g1811218418_
                 (lambda (_g1811518281_)
                   (if (gx#stx-pair? _g1811518281_)
                       (let ((_e1823118283_ (gx#stx-e _g1811518281_)))
                         (let ((_hd1823218286_ (##car _e1823118283_))
                               (_tl1823318288_ (##cdr _e1823118283_)))
                           (if (gx#stx-pair? _tl1823318288_)
                               (let ((_e1823418291_ (gx#stx-e _tl1823318288_)))
                                 (let ((_hd1823518294_ (##car _e1823418291_))
                                       (_tl1823618296_ (##cdr _e1823418291_)))
                                   (if (gx#stx-pair? _hd1823518294_)
                                       (let ((_e1823718299_
                                              (gx#stx-e _hd1823518294_)))
                                         (let ((_hd1823818302_
                                                (##car _e1823718299_))
                                               (_tl1823918304_
                                                (##cdr _e1823718299_)))
                                           (if (gx#identifier? _hd1823818302_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1823818302_)
                                                   (if (gx#stx-pair?
                                                        _tl1823918304_)
                                                       (let ((_e1824018307_
                                                              (gx#stx-e
                                                               _tl1823918304_)))
                                                         (let ((_hd1824118310_
                                                                (##car _e1824018307_))
                                                               (_tl1824218312_
                                                                (##cdr _e1824018307_)))
                                                           (if (gx#stx-pair?
                                                                _hd1824118310_)
                                                               (let ((_e1824318315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1824118310_)))
                         (let ((_hd1824418318_ (##car _e1824318315_))
                               (_tl1824518320_ (##cdr _e1824318315_)))
                           (if (gx#identifier? _hd1824418318_)
                               (if (gx#stx-eq? '%#ref _hd1824418318_)
                                   (if (gx#stx-pair? _tl1824518320_)
                                       (let ((_e1824618323_
                                              (gx#stx-e _tl1824518320_)))
                                         (let ((_hd1824718326_
                                                (##car _e1824618323_))
                                               (_tl1824818328_
                                                (##cdr _e1824618323_)))
                                           (if (gx#stx-null? _tl1824818328_)
                                               (if (gx#stx-pair?
                                                    _tl1824218312_)
                                                   (let ((_e1824918331_
                                                          (gx#stx-e
                                                           _tl1824218312_)))
                                                     (let ((_hd1825018334_
                                                            (##car _e1824918331_))
                                                           (_tl1825118336_
                                                            (##cdr _e1824918331_)))
                                                       (if (gx#stx-pair?
                                                            _hd1825018334_)
                                                           (let ((_e1825218339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1825018334_)))
                     (let ((_hd1825318342_ (##car _e1825218339_))
                           (_tl1825418344_ (##cdr _e1825218339_)))
                       (if (gx#identifier? _hd1825318342_)
                           (if (gx#stx-eq? '%#ref _hd1825318342_)
                               (if (gx#stx-pair? _tl1825418344_)
                                   (let ((_e1825518347_
                                          (gx#stx-e _tl1825418344_)))
                                     (let ((_hd1825618350_
                                            (##car _e1825518347_))
                                           (_tl1825718352_
                                            (##cdr _e1825518347_)))
                                       (if (gx#stx-null? _tl1825718352_)
                                           (if (gx#stx-pair? _tl1825118336_)
                                               (let ((_e1825818355_
                                                      (gx#stx-e
                                                       _tl1825118336_)))
                                                 (let ((_hd1825918358_
                                                        (##car _e1825818355_))
                                                       (_tl1826018360_
                                                        (##cdr _e1825818355_)))
                                                   (if (gx#stx-pair?
                                                        _hd1825918358_)
                                                       (let ((_e1826118363_
                                                              (gx#stx-e
                                                               _hd1825918358_)))
                                                         (let ((_hd1826218366_
                                                                (##car _e1826118363_))
                                                               (_tl1826318368_
                                                                (##cdr _e1826118363_)))
                                                           (if (gx#identifier?
                                                                _hd1826218366_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1826218366_)
                           (if (gx#stx-pair? _tl1826318368_)
                               (let ((_e1826418371_ (gx#stx-e _tl1826318368_)))
                                 (let ((_hd1826518374_ (##car _e1826418371_))
                                       (_tl1826618376_ (##cdr _e1826418371_)))
                                   (if (gx#stx-null? _tl1826618376_)
                                       (if (gx#stx-null? _tl1826018360_)
                                           (if (gx#stx-null? _tl1823618296_)
                                               ((lambda (_L18379_
                                                         _L18380_
                                                         _L18381_
                                                         _L18382_)
                                                  (if (if (gx#identifier?
                                                           _L18382_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L18381_)
                           'apply)
                      (if (gx#free-identifier=? _L18382_ _L18379_)
                          (not (gx#free-identifier=? _L18380_ _L18382_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1811318278_ _g1811518281_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1826518374_
                                                _hd1825618350_
                                                _hd1824718326_
                                                _hd1823218286_)
                                               (_g1811318278_ _g1811518281_))
                                           (_g1811318278_ _g1811518281_))
                                       (_g1811318278_ _g1811518281_))))
                               (_g1811318278_ _g1811518281_))
                           (_g1811318278_ _g1811518281_))
                       (_g1811318278_ _g1811518281_))))
               (_g1811318278_ _g1811518281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1811318278_ _g1811518281_))
                                           (_g1811318278_ _g1811518281_))))
                                   (_g1811318278_ _g1811518281_))
                               (_g1811318278_ _g1811518281_))
                           (_g1811318278_ _g1811518281_))))
                   (_g1811318278_ _g1811518281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1811318278_
                                                    _g1811518281_))
                                               (_g1811318278_ _g1811518281_))))
                                       (_g1811318278_ _g1811518281_))
                                   (_g1811318278_ _g1811518281_))
                               (_g1811318278_ _g1811518281_))))
                       (_g1811318278_ _g1811518281_))))
               (_g1811318278_ _g1811518281_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1811318278_
                                                    _g1811518281_))
                                               (_g1811318278_ _g1811518281_))))
                                       (_g1811318278_ _g1811518281_))))
                               (_g1811318278_ _g1811518281_))))
                       (_g1811318278_ _g1811518281_)))))
            (let ((_g1811118678_
                   (lambda (_g1811518421_)
                     (if (gx#stx-pair? _g1811518421_)
                         (let ((_e1816718423_ (gx#stx-e _g1811518421_)))
                           (let ((_hd1816818426_ (##car _e1816718423_))
                                 (_tl1816918428_ (##cdr _e1816718423_)))
                             (if (gx#stx-pair/null? _hd1816818426_)
                                 (if (fx>= (gx#stx-length _hd1816818426_) '0)
                                     (let ((_g19977_
                                            (gx#syntax-split-splice
                                             _hd1816818426_
                                             '0)))
                                       (begin
                                         (let ((_g19978_
                                                (values-count _g19977_)))
                                           (if (not (fx= _g19978_ 2))
                                               (error "Context expects 2 values"
                                                      _g19978_)))
                                         (let ((_target1817018431_
                                                (values-ref _g19977_ 0))
                                               (_tl1817218433_
                                                (values-ref _g19977_ 1)))
                                           (letrec ((_loop1817318436_
                                                     (lambda (_hd1817118439_
                                                              _arg1817718441_)
                                                       (if (gx#stx-pair?
                                                            _hd1817118439_)
                                                           (let ((_e1817418444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1817118439_)))
                     (let ((_lp-hd1817518447_ (##car _e1817418444_))
                           (_lp-tl1817618449_ (##cdr _e1817418444_)))
                       (_loop1817318436_
                        _lp-tl1817618449_
                        (cons _lp-hd1817518447_ _arg1817718441_))))
                   (let ((_arg1817818452_ (reverse _arg1817718441_)))
                     (if (gx#stx-pair? _tl1816918428_)
                         (let ((_e1817918455_ (gx#stx-e _tl1816918428_)))
                           (let ((_hd1818018458_ (##car _e1817918455_))
                                 (_tl1818118460_ (##cdr _e1817918455_)))
                             (if (gx#stx-pair? _hd1818018458_)
                                 (let ((_e1818218463_
                                        (gx#stx-e _hd1818018458_)))
                                   (let ((_hd1818318466_ (##car _e1818218463_))
                                         (_tl1818418468_
                                          (##cdr _e1818218463_)))
                                     (if (gx#identifier? _hd1818318466_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1818318466_)
                                             (if (gx#stx-pair? _tl1818418468_)
                                                 (let ((_e1818518471_
                                                        (gx#stx-e
                                                         _tl1818418468_)))
                                                   (let ((_hd1818618474_
                                                          (##car _e1818518471_))
                                                         (_tl1818718476_
                                                          (##cdr _e1818518471_)))
                                                     (if (gx#stx-pair?
                                                          _hd1818618474_)
                                                         (let ((_e1818818479_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1818618474_)))
                   (let ((_hd1818918482_ (##car _e1818818479_))
                         (_tl1819018484_ (##cdr _e1818818479_)))
                     (if (gx#identifier? _hd1818918482_)
                         (if (gx#stx-eq? '%#ref _hd1818918482_)
                             (if (gx#stx-pair? _tl1819018484_)
                                 (let ((_e1819118487_
                                        (gx#stx-e _tl1819018484_)))
                                   (let ((_hd1819218490_ (##car _e1819118487_))
                                         (_tl1819318492_
                                          (##cdr _e1819118487_)))
                                     (if (gx#stx-null? _tl1819318492_)
                                         (if (gx#stx-pair? _tl1818718476_)
                                             (let ((_e1819418495_
                                                    (gx#stx-e _tl1818718476_)))
                                               (let ((_hd1819518498_
                                                      (##car _e1819418495_))
                                                     (_tl1819618500_
                                                      (##cdr _e1819418495_)))
                                                 (if (gx#stx-pair?
                                                      _hd1819518498_)
                                                     (let ((_e1819718503_
                                                            (gx#stx-e
                                                             _hd1819518498_)))
                                                       (let ((_hd1819818506_
                                                              (##car _e1819718503_))
                                                             (_tl1819918508_
                                                              (##cdr _e1819718503_)))
                                                         (if (gx#identifier?
                                                              _hd1819818506_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1819818506_)
                         (if (gx#stx-pair? _tl1819918508_)
                             (let ((_e1820018511_ (gx#stx-e _tl1819918508_)))
                               (let ((_hd1820118514_ (##car _e1820018511_))
                                     (_tl1820218516_ (##cdr _e1820018511_)))
                                 (if (gx#stx-null? _tl1820218516_)
                                     (if (gx#stx-pair/null? _tl1819618500_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1819618500_)
                                                   '1)
                                             (let ((_g19979_
                                                    (gx#syntax-split-splice
                                                     _tl1819618500_
                                                     '1)))
                                               (begin
                                                 (let ((_g19980_
                                                        (values-count
                                                         _g19979_)))
                                                   (if (not (fx= _g19980_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19980_)))
                                                 (let ((_target1820318519_
                                                        (values-ref
                                                         _g19979_
                                                         0))
                                                       (_tl1820518521_
                                                        (values-ref
                                                         _g19979_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1820518521_)
                                                       (let ((_e1821218524_
                                                              (gx#stx-e
                                                               _tl1820518521_)))
                                                         (let ((_hd1821318527_
                                                                (##car _e1821218524_))
                                                               (_tl1821418529_
                                                                (##cdr _e1821218524_)))
                                                           (if (gx#stx-pair?
                                                                _hd1821318527_)
                                                               (let ((_e1821518532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1821318527_)))
                         (let ((_hd1821618535_ (##car _e1821518532_))
                               (_tl1821718537_ (##cdr _e1821518532_)))
                           (if (gx#identifier? _hd1821618535_)
                               (if (gx#stx-eq? '%#ref _hd1821618535_)
                                   (if (gx#stx-pair? _tl1821718537_)
                                       (let ((_e1821818540_
                                              (gx#stx-e _tl1821718537_)))
                                         (let ((_hd1821918543_
                                                (##car _e1821818540_))
                                               (_tl1822018545_
                                                (##cdr _e1821818540_)))
                                           (if (gx#stx-null? _tl1822018545_)
                                               (if (gx#stx-null?
                                                    _tl1821418529_)
                                                   (letrec ((_loop1820618548_
                                                             (lambda (_hd1820418551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1821018553_)
                       (if (gx#stx-pair? _hd1820418551_)
                           (let ((_e1820718556_ (gx#stx-e _hd1820418551_)))
                             (let ((_lp-hd1820818559_ (##car _e1820718556_))
                                   (_lp-tl1820918561_ (##cdr _e1820718556_)))
                               (if (gx#stx-pair? _lp-hd1820818559_)
                                   (let ((_e1822118564_
                                          (gx#stx-e _lp-hd1820818559_)))
                                     (let ((_hd1822218567_
                                            (##car _e1822118564_))
                                           (_tl1822318569_
                                            (##cdr _e1822118564_)))
                                       (if (gx#identifier? _hd1822218567_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1822218567_)
                                               (if (gx#stx-pair?
                                                    _tl1822318569_)
                                                   (let ((_e1822418572_
                                                          (gx#stx-e
                                                           _tl1822318569_)))
                                                     (let ((_hd1822518575_
                                                            (##car _e1822418572_))
                                                           (_tl1822618577_
                                                            (##cdr _e1822418572_)))
                                                       (if (gx#stx-null?
                                                            _tl1822618577_)
                                                           (_loop1820618548_
                                                            _lp-tl1820918561_
                                                            (cons _hd1822518575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1821018553_))
                   (_g1811218418_ _g1811518421_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1811218418_
                                                    _g1811518421_))
                                               (_g1811218418_ _g1811518421_))
                                           (_g1811218418_ _g1811518421_))))
                                   (_g1811218418_ _g1811518421_))))
                           (let ((_xarg1821118580_ (reverse _xarg1821018553_)))
                             (if (gx#stx-null? _tl1818118460_)
                                 ((lambda (_L18583_
                                           _L18584_
                                           _L18585_
                                           _L18586_
                                           _L18587_
                                           _L18588_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1863118634_
                                                                _g1863218636_)
                                                         (cons _g1863118634_
                                                               _g1863218636_))
                                                       '()
                                                       _L18588_)))
                                            (if (gx#identifier? _L18587_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L18586_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1863818641_ _g1863918643_)
                                         (cons _g1863818641_ _g1863918643_))
                                       '()
                                       _L18588_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1864518648_ _g1864618650_)
                                         (cons _g1864518648_ _g1864618650_))
                                       '()
                                       _L18584_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1865218655_ _g1865318657_)
                                        (cons _g1865218655_ _g1865318657_))
                                      '()
                                      _L18588_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1865918662_ _g1866018664_)
                                        (cons _g1865918662_ _g1866018664_))
                                      '()
                                      _L18584_)))
                    (if (gx#free-identifier=? _L18587_ _L18583_)
                        (not (find (lambda (_g1866618668_)
                                     (gx#free-identifier=?
                                      _g1866618668_
                                      _L18585_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1867018673_
                                                      _g1867118675_)
                                               (cons _g1867018673_
                                                     _g1867118675_))
                                             (cons _L18587_ '())
                                             _L18588_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1811218418_ _g1811518421_)))
                                  _hd1821918543_
                                  _xarg1821118580_
                                  _hd1820118514_
                                  _hd1819218490_
                                  _tl1817218433_
                                  _arg1817818452_)
                                 (_g1811218418_ _g1811518421_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1820618548_
                                                      _target1820318519_
                                                      '()))
                                                   (_g1811218418_
                                                    _g1811518421_))
                                               (_g1811218418_ _g1811518421_))))
                                       (_g1811218418_ _g1811518421_))
                                   (_g1811218418_ _g1811518421_))
                               (_g1811218418_ _g1811518421_))))
                       (_g1811218418_ _g1811518421_))))
               (_g1811218418_ _g1811518421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1811218418_ _g1811518421_))
                                         (_g1811218418_ _g1811518421_))
                                     (_g1811218418_ _g1811518421_))))
                             (_g1811218418_ _g1811518421_))
                         (_g1811218418_ _g1811518421_))
                     (_g1811218418_ _g1811518421_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1811218418_
                                                      _g1811518421_))))
                                             (_g1811218418_ _g1811518421_))
                                         (_g1811218418_ _g1811518421_))))
                                 (_g1811218418_ _g1811518421_))
                             (_g1811218418_ _g1811518421_))
                         (_g1811218418_ _g1811518421_))))
                 (_g1811218418_ _g1811518421_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1811218418_ _g1811518421_))
                                             (_g1811218418_ _g1811518421_))
                                         (_g1811218418_ _g1811518421_))))
                                 (_g1811218418_ _g1811518421_))))
                         (_g1811218418_ _g1811518421_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1817318436_
                                              _target1817018431_
                                              '())))))
                                     (_g1811218418_ _g1811518421_))
                                 (_g1811218418_ _g1811518421_))))
                         (_g1811218418_ _g1811518421_)))))
              (let ((_g1811018872_
                     (lambda (_g1811518681_)
                       (if (gx#stx-pair? _g1811518681_)
                           (let ((_e1811918683_ (gx#stx-e _g1811518681_)))
                             (let ((_hd1812018686_ (##car _e1811918683_))
                                   (_tl1812118688_ (##cdr _e1811918683_)))
                               (if (gx#stx-pair/null? _hd1812018686_)
                                   (if (fx>= (gx#stx-length _hd1812018686_) '0)
                                       (let ((_g19981_
                                              (gx#syntax-split-splice
                                               _hd1812018686_
                                               '0)))
                                         (begin
                                           (let ((_g19982_
                                                  (values-count _g19981_)))
                                             (if (not (fx= _g19982_ 2))
                                                 (error "Context expects 2 values"
                                                        _g19982_)))
                                           (let ((_target1812218691_
                                                  (values-ref _g19981_ 0))
                                                 (_tl1812418693_
                                                  (values-ref _g19981_ 1)))
                                             (if (gx#stx-null? _tl1812418693_)
                                                 (letrec ((_loop1812518696_
                                                           (lambda (_hd1812318699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1812918701_)
                     (if (gx#stx-pair? _hd1812318699_)
                         (let ((_e1812618704_ (gx#stx-e _hd1812318699_)))
                           (let ((_lp-hd1812718707_ (##car _e1812618704_))
                                 (_lp-tl1812818709_ (##cdr _e1812618704_)))
                             (_loop1812518696_
                              _lp-tl1812818709_
                              (cons _lp-hd1812718707_ _arg1812918701_))))
                         (let ((_arg1813018712_ (reverse _arg1812918701_)))
                           (if (gx#stx-pair? _tl1812118688_)
                               (let ((_e1813118715_ (gx#stx-e _tl1812118688_)))
                                 (let ((_hd1813218718_ (##car _e1813118715_))
                                       (_tl1813318720_ (##cdr _e1813118715_)))
                                   (if (gx#stx-pair? _hd1813218718_)
                                       (let ((_e1813418723_
                                              (gx#stx-e _hd1813218718_)))
                                         (let ((_hd1813518726_
                                                (##car _e1813418723_))
                                               (_tl1813618728_
                                                (##cdr _e1813418723_)))
                                           (if (gx#identifier? _hd1813518726_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1813518726_)
                                                   (if (gx#stx-pair?
                                                        _tl1813618728_)
                                                       (let ((_e1813718731_
                                                              (gx#stx-e
                                                               _tl1813618728_)))
                                                         (let ((_hd1813818734_
                                                                (##car _e1813718731_))
                                                               (_tl1813918736_
                                                                (##cdr _e1813718731_)))
                                                           (if (gx#stx-pair?
                                                                _hd1813818734_)
                                                               (let ((_e1814018739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1813818734_)))
                         (let ((_hd1814118742_ (##car _e1814018739_))
                               (_tl1814218744_ (##cdr _e1814018739_)))
                           (if (gx#identifier? _hd1814118742_)
                               (if (gx#stx-eq? '%#ref _hd1814118742_)
                                   (if (gx#stx-pair? _tl1814218744_)
                                       (let ((_e1814318747_
                                              (gx#stx-e _tl1814218744_)))
                                         (let ((_hd1814418750_
                                                (##car _e1814318747_))
                                               (_tl1814518752_
                                                (##cdr _e1814318747_)))
                                           (if (gx#stx-null? _tl1814518752_)
                                               (if (gx#stx-pair/null?
                                                    _tl1813918736_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1813918736_)
                                                             '0)
                                                       (let ((_g19983_
                                                              (gx#syntax-split-splice
                                                               _tl1813918736_
                                                               '0)))
                                                         (begin
                                                           (let ((_g19984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g19983_)))
                     (if (not (fx= _g19984_ 2))
                         (error "Context expects 2 values" _g19984_)))
                   (let ((_target1814618755_ (values-ref _g19983_ 0))
                         (_tl1814818757_ (values-ref _g19983_ 1)))
                     (if (gx#stx-null? _tl1814818757_)
                         (letrec ((_loop1814918760_
                                   (lambda (_hd1814718763_ _xarg1815318765_)
                                     (if (gx#stx-pair? _hd1814718763_)
                                         (let ((_e1815018768_
                                                (gx#stx-e _hd1814718763_)))
                                           (let ((_lp-hd1815118771_
                                                  (##car _e1815018768_))
                                                 (_lp-tl1815218773_
                                                  (##cdr _e1815018768_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1815118771_)
                                                 (let ((_e1815518776_
                                                        (gx#stx-e
                                                         _lp-hd1815118771_)))
                                                   (let ((_hd1815618779_
                                                          (##car _e1815518776_))
                                                         (_tl1815718781_
                                                          (##cdr _e1815518776_)))
                                                     (if (gx#identifier?
                                                          _hd1815618779_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1815618779_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1815718781_)
                         (let ((_e1815818784_ (gx#stx-e _tl1815718781_)))
                           (let ((_hd1815918787_ (##car _e1815818784_))
                                 (_tl1816018789_ (##cdr _e1815818784_)))
                             (if (gx#stx-null? _tl1816018789_)
                                 (_loop1814918760_
                                  _lp-tl1815218773_
                                  (cons _hd1815918787_ _xarg1815318765_))
                                 (_g1811118678_ _g1811518681_))))
                         (_g1811118678_ _g1811518681_))
                     (_g1811118678_ _g1811518681_))
                 (_g1811118678_ _g1811518681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1811118678_
                                                  _g1811518681_))))
                                         (let ((_xarg1815418792_
                                                (reverse _xarg1815318765_)))
                                           (if (gx#stx-null? _tl1813318720_)
                                               ((lambda (_L18795_
                                                         _L18796_
                                                         _L18797_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1882518828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1882618830_)
                               (cons _g1882518828_ _g1882618830_))
                             '()
                             _L18797_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1883218835_
                                                      _g1883318837_)
                                               (cons _g1883218835_
                                                     _g1883318837_))
                                             '()
                                             _L18797_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1883918842_
                                                      _g1884018844_)
                                               (cons _g1883918842_
                                                     _g1884018844_))
                                             '()
                                             _L18795_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1884618849_
                                                     _g1884718851_)
                                              (cons _g1884618849_
                                                    _g1884718851_))
                                            '()
                                            _L18797_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1885318856_
                                                     _g1885418858_)
                                              (cons _g1885318856_
                                                    _g1885418858_))
                                            '()
                                            _L18795_)))
                          (not (find (lambda (_g1886018862_)
                                       (gx#free-identifier=?
                                        _g1886018862_
                                        _L18796_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1886418867_
                                                        _g1886518869_)
                                                 (cons _g1886418867_
                                                       _g1886518869_))
                                               '()
                                               _L18797_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1811118678_ _g1811518681_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1815418792_
                                                _hd1814418750_
                                                _arg1813018712_)
                                               (_g1811118678_
                                                _g1811518681_)))))))
                           (_loop1814918760_ _target1814618755_ '()))
                         (_g1811118678_ _g1811518681_)))))
               (_g1811118678_ _g1811518681_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1811118678_
                                                    _g1811518681_))
                                               (_g1811118678_ _g1811518681_))))
                                       (_g1811118678_ _g1811518681_))
                                   (_g1811118678_ _g1811518681_))
                               (_g1811118678_ _g1811518681_))))
                       (_g1811118678_ _g1811518681_))))
               (_g1811118678_ _g1811518681_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1811118678_
                                                    _g1811518681_))
                                               (_g1811118678_ _g1811518681_))))
                                       (_g1811118678_ _g1811518681_))))
                               (_g1811118678_ _g1811518681_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1812518696_
                                                    _target1812218691_
                                                    '()))
                                                 (_g1811118678_
                                                  _g1811518681_)))))
                                       (_g1811118678_ _g1811518681_))
                                   (_g1811118678_ _g1811518681_))))
                           (_g1811118678_ _g1811518681_)))))
                (_g1811018872_ _form18109_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form17577_)
      (let ((_g1758117705_
             (lambda (_g1758217702_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1758217702_))))
        (let ((_g1758017822_
               (lambda (_g1758217708_)
                 (if (gx#stx-pair? _g1758217708_)
                     (let ((_e1767117710_ (gx#stx-e _g1758217708_)))
                       (let ((_hd1767217713_ (##car _e1767117710_))
                             (_tl1767317715_ (##cdr _e1767117710_)))
                         (if (gx#stx-pair? _tl1767317715_)
                             (let ((_e1767417718_ (gx#stx-e _tl1767317715_)))
                               (let ((_hd1767517721_ (##car _e1767417718_))
                                     (_tl1767617723_ (##cdr _e1767417718_)))
                                 (if (gx#stx-pair? _hd1767517721_)
                                     (let ((_e1767717726_
                                            (gx#stx-e _hd1767517721_)))
                                       (let ((_hd1767817729_
                                              (##car _e1767717726_))
                                             (_tl1767917731_
                                              (##cdr _e1767717726_)))
                                         (if (gx#identifier? _hd1767817729_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1767817729_)
                                                 (if (gx#stx-pair?
                                                      _tl1767917731_)
                                                     (let ((_e1768017734_
                                                            (gx#stx-e
                                                             _tl1767917731_)))
                                                       (let ((_hd1768117737_
                                                              (##car _e1768017734_))
                                                             (_tl1768217739_
                                                              (##cdr _e1768017734_)))
                                                         (if (gx#stx-pair?
                                                              _hd1768117737_)
                                                             (let ((_e1768317742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1768117737_)))
                       (let ((_hd1768417745_ (##car _e1768317742_))
                             (_tl1768517747_ (##cdr _e1768317742_)))
                         (if (gx#identifier? _hd1768417745_)
                             (if (gx#stx-eq? '%#ref _hd1768417745_)
                                 (if (gx#stx-pair? _tl1768517747_)
                                     (let ((_e1768617750_
                                            (gx#stx-e _tl1768517747_)))
                                       (let ((_hd1768717753_
                                              (##car _e1768617750_))
                                             (_tl1768817755_
                                              (##cdr _e1768617750_)))
                                         (if (gx#stx-null? _tl1768817755_)
                                             (if (gx#stx-pair? _tl1768217739_)
                                                 (let ((_e1768917758_
                                                        (gx#stx-e
                                                         _tl1768217739_)))
                                                   (let ((_hd1769017761_
                                                          (##car _e1768917758_))
                                                         (_tl1769117763_
                                                          (##cdr _e1768917758_)))
                                                     (if (gx#stx-pair?
                                                          _hd1769017761_)
                                                         (let ((_e1769217766_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1769017761_)))
                   (let ((_hd1769317769_ (##car _e1769217766_))
                         (_tl1769417771_ (##cdr _e1769217766_)))
                     (if (gx#identifier? _hd1769317769_)
                         (if (gx#stx-eq? '%#ref _hd1769317769_)
                             (if (gx#stx-pair? _tl1769417771_)
                                 (let ((_e1769517774_
                                        (gx#stx-e _tl1769417771_)))
                                   (let ((_hd1769617777_ (##car _e1769517774_))
                                         (_tl1769717779_
                                          (##cdr _e1769517774_)))
                                     (if (gx#stx-null? _tl1769717779_)
                                         (if (gx#stx-pair? _tl1769117763_)
                                             (let ((_e1769817782_
                                                    (gx#stx-e _tl1769117763_)))
                                               (let ((_hd1769917785_
                                                      (##car _e1769817782_))
                                                     (_tl1770017787_
                                                      (##cdr _e1769817782_)))
                                                 (if (gx#stx-null?
                                                      _tl1770017787_)
                                                     (if (gx#stx-null?
                                                          _tl1767617723_)
                                                         ((lambda (_L17790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L17791_
                           _L17792_)
                    (gxc#generate-runtime-binding-id _L17790_))
                  _hd1769617777_
                  _hd1768717753_
                  _hd1767217713_)
                 (_g1758117705_ _g1758217708_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1758117705_
                                                      _g1758217708_))))
                                             (_g1758117705_ _g1758217708_))
                                         (_g1758117705_ _g1758217708_))))
                                 (_g1758117705_ _g1758217708_))
                             (_g1758117705_ _g1758217708_))
                         (_g1758117705_ _g1758217708_))))
                 (_g1758117705_ _g1758217708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1758117705_ _g1758217708_))
                                             (_g1758117705_ _g1758217708_))))
                                     (_g1758117705_ _g1758217708_))
                                 (_g1758117705_ _g1758217708_))
                             (_g1758117705_ _g1758217708_))))
                     (_g1758117705_ _g1758217708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1758117705_
                                                      _g1758217708_))
                                                 (_g1758117705_ _g1758217708_))
                                             (_g1758117705_ _g1758217708_))))
                                     (_g1758117705_ _g1758217708_))))
                             (_g1758117705_ _g1758217708_))))
                     (_g1758117705_ _g1758217708_)))))
          (let ((_g1757917958_
                 (lambda (_g1758217825_)
                   (if (gx#stx-pair? _g1758217825_)
                       (let ((_e1763217827_ (gx#stx-e _g1758217825_)))
                         (let ((_hd1763317830_ (##car _e1763217827_))
                               (_tl1763417832_ (##cdr _e1763217827_)))
                           (if (gx#stx-pair/null? _hd1763317830_)
                               (if (fx>= (gx#stx-length _hd1763317830_) '0)
                                   (let ((_g19985_
                                          (gx#syntax-split-splice
                                           _hd1763317830_
                                           '0)))
                                     (begin
                                       (let ((_g19986_
                                              (values-count _g19985_)))
                                         (if (not (fx= _g19986_ 2))
                                             (error "Context expects 2 values"
                                                    _g19986_)))
                                       (let ((_target1763517835_
                                              (values-ref _g19985_ 0))
                                             (_tl1763717837_
                                              (values-ref _g19985_ 1)))
                                         (letrec ((_loop1763817840_
                                                   (lambda (_hd1763617843_
                                                            _arg1764217845_)
                                                     (if (gx#stx-pair?
                                                          _hd1763617843_)
                                                         (let ((_e1763917848_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1763617843_)))
                   (let ((_lp-hd1764017851_ (##car _e1763917848_))
                         (_lp-tl1764117853_ (##cdr _e1763917848_)))
                     (_loop1763817840_
                      _lp-tl1764117853_
                      (cons _lp-hd1764017851_ _arg1764217845_))))
                 (let ((_arg1764317856_ (reverse _arg1764217845_)))
                   (if (gx#stx-pair? _tl1763417832_)
                       (let ((_e1764417859_ (gx#stx-e _tl1763417832_)))
                         (let ((_hd1764517862_ (##car _e1764417859_))
                               (_tl1764617864_ (##cdr _e1764417859_)))
                           (if (gx#stx-pair? _hd1764517862_)
                               (let ((_e1764717867_ (gx#stx-e _hd1764517862_)))
                                 (let ((_hd1764817870_ (##car _e1764717867_))
                                       (_tl1764917872_ (##cdr _e1764717867_)))
                                   (if (gx#identifier? _hd1764817870_)
                                       (if (gx#stx-eq? '%#call _hd1764817870_)
                                           (if (gx#stx-pair? _tl1764917872_)
                                               (let ((_e1765017875_
                                                      (gx#stx-e
                                                       _tl1764917872_)))
                                                 (let ((_hd1765117878_
                                                        (##car _e1765017875_))
                                                       (_tl1765217880_
                                                        (##cdr _e1765017875_)))
                                                   (if (gx#stx-pair?
                                                        _hd1765117878_)
                                                       (let ((_e1765317883_
                                                              (gx#stx-e
                                                               _hd1765117878_)))
                                                         (let ((_hd1765417886_
                                                                (##car _e1765317883_))
                                                               (_tl1765517888_
                                                                (##cdr _e1765317883_)))
                                                           (if (gx#identifier?
                                                                _hd1765417886_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1765417886_)
                           (if (gx#stx-pair? _tl1765517888_)
                               (let ((_e1765617891_ (gx#stx-e _tl1765517888_)))
                                 (let ((_hd1765717894_ (##car _e1765617891_))
                                       (_tl1765817896_ (##cdr _e1765617891_)))
                                   (if (gx#stx-null? _tl1765817896_)
                                       (if (gx#stx-pair? _tl1765217880_)
                                           (let ((_e1765917899_
                                                  (gx#stx-e _tl1765217880_)))
                                             (let ((_hd1766017902_
                                                    (##car _e1765917899_))
                                                   (_tl1766117904_
                                                    (##cdr _e1765917899_)))
                                               (if (gx#stx-pair?
                                                    _hd1766017902_)
                                                   (let ((_e1766217907_
                                                          (gx#stx-e
                                                           _hd1766017902_)))
                                                     (let ((_hd1766317910_
                                                            (##car _e1766217907_))
                                                           (_tl1766417912_
                                                            (##cdr _e1766217907_)))
                                                       (if (gx#identifier?
                                                            _hd1766317910_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1766317910_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1766417912_)
                           (let ((_e1766517915_ (gx#stx-e _tl1766417912_)))
                             (let ((_hd1766617918_ (##car _e1766517915_))
                                   (_tl1766717920_ (##cdr _e1766517915_)))
                               (if (gx#stx-null? _tl1766717920_)
                                   (if (gx#stx-null? _tl1764617864_)
                                       ((lambda (_L17923_
                                                 _L17924_
                                                 _L17925_
                                                 _L17926_)
                                          (gxc#generate-runtime-binding-id
                                           _L17923_))
                                        _hd1766617918_
                                        _hd1765717894_
                                        _tl1763717837_
                                        _arg1764317856_)
                                       (_g1758017822_ _g1758217825_))
                                   (_g1758017822_ _g1758217825_))))
                           (_g1758017822_ _g1758217825_))
                       (_g1758017822_ _g1758217825_))
                   (_g1758017822_ _g1758217825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1758017822_
                                                    _g1758217825_))))
                                           (_g1758017822_ _g1758217825_))
                                       (_g1758017822_ _g1758217825_))))
                               (_g1758017822_ _g1758217825_))
                           (_g1758017822_ _g1758217825_))
                       (_g1758017822_ _g1758217825_))))
               (_g1758017822_ _g1758217825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1758017822_ _g1758217825_))
                                           (_g1758017822_ _g1758217825_))
                                       (_g1758017822_ _g1758217825_))))
                               (_g1758017822_ _g1758217825_))))
                       (_g1758017822_ _g1758217825_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1763817840_
                                            _target1763517835_
                                            '())))))
                                   (_g1758017822_ _g1758217825_))
                               (_g1758017822_ _g1758217825_))))
                       (_g1758017822_ _g1758217825_)))))
            (let ((_g1757818106_
                   (lambda (_g1758217961_)
                     (if (gx#stx-pair? _g1758217961_)
                         (let ((_e1758617963_ (gx#stx-e _g1758217961_)))
                           (let ((_hd1758717966_ (##car _e1758617963_))
                                 (_tl1758817968_ (##cdr _e1758617963_)))
                             (if (gx#stx-pair/null? _hd1758717966_)
                                 (if (fx>= (gx#stx-length _hd1758717966_) '0)
                                     (let ((_g19987_
                                            (gx#syntax-split-splice
                                             _hd1758717966_
                                             '0)))
                                       (begin
                                         (let ((_g19988_
                                                (values-count _g19987_)))
                                           (if (not (fx= _g19988_ 2))
                                               (error "Context expects 2 values"
                                                      _g19988_)))
                                         (let ((_target1758917971_
                                                (values-ref _g19987_ 0))
                                               (_tl1759117973_
                                                (values-ref _g19987_ 1)))
                                           (if (gx#stx-null? _tl1759117973_)
                                               (letrec ((_loop1759217976_
                                                         (lambda (_hd1759017979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1759617981_)
                   (if (gx#stx-pair? _hd1759017979_)
                       (let ((_e1759317984_ (gx#stx-e _hd1759017979_)))
                         (let ((_lp-hd1759417987_ (##car _e1759317984_))
                               (_lp-tl1759517989_ (##cdr _e1759317984_)))
                           (_loop1759217976_
                            _lp-tl1759517989_
                            (cons _lp-hd1759417987_ _arg1759617981_))))
                       (let ((_arg1759717992_ (reverse _arg1759617981_)))
                         (if (gx#stx-pair? _tl1758817968_)
                             (let ((_e1759817995_ (gx#stx-e _tl1758817968_)))
                               (let ((_hd1759917998_ (##car _e1759817995_))
                                     (_tl1760018000_ (##cdr _e1759817995_)))
                                 (if (gx#stx-pair? _hd1759917998_)
                                     (let ((_e1760118003_
                                            (gx#stx-e _hd1759917998_)))
                                       (let ((_hd1760218006_
                                              (##car _e1760118003_))
                                             (_tl1760318008_
                                              (##cdr _e1760118003_)))
                                         (if (gx#identifier? _hd1760218006_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1760218006_)
                                                 (if (gx#stx-pair?
                                                      _tl1760318008_)
                                                     (let ((_e1760418011_
                                                            (gx#stx-e
                                                             _tl1760318008_)))
                                                       (let ((_hd1760518014_
                                                              (##car _e1760418011_))
                                                             (_tl1760618016_
                                                              (##cdr _e1760418011_)))
                                                         (if (gx#stx-pair?
                                                              _hd1760518014_)
                                                             (let ((_e1760718019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1760518014_)))
                       (let ((_hd1760818022_ (##car _e1760718019_))
                             (_tl1760918024_ (##cdr _e1760718019_)))
                         (if (gx#identifier? _hd1760818022_)
                             (if (gx#stx-eq? '%#ref _hd1760818022_)
                                 (if (gx#stx-pair? _tl1760918024_)
                                     (let ((_e1761018027_
                                            (gx#stx-e _tl1760918024_)))
                                       (let ((_hd1761118030_
                                              (##car _e1761018027_))
                                             (_tl1761218032_
                                              (##cdr _e1761018027_)))
                                         (if (gx#stx-null? _tl1761218032_)
                                             (if (gx#stx-pair/null?
                                                  _tl1760618016_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1760618016_)
                                                           '0)
                                                     (let ((_g19989_
                                                            (gx#syntax-split-splice
                                                             _tl1760618016_
                                                             '0)))
                                                       (begin
                                                         (let ((_g19990_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g19989_)))
                   (if (not (fx= _g19990_ 2))
                       (error "Context expects 2 values" _g19990_)))
                 (let ((_target1761318035_ (values-ref _g19989_ 0))
                       (_tl1761518037_ (values-ref _g19989_ 1)))
                   (if (gx#stx-null? _tl1761518037_)
                       (letrec ((_loop1761618040_
                                 (lambda (_hd1761418043_ _xarg1762018045_)
                                   (if (gx#stx-pair? _hd1761418043_)
                                       (let ((_e1761718048_
                                              (gx#stx-e _hd1761418043_)))
                                         (let ((_lp-hd1761818051_
                                                (##car _e1761718048_))
                                               (_lp-tl1761918053_
                                                (##cdr _e1761718048_)))
                                           (if (gx#stx-pair? _lp-hd1761818051_)
                                               (let ((_e1762218056_
                                                      (gx#stx-e
                                                       _lp-hd1761818051_)))
                                                 (let ((_hd1762318059_
                                                        (##car _e1762218056_))
                                                       (_tl1762418061_
                                                        (##cdr _e1762218056_)))
                                                   (if (gx#identifier?
                                                        _hd1762318059_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1762318059_)
                                                           (if (gx#stx-pair?
                                                                _tl1762418061_)
                                                               (let ((_e1762518064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1762418061_)))
                         (let ((_hd1762618067_ (##car _e1762518064_))
                               (_tl1762718069_ (##cdr _e1762518064_)))
                           (if (gx#stx-null? _tl1762718069_)
                               (_loop1761618040_
                                _lp-tl1761918053_
                                (cons _hd1762618067_ _xarg1762018045_))
                               (_g1757917958_ _g1758217961_))))
                       (_g1757917958_ _g1758217961_))
                   (_g1757917958_ _g1758217961_))
               (_g1757917958_ _g1758217961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1757917958_ _g1758217961_))))
                                       (let ((_xarg1762118072_
                                              (reverse _xarg1762018045_)))
                                         (if (gx#stx-null? _tl1760018000_)
                                             ((lambda (_L18075_
                                                       _L18076_
                                                       _L18077_)
                                                (gxc#generate-runtime-binding-id
                                                 _L18076_))
                                              _xarg1762118072_
                                              _hd1761118030_
                                              _arg1759717992_)
                                             (_g1757917958_
                                              _g1758217961_)))))))
                         (_loop1761618040_ _target1761318035_ '()))
                       (_g1757917958_ _g1758217961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1757917958_
                                                      _g1758217961_))
                                                 (_g1757917958_ _g1758217961_))
                                             (_g1757917958_ _g1758217961_))))
                                     (_g1757917958_ _g1758217961_))
                                 (_g1757917958_ _g1758217961_))
                             (_g1757917958_ _g1758217961_))))
                     (_g1757917958_ _g1758217961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1757917958_
                                                      _g1758217961_))
                                                 (_g1757917958_ _g1758217961_))
                                             (_g1757917958_ _g1758217961_))))
                                     (_g1757917958_ _g1758217961_))))
                             (_g1757917958_ _g1758217961_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1759217976_
                                                  _target1758917971_
                                                  '()))
                                               (_g1757917958_
                                                _g1758217961_)))))
                                     (_g1757917958_ _g1758217961_))
                                 (_g1757917958_ _g1758217961_))))
                         (_g1757917958_ _g1758217961_)))))
              (_g1757818106_ _form17577_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form17381_)
      (let ((_g1738317397_
             (lambda (_g1738417394_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1738417394_))))
        (let ((_g1738217574_
               (lambda (_g1738417400_)
                 (if (gx#stx-pair? _g1738417400_)
                     (let ((_e1738717402_ (gx#stx-e _g1738417400_)))
                       (let ((_hd1738817405_ (##car _e1738717402_))
                             (_tl1738917407_ (##cdr _e1738717402_)))
                         (if (gx#stx-pair? _tl1738917407_)
                             (let ((_e1739017410_ (gx#stx-e _tl1738917407_)))
                               (let ((_hd1739117413_ (##car _e1739017410_))
                                     (_tl1739217415_ (##cdr _e1739017410_)))
                                 (if (gx#stx-null? _tl1739217415_)
                                     ((lambda (_L17418_ _L17419_)
                                        (let ((_g1743417462_
                                               (lambda (_g1743517459_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1743517459_))))
                                          (let ((_g1743317475_
                                                 (lambda (_g1743517465_)
                                                   ((lambda (_L17467_)
                                                      (cons '0 '()))
                                                    _g1743517465_))))
                                            (let ((_g1743217524_
                                                   (lambda (_g1743517478_)
                                                     (if (gx#stx-pair/null?
                                                          _g1743517478_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1743517478_)
                           '0)
                     (let ((_g19991_
                            (gx#syntax-split-splice _g1743517478_ '0)))
                       (begin
                         (let ((_g19992_ (values-count _g19991_)))
                           (if (not (fx= _g19992_ 2))
                               (error "Context expects 2 values" _g19992_)))
                         (let ((_target1744817480_ (values-ref _g19991_ 0))
                               (_tl1745017482_ (values-ref _g19991_ 1)))
                           (letrec ((_loop1745117485_
                                     (lambda (_hd1744917488_ _arg1745517490_)
                                       (if (gx#stx-pair? _hd1744917488_)
                                           (let ((_e1745217493_
                                                  (gx#stx-e _hd1744917488_)))
                                             (let ((_lp-hd1745317496_
                                                    (##car _e1745217493_))
                                                   (_lp-tl1745417498_
                                                    (##cdr _e1745217493_)))
                                               (_loop1745117485_
                                                _lp-tl1745417498_
                                                (cons _lp-hd1745317496_
                                                      _arg1745517490_))))
                                           (let ((_arg1745617501_
                                                  (reverse _arg1745517490_)))
                                             ((lambda (_L17504_ _L17505_)
                                                (cons (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1751617519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1751717521_)
                                  (cons _g1751617519_ _g1751717521_))
                                '()
                                _L17505_)))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _tl1745017482_
                                              _arg1745617501_))))))
                             (_loop1745117485_ _target1744817480_ '())))))
                     (_g1743317475_ _g1743517478_))
                 (_g1743317475_ _g1743517478_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1743117571_
                                                     (lambda (_g1743517527_)
                                                       (if (gx#stx-pair/null?
                                                            _g1743517527_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1743517527_)
                             '0)
                       (let ((_g19993_
                              (gx#syntax-split-splice _g1743517527_ '0)))
                         (begin
                           (let ((_g19994_ (values-count _g19993_)))
                             (if (not (fx= _g19994_ 2))
                                 (error "Context expects 2 values" _g19994_)))
                           (let ((_target1743717529_ (values-ref _g19993_ 0))
                                 (_tl1743917531_ (values-ref _g19993_ 1)))
                             (if (gx#stx-null? _tl1743917531_)
                                 (letrec ((_loop1744017534_
                                           (lambda (_hd1743817537_
                                                    _arg1744417539_)
                                             (if (gx#stx-pair? _hd1743817537_)
                                                 (let ((_e1744117542_
                                                        (gx#stx-e
                                                         _hd1743817537_)))
                                                   (let ((_lp-hd1744217545_
                                                          (##car _e1744117542_))
                                                         (_lp-tl1744317547_
                                                          (##cdr _e1744117542_)))
                                                     (_loop1744017534_
                                                      _lp-tl1744317547_
                                                      (cons _lp-hd1744217545_
                                                            _arg1744417539_))))
                                                 (let ((_arg1744517550_
                                                        (reverse _arg1744417539_)))
                                                   ((lambda (_L17553_)
                                                      (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1756317566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1756417568_)
                                  (cons _g1756317566_ _g1756417568_))
                                '()
                                _L17553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg1744517550_))))))
                                   (_loop1744017534_ _target1743717529_ '()))
                                 (_g1743217524_ _g1743517527_)))))
                       (_g1743217524_ _g1743517527_))
                   (_g1743217524_ _g1743517527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1743117571_ _L17419_))))))
                                      _hd1739117413_
                                      _hd1738817405_)
                                     (_g1738317397_ _g1738417400_))))
                             (_g1738317397_ _g1738417400_))))
                     (_g1738317397_ _g1738417400_)))))
          (_g1738217574_ _form17381_)))))
  (define gxc#lambda-expr?
    (lambda (_expr17334_)
      (let ((_g1733717347_
             (lambda (_g1733817344_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1733817344_))))
        (let ((_g1733617354_ (lambda (_g1733817350_) ((lambda () '#f)))))
          (let ((_g1733517378_
                 (lambda (_g1733817357_)
                   (if (gx#stx-pair? _g1733817357_)
                       (let ((_e1734017359_ (gx#stx-e _g1733817357_)))
                         (let ((_hd1734117362_ (##car _e1734017359_))
                               (_tl1734217364_ (##cdr _e1734017359_)))
                           (if (gx#identifier? _hd1734117362_)
                               (if (gx#stx-eq? '%#lambda _hd1734117362_)
                                   ((lambda (_L17367_) '#t) _tl1734217364_)
                                   (_g1733617354_ _g1733817357_))
                               (_g1733617354_ _g1733817357_))))
                       (_g1733617354_ _g1733817357_)))))
            (_g1733517378_ _expr17334_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr17287_)
      (let ((_g1729017300_
             (lambda (_g1729117297_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1729117297_))))
        (let ((_g1728917307_ (lambda (_g1729117303_) ((lambda () '#f)))))
          (let ((_g1728817331_
                 (lambda (_g1729117310_)
                   (if (gx#stx-pair? _g1729117310_)
                       (let ((_e1729317312_ (gx#stx-e _g1729117310_)))
                         (let ((_hd1729417315_ (##car _e1729317312_))
                               (_tl1729517317_ (##cdr _e1729317312_)))
                           (if (gx#identifier? _hd1729417315_)
                               (if (gx#stx-eq? '%#case-lambda _hd1729417315_)
                                   ((lambda (_L17320_) '#t) _tl1729517317_)
                                   (_g1728917307_ _g1729117310_))
                               (_g1728917307_ _g1729117310_))))
                       (_g1728917307_ _g1729117310_)))))
            (_g1728817331_ _expr17287_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr17156_)
      (let ((_g1715917189_
             (lambda (_g1716017186_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1716017186_))))
        (let ((_g1715817196_ (lambda (_g1716017192_) ((lambda () '#f)))))
          (let ((_g1715717284_
                 (lambda (_g1716017199_)
                   (if (gx#stx-pair? _g1716017199_)
                       (let ((_e1716417201_ (gx#stx-e _g1716017199_)))
                         (let ((_hd1716517204_ (##car _e1716417201_))
                               (_tl1716617206_ (##cdr _e1716417201_)))
                           (if (gx#identifier? _hd1716517204_)
                               (if (gx#stx-eq? '%#let-values _hd1716517204_)
                                   (if (gx#stx-pair? _tl1716617206_)
                                       (let ((_e1716717209_
                                              (gx#stx-e _tl1716617206_)))
                                         (let ((_hd1716817212_
                                                (##car _e1716717209_))
                                               (_tl1716917214_
                                                (##cdr _e1716717209_)))
                                           (if (gx#stx-pair? _hd1716817212_)
                                               (let ((_e1717017217_
                                                      (gx#stx-e
                                                       _hd1716817212_)))
                                                 (let ((_hd1717117220_
                                                        (##car _e1717017217_))
                                                       (_tl1717217222_
                                                        (##cdr _e1717017217_)))
                                                   (if (gx#stx-pair?
                                                        _hd1717117220_)
                                                       (let ((_e1717317225_
                                                              (gx#stx-e
                                                               _hd1717117220_)))
                                                         (let ((_hd1717417228_
                                                                (##car _e1717317225_))
                                                               (_tl1717517230_
                                                                (##cdr _e1717317225_)))
                                                           (if (gx#stx-pair?
                                                                _hd1717417228_)
                                                               (let ((_e1717617233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1717417228_)))
                         (let ((_hd1717717236_ (##car _e1717617233_))
                               (_tl1717817238_ (##cdr _e1717617233_)))
                           (if (gx#stx-null? _tl1717817238_)
                               (if (gx#stx-pair? _tl1717517230_)
                                   (let ((_e1717917241_
                                          (gx#stx-e _tl1717517230_)))
                                     (let ((_hd1718017244_
                                            (##car _e1717917241_))
                                           (_tl1718117246_
                                            (##cdr _e1717917241_)))
                                       (if (gx#stx-null? _tl1718117246_)
                                           (if (gx#stx-null? _tl1717217222_)
                                               (if (gx#stx-pair?
                                                    _tl1716917214_)
                                                   (let ((_e1718217249_
                                                          (gx#stx-e
                                                           _tl1716917214_)))
                                                     (let ((_hd1718317252_
                                                            (##car _e1718217249_))
                                                           (_tl1718417254_
                                                            (##cdr _e1718217249_)))
                                                       (if (gx#stx-null?
                                                            _tl1718417254_)
                                                           ((lambda (_L17257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L17258_
                             _L17259_)
                      (if (gx#identifier? _L17259_)
                          (if (gxc#lambda-expr? _L17258_)
                              (gxc#case-lambda-expr? _L17257_)
                              '#f)
                          '#f))
                    _hd1718317252_
                    _hd1718017244_
                    _hd1717717236_)
                   (_g1715817196_ _g1716017199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1715817196_
                                                    _g1716017199_))
                                               (_g1715817196_ _g1716017199_))
                                           (_g1715817196_ _g1716017199_))))
                                   (_g1715817196_ _g1716017199_))
                               (_g1715817196_ _g1716017199_))))
                       (_g1715817196_ _g1716017199_))))
               (_g1715817196_ _g1716017199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1715817196_ _g1716017199_))))
                                       (_g1715817196_ _g1716017199_))
                                   (_g1715817196_ _g1716017199_))
                               (_g1715817196_ _g1716017199_))))
                       (_g1715817196_ _g1716017199_)))))
            (_g1715717284_ _expr17156_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda16896
      (lambda (_stx16898_ _id16899_ _clauses16900_ _gensym?16901_)
        ((letrec ((_lp16903_
                   (lambda (_rest16905_ _ids16906_ _impls16907_ _clauses16908_)
                     (let ((_rest1690916917_ _rest16905_))
                       (let ((_E1691216921_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1690916917_))))
                         (let ((_else1691116925_
                                (lambda ()
                                  (values (reverse _ids16906_)
                                          (reverse _impls16907_)
                                          (reverse _clauses16908_)))))
                           (let ((_K1691317130_
                                  (lambda (_rest16928_ _clause16929_)
                                    (if (gxc#dispatch-lambda-form?
                                         _clause16929_)
                                        (_lp16903_
                                         _rest16928_
                                         _ids16906_
                                         _impls16907_
                                         (cons _clause16929_ _clauses16908_))
                                        (let ((_g1693116942_
                                               (lambda (_g1693216939_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1693216939_))))
                                          (let ((_g1693017127_
                                                 (lambda (_g1693216945_)
                                                   (if (gx#stx-pair?
                                                        _g1693216945_)
                                                       (let ((_e1693516947_
                                                              (gx#stx-e
                                                               _g1693216945_)))
                                                         (let ((_hd1693616950_
                                                                (##car _e1693516947_))
                                                               (_tl1693716952_
                                                                (##cdr _e1693516947_)))
                                                           ((lambda (_L16955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16956_)
                      (let ((_id16973_
                             (make-symbol
                              (gx#stx-e _id16899_)
                              '"__"
                              (length _clauses16908_)
                              (if _gensym?16901_ (gensym '__) '""))))
                        (let ((_id16975_
                               (gx#core-quote-syntax__1
                                _id16973_
                                (gx#stx-source _stx16898_))))
                          (let ((_impl16977_
                                 (gxc#xform-wrap-source
                                  (cons (gx#datum->syntax__0 '#f '%#lambda)
                                        (cons _L16956_ _L16955_))
                                  _stx16898_)))
                            (let ((_clause17124_
                                   (let ((_g1698117009_
                                          (lambda (_g1698217006_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1698217006_))))
                                     (let ((_g1698017025_
                                            (lambda (_g1698217012_)
                                              ((lambda (_L17014_)
                                                 (cons _L16956_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'apply '()))
                                  (cons (cons '%#ref (cons _id16975_ '()))
                                        (cons (cons (gx#datum->syntax__0
                                                     '#f
                                                     '%#ref)
                                                    (cons _L17014_ '()))
                                              '()))))
                      _stx16898_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g1698217012_))))
                                       (let ((_g1697917074_
                                              (lambda (_g1698217028_)
                                                (if (gx#stx-pair/null?
                                                     _g1698217028_)
                                                    (if (fx>= (gx#stx-length
                                                               _g1698217028_)
                                                              '0)
                                                        (let ((_g19995_
                                                               (gx#syntax-split-splice
                                                                _g1698217028_
                                                                '0)))
                                                          (begin
                                                            (let ((_g19996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g19995_)))
                      (if (not (fx= _g19996_ 2))
                          (error "Context expects 2 values" _g19996_)))
                    (let ((_target1699517030_ (values-ref _g19995_ 0))
                          (_tl1699717032_ (values-ref _g19995_ 1)))
                      (letrec ((_loop1699817035_
                                (lambda (_hd1699617038_ _arg1700217040_)
                                  (if (gx#stx-pair? _hd1699617038_)
                                      (let ((_e1699917043_
                                             (gx#stx-e _hd1699617038_)))
                                        (let ((_lp-hd1700017046_
                                               (##car _e1699917043_))
                                              (_lp-tl1700117048_
                                               (##cdr _e1699917043_)))
                                          (_loop1699817035_
                                           _lp-tl1700117048_
                                           (cons _lp-hd1700017046_
                                                 _arg1700217040_))))
                                      (let ((_arg1700317051_
                                             (reverse _arg1700217040_)))
                                        ((lambda (_L17054_ _L17055_)
                                           (cons _L16956_
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'apply '()))
                            (cons (cons '%#ref (cons _id16975_ '()))
                                  (foldr1 cons
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L17054_ '()))
                                                '())
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1706617069_
                                                             _g1706717071_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1706617069_ '()))
                    _g1706717071_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L17055_))))))
                _stx16898_)
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl1699717032_
                                         _arg1700317051_))))))
                        (_loop1699817035_ _target1699517030_ '())))))
                (_g1698017025_ _g1698217028_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1698017025_
                                                     _g1698217028_)))))
                                         (let ((_g1697817121_
                                                (lambda (_g1698217077_)
                                                  (if (gx#stx-pair/null?
                                                       _g1698217077_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1698217077_)
                        '0)
                  (let ((_g19997_ (gx#syntax-split-splice _g1698217077_ '0)))
                    (begin
                      (let ((_g19998_ (values-count _g19997_)))
                        (if (not (fx= _g19998_ 2))
                            (error "Context expects 2 values" _g19998_)))
                      (let ((_target1698417079_ (values-ref _g19997_ 0))
                            (_tl1698617081_ (values-ref _g19997_ 1)))
                        (if (gx#stx-null? _tl1698617081_)
                            (letrec ((_loop1698717084_
                                      (lambda (_hd1698517087_ _arg1699117089_)
                                        (if (gx#stx-pair? _hd1698517087_)
                                            (let ((_e1698817092_
                                                   (gx#stx-e _hd1698517087_)))
                                              (let ((_lp-hd1698917095_
                                                     (##car _e1698817092_))
                                                    (_lp-tl1699017097_
                                                     (##cdr _e1698817092_)))
                                                (_loop1698717084_
                                                 _lp-tl1699017097_
                                                 (cons _lp-hd1698917095_
                                                       _arg1699117089_))))
                                            (let ((_arg1699217100_
                                                   (reverse _arg1699117089_)))
                                              ((lambda (_L17103_)
                                                 (cons _L16956_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _id16975_ '()))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1711317116_
                                                     _g1711417118_)
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _g1711317116_
                                                                '()))
                                                    _g1711417118_))
                                            '()
                                            _L17103_))))
                      _stx16898_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _arg1699217100_))))))
                              (_loop1698717084_ _target1698417079_ '()))
                            (_g1697917074_ _g1698217077_)))))
                  (_g1697917074_ _g1698217077_))
              (_g1697917074_ _g1698217077_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1697817121_ _L16956_)))))))
                              (let ()
                                (_lp16903_
                                 _rest16928_
                                 (cons _id16975_ _ids16906_)
                                 (cons _impl16977_ _impls16907_)
                                 (cons _clause17124_ _clauses16908_))))))))
                    _tl1693716952_
                    _hd1693616950_)))
               (_g1693116942_ _g1693216945_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1693017127_ _clause16929_)))))))
                             (if (##pair? _rest1690916917_)
                                 (let ((_hd1691417133_
                                        (##car _rest1690916917_))
                                       (_tl1691517135_
                                        (##cdr _rest1690916917_)))
                                   (let ((_clause17138_ _hd1691417133_))
                                     (let ((_rest17140_ _tl1691517135_))
                                       (_K1691317130_
                                        _rest17140_
                                        _clause17138_))))
                                 (_else1691116925_)))))))))
           _lp16903_)
         _clauses16900_
         '()
         '()
         '())))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx17145_ _id17146_ _clauses17147_)
          (let ((_gensym?17149_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda16896
             _stx17145_
             _id17146_
             _clauses17147_
             _gensym?17149_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g20000_
          (let ((_g19999_ (length _g20000_)))
            (cond ((fx= _g19999_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g20000_))
                  ((fx= _g19999_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda16896
                          _g20000_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g20000_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx16487_)
      (let ((_case-lambda-clause-def16489_
             (lambda (_id16894_ _impl16895_)
               (gxc#xform-wrap-source
                (cons '%#define-values
                      (cons (cons _id16894_ '())
                            (cons (gxc#compile-e _impl16895_) '())))
                _stx16487_))))
        (let ((_g1649316538_
               (lambda (_g1649416535_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1649416535_))))
          (let ((_g1649216584_
                 (lambda (_g1649416541_)
                   (if (gx#stx-pair? _g1649416541_)
                       (let ((_e1652516543_ (gx#stx-e _g1649416541_)))
                         (let ((_hd1652616546_ (##car _e1652516543_))
                               (_tl1652716548_ (##cdr _e1652516543_)))
                           (if (gx#stx-pair? _tl1652716548_)
                               (let ((_e1652816551_ (gx#stx-e _tl1652716548_)))
                                 (let ((_hd1652916554_ (##car _e1652816551_))
                                       (_tl1653016556_ (##cdr _e1652816551_)))
                                   (if (gx#stx-pair? _tl1653016556_)
                                       (let ((_e1653116559_
                                              (gx#stx-e _tl1653016556_)))
                                         (let ((_hd1653216562_
                                                (##car _e1653116559_))
                                               (_tl1653316564_
                                                (##cdr _e1653116559_)))
                                           (if (gx#stx-null? _tl1653316564_)
                                               ((lambda (_L16567_ _L16568_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L16568_
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16567_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx16487_))
                                                _hd1653216562_
                                                _hd1652916554_)
                                               (_g1649316538_ _g1649416541_))))
                                       (_g1649316538_ _g1649416541_))))
                               (_g1649316538_ _g1649416541_))))
                       (_g1649316538_ _g1649416541_)))))
            (let ((_g1649116766_
                   (lambda (_g1649416587_)
                     (if (gx#stx-pair? _g1649416587_)
                         (let ((_e1651116589_ (gx#stx-e _g1649416587_)))
                           (let ((_hd1651216592_ (##car _e1651116589_))
                                 (_tl1651316594_ (##cdr _e1651116589_)))
                             (if (gx#stx-pair? _tl1651316594_)
                                 (let ((_e1651416597_
                                        (gx#stx-e _tl1651316594_)))
                                   (let ((_hd1651516600_ (##car _e1651416597_))
                                         (_tl1651616602_
                                          (##cdr _e1651416597_)))
                                     (if (gx#stx-pair? _hd1651516600_)
                                         (let ((_e1651716605_
                                                (gx#stx-e _hd1651516600_)))
                                           (let ((_hd1651816608_
                                                  (##car _e1651716605_))
                                                 (_tl1651916610_
                                                  (##cdr _e1651716605_)))
                                             (if (gx#stx-null? _tl1651916610_)
                                                 (if (gx#stx-pair?
                                                      _tl1651616602_)
                                                     (let ((_e1652016613_
                                                            (gx#stx-e
                                                             _tl1651616602_)))
                                                       (let ((_hd1652116616_
                                                              (##car _e1652016613_))
                                                             (_tl1652216618_
                                                              (##cdr _e1652016613_)))
                                                         (if (gx#stx-null?
                                                              _tl1652216618_)
                                                             ((lambda (_L16621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16622_)
                        (if (if (gx#identifier? _L16622_)
                                (gxc#opt-lambda-expr? _L16621_)
                                '#f)
                            (let ((_g1663816668_
                                   (lambda (_g1663916665_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1663916665_))))
                              (let ((_g1663716763_
                                     (lambda (_g1663916671_)
                                       (if (gx#stx-pair? _g1663916671_)
                                           (let ((_e1664316673_
                                                  (gx#stx-e _g1663916671_)))
                                             (let ((_hd1664416676_
                                                    (##car _e1664316673_))
                                                   (_tl1664516678_
                                                    (##cdr _e1664316673_)))
                                               (if (gx#stx-pair?
                                                    _tl1664516678_)
                                                   (let ((_e1664616681_
                                                          (gx#stx-e
                                                           _tl1664516678_)))
                                                     (let ((_hd1664716684_
                                                            (##car _e1664616681_))
                                                           (_tl1664816686_
                                                            (##cdr _e1664616681_)))
                                                       (if (gx#stx-pair?
                                                            _hd1664716684_)
                                                           (let ((_e1664916689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1664716684_)))
                     (let ((_hd1665016692_ (##car _e1664916689_))
                           (_tl1665116694_ (##cdr _e1664916689_)))
                       (if (gx#stx-pair? _hd1665016692_)
                           (let ((_e1665216697_ (gx#stx-e _hd1665016692_)))
                             (let ((_hd1665316700_ (##car _e1665216697_))
                                   (_tl1665416702_ (##cdr _e1665216697_)))
                               (if (gx#stx-pair? _hd1665316700_)
                                   (let ((_e1665516705_
                                          (gx#stx-e _hd1665316700_)))
                                     (let ((_hd1665616708_
                                            (##car _e1665516705_))
                                           (_tl1665716710_
                                            (##cdr _e1665516705_)))
                                       (if (gx#stx-null? _tl1665716710_)
                                           (if (gx#stx-pair? _tl1665416702_)
                                               (let ((_e1665816713_
                                                      (gx#stx-e
                                                       _tl1665416702_)))
                                                 (let ((_hd1665916716_
                                                        (##car _e1665816713_))
                                                       (_tl1666016718_
                                                        (##cdr _e1665816713_)))
                                                   (if (gx#stx-null?
                                                        _tl1666016718_)
                                                       (if (gx#stx-null?
                                                            _tl1665116694_)
                                                           (if (gx#stx-pair?
                                                                _tl1664816686_)
                                                               (let ((_e1666116721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1664816686_)))
                         (let ((_hd1666216724_ (##car _e1666116721_))
                               (_tl1666316726_ (##cdr _e1666116721_)))
                           (if (gx#stx-null? _tl1666316726_)
                               ((lambda (_L16729_ _L16730_ _L16731_)
                                  (let ((_lambda-id16755_
                                         (make-symbol
                                          (gx#stx-e _L16622_)
                                          '"__"
                                          (gx#stx-e _L16731_))))
                                    (let ((_lambda-id16757_
                                           (gx#core-quote-syntax__1
                                            _lambda-id16755_
                                            (gx#stx-source _stx16487_))))
                                      (let ((_g20001_
                                             (gx#core-bind-runtime!__0
                                              _lambda-id16757_)))
                                        (let ((_new-case-lambda-expr16760_
                                               (gxc#apply-expression-subst
                                                _L16729_
                                                _L16731_
                                                _lambda-id16757_)))
                                          (let ()
                                            (begin
                                              (gxc#verbose
                                               '"lift opt-lambda dispatch "
                                               (gxc#generate-runtime-binding-id
                                                _L16622_)
                                               '" => "
                                               (gxc#generate-runtime-binding-id
                                                _lambda-id16757_))
                                              (gxc#xform-wrap-source
                                               (cons '%#begin
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _lambda-id16757_ '())
                                (cons (gxc#compile-e _L16730_) '())))
                    _stx16487_)
                   (cons (gxc#lift-top-lambda-define-values%
                          (gxc#xform-wrap-source
                           (cons '%#define-values
                                 (cons (cons _L16622_ '())
                                       (cons _new-case-lambda-expr16760_ '())))
                           _stx16487_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx16487_))))))))
                                _hd1666216724_
                                _hd1665916716_
                                _hd1665616708_)
                               (_g1663816668_ _g1663916671_))))
                       (_g1663816668_ _g1663916671_))
                   (_g1663816668_ _g1663916671_))
               (_g1663816668_ _g1663916671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1663816668_ _g1663916671_))
                                           (_g1663816668_ _g1663916671_))))
                                   (_g1663816668_ _g1663916671_))))
                           (_g1663816668_ _g1663916671_))))
                   (_g1663816668_ _g1663916671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1663816668_
                                                    _g1663916671_))))
                                           (_g1663816668_ _g1663916671_)))))
                                (_g1663716763_ _L16621_)))
                            (_g1649216584_ _g1649416587_)))
                      _hd1652116616_
                      _hd1651816608_)
                     (_g1649216584_ _g1649416587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1649216584_
                                                      _g1649416587_))
                                                 (_g1649216584_
                                                  _g1649416587_))))
                                         (_g1649216584_ _g1649416587_))))
                                 (_g1649216584_ _g1649416587_))))
                         (_g1649216584_ _g1649416587_)))))
              (let ((_g1649016891_
                     (lambda (_g1649416769_)
                       (if (gx#stx-pair? _g1649416769_)
                           (let ((_e1649716771_ (gx#stx-e _g1649416769_)))
                             (let ((_hd1649816774_ (##car _e1649716771_))
                                   (_tl1649916776_ (##cdr _e1649716771_)))
                               (if (gx#stx-pair? _tl1649916776_)
                                   (let ((_e1650016779_
                                          (gx#stx-e _tl1649916776_)))
                                     (let ((_hd1650116782_
                                            (##car _e1650016779_))
                                           (_tl1650216784_
                                            (##cdr _e1650016779_)))
                                       (if (gx#stx-pair? _hd1650116782_)
                                           (let ((_e1650316787_
                                                  (gx#stx-e _hd1650116782_)))
                                             (let ((_hd1650416790_
                                                    (##car _e1650316787_))
                                                   (_tl1650516792_
                                                    (##cdr _e1650316787_)))
                                               (if (gx#stx-null?
                                                    _tl1650516792_)
                                                   (if (gx#stx-pair?
                                                        _tl1650216784_)
                                                       (let ((_e1650616795_
                                                              (gx#stx-e
                                                               _tl1650216784_)))
                                                         (let ((_hd1650716798_
                                                                (##car _e1650616795_))
                                                               (_tl1650816800_
                                                                (##cdr _e1650616795_)))
                                                           (if (gx#stx-null?
                                                                _tl1650816800_)
                                                               ((lambda (_L16803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L16804_)
                          (if (if (gx#identifier? _L16804_)
                                  (gxc#case-lambda-expr? _L16803_)
                                  '#f)
                              (let ((_g1682116835_
                                     (lambda (_g1682216832_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1682216832_))))
                                (let ((_g1682016866_
                                       (lambda (_g1682216838_)
                                         (if (gx#stx-pair? _g1682216838_)
                                             (let ((_e1682816840_
                                                    (gx#stx-e _g1682216838_)))
                                               (let ((_hd1682916843_
                                                      (##car _e1682816840_))
                                                     (_tl1683016845_
                                                      (##cdr _e1682816840_)))
                                                 ((lambda (_L16848_)
                                                    (let ((_g20002_
                                                           (gxc#lift-case-lambda-clauses__0
                                                            _stx16487_
                                                            _L16804_
                                                            _L16848_)))
                                                      (begin
                                                        (let ((_g20003_
                                                               (values-count
                                                                _g20002_)))
                                                          (if (not (fx= _g20003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                3))
                      (error "Context expects 3 values" _g20003_)))
                (let ((_ids16858_ (values-ref _g20002_ 0))
                      (_impls16859_ (values-ref _g20002_ 1))
                      (_clauses16860_ (values-ref _g20002_ 2)))
                  (let ((_g20004_ (for-each gx#core-bind-runtime! _ids16858_)))
                    (let ((_defs16863_
                           (map _case-lambda-clause-def16489_
                                _ids16858_
                                _impls16859_)))
                      (let ()
                        (begin
                          (gxc#verbose
                           '"lift case-lambda clauses "
                           (gxc#generate-runtime-binding-id _L16804_)
                           '" => "
                           (map gxc#identifier-symbol _ids16858_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (foldr1 cons
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _L16804_ '())
                                                            (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#case-lambda _clauses16860_)
                           (gx#datum->syntax__0 '#f 'case-lambda-expr))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx16487_)
                                               '())
                                         _defs16863_))
                           _stx16487_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1683016845_)))
                                             (_g1682116835_ _g1682216838_)))))
                                  (let ((_g1681916888_
                                         (lambda (_g1682216869_)
                                           (if (gx#stx-pair? _g1682216869_)
                                               (let ((_e1682416871_
                                                      (gx#stx-e
                                                       _g1682216869_)))
                                                 (let ((_hd1682516874_
                                                        (##car _e1682416871_))
                                                       (_tl1682616876_
                                                        (##cdr _e1682416871_)))
                                                   ((lambda (_L16879_)
                                                      (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16879_)
                  _stx16487_
                  (_g1682016866_ _g1682216869_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1682616876_)))
                                               (_g1682016866_
                                                _g1682216869_)))))
                                    (_g1681916888_ _L16803_))))
                              (_g1649116766_ _g1649416769_)))
                        _hd1650716798_
                        _hd1650416790_)
                       (_g1649116766_ _g1649416769_))))
               (_g1649116766_ _g1649416769_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1649116766_
                                                    _g1649416769_))))
                                           (_g1649116766_ _g1649416769_))))
                                   (_g1649116766_ _g1649416769_))))
                           (_g1649116766_ _g1649416769_)))))
                (_g1649016891_ _stx16487_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx15910_)
      (let ((_bind-e__opt-lambda16469__1995119952_
             (lambda (_id16471_ _expr16472_ _compile?16473_)
               (cons (cons _id16471_ '())
                     (cons (if _compile?16473_
                               (gxc#compile-e _expr16472_)
                               _expr16472_)
                           '())))))
        (let ((_bind-e__0__1995319954_
               (lambda (_id16478_ _expr16479_)
                 (let ((_compile?16481_ '#t))
                   (_bind-e__opt-lambda16469__1995119952_
                    _id16478_
                    _expr16479_
                    _compile?16481_)))))
          (let ((_bind-e15912_
                 (lambda _g20014_
                   (let ((_g20013_ (length _g20014_)))
                     (cond ((fx= _g20013_ 2)
                            (apply _bind-e__0__1995319954_ _g20014_))
                           ((fx= _g20013_ 3)
                            (apply _bind-e__opt-lambda16469__1995119952_
                                   _g20014_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g20014_)))))))
            (let ((_compile-bindings15913_
                   (lambda (_rest16055_)
                     ((letrec ((_lp16057_
                                (lambda (_rest16059_
                                         _lift116060_
                                         _lift216061_
                                         _bind16062_)
                                  (let ((_rest1606316071_ _rest16059_))
                                    (let ((_E1606616075_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1606316071_))))
                                      (let ((_else1606516079_
                                             (lambda ()
                                               (values (reverse _lift116060_)
                                                       (reverse _lift216061_)
                                                       (reverse _bind16062_)))))
                                        (let ((_K1606716458_
                                               (lambda (_rest16082_ _hd16083_)
                                                 (let ((_g1608716123_
                                                        (lambda (_g1608816120_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1608816120_))))
                                                   (let ((_g1608616164_
                                                          (lambda (_g1608816126_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1608816126_)
                        (let ((_e1611316128_ (gx#stx-e _g1608816126_)))
                          (let ((_hd1611416131_ (##car _e1611316128_))
                                (_tl1611516133_ (##cdr _e1611316128_)))
                            (if (gx#stx-pair? _tl1611516133_)
                                (let ((_e1611616136_
                                       (gx#stx-e _tl1611516133_)))
                                  (let ((_hd1611716139_ (##car _e1611616136_))
                                        (_tl1611816141_ (##cdr _e1611616136_)))
                                    (if (gx#stx-null? _tl1611816141_)
                                        ((lambda (_L16144_ _L16145_)
                                           (_lp16057_
                                            _rest16082_
                                            _lift116060_
                                            _lift216061_
                                            (cons (cons _L16145_
                                                        (cons (gxc#compile-e
                                                               _L16144_)
                                                              '()))
                                                  _bind16062_)))
                                         _hd1611716139_
                                         _hd1611416131_)
                                        (_g1608716123_ _g1608816126_))))
                                (_g1608716123_ _g1608816126_))))
                        (_g1608716123_ _g1608816126_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1608516336_
                                                            (lambda (_g1608816167_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1608816167_)
                          (let ((_e1610216169_ (gx#stx-e _g1608816167_)))
                            (let ((_hd1610316172_ (##car _e1610216169_))
                                  (_tl1610416174_ (##cdr _e1610216169_)))
                              (if (gx#stx-pair? _hd1610316172_)
                                  (let ((_e1610516177_
                                         (gx#stx-e _hd1610316172_)))
                                    (let ((_hd1610616180_
                                           (##car _e1610516177_))
                                          (_tl1610716182_
                                           (##cdr _e1610516177_)))
                                      (if (gx#stx-null? _tl1610716182_)
                                          (if (gx#stx-pair? _tl1610416174_)
                                              (let ((_e1610816185_
                                                     (gx#stx-e
                                                      _tl1610416174_)))
                                                (let ((_hd1610916188_
                                                       (##car _e1610816185_))
                                                      (_tl1611016190_
                                                       (##cdr _e1610816185_)))
                                                  (if (gx#stx-null?
                                                       _tl1611016190_)
                                                      ((lambda (_L16193_
                                                                _L16194_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L16194_)
                         (gxc#opt-lambda-expr? _L16193_)
                         '#f)
                     (let ((_g1620816238_
                            (lambda (_g1620916235_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1620916235_))))
                       (let ((_g1620716333_
                              (lambda (_g1620916241_)
                                (if (gx#stx-pair? _g1620916241_)
                                    (let ((_e1621316243_
                                           (gx#stx-e _g1620916241_)))
                                      (let ((_hd1621416246_
                                             (##car _e1621316243_))
                                            (_tl1621516248_
                                             (##cdr _e1621316243_)))
                                        (if (gx#stx-pair? _tl1621516248_)
                                            (let ((_e1621616251_
                                                   (gx#stx-e _tl1621516248_)))
                                              (let ((_hd1621716254_
                                                     (##car _e1621616251_))
                                                    (_tl1621816256_
                                                     (##cdr _e1621616251_)))
                                                (if (gx#stx-pair?
                                                     _hd1621716254_)
                                                    (let ((_e1621916259_
                                                           (gx#stx-e
                                                            _hd1621716254_)))
                                                      (let ((_hd1622016262_
                                                             (##car _e1621916259_))
                                                            (_tl1622116264_
                                                             (##cdr _e1621916259_)))
                                                        (if (gx#stx-pair?
                                                             _hd1622016262_)
                                                            (let ((_e1622216267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1622016262_)))
                      (let ((_hd1622316270_ (##car _e1622216267_))
                            (_tl1622416272_ (##cdr _e1622216267_)))
                        (if (gx#stx-pair? _hd1622316270_)
                            (let ((_e1622516275_ (gx#stx-e _hd1622316270_)))
                              (let ((_hd1622616278_ (##car _e1622516275_))
                                    (_tl1622716280_ (##cdr _e1622516275_)))
                                (if (gx#stx-null? _tl1622716280_)
                                    (if (gx#stx-pair? _tl1622416272_)
                                        (let ((_e1622816283_
                                               (gx#stx-e _tl1622416272_)))
                                          (let ((_hd1622916286_
                                                 (##car _e1622816283_))
                                                (_tl1623016288_
                                                 (##cdr _e1622816283_)))
                                            (if (gx#stx-null? _tl1623016288_)
                                                (if (gx#stx-null?
                                                     _tl1622116264_)
                                                    (if (gx#stx-pair?
                                                         _tl1621816256_)
                                                        (let ((_e1623116291_
                                                               (gx#stx-e
                                                                _tl1621816256_)))
                                                          (let ((_hd1623216294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1623116291_))
                        (_tl1623316296_ (##cdr _e1623116291_)))
                    (if (gx#stx-null? _tl1623316296_)
                        ((lambda (_L16299_ _L16300_ _L16301_)
                           (let ((_lambda-id16325_
                                  (make-symbol
                                   (gx#stx-e _L16194_)
                                   '"__"
                                   (gx#stx-e _L16301_)
                                   (gensym '__))))
                             (let ((_lambda-id16327_
                                    (gx#core-quote-syntax__1
                                     _lambda-id16325_
                                     (gx#stx-source _stx15910_))))
                               (let ((_g20009_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id16327_)))
                                 (let ((_new-case-lambda-expr16330_
                                        (gxc#apply-expression-subst
                                         _L16299_
                                         _L16301_
                                         _lambda-id16327_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L16194_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id16327_))
                                       (_lp16057_
                                        (cons (_bind-e__opt-lambda16469__1995119952_
                                               _L16194_
                                               _new-case-lambda-expr16330_
                                               '#f)
                                              _rest16082_)
                                        (cons (_bind-e__0__1995319954_
                                               _lambda-id16327_
                                               _L16300_)
                                              _lift116060_)
                                        _lift216061_
                                        _bind16062_))))))))
                         _hd1623216294_
                         _hd1622916286_
                         _hd1622616278_)
                        (_g1620816238_ _g1620916241_))))
                (_g1620816238_ _g1620916241_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1620816238_
                                                     _g1620916241_))
                                                (_g1620816238_
                                                 _g1620916241_))))
                                        (_g1620816238_ _g1620916241_))
                                    (_g1620816238_ _g1620916241_))))
                            (_g1620816238_ _g1620916241_))))
                    (_g1620816238_ _g1620916241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1620816238_
                                                     _g1620916241_))))
                                            (_g1620816238_ _g1620916241_))))
                                    (_g1620816238_ _g1620916241_)))))
                         (_g1620716333_ _L16193_)))
                     (_g1608616164_ _g1608816167_)))
               _hd1610916188_
               _hd1610616180_)
              (_g1608616164_ _g1608816167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1608616164_ _g1608816167_))
                                          (_g1608616164_ _g1608816167_))))
                                  (_g1608616164_ _g1608816167_))))
                          (_g1608616164_ _g1608816167_)))))
               (let ((_g1608416455_
                      (lambda (_g1608816339_)
                        (if (gx#stx-pair? _g1608816339_)
                            (let ((_e1609116341_ (gx#stx-e _g1608816339_)))
                              (let ((_hd1609216344_ (##car _e1609116341_))
                                    (_tl1609316346_ (##cdr _e1609116341_)))
                                (if (gx#stx-pair? _hd1609216344_)
                                    (let ((_e1609416349_
                                           (gx#stx-e _hd1609216344_)))
                                      (let ((_hd1609516352_
                                             (##car _e1609416349_))
                                            (_tl1609616354_
                                             (##cdr _e1609416349_)))
                                        (if (gx#stx-null? _tl1609616354_)
                                            (if (gx#stx-pair? _tl1609316346_)
                                                (let ((_e1609716357_
                                                       (gx#stx-e
                                                        _tl1609316346_)))
                                                  (let ((_hd1609816360_
                                                         (##car _e1609716357_))
                                                        (_tl1609916362_
                                                         (##cdr _e1609716357_)))
                                                    (if (gx#stx-null?
                                                         _tl1609916362_)
                                                        ((lambda (_L16365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L16366_)
                   (if (if (gx#identifier? _L16366_)
                           (gxc#case-lambda-expr? _L16365_)
                           '#f)
                       (let ((_g1638116395_
                              (lambda (_g1638216392_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1638216392_))))
                         (let ((_g1638016430_
                                (lambda (_g1638216398_)
                                  (if (gx#stx-pair? _g1638216398_)
                                      (let ((_e1638816400_
                                             (gx#stx-e _g1638216398_)))
                                        (let ((_hd1638916403_
                                               (##car _e1638816400_))
                                              (_tl1639016405_
                                               (##cdr _e1638816400_)))
                                          ((lambda (_L16408_)
                                             (let ((_g20010_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16896
                                                     _stx15910_
                                                     _L16366_
                                                     _L16408_
                                                     '#t)))
                                               (begin
                                                 (let ((_g20011_
                                                        (values-count
                                                         _g20010_)))
                                                   (if (not (fx= _g20011_ 3))
                                                       (error "Context expects 3 values"
                                                              _g20011_)))
                                                 (let ((_ids16418_
                                                        (values-ref
                                                         _g20010_
                                                         0))
                                                       (_impls16419_
                                                        (values-ref
                                                         _g20010_
                                                         1))
                                                       (_clauses16420_
                                                        (values-ref
                                                         _g20010_
                                                         2)))
                                                   (let ((_g20012_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids16418_)))
                                                     (let ((_xbind16423_
                                                            (map _bind-e15912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids16418_
                         _impls16419_)))
               (let ((_expr*16425_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses16420_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*16427_
                        (_bind-e__opt-lambda16469__1995119952_
                         _L16366_
                         _expr*16425_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L16366_)
                        '" => "
                        (map gxc#identifier-symbol _ids16418_))
                       (_lp16057_
                        _rest16082_
                        _lift116060_
                        (foldl1 cons _lift216061_ _xbind16423_)
                        (cons _bind*16427_ _bind16062_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1639016405_)))
                                      (_g1638116395_ _g1638216398_)))))
                           (let ((_g1637916452_
                                  (lambda (_g1638216433_)
                                    (if (gx#stx-pair? _g1638216433_)
                                        (let ((_e1638416435_
                                               (gx#stx-e _g1638216433_)))
                                          (let ((_hd1638516438_
                                                 (##car _e1638416435_))
                                                (_tl1638616440_
                                                 (##cdr _e1638416435_)))
                                            ((lambda (_L16443_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L16443_)
                                                   (_lp16057_
                                                    _rest16082_
                                                    _lift116060_
                                                    _lift216061_
                                                    (cons (_bind-e__opt-lambda16469__1995119952_
                                                           _L16366_
                                                           _L16365_
                                                           '#f)
                                                          _bind16062_))
                                                   (_g1638016430_
                                                    _g1638216433_)))
                                             _tl1638616440_)))
                                        (_g1638016430_ _g1638216433_)))))
                             (_g1637916452_ _L16365_))))
                       (_g1608516336_ _g1608816339_)))
                 _hd1609816360_
                 _hd1609516352_)
                (_g1608516336_ _g1608816339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1608516336_ _g1608816339_))
                                            (_g1608516336_ _g1608816339_))))
                                    (_g1608516336_ _g1608816339_))))
                            (_g1608516336_ _g1608816339_)))))
                 (_g1608416455_ _hd16083_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1606316071_)
                                              (let ((_hd1606816461_
                                                     (##car _rest1606316071_))
                                                    (_tl1606916463_
                                                     (##cdr _rest1606316071_)))
                                                (let ((_hd16466_
                                                       _hd1606816461_))
                                                  (let ((_rest16468_
                                                         _tl1606916463_))
                                                    (_K1606716458_
                                                     _rest16468_
                                                     _hd16466_))))
                                              (_else1606516079_)))))))))
                        _lp16057_)
                      _rest16055_
                      '()
                      '()
                      '()))))
              (let ((_g1591615942_
                     (lambda (_g1591715939_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1591715939_))))
                (let ((_g1591515949_
                       (lambda (_g1591715945_)
                         ((lambda () (gxc#xform-let-values% _stx15910_))))))
                  (let ((_g1591416052_
                         (lambda (_g1591715952_)
                           (if (gx#stx-pair? _g1591715952_)
                               (let ((_e1592015954_ (gx#stx-e _g1591715952_)))
                                 (let ((_hd1592115957_ (##car _e1592015954_))
                                       (_tl1592215959_ (##cdr _e1592015954_)))
                                   (if (gx#stx-pair? _tl1592215959_)
                                       (let ((_e1592315962_
                                              (gx#stx-e _tl1592215959_)))
                                         (let ((_hd1592415965_
                                                (##car _e1592315962_))
                                               (_tl1592515967_
                                                (##cdr _e1592315962_)))
                                           (if (gx#stx-pair/null?
                                                _hd1592415965_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1592415965_)
                                                         '0)
                                                   (let ((_g20005_
                                                          (gx#syntax-split-splice
                                                           _hd1592415965_
                                                           '0)))
                                                     (begin
                                                       (let ((_g20006_
                                                              (values-count
                                                               _g20005_)))
                                                         (if (not (fx= _g20006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g20006_)))
               (let ((_target1592615970_ (values-ref _g20005_ 0))
                     (_tl1592815972_ (values-ref _g20005_ 1)))
                 (if (gx#stx-null? _tl1592815972_)
                     (letrec ((_loop1592915975_
                               (lambda (_hd1592715978_ _bind1593315980_)
                                 (if (gx#stx-pair? _hd1592715978_)
                                     (let ((_e1593015983_
                                            (gx#stx-e _hd1592715978_)))
                                       (let ((_lp-hd1593115986_
                                              (##car _e1593015983_))
                                             (_lp-tl1593215988_
                                              (##cdr _e1593015983_)))
                                         (_loop1592915975_
                                          _lp-tl1593215988_
                                          (cons _lp-hd1593115986_
                                                _bind1593315980_))))
                                     (let ((_bind1593415991_
                                            (reverse _bind1593315980_)))
                                       (if (gx#stx-pair? _tl1592515967_)
                                           (let ((_e1593515994_
                                                  (gx#stx-e _tl1592515967_)))
                                             (let ((_hd1593615997_
                                                    (##car _e1593515994_))
                                                   (_tl1593715999_
                                                    (##cdr _e1593515994_)))
                                               (if (gx#stx-null?
                                                    _tl1593715999_)
                                                   ((lambda (_L16002_ _L16003_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1602316026_ _g1602416028_)
                                      (cons _g1602316026_ _g1602416028_))
                                    '()
                                    _L16003_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_g20007_
                            (_compile-bindings15913_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1603116034_ _g1603216036_)
                                         (cons _g1603116034_ _g1603216036_))
                                       '()
                                       _L16003_)))))
                       (begin
                         (let ((_g20008_ (values-count _g20007_)))
                           (if (not (fx= _g20008_ 3))
                               (error "Context expects 3 values" _g20008_)))
                         (let ((_lift116039_ (values-ref _g20007_ 0))
                               (_lift216040_ (values-ref _g20007_ 1))
                               (_hd16041_ (values-ref _g20007_ 2)))
                           (let ((_body16043_ (gxc#compile-e _L16002_)))
                             (let ((_expr16045_
                                    (gxc#xform-wrap-source
                                     (cons '%#let-values
                                           (cons _hd16041_
                                                 (cons _body16043_ '())))
                                     _stx15910_)))
                               (let ((_expr16047_
                                      (if (null? _lift216040_)
                                          _expr16045_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift216040_
                                                       (cons _expr16045_ '())))
                                           _stx15910_))))
                                 (let ((_expr16049_
                                        (if (null? _lift116039_)
                                            _expr16047_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift116039_
                                                         (cons _expr16047_
                                                               '())))
                                             _stx15910_))))
                                   (let () _expr16049_)))))))))
                   gx#current-expander-context
                   (let ((__obj19961 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19961)
                       __obj19961)))
                  (_g1591515949_ _g1591715952_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1593615997_
                                                    _bind1593415991_)
                                                   (_g1591515949_
                                                    _g1591715952_))))
                                           (_g1591515949_ _g1591715952_)))))))
                       (_loop1592915975_ _target1592615970_ '()))
                     (_g1591515949_ _g1591715952_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1591515949_
                                                    _g1591715952_))
                                               (_g1591515949_ _g1591715952_))))
                                       (_g1591515949_ _g1591715952_))))
                               (_g1591515949_ _g1591715952_)))))
                    (_g1591416052_ _stx15910_))))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx15342_)
      (let ((_bind-e__opt-lambda15892__1995619957_
             (lambda (_id15894_ _expr15895_ _compile?15896_)
               (cons (cons _id15894_ '())
                     (cons (if _compile?15896_
                               (gxc#compile-e _expr15895_)
                               _expr15895_)
                           '())))))
        (let ((_bind-e__0__1995819959_
               (lambda (_id15901_ _expr15902_)
                 (let ((_compile?15904_ '#t))
                   (_bind-e__opt-lambda15892__1995619957_
                    _id15901_
                    _expr15902_
                    _compile?15904_)))))
          (let ((_bind-e15344_
                 (lambda _g20022_
                   (let ((_g20021_ (length _g20022_)))
                     (cond ((fx= _g20021_ 2)
                            (apply _bind-e__0__1995819959_ _g20022_))
                           ((fx= _g20021_ 3)
                            (apply _bind-e__opt-lambda15892__1995619957_
                                   _g20022_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g20022_)))))))
            (let ((_compile-bindings15345_
                   (lambda (_rest15480_)
                     ((letrec ((_lp15482_
                                (lambda (_rest15484_ _bind15485_)
                                  (let ((_rest1548615494_ _rest15484_))
                                    (let ((_E1548915498_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1548615494_))))
                                      (let ((_else1548815502_
                                             (lambda ()
                                               (reverse _bind15485_))))
                                        (let ((_K1549015881_
                                               (lambda (_rest15505_ _hd15506_)
                                                 (let ((_g1551015546_
                                                        (lambda (_g1551115543_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1551115543_))))
                                                   (let ((_g1550915587_
                                                          (lambda (_g1551115549_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1551115549_)
                        (let ((_e1553615551_ (gx#stx-e _g1551115549_)))
                          (let ((_hd1553715554_ (##car _e1553615551_))
                                (_tl1553815556_ (##cdr _e1553615551_)))
                            (if (gx#stx-pair? _tl1553815556_)
                                (let ((_e1553915559_
                                       (gx#stx-e _tl1553815556_)))
                                  (let ((_hd1554015562_ (##car _e1553915559_))
                                        (_tl1554115564_ (##cdr _e1553915559_)))
                                    (if (gx#stx-null? _tl1554115564_)
                                        ((lambda (_L15567_ _L15568_)
                                           (_lp15482_
                                            _rest15505_
                                            (cons (cons _L15568_
                                                        (cons (gxc#compile-e
                                                               _L15567_)
                                                              '()))
                                                  _bind15485_)))
                                         _hd1554015562_
                                         _hd1553715554_)
                                        (_g1551015546_ _g1551115549_))))
                                (_g1551015546_ _g1551115549_))))
                        (_g1551015546_ _g1551115549_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1550815759_
                                                            (lambda (_g1551115590_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1551115590_)
                          (let ((_e1552515592_ (gx#stx-e _g1551115590_)))
                            (let ((_hd1552615595_ (##car _e1552515592_))
                                  (_tl1552715597_ (##cdr _e1552515592_)))
                              (if (gx#stx-pair? _hd1552615595_)
                                  (let ((_e1552815600_
                                         (gx#stx-e _hd1552615595_)))
                                    (let ((_hd1552915603_
                                           (##car _e1552815600_))
                                          (_tl1553015605_
                                           (##cdr _e1552815600_)))
                                      (if (gx#stx-null? _tl1553015605_)
                                          (if (gx#stx-pair? _tl1552715597_)
                                              (let ((_e1553115608_
                                                     (gx#stx-e
                                                      _tl1552715597_)))
                                                (let ((_hd1553215611_
                                                       (##car _e1553115608_))
                                                      (_tl1553315613_
                                                       (##cdr _e1553115608_)))
                                                  (if (gx#stx-null?
                                                       _tl1553315613_)
                                                      ((lambda (_L15616_
                                                                _L15617_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15617_)
                         (gxc#opt-lambda-expr? _L15616_)
                         '#f)
                     (let ((_g1563115661_
                            (lambda (_g1563215658_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1563215658_))))
                       (let ((_g1563015756_
                              (lambda (_g1563215664_)
                                (if (gx#stx-pair? _g1563215664_)
                                    (let ((_e1563615666_
                                           (gx#stx-e _g1563215664_)))
                                      (let ((_hd1563715669_
                                             (##car _e1563615666_))
                                            (_tl1563815671_
                                             (##cdr _e1563615666_)))
                                        (if (gx#stx-pair? _tl1563815671_)
                                            (let ((_e1563915674_
                                                   (gx#stx-e _tl1563815671_)))
                                              (let ((_hd1564015677_
                                                     (##car _e1563915674_))
                                                    (_tl1564115679_
                                                     (##cdr _e1563915674_)))
                                                (if (gx#stx-pair?
                                                     _hd1564015677_)
                                                    (let ((_e1564215682_
                                                           (gx#stx-e
                                                            _hd1564015677_)))
                                                      (let ((_hd1564315685_
                                                             (##car _e1564215682_))
                                                            (_tl1564415687_
                                                             (##cdr _e1564215682_)))
                                                        (if (gx#stx-pair?
                                                             _hd1564315685_)
                                                            (let ((_e1564515690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1564315685_)))
                      (let ((_hd1564615693_ (##car _e1564515690_))
                            (_tl1564715695_ (##cdr _e1564515690_)))
                        (if (gx#stx-pair? _hd1564615693_)
                            (let ((_e1564815698_ (gx#stx-e _hd1564615693_)))
                              (let ((_hd1564915701_ (##car _e1564815698_))
                                    (_tl1565015703_ (##cdr _e1564815698_)))
                                (if (gx#stx-null? _tl1565015703_)
                                    (if (gx#stx-pair? _tl1564715695_)
                                        (let ((_e1565115706_
                                               (gx#stx-e _tl1564715695_)))
                                          (let ((_hd1565215709_
                                                 (##car _e1565115706_))
                                                (_tl1565315711_
                                                 (##cdr _e1565115706_)))
                                            (if (gx#stx-null? _tl1565315711_)
                                                (if (gx#stx-null?
                                                     _tl1564415687_)
                                                    (if (gx#stx-pair?
                                                         _tl1564115679_)
                                                        (let ((_e1565415714_
                                                               (gx#stx-e
                                                                _tl1564115679_)))
                                                          (let ((_hd1565515717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1565415714_))
                        (_tl1565615719_ (##cdr _e1565415714_)))
                    (if (gx#stx-null? _tl1565615719_)
                        ((lambda (_L15722_ _L15723_ _L15724_)
                           (let ((_lambda-id15748_
                                  (make-symbol
                                   (gx#stx-e _L15617_)
                                   '"__"
                                   (gx#stx-e _L15724_)
                                   (gensym '__))))
                             (let ((_lambda-id15750_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15748_
                                     (gx#stx-source _stx15342_))))
                               (let ((_g20017_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15750_)))
                                 (let ((_new-case-lambda-expr15753_
                                        (gxc#apply-expression-subst
                                         _L15722_
                                         _L15724_
                                         _lambda-id15750_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15617_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15750_))
                                       (_lp15482_
                                        (cons (_bind-e__opt-lambda15892__1995619957_
                                               _L15617_
                                               _new-case-lambda-expr15753_
                                               '#f)
                                              _rest15505_)
                                        (cons (_bind-e__0__1995819959_
                                               _lambda-id15750_
                                               _L15723_)
                                              _bind15485_)))))))))
                         _hd1565515717_
                         _hd1565215709_
                         _hd1564915701_)
                        (_g1563115661_ _g1563215664_))))
                (_g1563115661_ _g1563215664_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1563115661_
                                                     _g1563215664_))
                                                (_g1563115661_
                                                 _g1563215664_))))
                                        (_g1563115661_ _g1563215664_))
                                    (_g1563115661_ _g1563215664_))))
                            (_g1563115661_ _g1563215664_))))
                    (_g1563115661_ _g1563215664_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1563115661_
                                                     _g1563215664_))))
                                            (_g1563115661_ _g1563215664_))))
                                    (_g1563115661_ _g1563215664_)))))
                         (_g1563015756_ _L15616_)))
                     (_g1550915587_ _g1551115590_)))
               _hd1553215611_
               _hd1552915603_)
              (_g1550915587_ _g1551115590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1550915587_ _g1551115590_))
                                          (_g1550915587_ _g1551115590_))))
                                  (_g1550915587_ _g1551115590_))))
                          (_g1550915587_ _g1551115590_)))))
               (let ((_g1550715878_
                      (lambda (_g1551115762_)
                        (if (gx#stx-pair? _g1551115762_)
                            (let ((_e1551415764_ (gx#stx-e _g1551115762_)))
                              (let ((_hd1551515767_ (##car _e1551415764_))
                                    (_tl1551615769_ (##cdr _e1551415764_)))
                                (if (gx#stx-pair? _hd1551515767_)
                                    (let ((_e1551715772_
                                           (gx#stx-e _hd1551515767_)))
                                      (let ((_hd1551815775_
                                             (##car _e1551715772_))
                                            (_tl1551915777_
                                             (##cdr _e1551715772_)))
                                        (if (gx#stx-null? _tl1551915777_)
                                            (if (gx#stx-pair? _tl1551615769_)
                                                (let ((_e1552015780_
                                                       (gx#stx-e
                                                        _tl1551615769_)))
                                                  (let ((_hd1552115783_
                                                         (##car _e1552015780_))
                                                        (_tl1552215785_
                                                         (##cdr _e1552015780_)))
                                                    (if (gx#stx-null?
                                                         _tl1552215785_)
                                                        ((lambda (_L15788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15789_)
                   (if (if (gx#identifier? _L15789_)
                           (gxc#case-lambda-expr? _L15788_)
                           '#f)
                       (let ((_g1580415818_
                              (lambda (_g1580515815_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1580515815_))))
                         (let ((_g1580315853_
                                (lambda (_g1580515821_)
                                  (if (gx#stx-pair? _g1580515821_)
                                      (let ((_e1581115823_
                                             (gx#stx-e _g1580515821_)))
                                        (let ((_hd1581215826_
                                               (##car _e1581115823_))
                                              (_tl1581315828_
                                               (##cdr _e1581115823_)))
                                          ((lambda (_L15831_)
                                             (let ((_g20018_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16896
                                                     _stx15342_
                                                     _L15789_
                                                     _L15831_
                                                     '#t)))
                                               (begin
                                                 (let ((_g20019_
                                                        (values-count
                                                         _g20018_)))
                                                   (if (not (fx= _g20019_ 3))
                                                       (error "Context expects 3 values"
                                                              _g20019_)))
                                                 (let ((_ids15841_
                                                        (values-ref
                                                         _g20018_
                                                         0))
                                                       (_impls15842_
                                                        (values-ref
                                                         _g20018_
                                                         1))
                                                       (_clauses15843_
                                                        (values-ref
                                                         _g20018_
                                                         2)))
                                                   (let ((_g20020_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15841_)))
                                                     (let ((_xbind15846_
                                                            (map _bind-e15344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15841_
                         _impls15842_)))
               (let ((_expr*15848_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15843_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15850_
                        (_bind-e__opt-lambda15892__1995619957_
                         _L15789_
                         _expr*15848_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15789_)
                        '" => "
                        (map gxc#identifier-symbol _ids15841_))
                       (_lp15482_
                        _rest15505_
                        (cons _bind*15850_
                              (foldl1 cons
                                      _bind15485_
                                      _xbind15846_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1581315828_)))
                                      (_g1580415818_ _g1580515821_)))))
                           (let ((_g1580215875_
                                  (lambda (_g1580515856_)
                                    (if (gx#stx-pair? _g1580515856_)
                                        (let ((_e1580715858_
                                               (gx#stx-e _g1580515856_)))
                                          (let ((_hd1580815861_
                                                 (##car _e1580715858_))
                                                (_tl1580915863_
                                                 (##cdr _e1580715858_)))
                                            ((lambda (_L15866_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15866_)
                                                   (_lp15482_
                                                    _rest15505_
                                                    (cons (_bind-e__opt-lambda15892__1995619957_
                                                           _L15789_
                                                           _L15788_
                                                           '#f)
                                                          _bind15485_))
                                                   (_g1580315853_
                                                    _g1580515856_)))
                                             _tl1580915863_)))
                                        (_g1580315853_ _g1580515856_)))))
                             (_g1580215875_ _L15788_))))
                       (_g1550815759_ _g1551115762_)))
                 _hd1552115783_
                 _hd1551815775_)
                (_g1550815759_ _g1551115762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1550815759_ _g1551115762_))
                                            (_g1550815759_ _g1551115762_))))
                                    (_g1550815759_ _g1551115762_))))
                            (_g1550815759_ _g1551115762_)))))
                 (_g1550715878_ _hd15506_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1548615494_)
                                              (let ((_hd1549115884_
                                                     (##car _rest1548615494_))
                                                    (_tl1549215886_
                                                     (##cdr _rest1548615494_)))
                                                (let ((_hd15889_
                                                       _hd1549115884_))
                                                  (let ((_rest15891_
                                                         _tl1549215886_))
                                                    (_K1549015881_
                                                     _rest15891_
                                                     _hd15889_))))
                                              (_else1548815502_)))))))))
                        _lp15482_)
                      _rest15480_
                      '()))))
              (let ((_g1534815375_
                     (lambda (_g1534915372_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1534915372_))))
                (let ((_g1534715382_
                       (lambda (_g1534915378_)
                         ((lambda () (gxc#xform-let-values% _stx15342_))))))
                  (let ((_g1534615477_
                         (lambda (_g1534915385_)
                           (if (gx#stx-pair? _g1534915385_)
                               (let ((_e1535315387_ (gx#stx-e _g1534915385_)))
                                 (let ((_hd1535415390_ (##car _e1535315387_))
                                       (_tl1535515392_ (##cdr _e1535315387_)))
                                   (if (gx#stx-pair? _tl1535515392_)
                                       (let ((_e1535615395_
                                              (gx#stx-e _tl1535515392_)))
                                         (let ((_hd1535715398_
                                                (##car _e1535615395_))
                                               (_tl1535815400_
                                                (##cdr _e1535615395_)))
                                           (if (gx#stx-pair/null?
                                                _hd1535715398_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1535715398_)
                                                         '0)
                                                   (let ((_g20015_
                                                          (gx#syntax-split-splice
                                                           _hd1535715398_
                                                           '0)))
                                                     (begin
                                                       (let ((_g20016_
                                                              (values-count
                                                               _g20015_)))
                                                         (if (not (fx= _g20016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g20016_)))
               (let ((_target1535915403_ (values-ref _g20015_ 0))
                     (_tl1536115405_ (values-ref _g20015_ 1)))
                 (if (gx#stx-null? _tl1536115405_)
                     (letrec ((_loop1536215408_
                               (lambda (_hd1536015411_ _bind1536615413_)
                                 (if (gx#stx-pair? _hd1536015411_)
                                     (let ((_e1536315416_
                                            (gx#stx-e _hd1536015411_)))
                                       (let ((_lp-hd1536415419_
                                              (##car _e1536315416_))
                                             (_lp-tl1536515421_
                                              (##cdr _e1536315416_)))
                                         (_loop1536215408_
                                          _lp-tl1536515421_
                                          (cons _lp-hd1536415419_
                                                _bind1536615413_))))
                                     (let ((_bind1536715424_
                                            (reverse _bind1536615413_)))
                                       (if (gx#stx-pair? _tl1535815400_)
                                           (let ((_e1536815427_
                                                  (gx#stx-e _tl1535815400_)))
                                             (let ((_hd1536915430_
                                                    (##car _e1536815427_))
                                                   (_tl1537015432_
                                                    (##cdr _e1536815427_)))
                                               (if (gx#stx-null?
                                                    _tl1537015432_)
                                                   ((lambda (_L15435_
                                                             _L15436_
                                                             _L15437_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1545815461_ _g1545915463_)
                                      (cons _g1545815461_ _g1545915463_))
                                    '()
                                    _L15436_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_hd15474_
                            (_compile-bindings15345_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1546615469_ _g1546715471_)
                                         (cons _g1546615469_ _g1546715471_))
                                       '()
                                       _L15436_))))
                           (_body15475_ (gxc#compile-e _L15435_)))
                       (gxc#xform-wrap-source
                        (cons _L15437_ (cons _hd15474_ (cons _body15475_ '())))
                        _stx15342_)))
                   gx#current-expander-context
                   (let ((__obj19962 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19962)
                       __obj19962)))
                  (_g1534715382_ _g1534915385_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1536915430_
                                                    _bind1536715424_
                                                    _hd1535415390_)
                                                   (_g1534715382_
                                                    _g1534915385_))))
                                           (_g1534715382_ _g1534915385_)))))))
                       (_loop1536215408_ _target1535915403_ '()))
                     (_g1534715382_ _g1534915385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1534715382_
                                                    _g1534915385_))
                                               (_g1534715382_ _g1534915385_))))
                                       (_g1534715382_ _g1534915385_))))
                               (_g1534715382_ _g1534915385_)))))
                    (_g1534615477_ _stx15342_))))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind15263_)
      (let ((_g1526615283_
             (lambda (_g1526715280_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1526715280_))))
        (let ((_g1526515290_ (lambda (_g1526715286_) ((lambda () '#f)))))
          (let ((_g1526415339_
                 (lambda (_g1526715293_)
                   (if (gx#stx-pair? _g1526715293_)
                       (let ((_e1527015295_ (gx#stx-e _g1526715293_)))
                         (let ((_hd1527115298_ (##car _e1527015295_))
                               (_tl1527215300_ (##cdr _e1527015295_)))
                           (if (gx#stx-pair? _hd1527115298_)
                               (let ((_e1527315303_ (gx#stx-e _hd1527115298_)))
                                 (let ((_hd1527415306_ (##car _e1527315303_))
                                       (_tl1527515308_ (##cdr _e1527315303_)))
                                   (if (gx#stx-null? _tl1527515308_)
                                       (if (gx#stx-pair? _tl1527215300_)
                                           (let ((_e1527615311_
                                                  (gx#stx-e _tl1527215300_)))
                                             (let ((_hd1527715314_
                                                    (##car _e1527615311_))
                                                   (_tl1527815316_
                                                    (##cdr _e1527615311_)))
                                               (if (gx#stx-null?
                                                    _tl1527815316_)
                                                   ((lambda (_L15319_ _L15320_)
                                                      (if (gx#identifier?
                                                           _L15320_)
                                                          (let ((_$e15336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#case-lambda-expr? _L15319_)))
                    (if _$e15336_ _$e15336_ (gxc#opt-lambda-expr? _L15319_)))
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1527715314_
                                                    _hd1527415306_)
                                                   (_g1526515290_
                                                    _g1526715293_))))
                                           (_g1526515290_ _g1526715293_))
                                       (_g1526515290_ _g1526715293_))))
                               (_g1526515290_ _g1526715293_))))
                       (_g1526515290_ _g1526715293_)))))
            (_g1526415339_ _bind15263_))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx15201_ _id15202_ _new-id15203_)
      (let ((_g1520615219_
             (lambda (_g1520715216_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1520715216_))))
        (let ((_g1520515226_
               (lambda (_g1520715222_) ((lambda () _stx15201_)))))
          (let ((_g1520415260_
                 (lambda (_g1520715229_)
                   (if (gx#stx-pair? _g1520715229_)
                       (let ((_e1520915231_ (gx#stx-e _g1520715229_)))
                         (let ((_hd1521015234_ (##car _e1520915231_))
                               (_tl1521115236_ (##cdr _e1520915231_)))
                           (if (gx#stx-pair? _tl1521115236_)
                               (let ((_e1521215239_ (gx#stx-e _tl1521115236_)))
                                 (let ((_hd1521315242_ (##car _e1521215239_))
                                       (_tl1521415244_ (##cdr _e1521215239_)))
                                   (if (gx#stx-null? _tl1521415244_)
                                       ((lambda (_L15247_)
                                          (if (gx#free-identifier=?
                                               _L15247_
                                               _id15202_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id15203_ '()))
                                               _stx15201_)
                                              (_g1520515226_ _g1520715229_)))
                                        _hd1521315242_)
                                       (_g1520515226_ _g1520715229_))))
                               (_g1520515226_ _g1520715229_))))
                       (_g1520515226_ _g1520715229_)))))
            (_g1520415260_ _stx15201_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx15057_)
      (let ((_g1506015091_
             (lambda (_g1506115088_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1506115088_))))
        (let ((_g1505915136_
               (lambda (_g1506115094_)
                 (if (gx#stx-pair? _g1506115094_)
                     (let ((_e1507815096_ (gx#stx-e _g1506115094_)))
                       (let ((_hd1507915099_ (##car _e1507815096_))
                             (_tl1508015101_ (##cdr _e1507815096_)))
                         (if (gx#stx-pair? _tl1508015101_)
                             (let ((_e1508115104_ (gx#stx-e _tl1508015101_)))
                               (let ((_hd1508215107_ (##car _e1508115104_))
                                     (_tl1508315109_ (##cdr _e1508115104_)))
                                 (if (gx#stx-pair? _tl1508315109_)
                                     (let ((_e1508415112_
                                            (gx#stx-e _tl1508315109_)))
                                       (let ((_hd1508515115_
                                              (##car _e1508415112_))
                                             (_tl1508615117_
                                              (##cdr _e1508415112_)))
                                         (if (gx#stx-null? _tl1508615117_)
                                             ((lambda (_L15120_ _L15121_)
                                                (gxc#compile-e _L15120_))
                                              _hd1508515115_
                                              _hd1508215107_)
                                             (_g1506015091_ _g1506115094_))))
                                     (_g1506015091_ _g1506115094_))))
                             (_g1506015091_ _g1506115094_))))
                     (_g1506015091_ _g1506115094_)))))
          (let ((_g1505815198_
                 (lambda (_g1506115139_)
                   (if (gx#stx-pair? _g1506115139_)
                       (let ((_e1506415141_ (gx#stx-e _g1506115139_)))
                         (let ((_hd1506515144_ (##car _e1506415141_))
                               (_tl1506615146_ (##cdr _e1506415141_)))
                           (if (gx#stx-pair? _tl1506615146_)
                               (let ((_e1506715149_ (gx#stx-e _tl1506615146_)))
                                 (let ((_hd1506815152_ (##car _e1506715149_))
                                       (_tl1506915154_ (##cdr _e1506715149_)))
                                   (if (gx#stx-pair? _hd1506815152_)
                                       (let ((_e1507015157_
                                              (gx#stx-e _hd1506815152_)))
                                         (let ((_hd1507115160_
                                                (##car _e1507015157_))
                                               (_tl1507215162_
                                                (##cdr _e1507015157_)))
                                           (if (gx#stx-null? _tl1507215162_)
                                               (if (gx#stx-pair?
                                                    _tl1506915154_)
                                                   (let ((_e1507315165_
                                                          (gx#stx-e
                                                           _tl1506915154_)))
                                                     (let ((_hd1507415168_
                                                            (##car _e1507315165_))
                                                           (_tl1507515170_
                                                            (##cdr _e1507315165_)))
                                                       (if (gx#stx-null?
                                                            _tl1507515170_)
                                                           ((lambda (_L15173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L15174_)
                      (if (gx#identifier? _L15174_)
                          (let ((_sym15190_
                                 (gxc#generate-runtime-binding-id _L15174_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym15190_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym15190_)
                                  (let ((_type1519115193_
                                         (gxc#apply-basic-expression-type
                                          _L15173_)))
                                    (if _type1519115193_
                                        (let ((_type15196_ _type1519115193_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym15190_
                                           _type15196_))
                                        '#f)))
                              (gxc#compile-e _L15173_)))
                          (_g1505915136_ _g1506115139_)))
                    _hd1507415168_
                    _hd1507115160_)
                   (_g1505915136_ _g1506115139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1505915136_
                                                    _g1506115139_))
                                               (_g1505915136_ _g1506115139_))))
                                       (_g1505915136_ _g1506115139_))))
                               (_g1505915136_ _g1506115139_))))
                       (_g1505915136_ _g1506115139_)))))
            (_g1505815198_ _stx15057_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx14842_)
      (let ((_collect-e14844_
             (lambda (_hd15001_ _expr15002_)
               (let ((_g1500515015_
                      (lambda (_g1500615012_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1500615012_))))
                 (let ((_g1500415022_
                        (lambda (_g1500615018_) ((lambda () '#!void)))))
                   (let ((_g1500315054_
                          (lambda (_g1500615025_)
                            (if (gx#stx-pair? _g1500615025_)
                                (let ((_e1500815027_ (gx#stx-e _g1500615025_)))
                                  (let ((_hd1500915030_ (##car _e1500815027_))
                                        (_tl1501015032_ (##cdr _e1500815027_)))
                                    (if (gx#stx-null? _tl1501015032_)
                                        ((lambda (_L15035_)
                                           (if (gx#identifier? _L15035_)
                                               (let ((_sym15046_
                                                      (gxc#generate-runtime-binding-id
                                                       _L15035_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym15046_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym15046_)
                                                     (let ((_type1504715049_
                                                            (gxc#apply-basic-expression-type
                                                             _expr15002_)))
                                                       (if _type1504715049_
                                                           (let ((_type15052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1504715049_))
                     (gxc#optimizer-declare-type!__opt-lambda19735
                      _sym15046_
                      _type15052_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1500415022_ _g1500615025_)))
                                         _hd1500915030_)
                                        (_g1500415022_ _g1500615025_))))
                                (_g1500415022_ _g1500615025_)))))
                     (_g1500315054_ _hd15001_)))))))
        (let ((_g1484614881_
               (lambda (_g1484714878_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1484714878_))))
          (let ((_g1484514998_
                 (lambda (_g1484714884_)
                   (if (gx#stx-pair? _g1484714884_)
                       (let ((_e1485114886_ (gx#stx-e _g1484714884_)))
                         (let ((_hd1485214889_ (##car _e1485114886_))
                               (_tl1485314891_ (##cdr _e1485114886_)))
                           (if (gx#stx-pair? _tl1485314891_)
                               (let ((_e1485414894_ (gx#stx-e _tl1485314891_)))
                                 (let ((_hd1485514897_ (##car _e1485414894_))
                                       (_tl1485614899_ (##cdr _e1485414894_)))
                                   (if (gx#stx-pair/null? _hd1485514897_)
                                       (if (fx>= (gx#stx-length _hd1485514897_)
                                                 '0)
                                           (let ((_g20023_
                                                  (gx#syntax-split-splice
                                                   _hd1485514897_
                                                   '0)))
                                             (begin
                                               (let ((_g20024_
                                                      (values-count _g20023_)))
                                                 (if (not (fx= _g20024_ 2))
                                                     (error "Context expects 2 values"
                                                            _g20024_)))
                                               (let ((_target1485714902_
                                                      (values-ref _g20023_ 0))
                                                     (_tl1485914904_
                                                      (values-ref _g20023_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1485914904_)
                                                     (letrec ((_loop1486014907_
                                                               (lambda (_hd1485814910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1486414912_
                                _hd1486514914_)
                         (if (gx#stx-pair? _hd1485814910_)
                             (let ((_e1486114917_ (gx#stx-e _hd1485814910_)))
                               (let ((_lp-hd1486214920_ (##car _e1486114917_))
                                     (_lp-tl1486314922_ (##cdr _e1486114917_)))
                                 (if (gx#stx-pair? _lp-hd1486214920_)
                                     (let ((_e1486814925_
                                            (gx#stx-e _lp-hd1486214920_)))
                                       (let ((_hd1486914928_
                                              (##car _e1486814925_))
                                             (_tl1487014930_
                                              (##cdr _e1486814925_)))
                                         (if (gx#stx-pair? _tl1487014930_)
                                             (let ((_e1487114933_
                                                    (gx#stx-e _tl1487014930_)))
                                               (let ((_hd1487214936_
                                                      (##car _e1487114933_))
                                                     (_tl1487314938_
                                                      (##cdr _e1487114933_)))
                                                 (if (gx#stx-null?
                                                      _tl1487314938_)
                                                     (_loop1486014907_
                                                      _lp-tl1486314922_
                                                      (cons _hd1487214936_
                                                            _expr1486414912_)
                                                      (cons _hd1486914928_
                                                            _hd1486514914_))
                                                     (_g1484614881_
                                                      _g1484714884_))))
                                             (_g1484614881_ _g1484714884_))))
                                     (_g1484614881_ _g1484714884_))))
                             (let ((_expr1486614941_
                                    (reverse _expr1486414912_))
                                   (_hd1486714943_ (reverse _hd1486514914_)))
                               (if (gx#stx-pair? _tl1485614899_)
                                   (let ((_e1487414946_
                                          (gx#stx-e _tl1485614899_)))
                                     (let ((_hd1487514949_
                                            (##car _e1487414946_))
                                           (_tl1487614951_
                                            (##cdr _e1487414946_)))
                                       (if (gx#stx-null? _tl1487614951_)
                                           ((lambda (_L14954_
                                                     _L14955_
                                                     _L14956_)
                                              (begin
                                                (for-each
                                                 _collect-e14844_
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1497614979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1497714981_)
                     (cons _g1497614979_ _g1497714981_))
                   '()
                   _L14956_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1498314986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1498414988_)
                     (cons _g1498314986_ _g1498414988_))
                   '()
                   _L14955_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1499014993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1499114995_)
                     (cons _g1499014993_ _g1499114995_))
                   '()
                   _L14955_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L14954_)))
                                            _hd1487514949_
                                            _expr1486614941_
                                            _hd1486714943_)
                                           (_g1484614881_ _g1484714884_))))
                                   (_g1484614881_ _g1484714884_)))))))
               (_loop1486014907_ _target1485714902_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1484614881_
                                                      _g1484714884_)))))
                                           (_g1484614881_ _g1484714884_))
                                       (_g1484614881_ _g1484714884_))))
                               (_g1484614881_ _g1484714884_))))
                       (_g1484614881_ _g1484714884_)))))
            (_g1484514998_ _stx14842_))))))
  (define gxc#collect-type-call%
    (lambda (_stx14396_)
      (let ((_g1440014502_
             (lambda (_g1440114499_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1440114499_))))
        (let ((_g1439914509_ (lambda (_g1440114505_) ((lambda () '#!void)))))
          (let ((_g1439814659_
                 (lambda (_g1440114512_)
                   (if (gx#stx-pair? _g1440114512_)
                       (let ((_e1445914514_ (gx#stx-e _g1440114512_)))
                         (let ((_hd1446014517_ (##car _e1445914514_))
                               (_tl1446114519_ (##cdr _e1445914514_)))
                           (if (gx#stx-pair? _tl1446114519_)
                               (let ((_e1446214522_ (gx#stx-e _tl1446114519_)))
                                 (let ((_hd1446314525_ (##car _e1446214522_))
                                       (_tl1446414527_ (##cdr _e1446214522_)))
                                   (if (gx#stx-pair? _hd1446314525_)
                                       (let ((_e1446514530_
                                              (gx#stx-e _hd1446314525_)))
                                         (let ((_hd1446614533_
                                                (##car _e1446514530_))
                                               (_tl1446714535_
                                                (##cdr _e1446514530_)))
                                           (if (gx#identifier? _hd1446614533_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1446614533_)
                                                   (if (gx#stx-pair?
                                                        _tl1446714535_)
                                                       (let ((_e1446814538_
                                                              (gx#stx-e
                                                               _tl1446714535_)))
                                                         (let ((_hd1446914541_
                                                                (##car _e1446814538_))
                                                               (_tl1447014543_
                                                                (##cdr _e1446814538_)))
                                                           (if (gx#stx-null?
                                                                _tl1447014543_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1446414527_)
                           (let ((_e1447114546_ (gx#stx-e _tl1446414527_)))
                             (let ((_hd1447214549_ (##car _e1447114546_))
                                   (_tl1447314551_ (##cdr _e1447114546_)))
                               (if (gx#stx-pair? _hd1447214549_)
                                   (let ((_e1447414554_
                                          (gx#stx-e _hd1447214549_)))
                                     (let ((_hd1447514557_
                                            (##car _e1447414554_))
                                           (_tl1447614559_
                                            (##cdr _e1447414554_)))
                                       (if (gx#identifier? _hd1447514557_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1447514557_)
                                               (if (gx#stx-pair?
                                                    _tl1447614559_)
                                                   (let ((_e1447714562_
                                                          (gx#stx-e
                                                           _tl1447614559_)))
                                                     (let ((_hd1447814565_
                                                            (##car _e1447714562_))
                                                           (_tl1447914567_
                                                            (##cdr _e1447714562_)))
                                                       (if (gx#stx-null?
                                                            _tl1447914567_)
                                                           (if (gx#stx-pair?
                                                                _tl1447314551_)
                                                               (let ((_e1448014570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1447314551_)))
                         (let ((_hd1448114573_ (##car _e1448014570_))
                               (_tl1448214575_ (##cdr _e1448014570_)))
                           (if (gx#stx-pair? _hd1448114573_)
                               (let ((_e1448314578_ (gx#stx-e _hd1448114573_)))
                                 (let ((_hd1448414581_ (##car _e1448314578_))
                                       (_tl1448514583_ (##cdr _e1448314578_)))
                                   (if (gx#identifier? _hd1448414581_)
                                       (if (gx#stx-eq? '%#quote _hd1448414581_)
                                           (if (gx#stx-pair? _tl1448514583_)
                                               (let ((_e1448614586_
                                                      (gx#stx-e
                                                       _tl1448514583_)))
                                                 (let ((_hd1448714589_
                                                        (##car _e1448614586_))
                                                       (_tl1448814591_
                                                        (##cdr _e1448614586_)))
                                                   (if (gx#stx-null?
                                                        _tl1448814591_)
                                                       (if (gx#stx-pair?
                                                            _tl1448214575_)
                                                           (let ((_e1448914594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1448214575_)))
                     (let ((_hd1449014597_ (##car _e1448914594_))
                           (_tl1449114599_ (##cdr _e1448914594_)))
                       (if (gx#stx-pair? _hd1449014597_)
                           (let ((_e1449214602_ (gx#stx-e _hd1449014597_)))
                             (let ((_hd1449314605_ (##car _e1449214602_))
                                   (_tl1449414607_ (##cdr _e1449214602_)))
                               (if (gx#identifier? _hd1449314605_)
                                   (if (gx#stx-eq? '%#ref _hd1449314605_)
                                       (if (gx#stx-pair? _tl1449414607_)
                                           (let ((_e1449514610_
                                                  (gx#stx-e _tl1449414607_)))
                                             (let ((_hd1449614613_
                                                    (##car _e1449514610_))
                                                   (_tl1449714615_
                                                    (##cdr _e1449514610_)))
                                               (if (gx#stx-null?
                                                    _tl1449714615_)
                                                   (if (gx#stx-null?
                                                        _tl1449114599_)
                                                       ((lambda (_L14618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L14619_
                         _L14620_
                         _L14621_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda19711
                       (gxc#generate-runtime-binding-id _L14620_)
                       (gx#stx-e _L14619_)
                       (gxc#generate-runtime-binding-id _L14618_)
                       '#f)
                      (_g1439914509_ _g1440114512_)))
                _hd1449614613_
                _hd1448714589_
                _hd1447814565_
                _hd1446914541_)
               (_g1439914509_ _g1440114512_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1439914509_
                                                    _g1440114512_))))
                                           (_g1439914509_ _g1440114512_))
                                       (_g1439914509_ _g1440114512_))
                                   (_g1439914509_ _g1440114512_))))
                           (_g1439914509_ _g1440114512_))))
                   (_g1439914509_ _g1440114512_))
               (_g1439914509_ _g1440114512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1439914509_ _g1440114512_))
                                           (_g1439914509_ _g1440114512_))
                                       (_g1439914509_ _g1440114512_))))
                               (_g1439914509_ _g1440114512_))))
                       (_g1439914509_ _g1440114512_))
                   (_g1439914509_ _g1440114512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1439914509_
                                                    _g1440114512_))
                                               (_g1439914509_ _g1440114512_))
                                           (_g1439914509_ _g1440114512_))))
                                   (_g1439914509_ _g1440114512_))))
                           (_g1439914509_ _g1440114512_))
                       (_g1439914509_ _g1440114512_))))
               (_g1439914509_ _g1440114512_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1439914509_
                                                    _g1440114512_))
                                               (_g1439914509_ _g1440114512_))))
                                       (_g1439914509_ _g1440114512_))))
                               (_g1439914509_ _g1440114512_))))
                       (_g1439914509_ _g1440114512_)))))
            (let ((_g1439714839_
                   (lambda (_g1440114662_)
                     (if (gx#stx-pair? _g1440114662_)
                         (let ((_e1440714664_ (gx#stx-e _g1440114662_)))
                           (let ((_hd1440814667_ (##car _e1440714664_))
                                 (_tl1440914669_ (##cdr _e1440714664_)))
                             (if (gx#stx-pair? _tl1440914669_)
                                 (let ((_e1441014672_
                                        (gx#stx-e _tl1440914669_)))
                                   (let ((_hd1441114675_ (##car _e1441014672_))
                                         (_tl1441214677_
                                          (##cdr _e1441014672_)))
                                     (if (gx#stx-pair? _hd1441114675_)
                                         (let ((_e1441314680_
                                                (gx#stx-e _hd1441114675_)))
                                           (let ((_hd1441414683_
                                                  (##car _e1441314680_))
                                                 (_tl1441514685_
                                                  (##cdr _e1441314680_)))
                                             (if (gx#identifier?
                                                  _hd1441414683_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1441414683_)
                                                     (if (gx#stx-pair?
                                                          _tl1441514685_)
                                                         (let ((_e1441614688_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1441514685_)))
                   (let ((_hd1441714691_ (##car _e1441614688_))
                         (_tl1441814693_ (##cdr _e1441614688_)))
                     (if (gx#stx-null? _tl1441814693_)
                         (if (gx#stx-pair? _tl1441214677_)
                             (let ((_e1441914696_ (gx#stx-e _tl1441214677_)))
                               (let ((_hd1442014699_ (##car _e1441914696_))
                                     (_tl1442114701_ (##cdr _e1441914696_)))
                                 (if (gx#stx-pair? _hd1442014699_)
                                     (let ((_e1442214704_
                                            (gx#stx-e _hd1442014699_)))
                                       (let ((_hd1442314707_
                                              (##car _e1442214704_))
                                             (_tl1442414709_
                                              (##cdr _e1442214704_)))
                                         (if (gx#identifier? _hd1442314707_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1442314707_)
                                                 (if (gx#stx-pair?
                                                      _tl1442414709_)
                                                     (let ((_e1442514712_
                                                            (gx#stx-e
                                                             _tl1442414709_)))
                                                       (let ((_hd1442614715_
                                                              (##car _e1442514712_))
                                                             (_tl1442714717_
                                                              (##cdr _e1442514712_)))
                                                         (if (gx#stx-null?
                                                              _tl1442714717_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1442114701_)
                         (let ((_e1442814720_ (gx#stx-e _tl1442114701_)))
                           (let ((_hd1442914723_ (##car _e1442814720_))
                                 (_tl1443014725_ (##cdr _e1442814720_)))
                             (if (gx#stx-pair? _hd1442914723_)
                                 (let ((_e1443114728_
                                        (gx#stx-e _hd1442914723_)))
                                   (let ((_hd1443214731_ (##car _e1443114728_))
                                         (_tl1443314733_
                                          (##cdr _e1443114728_)))
                                     (if (gx#identifier? _hd1443214731_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1443214731_)
                                             (if (gx#stx-pair? _tl1443314733_)
                                                 (let ((_e1443414736_
                                                        (gx#stx-e
                                                         _tl1443314733_)))
                                                   (let ((_hd1443514739_
                                                          (##car _e1443414736_))
                                                         (_tl1443614741_
                                                          (##cdr _e1443414736_)))
                                                     (if (gx#stx-null?
                                                          _tl1443614741_)
                                                         (if (gx#stx-pair?
                                                              _tl1443014725_)
                                                             (let ((_e1443714744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1443014725_)))
                       (let ((_hd1443814747_ (##car _e1443714744_))
                             (_tl1443914749_ (##cdr _e1443714744_)))
                         (if (gx#stx-pair? _hd1443814747_)
                             (let ((_e1444014752_ (gx#stx-e _hd1443814747_)))
                               (let ((_hd1444114755_ (##car _e1444014752_))
                                     (_tl1444214757_ (##cdr _e1444014752_)))
                                 (if (gx#identifier? _hd1444114755_)
                                     (if (gx#stx-eq? '%#ref _hd1444114755_)
                                         (if (gx#stx-pair? _tl1444214757_)
                                             (let ((_e1444314760_
                                                    (gx#stx-e _tl1444214757_)))
                                               (let ((_hd1444414763_
                                                      (##car _e1444314760_))
                                                     (_tl1444514765_
                                                      (##cdr _e1444314760_)))
                                                 (if (gx#stx-null?
                                                      _tl1444514765_)
                                                     (if (gx#stx-pair?
                                                          _tl1443914749_)
                                                         (let ((_e1444614768_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1443914749_)))
                   (let ((_hd1444714771_ (##car _e1444614768_))
                         (_tl1444814773_ (##cdr _e1444614768_)))
                     (if (gx#stx-pair? _hd1444714771_)
                         (let ((_e1444914776_ (gx#stx-e _hd1444714771_)))
                           (let ((_hd1445014779_ (##car _e1444914776_))
                                 (_tl1445114781_ (##cdr _e1444914776_)))
                             (if (gx#identifier? _hd1445014779_)
                                 (if (gx#stx-eq? '%#quote _hd1445014779_)
                                     (if (gx#stx-pair? _tl1445114781_)
                                         (let ((_e1445214784_
                                                (gx#stx-e _tl1445114781_)))
                                           (let ((_hd1445314787_
                                                  (##car _e1445214784_))
                                                 (_tl1445414789_
                                                  (##cdr _e1445214784_)))
                                             (if (gx#stx-null? _tl1445414789_)
                                                 (if (gx#stx-null?
                                                      _tl1444814773_)
                                                     ((lambda (_L14792_
                                                               _L14793_
                                                               _L14794_
                                                               _L14795_
                                                               _L14796_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14796_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda19711
                     (gxc#generate-runtime-binding-id _L14795_)
                     (gx#stx-e _L14794_)
                     (gxc#generate-runtime-binding-id _L14793_)
                     (gx#stx-e _L14792_))
                    (_g1439814659_ _g1440114662_)))
              _hd1445314787_
              _hd1444414763_
              _hd1443514739_
              _hd1442614715_
              _hd1441714691_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1439814659_
                                                      _g1440114662_))
                                                 (_g1439814659_
                                                  _g1440114662_))))
                                         (_g1439814659_ _g1440114662_))
                                     (_g1439814659_ _g1440114662_))
                                 (_g1439814659_ _g1440114662_))))
                         (_g1439814659_ _g1440114662_))))
                 (_g1439814659_ _g1440114662_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1439814659_
                                                      _g1440114662_))))
                                             (_g1439814659_ _g1440114662_))
                                         (_g1439814659_ _g1440114662_))
                                     (_g1439814659_ _g1440114662_))))
                             (_g1439814659_ _g1440114662_))))
                     (_g1439814659_ _g1440114662_))
                 (_g1439814659_ _g1440114662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1439814659_ _g1440114662_))
                                             (_g1439814659_ _g1440114662_))
                                         (_g1439814659_ _g1440114662_))))
                                 (_g1439814659_ _g1440114662_))))
                         (_g1439814659_ _g1440114662_))
                     (_g1439814659_ _g1440114662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1439814659_
                                                      _g1440114662_))
                                                 (_g1439814659_ _g1440114662_))
                                             (_g1439814659_ _g1440114662_))))
                                     (_g1439814659_ _g1440114662_))))
                             (_g1439814659_ _g1440114662_))
                         (_g1439814659_ _g1440114662_))))
                 (_g1439814659_ _g1440114662_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1439814659_
                                                      _g1440114662_))
                                                 (_g1439814659_
                                                  _g1440114662_))))
                                         (_g1439814659_ _g1440114662_))))
                                 (_g1439814659_ _g1440114662_))))
                         (_g1439814659_ _g1440114662_)))))
              (_g1439714839_ _stx14396_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx14336_)
      (let ((_g1433914352_
             (lambda (_g1434014349_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1434014349_))))
        (let ((_g1433814359_ (lambda (_g1434014355_) ((lambda () '#f)))))
          (let ((_g1433714393_
                 (lambda (_g1434014362_)
                   (if (gx#stx-pair? _g1434014362_)
                       (let ((_e1434214364_ (gx#stx-e _g1434014362_)))
                         (let ((_hd1434314367_ (##car _e1434214364_))
                               (_tl1434414369_ (##cdr _e1434214364_)))
                           (if (gx#stx-pair? _tl1434414369_)
                               (let ((_e1434514372_ (gx#stx-e _tl1434414369_)))
                                 (let ((_hd1434614375_ (##car _e1434514372_))
                                       (_tl1434714377_ (##cdr _e1434514372_)))
                                   (if (gx#stx-null? _tl1434714377_)
                                       ((lambda (_L14380_)
                                          (gxc#compile-e _L14380_))
                                        _hd1434614375_)
                                       (_g1433814359_ _g1434014362_))))
                               (_g1433814359_ _g1434014362_))))
                       (_g1433814359_ _g1434014362_)))))
            (_g1433714393_ _stx14336_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx13761_)
      (let ((_g1376613887_
             (lambda (_g1376713884_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1376713884_))))
        (let ((_g1376513894_ (lambda (_g1376713890_) ((lambda () '#f)))))
          (let ((_g1376413918_
                 (lambda (_g1376713897_)
                   (if (gx#stx-pair? _g1376713897_)
                       (let ((_e1388013899_ (gx#stx-e _g1376713897_)))
                         (let ((_hd1388113902_ (##car _e1388013899_))
                               (_tl1388213904_ (##cdr _e1388013899_)))
                           ((lambda (_L13907_)
                              (if (gxc#dispatch-lambda-form? _L13907_)
                                  (let ((__obj19963
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj19963
                                       'lambda
                                       (gxc#lambda-form-arity _L13907_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13907_))
                                      __obj19963))
                                  (_g1376513894_ _g1376713897_)))
                            _tl1388213904_)))
                       (_g1376513894_ _g1376713897_)))))
            (let ((_g1376314148_
                   (lambda (_g1376713921_)
                     (if (gx#stx-pair? _g1376713921_)
                         (let ((_e1382513923_ (gx#stx-e _g1376713921_)))
                           (let ((_hd1382613926_ (##car _e1382513923_))
                                 (_tl1382713928_ (##cdr _e1382513923_)))
                             (if (gx#stx-pair? _tl1382713928_)
                                 (let ((_e1382813931_
                                        (gx#stx-e _tl1382713928_)))
                                   (let ((_hd1382913934_ (##car _e1382813931_))
                                         (_tl1383013936_
                                          (##cdr _e1382813931_)))
                                     (if (gx#stx-pair/null? _hd1382913934_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1382913934_)
                                                   '0)
                                             (let ((_g20025_
                                                    (gx#syntax-split-splice
                                                     _hd1382913934_
                                                     '0)))
                                               (begin
                                                 (let ((_g20026_
                                                        (values-count
                                                         _g20025_)))
                                                   (if (not (fx= _g20026_ 2))
                                                       (error "Context expects 2 values"
                                                              _g20026_)))
                                                 (let ((_target1383113939_
                                                        (values-ref
                                                         _g20025_
                                                         0))
                                                       (_tl1383313941_
                                                        (values-ref
                                                         _g20025_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1383313941_)
                                                       (letrec ((_loop1383413944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1383213947_ _arg1383813949_)
                           (if (gx#stx-pair? _hd1383213947_)
                               (let ((_e1383513952_ (gx#stx-e _hd1383213947_)))
                                 (let ((_lp-hd1383613955_
                                        (##car _e1383513952_))
                                       (_lp-tl1383713957_
                                        (##cdr _e1383513952_)))
                                   (_loop1383413944_
                                    _lp-tl1383713957_
                                    (cons _lp-hd1383613955_ _arg1383813949_))))
                               (let ((_arg1383913960_
                                      (reverse _arg1383813949_)))
                                 (if (gx#stx-pair? _tl1383013936_)
                                     (let ((_e1384013963_
                                            (gx#stx-e _tl1383013936_)))
                                       (let ((_hd1384113966_
                                              (##car _e1384013963_))
                                             (_tl1384213968_
                                              (##cdr _e1384013963_)))
                                         (if (gx#stx-pair? _hd1384113966_)
                                             (let ((_e1384313971_
                                                    (gx#stx-e _hd1384113966_)))
                                               (let ((_hd1384413974_
                                                      (##car _e1384313971_))
                                                     (_tl1384513976_
                                                      (##cdr _e1384313971_)))
                                                 (if (gx#identifier?
                                                      _hd1384413974_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1384413974_)
                                                         (if (gx#stx-pair?
                                                              _tl1384513976_)
                                                             (let ((_e1384613979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1384513976_)))
                       (let ((_hd1384713982_ (##car _e1384613979_))
                             (_tl1384813984_ (##cdr _e1384613979_)))
                         (if (gx#stx-pair? _hd1384713982_)
                             (let ((_e1384913987_ (gx#stx-e _hd1384713982_)))
                               (let ((_hd1385013990_ (##car _e1384913987_))
                                     (_tl1385113992_ (##cdr _e1384913987_)))
                                 (if (gx#identifier? _hd1385013990_)
                                     (if (gx#stx-eq? '%#ref _hd1385013990_)
                                         (if (gx#stx-pair? _tl1385113992_)
                                             (let ((_e1385213995_
                                                    (gx#stx-e _tl1385113992_)))
                                               (let ((_hd1385313998_
                                                      (##car _e1385213995_))
                                                     (_tl1385414000_
                                                      (##cdr _e1385213995_)))
                                                 (if (gx#stx-null?
                                                      _tl1385414000_)
                                                     (if (gx#stx-pair?
                                                          _tl1384813984_)
                                                         (let ((_e1385514003_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1384813984_)))
                   (let ((_hd1385614006_ (##car _e1385514003_))
                         (_tl1385714008_ (##cdr _e1385514003_)))
                     (if (gx#stx-pair? _hd1385614006_)
                         (let ((_e1385814011_ (gx#stx-e _hd1385614006_)))
                           (let ((_hd1385914014_ (##car _e1385814011_))
                                 (_tl1386014016_ (##cdr _e1385814011_)))
                             (if (gx#identifier? _hd1385914014_)
                                 (if (gx#stx-eq? '%#ref _hd1385914014_)
                                     (if (gx#stx-pair? _tl1386014016_)
                                         (let ((_e1386114019_
                                                (gx#stx-e _tl1386014016_)))
                                           (let ((_hd1386214022_
                                                  (##car _e1386114019_))
                                                 (_tl1386314024_
                                                  (##cdr _e1386114019_)))
                                             (if (gx#stx-null? _tl1386314024_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1385714008_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1385714008_)
                                                               '0)
                                                         (let ((_g20027_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1385714008_
                         '0)))
                   (begin
                     (let ((_g20028_ (values-count _g20027_)))
                       (if (not (fx= _g20028_ 2))
                           (error "Context expects 2 values" _g20028_)))
                     (let ((_target1386414027_ (values-ref _g20027_ 0))
                           (_tl1386614029_ (values-ref _g20027_ 1)))
                       (if (gx#stx-null? _tl1386614029_)
                           (letrec ((_loop1386714032_
                                     (lambda (_hd1386514035_ _xarg1387114037_)
                                       (if (gx#stx-pair? _hd1386514035_)
                                           (let ((_e1386814040_
                                                  (gx#stx-e _hd1386514035_)))
                                             (let ((_lp-hd1386914043_
                                                    (##car _e1386814040_))
                                                   (_lp-tl1387014045_
                                                    (##cdr _e1386814040_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1386914043_)
                                                   (let ((_e1387314048_
                                                          (gx#stx-e
                                                           _lp-hd1386914043_)))
                                                     (let ((_hd1387414051_
                                                            (##car _e1387314048_))
                                                           (_tl1387514053_
                                                            (##cdr _e1387314048_)))
                                                       (if (gx#identifier?
                                                            _hd1387414051_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1387414051_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1387514053_)
                           (let ((_e1387614056_ (gx#stx-e _tl1387514053_)))
                             (let ((_hd1387714059_ (##car _e1387614056_))
                                   (_tl1387814061_ (##cdr _e1387614056_)))
                               (if (gx#stx-null? _tl1387814061_)
                                   (_loop1386714032_
                                    _lp-tl1387014045_
                                    (cons _hd1387714059_ _xarg1387114037_))
                                   (_g1376413918_ _g1376713921_))))
                           (_g1376413918_ _g1376713921_))
                       (_g1376413918_ _g1376713921_))
                   (_g1376413918_ _g1376713921_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1376413918_
                                                    _g1376713921_))))
                                           (let ((_xarg1387214064_
                                                  (reverse _xarg1387114037_)))
                                             (if (gx#stx-null? _tl1384213968_)
                                                 ((lambda (_L14067_
                                                           _L14068_
                                                           _L14069_
                                                           _L14070_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1410714110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1410814112_)
                                 (cons _g1410714110_ _g1410814112_))
                               '()
                               _L14070_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L14069_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1411414117_
                                                            _g1411514119_)
                                                     (cons _g1411414117_
                                                           _g1411514119_))
                                                   '()
                                                   _L14070_)))
                                 (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1412114124_
                                                            _g1412214126_)
                                                     (cons _g1412114124_
                                                           _g1412214126_))
                                                   '()
                                                   _L14067_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1412814131_
                                                       _g1412914133_)
                                                (cons _g1412814131_
                                                      _g1412914133_))
                                              '()
                                              _L14070_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1413514138_
                                                       _g1413614140_)
                                                (cons _g1413514138_
                                                      _g1413614140_))
                                              '()
                                              _L14067_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t14143_
                       (gxc#generate-runtime-binding-id _L14068_)))
                  (let ((_type14145_
                         (gxc#optimizer-resolve-type _type-t14143_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type14145_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t14143_)
                          '#f))))
                (_g1376413918_ _g1376713921_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1387214064_
                                                  _hd1386214022_
                                                  _hd1385313998_
                                                  _arg1383913960_)
                                                 (_g1376413918_
                                                  _g1376713921_)))))))
                             (_loop1386714032_ _target1386414027_ '()))
                           (_g1376413918_ _g1376713921_)))))
                 (_g1376413918_ _g1376713921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1376413918_
                                                      _g1376713921_))
                                                 (_g1376413918_
                                                  _g1376713921_))))
                                         (_g1376413918_ _g1376713921_))
                                     (_g1376413918_ _g1376713921_))
                                 (_g1376413918_ _g1376713921_))))
                         (_g1376413918_ _g1376713921_))))
                 (_g1376413918_ _g1376713921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1376413918_
                                                      _g1376713921_))))
                                             (_g1376413918_ _g1376713921_))
                                         (_g1376413918_ _g1376713921_))
                                     (_g1376413918_ _g1376713921_))))
                             (_g1376413918_ _g1376713921_))))
                     (_g1376413918_ _g1376713921_))
                 (_g1376413918_ _g1376713921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1376413918_
                                                      _g1376713921_))))
                                             (_g1376413918_ _g1376713921_))))
                                     (_g1376413918_ _g1376713921_)))))))
                 (_loop1383413944_ _target1383113939_ '()))
               (_g1376413918_ _g1376713921_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1376413918_ _g1376713921_))
                                         (_g1376413918_ _g1376713921_))))
                                 (_g1376413918_ _g1376713921_))))
                         (_g1376413918_ _g1376713921_)))))
              (let ((_g1376214333_
                     (lambda (_g1376714151_)
                       (if (gx#stx-pair? _g1376714151_)
                           (let ((_e1377314153_ (gx#stx-e _g1376714151_)))
                             (let ((_hd1377414156_ (##car _e1377314153_))
                                   (_tl1377514158_ (##cdr _e1377314153_)))
                               (if (gx#stx-pair? _tl1377514158_)
                                   (let ((_e1377614161_
                                          (gx#stx-e _tl1377514158_)))
                                     (let ((_hd1377714164_
                                            (##car _e1377614161_))
                                           (_tl1377814166_
                                            (##cdr _e1377614161_)))
                                       (if (gx#stx-pair? _tl1377814166_)
                                           (let ((_e1377914169_
                                                  (gx#stx-e _tl1377814166_)))
                                             (let ((_hd1378014172_
                                                    (##car _e1377914169_))
                                                   (_tl1378114174_
                                                    (##cdr _e1377914169_)))
                                               (if (gx#stx-pair?
                                                    _hd1378014172_)
                                                   (let ((_e1378214177_
                                                          (gx#stx-e
                                                           _hd1378014172_)))
                                                     (let ((_hd1378314180_
                                                            (##car _e1378214177_))
                                                           (_tl1378414182_
                                                            (##cdr _e1378214177_)))
                                                       (if (gx#identifier?
                                                            _hd1378314180_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1378314180_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1378414182_)
                           (let ((_e1378514185_ (gx#stx-e _tl1378414182_)))
                             (let ((_hd1378614188_ (##car _e1378514185_))
                                   (_tl1378714190_ (##cdr _e1378514185_)))
                               (if (gx#stx-pair? _hd1378614188_)
                                   (let ((_e1378814193_
                                          (gx#stx-e _hd1378614188_)))
                                     (let ((_hd1378914196_
                                            (##car _e1378814193_))
                                           (_tl1379014198_
                                            (##cdr _e1378814193_)))
                                       (if (gx#identifier? _hd1378914196_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1378914196_)
                                               (if (gx#stx-pair?
                                                    _tl1379014198_)
                                                   (let ((_e1379114201_
                                                          (gx#stx-e
                                                           _tl1379014198_)))
                                                     (let ((_hd1379214204_
                                                            (##car _e1379114201_))
                                                           (_tl1379314206_
                                                            (##cdr _e1379114201_)))
                                                       (if (gx#stx-null?
                                                            _tl1379314206_)
                                                           (if (gx#stx-pair?
                                                                _tl1378714190_)
                                                               (let ((_e1379414209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1378714190_)))
                         (let ((_hd1379514212_ (##car _e1379414209_))
                               (_tl1379614214_ (##cdr _e1379414209_)))
                           (if (gx#stx-pair? _hd1379514212_)
                               (let ((_e1379714217_ (gx#stx-e _hd1379514212_)))
                                 (let ((_hd1379814220_ (##car _e1379714217_))
                                       (_tl1379914222_ (##cdr _e1379714217_)))
                                   (if (gx#identifier? _hd1379814220_)
                                       (if (gx#stx-eq? '%#ref _hd1379814220_)
                                           (if (gx#stx-pair? _tl1379914222_)
                                               (let ((_e1380014225_
                                                      (gx#stx-e
                                                       _tl1379914222_)))
                                                 (let ((_hd1380114228_
                                                        (##car _e1380014225_))
                                                       (_tl1380214230_
                                                        (##cdr _e1380014225_)))
                                                   (if (gx#stx-null?
                                                        _tl1380214230_)
                                                       (if (gx#stx-pair?
                                                            _tl1379614214_)
                                                           (let ((_e1380314233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1379614214_)))
                     (let ((_hd1380414236_ (##car _e1380314233_))
                           (_tl1380514238_ (##cdr _e1380314233_)))
                       (if (gx#stx-pair? _hd1380414236_)
                           (let ((_e1380614241_ (gx#stx-e _hd1380414236_)))
                             (let ((_hd1380714244_ (##car _e1380614241_))
                                   (_tl1380814246_ (##cdr _e1380614241_)))
                               (if (gx#identifier? _hd1380714244_)
                                   (if (gx#stx-eq? '%#ref _hd1380714244_)
                                       (if (gx#stx-pair? _tl1380814246_)
                                           (let ((_e1380914249_
                                                  (gx#stx-e _tl1380814246_)))
                                             (let ((_hd1381014252_
                                                    (##car _e1380914249_))
                                                   (_tl1381114254_
                                                    (##cdr _e1380914249_)))
                                               (if (gx#stx-null?
                                                    _tl1381114254_)
                                                   (if (gx#stx-pair?
                                                        _tl1380514238_)
                                                       (let ((_e1381214257_
                                                              (gx#stx-e
                                                               _tl1380514238_)))
                                                         (let ((_hd1381314260_
                                                                (##car _e1381214257_))
                                                               (_tl1381414262_
                                                                (##cdr _e1381214257_)))
                                                           (if (gx#stx-pair?
                                                                _hd1381314260_)
                                                               (let ((_e1381514265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1381314260_)))
                         (let ((_hd1381614268_ (##car _e1381514265_))
                               (_tl1381714270_ (##cdr _e1381514265_)))
                           (if (gx#identifier? _hd1381614268_)
                               (if (gx#stx-eq? '%#ref _hd1381614268_)
                                   (if (gx#stx-pair? _tl1381714270_)
                                       (let ((_e1381814273_
                                              (gx#stx-e _tl1381714270_)))
                                         (let ((_hd1381914276_
                                                (##car _e1381814273_))
                                               (_tl1382014278_
                                                (##cdr _e1381814273_)))
                                           (if (gx#stx-null? _tl1382014278_)
                                               (if (gx#stx-null?
                                                    _tl1381414262_)
                                                   (if (gx#stx-null?
                                                        _tl1378114174_)
                                                       ((lambda (_L14281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L14282_
                         _L14283_
                         _L14284_
                         _L14285_)
                  (if (if (gx#identifier? _L14285_)
                          (if (eq? (gxc#generate-runtime-binding-id _L14284_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L14283_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L14285_ _L14281_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t14328_
                             (gxc#generate-runtime-binding-id _L14282_)))
                        (let ((_type14330_
                               (gxc#optimizer-resolve-type _type-t14328_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type14330_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t14328_)
                                '#f))))
                      (_g1376314148_ _g1376714151_)))
                _hd1381914276_
                _hd1381014252_
                _hd1380114228_
                _hd1379214204_
                _hd1377714164_)
               (_g1376314148_ _g1376714151_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1376314148_
                                                    _g1376714151_))
                                               (_g1376314148_ _g1376714151_))))
                                       (_g1376314148_ _g1376714151_))
                                   (_g1376314148_ _g1376714151_))
                               (_g1376314148_ _g1376714151_))))
                       (_g1376314148_ _g1376714151_))))
               (_g1376314148_ _g1376714151_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1376314148_
                                                    _g1376714151_))))
                                           (_g1376314148_ _g1376714151_))
                                       (_g1376314148_ _g1376714151_))
                                   (_g1376314148_ _g1376714151_))))
                           (_g1376314148_ _g1376714151_))))
                   (_g1376314148_ _g1376714151_))
               (_g1376314148_ _g1376714151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1376314148_ _g1376714151_))
                                           (_g1376314148_ _g1376714151_))
                                       (_g1376314148_ _g1376714151_))))
                               (_g1376314148_ _g1376714151_))))
                       (_g1376314148_ _g1376714151_))
                   (_g1376314148_ _g1376714151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1376314148_
                                                    _g1376714151_))
                                               (_g1376314148_ _g1376714151_))
                                           (_g1376314148_ _g1376714151_))))
                                   (_g1376314148_ _g1376714151_))))
                           (_g1376314148_ _g1376714151_))
                       (_g1376314148_ _g1376714151_))
                   (_g1376314148_ _g1376714151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1376314148_
                                                    _g1376714151_))))
                                           (_g1376314148_ _g1376714151_))))
                                   (_g1376314148_ _g1376714151_))))
                           (_g1376314148_ _g1376714151_)))))
                (_g1376214333_ _stx13761_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx13707_)
      (let ((_clause-e13709_
             (lambda (_form13759_)
               (let ((__obj19964 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj19964
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form13759_)
                    (gxc#dispatch-lambda-form-delegate _form13759_))
                   __obj19964)))))
        (let ((_g1371213722_
               (lambda (_g1371313719_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1371313719_))))
          (let ((_g1371113729_ (lambda (_g1371313725_) ((lambda () '#f)))))
            (let ((_g1371013756_
                   (lambda (_g1371313732_)
                     (if (gx#stx-pair? _g1371313732_)
                         (let ((_e1371513734_ (gx#stx-e _g1371313732_)))
                           (let ((_hd1371613737_ (##car _e1371513734_))
                                 (_tl1371713739_ (##cdr _e1371513734_)))
                             ((lambda (_L13742_)
                                (if (andmap1 gxc#dispatch-lambda-form?
                                             _L13742_)
                                    (let ((_clauses13754_
                                           (map _clause-e13709_ _L13742_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses13754_))
                                    (_g1371113729_ _g1371313732_)))
                              _tl1371713739_)))
                         (_g1371113729_ _g1371313732_)))))
              (_g1371013756_ _stx13707_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx13612_)
      (let ((_g1361513635_
             (lambda (_g1361613632_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1361613632_))))
        (let ((_g1361413642_ (lambda (_g1361613638_) ((lambda () '#f)))))
          (let ((_g1361313704_
                 (lambda (_g1361613645_)
                   (if (gx#stx-pair? _g1361613645_)
                       (let ((_e1361913647_ (gx#stx-e _g1361613645_)))
                         (let ((_hd1362013650_ (##car _e1361913647_))
                               (_tl1362113652_ (##cdr _e1361913647_)))
                           (if (gx#stx-pair? _tl1362113652_)
                               (let ((_e1362213655_ (gx#stx-e _tl1362113652_)))
                                 (let ((_hd1362313658_ (##car _e1362213655_))
                                       (_tl1362413660_ (##cdr _e1362213655_)))
                                   (if (gx#stx-pair? _hd1362313658_)
                                       (let ((_e1362513663_
                                              (gx#stx-e _hd1362313658_)))
                                         (let ((_hd1362613666_
                                                (##car _e1362513663_))
                                               (_tl1362713668_
                                                (##cdr _e1362513663_)))
                                           (if (gx#identifier? _hd1362613666_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1362613666_)
                                                   (if (gx#stx-pair?
                                                        _tl1362713668_)
                                                       (let ((_e1362813671_
                                                              (gx#stx-e
                                                               _tl1362713668_)))
                                                         (let ((_hd1362913674_
                                                                (##car _e1362813671_))
                                                               (_tl1363013676_
                                                                (##cdr _e1362813671_)))
                                                           (if (gx#stx-null?
                                                                _tl1363013676_)
                                                               ((lambda (_L13679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13680_)
                          (let ((_type-e1369713699_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L13680_)
                                  '#f)))
                            (if _type-e1369713699_
                                (let ((_type-e13702_ _type-e1369713699_))
                                  (_type-e13702_ _stx13612_ _L13679_))
                                '#f)))
                        _tl1362413660_
                        _hd1362913674_)
                       (_g1361413642_ _g1361613645_))))
               (_g1361413642_ _g1361613645_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1361413642_
                                                    _g1361613645_))
                                               (_g1361413642_ _g1361613645_))))
                                       (_g1361413642_ _g1361613645_))))
                               (_g1361413642_ _g1361613645_))))
                       (_g1361413642_ _g1361613645_)))))
            (_g1361313704_ _stx13612_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx13097_ _args13098_)
      (let ((_g1310213215_
             (lambda (_g1310313212_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1310313212_))))
        (let ((_g1310113222_
               (lambda (_g1310313218_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx13097_))
                      '#f))))))
          (let ((_g1310013429_
                 (lambda (_g1310313225_)
                   (if (gx#stx-pair? _g1310313225_)
                       (let ((_e1316313227_ (gx#stx-e _g1310313225_)))
                         (let ((_hd1316413230_ (##car _e1316313227_))
                               (_tl1316513232_ (##cdr _e1316313227_)))
                           (if (gx#stx-pair? _hd1316413230_)
                               (let ((_e1316613235_ (gx#stx-e _hd1316413230_)))
                                 (let ((_hd1316713238_ (##car _e1316613235_))
                                       (_tl1316813240_ (##cdr _e1316613235_)))
                                   (if (gx#identifier? _hd1316713238_)
                                       (if (gx#stx-eq? '%#quote _hd1316713238_)
                                           (if (gx#stx-pair? _tl1316813240_)
                                               (let ((_e1316913243_
                                                      (gx#stx-e
                                                       _tl1316813240_)))
                                                 (let ((_hd1317013246_
                                                        (##car _e1316913243_))
                                                       (_tl1317113248_
                                                        (##cdr _e1316913243_)))
                                                   (if (gx#stx-null?
                                                        _tl1317113248_)
                                                       (if (gx#stx-pair?
                                                            _tl1316513232_)
                                                           (let ((_e1317213251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1316513232_)))
                     (let ((_hd1317313254_ (##car _e1317213251_))
                           (_tl1317413256_ (##cdr _e1317213251_)))
                       (if (gx#stx-pair? _hd1317313254_)
                           (let ((_e1317513259_ (gx#stx-e _hd1317313254_)))
                             (let ((_hd1317613262_ (##car _e1317513259_))
                                   (_tl1317713264_ (##cdr _e1317513259_)))
                               (if (gx#identifier? _hd1317613262_)
                                   (if (gx#stx-eq? '%#ref _hd1317613262_)
                                       (if (gx#stx-pair? _tl1317713264_)
                                           (let ((_e1317813267_
                                                  (gx#stx-e _tl1317713264_)))
                                             (let ((_hd1317913270_
                                                    (##car _e1317813267_))
                                                   (_tl1318013272_
                                                    (##cdr _e1317813267_)))
                                               (if (gx#stx-null?
                                                    _tl1318013272_)
                                                   (if (gx#stx-pair?
                                                        _tl1317413256_)
                                                       (let ((_e1318113275_
                                                              (gx#stx-e
                                                               _tl1317413256_)))
                                                         (let ((_hd1318213278_
                                                                (##car _e1318113275_))
                                                               (_tl1318313280_
                                                                (##cdr _e1318113275_)))
                                                           (if (gx#stx-pair?
                                                                _hd1318213278_)
                                                               (let ((_e1318413283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1318213278_)))
                         (let ((_hd1318513286_ (##car _e1318413283_))
                               (_tl1318613288_ (##cdr _e1318413283_)))
                           (if (gx#identifier? _hd1318513286_)
                               (if (gx#stx-eq? '%#quote _hd1318513286_)
                                   (if (gx#stx-pair? _tl1318613288_)
                                       (let ((_e1318713291_
                                              (gx#stx-e _tl1318613288_)))
                                         (let ((_hd1318813294_
                                                (##car _e1318713291_))
                                               (_tl1318913296_
                                                (##cdr _e1318713291_)))
                                           (if (gx#stx-null? _tl1318913296_)
                                               (if (gx#stx-pair?
                                                    _tl1318313280_)
                                                   (let ((_e1319013299_
                                                          (gx#stx-e
                                                           _tl1318313280_)))
                                                     (let ((_hd1319113302_
                                                            (##car _e1319013299_))
                                                           (_tl1319213304_
                                                            (##cdr _e1319013299_)))
                                                       (if (gx#stx-pair?
                                                            _tl1319213304_)
                                                           (let ((_e1319313307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1319213304_)))
                     (let ((_hd1319413310_ (##car _e1319313307_))
                           (_tl1319513312_ (##cdr _e1319313307_)))
                       (if (gx#stx-pair? _hd1319413310_)
                           (let ((_e1319613315_ (gx#stx-e _hd1319413310_)))
                             (let ((_hd1319713318_ (##car _e1319613315_))
                                   (_tl1319813320_ (##cdr _e1319613315_)))
                               (if (gx#identifier? _hd1319713318_)
                                   (if (gx#stx-eq? '%#quote _hd1319713318_)
                                       (if (gx#stx-pair? _tl1319813320_)
                                           (let ((_e1319913323_
                                                  (gx#stx-e _tl1319813320_)))
                                             (let ((_hd1320013326_
                                                    (##car _e1319913323_))
                                                   (_tl1320113328_
                                                    (##cdr _e1319913323_)))
                                               (if (gx#stx-null?
                                                    _tl1320113328_)
                                                   (if (gx#stx-pair?
                                                        _tl1319513312_)
                                                       (let ((_e1320213331_
                                                              (gx#stx-e
                                                               _tl1319513312_)))
                                                         (let ((_hd1320313334_
                                                                (##car _e1320213331_))
                                                               (_tl1320413336_
                                                                (##cdr _e1320213331_)))
                                                           (if (gx#stx-pair?
                                                                _hd1320313334_)
                                                               (let ((_e1320513339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1320313334_)))
                         (let ((_hd1320613342_ (##car _e1320513339_))
                               (_tl1320713344_ (##cdr _e1320513339_)))
                           (if (gx#identifier? _hd1320613342_)
                               (if (gx#stx-eq? '%#quote _hd1320613342_)
                                   (if (gx#stx-pair? _tl1320713344_)
                                       (let ((_e1320813347_
                                              (gx#stx-e _tl1320713344_)))
                                         (let ((_hd1320913350_
                                                (##car _e1320813347_))
                                               (_tl1321013352_
                                                (##cdr _e1320813347_)))
                                           (if (gx#stx-null? _tl1321013352_)
                                               (if (gx#stx-null?
                                                    _tl1320413336_)
                                                   ((lambda (_L13355_
                                                             _L13356_
                                                             _L13357_
                                                             _L13358_
                                                             _L13359_
                                                             _L13360_)
                                                      (let ((_super-t13406_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13359_)
                         (gxc#generate-runtime-binding-id _L13359_)
                         '#f)))
                (let ((_super-type13408_
                       (if _super-t13406_
                           (gxc#optimizer-resolve-type _super-t13406_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type13408_
                              (not (##structure-instance-of?
                                    _super-type13408_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx13097_
                           _L13359_)
                          '#!void)
                      (let ((_fields13424_ (gx#stx-e _L13358_))
                            (_xfields13425_
                             (if _super-type13408_
                                 (let ((_super-fields1341013413_
                                        (##structure-ref
                                         _super-type13408_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1341113415_
                                        (##structure-ref
                                         _super-type13408_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1341013413_
                                       (if _super-xfields1341113415_
                                           (let ((_super-fields13418_
                                                  _super-fields1341013413_)
                                                 (_super-xfields13419_
                                                  _super-xfields1341113415_))
                                             (fx+ _super-fields13418_
                                                  _super-xfields13419_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist13426_ (gx#stx-e _L13356_))
                            (_ctor13427_
                             (let ((_$e13421_ (gx#stx-e _L13355_)))
                               (if _$e13421_
                                   (values _$e13421_)
                                   (if _super-type13408_
                                       (##structure-ref
                                        _super-type13408_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t13406_ '#!void '#f))))))
                        (let ((__obj19965
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19965
                             (gx#stx-e _L13360_)
                             _super-t13406_
                             _fields13424_
                             _xfields13425_
                             _ctor13427_
                             _plist13426_)
                            __obj19965))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1320913350_
                                                    _hd1320013326_
                                                    _hd1319113302_
                                                    _hd1318813294_
                                                    _hd1317913270_
                                                    _hd1317013246_)
                                                   (_g1310113222_
                                                    _g1310313225_))
                                               (_g1310113222_ _g1310313225_))))
                                       (_g1310113222_ _g1310313225_))
                                   (_g1310113222_ _g1310313225_))
                               (_g1310113222_ _g1310313225_))))
                       (_g1310113222_ _g1310313225_))))
               (_g1310113222_ _g1310313225_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1310113222_
                                                    _g1310313225_))))
                                           (_g1310113222_ _g1310313225_))
                                       (_g1310113222_ _g1310313225_))
                                   (_g1310113222_ _g1310313225_))))
                           (_g1310113222_ _g1310313225_))))
                   (_g1310113222_ _g1310313225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1310113222_
                                                    _g1310313225_))
                                               (_g1310113222_ _g1310313225_))))
                                       (_g1310113222_ _g1310313225_))
                                   (_g1310113222_ _g1310313225_))
                               (_g1310113222_ _g1310313225_))))
                       (_g1310113222_ _g1310313225_))))
               (_g1310113222_ _g1310313225_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1310113222_
                                                    _g1310313225_))))
                                           (_g1310113222_ _g1310313225_))
                                       (_g1310113222_ _g1310313225_))
                                   (_g1310113222_ _g1310313225_))))
                           (_g1310113222_ _g1310313225_))))
                   (_g1310113222_ _g1310313225_))
               (_g1310113222_ _g1310313225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1310113222_ _g1310313225_))
                                           (_g1310113222_ _g1310313225_))
                                       (_g1310113222_ _g1310313225_))))
                               (_g1310113222_ _g1310313225_))))
                       (_g1310113222_ _g1310313225_)))))
            (let ((_g1309913609_
                   (lambda (_g1310313432_)
                     (if (gx#stx-pair? _g1310313432_)
                         (let ((_e1310913434_ (gx#stx-e _g1310313432_)))
                           (let ((_hd1311013437_ (##car _e1310913434_))
                                 (_tl1311113439_ (##cdr _e1310913434_)))
                             (if (gx#stx-pair? _hd1311013437_)
                                 (let ((_e1311213442_
                                        (gx#stx-e _hd1311013437_)))
                                   (let ((_hd1311313445_ (##car _e1311213442_))
                                         (_tl1311413447_
                                          (##cdr _e1311213442_)))
                                     (if (gx#identifier? _hd1311313445_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1311313445_)
                                             (if (gx#stx-pair? _tl1311413447_)
                                                 (let ((_e1311513450_
                                                        (gx#stx-e
                                                         _tl1311413447_)))
                                                   (let ((_hd1311613453_
                                                          (##car _e1311513450_))
                                                         (_tl1311713455_
                                                          (##cdr _e1311513450_)))
                                                     (if (gx#stx-null?
                                                          _tl1311713455_)
                                                         (if (gx#stx-pair?
                                                              _tl1311113439_)
                                                             (let ((_e1311813458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1311113439_)))
                       (let ((_hd1311913461_ (##car _e1311813458_))
                             (_tl1312013463_ (##cdr _e1311813458_)))
                         (if (gx#stx-pair? _hd1311913461_)
                             (let ((_e1312113466_ (gx#stx-e _hd1311913461_)))
                               (let ((_hd1312213469_ (##car _e1312113466_))
                                     (_tl1312313471_ (##cdr _e1312113466_)))
                                 (if (gx#identifier? _hd1312213469_)
                                     (if (gx#stx-eq? '%#quote _hd1312213469_)
                                         (if (gx#stx-pair? _tl1312313471_)
                                             (let ((_e1312413474_
                                                    (gx#stx-e _tl1312313471_)))
                                               (let ((_hd1312513477_
                                                      (##car _e1312413474_))
                                                     (_tl1312613479_
                                                      (##cdr _e1312413474_)))
                                                 (if (gx#stx-datum?
                                                      _hd1312513477_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1312513477_)
                         '#f)
                 (if (gx#stx-null? _tl1312613479_)
                     (if (gx#stx-pair? _tl1312013463_)
                         (let ((_e1312713482_ (gx#stx-e _tl1312013463_)))
                           (let ((_hd1312813485_ (##car _e1312713482_))
                                 (_tl1312913487_ (##cdr _e1312713482_)))
                             (if (gx#stx-pair? _hd1312813485_)
                                 (let ((_e1313013490_
                                        (gx#stx-e _hd1312813485_)))
                                   (let ((_hd1313113493_ (##car _e1313013490_))
                                         (_tl1313213495_
                                          (##cdr _e1313013490_)))
                                     (if (gx#identifier? _hd1313113493_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1313113493_)
                                             (if (gx#stx-pair? _tl1313213495_)
                                                 (let ((_e1313313498_
                                                        (gx#stx-e
                                                         _tl1313213495_)))
                                                   (let ((_hd1313413501_
                                                          (##car _e1313313498_))
                                                         (_tl1313513503_
                                                          (##cdr _e1313313498_)))
                                                     (if (gx#stx-null?
                                                          _tl1313513503_)
                                                         (if (gx#stx-pair?
                                                              _tl1312913487_)
                                                             (let ((_e1313613506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1312913487_)))
                       (let ((_hd1313713509_ (##car _e1313613506_))
                             (_tl1313813511_ (##cdr _e1313613506_)))
                         (if (gx#stx-pair? _tl1313813511_)
                             (let ((_e1313913514_ (gx#stx-e _tl1313813511_)))
                               (let ((_hd1314013517_ (##car _e1313913514_))
                                     (_tl1314113519_ (##cdr _e1313913514_)))
                                 (if (gx#stx-pair? _hd1314013517_)
                                     (let ((_e1314213522_
                                            (gx#stx-e _hd1314013517_)))
                                       (let ((_hd1314313525_
                                              (##car _e1314213522_))
                                             (_tl1314413527_
                                              (##cdr _e1314213522_)))
                                         (if (gx#identifier? _hd1314313525_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1314313525_)
                                                 (if (gx#stx-pair?
                                                      _tl1314413527_)
                                                     (let ((_e1314513530_
                                                            (gx#stx-e
                                                             _tl1314413527_)))
                                                       (let ((_hd1314613533_
                                                              (##car _e1314513530_))
                                                             (_tl1314713535_
                                                              (##cdr _e1314513530_)))
                                                         (if (gx#stx-null?
                                                              _tl1314713535_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1314113519_)
                         (let ((_e1314813538_ (gx#stx-e _tl1314113519_)))
                           (let ((_hd1314913541_ (##car _e1314813538_))
                                 (_tl1315013543_ (##cdr _e1314813538_)))
                             (if (gx#stx-pair? _hd1314913541_)
                                 (let ((_e1315113546_
                                        (gx#stx-e _hd1314913541_)))
                                   (let ((_hd1315213549_ (##car _e1315113546_))
                                         (_tl1315313551_
                                          (##cdr _e1315113546_)))
                                     (if (gx#identifier? _hd1315213549_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1315213549_)
                                             (if (gx#stx-pair? _tl1315313551_)
                                                 (let ((_e1315413554_
                                                        (gx#stx-e
                                                         _tl1315313551_)))
                                                   (let ((_hd1315513557_
                                                          (##car _e1315413554_))
                                                         (_tl1315613559_
                                                          (##cdr _e1315413554_)))
                                                     (if (gx#stx-null?
                                                          _tl1315613559_)
                                                         (if (gx#stx-null?
                                                              _tl1315013543_)
                                                             ((lambda (_L13562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L13563_
                               _L13564_
                               _L13565_
                               _L13566_)
                        (let ((__obj19966
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19966
                             (gx#stx-e _L13566_)
                             '#f
                             (gx#stx-e _L13565_)
                             '0
                             (gx#stx-e _L13562_)
                             (gx#stx-e _L13563_))
                            __obj19966)))
                      _hd1315513557_
                      _hd1314613533_
                      _hd1313713509_
                      _hd1313413501_
                      _hd1311613453_)
                     (_g1310013429_ _g1310313432_))
                 (_g1310013429_ _g1310313432_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1310013429_ _g1310313432_))
                                             (_g1310013429_ _g1310313432_))
                                         (_g1310013429_ _g1310313432_))))
                                 (_g1310013429_ _g1310313432_))))
                         (_g1310013429_ _g1310313432_))
                     (_g1310013429_ _g1310313432_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1310013429_
                                                      _g1310313432_))
                                                 (_g1310013429_ _g1310313432_))
                                             (_g1310013429_ _g1310313432_))))
                                     (_g1310013429_ _g1310313432_))))
                             (_g1310013429_ _g1310313432_))))
                     (_g1310013429_ _g1310313432_))
                 (_g1310013429_ _g1310313432_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1310013429_ _g1310313432_))
                                             (_g1310013429_ _g1310313432_))
                                         (_g1310013429_ _g1310313432_))))
                                 (_g1310013429_ _g1310313432_))))
                         (_g1310013429_ _g1310313432_))
                     (_g1310013429_ _g1310313432_))
                 (_g1310013429_ _g1310313432_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1310013429_
                                                      _g1310313432_))))
                                             (_g1310013429_ _g1310313432_))
                                         (_g1310013429_ _g1310313432_))
                                     (_g1310013429_ _g1310313432_))))
                             (_g1310013429_ _g1310313432_))))
                     (_g1310013429_ _g1310313432_))
                 (_g1310013429_ _g1310313432_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1310013429_ _g1310313432_))
                                             (_g1310013429_ _g1310313432_))
                                         (_g1310013429_ _g1310313432_))))
                                 (_g1310013429_ _g1310313432_))))
                         (_g1310013429_ _g1310313432_)))))
              (_g1309913609_ _args13098_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx13023_ _args13024_)
      (let ((_g1302713043_
             (lambda (_g1302813040_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1302813040_))))
        (let ((_g1302613050_ (lambda (_g1302813046_) ((lambda () '#f)))))
          (let ((_g1302513094_
                 (lambda (_g1302813053_)
                   (if (gx#stx-pair? _g1302813053_)
                       (let ((_e1303013055_ (gx#stx-e _g1302813053_)))
                         (let ((_hd1303113058_ (##car _e1303013055_))
                               (_tl1303213060_ (##cdr _e1303013055_)))
                           (if (gx#stx-pair? _hd1303113058_)
                               (let ((_e1303313063_ (gx#stx-e _hd1303113058_)))
                                 (let ((_hd1303413066_ (##car _e1303313063_))
                                       (_tl1303513068_ (##cdr _e1303313063_)))
                                   (if (gx#identifier? _hd1303413066_)
                                       (if (gx#stx-eq? '%#ref _hd1303413066_)
                                           (if (gx#stx-pair? _tl1303513068_)
                                               (let ((_e1303613071_
                                                      (gx#stx-e
                                                       _tl1303513068_)))
                                                 (let ((_hd1303713074_
                                                        (##car _e1303613071_))
                                                       (_tl1303813076_
                                                        (##cdr _e1303613071_)))
                                                   (if (gx#stx-null?
                                                        _tl1303813076_)
                                                       (if (gx#stx-null?
                                                            _tl1303213060_)
                                                           ((lambda (_L13079_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L13079_)))
                                                            _hd1303713074_)
                                                           (_g1302613050_
                                                            _g1302813053_))
                                                       (_g1302613050_
                                                        _g1302813053_))))
                                               (_g1302613050_ _g1302813053_))
                                           (_g1302613050_ _g1302813053_))
                                       (_g1302613050_ _g1302813053_))))
                               (_g1302613050_ _g1302813053_))))
                       (_g1302613050_ _g1302813053_)))))
            (_g1302513094_ _args13024_))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__opt-lambda12892
      (lambda (_stx12894_ _args12895_ _unchecked?12896_)
        (let ((_g1289912925_
               (lambda (_g1290012922_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1290012922_))))
          (let ((_g1289812932_ (lambda (_g1290012928_) ((lambda () '#f)))))
            (let ((_g1289713008_
                   (lambda (_g1290012935_)
                     (if (gx#stx-pair? _g1290012935_)
                         (let ((_e1290312937_ (gx#stx-e _g1290012935_)))
                           (let ((_hd1290412940_ (##car _e1290312937_))
                                 (_tl1290512942_ (##cdr _e1290312937_)))
                             (if (gx#stx-pair? _hd1290412940_)
                                 (let ((_e1290612945_
                                        (gx#stx-e _hd1290412940_)))
                                   (let ((_hd1290712948_ (##car _e1290612945_))
                                         (_tl1290812950_
                                          (##cdr _e1290612945_)))
                                     (if (gx#identifier? _hd1290712948_)
                                         (if (gx#stx-eq? '%#ref _hd1290712948_)
                                             (if (gx#stx-pair? _tl1290812950_)
                                                 (let ((_e1290912953_
                                                        (gx#stx-e
                                                         _tl1290812950_)))
                                                   (let ((_hd1291012956_
                                                          (##car _e1290912953_))
                                                         (_tl1291112958_
                                                          (##cdr _e1290912953_)))
                                                     (if (gx#stx-null?
                                                          _tl1291112958_)
                                                         (if (gx#stx-pair?
                                                              _tl1290512942_)
                                                             (let ((_e1291212961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1290512942_)))
                       (let ((_hd1291312964_ (##car _e1291212961_))
                             (_tl1291412966_ (##cdr _e1291212961_)))
                         (if (gx#stx-pair? _hd1291312964_)
                             (let ((_e1291512969_ (gx#stx-e _hd1291312964_)))
                               (let ((_hd1291612972_ (##car _e1291512969_))
                                     (_tl1291712974_ (##cdr _e1291512969_)))
                                 (if (gx#identifier? _hd1291612972_)
                                     (if (gx#stx-eq? '%#quote _hd1291612972_)
                                         (if (gx#stx-pair? _tl1291712974_)
                                             (let ((_e1291812977_
                                                    (gx#stx-e _tl1291712974_)))
                                               (let ((_hd1291912980_
                                                      (##car _e1291812977_))
                                                     (_tl1292012982_
                                                      (##cdr _e1291812977_)))
                                                 (if (gx#stx-null?
                                                      _tl1292012982_)
                                                     (if (gx#stx-null?
                                                          _tl1291412966_)
                                                         ((lambda (_L12985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L12986_)
                    (##structure
                     gxc#!struct-getf::t
                     (gxc#generate-runtime-binding-id _L12986_)
                     (gx#stx-e _L12985_)
                     _unchecked?12896_))
                  _hd1291912980_
                  _hd1291012956_)
                 (_g1289812932_ _g1290012935_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1289812932_
                                                      _g1290012935_))))
                                             (_g1289812932_ _g1290012935_))
                                         (_g1289812932_ _g1290012935_))
                                     (_g1289812932_ _g1290012935_))))
                             (_g1289812932_ _g1290012935_))))
                     (_g1289812932_ _g1290012935_))
                 (_g1289812932_ _g1290012935_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1289812932_ _g1290012935_))
                                             (_g1289812932_ _g1290012935_))
                                         (_g1289812932_ _g1290012935_))))
                                 (_g1289812932_ _g1290012935_))))
                         (_g1289812932_ _g1290012935_)))))
              (_g1289713008_ _args12895_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx13014_ _args13015_)
          (let ((_unchecked?13017_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda12892
             _stx13014_
             _args13015_
             _unchecked?13017_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g20030_
          (let ((_g20029_ (length _g20030_)))
            (cond ((fx= _g20029_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g20030_))
                  ((fx= _g20029_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__opt-lambda12892
                          _g20030_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g20030_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__opt-lambda12762
      (lambda (_stx12764_ _args12765_ _unchecked?12766_)
        (let ((_g1276912795_
               (lambda (_g1277012792_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1277012792_))))
          (let ((_g1276812802_ (lambda (_g1277012798_) ((lambda () '#f)))))
            (let ((_g1276712878_
                   (lambda (_g1277012805_)
                     (if (gx#stx-pair? _g1277012805_)
                         (let ((_e1277312807_ (gx#stx-e _g1277012805_)))
                           (let ((_hd1277412810_ (##car _e1277312807_))
                                 (_tl1277512812_ (##cdr _e1277312807_)))
                             (if (gx#stx-pair? _hd1277412810_)
                                 (let ((_e1277612815_
                                        (gx#stx-e _hd1277412810_)))
                                   (let ((_hd1277712818_ (##car _e1277612815_))
                                         (_tl1277812820_
                                          (##cdr _e1277612815_)))
                                     (if (gx#identifier? _hd1277712818_)
                                         (if (gx#stx-eq? '%#ref _hd1277712818_)
                                             (if (gx#stx-pair? _tl1277812820_)
                                                 (let ((_e1277912823_
                                                        (gx#stx-e
                                                         _tl1277812820_)))
                                                   (let ((_hd1278012826_
                                                          (##car _e1277912823_))
                                                         (_tl1278112828_
                                                          (##cdr _e1277912823_)))
                                                     (if (gx#stx-null?
                                                          _tl1278112828_)
                                                         (if (gx#stx-pair?
                                                              _tl1277512812_)
                                                             (let ((_e1278212831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1277512812_)))
                       (let ((_hd1278312834_ (##car _e1278212831_))
                             (_tl1278412836_ (##cdr _e1278212831_)))
                         (if (gx#stx-pair? _hd1278312834_)
                             (let ((_e1278512839_ (gx#stx-e _hd1278312834_)))
                               (let ((_hd1278612842_ (##car _e1278512839_))
                                     (_tl1278712844_ (##cdr _e1278512839_)))
                                 (if (gx#identifier? _hd1278612842_)
                                     (if (gx#stx-eq? '%#quote _hd1278612842_)
                                         (if (gx#stx-pair? _tl1278712844_)
                                             (let ((_e1278812847_
                                                    (gx#stx-e _tl1278712844_)))
                                               (let ((_hd1278912850_
                                                      (##car _e1278812847_))
                                                     (_tl1279012852_
                                                      (##cdr _e1278812847_)))
                                                 (if (gx#stx-null?
                                                      _tl1279012852_)
                                                     (if (gx#stx-null?
                                                          _tl1278412836_)
                                                         ((lambda (_L12855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L12856_)
                    (##structure
                     gxc#!struct-setf::t
                     (gxc#generate-runtime-binding-id _L12856_)
                     (gx#stx-e _L12855_)
                     _unchecked?12766_))
                  _hd1278912850_
                  _hd1278012826_)
                 (_g1276812802_ _g1277012805_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1276812802_
                                                      _g1277012805_))))
                                             (_g1276812802_ _g1277012805_))
                                         (_g1276812802_ _g1277012805_))
                                     (_g1276812802_ _g1277012805_))))
                             (_g1276812802_ _g1277012805_))))
                     (_g1276812802_ _g1277012805_))
                 (_g1276812802_ _g1277012805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1276812802_ _g1277012805_))
                                             (_g1276812802_ _g1277012805_))
                                         (_g1276812802_ _g1277012805_))))
                                 (_g1276812802_ _g1277012805_))))
                         (_g1276812802_ _g1277012805_)))))
              (_g1276712878_ _args12765_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx12884_ _args12885_)
          (let ((_unchecked?12887_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda12762
             _stx12884_
             _args12885_
             _unchecked?12887_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g20032_
          (let ((_g20031_ (length _g20032_)))
            (cond ((fx= _g20031_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g20032_))
                  ((fx= _g20031_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__opt-lambda12762
                          _g20032_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g20032_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx12760_ _args12761_)
      (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda12892
       _stx12760_
       _args12761_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx12757_ _args12758_)
      (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda12762
       _stx12757_
       _args12758_
       '#t)))
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-type
   gxc#basic-expression-type-make-struct-type)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-predicate
   gxc#basic-expression-type-make-struct-predicate)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-accessor
   gxc#basic-expression-type-make-struct-field-accessor)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-mutator
   gxc#basic-expression-type-make-struct-field-mutator)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-unchecked-accessor
   gxc#basic-expression-type-make-struct-field-unchecked-accessor)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-unchecked-mutator
   gxc#basic-expression-type-make-struct-field-unchecked-mutator)
  (define gxc#basic-expression-type-ref%
    (lambda (_stx12706_)
      (let ((_g1270812721_
             (lambda (_g1270912718_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1270912718_))))
        (let ((_g1270712754_
               (lambda (_g1270912724_)
                 (if (gx#stx-pair? _g1270912724_)
                     (let ((_e1271112726_ (gx#stx-e _g1270912724_)))
                       (let ((_hd1271212729_ (##car _e1271112726_))
                             (_tl1271312731_ (##cdr _e1271112726_)))
                         (if (gx#stx-pair? _tl1271312731_)
                             (let ((_e1271412734_ (gx#stx-e _tl1271312731_)))
                               (let ((_hd1271512737_ (##car _e1271412734_))
                                     (_tl1271612739_ (##cdr _e1271412734_)))
                                 (if (gx#stx-null? _tl1271612739_)
                                     ((lambda (_L12742_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L12742_)))
                                      _hd1271512737_)
                                     (_g1270812721_ _g1270912724_))))
                             (_g1270812721_ _g1270912724_))))
                     (_g1270812721_ _g1270912724_)))))
          (_g1270712754_ _stx12706_)))))
  (define gxc#optimize-call%
    (lambda (_stx12612_)
      (let ((_g1261512635_
             (lambda (_g1261612632_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1261612632_))))
        (let ((_g1261412642_
               (lambda (_g1261612638_)
                 ((lambda () (gxc#xform-call% _stx12612_))))))
          (let ((_g1261312703_
                 (lambda (_g1261612645_)
                   (if (gx#stx-pair? _g1261612645_)
                       (let ((_e1261912647_ (gx#stx-e _g1261612645_)))
                         (let ((_hd1262012650_ (##car _e1261912647_))
                               (_tl1262112652_ (##cdr _e1261912647_)))
                           (if (gx#stx-pair? _tl1262112652_)
                               (let ((_e1262212655_ (gx#stx-e _tl1262112652_)))
                                 (let ((_hd1262312658_ (##car _e1262212655_))
                                       (_tl1262412660_ (##cdr _e1262212655_)))
                                   (if (gx#stx-pair? _hd1262312658_)
                                       (let ((_e1262512663_
                                              (gx#stx-e _hd1262312658_)))
                                         (let ((_hd1262612666_
                                                (##car _e1262512663_))
                                               (_tl1262712668_
                                                (##cdr _e1262512663_)))
                                           (if (gx#identifier? _hd1262612666_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1262612666_)
                                                   (if (gx#stx-pair?
                                                        _tl1262712668_)
                                                       (let ((_e1262812671_
                                                              (gx#stx-e
                                                               _tl1262712668_)))
                                                         (let ((_hd1262912674_
                                                                (##car _e1262812671_))
                                                               (_tl1263012676_
                                                                (##cdr _e1262812671_)))
                                                           (if (gx#stx-null?
                                                                _tl1263012676_)
                                                               ((lambda (_L12679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12680_)
                          (let ((_rator-id12698_
                                 (gxc#generate-runtime-binding-id _L12680_)))
                            (let ((_rator-type12700_
                                   (gxc#optimizer-resolve-type
                                    _rator-id12698_)))
                              (let ()
                                (if (##structure-instance-of?
                                     _rator-type12700_
                                     'gxc#!procedure::t)
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id12698_
                                       '" => "
                                       _rator-type12700_
                                       '" "
                                       (##structure-ref
                                        _rator-type12700_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type12700_
                                       'optimize-call
                                       _stx12612_
                                       _L12679_))
                                    (if (not _rator-type12700_)
                                        (gxc#xform-call% _stx12612_)
                                        (gxc#raise-compile-error
                                         '"Illegal application; not a procedure"
                                         _stx12612_
                                         _rator-type12700_)))))))
                        _tl1262412660_
                        _hd1262912674_)
                       (_g1261412642_ _g1261612645_))))
               (_g1261412642_ _g1261612645_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1261412642_
                                                    _g1261612645_))
                                               (_g1261412642_ _g1261612645_))))
                                       (_g1261412642_ _g1261612645_))))
                               (_g1261412642_ _g1261612645_))))
                       (_g1261412642_ _g1261612645_)))))
            (_g1261312703_ _stx12612_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self12467_ _stx12468_ _args12469_)
      (let ((_self1247012476_ _self12467_))
        (let ((_E1247212480_
               (lambda () (error '"No clause matching" _self1247012476_))))
          (let ((_K1247312604_
                 (lambda (_struct-t12483_)
                   (let ((_struct-type12485_
                          (gxc#optimizer-resolve-type _struct-t12483_)))
                     (let ((_struct-type1248612500_ _struct-type12485_))
                       (let ((_E1249012504_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1248612500_))))
                         (let ((_else1248912508_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx12468_
                                   _struct-t12483_
                                   _struct-type12485_))))
                           (let ((_try-match1248812516_
                                  (lambda ()
                                    (let ((_K1249112513_
                                           (lambda ()
                                             (gxc#xform-call% _stx12468_))))
                                      (if (##eq? _struct-type1248612500_ '#f)
                                          (_K1249112513_)
                                          (_else1248912508_))))))
                             (let ((_K1249212579_
                                    (lambda (_plist12519_
                                             _struct-type-id12520_)
                                      (let ((_g1252312533_
                                             (lambda (_g1252412530_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1252412530_))))
                                        (let ((_g1252212540_
                                               (lambda (_g1252412536_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx12468_))))))
                                          (let ((_g1252112576_
                                                 (lambda (_g1252412543_)
                                                   (if (gx#stx-pair?
                                                        _g1252412543_)
                                                       (let ((_e1252612545_
                                                              (gx#stx-e
                                                               _g1252412543_)))
                                                         (let ((_hd1252712548_
                                                                (##car _e1252612545_))
                                                               (_tl1252812550_
                                                                (##cdr _e1252612545_)))
                                                           (if (gx#stx-null?
                                                                _tl1252812550_)
                                                               ((lambda (_L12553_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr12573_ (gxc#compile-e _L12553_))
                                (_op12574_
                                 (if (if _plist12519_
                                         (assgetq 'final: _plist12519_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op12574_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id12520_
                                                     '()))
                                         (cons _expr12573_ '())))
                             _stx12468_)))
                        _hd1252712548_)
                       (_g1252212540_ _g1252412543_))))
               (_g1252212540_ _g1252412543_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1252112576_ _args12469_)))))))
                               (if (##structure-instance-of?
                                    _struct-type1248612500_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1249312582_
                                          (##vector-ref
                                           _struct-type1248612500_
                                           '1)))
                                     (let ((_struct-type-id12585_
                                            _e1249312582_))
                                       (let ((_e1249412587_
                                              (##vector-ref
                                               _struct-type1248612500_
                                               '2)))
                                         (let ((_e1249512590_
                                                (##vector-ref
                                                 _struct-type1248612500_
                                                 '3)))
                                           (let ((_e1249612593_
                                                  (##vector-ref
                                                   _struct-type1248612500_
                                                   '4)))
                                             (let ((_e1249712596_
                                                    (##vector-ref
                                                     _struct-type1248612500_
                                                     '5)))
                                               (let ((_e1249812599_
                                                      (##vector-ref
                                                       _struct-type1248612500_
                                                       '6)))
                                                 (let ((_plist12602_
                                                        _e1249812599_))
                                                   (_K1249212579_
                                                    _plist12602_
                                                    _struct-type-id12585_)))))))))
                                   (_try-match1248812516_)))))))))))
            (if (##structure-instance-of?
                 _self1247012476_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1247412607_ (##vector-ref _self1247012476_ '1)))
                  (let ((_struct-t12610_ _e1247412607_))
                    (_K1247312604_ _struct-t12610_)))
                (_E1247212480_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self12363_ _stx12364_ _args12365_)
      (let ((_self1236612372_ _self12363_))
        (let ((_E1236812376_
               (lambda () (error '"No clause matching" _self1236612372_))))
          (let ((_K1236912459_
                 (lambda (_struct-t12379_)
                   (let ((_struct-type12381_
                          (gxc#optimizer-resolve-type _struct-t12379_)))
                     (let ((_struct-type1238212395_ _struct-type12381_))
                       (let ((_E1238612399_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1238212395_))))
                         (let ((_else1238512403_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx12364_
                                   _struct-t12379_
                                   _struct-type12381_))))
                           (let ((_try-match1238412411_
                                  (lambda ()
                                    (let ((_K1238712408_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t12379_)
                                               (gxc#xform-call% _stx12364_)))))
                                      (if (##eq? _struct-type1238212395_ '#f)
                                          (_K1238712408_)
                                          (_else1238512403_))))))
                             (let ((_K1238812433_
                                    (lambda (_ctor12414_
                                             _xfields12415_
                                             _fields12416_
                                             _type-id12417_)
                                      (let ((_args12419_
                                             (map gxc#compile-e _args12365_)))
                                        (let ((_$e12421_
                                               (if _ctor12414_
                                                   (if _xfields12415_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type12381_
                                                        _ctor12414_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e12421_
                                              ((lambda (_kons12424_)
                                                 (let ((_$obj12426_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj12426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t12379_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields12416_ _xfields12415_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons12424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj12426_ '())) _args12419_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx12364_))
                                          (cons (cons '%#ref
                                                      (cons _$obj12426_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx12364_)))
                                               _$e12421_)
                                              (if (let ((_$e12428_
                                                         _ctor12414_))
                                                    (if _$e12428_
                                                        _$e12428_
                                                        (not _xfields12415_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t12379_ '()))
                             _args12419_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx12364_)
                                                  (let ((_arity12431_
                                                         (fx+ _fields12416_
                                                              _xfields12415_)))
                                                    (if (fx= _arity12431_
                                                             (length _args12419_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t12379_ '()))
                                   _args12419_)))
                 _stx12364_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx12364_
                 _struct-t12379_
                 _arity12431_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (##structure-instance-of?
                                    _struct-type1238212395_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1238912436_
                                          (##vector-ref
                                           _struct-type1238212395_
                                           '1)))
                                     (let ((_type-id12439_ _e1238912436_))
                                       (let ((_e1239012441_
                                              (##vector-ref
                                               _struct-type1238212395_
                                               '2)))
                                         (let ((_e1239112444_
                                                (##vector-ref
                                                 _struct-type1238212395_
                                                 '3)))
                                           (let ((_fields12447_ _e1239112444_))
                                             (let ((_e1239212449_
                                                    (##vector-ref
                                                     _struct-type1238212395_
                                                     '4)))
                                               (let ((_xfields12452_
                                                      _e1239212449_))
                                                 (let ((_e1239312454_
                                                        (##vector-ref
                                                         _struct-type1238212395_
                                                         '5)))
                                                   (let ((_ctor12457_
                                                          _e1239312454_))
                                                     (_K1238812433_
                                                      _ctor12457_
                                                      _xfields12452_
                                                      _fields12447_
                                                      _type-id12439_))))))))))
                                   (_try-match1238412411_)))))))))))
            (if (##structure-instance-of?
                 _self1236612372_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1237012462_ (##vector-ref _self1236612372_ '1)))
                  (let ((_struct-t12465_ _e1237012462_))
                    (_K1236912459_ _struct-t12465_)))
                (_E1236812376_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self12197_ _stx12198_ _args12199_)
      (let ((_self1220012208_ _self12197_))
        (let ((_E1220212212_
               (lambda () (error '"No clause matching" _self1220012208_))))
          (let ((_K1220312345_
                 (lambda (_unchecked?12215_ _off12216_ _struct-t12217_)
                   (let ((_struct-type12219_
                          (gxc#optimizer-resolve-type _struct-t12217_)))
                     (let ((_struct-type1222012234_ _struct-type12219_))
                       (let ((_E1222412238_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1222012234_))))
                         (let ((_else1222312242_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx12198_
                                   _struct-t12217_
                                   _struct-type12219_))))
                           (let ((_try-match1222212250_
                                  (lambda ()
                                    (let ((_K1222512247_
                                           (lambda ()
                                             (gxc#xform-call% _stx12198_))))
                                      (if (##eq? _struct-type1222012234_ '#f)
                                          (_K1222512247_)
                                          (_else1222312242_))))))
                             (let ((_K1222612316_
                                    (lambda (_plist12253_
                                             _xfields12254_
                                             _fields12255_
                                             _struct-type-id12256_)
                                      (if _xfields12254_
                                          (let ((_g1225912269_
                                                 (lambda (_g1226012266_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1226012266_))))
                                            (let ((_g1225812276_
                                                   (lambda (_g1226012272_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx12198_))))))
                                              (let ((_g1225712313_
                                                     (lambda (_g1226012279_)
                                                       (if (gx#stx-pair?
                                                            _g1226012279_)
                                                           (let ((_e1226212281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1226012279_)))
                     (let ((_hd1226312284_ (##car _e1226212281_))
                           (_tl1226412286_ (##cdr _e1226212281_)))
                       (if (gx#stx-null? _tl1226412286_)
                           ((lambda (_L12289_)
                              (let ((_expr12309_ (gxc#compile-e _L12289_))
                                    (_off12310_
                                     (fx+ _off12216_ _xfields12254_ '1))
                                    (_op12311_
                                     (if _unchecked?12215_
                                         '%#struct-unchecked-ref
                                         (if (if _plist12253_
                                                 (assgetq 'final: _plist12253_)
                                                 '#f)
                                             '%#struct-direct-ref
                                             '%#struct-ref))))
                                (gxc#xform-wrap-source
                                 (cons _op12311_
                                       (cons (cons '%#ref
                                                   (cons _struct-t12217_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off12310_ '()))
                                                   (cons _expr12309_ '()))))
                                 _stx12198_)))
                            _hd1226312284_)
                           (_g1225812276_ _g1226012279_))))
                   (_g1225812276_ _g1226012279_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1225712313_ _args12199_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id12256_)
                                            (gxc#xform-call% _stx12198_))))))
                               (if (##structure-instance-of?
                                    _struct-type1222012234_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1222712319_
                                          (##vector-ref
                                           _struct-type1222012234_
                                           '1)))
                                     (let ((_struct-type-id12322_
                                            _e1222712319_))
                                       (let ((_e1222812324_
                                              (##vector-ref
                                               _struct-type1222012234_
                                               '2)))
                                         (let ((_e1222912327_
                                                (##vector-ref
                                                 _struct-type1222012234_
                                                 '3)))
                                           (let ((_fields12330_ _e1222912327_))
                                             (let ((_e1223012332_
                                                    (##vector-ref
                                                     _struct-type1222012234_
                                                     '4)))
                                               (let ((_xfields12335_
                                                      _e1223012332_))
                                                 (let ((_e1223112337_
                                                        (##vector-ref
                                                         _struct-type1222012234_
                                                         '5)))
                                                   (let ((_e1223212340_
                                                          (##vector-ref
                                                           _struct-type1222012234_
                                                           '6)))
                                                     (let ((_plist12343_
                                                            _e1223212340_))
                                                       (_K1222612316_
                                                        _plist12343_
                                                        _xfields12335_
                                                        _fields12330_
                                                        _struct-type-id12322_)))))))))))
                                   (_try-match1222212250_)))))))))))
            (if (##structure-instance-of?
                 _self1220012208_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1220412348_ (##vector-ref _self1220012208_ '1)))
                  (let ((_struct-t12351_ _e1220412348_))
                    (let ((_e1220512353_ (##vector-ref _self1220012208_ '2)))
                      (let ((_off12356_ _e1220512353_))
                        (let ((_e1220612358_
                               (##vector-ref _self1220012208_ '3)))
                          (let ((_unchecked?12361_ _e1220612358_))
                            (_K1220312345_
                             _unchecked?12361_
                             _off12356_
                             _struct-t12351_)))))))
                (_E1220212212_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self12014_ _stx12015_ _args12016_)
      (let ((_self1201712025_ _self12014_))
        (let ((_E1201912029_
               (lambda () (error '"No clause matching" _self1201712025_))))
          (let ((_K1202012179_
                 (lambda (_unchecked?12032_ _off12033_ _struct-t12034_)
                   (let ((_struct-type12036_
                          (gxc#optimizer-resolve-type _struct-t12034_)))
                     (let ((_struct-type1203712051_ _struct-type12036_))
                       (let ((_E1204112055_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1203712051_))))
                         (let ((_else1204012059_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx12015_
                                   _struct-t12034_
                                   _struct-type12036_))))
                           (let ((_try-match1203912067_
                                  (lambda ()
                                    (let ((_K1204212064_
                                           (lambda ()
                                             (gxc#xform-call% _stx12015_))))
                                      (if (##eq? _struct-type1203712051_ '#f)
                                          (_K1204212064_)
                                          (_else1204012059_))))))
                             (let ((_K1204312150_
                                    (lambda (_plist12070_
                                             _xfields12071_
                                             _fields12072_
                                             _struct-type-id12073_)
                                      (if _xfields12071_
                                          (let ((_g1207612090_
                                                 (lambda (_g1207712087_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1207712087_))))
                                            (let ((_g1207512097_
                                                   (lambda (_g1207712093_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx12015_))))))
                                              (let ((_g1207412147_
                                                     (lambda (_g1207712100_)
                                                       (if (gx#stx-pair?
                                                            _g1207712100_)
                                                           (let ((_e1208012102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1207712100_)))
                     (let ((_hd1208112105_ (##car _e1208012102_))
                           (_tl1208212107_ (##cdr _e1208012102_)))
                       (if (gx#stx-pair? _tl1208212107_)
                           (let ((_e1208312110_ (gx#stx-e _tl1208212107_)))
                             (let ((_hd1208412113_ (##car _e1208312110_))
                                   (_tl1208512115_ (##cdr _e1208312110_)))
                               (if (gx#stx-null? _tl1208512115_)
                                   ((lambda (_L12118_ _L12119_)
                                      (let ((_expr12142_
                                             (gxc#compile-e _L12119_))
                                            (_val12143_
                                             (gxc#compile-e _L12118_))
                                            (_off12144_
                                             (fx+ _off12033_
                                                  _xfields12071_
                                                  '1))
                                            (_op12145_
                                             (if _unchecked?12032_
                                                 '%#struct-unchecked-set!
                                                 (if (if _plist12070_
                                                         (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _plist12070_)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '%#struct-direct-set!
                                                     '%#struct-set!))))
                                        (gxc#xform-wrap-source
                                         (cons _op12145_
                                               (cons (cons '%#ref
                                                           (cons _struct-t12034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off12144_ '()))
                   (cons _expr12142_ (cons _val12143_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx12015_)))
                                    _hd1208412113_
                                    _hd1208112105_)
                                   (_g1207512097_ _g1207712100_))))
                           (_g1207512097_ _g1207712100_))))
                   (_g1207512097_ _g1207712100_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1207412147_ _args12016_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id12073_)
                                            (gxc#xform-call% _stx12015_))))))
                               (if (##structure-instance-of?
                                    _struct-type1203712051_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1204412153_
                                          (##vector-ref
                                           _struct-type1203712051_
                                           '1)))
                                     (let ((_struct-type-id12156_
                                            _e1204412153_))
                                       (let ((_e1204512158_
                                              (##vector-ref
                                               _struct-type1203712051_
                                               '2)))
                                         (let ((_e1204612161_
                                                (##vector-ref
                                                 _struct-type1203712051_
                                                 '3)))
                                           (let ((_fields12164_ _e1204612161_))
                                             (let ((_e1204712166_
                                                    (##vector-ref
                                                     _struct-type1203712051_
                                                     '4)))
                                               (let ((_xfields12169_
                                                      _e1204712166_))
                                                 (let ((_e1204812171_
                                                        (##vector-ref
                                                         _struct-type1203712051_
                                                         '5)))
                                                   (let ((_e1204912174_
                                                          (##vector-ref
                                                           _struct-type1203712051_
                                                           '6)))
                                                     (let ((_plist12177_
                                                            _e1204912174_))
                                                       (_K1204312150_
                                                        _plist12177_
                                                        _xfields12169_
                                                        _fields12164_
                                                        _struct-type-id12156_)))))))))))
                                   (_try-match1203912067_)))))))))))
            (if (##structure-instance-of?
                 _self1201712025_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1202112182_ (##vector-ref _self1201712025_ '1)))
                  (let ((_struct-t12185_ _e1202112182_))
                    (let ((_e1202212187_ (##vector-ref _self1201712025_ '2)))
                      (let ((_off12190_ _e1202212187_))
                        (let ((_e1202312192_
                               (##vector-ref _self1201712025_ '3)))
                          (let ((_unchecked?12195_ _e1202312192_))
                            (_K1202012179_
                             _unchecked?12195_
                             _off12190_
                             _struct-t12185_)))))))
                (_E1201912029_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self11970_ _stx11971_ _args11972_)
      (let ((_self1197311982_ _self11970_))
        (let ((_E1197511986_
               (lambda () (error '"No clause matching" _self1197311982_))))
          (let ((_K1197611993_
                 (lambda (_inline11989_ _dispatch11990_ _arity11991_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self11970_ _args11972_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx11971_
                          _arity11991_))
                     (if _inline11989_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline11989_ _stx11971_)
                             _stx11971_)))
                         (if _dispatch11990_
                             (begin
                               (gxc#verbose
                                '"dispatch lambda => "
                                _dispatch11990_)
                               (gxc#compile-e
                                (gxc#xform-wrap-source
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons _dispatch11990_ '()))
                                             _args11972_))
                                 _stx11971_)))
                             (gxc#xform-call% _stx11971_)))))))
            (if (##structure-instance-of?
                 _self1197311982_
                 (##type-id gxc#!lambda::t))
                (let ((_e1197711996_ (##vector-ref _self1197311982_ '1)))
                  (let ((_e1197811999_ (##vector-ref _self1197311982_ '2)))
                    (let ((_arity12002_ _e1197811999_))
                      (let ((_e1197912004_ (##vector-ref _self1197311982_ '3)))
                        (let ((_dispatch12007_ _e1197912004_))
                          (let ((_e1198012009_
                                 (##vector-ref _self1197311982_ '4)))
                            (let ((_inline12012_ _e1198012009_))
                              (_K1197611993_
                               _inline12012_
                               _dispatch12007_
                               _arity12002_))))))))
                (_E1197511986_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self11931_ _stx11932_ _args11933_)
      (let ((_self1193411941_ _self11931_))
        (let ((_E1193611945_
               (lambda () (error '"No clause matching" _self1193411941_))))
          (let ((_K1193711959_
                 (lambda (_clauses11948_)
                   (let ((_$e11954_
                          (find (lambda (_g1194911951_)
                                  (gxc#!lambda-arity-match?
                                   _g1194911951_
                                   _args11933_))
                                _clauses11948_)))
                     (if _$e11954_
                         ((lambda (_clause11957_)
                            (call-method
                             _clause11957_
                             'optimize-call
                             _stx11932_
                             _args11933_))
                          _$e11954_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx11932_
                          (map gxc#!lambda-arity _clauses11948_)))))))
            (if (##structure-instance-of?
                 _self1193411941_
                 (##type-id gxc#!case-lambda::t))
                (let ((_e1193811962_ (##vector-ref _self1193411941_ '1)))
                  (let ((_e1193911965_ (##vector-ref _self1193411941_ '2)))
                    (let ((_clauses11968_ _e1193911965_))
                      (_K1193711959_ _clauses11968_))))
                (_E1193611945_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self11867_ _args11868_)
      (let ((_self1186911876_ _self11867_))
        (let ((_E1187111880_
               (lambda () (error '"No clause matching" _self1186911876_))))
          (let ((_K1187211920_
                 (lambda (_arity11883_)
                   (let ((_arity1188411893_ _arity11883_))
                     (let ((_E1188711897_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1188411893_))))
                       (let ((_try-match1188611913_
                              (lambda ()
                                (let ((_K1188811903_
                                       (lambda (_arity11901_)
                                         (fx>= (length _args11868_)
                                               _arity11901_))))
                                  (if (##pair? _arity1188411893_)
                                      (let ((_hd1188911906_
                                             (##car _arity1188411893_))
                                            (_tl1189011908_
                                             (##cdr _arity1188411893_)))
                                        (let ((_arity11911_ _hd1188911906_))
                                          (if (##null? _tl1189011908_)
                                              (_K1188811903_ _arity11911_)
                                              (_E1188711897_))))
                                      (_E1188711897_))))))
                         (let ((_K1189111917_
                                (lambda ()
                                  (fx= (length _args11868_) _arity11883_))))
                           (if (fixnum? _arity1188411893_)
                               (_K1189111917_)
                               (_try-match1188611913_)))))))))
            (if (##structure-instance-of?
                 _self1186911876_
                 (##type-id gxc#!lambda::t))
                (let ((_e1187311923_ (##vector-ref _self1186911876_ '1)))
                  (let ((_e1187411926_ (##vector-ref _self1186911876_ '2)))
                    (let ((_arity11929_ _e1187411926_))
                      (_K1187211920_ _arity11929_))))
                (_E1187111880_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx11807_)
      (let ((_g1180911823_
             (lambda (_g1181011820_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1181011820_))))
        (let ((_g1180811864_
               (lambda (_g1181011826_)
                 (if (gx#stx-pair? _g1181011826_)
                     (let ((_e1181311828_ (gx#stx-e _g1181011826_)))
                       (let ((_hd1181411831_ (##car _e1181311828_))
                             (_tl1181511833_ (##cdr _e1181311828_)))
                         (if (gx#stx-pair? _tl1181511833_)
                             (let ((_e1181611836_ (gx#stx-e _tl1181511833_)))
                               (let ((_hd1181711839_ (##car _e1181611836_))
                                     (_tl1181811841_ (##cdr _e1181611836_)))
                                 ((lambda (_L11844_ _L11845_)
                                    (let ((_ctx11858_
                                           (gx#syntax-local-e__0 _L11845_)))
                                      (let ((_code11860_
                                             (##structure-ref
                                              _ctx11858_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code11860_))
                                           gx#current-expander-context
                                           _ctx11858_)))))
                                  _tl1181811841_
                                  _hd1181711839_)))
                             (_g1180911823_ _g1181011826_))))
                     (_g1180911823_ _g1181011826_)))))
          (_g1180811864_ _stx11807_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx11617_)
      (let ((_generate-e11619_
             (lambda (_id11796_)
               (let ((_sym11798_
                      (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                          (gxc#generate-runtime-binding-id _id11796_)
                          '#f)))
                 (let ((_$e11800_
                        (if _sym11798_
                            (gxc#optimizer-lookup-type _sym11798_)
                            '#f)))
                   (if _$e11800_
                       ((lambda (_type11803_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym11798_)
                            (let ((_typedecl11805_
                                   (call-method _type11803_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym11798_
                                          (cons _typedecl11805_ '()))))))
                        _$e11800_)
                       '(begin)))))))
        (let ((_g1162211660_
               (lambda (_g1162311657_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1162311657_))))
          (let ((_g1162111741_
                 (lambda (_g1162311663_)
                   (if (gx#stx-pair? _g1162311663_)
                       (let ((_e1163811665_ (gx#stx-e _g1162311663_)))
                         (let ((_hd1163911668_ (##car _e1163811665_))
                               (_tl1164011670_ (##cdr _e1163811665_)))
                           (if (gx#stx-pair? _tl1164011670_)
                               (let ((_e1164111673_ (gx#stx-e _tl1164011670_)))
                                 (let ((_hd1164211676_ (##car _e1164111673_))
                                       (_tl1164311678_ (##cdr _e1164111673_)))
                                   (if (gx#stx-pair/null? _hd1164211676_)
                                       (if (fx>= (gx#stx-length _hd1164211676_)
                                                 '0)
                                           (let ((_g20033_
                                                  (gx#syntax-split-splice
                                                   _hd1164211676_
                                                   '0)))
                                             (begin
                                               (let ((_g20034_
                                                      (values-count _g20033_)))
                                                 (if (not (fx= _g20034_ 2))
                                                     (error "Context expects 2 values"
                                                            _g20034_)))
                                               (let ((_target1164411681_
                                                      (values-ref _g20033_ 0))
                                                     (_tl1164611683_
                                                      (values-ref _g20033_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1164611683_)
                                                     (letrec ((_loop1164711686_
                                                               (lambda (_hd1164511689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1165111691_)
                         (if (gx#stx-pair? _hd1164511689_)
                             (let ((_e1164811694_ (gx#stx-e _hd1164511689_)))
                               (let ((_lp-hd1164911697_ (##car _e1164811694_))
                                     (_lp-tl1165011699_ (##cdr _e1164811694_)))
                                 (_loop1164711686_
                                  _lp-tl1165011699_
                                  (cons _lp-hd1164911697_ _id1165111691_))))
                             (let ((_id1165211702_ (reverse _id1165111691_)))
                               (if (gx#stx-pair? _tl1164311678_)
                                   (let ((_e1165311705_
                                          (gx#stx-e _tl1164311678_)))
                                     (let ((_hd1165411708_
                                            (##car _e1165311705_))
                                           (_tl1165511710_
                                            (##cdr _e1165311705_)))
                                       (if (gx#stx-null? _tl1165511710_)
                                           ((lambda (_L11713_)
                                              (let ((_types11739_
                                                     (map _generate-e11619_
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1173111734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1173211736_)
                              (cons _g1173111734_ _g1173211736_))
                            '()
                            _L11713_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'begin _types11739_)))
                                            _id1165211702_)
                                           (_g1162211660_ _g1162311663_))))
                                   (_g1162211660_ _g1162311663_)))))))
               (_loop1164711686_ _target1164411681_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1162211660_
                                                      _g1162311663_)))))
                                           (_g1162211660_ _g1162311663_))
                                       (_g1162211660_ _g1162311663_))))
                               (_g1162211660_ _g1162311663_))))
                       (_g1162211660_ _g1162311663_)))))
            (let ((_g1162011793_
                   (lambda (_g1162311744_)
                     (if (gx#stx-pair? _g1162311744_)
                         (let ((_e1162511746_ (gx#stx-e _g1162311744_)))
                           (let ((_hd1162611749_ (##car _e1162511746_))
                                 (_tl1162711751_ (##cdr _e1162511746_)))
                             (if (gx#stx-pair? _tl1162711751_)
                                 (let ((_e1162811754_
                                        (gx#stx-e _tl1162711751_)))
                                   (let ((_hd1162911757_ (##car _e1162811754_))
                                         (_tl1163011759_
                                          (##cdr _e1162811754_)))
                                     (if (gx#stx-pair? _hd1162911757_)
                                         (let ((_e1163111762_
                                                (gx#stx-e _hd1162911757_)))
                                           (let ((_hd1163211765_
                                                  (##car _e1163111762_))
                                                 (_tl1163311767_
                                                  (##cdr _e1163111762_)))
                                             (if (gx#stx-null? _tl1163311767_)
                                                 (if (gx#stx-pair?
                                                      _tl1163011759_)
                                                     (let ((_e1163411770_
                                                            (gx#stx-e
                                                             _tl1163011759_)))
                                                       (let ((_hd1163511773_
                                                              (##car _e1163411770_))
                                                             (_tl1163611775_
                                                              (##cdr _e1163411770_)))
                                                         (if (gx#stx-null?
                                                              _tl1163611775_)
                                                             ((lambda (_L11778_)
                                                                (_generate-e11619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11778_))
                      _hd1163211765_)
                     (_g1162111741_ _g1162311744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1162111741_
                                                      _g1162311744_))
                                                 (_g1162111741_
                                                  _g1162311744_))))
                                         (_g1162111741_ _g1162311744_))))
                                 (_g1162111741_ _g1162311744_))))
                         (_g1162111741_ _g1162311744_)))))
              (_g1162011793_ _stx11617_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx11171_)
      (let ((_g1117511277_
             (lambda (_g1117611274_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1117611274_))))
        (let ((_g1117411284_ (lambda (_g1117611280_) ((lambda () '(begin))))))
          (let ((_g1117311434_
                 (lambda (_g1117611287_)
                   (if (gx#stx-pair? _g1117611287_)
                       (let ((_e1123411289_ (gx#stx-e _g1117611287_)))
                         (let ((_hd1123511292_ (##car _e1123411289_))
                               (_tl1123611294_ (##cdr _e1123411289_)))
                           (if (gx#stx-pair? _tl1123611294_)
                               (let ((_e1123711297_ (gx#stx-e _tl1123611294_)))
                                 (let ((_hd1123811300_ (##car _e1123711297_))
                                       (_tl1123911302_ (##cdr _e1123711297_)))
                                   (if (gx#stx-pair? _hd1123811300_)
                                       (let ((_e1124011305_
                                              (gx#stx-e _hd1123811300_)))
                                         (let ((_hd1124111308_
                                                (##car _e1124011305_))
                                               (_tl1124211310_
                                                (##cdr _e1124011305_)))
                                           (if (gx#identifier? _hd1124111308_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1124111308_)
                                                   (if (gx#stx-pair?
                                                        _tl1124211310_)
                                                       (let ((_e1124311313_
                                                              (gx#stx-e
                                                               _tl1124211310_)))
                                                         (let ((_hd1124411316_
                                                                (##car _e1124311313_))
                                                               (_tl1124511318_
                                                                (##cdr _e1124311313_)))
                                                           (if (gx#stx-null?
                                                                _tl1124511318_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1123911302_)
                           (let ((_e1124611321_ (gx#stx-e _tl1123911302_)))
                             (let ((_hd1124711324_ (##car _e1124611321_))
                                   (_tl1124811326_ (##cdr _e1124611321_)))
                               (if (gx#stx-pair? _hd1124711324_)
                                   (let ((_e1124911329_
                                          (gx#stx-e _hd1124711324_)))
                                     (let ((_hd1125011332_
                                            (##car _e1124911329_))
                                           (_tl1125111334_
                                            (##cdr _e1124911329_)))
                                       (if (gx#identifier? _hd1125011332_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1125011332_)
                                               (if (gx#stx-pair?
                                                    _tl1125111334_)
                                                   (let ((_e1125211337_
                                                          (gx#stx-e
                                                           _tl1125111334_)))
                                                     (let ((_hd1125311340_
                                                            (##car _e1125211337_))
                                                           (_tl1125411342_
                                                            (##cdr _e1125211337_)))
                                                       (if (gx#stx-null?
                                                            _tl1125411342_)
                                                           (if (gx#stx-pair?
                                                                _tl1124811326_)
                                                               (let ((_e1125511345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1124811326_)))
                         (let ((_hd1125611348_ (##car _e1125511345_))
                               (_tl1125711350_ (##cdr _e1125511345_)))
                           (if (gx#stx-pair? _hd1125611348_)
                               (let ((_e1125811353_ (gx#stx-e _hd1125611348_)))
                                 (let ((_hd1125911356_ (##car _e1125811353_))
                                       (_tl1126011358_ (##cdr _e1125811353_)))
                                   (if (gx#identifier? _hd1125911356_)
                                       (if (gx#stx-eq? '%#quote _hd1125911356_)
                                           (if (gx#stx-pair? _tl1126011358_)
                                               (let ((_e1126111361_
                                                      (gx#stx-e
                                                       _tl1126011358_)))
                                                 (let ((_hd1126211364_
                                                        (##car _e1126111361_))
                                                       (_tl1126311366_
                                                        (##cdr _e1126111361_)))
                                                   (if (gx#stx-null?
                                                        _tl1126311366_)
                                                       (if (gx#stx-pair?
                                                            _tl1125711350_)
                                                           (let ((_e1126411369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1125711350_)))
                     (let ((_hd1126511372_ (##car _e1126411369_))
                           (_tl1126611374_ (##cdr _e1126411369_)))
                       (if (gx#stx-pair? _hd1126511372_)
                           (let ((_e1126711377_ (gx#stx-e _hd1126511372_)))
                             (let ((_hd1126811380_ (##car _e1126711377_))
                                   (_tl1126911382_ (##cdr _e1126711377_)))
                               (if (gx#identifier? _hd1126811380_)
                                   (if (gx#stx-eq? '%#ref _hd1126811380_)
                                       (if (gx#stx-pair? _tl1126911382_)
                                           (let ((_e1127011385_
                                                  (gx#stx-e _tl1126911382_)))
                                             (let ((_hd1127111388_
                                                    (##car _e1127011385_))
                                                   (_tl1127211390_
                                                    (##cdr _e1127011385_)))
                                               (if (gx#stx-null?
                                                    _tl1127211390_)
                                                   (if (gx#stx-null?
                                                        _tl1126611374_)
                                                       ((lambda (_L11393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11394_
                         _L11395_
                         _L11396_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#generate-runtime-binding-id _L11395_)
                                  (cons (gx#stx-e _L11394_)
                                        (cons (gxc#generate-runtime-binding-id
                                               _L11393_)
                                              (cons '#f '())))))
                      (_g1117411284_ _g1117611287_)))
                _hd1127111388_
                _hd1126211364_
                _hd1125311340_
                _hd1124411316_)
               (_g1117411284_ _g1117611287_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1117411284_
                                                    _g1117611287_))))
                                           (_g1117411284_ _g1117611287_))
                                       (_g1117411284_ _g1117611287_))
                                   (_g1117411284_ _g1117611287_))))
                           (_g1117411284_ _g1117611287_))))
                   (_g1117411284_ _g1117611287_))
               (_g1117411284_ _g1117611287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1117411284_ _g1117611287_))
                                           (_g1117411284_ _g1117611287_))
                                       (_g1117411284_ _g1117611287_))))
                               (_g1117411284_ _g1117611287_))))
                       (_g1117411284_ _g1117611287_))
                   (_g1117411284_ _g1117611287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1117411284_
                                                    _g1117611287_))
                                               (_g1117411284_ _g1117611287_))
                                           (_g1117411284_ _g1117611287_))))
                                   (_g1117411284_ _g1117611287_))))
                           (_g1117411284_ _g1117611287_))
                       (_g1117411284_ _g1117611287_))))
               (_g1117411284_ _g1117611287_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1117411284_
                                                    _g1117611287_))
                                               (_g1117411284_ _g1117611287_))))
                                       (_g1117411284_ _g1117611287_))))
                               (_g1117411284_ _g1117611287_))))
                       (_g1117411284_ _g1117611287_)))))
            (let ((_g1117211614_
                   (lambda (_g1117611437_)
                     (if (gx#stx-pair? _g1117611437_)
                         (let ((_e1118211439_ (gx#stx-e _g1117611437_)))
                           (let ((_hd1118311442_ (##car _e1118211439_))
                                 (_tl1118411444_ (##cdr _e1118211439_)))
                             (if (gx#stx-pair? _tl1118411444_)
                                 (let ((_e1118511447_
                                        (gx#stx-e _tl1118411444_)))
                                   (let ((_hd1118611450_ (##car _e1118511447_))
                                         (_tl1118711452_
                                          (##cdr _e1118511447_)))
                                     (if (gx#stx-pair? _hd1118611450_)
                                         (let ((_e1118811455_
                                                (gx#stx-e _hd1118611450_)))
                                           (let ((_hd1118911458_
                                                  (##car _e1118811455_))
                                                 (_tl1119011460_
                                                  (##cdr _e1118811455_)))
                                             (if (gx#identifier?
                                                  _hd1118911458_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1118911458_)
                                                     (if (gx#stx-pair?
                                                          _tl1119011460_)
                                                         (let ((_e1119111463_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1119011460_)))
                   (let ((_hd1119211466_ (##car _e1119111463_))
                         (_tl1119311468_ (##cdr _e1119111463_)))
                     (if (gx#stx-null? _tl1119311468_)
                         (if (gx#stx-pair? _tl1118711452_)
                             (let ((_e1119411471_ (gx#stx-e _tl1118711452_)))
                               (let ((_hd1119511474_ (##car _e1119411471_))
                                     (_tl1119611476_ (##cdr _e1119411471_)))
                                 (if (gx#stx-pair? _hd1119511474_)
                                     (let ((_e1119711479_
                                            (gx#stx-e _hd1119511474_)))
                                       (let ((_hd1119811482_
                                              (##car _e1119711479_))
                                             (_tl1119911484_
                                              (##cdr _e1119711479_)))
                                         (if (gx#identifier? _hd1119811482_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1119811482_)
                                                 (if (gx#stx-pair?
                                                      _tl1119911484_)
                                                     (let ((_e1120011487_
                                                            (gx#stx-e
                                                             _tl1119911484_)))
                                                       (let ((_hd1120111490_
                                                              (##car _e1120011487_))
                                                             (_tl1120211492_
                                                              (##cdr _e1120011487_)))
                                                         (if (gx#stx-null?
                                                              _tl1120211492_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1119611476_)
                         (let ((_e1120311495_ (gx#stx-e _tl1119611476_)))
                           (let ((_hd1120411498_ (##car _e1120311495_))
                                 (_tl1120511500_ (##cdr _e1120311495_)))
                             (if (gx#stx-pair? _hd1120411498_)
                                 (let ((_e1120611503_
                                        (gx#stx-e _hd1120411498_)))
                                   (let ((_hd1120711506_ (##car _e1120611503_))
                                         (_tl1120811508_
                                          (##cdr _e1120611503_)))
                                     (if (gx#identifier? _hd1120711506_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1120711506_)
                                             (if (gx#stx-pair? _tl1120811508_)
                                                 (let ((_e1120911511_
                                                        (gx#stx-e
                                                         _tl1120811508_)))
                                                   (let ((_hd1121011514_
                                                          (##car _e1120911511_))
                                                         (_tl1121111516_
                                                          (##cdr _e1120911511_)))
                                                     (if (gx#stx-null?
                                                          _tl1121111516_)
                                                         (if (gx#stx-pair?
                                                              _tl1120511500_)
                                                             (let ((_e1121211519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1120511500_)))
                       (let ((_hd1121311522_ (##car _e1121211519_))
                             (_tl1121411524_ (##cdr _e1121211519_)))
                         (if (gx#stx-pair? _hd1121311522_)
                             (let ((_e1121511527_ (gx#stx-e _hd1121311522_)))
                               (let ((_hd1121611530_ (##car _e1121511527_))
                                     (_tl1121711532_ (##cdr _e1121511527_)))
                                 (if (gx#identifier? _hd1121611530_)
                                     (if (gx#stx-eq? '%#ref _hd1121611530_)
                                         (if (gx#stx-pair? _tl1121711532_)
                                             (let ((_e1121811535_
                                                    (gx#stx-e _tl1121711532_)))
                                               (let ((_hd1121911538_
                                                      (##car _e1121811535_))
                                                     (_tl1122011540_
                                                      (##cdr _e1121811535_)))
                                                 (if (gx#stx-null?
                                                      _tl1122011540_)
                                                     (if (gx#stx-pair?
                                                          _tl1121411524_)
                                                         (let ((_e1122111543_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1121411524_)))
                   (let ((_hd1122211546_ (##car _e1122111543_))
                         (_tl1122311548_ (##cdr _e1122111543_)))
                     (if (gx#stx-pair? _hd1122211546_)
                         (let ((_e1122411551_ (gx#stx-e _hd1122211546_)))
                           (let ((_hd1122511554_ (##car _e1122411551_))
                                 (_tl1122611556_ (##cdr _e1122411551_)))
                             (if (gx#identifier? _hd1122511554_)
                                 (if (gx#stx-eq? '%#quote _hd1122511554_)
                                     (if (gx#stx-pair? _tl1122611556_)
                                         (let ((_e1122711559_
                                                (gx#stx-e _tl1122611556_)))
                                           (let ((_hd1122811562_
                                                  (##car _e1122711559_))
                                                 (_tl1122911564_
                                                  (##cdr _e1122711559_)))
                                             (if (gx#stx-null? _tl1122911564_)
                                                 (if (gx#stx-null?
                                                      _tl1122311548_)
                                                     ((lambda (_L11567_
                                                               _L11568_
                                                               _L11569_
                                                               _L11570_
                                                               _L11571_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11571_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#generate-runtime-binding-id _L11570_)
                                (cons (gx#stx-e _L11569_)
                                      (cons (gxc#generate-runtime-binding-id
                                             _L11568_)
                                            (cons (gx#stx-e _L11567_) '())))))
                    (_g1117311434_ _g1117611437_)))
              _hd1122811562_
              _hd1121911538_
              _hd1121011514_
              _hd1120111490_
              _hd1119211466_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1117311434_
                                                      _g1117611437_))
                                                 (_g1117311434_
                                                  _g1117611437_))))
                                         (_g1117311434_ _g1117611437_))
                                     (_g1117311434_ _g1117611437_))
                                 (_g1117311434_ _g1117611437_))))
                         (_g1117311434_ _g1117611437_))))
                 (_g1117311434_ _g1117611437_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1117311434_
                                                      _g1117611437_))))
                                             (_g1117311434_ _g1117611437_))
                                         (_g1117311434_ _g1117611437_))
                                     (_g1117311434_ _g1117611437_))))
                             (_g1117311434_ _g1117611437_))))
                     (_g1117311434_ _g1117611437_))
                 (_g1117311434_ _g1117611437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1117311434_ _g1117611437_))
                                             (_g1117311434_ _g1117611437_))
                                         (_g1117311434_ _g1117611437_))))
                                 (_g1117311434_ _g1117611437_))))
                         (_g1117311434_ _g1117611437_))
                     (_g1117311434_ _g1117611437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1117311434_
                                                      _g1117611437_))
                                                 (_g1117311434_ _g1117611437_))
                                             (_g1117311434_ _g1117611437_))))
                                     (_g1117311434_ _g1117611437_))))
                             (_g1117311434_ _g1117611437_))
                         (_g1117311434_ _g1117611437_))))
                 (_g1117311434_ _g1117611437_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1117311434_
                                                      _g1117611437_))
                                                 (_g1117311434_
                                                  _g1117611437_))))
                                         (_g1117311434_ _g1117611437_))))
                                 (_g1117311434_ _g1117611437_))))
                         (_g1117311434_ _g1117611437_)))))
              (_g1117211614_ _stx11171_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self11147_)
      (let ((_self1114811154_ _self11147_))
        (let ((_E1115011158_
               (lambda () (error '"No clause matching" _self1114811154_))))
          (let ((_K1115111163_
                 (lambda (_alias-id11161_)
                   (cons '@alias (cons _alias-id11161_ '())))))
            (if (##structure-instance-of?
                 _self1114811154_
                 (##type-id gxc#!alias::t))
                (let ((_e1115211166_ (##vector-ref _self1114811154_ '1)))
                  (let ((_alias-id11169_ _e1115211166_))
                    (_K1115111163_ _alias-id11169_)))
                (_E1115011158_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self11091_)
      (let ((_self1109211103_ _self11091_))
        (let ((_E1109411107_
               (lambda () (error '"No clause matching" _self1109211103_))))
          (let ((_K1109511116_
                 (lambda (_plist11110_
                          _ctor11111_
                          _fields11112_
                          _super11113_
                          _type-id11114_)
                   (cons '@struct-type
                         (cons _type-id11114_
                               (cons _super11113_
                                     (cons _fields11112_
                                           (cons _ctor11111_
                                                 (cons _plist11110_
                                                       '())))))))))
            (if (##structure-instance-of?
                 _self1109211103_
                 (##type-id gxc#!struct-type::t))
                (let ((_e1109611119_ (##vector-ref _self1109211103_ '1)))
                  (let ((_type-id11122_ _e1109611119_))
                    (let ((_e1109711124_ (##vector-ref _self1109211103_ '2)))
                      (let ((_super11127_ _e1109711124_))
                        (let ((_e1109811129_
                               (##vector-ref _self1109211103_ '3)))
                          (let ((_fields11132_ _e1109811129_))
                            (let ((_e1109911134_
                                   (##vector-ref _self1109211103_ '4)))
                              (let ((_e1110011137_
                                     (##vector-ref _self1109211103_ '5)))
                                (let ((_ctor11140_ _e1110011137_))
                                  (let ((_e1110111142_
                                         (##vector-ref _self1109211103_ '6)))
                                    (let ((_plist11145_ _e1110111142_))
                                      (_K1109511116_
                                       _plist11145_
                                       _ctor11140_
                                       _fields11132_
                                       _super11127_
                                       _type-id11122_))))))))))))
                (_E1109411107_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self11067_)
      (let ((_self1106811074_ _self11067_))
        (let ((_E1107011078_
               (lambda () (error '"No clause matching" _self1106811074_))))
          (let ((_K1107111083_
                 (lambda (_struct-t11081_)
                   (cons '@struct-pred (cons _struct-t11081_ '())))))
            (if (##structure-instance-of?
                 _self1106811074_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1107211086_ (##vector-ref _self1106811074_ '1)))
                  (let ((_struct-t11089_ _e1107211086_))
                    (_K1107111083_ _struct-t11089_)))
                (_E1107011078_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self11043_)
      (let ((_self1104411050_ _self11043_))
        (let ((_E1104611054_
               (lambda () (error '"No clause matching" _self1104411050_))))
          (let ((_K1104711059_
                 (lambda (_struct-t11057_)
                   (cons '@struct-cons (cons _struct-t11057_ '())))))
            (if (##structure-instance-of?
                 _self1104411050_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1104811062_ (##vector-ref _self1104411050_ '1)))
                  (let ((_struct-t11065_ _e1104811062_))
                    (_K1104711059_ _struct-t11065_)))
                (_E1104611054_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self11005_)
      (let ((_self1100611014_ _self11005_))
        (let ((_E1100811018_
               (lambda () (error '"No clause matching" _self1100611014_))))
          (let ((_K1100911025_
                 (lambda (_unchecked?11021_ _off11022_ _struct-t11023_)
                   (cons '@struct-getf
                         (cons _struct-t11023_
                               (cons _off11022_
                                     (cons _unchecked?11021_ '())))))))
            (if (##structure-instance-of?
                 _self1100611014_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1101011028_ (##vector-ref _self1100611014_ '1)))
                  (let ((_struct-t11031_ _e1101011028_))
                    (let ((_e1101111033_ (##vector-ref _self1100611014_ '2)))
                      (let ((_off11036_ _e1101111033_))
                        (let ((_e1101211038_
                               (##vector-ref _self1100611014_ '3)))
                          (let ((_unchecked?11041_ _e1101211038_))
                            (_K1100911025_
                             _unchecked?11041_
                             _off11036_
                             _struct-t11031_)))))))
                (_E1100811018_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self10967_)
      (let ((_self1096810976_ _self10967_))
        (let ((_E1097010980_
               (lambda () (error '"No clause matching" _self1096810976_))))
          (let ((_K1097110987_
                 (lambda (_unchecked?10983_ _off10984_ _struct-t10985_)
                   (cons '@struct-setf
                         (cons _struct-t10985_
                               (cons _off10984_
                                     (cons _unchecked?10983_ '())))))))
            (if (##structure-instance-of?
                 _self1096810976_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1097210990_ (##vector-ref _self1096810976_ '1)))
                  (let ((_struct-t10993_ _e1097210990_))
                    (let ((_e1097310995_ (##vector-ref _self1096810976_ '2)))
                      (let ((_off10998_ _e1097310995_))
                        (let ((_e1097411000_
                               (##vector-ref _self1096810976_ '3)))
                          (let ((_unchecked?11003_ _e1097411000_))
                            (_K1097110987_
                             _unchecked?11003_
                             _off10998_
                             _struct-t10993_)))))))
                (_E1097010980_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self10915_)
      (let ((_self1091610926_ _self10915_))
        (let ((_E1091810930_
               (lambda () (error '"No clause matching" _self1091610926_))))
          (let ((_K1091910941_
                 (lambda (_typedecl10933_
                          _inline10934_
                          _dispatch10935_
                          _arity10936_)
                   (if _inline10934_
                       (let ((_$e10938_ _typedecl10933_))
                         (if _$e10938_
                             _$e10938_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity10936_
                                   (cons _dispatch10935_ '())))))))
            (if (##structure-instance-of?
                 _self1091610926_
                 (##type-id gxc#!lambda::t))
                (let ((_e1092010944_ (##vector-ref _self1091610926_ '1)))
                  (let ((_e1092110947_ (##vector-ref _self1091610926_ '2)))
                    (let ((_arity10950_ _e1092110947_))
                      (let ((_e1092210952_ (##vector-ref _self1091610926_ '3)))
                        (let ((_dispatch10955_ _e1092210952_))
                          (let ((_e1092310957_
                                 (##vector-ref _self1091610926_ '4)))
                            (let ((_inline10960_ _e1092310957_))
                              (let ((_e1092410962_
                                     (##vector-ref _self1091610926_ '5)))
                                (let ((_typedecl10965_ _e1092410962_))
                                  (_K1091910941_
                                   _typedecl10965_
                                   _inline10960_
                                   _dispatch10955_
                                   _arity10950_))))))))))
                (_E1091810930_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self10848_)
      (let ((_clause-e10850_
             (lambda (_clause10880_)
               (let ((_clause1088110889_ _clause10880_))
                 (let ((_E1088310893_
                        (lambda ()
                          (error '"No clause matching" _clause1088110889_))))
                   (let ((_K1088410899_
                          (lambda (_dispatch10896_ _arity10897_)
                            (cons _arity10897_ (cons _dispatch10896_ '())))))
                     (if (##structure-instance-of?
                          _clause1088110889_
                          (##type-id gxc#!lambda::t))
                         (let ((_e1088510902_
                                (##vector-ref _clause1088110889_ '1)))
                           (let ((_e1088610905_
                                  (##vector-ref _clause1088110889_ '2)))
                             (let ((_arity10908_ _e1088610905_))
                               (let ((_e1088710910_
                                      (##vector-ref _clause1088110889_ '3)))
                                 (let ((_dispatch10913_ _e1088710910_))
                                   (_K1088410899_
                                    _dispatch10913_
                                    _arity10908_))))))
                         (_E1088310893_))))))))
        (let ((_self1085110858_ _self10848_))
          (let ((_E1085310862_
                 (lambda () (error '"No clause matching" _self1085110858_))))
            (let ((_K1085410869_
                   (lambda (_clauses10865_)
                     (let ((_clauses10867_
                            (map _clause-e10850_ _clauses10865_)))
                       (cons '@case-lambda _clauses10867_)))))
              (if (##structure-instance-of?
                   _self1085110858_
                   (##type-id gxc#!case-lambda::t))
                  (let ((_e1085510872_ (##vector-ref _self1085110858_ '1)))
                    (let ((_e1085610875_ (##vector-ref _self1085110858_ '2)))
                      (let ((_clauses10878_ _e1085610875_))
                        (_K1085410869_ _clauses10878_))))
                  (_E1085310862_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx10846_) (gxc#generate-runtime-binding-id _stx10846_))))
