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
    (lambda _$args19952_
      (apply make-struct-instance gxc#optimizer-info::t _$args19952_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self19950_)
      (struct-instance-init!
       _self19950_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj19964 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj19964) __obj19964))))))
  (define gxc#optimize!
    (lambda (_ctx19944_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx19944_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx19944_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code19947_
                  (gxc#optimize-source
                   (##structure-ref _ctx19944_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx19944_
              _code19947_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx19889_)
      (let ((_deps19891_
             (let ((_imports19935_
                    (##structure-ref _ctx19889_ '8 gx#module-context::t '#f)))
               (let ((_$e19937_
                      (gx#core-context-prelude__opt-lambda11357 _ctx19889_)))
                 (if _$e19937_
                     ((lambda (_g1993919941_)
                        (cons _g1993919941_ _imports19935_))
                      _$e19937_)
                     _imports19935_)))))
        ((letrec ((_lp19893_
                   (lambda (_rest19895_)
                     (let ((_rest1989619904_ _rest19895_))
                       (let ((_E1989919908_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1989619904_))))
                         (let ((_else1989819912_ (lambda () '#!void)))
                           (let ((_K1990019923_
                                  (lambda (_rest19915_ _hd19916_)
                                    (if (##structure-instance-of?
                                         _hd19916_
                                         'gx#module-context::t)
                                        (begin
                                          (if (table-ref
                                               (##structure-ref
                                                (gxc#current-compile-optimizer-info)
                                                '2
                                                gxc#optimizer-info::t
                                                '#f)
                                               (##structure-ref
                                                _hd19916_
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '#f)
                                              '#!void
                                              (begin
                                                (let ((_$e19918_
                                                       (gx#core-context-prelude__opt-lambda11357
                                                        _hd19916_)))
                                                  (if _$e19918_
                                                      ((lambda (_pre19921_)
                                                         (_lp19893_
                                                          (cons _pre19921_
                                                                (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd19916_
                         '8
                         gx#module-context::t
                         '#f))))
               _$e19918_)
              (_lp19893_
               (##structure-ref _hd19916_ '8 gx#module-context::t '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#optimizer-load-ssxi
                                                 _hd19916_)))
                                          (_lp19893_ _rest19915_))
                                        (if (##structure-instance-of?
                                             _hd19916_
                                             'gx#prelude-context::t)
                                            (begin
                                              (if (table-ref
                                                   (##structure-ref
                                                    (gxc#current-compile-optimizer-info)
                                                    '2
                                                    gxc#optimizer-info::t
                                                    '#f)
                                                   (##structure-ref
                                                    _hd19916_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   '#f)
                                                  '#!void
                                                  (begin
                                                    (_lp19893_
                                                     (##structure-ref
                                                      _hd19916_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f))
                                                    (gxc#optimizer-load-ssxi
                                                     _hd19916_)))
                                              (_lp19893_ _rest19915_))
                                            (if (##structure-direct-instance-of?
                                                 _hd19916_
                                                 'gx#module-import::t)
                                                (_lp19893_
                                                 (cons (##direct-structure-ref
                                                        _hd19916_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       _rest19915_))
                                                (if (##structure-direct-instance-of?
                                                     _hd19916_
                                                     'gx#module-export::t)
                                                    (_lp19893_
                                                     (cons (##direct-structure-ref
                                                            _hd19916_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)
                                                           _rest19915_))
                                                    (if (##structure-direct-instance-of?
                                                         _hd19916_
                                                         'gx#import-set::t)
                                                        (_lp19893_
                                                         (cons (##direct-structure-ref
                                                                _hd19916_
                                                                '1
                                                                gx#import-set::t
                                                                '#f)
                                                               _rest19915_))
                                                        (error '"Unexpected module import"
                                                               _hd19916_)))))))))
                             (if (##pair? _rest1989619904_)
                                 (let ((_hd1990119926_
                                        (##car _rest1989619904_))
                                       (_tl1990219928_
                                        (##cdr _rest1989619904_)))
                                   (let ((_hd19931_ _hd1990119926_))
                                     (let ((_rest19933_ _tl1990219928_))
                                       (_K1990019923_ _rest19933_ _hd19931_))))
                                 (_else1989819912_)))))))))
           _lp19893_)
         _deps19891_))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx19869_)
      (if (if (##structure-instance-of? _ctx19869_ 'gx#module-context::t)
              (list? (##structure-ref _ctx19869_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht19871_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id19873_
                   (##structure-ref _ctx19869_ '1 gx#expander-context::t '#f)))
              (let ((_mod19875_ (table-ref _ht19871_ _id19873_ '#f)))
                (let ()
                  (let ((_$e19878_ _mod19875_))
                    (if _$e19878_
                        _$e19878_
                        (let ((_mod19881_
                               (gxc#optimizer-import-ssxi _ctx19869_)))
                          (let ((_val19886_
                                 (let ((_$e19883_ _mod19881_))
                                   (if _$e19883_ _$e19883_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht19871_ _id19873_ _val19886_)
                                _val19886_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx19846_)
      (let ((_catch-e19848_
             (lambda (_exn19867_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx19846_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn19867_))
                     '#!void)
                 '#f))))
        (let ((_import-e19849_
               (lambda ()
                 (let ((_str-id19852_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx19846_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path19860_
                          (let ((_odir1985319855_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1985319855_
                                (let ((_odir19858_ _odir1985319855_))
                                  (path-expand
                                   (string-append _str-id19852_ '".ss")
                                   _odir19858_))
                                '#f))))
                     (let ((_library-path19862_
                            (string->symbol
                             (string-append '":" _str-id19852_ '".ss"))))
                       (let ((_ssxi-path19864_
                              (if (if _artefact-path19860_
                                      (file-exists? _artefact-path19860_)
                                      '#f)
                                  _artefact-path19860_
                                  _library-path19862_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path19864_)
                             (gx#import-module__opt-lambda11392
                              _ssxi-path19864_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx19846_ '1 gx#expander-context::t '#f)
              (with-exception-catcher _catch-e19848_ _import-e19849_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args19843_
      (apply make-struct-instance gxc#!type::t _$args19843_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args19840_
      (apply make-struct-instance gxc#!alias::t _$args19840_)))
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
    (lambda _$args19837_
      (apply make-struct-instance gxc#!struct-type::t _$args19837_)))
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
    (lambda _$args19834_
      (apply make-struct-instance gxc#!procedure::t _$args19834_)))
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
    (lambda _$args19831_
      (apply make-struct-instance gxc#!struct-pred::t _$args19831_)))
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
    (lambda _$args19828_
      (apply make-struct-instance gxc#!struct-cons::t _$args19828_)))
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
    (lambda _$args19825_
      (apply make-struct-instance gxc#!struct-getf::t _$args19825_)))
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
    (lambda _$args19822_
      (apply make-struct-instance gxc#!struct-setf::t _$args19822_)))
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
    (lambda _$args19819_
      (apply make-struct-instance gxc#!lambda::t _$args19819_)))
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
    (lambda _$args19816_
      (apply make-struct-instance gxc#!case-lambda::t _$args19816_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self19808_
             _id19809_
             _super19810_
             _fields19811_
             _xfields19812_
             _ctor19813_
             _plist19814_)
      (struct-instance-init!
       _self19808_
       _id19809_
       _super19810_
       _fields19811_
       _xfields19812_
       _ctor19813_
       _plist19814_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda19772
      (lambda (_self19774_
               _id19775_
               _arity19776_
               _dispatch19777_
               _inline19778_
               _typedecl19779_)
        (struct-instance-init!
         _self19774_
         _id19775_
         _arity19776_
         _dispatch19777_
         _inline19778_
         _typedecl19779_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self19784_ _id19785_ _arity19786_ _dispatch19787_)
          (let ((_inline19789_ '#f))
            (let ((_typedecl19791_ '#f))
              (struct-instance-init!
               _self19784_
               _id19785_
               _arity19786_
               _dispatch19787_
               _inline19789_
               _typedecl19791_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self19793_
                 _id19794_
                 _arity19795_
                 _dispatch19796_
                 _inline19797_)
          (let ((_typedecl19799_ '#f))
            (struct-instance-init!
             _self19793_
             _id19794_
             _arity19795_
             _dispatch19796_
             _inline19797_
             _typedecl19799_))))
      (define gxc#!lambda:::init!
        (lambda _g19972_
          (let ((_g19971_ (length _g19972_)))
            (cond ((fx= _g19971_ 4) (apply gxc#!lambda:::init!__0 _g19972_))
                  ((fx= _g19971_ 5) (apply gxc#!lambda:::init!__1 _g19972_))
                  ((fx= _g19971_ 6) (apply struct-instance-init! _g19972_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g19972_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type19766_)
      (let ((_$e19768_
             (##structure-ref _type19766_ '7 gxc#!struct-type::t '#f)))
        (if _$e19768_
            (values _$e19768_)
            (let ((_vtab19771_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type19766_
                 _vtab19771_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab19771_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type19757_ _method19758_)
      (let ((_vtab1975919761_
             (##structure-ref _type19757_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1975919761_
            (let ((_vtab19764_ _vtab1975919761_))
              (table-ref _vtab19764_ _method19758_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda19739
      (lambda (_sym19741_ _type19742_ _local?19743_)
        (begin
          (if (##structure-instance-of? _type19742_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym19741_
                     _type19742_))
          (gxc#verbose
           '"declare-type "
           _sym19741_
           '" "
           (struct->list _type19742_))
          (table-set!
           (if _local?19743_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym19741_
           _type19742_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym19748_ _type19749_)
          (let ((_local?19751_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda19739
             _sym19748_
             _type19749_
             _local?19751_))))
      (define gxc#optimizer-declare-type!
        (lambda _g19974_
          (let ((_g19973_ (length _g19974_)))
            (cond ((fx= _g19973_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g19974_))
                  ((fx= _g19973_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda19739
                          _g19974_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g19974_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda19715
      (lambda (_type-t19717_ _method19718_ _sym19719_ _rebind?19720_)
        (let ((_type19722_ (gxc#optimizer-resolve-type _type-t19717_)))
          (if (##structure-instance-of? _type19722_ 'gxc#!struct-type::t)
              (let ((_vtab19724_ (gxc#!struct-type-vtab _type19722_)))
                (if _rebind?19720_
                    (if (hash-key? _vtab19724_ _method19718_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t19717_
                         '" "
                         _method19718_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t19717_
                         '" "
                         _method19718_))
                    (if (hash-key? _vtab19724_ _method19718_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t19717_
                           '" "
                           _method19718_
                           '" => "
                           _sym19719_)
                          (table-set! _vtab19724_ _method19718_ _sym19719_)))))
              (if (not _type19722_)
                  (gxc#verbose '"declare-method: unknown type " _type-t19717_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t19717_
                         _type19722_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t19729_ _method19730_ _sym19731_)
          (let ((_rebind?19733_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda19715
             _type-t19729_
             _method19730_
             _sym19731_
             _rebind?19733_))))
      (define gxc#optimizer-declare-method!
        (lambda _g19976_
          (let ((_g19975_ (length _g19976_)))
            (cond ((fx= _g19975_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g19976_))
                  ((fx= _g19975_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda19715
                          _g19976_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g19976_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym19705_)
      (let ((_$e19713_
             (let ((_ht1970619708_ (gxc#current-compile-local-type)))
               (if _ht1970619708_
                   (let ((_ht19711_ _ht1970619708_))
                     (table-ref _ht19711_ _sym19705_ '#f))
                   '#f))))
        (if _$e19713_
            _$e19713_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym19705_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym19697_)
      (let ((_type1969819700_ (gxc#optimizer-lookup-type _sym19697_)))
        (if _type1969819700_
            (let ((_type19703_ _type1969819700_))
              (if (##structure-instance-of? _type19703_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type19703_ '1 gxc#!type::t '#f))
                  _type19703_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t19692_ _method19693_)
      (let ((_type19695_ (gxc#optimizer-resolve-type _type-t19692_)))
        (if (##structure-instance-of? _type19695_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type19695_ _method19693_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx19688_)
      (begin
        (gxc#apply-collect-mutators _stx19688_)
        (let ((_stx19690_ (gxc#apply-lift-top-lambdas _stx19688_)))
          (begin
            (gxc#apply-collect-type-info _stx19690_)
            (gxc#apply-optimize-call _stx19690_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl19685_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19685_ '%#lambda gxc#xform-identity)
           (table-set! _tbl19685_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl19685_ '%#let-values gxc#xform-identity)
           (table-set! _tbl19685_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl19685_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl19685_ '%#quote gxc#xform-identity)
           (table-set! _tbl19685_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19685_ '%#call gxc#xform-identity)
           (table-set! _tbl19685_ '%#if gxc#xform-identity)
           (table-set! _tbl19685_ '%#ref gxc#xform-identity)
           (table-set! _tbl19685_ '%#set! gxc#xform-identity)
           (table-set! _tbl19685_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl19685_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl19685_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl19685_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl19685_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl19685_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl19685_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl19685_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl19685_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl19681_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19681_ '%#begin gxc#xform-identity)
           (table-set! _tbl19681_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl19681_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl19681_ '%#module gxc#xform-identity)
           (table-set! _tbl19681_ '%#import gxc#xform-identity)
           (table-set! _tbl19681_ '%#export gxc#xform-identity)
           (table-set! _tbl19681_ '%#provide gxc#xform-identity)
           (table-set! _tbl19681_ '%#extern gxc#xform-identity)
           (table-set! _tbl19681_ '%#define-values gxc#xform-identity)
           (table-set! _tbl19681_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl19681_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl19681_ '%#declare gxc#xform-identity)
           _tbl19681_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl19677_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19677_ (force gxc#&identity-special-form))
           (hash-copy! _tbl19677_ (force gxc#&identity-expression))
           _tbl19677_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl19673_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19673_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl19673_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl19673_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl19673_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl19673_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl19673_ '%#quote gxc#xform-identity)
           (table-set! _tbl19673_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19673_ '%#call gxc#xform-operands)
           (table-set! _tbl19673_ '%#if gxc#xform-operands)
           (table-set! _tbl19673_ '%#ref gxc#xform-identity)
           (table-set! _tbl19673_ '%#set! gxc#xform-setq%)
           (table-set! _tbl19673_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl19673_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl19673_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl19673_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl19673_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl19673_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl19673_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl19673_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl19673_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl19669_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19669_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl19669_ (force gxc#&identity))
           (table-set! _tbl19669_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19669_ '%#module gxc#xform-module%)
           (table-set! _tbl19669_ '%#define-values gxc#xform-define-values%)
           _tbl19669_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl19665_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19665_ (force gxc#&void))
           (table-set! _tbl19665_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19665_ '%#module gxc#collect-module%)
           (table-set! _tbl19665_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19665_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19665_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl19665_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl19665_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl19665_ '%#call gxc#collect-operands)
           (table-set! _tbl19665_ '%#if gxc#collect-operands)
           (table-set! _tbl19665_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl19665_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl19665_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl19665_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl19665_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl19665_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl19665_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl19665_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl19665_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl19665_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx19658_ . _args19660_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19658_ _args19660_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl19655_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19655_ (force gxc#&basic-xform))
           (table-set!
            _tbl19655_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl19655_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl19655_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl19655_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl19655_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx19648_ . _args19650_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19648_ _args19650_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl19645_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19645_ (force gxc#&basic-xform-expression))
           (table-set! _tbl19645_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19645_ '%#ref gxc#expression-subst-ref%)
           _tbl19645_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx19638_ . _args19640_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19638_ _args19640_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl19635_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19635_ (force gxc#&void))
           (table-set! _tbl19635_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19635_ '%#module gxc#collect-module%)
           (table-set!
            _tbl19635_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl19635_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19635_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19635_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl19635_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl19635_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl19635_ '%#call gxc#collect-type-call%)
           (table-set! _tbl19635_ '%#if gxc#collect-operands)
           (table-set! _tbl19635_ '%#set! gxc#collect-body-setq%)
           _tbl19635_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx19628_ . _args19630_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19628_ _args19630_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl19625_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19625_ (force gxc#&false))
           (table-set! _tbl19625_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl19625_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl19625_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl19625_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl19625_ '%#ref gxc#basic-expression-type-ref%)
           _tbl19625_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx19618_ . _args19620_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19618_ _args19620_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl19615_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19615_ (force gxc#&basic-xform))
           (table-set! _tbl19615_ '%#call gxc#optimize-call%)
           _tbl19615_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx19608_ . _args19610_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19608_ _args19610_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl19605_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19605_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl19605_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl19605_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl19605_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl19605_ '%#call gxc#generate-ssxi-call%)
           _tbl19605_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx19598_ . _args19600_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19598_ _args19600_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx19595_ . _args19596_) _stx19595_))
  (define gxc#xform-wrap-source
    (lambda (_stx19592_ _src-stx19593_)
      (gx#stx-wrap-source _stx19592_ (gx#stx-source _src-stx19593_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args19586_)
      (lambda (_g1958719589_)
        (apply gxc#compile-e _g1958719589_ _args19586_))))
  (define gxc#xform-begin%
    (lambda (_stx19545_ . _args19546_)
      (let ((_g1954819558_
             (lambda (_g1954919555_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1954919555_))))
        (let ((_g1954719583_
               (lambda (_g1954919561_)
                 (if (gx#stx-pair? _g1954919561_)
                     (let ((_e1955119563_ (gx#stx-e _g1954919561_)))
                       (let ((_hd1955219566_ (##car _e1955119563_))
                             (_tl1955319568_ (##cdr _e1955119563_)))
                         ((lambda (_L19571_)
                            (let ((_forms19581_
                                   (map (gxc#xform-apply-compile-e _args19546_)
                                        _L19571_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms19581_)
                               _stx19545_)))
                          _tl1955319568_)))
                     (_g1954819558_ _g1954919561_)))))
          (_g1954719583_ _stx19545_)))))
  (define gxc#xform-module%
    (lambda (_stx19482_ . _args19483_)
      (let ((_g1948519499_
             (lambda (_g1948619496_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1948619496_))))
        (let ((_g1948419542_
               (lambda (_g1948619502_)
                 (if (gx#stx-pair? _g1948619502_)
                     (let ((_e1948919504_ (gx#stx-e _g1948619502_)))
                       (let ((_hd1949019507_ (##car _e1948919504_))
                             (_tl1949119509_ (##cdr _e1948919504_)))
                         (if (gx#stx-pair? _tl1949119509_)
                             (let ((_e1949219512_ (gx#stx-e _tl1949119509_)))
                               (let ((_hd1949319515_ (##car _e1949219512_))
                                     (_tl1949419517_ (##cdr _e1949219512_)))
                                 ((lambda (_L19520_ _L19521_)
                                    (let ((_ctx19534_
                                           (gx#syntax-local-e__0 _L19521_)))
                                      (let ((_code19536_
                                             (##structure-ref
                                              _ctx19534_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code19539_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code19536_
                                                         _args19483_))
                                                gx#current-expander-context
                                                _ctx19534_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx19534_
                                               _code19539_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L19521_
                                                           (cons _code19539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx19482_)))))))
                                  _tl1949419517_
                                  _hd1949319515_)))
                             (_g1948519499_ _g1948619502_))))
                     (_g1948519499_ _g1948619502_)))))
          (_g1948419542_ _stx19482_)))))
  (define gxc#xform-define-values%
    (lambda (_stx19412_ . _args19413_)
      (let ((_g1941519432_
             (lambda (_g1941619429_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1941619429_))))
        (let ((_g1941419479_
               (lambda (_g1941619435_)
                 (if (gx#stx-pair? _g1941619435_)
                     (let ((_e1941919437_ (gx#stx-e _g1941619435_)))
                       (let ((_hd1942019440_ (##car _e1941919437_))
                             (_tl1942119442_ (##cdr _e1941919437_)))
                         (if (gx#stx-pair? _tl1942119442_)
                             (let ((_e1942219445_ (gx#stx-e _tl1942119442_)))
                               (let ((_hd1942319448_ (##car _e1942219445_))
                                     (_tl1942419450_ (##cdr _e1942219445_)))
                                 (if (gx#stx-pair? _tl1942419450_)
                                     (let ((_e1942519453_
                                            (gx#stx-e _tl1942419450_)))
                                       (let ((_hd1942619456_
                                              (##car _e1942519453_))
                                             (_tl1942719458_
                                              (##cdr _e1942519453_)))
                                         (if (gx#stx-null? _tl1942719458_)
                                             ((lambda (_L19461_ _L19462_)
                                                (let ((_expr19477_
                                                       (apply gxc#compile-e
                                                              _L19461_
                                                              _args19413_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L19462_
                                                               (cons _expr19477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx19412_)))
                                              _hd1942619456_
                                              _hd1942319448_)
                                             (_g1941519432_ _g1941619435_))))
                                     (_g1941519432_ _g1941619435_))))
                             (_g1941519432_ _g1941619435_))))
                     (_g1941519432_ _g1941619435_)))))
          (_g1941419479_ _stx19412_)))))
  (define gxc#xform-lambda%
    (lambda (_stx19355_ . _args19356_)
      (let ((_g1935819372_
             (lambda (_g1935919369_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1935919369_))))
        (let ((_g1935719409_
               (lambda (_g1935919375_)
                 (if (gx#stx-pair? _g1935919375_)
                     (let ((_e1936219377_ (gx#stx-e _g1935919375_)))
                       (let ((_hd1936319380_ (##car _e1936219377_))
                             (_tl1936419382_ (##cdr _e1936219377_)))
                         (if (gx#stx-pair? _tl1936419382_)
                             (let ((_e1936519385_ (gx#stx-e _tl1936419382_)))
                               (let ((_hd1936619388_ (##car _e1936519385_))
                                     (_tl1936719390_ (##cdr _e1936519385_)))
                                 ((lambda (_L19393_ _L19394_)
                                    (let ((_body19407_
                                           (map (gxc#xform-apply-compile-e
                                                 _args19356_)
                                                _L19393_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L19394_ _body19407_))
                                       _stx19355_)))
                                  _tl1936719390_
                                  _hd1936619388_)))
                             (_g1935819372_ _g1935919375_))))
                     (_g1935819372_ _g1935919375_)))))
          (_g1935719409_ _stx19355_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx19268_ . _args19269_)
      (let ((_clause-e19271_
             (lambda (_clause19312_)
               (let ((_g1931419325_
                      (lambda (_g1931519322_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1931519322_))))
                 (let ((_g1931319352_
                        (lambda (_g1931519328_)
                          (if (gx#stx-pair? _g1931519328_)
                              (let ((_e1931819330_ (gx#stx-e _g1931519328_)))
                                (let ((_hd1931919333_ (##car _e1931819330_))
                                      (_tl1932019335_ (##cdr _e1931819330_)))
                                  ((lambda (_L19338_ _L19339_)
                                     (let ((_body19350_
                                            (map (gxc#xform-apply-compile-e
                                                  _args19269_)
                                                 _L19338_)))
                                       (cons _L19339_ _body19350_)))
                                   _tl1932019335_
                                   _hd1931919333_)))
                              (_g1931419325_ _g1931519328_)))))
                   (_g1931319352_ _clause19312_))))))
        (let ((_g1927319283_
               (lambda (_g1927419280_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1927419280_))))
          (let ((_g1927219309_
                 (lambda (_g1927419286_)
                   (if (gx#stx-pair? _g1927419286_)
                       (let ((_e1927619288_ (gx#stx-e _g1927419286_)))
                         (let ((_hd1927719291_ (##car _e1927619288_))
                               (_tl1927819293_ (##cdr _e1927619288_)))
                           ((lambda (_L19296_)
                              (let ((_clauses19307_
                                     (map _clause-e19271_ _L19296_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses19307_)
                                 _stx19268_)))
                            _tl1927819293_)))
                       (_g1927319283_ _g1927419286_)))))
            (_g1927219309_ _stx19268_))))))
  (define gxc#xform-let-values%
    (lambda (_stx19062_ . _args19063_)
      (let ((_g1906519098_
             (lambda (_g1906619095_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1906619095_))))
        (let ((_g1906419265_
               (lambda (_g1906619101_)
                 (if (gx#stx-pair? _g1906619101_)
                     (let ((_e1907119103_ (gx#stx-e _g1906619101_)))
                       (let ((_hd1907219106_ (##car _e1907119103_))
                             (_tl1907319108_ (##cdr _e1907119103_)))
                         (if (gx#stx-pair? _tl1907319108_)
                             (let ((_e1907419111_ (gx#stx-e _tl1907319108_)))
                               (let ((_hd1907519114_ (##car _e1907419111_))
                                     (_tl1907619116_ (##cdr _e1907419111_)))
                                 (if (gx#stx-pair/null? _hd1907519114_)
                                     (if (fx>= (gx#stx-length _hd1907519114_)
                                               '0)
                                         (let ((_g19977_
                                                (gx#syntax-split-splice
                                                 _hd1907519114_
                                                 '0)))
                                           (begin
                                             (let ((_g19978_
                                                    (values-count _g19977_)))
                                               (if (not (fx= _g19978_ 2))
                                                   (error "Context expects 2 values"
                                                          _g19978_)))
                                             (let ((_target1907719119_
                                                    (values-ref _g19977_ 0))
                                                   (_tl1907919121_
                                                    (values-ref _g19977_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1907919121_)
                                                   (letrec ((_loop1908019124_
                                                             (lambda (_hd1907819127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1908419129_
                              _hd1908519131_)
                       (if (gx#stx-pair? _hd1907819127_)
                           (let ((_e1908119134_ (gx#stx-e _hd1907819127_)))
                             (let ((_lp-hd1908219137_ (##car _e1908119134_))
                                   (_lp-tl1908319139_ (##cdr _e1908119134_)))
                               (if (gx#stx-pair? _lp-hd1908219137_)
                                   (let ((_e1908819142_
                                          (gx#stx-e _lp-hd1908219137_)))
                                     (let ((_hd1908919145_
                                            (##car _e1908819142_))
                                           (_tl1909019147_
                                            (##cdr _e1908819142_)))
                                       (if (gx#stx-pair? _tl1909019147_)
                                           (let ((_e1909119150_
                                                  (gx#stx-e _tl1909019147_)))
                                             (let ((_hd1909219153_
                                                    (##car _e1909119150_))
                                                   (_tl1909319155_
                                                    (##cdr _e1909119150_)))
                                               (if (gx#stx-null?
                                                    _tl1909319155_)
                                                   (_loop1908019124_
                                                    _lp-tl1908319139_
                                                    (cons _hd1909219153_
                                                          _expr1908419129_)
                                                    (cons _hd1908919145_
                                                          _hd1908519131_))
                                                   (_g1906519098_
                                                    _g1906619101_))))
                                           (_g1906519098_ _g1906619101_))))
                                   (_g1906519098_ _g1906619101_))))
                           (let ((_expr1908619158_ (reverse _expr1908419129_))
                                 (_hd1908719160_ (reverse _hd1908519131_)))
                             ((lambda (_L19163_ _L19164_ _L19165_ _L19166_)
                                (let ((_g1918519201_
                                       (lambda (_g1918619198_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1918619198_))))
                                  (let ((_g1918419255_
                                         (lambda (_g1918619204_)
                                           (if (gx#stx-pair/null?
                                                _g1918619204_)
                                               (if (fx>= (gx#stx-length
                                                          _g1918619204_)
                                                         '0)
                                                   (let ((_g19979_
                                                          (gx#syntax-split-splice
                                                           _g1918619204_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19980_
                                                              (values-count
                                                               _g19979_)))
                                                         (if (not (fx= _g19980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19980_)))
               (let ((_target1918819206_ (values-ref _g19979_ 0))
                     (_tl1919019208_ (values-ref _g19979_ 1)))
                 (if (gx#stx-null? _tl1919019208_)
                     (letrec ((_loop1919119211_
                               (lambda (_hd1918919214_ _expr1919519216_)
                                 (if (gx#stx-pair? _hd1918919214_)
                                     (let ((_e1919219219_
                                            (gx#syntax-e _hd1918919214_)))
                                       (let ((_lp-hd1919319222_
                                              (##car _e1919219219_))
                                             (_lp-tl1919419224_
                                              (##cdr _e1919219219_)))
                                         (_loop1919119211_
                                          _lp-tl1919419224_
                                          (cons _lp-hd1919319222_
                                                _expr1919519216_))))
                                     (let ((_expr1919619227_
                                            (reverse _expr1919519216_)))
                                       ((lambda (_L19230_)
                                          (let ()
                                            (let ((_body19243_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args19063_)
                                                        _L19163_)))
                                              (gxc#xform-wrap-source
                                               (cons _L19166_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L19230_
                                                              _L19165_)
                                                             (foldr (lambda (_g1924419248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1924519250_
                                     _g1924619252_)
                              (cons (cons _g1924519250_
                                          (cons _g1924419248_ '()))
                                    _g1924619252_))
                            '()
                            _L19230_
                            _L19165_))
                   _body19243_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx19062_))))
                                        _expr1919619227_))))))
                       (_loop1919119211_ _target1918819206_ '()))
                     (_g1918519201_ _g1918619204_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1918519201_
                                                    _g1918619204_))
                                               (_g1918519201_
                                                _g1918619204_)))))
                                    (_g1918419255_
                                     (map (gxc#xform-apply-compile-e
                                           _args19063_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1925719260_
                                                             _g1925819262_)
                                                      (cons _g1925719260_
                                                            _g1925819262_))
                                                    '()
                                                    _L19164_)))))))
                              _tl1907619116_
                              _expr1908619158_
                              _hd1908719160_
                              _hd1907219106_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1908019124_
                                                      _target1907719119_
                                                      '()
                                                      '()))
                                                   (_g1906519098_
                                                    _g1906619101_)))))
                                         (_g1906519098_ _g1906619101_))
                                     (_g1906519098_ _g1906619101_))))
                             (_g1906519098_ _g1906619101_))))
                     (_g1906519098_ _g1906619101_)))))
          (_g1906419265_ _stx19062_)))))
  (define gxc#xform-operands
    (lambda (_stx19018_ . _args19019_)
      (let ((_g1902119032_
             (lambda (_g1902219029_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1902219029_))))
        (let ((_g1902019059_
               (lambda (_g1902219035_)
                 (if (gx#stx-pair? _g1902219035_)
                     (let ((_e1902519037_ (gx#stx-e _g1902219035_)))
                       (let ((_hd1902619040_ (##car _e1902519037_))
                             (_tl1902719042_ (##cdr _e1902519037_)))
                         ((lambda (_L19045_ _L19046_)
                            (let ((_rands19057_
                                   (map (gxc#xform-apply-compile-e _args19019_)
                                        _L19045_)))
                              (gxc#xform-wrap-source
                               (cons _L19046_ _rands19057_)
                               _stx19018_)))
                          _tl1902719042_
                          _hd1902619040_)))
                     (_g1902119032_ _g1902219035_)))))
          (_g1902019059_ _stx19018_)))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx18948_ . _args18949_)
      (let ((_g1895118968_
             (lambda (_g1895218965_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1895218965_))))
        (let ((_g1895019015_
               (lambda (_g1895218971_)
                 (if (gx#stx-pair? _g1895218971_)
                     (let ((_e1895518973_ (gx#stx-e _g1895218971_)))
                       (let ((_hd1895618976_ (##car _e1895518973_))
                             (_tl1895718978_ (##cdr _e1895518973_)))
                         (if (gx#stx-pair? _tl1895718978_)
                             (let ((_e1895818981_ (gx#stx-e _tl1895718978_)))
                               (let ((_hd1895918984_ (##car _e1895818981_))
                                     (_tl1896018986_ (##cdr _e1895818981_)))
                                 (if (gx#stx-pair? _tl1896018986_)
                                     (let ((_e1896118989_
                                            (gx#stx-e _tl1896018986_)))
                                       (let ((_hd1896218992_
                                              (##car _e1896118989_))
                                             (_tl1896318994_
                                              (##cdr _e1896118989_)))
                                         (if (gx#stx-null? _tl1896318994_)
                                             ((lambda (_L18997_ _L18998_)
                                                (let ((_expr19013_
                                                       (apply gxc#compile-e
                                                              _L18997_
                                                              _args18949_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L18998_
                                                               (cons _expr19013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18948_)))
                                              _hd1896218992_
                                              _hd1895918984_)
                                             (_g1895118968_ _g1895218971_))))
                                     (_g1895118968_ _g1895218971_))))
                             (_g1895118968_ _g1895218971_))))
                     (_g1895118968_ _g1895218971_)))))
          (_g1895019015_ _stx18948_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx18879_)
      (let ((_g1888118898_
             (lambda (_g1888218895_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1888218895_))))
        (let ((_g1888018945_
               (lambda (_g1888218901_)
                 (if (gx#stx-pair? _g1888218901_)
                     (let ((_e1888518903_ (gx#stx-e _g1888218901_)))
                       (let ((_hd1888618906_ (##car _e1888518903_))
                             (_tl1888718908_ (##cdr _e1888518903_)))
                         (if (gx#stx-pair? _tl1888718908_)
                             (let ((_e1888818911_ (gx#stx-e _tl1888718908_)))
                               (let ((_hd1888918914_ (##car _e1888818911_))
                                     (_tl1889018916_ (##cdr _e1888818911_)))
                                 (if (gx#stx-pair? _tl1889018916_)
                                     (let ((_e1889118919_
                                            (gx#stx-e _tl1889018916_)))
                                       (let ((_hd1889218922_
                                              (##car _e1889118919_))
                                             (_tl1889318924_
                                              (##cdr _e1889118919_)))
                                         (if (gx#stx-null? _tl1889318924_)
                                             ((lambda (_L18927_ _L18928_)
                                                (let ((_sym18943_
                                                       (gxc#generate-runtime-binding-id
                                                        _L18928_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym18943_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym18943_
                                                     '#t)
                                                    (gxc#compile-e _L18927_))))
                                              _hd1889218922_
                                              _hd1888918914_)
                                             (_g1888118898_ _g1888218901_))))
                                     (_g1888118898_ _g1888218901_))))
                             (_g1888118898_ _g1888218901_))))
                     (_g1888118898_ _g1888218901_)))))
          (_g1888018945_ _stx18879_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form18113_)
      (let ((_g1811818275_
             (lambda (_g1811918272_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1811918272_))))
        (let ((_g1811718282_ (lambda (_g1811918278_) ((lambda () '#f)))))
          (let ((_g1811618422_
                 (lambda (_g1811918285_)
                   (if (gx#stx-pair? _g1811918285_)
                       (let ((_e1823518287_ (gx#stx-e _g1811918285_)))
                         (let ((_hd1823618290_ (##car _e1823518287_))
                               (_tl1823718292_ (##cdr _e1823518287_)))
                           (if (gx#stx-pair? _tl1823718292_)
                               (let ((_e1823818295_ (gx#stx-e _tl1823718292_)))
                                 (let ((_hd1823918298_ (##car _e1823818295_))
                                       (_tl1824018300_ (##cdr _e1823818295_)))
                                   (if (gx#stx-pair? _hd1823918298_)
                                       (let ((_e1824118303_
                                              (gx#stx-e _hd1823918298_)))
                                         (let ((_hd1824218306_
                                                (##car _e1824118303_))
                                               (_tl1824318308_
                                                (##cdr _e1824118303_)))
                                           (if (gx#identifier? _hd1824218306_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1824218306_)
                                                   (if (gx#stx-pair?
                                                        _tl1824318308_)
                                                       (let ((_e1824418311_
                                                              (gx#stx-e
                                                               _tl1824318308_)))
                                                         (let ((_hd1824518314_
                                                                (##car _e1824418311_))
                                                               (_tl1824618316_
                                                                (##cdr _e1824418311_)))
                                                           (if (gx#stx-pair?
                                                                _hd1824518314_)
                                                               (let ((_e1824718319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1824518314_)))
                         (let ((_hd1824818322_ (##car _e1824718319_))
                               (_tl1824918324_ (##cdr _e1824718319_)))
                           (if (gx#identifier? _hd1824818322_)
                               (if (gx#stx-eq? '%#ref _hd1824818322_)
                                   (if (gx#stx-pair? _tl1824918324_)
                                       (let ((_e1825018327_
                                              (gx#stx-e _tl1824918324_)))
                                         (let ((_hd1825118330_
                                                (##car _e1825018327_))
                                               (_tl1825218332_
                                                (##cdr _e1825018327_)))
                                           (if (gx#stx-null? _tl1825218332_)
                                               (if (gx#stx-pair?
                                                    _tl1824618316_)
                                                   (let ((_e1825318335_
                                                          (gx#stx-e
                                                           _tl1824618316_)))
                                                     (let ((_hd1825418338_
                                                            (##car _e1825318335_))
                                                           (_tl1825518340_
                                                            (##cdr _e1825318335_)))
                                                       (if (gx#stx-pair?
                                                            _hd1825418338_)
                                                           (let ((_e1825618343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1825418338_)))
                     (let ((_hd1825718346_ (##car _e1825618343_))
                           (_tl1825818348_ (##cdr _e1825618343_)))
                       (if (gx#identifier? _hd1825718346_)
                           (if (gx#stx-eq? '%#ref _hd1825718346_)
                               (if (gx#stx-pair? _tl1825818348_)
                                   (let ((_e1825918351_
                                          (gx#stx-e _tl1825818348_)))
                                     (let ((_hd1826018354_
                                            (##car _e1825918351_))
                                           (_tl1826118356_
                                            (##cdr _e1825918351_)))
                                       (if (gx#stx-null? _tl1826118356_)
                                           (if (gx#stx-pair? _tl1825518340_)
                                               (let ((_e1826218359_
                                                      (gx#stx-e
                                                       _tl1825518340_)))
                                                 (let ((_hd1826318362_
                                                        (##car _e1826218359_))
                                                       (_tl1826418364_
                                                        (##cdr _e1826218359_)))
                                                   (if (gx#stx-pair?
                                                        _hd1826318362_)
                                                       (let ((_e1826518367_
                                                              (gx#stx-e
                                                               _hd1826318362_)))
                                                         (let ((_hd1826618370_
                                                                (##car _e1826518367_))
                                                               (_tl1826718372_
                                                                (##cdr _e1826518367_)))
                                                           (if (gx#identifier?
                                                                _hd1826618370_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1826618370_)
                           (if (gx#stx-pair? _tl1826718372_)
                               (let ((_e1826818375_ (gx#stx-e _tl1826718372_)))
                                 (let ((_hd1826918378_ (##car _e1826818375_))
                                       (_tl1827018380_ (##cdr _e1826818375_)))
                                   (if (gx#stx-null? _tl1827018380_)
                                       (if (gx#stx-null? _tl1826418364_)
                                           (if (gx#stx-null? _tl1824018300_)
                                               ((lambda (_L18383_
                                                         _L18384_
                                                         _L18385_
                                                         _L18386_)
                                                  (if (if (gx#identifier?
                                                           _L18386_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L18385_)
                           'apply)
                      (if (gx#free-identifier=? _L18386_ _L18383_)
                          (not (gx#free-identifier=? _L18384_ _L18386_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1811718282_ _g1811918285_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1826918378_
                                                _hd1826018354_
                                                _hd1825118330_
                                                _hd1823618290_)
                                               (_g1811718282_ _g1811918285_))
                                           (_g1811718282_ _g1811918285_))
                                       (_g1811718282_ _g1811918285_))))
                               (_g1811718282_ _g1811918285_))
                           (_g1811718282_ _g1811918285_))
                       (_g1811718282_ _g1811918285_))))
               (_g1811718282_ _g1811918285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1811718282_ _g1811918285_))
                                           (_g1811718282_ _g1811918285_))))
                                   (_g1811718282_ _g1811918285_))
                               (_g1811718282_ _g1811918285_))
                           (_g1811718282_ _g1811918285_))))
                   (_g1811718282_ _g1811918285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1811718282_
                                                    _g1811918285_))
                                               (_g1811718282_ _g1811918285_))))
                                       (_g1811718282_ _g1811918285_))
                                   (_g1811718282_ _g1811918285_))
                               (_g1811718282_ _g1811918285_))))
                       (_g1811718282_ _g1811918285_))))
               (_g1811718282_ _g1811918285_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1811718282_
                                                    _g1811918285_))
                                               (_g1811718282_ _g1811918285_))))
                                       (_g1811718282_ _g1811918285_))))
                               (_g1811718282_ _g1811918285_))))
                       (_g1811718282_ _g1811918285_)))))
            (let ((_g1811518682_
                   (lambda (_g1811918425_)
                     (if (gx#stx-pair? _g1811918425_)
                         (let ((_e1817118427_ (gx#stx-e _g1811918425_)))
                           (let ((_hd1817218430_ (##car _e1817118427_))
                                 (_tl1817318432_ (##cdr _e1817118427_)))
                             (if (gx#stx-pair/null? _hd1817218430_)
                                 (if (fx>= (gx#stx-length _hd1817218430_) '0)
                                     (let ((_g19981_
                                            (gx#syntax-split-splice
                                             _hd1817218430_
                                             '0)))
                                       (begin
                                         (let ((_g19982_
                                                (values-count _g19981_)))
                                           (if (not (fx= _g19982_ 2))
                                               (error "Context expects 2 values"
                                                      _g19982_)))
                                         (let ((_target1817418435_
                                                (values-ref _g19981_ 0))
                                               (_tl1817618437_
                                                (values-ref _g19981_ 1)))
                                           (letrec ((_loop1817718440_
                                                     (lambda (_hd1817518443_
                                                              _arg1818118445_)
                                                       (if (gx#stx-pair?
                                                            _hd1817518443_)
                                                           (let ((_e1817818448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1817518443_)))
                     (let ((_lp-hd1817918451_ (##car _e1817818448_))
                           (_lp-tl1818018453_ (##cdr _e1817818448_)))
                       (_loop1817718440_
                        _lp-tl1818018453_
                        (cons _lp-hd1817918451_ _arg1818118445_))))
                   (let ((_arg1818218456_ (reverse _arg1818118445_)))
                     (if (gx#stx-pair? _tl1817318432_)
                         (let ((_e1818318459_ (gx#stx-e _tl1817318432_)))
                           (let ((_hd1818418462_ (##car _e1818318459_))
                                 (_tl1818518464_ (##cdr _e1818318459_)))
                             (if (gx#stx-pair? _hd1818418462_)
                                 (let ((_e1818618467_
                                        (gx#stx-e _hd1818418462_)))
                                   (let ((_hd1818718470_ (##car _e1818618467_))
                                         (_tl1818818472_
                                          (##cdr _e1818618467_)))
                                     (if (gx#identifier? _hd1818718470_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1818718470_)
                                             (if (gx#stx-pair? _tl1818818472_)
                                                 (let ((_e1818918475_
                                                        (gx#stx-e
                                                         _tl1818818472_)))
                                                   (let ((_hd1819018478_
                                                          (##car _e1818918475_))
                                                         (_tl1819118480_
                                                          (##cdr _e1818918475_)))
                                                     (if (gx#stx-pair?
                                                          _hd1819018478_)
                                                         (let ((_e1819218483_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1819018478_)))
                   (let ((_hd1819318486_ (##car _e1819218483_))
                         (_tl1819418488_ (##cdr _e1819218483_)))
                     (if (gx#identifier? _hd1819318486_)
                         (if (gx#stx-eq? '%#ref _hd1819318486_)
                             (if (gx#stx-pair? _tl1819418488_)
                                 (let ((_e1819518491_
                                        (gx#stx-e _tl1819418488_)))
                                   (let ((_hd1819618494_ (##car _e1819518491_))
                                         (_tl1819718496_
                                          (##cdr _e1819518491_)))
                                     (if (gx#stx-null? _tl1819718496_)
                                         (if (gx#stx-pair? _tl1819118480_)
                                             (let ((_e1819818499_
                                                    (gx#stx-e _tl1819118480_)))
                                               (let ((_hd1819918502_
                                                      (##car _e1819818499_))
                                                     (_tl1820018504_
                                                      (##cdr _e1819818499_)))
                                                 (if (gx#stx-pair?
                                                      _hd1819918502_)
                                                     (let ((_e1820118507_
                                                            (gx#stx-e
                                                             _hd1819918502_)))
                                                       (let ((_hd1820218510_
                                                              (##car _e1820118507_))
                                                             (_tl1820318512_
                                                              (##cdr _e1820118507_)))
                                                         (if (gx#identifier?
                                                              _hd1820218510_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1820218510_)
                         (if (gx#stx-pair? _tl1820318512_)
                             (let ((_e1820418515_ (gx#stx-e _tl1820318512_)))
                               (let ((_hd1820518518_ (##car _e1820418515_))
                                     (_tl1820618520_ (##cdr _e1820418515_)))
                                 (if (gx#stx-null? _tl1820618520_)
                                     (if (gx#stx-pair/null? _tl1820018504_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1820018504_)
                                                   '1)
                                             (let ((_g19983_
                                                    (gx#syntax-split-splice
                                                     _tl1820018504_
                                                     '1)))
                                               (begin
                                                 (let ((_g19984_
                                                        (values-count
                                                         _g19983_)))
                                                   (if (not (fx= _g19984_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19984_)))
                                                 (let ((_target1820718523_
                                                        (values-ref
                                                         _g19983_
                                                         0))
                                                       (_tl1820918525_
                                                        (values-ref
                                                         _g19983_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1820918525_)
                                                       (let ((_e1821618528_
                                                              (gx#stx-e
                                                               _tl1820918525_)))
                                                         (let ((_hd1821718531_
                                                                (##car _e1821618528_))
                                                               (_tl1821818533_
                                                                (##cdr _e1821618528_)))
                                                           (if (gx#stx-pair?
                                                                _hd1821718531_)
                                                               (let ((_e1821918536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1821718531_)))
                         (let ((_hd1822018539_ (##car _e1821918536_))
                               (_tl1822118541_ (##cdr _e1821918536_)))
                           (if (gx#identifier? _hd1822018539_)
                               (if (gx#stx-eq? '%#ref _hd1822018539_)
                                   (if (gx#stx-pair? _tl1822118541_)
                                       (let ((_e1822218544_
                                              (gx#stx-e _tl1822118541_)))
                                         (let ((_hd1822318547_
                                                (##car _e1822218544_))
                                               (_tl1822418549_
                                                (##cdr _e1822218544_)))
                                           (if (gx#stx-null? _tl1822418549_)
                                               (if (gx#stx-null?
                                                    _tl1821818533_)
                                                   (letrec ((_loop1821018552_
                                                             (lambda (_hd1820818555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1821418557_)
                       (if (gx#stx-pair? _hd1820818555_)
                           (let ((_e1821118560_ (gx#stx-e _hd1820818555_)))
                             (let ((_lp-hd1821218563_ (##car _e1821118560_))
                                   (_lp-tl1821318565_ (##cdr _e1821118560_)))
                               (if (gx#stx-pair? _lp-hd1821218563_)
                                   (let ((_e1822518568_
                                          (gx#stx-e _lp-hd1821218563_)))
                                     (let ((_hd1822618571_
                                            (##car _e1822518568_))
                                           (_tl1822718573_
                                            (##cdr _e1822518568_)))
                                       (if (gx#identifier? _hd1822618571_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1822618571_)
                                               (if (gx#stx-pair?
                                                    _tl1822718573_)
                                                   (let ((_e1822818576_
                                                          (gx#stx-e
                                                           _tl1822718573_)))
                                                     (let ((_hd1822918579_
                                                            (##car _e1822818576_))
                                                           (_tl1823018581_
                                                            (##cdr _e1822818576_)))
                                                       (if (gx#stx-null?
                                                            _tl1823018581_)
                                                           (_loop1821018552_
                                                            _lp-tl1821318565_
                                                            (cons _hd1822918579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1821418557_))
                   (_g1811618422_ _g1811918425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1811618422_
                                                    _g1811918425_))
                                               (_g1811618422_ _g1811918425_))
                                           (_g1811618422_ _g1811918425_))))
                                   (_g1811618422_ _g1811918425_))))
                           (let ((_xarg1821518584_ (reverse _xarg1821418557_)))
                             (if (gx#stx-null? _tl1818518464_)
                                 ((lambda (_L18587_
                                           _L18588_
                                           _L18589_
                                           _L18590_
                                           _L18591_
                                           _L18592_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1863518638_
                                                                _g1863618640_)
                                                         (cons _g1863518638_
                                                               _g1863618640_))
                                                       '()
                                                       _L18592_)))
                                            (if (gx#identifier? _L18591_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L18590_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1864218645_ _g1864318647_)
                                         (cons _g1864218645_ _g1864318647_))
                                       '()
                                       _L18592_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1864918652_ _g1865018654_)
                                         (cons _g1864918652_ _g1865018654_))
                                       '()
                                       _L18588_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1865618659_ _g1865718661_)
                                        (cons _g1865618659_ _g1865718661_))
                                      '()
                                      _L18592_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1866318666_ _g1866418668_)
                                        (cons _g1866318666_ _g1866418668_))
                                      '()
                                      _L18588_)))
                    (if (gx#free-identifier=? _L18591_ _L18587_)
                        (not (find (lambda (_g1867018672_)
                                     (gx#free-identifier=?
                                      _g1867018672_
                                      _L18589_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1867418677_
                                                      _g1867518679_)
                                               (cons _g1867418677_
                                                     _g1867518679_))
                                             (cons _L18591_ '())
                                             _L18592_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1811618422_ _g1811918425_)))
                                  _hd1822318547_
                                  _xarg1821518584_
                                  _hd1820518518_
                                  _hd1819618494_
                                  _tl1817618437_
                                  _arg1818218456_)
                                 (_g1811618422_ _g1811918425_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1821018552_
                                                      _target1820718523_
                                                      '()))
                                                   (_g1811618422_
                                                    _g1811918425_))
                                               (_g1811618422_ _g1811918425_))))
                                       (_g1811618422_ _g1811918425_))
                                   (_g1811618422_ _g1811918425_))
                               (_g1811618422_ _g1811918425_))))
                       (_g1811618422_ _g1811918425_))))
               (_g1811618422_ _g1811918425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1811618422_ _g1811918425_))
                                         (_g1811618422_ _g1811918425_))
                                     (_g1811618422_ _g1811918425_))))
                             (_g1811618422_ _g1811918425_))
                         (_g1811618422_ _g1811918425_))
                     (_g1811618422_ _g1811918425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1811618422_
                                                      _g1811918425_))))
                                             (_g1811618422_ _g1811918425_))
                                         (_g1811618422_ _g1811918425_))))
                                 (_g1811618422_ _g1811918425_))
                             (_g1811618422_ _g1811918425_))
                         (_g1811618422_ _g1811918425_))))
                 (_g1811618422_ _g1811918425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1811618422_ _g1811918425_))
                                             (_g1811618422_ _g1811918425_))
                                         (_g1811618422_ _g1811918425_))))
                                 (_g1811618422_ _g1811918425_))))
                         (_g1811618422_ _g1811918425_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1817718440_
                                              _target1817418435_
                                              '())))))
                                     (_g1811618422_ _g1811918425_))
                                 (_g1811618422_ _g1811918425_))))
                         (_g1811618422_ _g1811918425_)))))
              (let ((_g1811418876_
                     (lambda (_g1811918685_)
                       (if (gx#stx-pair? _g1811918685_)
                           (let ((_e1812318687_ (gx#stx-e _g1811918685_)))
                             (let ((_hd1812418690_ (##car _e1812318687_))
                                   (_tl1812518692_ (##cdr _e1812318687_)))
                               (if (gx#stx-pair/null? _hd1812418690_)
                                   (if (fx>= (gx#stx-length _hd1812418690_) '0)
                                       (let ((_g19985_
                                              (gx#syntax-split-splice
                                               _hd1812418690_
                                               '0)))
                                         (begin
                                           (let ((_g19986_
                                                  (values-count _g19985_)))
                                             (if (not (fx= _g19986_ 2))
                                                 (error "Context expects 2 values"
                                                        _g19986_)))
                                           (let ((_target1812618695_
                                                  (values-ref _g19985_ 0))
                                                 (_tl1812818697_
                                                  (values-ref _g19985_ 1)))
                                             (if (gx#stx-null? _tl1812818697_)
                                                 (letrec ((_loop1812918700_
                                                           (lambda (_hd1812718703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1813318705_)
                     (if (gx#stx-pair? _hd1812718703_)
                         (let ((_e1813018708_ (gx#stx-e _hd1812718703_)))
                           (let ((_lp-hd1813118711_ (##car _e1813018708_))
                                 (_lp-tl1813218713_ (##cdr _e1813018708_)))
                             (_loop1812918700_
                              _lp-tl1813218713_
                              (cons _lp-hd1813118711_ _arg1813318705_))))
                         (let ((_arg1813418716_ (reverse _arg1813318705_)))
                           (if (gx#stx-pair? _tl1812518692_)
                               (let ((_e1813518719_ (gx#stx-e _tl1812518692_)))
                                 (let ((_hd1813618722_ (##car _e1813518719_))
                                       (_tl1813718724_ (##cdr _e1813518719_)))
                                   (if (gx#stx-pair? _hd1813618722_)
                                       (let ((_e1813818727_
                                              (gx#stx-e _hd1813618722_)))
                                         (let ((_hd1813918730_
                                                (##car _e1813818727_))
                                               (_tl1814018732_
                                                (##cdr _e1813818727_)))
                                           (if (gx#identifier? _hd1813918730_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1813918730_)
                                                   (if (gx#stx-pair?
                                                        _tl1814018732_)
                                                       (let ((_e1814118735_
                                                              (gx#stx-e
                                                               _tl1814018732_)))
                                                         (let ((_hd1814218738_
                                                                (##car _e1814118735_))
                                                               (_tl1814318740_
                                                                (##cdr _e1814118735_)))
                                                           (if (gx#stx-pair?
                                                                _hd1814218738_)
                                                               (let ((_e1814418743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1814218738_)))
                         (let ((_hd1814518746_ (##car _e1814418743_))
                               (_tl1814618748_ (##cdr _e1814418743_)))
                           (if (gx#identifier? _hd1814518746_)
                               (if (gx#stx-eq? '%#ref _hd1814518746_)
                                   (if (gx#stx-pair? _tl1814618748_)
                                       (let ((_e1814718751_
                                              (gx#stx-e _tl1814618748_)))
                                         (let ((_hd1814818754_
                                                (##car _e1814718751_))
                                               (_tl1814918756_
                                                (##cdr _e1814718751_)))
                                           (if (gx#stx-null? _tl1814918756_)
                                               (if (gx#stx-pair/null?
                                                    _tl1814318740_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1814318740_)
                                                             '0)
                                                       (let ((_g19987_
                                                              (gx#syntax-split-splice
                                                               _tl1814318740_
                                                               '0)))
                                                         (begin
                                                           (let ((_g19988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g19987_)))
                     (if (not (fx= _g19988_ 2))
                         (error "Context expects 2 values" _g19988_)))
                   (let ((_target1815018759_ (values-ref _g19987_ 0))
                         (_tl1815218761_ (values-ref _g19987_ 1)))
                     (if (gx#stx-null? _tl1815218761_)
                         (letrec ((_loop1815318764_
                                   (lambda (_hd1815118767_ _xarg1815718769_)
                                     (if (gx#stx-pair? _hd1815118767_)
                                         (let ((_e1815418772_
                                                (gx#stx-e _hd1815118767_)))
                                           (let ((_lp-hd1815518775_
                                                  (##car _e1815418772_))
                                                 (_lp-tl1815618777_
                                                  (##cdr _e1815418772_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1815518775_)
                                                 (let ((_e1815918780_
                                                        (gx#stx-e
                                                         _lp-hd1815518775_)))
                                                   (let ((_hd1816018783_
                                                          (##car _e1815918780_))
                                                         (_tl1816118785_
                                                          (##cdr _e1815918780_)))
                                                     (if (gx#identifier?
                                                          _hd1816018783_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1816018783_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1816118785_)
                         (let ((_e1816218788_ (gx#stx-e _tl1816118785_)))
                           (let ((_hd1816318791_ (##car _e1816218788_))
                                 (_tl1816418793_ (##cdr _e1816218788_)))
                             (if (gx#stx-null? _tl1816418793_)
                                 (_loop1815318764_
                                  _lp-tl1815618777_
                                  (cons _hd1816318791_ _xarg1815718769_))
                                 (_g1811518682_ _g1811918685_))))
                         (_g1811518682_ _g1811918685_))
                     (_g1811518682_ _g1811918685_))
                 (_g1811518682_ _g1811918685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1811518682_
                                                  _g1811918685_))))
                                         (let ((_xarg1815818796_
                                                (reverse _xarg1815718769_)))
                                           (if (gx#stx-null? _tl1813718724_)
                                               ((lambda (_L18799_
                                                         _L18800_
                                                         _L18801_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1882918832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1883018834_)
                               (cons _g1882918832_ _g1883018834_))
                             '()
                             _L18801_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1883618839_
                                                      _g1883718841_)
                                               (cons _g1883618839_
                                                     _g1883718841_))
                                             '()
                                             _L18801_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1884318846_
                                                      _g1884418848_)
                                               (cons _g1884318846_
                                                     _g1884418848_))
                                             '()
                                             _L18799_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1885018853_
                                                     _g1885118855_)
                                              (cons _g1885018853_
                                                    _g1885118855_))
                                            '()
                                            _L18801_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1885718860_
                                                     _g1885818862_)
                                              (cons _g1885718860_
                                                    _g1885818862_))
                                            '()
                                            _L18799_)))
                          (not (find (lambda (_g1886418866_)
                                       (gx#free-identifier=?
                                        _g1886418866_
                                        _L18800_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1886818871_
                                                        _g1886918873_)
                                                 (cons _g1886818871_
                                                       _g1886918873_))
                                               '()
                                               _L18801_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1811518682_ _g1811918685_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1815818796_
                                                _hd1814818754_
                                                _arg1813418716_)
                                               (_g1811518682_
                                                _g1811918685_)))))))
                           (_loop1815318764_ _target1815018759_ '()))
                         (_g1811518682_ _g1811918685_)))))
               (_g1811518682_ _g1811918685_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1811518682_
                                                    _g1811918685_))
                                               (_g1811518682_ _g1811918685_))))
                                       (_g1811518682_ _g1811918685_))
                                   (_g1811518682_ _g1811918685_))
                               (_g1811518682_ _g1811918685_))))
                       (_g1811518682_ _g1811918685_))))
               (_g1811518682_ _g1811918685_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1811518682_
                                                    _g1811918685_))
                                               (_g1811518682_ _g1811918685_))))
                                       (_g1811518682_ _g1811918685_))))
                               (_g1811518682_ _g1811918685_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1812918700_
                                                    _target1812618695_
                                                    '()))
                                                 (_g1811518682_
                                                  _g1811918685_)))))
                                       (_g1811518682_ _g1811918685_))
                                   (_g1811518682_ _g1811918685_))))
                           (_g1811518682_ _g1811918685_)))))
                (_g1811418876_ _form18113_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form17581_)
      (let ((_g1758517709_
             (lambda (_g1758617706_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1758617706_))))
        (let ((_g1758417826_
               (lambda (_g1758617712_)
                 (if (gx#stx-pair? _g1758617712_)
                     (let ((_e1767517714_ (gx#stx-e _g1758617712_)))
                       (let ((_hd1767617717_ (##car _e1767517714_))
                             (_tl1767717719_ (##cdr _e1767517714_)))
                         (if (gx#stx-pair? _tl1767717719_)
                             (let ((_e1767817722_ (gx#stx-e _tl1767717719_)))
                               (let ((_hd1767917725_ (##car _e1767817722_))
                                     (_tl1768017727_ (##cdr _e1767817722_)))
                                 (if (gx#stx-pair? _hd1767917725_)
                                     (let ((_e1768117730_
                                            (gx#stx-e _hd1767917725_)))
                                       (let ((_hd1768217733_
                                              (##car _e1768117730_))
                                             (_tl1768317735_
                                              (##cdr _e1768117730_)))
                                         (if (gx#identifier? _hd1768217733_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1768217733_)
                                                 (if (gx#stx-pair?
                                                      _tl1768317735_)
                                                     (let ((_e1768417738_
                                                            (gx#stx-e
                                                             _tl1768317735_)))
                                                       (let ((_hd1768517741_
                                                              (##car _e1768417738_))
                                                             (_tl1768617743_
                                                              (##cdr _e1768417738_)))
                                                         (if (gx#stx-pair?
                                                              _hd1768517741_)
                                                             (let ((_e1768717746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1768517741_)))
                       (let ((_hd1768817749_ (##car _e1768717746_))
                             (_tl1768917751_ (##cdr _e1768717746_)))
                         (if (gx#identifier? _hd1768817749_)
                             (if (gx#stx-eq? '%#ref _hd1768817749_)
                                 (if (gx#stx-pair? _tl1768917751_)
                                     (let ((_e1769017754_
                                            (gx#stx-e _tl1768917751_)))
                                       (let ((_hd1769117757_
                                              (##car _e1769017754_))
                                             (_tl1769217759_
                                              (##cdr _e1769017754_)))
                                         (if (gx#stx-null? _tl1769217759_)
                                             (if (gx#stx-pair? _tl1768617743_)
                                                 (let ((_e1769317762_
                                                        (gx#stx-e
                                                         _tl1768617743_)))
                                                   (let ((_hd1769417765_
                                                          (##car _e1769317762_))
                                                         (_tl1769517767_
                                                          (##cdr _e1769317762_)))
                                                     (if (gx#stx-pair?
                                                          _hd1769417765_)
                                                         (let ((_e1769617770_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1769417765_)))
                   (let ((_hd1769717773_ (##car _e1769617770_))
                         (_tl1769817775_ (##cdr _e1769617770_)))
                     (if (gx#identifier? _hd1769717773_)
                         (if (gx#stx-eq? '%#ref _hd1769717773_)
                             (if (gx#stx-pair? _tl1769817775_)
                                 (let ((_e1769917778_
                                        (gx#stx-e _tl1769817775_)))
                                   (let ((_hd1770017781_ (##car _e1769917778_))
                                         (_tl1770117783_
                                          (##cdr _e1769917778_)))
                                     (if (gx#stx-null? _tl1770117783_)
                                         (if (gx#stx-pair? _tl1769517767_)
                                             (let ((_e1770217786_
                                                    (gx#stx-e _tl1769517767_)))
                                               (let ((_hd1770317789_
                                                      (##car _e1770217786_))
                                                     (_tl1770417791_
                                                      (##cdr _e1770217786_)))
                                                 (if (gx#stx-null?
                                                      _tl1770417791_)
                                                     (if (gx#stx-null?
                                                          _tl1768017727_)
                                                         ((lambda (_L17794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L17795_
                           _L17796_)
                    (gxc#generate-runtime-binding-id _L17794_))
                  _hd1770017781_
                  _hd1769117757_
                  _hd1767617717_)
                 (_g1758517709_ _g1758617712_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1758517709_
                                                      _g1758617712_))))
                                             (_g1758517709_ _g1758617712_))
                                         (_g1758517709_ _g1758617712_))))
                                 (_g1758517709_ _g1758617712_))
                             (_g1758517709_ _g1758617712_))
                         (_g1758517709_ _g1758617712_))))
                 (_g1758517709_ _g1758617712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1758517709_ _g1758617712_))
                                             (_g1758517709_ _g1758617712_))))
                                     (_g1758517709_ _g1758617712_))
                                 (_g1758517709_ _g1758617712_))
                             (_g1758517709_ _g1758617712_))))
                     (_g1758517709_ _g1758617712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1758517709_
                                                      _g1758617712_))
                                                 (_g1758517709_ _g1758617712_))
                                             (_g1758517709_ _g1758617712_))))
                                     (_g1758517709_ _g1758617712_))))
                             (_g1758517709_ _g1758617712_))))
                     (_g1758517709_ _g1758617712_)))))
          (let ((_g1758317962_
                 (lambda (_g1758617829_)
                   (if (gx#stx-pair? _g1758617829_)
                       (let ((_e1763617831_ (gx#stx-e _g1758617829_)))
                         (let ((_hd1763717834_ (##car _e1763617831_))
                               (_tl1763817836_ (##cdr _e1763617831_)))
                           (if (gx#stx-pair/null? _hd1763717834_)
                               (if (fx>= (gx#stx-length _hd1763717834_) '0)
                                   (let ((_g19989_
                                          (gx#syntax-split-splice
                                           _hd1763717834_
                                           '0)))
                                     (begin
                                       (let ((_g19990_
                                              (values-count _g19989_)))
                                         (if (not (fx= _g19990_ 2))
                                             (error "Context expects 2 values"
                                                    _g19990_)))
                                       (let ((_target1763917839_
                                              (values-ref _g19989_ 0))
                                             (_tl1764117841_
                                              (values-ref _g19989_ 1)))
                                         (letrec ((_loop1764217844_
                                                   (lambda (_hd1764017847_
                                                            _arg1764617849_)
                                                     (if (gx#stx-pair?
                                                          _hd1764017847_)
                                                         (let ((_e1764317852_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1764017847_)))
                   (let ((_lp-hd1764417855_ (##car _e1764317852_))
                         (_lp-tl1764517857_ (##cdr _e1764317852_)))
                     (_loop1764217844_
                      _lp-tl1764517857_
                      (cons _lp-hd1764417855_ _arg1764617849_))))
                 (let ((_arg1764717860_ (reverse _arg1764617849_)))
                   (if (gx#stx-pair? _tl1763817836_)
                       (let ((_e1764817863_ (gx#stx-e _tl1763817836_)))
                         (let ((_hd1764917866_ (##car _e1764817863_))
                               (_tl1765017868_ (##cdr _e1764817863_)))
                           (if (gx#stx-pair? _hd1764917866_)
                               (let ((_e1765117871_ (gx#stx-e _hd1764917866_)))
                                 (let ((_hd1765217874_ (##car _e1765117871_))
                                       (_tl1765317876_ (##cdr _e1765117871_)))
                                   (if (gx#identifier? _hd1765217874_)
                                       (if (gx#stx-eq? '%#call _hd1765217874_)
                                           (if (gx#stx-pair? _tl1765317876_)
                                               (let ((_e1765417879_
                                                      (gx#stx-e
                                                       _tl1765317876_)))
                                                 (let ((_hd1765517882_
                                                        (##car _e1765417879_))
                                                       (_tl1765617884_
                                                        (##cdr _e1765417879_)))
                                                   (if (gx#stx-pair?
                                                        _hd1765517882_)
                                                       (let ((_e1765717887_
                                                              (gx#stx-e
                                                               _hd1765517882_)))
                                                         (let ((_hd1765817890_
                                                                (##car _e1765717887_))
                                                               (_tl1765917892_
                                                                (##cdr _e1765717887_)))
                                                           (if (gx#identifier?
                                                                _hd1765817890_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1765817890_)
                           (if (gx#stx-pair? _tl1765917892_)
                               (let ((_e1766017895_ (gx#stx-e _tl1765917892_)))
                                 (let ((_hd1766117898_ (##car _e1766017895_))
                                       (_tl1766217900_ (##cdr _e1766017895_)))
                                   (if (gx#stx-null? _tl1766217900_)
                                       (if (gx#stx-pair? _tl1765617884_)
                                           (let ((_e1766317903_
                                                  (gx#stx-e _tl1765617884_)))
                                             (let ((_hd1766417906_
                                                    (##car _e1766317903_))
                                                   (_tl1766517908_
                                                    (##cdr _e1766317903_)))
                                               (if (gx#stx-pair?
                                                    _hd1766417906_)
                                                   (let ((_e1766617911_
                                                          (gx#stx-e
                                                           _hd1766417906_)))
                                                     (let ((_hd1766717914_
                                                            (##car _e1766617911_))
                                                           (_tl1766817916_
                                                            (##cdr _e1766617911_)))
                                                       (if (gx#identifier?
                                                            _hd1766717914_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1766717914_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1766817916_)
                           (let ((_e1766917919_ (gx#stx-e _tl1766817916_)))
                             (let ((_hd1767017922_ (##car _e1766917919_))
                                   (_tl1767117924_ (##cdr _e1766917919_)))
                               (if (gx#stx-null? _tl1767117924_)
                                   (if (gx#stx-null? _tl1765017868_)
                                       ((lambda (_L17927_
                                                 _L17928_
                                                 _L17929_
                                                 _L17930_)
                                          (gxc#generate-runtime-binding-id
                                           _L17927_))
                                        _hd1767017922_
                                        _hd1766117898_
                                        _tl1764117841_
                                        _arg1764717860_)
                                       (_g1758417826_ _g1758617829_))
                                   (_g1758417826_ _g1758617829_))))
                           (_g1758417826_ _g1758617829_))
                       (_g1758417826_ _g1758617829_))
                   (_g1758417826_ _g1758617829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1758417826_
                                                    _g1758617829_))))
                                           (_g1758417826_ _g1758617829_))
                                       (_g1758417826_ _g1758617829_))))
                               (_g1758417826_ _g1758617829_))
                           (_g1758417826_ _g1758617829_))
                       (_g1758417826_ _g1758617829_))))
               (_g1758417826_ _g1758617829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1758417826_ _g1758617829_))
                                           (_g1758417826_ _g1758617829_))
                                       (_g1758417826_ _g1758617829_))))
                               (_g1758417826_ _g1758617829_))))
                       (_g1758417826_ _g1758617829_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1764217844_
                                            _target1763917839_
                                            '())))))
                                   (_g1758417826_ _g1758617829_))
                               (_g1758417826_ _g1758617829_))))
                       (_g1758417826_ _g1758617829_)))))
            (let ((_g1758218110_
                   (lambda (_g1758617965_)
                     (if (gx#stx-pair? _g1758617965_)
                         (let ((_e1759017967_ (gx#stx-e _g1758617965_)))
                           (let ((_hd1759117970_ (##car _e1759017967_))
                                 (_tl1759217972_ (##cdr _e1759017967_)))
                             (if (gx#stx-pair/null? _hd1759117970_)
                                 (if (fx>= (gx#stx-length _hd1759117970_) '0)
                                     (let ((_g19991_
                                            (gx#syntax-split-splice
                                             _hd1759117970_
                                             '0)))
                                       (begin
                                         (let ((_g19992_
                                                (values-count _g19991_)))
                                           (if (not (fx= _g19992_ 2))
                                               (error "Context expects 2 values"
                                                      _g19992_)))
                                         (let ((_target1759317975_
                                                (values-ref _g19991_ 0))
                                               (_tl1759517977_
                                                (values-ref _g19991_ 1)))
                                           (if (gx#stx-null? _tl1759517977_)
                                               (letrec ((_loop1759617980_
                                                         (lambda (_hd1759417983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1760017985_)
                   (if (gx#stx-pair? _hd1759417983_)
                       (let ((_e1759717988_ (gx#stx-e _hd1759417983_)))
                         (let ((_lp-hd1759817991_ (##car _e1759717988_))
                               (_lp-tl1759917993_ (##cdr _e1759717988_)))
                           (_loop1759617980_
                            _lp-tl1759917993_
                            (cons _lp-hd1759817991_ _arg1760017985_))))
                       (let ((_arg1760117996_ (reverse _arg1760017985_)))
                         (if (gx#stx-pair? _tl1759217972_)
                             (let ((_e1760217999_ (gx#stx-e _tl1759217972_)))
                               (let ((_hd1760318002_ (##car _e1760217999_))
                                     (_tl1760418004_ (##cdr _e1760217999_)))
                                 (if (gx#stx-pair? _hd1760318002_)
                                     (let ((_e1760518007_
                                            (gx#stx-e _hd1760318002_)))
                                       (let ((_hd1760618010_
                                              (##car _e1760518007_))
                                             (_tl1760718012_
                                              (##cdr _e1760518007_)))
                                         (if (gx#identifier? _hd1760618010_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1760618010_)
                                                 (if (gx#stx-pair?
                                                      _tl1760718012_)
                                                     (let ((_e1760818015_
                                                            (gx#stx-e
                                                             _tl1760718012_)))
                                                       (let ((_hd1760918018_
                                                              (##car _e1760818015_))
                                                             (_tl1761018020_
                                                              (##cdr _e1760818015_)))
                                                         (if (gx#stx-pair?
                                                              _hd1760918018_)
                                                             (let ((_e1761118023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1760918018_)))
                       (let ((_hd1761218026_ (##car _e1761118023_))
                             (_tl1761318028_ (##cdr _e1761118023_)))
                         (if (gx#identifier? _hd1761218026_)
                             (if (gx#stx-eq? '%#ref _hd1761218026_)
                                 (if (gx#stx-pair? _tl1761318028_)
                                     (let ((_e1761418031_
                                            (gx#stx-e _tl1761318028_)))
                                       (let ((_hd1761518034_
                                              (##car _e1761418031_))
                                             (_tl1761618036_
                                              (##cdr _e1761418031_)))
                                         (if (gx#stx-null? _tl1761618036_)
                                             (if (gx#stx-pair/null?
                                                  _tl1761018020_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1761018020_)
                                                           '0)
                                                     (let ((_g19993_
                                                            (gx#syntax-split-splice
                                                             _tl1761018020_
                                                             '0)))
                                                       (begin
                                                         (let ((_g19994_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g19993_)))
                   (if (not (fx= _g19994_ 2))
                       (error "Context expects 2 values" _g19994_)))
                 (let ((_target1761718039_ (values-ref _g19993_ 0))
                       (_tl1761918041_ (values-ref _g19993_ 1)))
                   (if (gx#stx-null? _tl1761918041_)
                       (letrec ((_loop1762018044_
                                 (lambda (_hd1761818047_ _xarg1762418049_)
                                   (if (gx#stx-pair? _hd1761818047_)
                                       (let ((_e1762118052_
                                              (gx#stx-e _hd1761818047_)))
                                         (let ((_lp-hd1762218055_
                                                (##car _e1762118052_))
                                               (_lp-tl1762318057_
                                                (##cdr _e1762118052_)))
                                           (if (gx#stx-pair? _lp-hd1762218055_)
                                               (let ((_e1762618060_
                                                      (gx#stx-e
                                                       _lp-hd1762218055_)))
                                                 (let ((_hd1762718063_
                                                        (##car _e1762618060_))
                                                       (_tl1762818065_
                                                        (##cdr _e1762618060_)))
                                                   (if (gx#identifier?
                                                        _hd1762718063_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1762718063_)
                                                           (if (gx#stx-pair?
                                                                _tl1762818065_)
                                                               (let ((_e1762918068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1762818065_)))
                         (let ((_hd1763018071_ (##car _e1762918068_))
                               (_tl1763118073_ (##cdr _e1762918068_)))
                           (if (gx#stx-null? _tl1763118073_)
                               (_loop1762018044_
                                _lp-tl1762318057_
                                (cons _hd1763018071_ _xarg1762418049_))
                               (_g1758317962_ _g1758617965_))))
                       (_g1758317962_ _g1758617965_))
                   (_g1758317962_ _g1758617965_))
               (_g1758317962_ _g1758617965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1758317962_ _g1758617965_))))
                                       (let ((_xarg1762518076_
                                              (reverse _xarg1762418049_)))
                                         (if (gx#stx-null? _tl1760418004_)
                                             ((lambda (_L18079_
                                                       _L18080_
                                                       _L18081_)
                                                (gxc#generate-runtime-binding-id
                                                 _L18080_))
                                              _xarg1762518076_
                                              _hd1761518034_
                                              _arg1760117996_)
                                             (_g1758317962_
                                              _g1758617965_)))))))
                         (_loop1762018044_ _target1761718039_ '()))
                       (_g1758317962_ _g1758617965_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1758317962_
                                                      _g1758617965_))
                                                 (_g1758317962_ _g1758617965_))
                                             (_g1758317962_ _g1758617965_))))
                                     (_g1758317962_ _g1758617965_))
                                 (_g1758317962_ _g1758617965_))
                             (_g1758317962_ _g1758617965_))))
                     (_g1758317962_ _g1758617965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1758317962_
                                                      _g1758617965_))
                                                 (_g1758317962_ _g1758617965_))
                                             (_g1758317962_ _g1758617965_))))
                                     (_g1758317962_ _g1758617965_))))
                             (_g1758317962_ _g1758617965_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1759617980_
                                                  _target1759317975_
                                                  '()))
                                               (_g1758317962_
                                                _g1758617965_)))))
                                     (_g1758317962_ _g1758617965_))
                                 (_g1758317962_ _g1758617965_))))
                         (_g1758317962_ _g1758617965_)))))
              (_g1758218110_ _form17581_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form17385_)
      (let ((_g1738717401_
             (lambda (_g1738817398_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1738817398_))))
        (let ((_g1738617578_
               (lambda (_g1738817404_)
                 (if (gx#stx-pair? _g1738817404_)
                     (let ((_e1739117406_ (gx#stx-e _g1738817404_)))
                       (let ((_hd1739217409_ (##car _e1739117406_))
                             (_tl1739317411_ (##cdr _e1739117406_)))
                         (if (gx#stx-pair? _tl1739317411_)
                             (let ((_e1739417414_ (gx#stx-e _tl1739317411_)))
                               (let ((_hd1739517417_ (##car _e1739417414_))
                                     (_tl1739617419_ (##cdr _e1739417414_)))
                                 (if (gx#stx-null? _tl1739617419_)
                                     ((lambda (_L17422_ _L17423_)
                                        (let ((_g1743817466_
                                               (lambda (_g1743917463_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1743917463_))))
                                          (let ((_g1743717479_
                                                 (lambda (_g1743917469_)
                                                   ((lambda (_L17471_)
                                                      (cons '0 '()))
                                                    _g1743917469_))))
                                            (let ((_g1743617528_
                                                   (lambda (_g1743917482_)
                                                     (if (gx#stx-pair/null?
                                                          _g1743917482_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1743917482_)
                           '0)
                     (let ((_g19995_
                            (gx#syntax-split-splice _g1743917482_ '0)))
                       (begin
                         (let ((_g19996_ (values-count _g19995_)))
                           (if (not (fx= _g19996_ 2))
                               (error "Context expects 2 values" _g19996_)))
                         (let ((_target1745217484_ (values-ref _g19995_ 0))
                               (_tl1745417486_ (values-ref _g19995_ 1)))
                           (letrec ((_loop1745517489_
                                     (lambda (_hd1745317492_ _arg1745917494_)
                                       (if (gx#stx-pair? _hd1745317492_)
                                           (let ((_e1745617497_
                                                  (gx#stx-e _hd1745317492_)))
                                             (let ((_lp-hd1745717500_
                                                    (##car _e1745617497_))
                                                   (_lp-tl1745817502_
                                                    (##cdr _e1745617497_)))
                                               (_loop1745517489_
                                                _lp-tl1745817502_
                                                (cons _lp-hd1745717500_
                                                      _arg1745917494_))))
                                           (let ((_arg1746017505_
                                                  (reverse _arg1745917494_)))
                                             ((lambda (_L17508_ _L17509_)
                                                (cons (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1752017523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1752117525_)
                                  (cons _g1752017523_ _g1752117525_))
                                '()
                                _L17509_)))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _tl1745417486_
                                              _arg1746017505_))))))
                             (_loop1745517489_ _target1745217484_ '())))))
                     (_g1743717479_ _g1743917482_))
                 (_g1743717479_ _g1743917482_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1743517575_
                                                     (lambda (_g1743917531_)
                                                       (if (gx#stx-pair/null?
                                                            _g1743917531_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1743917531_)
                             '0)
                       (let ((_g19997_
                              (gx#syntax-split-splice _g1743917531_ '0)))
                         (begin
                           (let ((_g19998_ (values-count _g19997_)))
                             (if (not (fx= _g19998_ 2))
                                 (error "Context expects 2 values" _g19998_)))
                           (let ((_target1744117533_ (values-ref _g19997_ 0))
                                 (_tl1744317535_ (values-ref _g19997_ 1)))
                             (if (gx#stx-null? _tl1744317535_)
                                 (letrec ((_loop1744417538_
                                           (lambda (_hd1744217541_
                                                    _arg1744817543_)
                                             (if (gx#stx-pair? _hd1744217541_)
                                                 (let ((_e1744517546_
                                                        (gx#stx-e
                                                         _hd1744217541_)))
                                                   (let ((_lp-hd1744617549_
                                                          (##car _e1744517546_))
                                                         (_lp-tl1744717551_
                                                          (##cdr _e1744517546_)))
                                                     (_loop1744417538_
                                                      _lp-tl1744717551_
                                                      (cons _lp-hd1744617549_
                                                            _arg1744817543_))))
                                                 (let ((_arg1744917554_
                                                        (reverse _arg1744817543_)))
                                                   ((lambda (_L17557_)
                                                      (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1756717570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1756817572_)
                                  (cons _g1756717570_ _g1756817572_))
                                '()
                                _L17557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg1744917554_))))))
                                   (_loop1744417538_ _target1744117533_ '()))
                                 (_g1743617528_ _g1743917531_)))))
                       (_g1743617528_ _g1743917531_))
                   (_g1743617528_ _g1743917531_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1743517575_ _L17423_))))))
                                      _hd1739517417_
                                      _hd1739217409_)
                                     (_g1738717401_ _g1738817404_))))
                             (_g1738717401_ _g1738817404_))))
                     (_g1738717401_ _g1738817404_)))))
          (_g1738617578_ _form17385_)))))
  (define gxc#lambda-expr?
    (lambda (_expr17338_)
      (let ((_g1734117351_
             (lambda (_g1734217348_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1734217348_))))
        (let ((_g1734017358_ (lambda (_g1734217354_) ((lambda () '#f)))))
          (let ((_g1733917382_
                 (lambda (_g1734217361_)
                   (if (gx#stx-pair? _g1734217361_)
                       (let ((_e1734417363_ (gx#stx-e _g1734217361_)))
                         (let ((_hd1734517366_ (##car _e1734417363_))
                               (_tl1734617368_ (##cdr _e1734417363_)))
                           (if (gx#identifier? _hd1734517366_)
                               (if (gx#stx-eq? '%#lambda _hd1734517366_)
                                   ((lambda (_L17371_) '#t) _tl1734617368_)
                                   (_g1734017358_ _g1734217361_))
                               (_g1734017358_ _g1734217361_))))
                       (_g1734017358_ _g1734217361_)))))
            (_g1733917382_ _expr17338_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr17291_)
      (let ((_g1729417304_
             (lambda (_g1729517301_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1729517301_))))
        (let ((_g1729317311_ (lambda (_g1729517307_) ((lambda () '#f)))))
          (let ((_g1729217335_
                 (lambda (_g1729517314_)
                   (if (gx#stx-pair? _g1729517314_)
                       (let ((_e1729717316_ (gx#stx-e _g1729517314_)))
                         (let ((_hd1729817319_ (##car _e1729717316_))
                               (_tl1729917321_ (##cdr _e1729717316_)))
                           (if (gx#identifier? _hd1729817319_)
                               (if (gx#stx-eq? '%#case-lambda _hd1729817319_)
                                   ((lambda (_L17324_) '#t) _tl1729917321_)
                                   (_g1729317311_ _g1729517314_))
                               (_g1729317311_ _g1729517314_))))
                       (_g1729317311_ _g1729517314_)))))
            (_g1729217335_ _expr17291_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr17160_)
      (let ((_g1716317193_
             (lambda (_g1716417190_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1716417190_))))
        (let ((_g1716217200_ (lambda (_g1716417196_) ((lambda () '#f)))))
          (let ((_g1716117288_
                 (lambda (_g1716417203_)
                   (if (gx#stx-pair? _g1716417203_)
                       (let ((_e1716817205_ (gx#stx-e _g1716417203_)))
                         (let ((_hd1716917208_ (##car _e1716817205_))
                               (_tl1717017210_ (##cdr _e1716817205_)))
                           (if (gx#identifier? _hd1716917208_)
                               (if (gx#stx-eq? '%#let-values _hd1716917208_)
                                   (if (gx#stx-pair? _tl1717017210_)
                                       (let ((_e1717117213_
                                              (gx#stx-e _tl1717017210_)))
                                         (let ((_hd1717217216_
                                                (##car _e1717117213_))
                                               (_tl1717317218_
                                                (##cdr _e1717117213_)))
                                           (if (gx#stx-pair? _hd1717217216_)
                                               (let ((_e1717417221_
                                                      (gx#stx-e
                                                       _hd1717217216_)))
                                                 (let ((_hd1717517224_
                                                        (##car _e1717417221_))
                                                       (_tl1717617226_
                                                        (##cdr _e1717417221_)))
                                                   (if (gx#stx-pair?
                                                        _hd1717517224_)
                                                       (let ((_e1717717229_
                                                              (gx#stx-e
                                                               _hd1717517224_)))
                                                         (let ((_hd1717817232_
                                                                (##car _e1717717229_))
                                                               (_tl1717917234_
                                                                (##cdr _e1717717229_)))
                                                           (if (gx#stx-pair?
                                                                _hd1717817232_)
                                                               (let ((_e1718017237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1717817232_)))
                         (let ((_hd1718117240_ (##car _e1718017237_))
                               (_tl1718217242_ (##cdr _e1718017237_)))
                           (if (gx#stx-null? _tl1718217242_)
                               (if (gx#stx-pair? _tl1717917234_)
                                   (let ((_e1718317245_
                                          (gx#stx-e _tl1717917234_)))
                                     (let ((_hd1718417248_
                                            (##car _e1718317245_))
                                           (_tl1718517250_
                                            (##cdr _e1718317245_)))
                                       (if (gx#stx-null? _tl1718517250_)
                                           (if (gx#stx-null? _tl1717617226_)
                                               (if (gx#stx-pair?
                                                    _tl1717317218_)
                                                   (let ((_e1718617253_
                                                          (gx#stx-e
                                                           _tl1717317218_)))
                                                     (let ((_hd1718717256_
                                                            (##car _e1718617253_))
                                                           (_tl1718817258_
                                                            (##cdr _e1718617253_)))
                                                       (if (gx#stx-null?
                                                            _tl1718817258_)
                                                           ((lambda (_L17261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L17262_
                             _L17263_)
                      (if (gx#identifier? _L17263_)
                          (if (gxc#lambda-expr? _L17262_)
                              (gxc#case-lambda-expr? _L17261_)
                              '#f)
                          '#f))
                    _hd1718717256_
                    _hd1718417248_
                    _hd1718117240_)
                   (_g1716217200_ _g1716417203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1716217200_
                                                    _g1716417203_))
                                               (_g1716217200_ _g1716417203_))
                                           (_g1716217200_ _g1716417203_))))
                                   (_g1716217200_ _g1716417203_))
                               (_g1716217200_ _g1716417203_))))
                       (_g1716217200_ _g1716417203_))))
               (_g1716217200_ _g1716417203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1716217200_ _g1716417203_))))
                                       (_g1716217200_ _g1716417203_))
                                   (_g1716217200_ _g1716417203_))
                               (_g1716217200_ _g1716417203_))))
                       (_g1716217200_ _g1716417203_)))))
            (_g1716117288_ _expr17160_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda16900
      (lambda (_stx16902_ _id16903_ _clauses16904_ _gensym?16905_)
        ((letrec ((_lp16907_
                   (lambda (_rest16909_ _ids16910_ _impls16911_ _clauses16912_)
                     (let ((_rest1691316921_ _rest16909_))
                       (let ((_E1691616925_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1691316921_))))
                         (let ((_else1691516929_
                                (lambda ()
                                  (values (reverse _ids16910_)
                                          (reverse _impls16911_)
                                          (reverse _clauses16912_)))))
                           (let ((_K1691717134_
                                  (lambda (_rest16932_ _clause16933_)
                                    (if (gxc#dispatch-lambda-form?
                                         _clause16933_)
                                        (_lp16907_
                                         _rest16932_
                                         _ids16910_
                                         _impls16911_
                                         (cons _clause16933_ _clauses16912_))
                                        (let ((_g1693516946_
                                               (lambda (_g1693616943_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1693616943_))))
                                          (let ((_g1693417131_
                                                 (lambda (_g1693616949_)
                                                   (if (gx#stx-pair?
                                                        _g1693616949_)
                                                       (let ((_e1693916951_
                                                              (gx#stx-e
                                                               _g1693616949_)))
                                                         (let ((_hd1694016954_
                                                                (##car _e1693916951_))
                                                               (_tl1694116956_
                                                                (##cdr _e1693916951_)))
                                                           ((lambda (_L16959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16960_)
                      (let ((_id16977_
                             (make-symbol
                              (gx#stx-e _id16903_)
                              '"__"
                              (length _clauses16912_)
                              (if _gensym?16905_ (gensym '__) '""))))
                        (let ((_id16979_
                               (gx#core-quote-syntax__1
                                _id16977_
                                (gx#stx-source _stx16902_))))
                          (let ((_impl16981_
                                 (gxc#xform-wrap-source
                                  (cons (gx#datum->syntax__0 '#f '%#lambda)
                                        (cons _L16960_ _L16959_))
                                  _stx16902_)))
                            (let ((_clause17128_
                                   (let ((_g1698517013_
                                          (lambda (_g1698617010_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1698617010_))))
                                     (let ((_g1698417029_
                                            (lambda (_g1698617016_)
                                              ((lambda (_L17018_)
                                                 (cons _L16960_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'apply '()))
                                  (cons (cons '%#ref (cons _id16979_ '()))
                                        (cons (cons (gx#datum->syntax__0
                                                     '#f
                                                     '%#ref)
                                                    (cons _L17018_ '()))
                                              '()))))
                      _stx16902_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g1698617016_))))
                                       (let ((_g1698317078_
                                              (lambda (_g1698617032_)
                                                (if (gx#stx-pair/null?
                                                     _g1698617032_)
                                                    (if (fx>= (gx#stx-length
                                                               _g1698617032_)
                                                              '0)
                                                        (let ((_g19999_
                                                               (gx#syntax-split-splice
                                                                _g1698617032_
                                                                '0)))
                                                          (begin
                                                            (let ((_g20000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g19999_)))
                      (if (not (fx= _g20000_ 2))
                          (error "Context expects 2 values" _g20000_)))
                    (let ((_target1699917034_ (values-ref _g19999_ 0))
                          (_tl1700117036_ (values-ref _g19999_ 1)))
                      (letrec ((_loop1700217039_
                                (lambda (_hd1700017042_ _arg1700617044_)
                                  (if (gx#stx-pair? _hd1700017042_)
                                      (let ((_e1700317047_
                                             (gx#stx-e _hd1700017042_)))
                                        (let ((_lp-hd1700417050_
                                               (##car _e1700317047_))
                                              (_lp-tl1700517052_
                                               (##cdr _e1700317047_)))
                                          (_loop1700217039_
                                           _lp-tl1700517052_
                                           (cons _lp-hd1700417050_
                                                 _arg1700617044_))))
                                      (let ((_arg1700717055_
                                             (reverse _arg1700617044_)))
                                        ((lambda (_L17058_ _L17059_)
                                           (cons _L16960_
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'apply '()))
                            (cons (cons '%#ref (cons _id16979_ '()))
                                  (foldr1 cons
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L17058_ '()))
                                                '())
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1707017073_
                                                             _g1707117075_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1707017073_ '()))
                    _g1707117075_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L17059_))))))
                _stx16902_)
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl1700117036_
                                         _arg1700717055_))))))
                        (_loop1700217039_ _target1699917034_ '())))))
                (_g1698417029_ _g1698617032_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1698417029_
                                                     _g1698617032_)))))
                                         (let ((_g1698217125_
                                                (lambda (_g1698617081_)
                                                  (if (gx#stx-pair/null?
                                                       _g1698617081_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1698617081_)
                        '0)
                  (let ((_g20001_ (gx#syntax-split-splice _g1698617081_ '0)))
                    (begin
                      (let ((_g20002_ (values-count _g20001_)))
                        (if (not (fx= _g20002_ 2))
                            (error "Context expects 2 values" _g20002_)))
                      (let ((_target1698817083_ (values-ref _g20001_ 0))
                            (_tl1699017085_ (values-ref _g20001_ 1)))
                        (if (gx#stx-null? _tl1699017085_)
                            (letrec ((_loop1699117088_
                                      (lambda (_hd1698917091_ _arg1699517093_)
                                        (if (gx#stx-pair? _hd1698917091_)
                                            (let ((_e1699217096_
                                                   (gx#stx-e _hd1698917091_)))
                                              (let ((_lp-hd1699317099_
                                                     (##car _e1699217096_))
                                                    (_lp-tl1699417101_
                                                     (##cdr _e1699217096_)))
                                                (_loop1699117088_
                                                 _lp-tl1699417101_
                                                 (cons _lp-hd1699317099_
                                                       _arg1699517093_))))
                                            (let ((_arg1699617104_
                                                   (reverse _arg1699517093_)))
                                              ((lambda (_L17107_)
                                                 (cons _L16960_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _id16979_ '()))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1711717120_
                                                     _g1711817122_)
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _g1711717120_
                                                                '()))
                                                    _g1711817122_))
                                            '()
                                            _L17107_))))
                      _stx16902_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _arg1699617104_))))))
                              (_loop1699117088_ _target1698817083_ '()))
                            (_g1698317078_ _g1698617081_)))))
                  (_g1698317078_ _g1698617081_))
              (_g1698317078_ _g1698617081_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1698217125_ _L16960_)))))))
                              (let ()
                                (_lp16907_
                                 _rest16932_
                                 (cons _id16979_ _ids16910_)
                                 (cons _impl16981_ _impls16911_)
                                 (cons _clause17128_ _clauses16912_))))))))
                    _tl1694116956_
                    _hd1694016954_)))
               (_g1693516946_ _g1693616949_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1693417131_ _clause16933_)))))))
                             (if (##pair? _rest1691316921_)
                                 (let ((_hd1691817137_
                                        (##car _rest1691316921_))
                                       (_tl1691917139_
                                        (##cdr _rest1691316921_)))
                                   (let ((_clause17142_ _hd1691817137_))
                                     (let ((_rest17144_ _tl1691917139_))
                                       (_K1691717134_
                                        _rest17144_
                                        _clause17142_))))
                                 (_else1691516929_)))))))))
           _lp16907_)
         _clauses16904_
         '()
         '()
         '())))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx17149_ _id17150_ _clauses17151_)
          (let ((_gensym?17153_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda16900
             _stx17149_
             _id17150_
             _clauses17151_
             _gensym?17153_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g20004_
          (let ((_g20003_ (length _g20004_)))
            (cond ((fx= _g20003_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g20004_))
                  ((fx= _g20003_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda16900
                          _g20004_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g20004_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx16491_)
      (let ((_case-lambda-clause-def16493_
             (lambda (_id16898_ _impl16899_)
               (gxc#xform-wrap-source
                (cons '%#define-values
                      (cons (cons _id16898_ '())
                            (cons (gxc#compile-e _impl16899_) '())))
                _stx16491_))))
        (let ((_g1649716542_
               (lambda (_g1649816539_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1649816539_))))
          (let ((_g1649616588_
                 (lambda (_g1649816545_)
                   (if (gx#stx-pair? _g1649816545_)
                       (let ((_e1652916547_ (gx#stx-e _g1649816545_)))
                         (let ((_hd1653016550_ (##car _e1652916547_))
                               (_tl1653116552_ (##cdr _e1652916547_)))
                           (if (gx#stx-pair? _tl1653116552_)
                               (let ((_e1653216555_ (gx#stx-e _tl1653116552_)))
                                 (let ((_hd1653316558_ (##car _e1653216555_))
                                       (_tl1653416560_ (##cdr _e1653216555_)))
                                   (if (gx#stx-pair? _tl1653416560_)
                                       (let ((_e1653516563_
                                              (gx#stx-e _tl1653416560_)))
                                         (let ((_hd1653616566_
                                                (##car _e1653516563_))
                                               (_tl1653716568_
                                                (##cdr _e1653516563_)))
                                           (if (gx#stx-null? _tl1653716568_)
                                               ((lambda (_L16571_ _L16572_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L16572_
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16571_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx16491_))
                                                _hd1653616566_
                                                _hd1653316558_)
                                               (_g1649716542_ _g1649816545_))))
                                       (_g1649716542_ _g1649816545_))))
                               (_g1649716542_ _g1649816545_))))
                       (_g1649716542_ _g1649816545_)))))
            (let ((_g1649516770_
                   (lambda (_g1649816591_)
                     (if (gx#stx-pair? _g1649816591_)
                         (let ((_e1651516593_ (gx#stx-e _g1649816591_)))
                           (let ((_hd1651616596_ (##car _e1651516593_))
                                 (_tl1651716598_ (##cdr _e1651516593_)))
                             (if (gx#stx-pair? _tl1651716598_)
                                 (let ((_e1651816601_
                                        (gx#stx-e _tl1651716598_)))
                                   (let ((_hd1651916604_ (##car _e1651816601_))
                                         (_tl1652016606_
                                          (##cdr _e1651816601_)))
                                     (if (gx#stx-pair? _hd1651916604_)
                                         (let ((_e1652116609_
                                                (gx#stx-e _hd1651916604_)))
                                           (let ((_hd1652216612_
                                                  (##car _e1652116609_))
                                                 (_tl1652316614_
                                                  (##cdr _e1652116609_)))
                                             (if (gx#stx-null? _tl1652316614_)
                                                 (if (gx#stx-pair?
                                                      _tl1652016606_)
                                                     (let ((_e1652416617_
                                                            (gx#stx-e
                                                             _tl1652016606_)))
                                                       (let ((_hd1652516620_
                                                              (##car _e1652416617_))
                                                             (_tl1652616622_
                                                              (##cdr _e1652416617_)))
                                                         (if (gx#stx-null?
                                                              _tl1652616622_)
                                                             ((lambda (_L16625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16626_)
                        (if (if (gx#identifier? _L16626_)
                                (gxc#opt-lambda-expr? _L16625_)
                                '#f)
                            (let ((_g1664216672_
                                   (lambda (_g1664316669_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1664316669_))))
                              (let ((_g1664116767_
                                     (lambda (_g1664316675_)
                                       (if (gx#stx-pair? _g1664316675_)
                                           (let ((_e1664716677_
                                                  (gx#stx-e _g1664316675_)))
                                             (let ((_hd1664816680_
                                                    (##car _e1664716677_))
                                                   (_tl1664916682_
                                                    (##cdr _e1664716677_)))
                                               (if (gx#stx-pair?
                                                    _tl1664916682_)
                                                   (let ((_e1665016685_
                                                          (gx#stx-e
                                                           _tl1664916682_)))
                                                     (let ((_hd1665116688_
                                                            (##car _e1665016685_))
                                                           (_tl1665216690_
                                                            (##cdr _e1665016685_)))
                                                       (if (gx#stx-pair?
                                                            _hd1665116688_)
                                                           (let ((_e1665316693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1665116688_)))
                     (let ((_hd1665416696_ (##car _e1665316693_))
                           (_tl1665516698_ (##cdr _e1665316693_)))
                       (if (gx#stx-pair? _hd1665416696_)
                           (let ((_e1665616701_ (gx#stx-e _hd1665416696_)))
                             (let ((_hd1665716704_ (##car _e1665616701_))
                                   (_tl1665816706_ (##cdr _e1665616701_)))
                               (if (gx#stx-pair? _hd1665716704_)
                                   (let ((_e1665916709_
                                          (gx#stx-e _hd1665716704_)))
                                     (let ((_hd1666016712_
                                            (##car _e1665916709_))
                                           (_tl1666116714_
                                            (##cdr _e1665916709_)))
                                       (if (gx#stx-null? _tl1666116714_)
                                           (if (gx#stx-pair? _tl1665816706_)
                                               (let ((_e1666216717_
                                                      (gx#stx-e
                                                       _tl1665816706_)))
                                                 (let ((_hd1666316720_
                                                        (##car _e1666216717_))
                                                       (_tl1666416722_
                                                        (##cdr _e1666216717_)))
                                                   (if (gx#stx-null?
                                                        _tl1666416722_)
                                                       (if (gx#stx-null?
                                                            _tl1665516698_)
                                                           (if (gx#stx-pair?
                                                                _tl1665216690_)
                                                               (let ((_e1666516725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1665216690_)))
                         (let ((_hd1666616728_ (##car _e1666516725_))
                               (_tl1666716730_ (##cdr _e1666516725_)))
                           (if (gx#stx-null? _tl1666716730_)
                               ((lambda (_L16733_ _L16734_ _L16735_)
                                  (let ((_lambda-id16759_
                                         (make-symbol
                                          (gx#stx-e _L16626_)
                                          '"__"
                                          (gx#stx-e _L16735_))))
                                    (let ((_lambda-id16761_
                                           (gx#core-quote-syntax__1
                                            _lambda-id16759_
                                            (gx#stx-source _stx16491_))))
                                      (let ((_g20005_
                                             (gx#core-bind-runtime!__0
                                              _lambda-id16761_)))
                                        (let ((_new-case-lambda-expr16764_
                                               (gxc#apply-expression-subst
                                                _L16733_
                                                _L16735_
                                                _lambda-id16761_)))
                                          (let ()
                                            (begin
                                              (gxc#verbose
                                               '"lift opt-lambda dispatch "
                                               (gxc#generate-runtime-binding-id
                                                _L16626_)
                                               '" => "
                                               (gxc#generate-runtime-binding-id
                                                _lambda-id16761_))
                                              (gxc#xform-wrap-source
                                               (cons '%#begin
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _lambda-id16761_ '())
                                (cons (gxc#compile-e _L16734_) '())))
                    _stx16491_)
                   (cons (gxc#lift-top-lambda-define-values%
                          (gxc#xform-wrap-source
                           (cons '%#define-values
                                 (cons (cons _L16626_ '())
                                       (cons _new-case-lambda-expr16764_ '())))
                           _stx16491_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx16491_))))))))
                                _hd1666616728_
                                _hd1666316720_
                                _hd1666016712_)
                               (_g1664216672_ _g1664316675_))))
                       (_g1664216672_ _g1664316675_))
                   (_g1664216672_ _g1664316675_))
               (_g1664216672_ _g1664316675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1664216672_ _g1664316675_))
                                           (_g1664216672_ _g1664316675_))))
                                   (_g1664216672_ _g1664316675_))))
                           (_g1664216672_ _g1664316675_))))
                   (_g1664216672_ _g1664316675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1664216672_
                                                    _g1664316675_))))
                                           (_g1664216672_ _g1664316675_)))))
                                (_g1664116767_ _L16625_)))
                            (_g1649616588_ _g1649816591_)))
                      _hd1652516620_
                      _hd1652216612_)
                     (_g1649616588_ _g1649816591_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1649616588_
                                                      _g1649816591_))
                                                 (_g1649616588_
                                                  _g1649816591_))))
                                         (_g1649616588_ _g1649816591_))))
                                 (_g1649616588_ _g1649816591_))))
                         (_g1649616588_ _g1649816591_)))))
              (let ((_g1649416895_
                     (lambda (_g1649816773_)
                       (if (gx#stx-pair? _g1649816773_)
                           (let ((_e1650116775_ (gx#stx-e _g1649816773_)))
                             (let ((_hd1650216778_ (##car _e1650116775_))
                                   (_tl1650316780_ (##cdr _e1650116775_)))
                               (if (gx#stx-pair? _tl1650316780_)
                                   (let ((_e1650416783_
                                          (gx#stx-e _tl1650316780_)))
                                     (let ((_hd1650516786_
                                            (##car _e1650416783_))
                                           (_tl1650616788_
                                            (##cdr _e1650416783_)))
                                       (if (gx#stx-pair? _hd1650516786_)
                                           (let ((_e1650716791_
                                                  (gx#stx-e _hd1650516786_)))
                                             (let ((_hd1650816794_
                                                    (##car _e1650716791_))
                                                   (_tl1650916796_
                                                    (##cdr _e1650716791_)))
                                               (if (gx#stx-null?
                                                    _tl1650916796_)
                                                   (if (gx#stx-pair?
                                                        _tl1650616788_)
                                                       (let ((_e1651016799_
                                                              (gx#stx-e
                                                               _tl1650616788_)))
                                                         (let ((_hd1651116802_
                                                                (##car _e1651016799_))
                                                               (_tl1651216804_
                                                                (##cdr _e1651016799_)))
                                                           (if (gx#stx-null?
                                                                _tl1651216804_)
                                                               ((lambda (_L16807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L16808_)
                          (if (if (gx#identifier? _L16808_)
                                  (gxc#case-lambda-expr? _L16807_)
                                  '#f)
                              (let ((_g1682516839_
                                     (lambda (_g1682616836_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1682616836_))))
                                (let ((_g1682416870_
                                       (lambda (_g1682616842_)
                                         (if (gx#stx-pair? _g1682616842_)
                                             (let ((_e1683216844_
                                                    (gx#stx-e _g1682616842_)))
                                               (let ((_hd1683316847_
                                                      (##car _e1683216844_))
                                                     (_tl1683416849_
                                                      (##cdr _e1683216844_)))
                                                 ((lambda (_L16852_)
                                                    (let ((_g20006_
                                                           (gxc#lift-case-lambda-clauses__0
                                                            _stx16491_
                                                            _L16808_
                                                            _L16852_)))
                                                      (begin
                                                        (let ((_g20007_
                                                               (values-count
                                                                _g20006_)))
                                                          (if (not (fx= _g20007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                3))
                      (error "Context expects 3 values" _g20007_)))
                (let ((_ids16862_ (values-ref _g20006_ 0))
                      (_impls16863_ (values-ref _g20006_ 1))
                      (_clauses16864_ (values-ref _g20006_ 2)))
                  (let ((_g20008_ (for-each gx#core-bind-runtime! _ids16862_)))
                    (let ((_defs16867_
                           (map _case-lambda-clause-def16493_
                                _ids16862_
                                _impls16863_)))
                      (let ()
                        (begin
                          (gxc#verbose
                           '"lift case-lambda clauses "
                           (gxc#generate-runtime-binding-id _L16808_)
                           '" => "
                           (map gxc#identifier-symbol _ids16862_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (foldr1 cons
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _L16808_ '())
                                                            (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#case-lambda _clauses16864_)
                           (gx#datum->syntax__0 '#f 'case-lambda-expr))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx16491_)
                                               '())
                                         _defs16867_))
                           _stx16491_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1683416849_)))
                                             (_g1682516839_ _g1682616842_)))))
                                  (let ((_g1682316892_
                                         (lambda (_g1682616873_)
                                           (if (gx#stx-pair? _g1682616873_)
                                               (let ((_e1682816875_
                                                      (gx#stx-e
                                                       _g1682616873_)))
                                                 (let ((_hd1682916878_
                                                        (##car _e1682816875_))
                                                       (_tl1683016880_
                                                        (##cdr _e1682816875_)))
                                                   ((lambda (_L16883_)
                                                      (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16883_)
                  _stx16491_
                  (_g1682416870_ _g1682616873_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1683016880_)))
                                               (_g1682416870_
                                                _g1682616873_)))))
                                    (_g1682316892_ _L16807_))))
                              (_g1649516770_ _g1649816773_)))
                        _hd1651116802_
                        _hd1650816794_)
                       (_g1649516770_ _g1649816773_))))
               (_g1649516770_ _g1649816773_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1649516770_
                                                    _g1649816773_))))
                                           (_g1649516770_ _g1649816773_))))
                                   (_g1649516770_ _g1649816773_))))
                           (_g1649516770_ _g1649816773_)))))
                (_g1649416895_ _stx16491_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx15914_)
      (let ((_bind-e__opt-lambda16473__1995519956_
             (lambda (_id16475_ _expr16476_ _compile?16477_)
               (cons (cons _id16475_ '())
                     (cons (if _compile?16477_
                               (gxc#compile-e _expr16476_)
                               _expr16476_)
                           '())))))
        (let ((_bind-e__0__1995719958_
               (lambda (_id16482_ _expr16483_)
                 (let ((_compile?16485_ '#t))
                   (_bind-e__opt-lambda16473__1995519956_
                    _id16482_
                    _expr16483_
                    _compile?16485_)))))
          (let ((_bind-e15916_
                 (lambda _g20018_
                   (let ((_g20017_ (length _g20018_)))
                     (cond ((fx= _g20017_ 2)
                            (apply _bind-e__0__1995719958_ _g20018_))
                           ((fx= _g20017_ 3)
                            (apply _bind-e__opt-lambda16473__1995519956_
                                   _g20018_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g20018_)))))))
            (let ((_compile-bindings15917_
                   (lambda (_rest16059_)
                     ((letrec ((_lp16061_
                                (lambda (_rest16063_
                                         _lift116064_
                                         _lift216065_
                                         _bind16066_)
                                  (let ((_rest1606716075_ _rest16063_))
                                    (let ((_E1607016079_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1606716075_))))
                                      (let ((_else1606916083_
                                             (lambda ()
                                               (values (reverse _lift116064_)
                                                       (reverse _lift216065_)
                                                       (reverse _bind16066_)))))
                                        (let ((_K1607116462_
                                               (lambda (_rest16086_ _hd16087_)
                                                 (let ((_g1609116127_
                                                        (lambda (_g1609216124_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1609216124_))))
                                                   (let ((_g1609016168_
                                                          (lambda (_g1609216130_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1609216130_)
                        (let ((_e1611716132_ (gx#stx-e _g1609216130_)))
                          (let ((_hd1611816135_ (##car _e1611716132_))
                                (_tl1611916137_ (##cdr _e1611716132_)))
                            (if (gx#stx-pair? _tl1611916137_)
                                (let ((_e1612016140_
                                       (gx#stx-e _tl1611916137_)))
                                  (let ((_hd1612116143_ (##car _e1612016140_))
                                        (_tl1612216145_ (##cdr _e1612016140_)))
                                    (if (gx#stx-null? _tl1612216145_)
                                        ((lambda (_L16148_ _L16149_)
                                           (_lp16061_
                                            _rest16086_
                                            _lift116064_
                                            _lift216065_
                                            (cons (cons _L16149_
                                                        (cons (gxc#compile-e
                                                               _L16148_)
                                                              '()))
                                                  _bind16066_)))
                                         _hd1612116143_
                                         _hd1611816135_)
                                        (_g1609116127_ _g1609216130_))))
                                (_g1609116127_ _g1609216130_))))
                        (_g1609116127_ _g1609216130_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1608916340_
                                                            (lambda (_g1609216171_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1609216171_)
                          (let ((_e1610616173_ (gx#stx-e _g1609216171_)))
                            (let ((_hd1610716176_ (##car _e1610616173_))
                                  (_tl1610816178_ (##cdr _e1610616173_)))
                              (if (gx#stx-pair? _hd1610716176_)
                                  (let ((_e1610916181_
                                         (gx#stx-e _hd1610716176_)))
                                    (let ((_hd1611016184_
                                           (##car _e1610916181_))
                                          (_tl1611116186_
                                           (##cdr _e1610916181_)))
                                      (if (gx#stx-null? _tl1611116186_)
                                          (if (gx#stx-pair? _tl1610816178_)
                                              (let ((_e1611216189_
                                                     (gx#stx-e
                                                      _tl1610816178_)))
                                                (let ((_hd1611316192_
                                                       (##car _e1611216189_))
                                                      (_tl1611416194_
                                                       (##cdr _e1611216189_)))
                                                  (if (gx#stx-null?
                                                       _tl1611416194_)
                                                      ((lambda (_L16197_
                                                                _L16198_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L16198_)
                         (gxc#opt-lambda-expr? _L16197_)
                         '#f)
                     (let ((_g1621216242_
                            (lambda (_g1621316239_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1621316239_))))
                       (let ((_g1621116337_
                              (lambda (_g1621316245_)
                                (if (gx#stx-pair? _g1621316245_)
                                    (let ((_e1621716247_
                                           (gx#stx-e _g1621316245_)))
                                      (let ((_hd1621816250_
                                             (##car _e1621716247_))
                                            (_tl1621916252_
                                             (##cdr _e1621716247_)))
                                        (if (gx#stx-pair? _tl1621916252_)
                                            (let ((_e1622016255_
                                                   (gx#stx-e _tl1621916252_)))
                                              (let ((_hd1622116258_
                                                     (##car _e1622016255_))
                                                    (_tl1622216260_
                                                     (##cdr _e1622016255_)))
                                                (if (gx#stx-pair?
                                                     _hd1622116258_)
                                                    (let ((_e1622316263_
                                                           (gx#stx-e
                                                            _hd1622116258_)))
                                                      (let ((_hd1622416266_
                                                             (##car _e1622316263_))
                                                            (_tl1622516268_
                                                             (##cdr _e1622316263_)))
                                                        (if (gx#stx-pair?
                                                             _hd1622416266_)
                                                            (let ((_e1622616271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1622416266_)))
                      (let ((_hd1622716274_ (##car _e1622616271_))
                            (_tl1622816276_ (##cdr _e1622616271_)))
                        (if (gx#stx-pair? _hd1622716274_)
                            (let ((_e1622916279_ (gx#stx-e _hd1622716274_)))
                              (let ((_hd1623016282_ (##car _e1622916279_))
                                    (_tl1623116284_ (##cdr _e1622916279_)))
                                (if (gx#stx-null? _tl1623116284_)
                                    (if (gx#stx-pair? _tl1622816276_)
                                        (let ((_e1623216287_
                                               (gx#stx-e _tl1622816276_)))
                                          (let ((_hd1623316290_
                                                 (##car _e1623216287_))
                                                (_tl1623416292_
                                                 (##cdr _e1623216287_)))
                                            (if (gx#stx-null? _tl1623416292_)
                                                (if (gx#stx-null?
                                                     _tl1622516268_)
                                                    (if (gx#stx-pair?
                                                         _tl1622216260_)
                                                        (let ((_e1623516295_
                                                               (gx#stx-e
                                                                _tl1622216260_)))
                                                          (let ((_hd1623616298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1623516295_))
                        (_tl1623716300_ (##cdr _e1623516295_)))
                    (if (gx#stx-null? _tl1623716300_)
                        ((lambda (_L16303_ _L16304_ _L16305_)
                           (let ((_lambda-id16329_
                                  (make-symbol
                                   (gx#stx-e _L16198_)
                                   '"__"
                                   (gx#stx-e _L16305_)
                                   (gensym '__))))
                             (let ((_lambda-id16331_
                                    (gx#core-quote-syntax__1
                                     _lambda-id16329_
                                     (gx#stx-source _stx15914_))))
                               (let ((_g20013_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id16331_)))
                                 (let ((_new-case-lambda-expr16334_
                                        (gxc#apply-expression-subst
                                         _L16303_
                                         _L16305_
                                         _lambda-id16331_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L16198_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id16331_))
                                       (_lp16061_
                                        (cons (_bind-e__opt-lambda16473__1995519956_
                                               _L16198_
                                               _new-case-lambda-expr16334_
                                               '#f)
                                              _rest16086_)
                                        (cons (_bind-e__0__1995719958_
                                               _lambda-id16331_
                                               _L16304_)
                                              _lift116064_)
                                        _lift216065_
                                        _bind16066_))))))))
                         _hd1623616298_
                         _hd1623316290_
                         _hd1623016282_)
                        (_g1621216242_ _g1621316245_))))
                (_g1621216242_ _g1621316245_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1621216242_
                                                     _g1621316245_))
                                                (_g1621216242_
                                                 _g1621316245_))))
                                        (_g1621216242_ _g1621316245_))
                                    (_g1621216242_ _g1621316245_))))
                            (_g1621216242_ _g1621316245_))))
                    (_g1621216242_ _g1621316245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1621216242_
                                                     _g1621316245_))))
                                            (_g1621216242_ _g1621316245_))))
                                    (_g1621216242_ _g1621316245_)))))
                         (_g1621116337_ _L16197_)))
                     (_g1609016168_ _g1609216171_)))
               _hd1611316192_
               _hd1611016184_)
              (_g1609016168_ _g1609216171_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1609016168_ _g1609216171_))
                                          (_g1609016168_ _g1609216171_))))
                                  (_g1609016168_ _g1609216171_))))
                          (_g1609016168_ _g1609216171_)))))
               (let ((_g1608816459_
                      (lambda (_g1609216343_)
                        (if (gx#stx-pair? _g1609216343_)
                            (let ((_e1609516345_ (gx#stx-e _g1609216343_)))
                              (let ((_hd1609616348_ (##car _e1609516345_))
                                    (_tl1609716350_ (##cdr _e1609516345_)))
                                (if (gx#stx-pair? _hd1609616348_)
                                    (let ((_e1609816353_
                                           (gx#stx-e _hd1609616348_)))
                                      (let ((_hd1609916356_
                                             (##car _e1609816353_))
                                            (_tl1610016358_
                                             (##cdr _e1609816353_)))
                                        (if (gx#stx-null? _tl1610016358_)
                                            (if (gx#stx-pair? _tl1609716350_)
                                                (let ((_e1610116361_
                                                       (gx#stx-e
                                                        _tl1609716350_)))
                                                  (let ((_hd1610216364_
                                                         (##car _e1610116361_))
                                                        (_tl1610316366_
                                                         (##cdr _e1610116361_)))
                                                    (if (gx#stx-null?
                                                         _tl1610316366_)
                                                        ((lambda (_L16369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L16370_)
                   (if (if (gx#identifier? _L16370_)
                           (gxc#case-lambda-expr? _L16369_)
                           '#f)
                       (let ((_g1638516399_
                              (lambda (_g1638616396_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1638616396_))))
                         (let ((_g1638416434_
                                (lambda (_g1638616402_)
                                  (if (gx#stx-pair? _g1638616402_)
                                      (let ((_e1639216404_
                                             (gx#stx-e _g1638616402_)))
                                        (let ((_hd1639316407_
                                               (##car _e1639216404_))
                                              (_tl1639416409_
                                               (##cdr _e1639216404_)))
                                          ((lambda (_L16412_)
                                             (let ((_g20014_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16900
                                                     _stx15914_
                                                     _L16370_
                                                     _L16412_
                                                     '#t)))
                                               (begin
                                                 (let ((_g20015_
                                                        (values-count
                                                         _g20014_)))
                                                   (if (not (fx= _g20015_ 3))
                                                       (error "Context expects 3 values"
                                                              _g20015_)))
                                                 (let ((_ids16422_
                                                        (values-ref
                                                         _g20014_
                                                         0))
                                                       (_impls16423_
                                                        (values-ref
                                                         _g20014_
                                                         1))
                                                       (_clauses16424_
                                                        (values-ref
                                                         _g20014_
                                                         2)))
                                                   (let ((_g20016_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids16422_)))
                                                     (let ((_xbind16427_
                                                            (map _bind-e15916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids16422_
                         _impls16423_)))
               (let ((_expr*16429_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses16424_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*16431_
                        (_bind-e__opt-lambda16473__1995519956_
                         _L16370_
                         _expr*16429_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L16370_)
                        '" => "
                        (map gxc#identifier-symbol _ids16422_))
                       (_lp16061_
                        _rest16086_
                        _lift116064_
                        (foldl1 cons _lift216065_ _xbind16427_)
                        (cons _bind*16431_ _bind16066_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1639416409_)))
                                      (_g1638516399_ _g1638616402_)))))
                           (let ((_g1638316456_
                                  (lambda (_g1638616437_)
                                    (if (gx#stx-pair? _g1638616437_)
                                        (let ((_e1638816439_
                                               (gx#stx-e _g1638616437_)))
                                          (let ((_hd1638916442_
                                                 (##car _e1638816439_))
                                                (_tl1639016444_
                                                 (##cdr _e1638816439_)))
                                            ((lambda (_L16447_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L16447_)
                                                   (_lp16061_
                                                    _rest16086_
                                                    _lift116064_
                                                    _lift216065_
                                                    (cons (_bind-e__opt-lambda16473__1995519956_
                                                           _L16370_
                                                           _L16369_
                                                           '#f)
                                                          _bind16066_))
                                                   (_g1638416434_
                                                    _g1638616437_)))
                                             _tl1639016444_)))
                                        (_g1638416434_ _g1638616437_)))))
                             (_g1638316456_ _L16369_))))
                       (_g1608916340_ _g1609216343_)))
                 _hd1610216364_
                 _hd1609916356_)
                (_g1608916340_ _g1609216343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1608916340_ _g1609216343_))
                                            (_g1608916340_ _g1609216343_))))
                                    (_g1608916340_ _g1609216343_))))
                            (_g1608916340_ _g1609216343_)))))
                 (_g1608816459_ _hd16087_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1606716075_)
                                              (let ((_hd1607216465_
                                                     (##car _rest1606716075_))
                                                    (_tl1607316467_
                                                     (##cdr _rest1606716075_)))
                                                (let ((_hd16470_
                                                       _hd1607216465_))
                                                  (let ((_rest16472_
                                                         _tl1607316467_))
                                                    (_K1607116462_
                                                     _rest16472_
                                                     _hd16470_))))
                                              (_else1606916083_)))))))))
                        _lp16061_)
                      _rest16059_
                      '()
                      '()
                      '()))))
              (let ((_g1592015946_
                     (lambda (_g1592115943_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1592115943_))))
                (let ((_g1591915953_
                       (lambda (_g1592115949_)
                         ((lambda () (gxc#xform-let-values% _stx15914_))))))
                  (let ((_g1591816056_
                         (lambda (_g1592115956_)
                           (if (gx#stx-pair? _g1592115956_)
                               (let ((_e1592415958_ (gx#stx-e _g1592115956_)))
                                 (let ((_hd1592515961_ (##car _e1592415958_))
                                       (_tl1592615963_ (##cdr _e1592415958_)))
                                   (if (gx#stx-pair? _tl1592615963_)
                                       (let ((_e1592715966_
                                              (gx#stx-e _tl1592615963_)))
                                         (let ((_hd1592815969_
                                                (##car _e1592715966_))
                                               (_tl1592915971_
                                                (##cdr _e1592715966_)))
                                           (if (gx#stx-pair/null?
                                                _hd1592815969_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1592815969_)
                                                         '0)
                                                   (let ((_g20009_
                                                          (gx#syntax-split-splice
                                                           _hd1592815969_
                                                           '0)))
                                                     (begin
                                                       (let ((_g20010_
                                                              (values-count
                                                               _g20009_)))
                                                         (if (not (fx= _g20010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g20010_)))
               (let ((_target1593015974_ (values-ref _g20009_ 0))
                     (_tl1593215976_ (values-ref _g20009_ 1)))
                 (if (gx#stx-null? _tl1593215976_)
                     (letrec ((_loop1593315979_
                               (lambda (_hd1593115982_ _bind1593715984_)
                                 (if (gx#stx-pair? _hd1593115982_)
                                     (let ((_e1593415987_
                                            (gx#stx-e _hd1593115982_)))
                                       (let ((_lp-hd1593515990_
                                              (##car _e1593415987_))
                                             (_lp-tl1593615992_
                                              (##cdr _e1593415987_)))
                                         (_loop1593315979_
                                          _lp-tl1593615992_
                                          (cons _lp-hd1593515990_
                                                _bind1593715984_))))
                                     (let ((_bind1593815995_
                                            (reverse _bind1593715984_)))
                                       (if (gx#stx-pair? _tl1592915971_)
                                           (let ((_e1593915998_
                                                  (gx#stx-e _tl1592915971_)))
                                             (let ((_hd1594016001_
                                                    (##car _e1593915998_))
                                                   (_tl1594116003_
                                                    (##cdr _e1593915998_)))
                                               (if (gx#stx-null?
                                                    _tl1594116003_)
                                                   ((lambda (_L16006_ _L16007_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1602716030_ _g1602816032_)
                                      (cons _g1602716030_ _g1602816032_))
                                    '()
                                    _L16007_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_g20011_
                            (_compile-bindings15917_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1603516038_ _g1603616040_)
                                         (cons _g1603516038_ _g1603616040_))
                                       '()
                                       _L16007_)))))
                       (begin
                         (let ((_g20012_ (values-count _g20011_)))
                           (if (not (fx= _g20012_ 3))
                               (error "Context expects 3 values" _g20012_)))
                         (let ((_lift116043_ (values-ref _g20011_ 0))
                               (_lift216044_ (values-ref _g20011_ 1))
                               (_hd16045_ (values-ref _g20011_ 2)))
                           (let ((_body16047_ (gxc#compile-e _L16006_)))
                             (let ((_expr16049_
                                    (gxc#xform-wrap-source
                                     (cons '%#let-values
                                           (cons _hd16045_
                                                 (cons _body16047_ '())))
                                     _stx15914_)))
                               (let ((_expr16051_
                                      (if (null? _lift216044_)
                                          _expr16049_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift216044_
                                                       (cons _expr16049_ '())))
                                           _stx15914_))))
                                 (let ((_expr16053_
                                        (if (null? _lift116043_)
                                            _expr16051_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift116043_
                                                         (cons _expr16051_
                                                               '())))
                                             _stx15914_))))
                                   (let () _expr16053_)))))))))
                   gx#current-expander-context
                   (let ((__obj19965 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19965)
                       __obj19965)))
                  (_g1591915953_ _g1592115956_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1594016001_
                                                    _bind1593815995_)
                                                   (_g1591915953_
                                                    _g1592115956_))))
                                           (_g1591915953_ _g1592115956_)))))))
                       (_loop1593315979_ _target1593015974_ '()))
                     (_g1591915953_ _g1592115956_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1591915953_
                                                    _g1592115956_))
                                               (_g1591915953_ _g1592115956_))))
                                       (_g1591915953_ _g1592115956_))))
                               (_g1591915953_ _g1592115956_)))))
                    (_g1591816056_ _stx15914_))))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx15346_)
      (let ((_bind-e__opt-lambda15896__1996019961_
             (lambda (_id15898_ _expr15899_ _compile?15900_)
               (cons (cons _id15898_ '())
                     (cons (if _compile?15900_
                               (gxc#compile-e _expr15899_)
                               _expr15899_)
                           '())))))
        (let ((_bind-e__0__1996219963_
               (lambda (_id15905_ _expr15906_)
                 (let ((_compile?15908_ '#t))
                   (_bind-e__opt-lambda15896__1996019961_
                    _id15905_
                    _expr15906_
                    _compile?15908_)))))
          (let ((_bind-e15348_
                 (lambda _g20026_
                   (let ((_g20025_ (length _g20026_)))
                     (cond ((fx= _g20025_ 2)
                            (apply _bind-e__0__1996219963_ _g20026_))
                           ((fx= _g20025_ 3)
                            (apply _bind-e__opt-lambda15896__1996019961_
                                   _g20026_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g20026_)))))))
            (let ((_compile-bindings15349_
                   (lambda (_rest15484_)
                     ((letrec ((_lp15486_
                                (lambda (_rest15488_ _bind15489_)
                                  (let ((_rest1549015498_ _rest15488_))
                                    (let ((_E1549315502_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1549015498_))))
                                      (let ((_else1549215506_
                                             (lambda ()
                                               (reverse _bind15489_))))
                                        (let ((_K1549415885_
                                               (lambda (_rest15509_ _hd15510_)
                                                 (let ((_g1551415550_
                                                        (lambda (_g1551515547_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1551515547_))))
                                                   (let ((_g1551315591_
                                                          (lambda (_g1551515553_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1551515553_)
                        (let ((_e1554015555_ (gx#stx-e _g1551515553_)))
                          (let ((_hd1554115558_ (##car _e1554015555_))
                                (_tl1554215560_ (##cdr _e1554015555_)))
                            (if (gx#stx-pair? _tl1554215560_)
                                (let ((_e1554315563_
                                       (gx#stx-e _tl1554215560_)))
                                  (let ((_hd1554415566_ (##car _e1554315563_))
                                        (_tl1554515568_ (##cdr _e1554315563_)))
                                    (if (gx#stx-null? _tl1554515568_)
                                        ((lambda (_L15571_ _L15572_)
                                           (_lp15486_
                                            _rest15509_
                                            (cons (cons _L15572_
                                                        (cons (gxc#compile-e
                                                               _L15571_)
                                                              '()))
                                                  _bind15489_)))
                                         _hd1554415566_
                                         _hd1554115558_)
                                        (_g1551415550_ _g1551515553_))))
                                (_g1551415550_ _g1551515553_))))
                        (_g1551415550_ _g1551515553_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1551215763_
                                                            (lambda (_g1551515594_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1551515594_)
                          (let ((_e1552915596_ (gx#stx-e _g1551515594_)))
                            (let ((_hd1553015599_ (##car _e1552915596_))
                                  (_tl1553115601_ (##cdr _e1552915596_)))
                              (if (gx#stx-pair? _hd1553015599_)
                                  (let ((_e1553215604_
                                         (gx#stx-e _hd1553015599_)))
                                    (let ((_hd1553315607_
                                           (##car _e1553215604_))
                                          (_tl1553415609_
                                           (##cdr _e1553215604_)))
                                      (if (gx#stx-null? _tl1553415609_)
                                          (if (gx#stx-pair? _tl1553115601_)
                                              (let ((_e1553515612_
                                                     (gx#stx-e
                                                      _tl1553115601_)))
                                                (let ((_hd1553615615_
                                                       (##car _e1553515612_))
                                                      (_tl1553715617_
                                                       (##cdr _e1553515612_)))
                                                  (if (gx#stx-null?
                                                       _tl1553715617_)
                                                      ((lambda (_L15620_
                                                                _L15621_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15621_)
                         (gxc#opt-lambda-expr? _L15620_)
                         '#f)
                     (let ((_g1563515665_
                            (lambda (_g1563615662_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1563615662_))))
                       (let ((_g1563415760_
                              (lambda (_g1563615668_)
                                (if (gx#stx-pair? _g1563615668_)
                                    (let ((_e1564015670_
                                           (gx#stx-e _g1563615668_)))
                                      (let ((_hd1564115673_
                                             (##car _e1564015670_))
                                            (_tl1564215675_
                                             (##cdr _e1564015670_)))
                                        (if (gx#stx-pair? _tl1564215675_)
                                            (let ((_e1564315678_
                                                   (gx#stx-e _tl1564215675_)))
                                              (let ((_hd1564415681_
                                                     (##car _e1564315678_))
                                                    (_tl1564515683_
                                                     (##cdr _e1564315678_)))
                                                (if (gx#stx-pair?
                                                     _hd1564415681_)
                                                    (let ((_e1564615686_
                                                           (gx#stx-e
                                                            _hd1564415681_)))
                                                      (let ((_hd1564715689_
                                                             (##car _e1564615686_))
                                                            (_tl1564815691_
                                                             (##cdr _e1564615686_)))
                                                        (if (gx#stx-pair?
                                                             _hd1564715689_)
                                                            (let ((_e1564915694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1564715689_)))
                      (let ((_hd1565015697_ (##car _e1564915694_))
                            (_tl1565115699_ (##cdr _e1564915694_)))
                        (if (gx#stx-pair? _hd1565015697_)
                            (let ((_e1565215702_ (gx#stx-e _hd1565015697_)))
                              (let ((_hd1565315705_ (##car _e1565215702_))
                                    (_tl1565415707_ (##cdr _e1565215702_)))
                                (if (gx#stx-null? _tl1565415707_)
                                    (if (gx#stx-pair? _tl1565115699_)
                                        (let ((_e1565515710_
                                               (gx#stx-e _tl1565115699_)))
                                          (let ((_hd1565615713_
                                                 (##car _e1565515710_))
                                                (_tl1565715715_
                                                 (##cdr _e1565515710_)))
                                            (if (gx#stx-null? _tl1565715715_)
                                                (if (gx#stx-null?
                                                     _tl1564815691_)
                                                    (if (gx#stx-pair?
                                                         _tl1564515683_)
                                                        (let ((_e1565815718_
                                                               (gx#stx-e
                                                                _tl1564515683_)))
                                                          (let ((_hd1565915721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1565815718_))
                        (_tl1566015723_ (##cdr _e1565815718_)))
                    (if (gx#stx-null? _tl1566015723_)
                        ((lambda (_L15726_ _L15727_ _L15728_)
                           (let ((_lambda-id15752_
                                  (make-symbol
                                   (gx#stx-e _L15621_)
                                   '"__"
                                   (gx#stx-e _L15728_)
                                   (gensym '__))))
                             (let ((_lambda-id15754_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15752_
                                     (gx#stx-source _stx15346_))))
                               (let ((_g20021_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15754_)))
                                 (let ((_new-case-lambda-expr15757_
                                        (gxc#apply-expression-subst
                                         _L15726_
                                         _L15728_
                                         _lambda-id15754_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15621_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15754_))
                                       (_lp15486_
                                        (cons (_bind-e__opt-lambda15896__1996019961_
                                               _L15621_
                                               _new-case-lambda-expr15757_
                                               '#f)
                                              _rest15509_)
                                        (cons (_bind-e__0__1996219963_
                                               _lambda-id15754_
                                               _L15727_)
                                              _bind15489_)))))))))
                         _hd1565915721_
                         _hd1565615713_
                         _hd1565315705_)
                        (_g1563515665_ _g1563615668_))))
                (_g1563515665_ _g1563615668_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1563515665_
                                                     _g1563615668_))
                                                (_g1563515665_
                                                 _g1563615668_))))
                                        (_g1563515665_ _g1563615668_))
                                    (_g1563515665_ _g1563615668_))))
                            (_g1563515665_ _g1563615668_))))
                    (_g1563515665_ _g1563615668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1563515665_
                                                     _g1563615668_))))
                                            (_g1563515665_ _g1563615668_))))
                                    (_g1563515665_ _g1563615668_)))))
                         (_g1563415760_ _L15620_)))
                     (_g1551315591_ _g1551515594_)))
               _hd1553615615_
               _hd1553315607_)
              (_g1551315591_ _g1551515594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1551315591_ _g1551515594_))
                                          (_g1551315591_ _g1551515594_))))
                                  (_g1551315591_ _g1551515594_))))
                          (_g1551315591_ _g1551515594_)))))
               (let ((_g1551115882_
                      (lambda (_g1551515766_)
                        (if (gx#stx-pair? _g1551515766_)
                            (let ((_e1551815768_ (gx#stx-e _g1551515766_)))
                              (let ((_hd1551915771_ (##car _e1551815768_))
                                    (_tl1552015773_ (##cdr _e1551815768_)))
                                (if (gx#stx-pair? _hd1551915771_)
                                    (let ((_e1552115776_
                                           (gx#stx-e _hd1551915771_)))
                                      (let ((_hd1552215779_
                                             (##car _e1552115776_))
                                            (_tl1552315781_
                                             (##cdr _e1552115776_)))
                                        (if (gx#stx-null? _tl1552315781_)
                                            (if (gx#stx-pair? _tl1552015773_)
                                                (let ((_e1552415784_
                                                       (gx#stx-e
                                                        _tl1552015773_)))
                                                  (let ((_hd1552515787_
                                                         (##car _e1552415784_))
                                                        (_tl1552615789_
                                                         (##cdr _e1552415784_)))
                                                    (if (gx#stx-null?
                                                         _tl1552615789_)
                                                        ((lambda (_L15792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15793_)
                   (if (if (gx#identifier? _L15793_)
                           (gxc#case-lambda-expr? _L15792_)
                           '#f)
                       (let ((_g1580815822_
                              (lambda (_g1580915819_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1580915819_))))
                         (let ((_g1580715857_
                                (lambda (_g1580915825_)
                                  (if (gx#stx-pair? _g1580915825_)
                                      (let ((_e1581515827_
                                             (gx#stx-e _g1580915825_)))
                                        (let ((_hd1581615830_
                                               (##car _e1581515827_))
                                              (_tl1581715832_
                                               (##cdr _e1581515827_)))
                                          ((lambda (_L15835_)
                                             (let ((_g20022_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16900
                                                     _stx15346_
                                                     _L15793_
                                                     _L15835_
                                                     '#t)))
                                               (begin
                                                 (let ((_g20023_
                                                        (values-count
                                                         _g20022_)))
                                                   (if (not (fx= _g20023_ 3))
                                                       (error "Context expects 3 values"
                                                              _g20023_)))
                                                 (let ((_ids15845_
                                                        (values-ref
                                                         _g20022_
                                                         0))
                                                       (_impls15846_
                                                        (values-ref
                                                         _g20022_
                                                         1))
                                                       (_clauses15847_
                                                        (values-ref
                                                         _g20022_
                                                         2)))
                                                   (let ((_g20024_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15845_)))
                                                     (let ((_xbind15850_
                                                            (map _bind-e15348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15845_
                         _impls15846_)))
               (let ((_expr*15852_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15847_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15854_
                        (_bind-e__opt-lambda15896__1996019961_
                         _L15793_
                         _expr*15852_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15793_)
                        '" => "
                        (map gxc#identifier-symbol _ids15845_))
                       (_lp15486_
                        _rest15509_
                        (cons _bind*15854_
                              (foldl1 cons
                                      _bind15489_
                                      _xbind15850_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1581715832_)))
                                      (_g1580815822_ _g1580915825_)))))
                           (let ((_g1580615879_
                                  (lambda (_g1580915860_)
                                    (if (gx#stx-pair? _g1580915860_)
                                        (let ((_e1581115862_
                                               (gx#stx-e _g1580915860_)))
                                          (let ((_hd1581215865_
                                                 (##car _e1581115862_))
                                                (_tl1581315867_
                                                 (##cdr _e1581115862_)))
                                            ((lambda (_L15870_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15870_)
                                                   (_lp15486_
                                                    _rest15509_
                                                    (cons (_bind-e__opt-lambda15896__1996019961_
                                                           _L15793_
                                                           _L15792_
                                                           '#f)
                                                          _bind15489_))
                                                   (_g1580715857_
                                                    _g1580915860_)))
                                             _tl1581315867_)))
                                        (_g1580715857_ _g1580915860_)))))
                             (_g1580615879_ _L15792_))))
                       (_g1551215763_ _g1551515766_)))
                 _hd1552515787_
                 _hd1552215779_)
                (_g1551215763_ _g1551515766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1551215763_ _g1551515766_))
                                            (_g1551215763_ _g1551515766_))))
                                    (_g1551215763_ _g1551515766_))))
                            (_g1551215763_ _g1551515766_)))))
                 (_g1551115882_ _hd15510_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1549015498_)
                                              (let ((_hd1549515888_
                                                     (##car _rest1549015498_))
                                                    (_tl1549615890_
                                                     (##cdr _rest1549015498_)))
                                                (let ((_hd15893_
                                                       _hd1549515888_))
                                                  (let ((_rest15895_
                                                         _tl1549615890_))
                                                    (_K1549415885_
                                                     _rest15895_
                                                     _hd15893_))))
                                              (_else1549215506_)))))))))
                        _lp15486_)
                      _rest15484_
                      '()))))
              (let ((_g1535215379_
                     (lambda (_g1535315376_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1535315376_))))
                (let ((_g1535115386_
                       (lambda (_g1535315382_)
                         ((lambda () (gxc#xform-let-values% _stx15346_))))))
                  (let ((_g1535015481_
                         (lambda (_g1535315389_)
                           (if (gx#stx-pair? _g1535315389_)
                               (let ((_e1535715391_ (gx#stx-e _g1535315389_)))
                                 (let ((_hd1535815394_ (##car _e1535715391_))
                                       (_tl1535915396_ (##cdr _e1535715391_)))
                                   (if (gx#stx-pair? _tl1535915396_)
                                       (let ((_e1536015399_
                                              (gx#stx-e _tl1535915396_)))
                                         (let ((_hd1536115402_
                                                (##car _e1536015399_))
                                               (_tl1536215404_
                                                (##cdr _e1536015399_)))
                                           (if (gx#stx-pair/null?
                                                _hd1536115402_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1536115402_)
                                                         '0)
                                                   (let ((_g20019_
                                                          (gx#syntax-split-splice
                                                           _hd1536115402_
                                                           '0)))
                                                     (begin
                                                       (let ((_g20020_
                                                              (values-count
                                                               _g20019_)))
                                                         (if (not (fx= _g20020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g20020_)))
               (let ((_target1536315407_ (values-ref _g20019_ 0))
                     (_tl1536515409_ (values-ref _g20019_ 1)))
                 (if (gx#stx-null? _tl1536515409_)
                     (letrec ((_loop1536615412_
                               (lambda (_hd1536415415_ _bind1537015417_)
                                 (if (gx#stx-pair? _hd1536415415_)
                                     (let ((_e1536715420_
                                            (gx#stx-e _hd1536415415_)))
                                       (let ((_lp-hd1536815423_
                                              (##car _e1536715420_))
                                             (_lp-tl1536915425_
                                              (##cdr _e1536715420_)))
                                         (_loop1536615412_
                                          _lp-tl1536915425_
                                          (cons _lp-hd1536815423_
                                                _bind1537015417_))))
                                     (let ((_bind1537115428_
                                            (reverse _bind1537015417_)))
                                       (if (gx#stx-pair? _tl1536215404_)
                                           (let ((_e1537215431_
                                                  (gx#stx-e _tl1536215404_)))
                                             (let ((_hd1537315434_
                                                    (##car _e1537215431_))
                                                   (_tl1537415436_
                                                    (##cdr _e1537215431_)))
                                               (if (gx#stx-null?
                                                    _tl1537415436_)
                                                   ((lambda (_L15439_
                                                             _L15440_
                                                             _L15441_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1546215465_ _g1546315467_)
                                      (cons _g1546215465_ _g1546315467_))
                                    '()
                                    _L15440_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_hd15478_
                            (_compile-bindings15349_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1547015473_ _g1547115475_)
                                         (cons _g1547015473_ _g1547115475_))
                                       '()
                                       _L15440_))))
                           (_body15479_ (gxc#compile-e _L15439_)))
                       (gxc#xform-wrap-source
                        (cons _L15441_ (cons _hd15478_ (cons _body15479_ '())))
                        _stx15346_)))
                   gx#current-expander-context
                   (let ((__obj19966 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19966)
                       __obj19966)))
                  (_g1535115386_ _g1535315389_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1537315434_
                                                    _bind1537115428_
                                                    _hd1535815394_)
                                                   (_g1535115386_
                                                    _g1535315389_))))
                                           (_g1535115386_ _g1535315389_)))))))
                       (_loop1536615412_ _target1536315407_ '()))
                     (_g1535115386_ _g1535315389_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1535115386_
                                                    _g1535315389_))
                                               (_g1535115386_ _g1535315389_))))
                                       (_g1535115386_ _g1535315389_))))
                               (_g1535115386_ _g1535315389_)))))
                    (_g1535015481_ _stx15346_))))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind15267_)
      (let ((_g1527015287_
             (lambda (_g1527115284_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1527115284_))))
        (let ((_g1526915294_ (lambda (_g1527115290_) ((lambda () '#f)))))
          (let ((_g1526815343_
                 (lambda (_g1527115297_)
                   (if (gx#stx-pair? _g1527115297_)
                       (let ((_e1527415299_ (gx#stx-e _g1527115297_)))
                         (let ((_hd1527515302_ (##car _e1527415299_))
                               (_tl1527615304_ (##cdr _e1527415299_)))
                           (if (gx#stx-pair? _hd1527515302_)
                               (let ((_e1527715307_ (gx#stx-e _hd1527515302_)))
                                 (let ((_hd1527815310_ (##car _e1527715307_))
                                       (_tl1527915312_ (##cdr _e1527715307_)))
                                   (if (gx#stx-null? _tl1527915312_)
                                       (if (gx#stx-pair? _tl1527615304_)
                                           (let ((_e1528015315_
                                                  (gx#stx-e _tl1527615304_)))
                                             (let ((_hd1528115318_
                                                    (##car _e1528015315_))
                                                   (_tl1528215320_
                                                    (##cdr _e1528015315_)))
                                               (if (gx#stx-null?
                                                    _tl1528215320_)
                                                   ((lambda (_L15323_ _L15324_)
                                                      (if (gx#identifier?
                                                           _L15324_)
                                                          (let ((_$e15340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#case-lambda-expr? _L15323_)))
                    (if _$e15340_ _$e15340_ (gxc#opt-lambda-expr? _L15323_)))
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1528115318_
                                                    _hd1527815310_)
                                                   (_g1526915294_
                                                    _g1527115297_))))
                                           (_g1526915294_ _g1527115297_))
                                       (_g1526915294_ _g1527115297_))))
                               (_g1526915294_ _g1527115297_))))
                       (_g1526915294_ _g1527115297_)))))
            (_g1526815343_ _bind15267_))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx15205_ _id15206_ _new-id15207_)
      (let ((_g1521015223_
             (lambda (_g1521115220_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1521115220_))))
        (let ((_g1520915230_
               (lambda (_g1521115226_) ((lambda () _stx15205_)))))
          (let ((_g1520815264_
                 (lambda (_g1521115233_)
                   (if (gx#stx-pair? _g1521115233_)
                       (let ((_e1521315235_ (gx#stx-e _g1521115233_)))
                         (let ((_hd1521415238_ (##car _e1521315235_))
                               (_tl1521515240_ (##cdr _e1521315235_)))
                           (if (gx#stx-pair? _tl1521515240_)
                               (let ((_e1521615243_ (gx#stx-e _tl1521515240_)))
                                 (let ((_hd1521715246_ (##car _e1521615243_))
                                       (_tl1521815248_ (##cdr _e1521615243_)))
                                   (if (gx#stx-null? _tl1521815248_)
                                       ((lambda (_L15251_)
                                          (if (gx#free-identifier=?
                                               _L15251_
                                               _id15206_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id15207_ '()))
                                               _stx15205_)
                                              (_g1520915230_ _g1521115233_)))
                                        _hd1521715246_)
                                       (_g1520915230_ _g1521115233_))))
                               (_g1520915230_ _g1521115233_))))
                       (_g1520915230_ _g1521115233_)))))
            (_g1520815264_ _stx15205_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx15061_)
      (let ((_g1506415095_
             (lambda (_g1506515092_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1506515092_))))
        (let ((_g1506315140_
               (lambda (_g1506515098_)
                 (if (gx#stx-pair? _g1506515098_)
                     (let ((_e1508215100_ (gx#stx-e _g1506515098_)))
                       (let ((_hd1508315103_ (##car _e1508215100_))
                             (_tl1508415105_ (##cdr _e1508215100_)))
                         (if (gx#stx-pair? _tl1508415105_)
                             (let ((_e1508515108_ (gx#stx-e _tl1508415105_)))
                               (let ((_hd1508615111_ (##car _e1508515108_))
                                     (_tl1508715113_ (##cdr _e1508515108_)))
                                 (if (gx#stx-pair? _tl1508715113_)
                                     (let ((_e1508815116_
                                            (gx#stx-e _tl1508715113_)))
                                       (let ((_hd1508915119_
                                              (##car _e1508815116_))
                                             (_tl1509015121_
                                              (##cdr _e1508815116_)))
                                         (if (gx#stx-null? _tl1509015121_)
                                             ((lambda (_L15124_ _L15125_)
                                                (gxc#compile-e _L15124_))
                                              _hd1508915119_
                                              _hd1508615111_)
                                             (_g1506415095_ _g1506515098_))))
                                     (_g1506415095_ _g1506515098_))))
                             (_g1506415095_ _g1506515098_))))
                     (_g1506415095_ _g1506515098_)))))
          (let ((_g1506215202_
                 (lambda (_g1506515143_)
                   (if (gx#stx-pair? _g1506515143_)
                       (let ((_e1506815145_ (gx#stx-e _g1506515143_)))
                         (let ((_hd1506915148_ (##car _e1506815145_))
                               (_tl1507015150_ (##cdr _e1506815145_)))
                           (if (gx#stx-pair? _tl1507015150_)
                               (let ((_e1507115153_ (gx#stx-e _tl1507015150_)))
                                 (let ((_hd1507215156_ (##car _e1507115153_))
                                       (_tl1507315158_ (##cdr _e1507115153_)))
                                   (if (gx#stx-pair? _hd1507215156_)
                                       (let ((_e1507415161_
                                              (gx#stx-e _hd1507215156_)))
                                         (let ((_hd1507515164_
                                                (##car _e1507415161_))
                                               (_tl1507615166_
                                                (##cdr _e1507415161_)))
                                           (if (gx#stx-null? _tl1507615166_)
                                               (if (gx#stx-pair?
                                                    _tl1507315158_)
                                                   (let ((_e1507715169_
                                                          (gx#stx-e
                                                           _tl1507315158_)))
                                                     (let ((_hd1507815172_
                                                            (##car _e1507715169_))
                                                           (_tl1507915174_
                                                            (##cdr _e1507715169_)))
                                                       (if (gx#stx-null?
                                                            _tl1507915174_)
                                                           ((lambda (_L15177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L15178_)
                      (if (gx#identifier? _L15178_)
                          (let ((_sym15194_
                                 (gxc#generate-runtime-binding-id _L15178_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym15194_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym15194_)
                                  (let ((_type1519515197_
                                         (gxc#apply-basic-expression-type
                                          _L15177_)))
                                    (if _type1519515197_
                                        (let ((_type15200_ _type1519515197_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym15194_
                                           _type15200_))
                                        '#f)))
                              (gxc#compile-e _L15177_)))
                          (_g1506315140_ _g1506515143_)))
                    _hd1507815172_
                    _hd1507515164_)
                   (_g1506315140_ _g1506515143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1506315140_
                                                    _g1506515143_))
                                               (_g1506315140_ _g1506515143_))))
                                       (_g1506315140_ _g1506515143_))))
                               (_g1506315140_ _g1506515143_))))
                       (_g1506315140_ _g1506515143_)))))
            (_g1506215202_ _stx15061_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx14846_)
      (let ((_collect-e14848_
             (lambda (_hd15005_ _expr15006_)
               (let ((_g1500915019_
                      (lambda (_g1501015016_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1501015016_))))
                 (let ((_g1500815026_
                        (lambda (_g1501015022_) ((lambda () '#!void)))))
                   (let ((_g1500715058_
                          (lambda (_g1501015029_)
                            (if (gx#stx-pair? _g1501015029_)
                                (let ((_e1501215031_ (gx#stx-e _g1501015029_)))
                                  (let ((_hd1501315034_ (##car _e1501215031_))
                                        (_tl1501415036_ (##cdr _e1501215031_)))
                                    (if (gx#stx-null? _tl1501415036_)
                                        ((lambda (_L15039_)
                                           (if (gx#identifier? _L15039_)
                                               (let ((_sym15050_
                                                      (gxc#generate-runtime-binding-id
                                                       _L15039_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym15050_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym15050_)
                                                     (let ((_type1505115053_
                                                            (gxc#apply-basic-expression-type
                                                             _expr15006_)))
                                                       (if _type1505115053_
                                                           (let ((_type15056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1505115053_))
                     (gxc#optimizer-declare-type!__opt-lambda19739
                      _sym15050_
                      _type15056_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1500815026_ _g1501015029_)))
                                         _hd1501315034_)
                                        (_g1500815026_ _g1501015029_))))
                                (_g1500815026_ _g1501015029_)))))
                     (_g1500715058_ _hd15005_)))))))
        (let ((_g1485014885_
               (lambda (_g1485114882_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1485114882_))))
          (let ((_g1484915002_
                 (lambda (_g1485114888_)
                   (if (gx#stx-pair? _g1485114888_)
                       (let ((_e1485514890_ (gx#stx-e _g1485114888_)))
                         (let ((_hd1485614893_ (##car _e1485514890_))
                               (_tl1485714895_ (##cdr _e1485514890_)))
                           (if (gx#stx-pair? _tl1485714895_)
                               (let ((_e1485814898_ (gx#stx-e _tl1485714895_)))
                                 (let ((_hd1485914901_ (##car _e1485814898_))
                                       (_tl1486014903_ (##cdr _e1485814898_)))
                                   (if (gx#stx-pair/null? _hd1485914901_)
                                       (if (fx>= (gx#stx-length _hd1485914901_)
                                                 '0)
                                           (let ((_g20027_
                                                  (gx#syntax-split-splice
                                                   _hd1485914901_
                                                   '0)))
                                             (begin
                                               (let ((_g20028_
                                                      (values-count _g20027_)))
                                                 (if (not (fx= _g20028_ 2))
                                                     (error "Context expects 2 values"
                                                            _g20028_)))
                                               (let ((_target1486114906_
                                                      (values-ref _g20027_ 0))
                                                     (_tl1486314908_
                                                      (values-ref _g20027_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1486314908_)
                                                     (letrec ((_loop1486414911_
                                                               (lambda (_hd1486214914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1486814916_
                                _hd1486914918_)
                         (if (gx#stx-pair? _hd1486214914_)
                             (let ((_e1486514921_ (gx#stx-e _hd1486214914_)))
                               (let ((_lp-hd1486614924_ (##car _e1486514921_))
                                     (_lp-tl1486714926_ (##cdr _e1486514921_)))
                                 (if (gx#stx-pair? _lp-hd1486614924_)
                                     (let ((_e1487214929_
                                            (gx#stx-e _lp-hd1486614924_)))
                                       (let ((_hd1487314932_
                                              (##car _e1487214929_))
                                             (_tl1487414934_
                                              (##cdr _e1487214929_)))
                                         (if (gx#stx-pair? _tl1487414934_)
                                             (let ((_e1487514937_
                                                    (gx#stx-e _tl1487414934_)))
                                               (let ((_hd1487614940_
                                                      (##car _e1487514937_))
                                                     (_tl1487714942_
                                                      (##cdr _e1487514937_)))
                                                 (if (gx#stx-null?
                                                      _tl1487714942_)
                                                     (_loop1486414911_
                                                      _lp-tl1486714926_
                                                      (cons _hd1487614940_
                                                            _expr1486814916_)
                                                      (cons _hd1487314932_
                                                            _hd1486914918_))
                                                     (_g1485014885_
                                                      _g1485114888_))))
                                             (_g1485014885_ _g1485114888_))))
                                     (_g1485014885_ _g1485114888_))))
                             (let ((_expr1487014945_
                                    (reverse _expr1486814916_))
                                   (_hd1487114947_ (reverse _hd1486914918_)))
                               (if (gx#stx-pair? _tl1486014903_)
                                   (let ((_e1487814950_
                                          (gx#stx-e _tl1486014903_)))
                                     (let ((_hd1487914953_
                                            (##car _e1487814950_))
                                           (_tl1488014955_
                                            (##cdr _e1487814950_)))
                                       (if (gx#stx-null? _tl1488014955_)
                                           ((lambda (_L14958_
                                                     _L14959_
                                                     _L14960_)
                                              (begin
                                                (for-each
                                                 _collect-e14848_
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1498014983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1498114985_)
                     (cons _g1498014983_ _g1498114985_))
                   '()
                   _L14960_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1498714990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1498814992_)
                     (cons _g1498714990_ _g1498814992_))
                   '()
                   _L14959_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1499414997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1499514999_)
                     (cons _g1499414997_ _g1499514999_))
                   '()
                   _L14959_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L14958_)))
                                            _hd1487914953_
                                            _expr1487014945_
                                            _hd1487114947_)
                                           (_g1485014885_ _g1485114888_))))
                                   (_g1485014885_ _g1485114888_)))))))
               (_loop1486414911_ _target1486114906_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1485014885_
                                                      _g1485114888_)))))
                                           (_g1485014885_ _g1485114888_))
                                       (_g1485014885_ _g1485114888_))))
                               (_g1485014885_ _g1485114888_))))
                       (_g1485014885_ _g1485114888_)))))
            (_g1484915002_ _stx14846_))))))
  (define gxc#collect-type-call%
    (lambda (_stx14400_)
      (let ((_g1440414506_
             (lambda (_g1440514503_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1440514503_))))
        (let ((_g1440314513_ (lambda (_g1440514509_) ((lambda () '#!void)))))
          (let ((_g1440214663_
                 (lambda (_g1440514516_)
                   (if (gx#stx-pair? _g1440514516_)
                       (let ((_e1446314518_ (gx#stx-e _g1440514516_)))
                         (let ((_hd1446414521_ (##car _e1446314518_))
                               (_tl1446514523_ (##cdr _e1446314518_)))
                           (if (gx#stx-pair? _tl1446514523_)
                               (let ((_e1446614526_ (gx#stx-e _tl1446514523_)))
                                 (let ((_hd1446714529_ (##car _e1446614526_))
                                       (_tl1446814531_ (##cdr _e1446614526_)))
                                   (if (gx#stx-pair? _hd1446714529_)
                                       (let ((_e1446914534_
                                              (gx#stx-e _hd1446714529_)))
                                         (let ((_hd1447014537_
                                                (##car _e1446914534_))
                                               (_tl1447114539_
                                                (##cdr _e1446914534_)))
                                           (if (gx#identifier? _hd1447014537_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1447014537_)
                                                   (if (gx#stx-pair?
                                                        _tl1447114539_)
                                                       (let ((_e1447214542_
                                                              (gx#stx-e
                                                               _tl1447114539_)))
                                                         (let ((_hd1447314545_
                                                                (##car _e1447214542_))
                                                               (_tl1447414547_
                                                                (##cdr _e1447214542_)))
                                                           (if (gx#stx-null?
                                                                _tl1447414547_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1446814531_)
                           (let ((_e1447514550_ (gx#stx-e _tl1446814531_)))
                             (let ((_hd1447614553_ (##car _e1447514550_))
                                   (_tl1447714555_ (##cdr _e1447514550_)))
                               (if (gx#stx-pair? _hd1447614553_)
                                   (let ((_e1447814558_
                                          (gx#stx-e _hd1447614553_)))
                                     (let ((_hd1447914561_
                                            (##car _e1447814558_))
                                           (_tl1448014563_
                                            (##cdr _e1447814558_)))
                                       (if (gx#identifier? _hd1447914561_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1447914561_)
                                               (if (gx#stx-pair?
                                                    _tl1448014563_)
                                                   (let ((_e1448114566_
                                                          (gx#stx-e
                                                           _tl1448014563_)))
                                                     (let ((_hd1448214569_
                                                            (##car _e1448114566_))
                                                           (_tl1448314571_
                                                            (##cdr _e1448114566_)))
                                                       (if (gx#stx-null?
                                                            _tl1448314571_)
                                                           (if (gx#stx-pair?
                                                                _tl1447714555_)
                                                               (let ((_e1448414574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1447714555_)))
                         (let ((_hd1448514577_ (##car _e1448414574_))
                               (_tl1448614579_ (##cdr _e1448414574_)))
                           (if (gx#stx-pair? _hd1448514577_)
                               (let ((_e1448714582_ (gx#stx-e _hd1448514577_)))
                                 (let ((_hd1448814585_ (##car _e1448714582_))
                                       (_tl1448914587_ (##cdr _e1448714582_)))
                                   (if (gx#identifier? _hd1448814585_)
                                       (if (gx#stx-eq? '%#quote _hd1448814585_)
                                           (if (gx#stx-pair? _tl1448914587_)
                                               (let ((_e1449014590_
                                                      (gx#stx-e
                                                       _tl1448914587_)))
                                                 (let ((_hd1449114593_
                                                        (##car _e1449014590_))
                                                       (_tl1449214595_
                                                        (##cdr _e1449014590_)))
                                                   (if (gx#stx-null?
                                                        _tl1449214595_)
                                                       (if (gx#stx-pair?
                                                            _tl1448614579_)
                                                           (let ((_e1449314598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1448614579_)))
                     (let ((_hd1449414601_ (##car _e1449314598_))
                           (_tl1449514603_ (##cdr _e1449314598_)))
                       (if (gx#stx-pair? _hd1449414601_)
                           (let ((_e1449614606_ (gx#stx-e _hd1449414601_)))
                             (let ((_hd1449714609_ (##car _e1449614606_))
                                   (_tl1449814611_ (##cdr _e1449614606_)))
                               (if (gx#identifier? _hd1449714609_)
                                   (if (gx#stx-eq? '%#ref _hd1449714609_)
                                       (if (gx#stx-pair? _tl1449814611_)
                                           (let ((_e1449914614_
                                                  (gx#stx-e _tl1449814611_)))
                                             (let ((_hd1450014617_
                                                    (##car _e1449914614_))
                                                   (_tl1450114619_
                                                    (##cdr _e1449914614_)))
                                               (if (gx#stx-null?
                                                    _tl1450114619_)
                                                   (if (gx#stx-null?
                                                        _tl1449514603_)
                                                       ((lambda (_L14622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L14623_
                         _L14624_
                         _L14625_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda19715
                       (gxc#generate-runtime-binding-id _L14624_)
                       (gx#stx-e _L14623_)
                       (gxc#generate-runtime-binding-id _L14622_)
                       '#f)
                      (_g1440314513_ _g1440514516_)))
                _hd1450014617_
                _hd1449114593_
                _hd1448214569_
                _hd1447314545_)
               (_g1440314513_ _g1440514516_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1440314513_
                                                    _g1440514516_))))
                                           (_g1440314513_ _g1440514516_))
                                       (_g1440314513_ _g1440514516_))
                                   (_g1440314513_ _g1440514516_))))
                           (_g1440314513_ _g1440514516_))))
                   (_g1440314513_ _g1440514516_))
               (_g1440314513_ _g1440514516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1440314513_ _g1440514516_))
                                           (_g1440314513_ _g1440514516_))
                                       (_g1440314513_ _g1440514516_))))
                               (_g1440314513_ _g1440514516_))))
                       (_g1440314513_ _g1440514516_))
                   (_g1440314513_ _g1440514516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1440314513_
                                                    _g1440514516_))
                                               (_g1440314513_ _g1440514516_))
                                           (_g1440314513_ _g1440514516_))))
                                   (_g1440314513_ _g1440514516_))))
                           (_g1440314513_ _g1440514516_))
                       (_g1440314513_ _g1440514516_))))
               (_g1440314513_ _g1440514516_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1440314513_
                                                    _g1440514516_))
                                               (_g1440314513_ _g1440514516_))))
                                       (_g1440314513_ _g1440514516_))))
                               (_g1440314513_ _g1440514516_))))
                       (_g1440314513_ _g1440514516_)))))
            (let ((_g1440114843_
                   (lambda (_g1440514666_)
                     (if (gx#stx-pair? _g1440514666_)
                         (let ((_e1441114668_ (gx#stx-e _g1440514666_)))
                           (let ((_hd1441214671_ (##car _e1441114668_))
                                 (_tl1441314673_ (##cdr _e1441114668_)))
                             (if (gx#stx-pair? _tl1441314673_)
                                 (let ((_e1441414676_
                                        (gx#stx-e _tl1441314673_)))
                                   (let ((_hd1441514679_ (##car _e1441414676_))
                                         (_tl1441614681_
                                          (##cdr _e1441414676_)))
                                     (if (gx#stx-pair? _hd1441514679_)
                                         (let ((_e1441714684_
                                                (gx#stx-e _hd1441514679_)))
                                           (let ((_hd1441814687_
                                                  (##car _e1441714684_))
                                                 (_tl1441914689_
                                                  (##cdr _e1441714684_)))
                                             (if (gx#identifier?
                                                  _hd1441814687_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1441814687_)
                                                     (if (gx#stx-pair?
                                                          _tl1441914689_)
                                                         (let ((_e1442014692_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1441914689_)))
                   (let ((_hd1442114695_ (##car _e1442014692_))
                         (_tl1442214697_ (##cdr _e1442014692_)))
                     (if (gx#stx-null? _tl1442214697_)
                         (if (gx#stx-pair? _tl1441614681_)
                             (let ((_e1442314700_ (gx#stx-e _tl1441614681_)))
                               (let ((_hd1442414703_ (##car _e1442314700_))
                                     (_tl1442514705_ (##cdr _e1442314700_)))
                                 (if (gx#stx-pair? _hd1442414703_)
                                     (let ((_e1442614708_
                                            (gx#stx-e _hd1442414703_)))
                                       (let ((_hd1442714711_
                                              (##car _e1442614708_))
                                             (_tl1442814713_
                                              (##cdr _e1442614708_)))
                                         (if (gx#identifier? _hd1442714711_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1442714711_)
                                                 (if (gx#stx-pair?
                                                      _tl1442814713_)
                                                     (let ((_e1442914716_
                                                            (gx#stx-e
                                                             _tl1442814713_)))
                                                       (let ((_hd1443014719_
                                                              (##car _e1442914716_))
                                                             (_tl1443114721_
                                                              (##cdr _e1442914716_)))
                                                         (if (gx#stx-null?
                                                              _tl1443114721_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1442514705_)
                         (let ((_e1443214724_ (gx#stx-e _tl1442514705_)))
                           (let ((_hd1443314727_ (##car _e1443214724_))
                                 (_tl1443414729_ (##cdr _e1443214724_)))
                             (if (gx#stx-pair? _hd1443314727_)
                                 (let ((_e1443514732_
                                        (gx#stx-e _hd1443314727_)))
                                   (let ((_hd1443614735_ (##car _e1443514732_))
                                         (_tl1443714737_
                                          (##cdr _e1443514732_)))
                                     (if (gx#identifier? _hd1443614735_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1443614735_)
                                             (if (gx#stx-pair? _tl1443714737_)
                                                 (let ((_e1443814740_
                                                        (gx#stx-e
                                                         _tl1443714737_)))
                                                   (let ((_hd1443914743_
                                                          (##car _e1443814740_))
                                                         (_tl1444014745_
                                                          (##cdr _e1443814740_)))
                                                     (if (gx#stx-null?
                                                          _tl1444014745_)
                                                         (if (gx#stx-pair?
                                                              _tl1443414729_)
                                                             (let ((_e1444114748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1443414729_)))
                       (let ((_hd1444214751_ (##car _e1444114748_))
                             (_tl1444314753_ (##cdr _e1444114748_)))
                         (if (gx#stx-pair? _hd1444214751_)
                             (let ((_e1444414756_ (gx#stx-e _hd1444214751_)))
                               (let ((_hd1444514759_ (##car _e1444414756_))
                                     (_tl1444614761_ (##cdr _e1444414756_)))
                                 (if (gx#identifier? _hd1444514759_)
                                     (if (gx#stx-eq? '%#ref _hd1444514759_)
                                         (if (gx#stx-pair? _tl1444614761_)
                                             (let ((_e1444714764_
                                                    (gx#stx-e _tl1444614761_)))
                                               (let ((_hd1444814767_
                                                      (##car _e1444714764_))
                                                     (_tl1444914769_
                                                      (##cdr _e1444714764_)))
                                                 (if (gx#stx-null?
                                                      _tl1444914769_)
                                                     (if (gx#stx-pair?
                                                          _tl1444314753_)
                                                         (let ((_e1445014772_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1444314753_)))
                   (let ((_hd1445114775_ (##car _e1445014772_))
                         (_tl1445214777_ (##cdr _e1445014772_)))
                     (if (gx#stx-pair? _hd1445114775_)
                         (let ((_e1445314780_ (gx#stx-e _hd1445114775_)))
                           (let ((_hd1445414783_ (##car _e1445314780_))
                                 (_tl1445514785_ (##cdr _e1445314780_)))
                             (if (gx#identifier? _hd1445414783_)
                                 (if (gx#stx-eq? '%#quote _hd1445414783_)
                                     (if (gx#stx-pair? _tl1445514785_)
                                         (let ((_e1445614788_
                                                (gx#stx-e _tl1445514785_)))
                                           (let ((_hd1445714791_
                                                  (##car _e1445614788_))
                                                 (_tl1445814793_
                                                  (##cdr _e1445614788_)))
                                             (if (gx#stx-null? _tl1445814793_)
                                                 (if (gx#stx-null?
                                                      _tl1445214777_)
                                                     ((lambda (_L14796_
                                                               _L14797_
                                                               _L14798_
                                                               _L14799_
                                                               _L14800_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14800_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda19715
                     (gxc#generate-runtime-binding-id _L14799_)
                     (gx#stx-e _L14798_)
                     (gxc#generate-runtime-binding-id _L14797_)
                     (gx#stx-e _L14796_))
                    (_g1440214663_ _g1440514666_)))
              _hd1445714791_
              _hd1444814767_
              _hd1443914743_
              _hd1443014719_
              _hd1442114695_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1440214663_
                                                      _g1440514666_))
                                                 (_g1440214663_
                                                  _g1440514666_))))
                                         (_g1440214663_ _g1440514666_))
                                     (_g1440214663_ _g1440514666_))
                                 (_g1440214663_ _g1440514666_))))
                         (_g1440214663_ _g1440514666_))))
                 (_g1440214663_ _g1440514666_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1440214663_
                                                      _g1440514666_))))
                                             (_g1440214663_ _g1440514666_))
                                         (_g1440214663_ _g1440514666_))
                                     (_g1440214663_ _g1440514666_))))
                             (_g1440214663_ _g1440514666_))))
                     (_g1440214663_ _g1440514666_))
                 (_g1440214663_ _g1440514666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1440214663_ _g1440514666_))
                                             (_g1440214663_ _g1440514666_))
                                         (_g1440214663_ _g1440514666_))))
                                 (_g1440214663_ _g1440514666_))))
                         (_g1440214663_ _g1440514666_))
                     (_g1440214663_ _g1440514666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1440214663_
                                                      _g1440514666_))
                                                 (_g1440214663_ _g1440514666_))
                                             (_g1440214663_ _g1440514666_))))
                                     (_g1440214663_ _g1440514666_))))
                             (_g1440214663_ _g1440514666_))
                         (_g1440214663_ _g1440514666_))))
                 (_g1440214663_ _g1440514666_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1440214663_
                                                      _g1440514666_))
                                                 (_g1440214663_
                                                  _g1440514666_))))
                                         (_g1440214663_ _g1440514666_))))
                                 (_g1440214663_ _g1440514666_))))
                         (_g1440214663_ _g1440514666_)))))
              (_g1440114843_ _stx14400_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx14340_)
      (let ((_g1434314356_
             (lambda (_g1434414353_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1434414353_))))
        (let ((_g1434214363_ (lambda (_g1434414359_) ((lambda () '#f)))))
          (let ((_g1434114397_
                 (lambda (_g1434414366_)
                   (if (gx#stx-pair? _g1434414366_)
                       (let ((_e1434614368_ (gx#stx-e _g1434414366_)))
                         (let ((_hd1434714371_ (##car _e1434614368_))
                               (_tl1434814373_ (##cdr _e1434614368_)))
                           (if (gx#stx-pair? _tl1434814373_)
                               (let ((_e1434914376_ (gx#stx-e _tl1434814373_)))
                                 (let ((_hd1435014379_ (##car _e1434914376_))
                                       (_tl1435114381_ (##cdr _e1434914376_)))
                                   (if (gx#stx-null? _tl1435114381_)
                                       ((lambda (_L14384_)
                                          (gxc#compile-e _L14384_))
                                        _hd1435014379_)
                                       (_g1434214363_ _g1434414366_))))
                               (_g1434214363_ _g1434414366_))))
                       (_g1434214363_ _g1434414366_)))))
            (_g1434114397_ _stx14340_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx13765_)
      (let ((_g1377013891_
             (lambda (_g1377113888_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1377113888_))))
        (let ((_g1376913898_ (lambda (_g1377113894_) ((lambda () '#f)))))
          (let ((_g1376813922_
                 (lambda (_g1377113901_)
                   (if (gx#stx-pair? _g1377113901_)
                       (let ((_e1388413903_ (gx#stx-e _g1377113901_)))
                         (let ((_hd1388513906_ (##car _e1388413903_))
                               (_tl1388613908_ (##cdr _e1388413903_)))
                           ((lambda (_L13911_)
                              (if (gxc#dispatch-lambda-form? _L13911_)
                                  (let ((__obj19967
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj19967
                                       'lambda
                                       (gxc#lambda-form-arity _L13911_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13911_))
                                      __obj19967))
                                  (_g1376913898_ _g1377113901_)))
                            _tl1388613908_)))
                       (_g1376913898_ _g1377113901_)))))
            (let ((_g1376714152_
                   (lambda (_g1377113925_)
                     (if (gx#stx-pair? _g1377113925_)
                         (let ((_e1382913927_ (gx#stx-e _g1377113925_)))
                           (let ((_hd1383013930_ (##car _e1382913927_))
                                 (_tl1383113932_ (##cdr _e1382913927_)))
                             (if (gx#stx-pair? _tl1383113932_)
                                 (let ((_e1383213935_
                                        (gx#stx-e _tl1383113932_)))
                                   (let ((_hd1383313938_ (##car _e1383213935_))
                                         (_tl1383413940_
                                          (##cdr _e1383213935_)))
                                     (if (gx#stx-pair/null? _hd1383313938_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1383313938_)
                                                   '0)
                                             (let ((_g20029_
                                                    (gx#syntax-split-splice
                                                     _hd1383313938_
                                                     '0)))
                                               (begin
                                                 (let ((_g20030_
                                                        (values-count
                                                         _g20029_)))
                                                   (if (not (fx= _g20030_ 2))
                                                       (error "Context expects 2 values"
                                                              _g20030_)))
                                                 (let ((_target1383513943_
                                                        (values-ref
                                                         _g20029_
                                                         0))
                                                       (_tl1383713945_
                                                        (values-ref
                                                         _g20029_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1383713945_)
                                                       (letrec ((_loop1383813948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1383613951_ _arg1384213953_)
                           (if (gx#stx-pair? _hd1383613951_)
                               (let ((_e1383913956_ (gx#stx-e _hd1383613951_)))
                                 (let ((_lp-hd1384013959_
                                        (##car _e1383913956_))
                                       (_lp-tl1384113961_
                                        (##cdr _e1383913956_)))
                                   (_loop1383813948_
                                    _lp-tl1384113961_
                                    (cons _lp-hd1384013959_ _arg1384213953_))))
                               (let ((_arg1384313964_
                                      (reverse _arg1384213953_)))
                                 (if (gx#stx-pair? _tl1383413940_)
                                     (let ((_e1384413967_
                                            (gx#stx-e _tl1383413940_)))
                                       (let ((_hd1384513970_
                                              (##car _e1384413967_))
                                             (_tl1384613972_
                                              (##cdr _e1384413967_)))
                                         (if (gx#stx-pair? _hd1384513970_)
                                             (let ((_e1384713975_
                                                    (gx#stx-e _hd1384513970_)))
                                               (let ((_hd1384813978_
                                                      (##car _e1384713975_))
                                                     (_tl1384913980_
                                                      (##cdr _e1384713975_)))
                                                 (if (gx#identifier?
                                                      _hd1384813978_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1384813978_)
                                                         (if (gx#stx-pair?
                                                              _tl1384913980_)
                                                             (let ((_e1385013983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1384913980_)))
                       (let ((_hd1385113986_ (##car _e1385013983_))
                             (_tl1385213988_ (##cdr _e1385013983_)))
                         (if (gx#stx-pair? _hd1385113986_)
                             (let ((_e1385313991_ (gx#stx-e _hd1385113986_)))
                               (let ((_hd1385413994_ (##car _e1385313991_))
                                     (_tl1385513996_ (##cdr _e1385313991_)))
                                 (if (gx#identifier? _hd1385413994_)
                                     (if (gx#stx-eq? '%#ref _hd1385413994_)
                                         (if (gx#stx-pair? _tl1385513996_)
                                             (let ((_e1385613999_
                                                    (gx#stx-e _tl1385513996_)))
                                               (let ((_hd1385714002_
                                                      (##car _e1385613999_))
                                                     (_tl1385814004_
                                                      (##cdr _e1385613999_)))
                                                 (if (gx#stx-null?
                                                      _tl1385814004_)
                                                     (if (gx#stx-pair?
                                                          _tl1385213988_)
                                                         (let ((_e1385914007_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1385213988_)))
                   (let ((_hd1386014010_ (##car _e1385914007_))
                         (_tl1386114012_ (##cdr _e1385914007_)))
                     (if (gx#stx-pair? _hd1386014010_)
                         (let ((_e1386214015_ (gx#stx-e _hd1386014010_)))
                           (let ((_hd1386314018_ (##car _e1386214015_))
                                 (_tl1386414020_ (##cdr _e1386214015_)))
                             (if (gx#identifier? _hd1386314018_)
                                 (if (gx#stx-eq? '%#ref _hd1386314018_)
                                     (if (gx#stx-pair? _tl1386414020_)
                                         (let ((_e1386514023_
                                                (gx#stx-e _tl1386414020_)))
                                           (let ((_hd1386614026_
                                                  (##car _e1386514023_))
                                                 (_tl1386714028_
                                                  (##cdr _e1386514023_)))
                                             (if (gx#stx-null? _tl1386714028_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1386114012_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1386114012_)
                                                               '0)
                                                         (let ((_g20031_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1386114012_
                         '0)))
                   (begin
                     (let ((_g20032_ (values-count _g20031_)))
                       (if (not (fx= _g20032_ 2))
                           (error "Context expects 2 values" _g20032_)))
                     (let ((_target1386814031_ (values-ref _g20031_ 0))
                           (_tl1387014033_ (values-ref _g20031_ 1)))
                       (if (gx#stx-null? _tl1387014033_)
                           (letrec ((_loop1387114036_
                                     (lambda (_hd1386914039_ _xarg1387514041_)
                                       (if (gx#stx-pair? _hd1386914039_)
                                           (let ((_e1387214044_
                                                  (gx#stx-e _hd1386914039_)))
                                             (let ((_lp-hd1387314047_
                                                    (##car _e1387214044_))
                                                   (_lp-tl1387414049_
                                                    (##cdr _e1387214044_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1387314047_)
                                                   (let ((_e1387714052_
                                                          (gx#stx-e
                                                           _lp-hd1387314047_)))
                                                     (let ((_hd1387814055_
                                                            (##car _e1387714052_))
                                                           (_tl1387914057_
                                                            (##cdr _e1387714052_)))
                                                       (if (gx#identifier?
                                                            _hd1387814055_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1387814055_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1387914057_)
                           (let ((_e1388014060_ (gx#stx-e _tl1387914057_)))
                             (let ((_hd1388114063_ (##car _e1388014060_))
                                   (_tl1388214065_ (##cdr _e1388014060_)))
                               (if (gx#stx-null? _tl1388214065_)
                                   (_loop1387114036_
                                    _lp-tl1387414049_
                                    (cons _hd1388114063_ _xarg1387514041_))
                                   (_g1376813922_ _g1377113925_))))
                           (_g1376813922_ _g1377113925_))
                       (_g1376813922_ _g1377113925_))
                   (_g1376813922_ _g1377113925_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1376813922_
                                                    _g1377113925_))))
                                           (let ((_xarg1387614068_
                                                  (reverse _xarg1387514041_)))
                                             (if (gx#stx-null? _tl1384613972_)
                                                 ((lambda (_L14071_
                                                           _L14072_
                                                           _L14073_
                                                           _L14074_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1411114114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1411214116_)
                                 (cons _g1411114114_ _g1411214116_))
                               '()
                               _L14074_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L14073_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1411814121_
                                                            _g1411914123_)
                                                     (cons _g1411814121_
                                                           _g1411914123_))
                                                   '()
                                                   _L14074_)))
                                 (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1412514128_
                                                            _g1412614130_)
                                                     (cons _g1412514128_
                                                           _g1412614130_))
                                                   '()
                                                   _L14071_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1413214135_
                                                       _g1413314137_)
                                                (cons _g1413214135_
                                                      _g1413314137_))
                                              '()
                                              _L14074_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1413914142_
                                                       _g1414014144_)
                                                (cons _g1413914142_
                                                      _g1414014144_))
                                              '()
                                              _L14071_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t14147_
                       (gxc#generate-runtime-binding-id _L14072_)))
                  (let ((_type14149_
                         (gxc#optimizer-resolve-type _type-t14147_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type14149_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t14147_)
                          '#f))))
                (_g1376813922_ _g1377113925_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1387614068_
                                                  _hd1386614026_
                                                  _hd1385714002_
                                                  _arg1384313964_)
                                                 (_g1376813922_
                                                  _g1377113925_)))))))
                             (_loop1387114036_ _target1386814031_ '()))
                           (_g1376813922_ _g1377113925_)))))
                 (_g1376813922_ _g1377113925_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1376813922_
                                                      _g1377113925_))
                                                 (_g1376813922_
                                                  _g1377113925_))))
                                         (_g1376813922_ _g1377113925_))
                                     (_g1376813922_ _g1377113925_))
                                 (_g1376813922_ _g1377113925_))))
                         (_g1376813922_ _g1377113925_))))
                 (_g1376813922_ _g1377113925_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1376813922_
                                                      _g1377113925_))))
                                             (_g1376813922_ _g1377113925_))
                                         (_g1376813922_ _g1377113925_))
                                     (_g1376813922_ _g1377113925_))))
                             (_g1376813922_ _g1377113925_))))
                     (_g1376813922_ _g1377113925_))
                 (_g1376813922_ _g1377113925_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1376813922_
                                                      _g1377113925_))))
                                             (_g1376813922_ _g1377113925_))))
                                     (_g1376813922_ _g1377113925_)))))))
                 (_loop1383813948_ _target1383513943_ '()))
               (_g1376813922_ _g1377113925_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1376813922_ _g1377113925_))
                                         (_g1376813922_ _g1377113925_))))
                                 (_g1376813922_ _g1377113925_))))
                         (_g1376813922_ _g1377113925_)))))
              (let ((_g1376614337_
                     (lambda (_g1377114155_)
                       (if (gx#stx-pair? _g1377114155_)
                           (let ((_e1377714157_ (gx#stx-e _g1377114155_)))
                             (let ((_hd1377814160_ (##car _e1377714157_))
                                   (_tl1377914162_ (##cdr _e1377714157_)))
                               (if (gx#stx-pair? _tl1377914162_)
                                   (let ((_e1378014165_
                                          (gx#stx-e _tl1377914162_)))
                                     (let ((_hd1378114168_
                                            (##car _e1378014165_))
                                           (_tl1378214170_
                                            (##cdr _e1378014165_)))
                                       (if (gx#stx-pair? _tl1378214170_)
                                           (let ((_e1378314173_
                                                  (gx#stx-e _tl1378214170_)))
                                             (let ((_hd1378414176_
                                                    (##car _e1378314173_))
                                                   (_tl1378514178_
                                                    (##cdr _e1378314173_)))
                                               (if (gx#stx-pair?
                                                    _hd1378414176_)
                                                   (let ((_e1378614181_
                                                          (gx#stx-e
                                                           _hd1378414176_)))
                                                     (let ((_hd1378714184_
                                                            (##car _e1378614181_))
                                                           (_tl1378814186_
                                                            (##cdr _e1378614181_)))
                                                       (if (gx#identifier?
                                                            _hd1378714184_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1378714184_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1378814186_)
                           (let ((_e1378914189_ (gx#stx-e _tl1378814186_)))
                             (let ((_hd1379014192_ (##car _e1378914189_))
                                   (_tl1379114194_ (##cdr _e1378914189_)))
                               (if (gx#stx-pair? _hd1379014192_)
                                   (let ((_e1379214197_
                                          (gx#stx-e _hd1379014192_)))
                                     (let ((_hd1379314200_
                                            (##car _e1379214197_))
                                           (_tl1379414202_
                                            (##cdr _e1379214197_)))
                                       (if (gx#identifier? _hd1379314200_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1379314200_)
                                               (if (gx#stx-pair?
                                                    _tl1379414202_)
                                                   (let ((_e1379514205_
                                                          (gx#stx-e
                                                           _tl1379414202_)))
                                                     (let ((_hd1379614208_
                                                            (##car _e1379514205_))
                                                           (_tl1379714210_
                                                            (##cdr _e1379514205_)))
                                                       (if (gx#stx-null?
                                                            _tl1379714210_)
                                                           (if (gx#stx-pair?
                                                                _tl1379114194_)
                                                               (let ((_e1379814213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1379114194_)))
                         (let ((_hd1379914216_ (##car _e1379814213_))
                               (_tl1380014218_ (##cdr _e1379814213_)))
                           (if (gx#stx-pair? _hd1379914216_)
                               (let ((_e1380114221_ (gx#stx-e _hd1379914216_)))
                                 (let ((_hd1380214224_ (##car _e1380114221_))
                                       (_tl1380314226_ (##cdr _e1380114221_)))
                                   (if (gx#identifier? _hd1380214224_)
                                       (if (gx#stx-eq? '%#ref _hd1380214224_)
                                           (if (gx#stx-pair? _tl1380314226_)
                                               (let ((_e1380414229_
                                                      (gx#stx-e
                                                       _tl1380314226_)))
                                                 (let ((_hd1380514232_
                                                        (##car _e1380414229_))
                                                       (_tl1380614234_
                                                        (##cdr _e1380414229_)))
                                                   (if (gx#stx-null?
                                                        _tl1380614234_)
                                                       (if (gx#stx-pair?
                                                            _tl1380014218_)
                                                           (let ((_e1380714237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1380014218_)))
                     (let ((_hd1380814240_ (##car _e1380714237_))
                           (_tl1380914242_ (##cdr _e1380714237_)))
                       (if (gx#stx-pair? _hd1380814240_)
                           (let ((_e1381014245_ (gx#stx-e _hd1380814240_)))
                             (let ((_hd1381114248_ (##car _e1381014245_))
                                   (_tl1381214250_ (##cdr _e1381014245_)))
                               (if (gx#identifier? _hd1381114248_)
                                   (if (gx#stx-eq? '%#ref _hd1381114248_)
                                       (if (gx#stx-pair? _tl1381214250_)
                                           (let ((_e1381314253_
                                                  (gx#stx-e _tl1381214250_)))
                                             (let ((_hd1381414256_
                                                    (##car _e1381314253_))
                                                   (_tl1381514258_
                                                    (##cdr _e1381314253_)))
                                               (if (gx#stx-null?
                                                    _tl1381514258_)
                                                   (if (gx#stx-pair?
                                                        _tl1380914242_)
                                                       (let ((_e1381614261_
                                                              (gx#stx-e
                                                               _tl1380914242_)))
                                                         (let ((_hd1381714264_
                                                                (##car _e1381614261_))
                                                               (_tl1381814266_
                                                                (##cdr _e1381614261_)))
                                                           (if (gx#stx-pair?
                                                                _hd1381714264_)
                                                               (let ((_e1381914269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1381714264_)))
                         (let ((_hd1382014272_ (##car _e1381914269_))
                               (_tl1382114274_ (##cdr _e1381914269_)))
                           (if (gx#identifier? _hd1382014272_)
                               (if (gx#stx-eq? '%#ref _hd1382014272_)
                                   (if (gx#stx-pair? _tl1382114274_)
                                       (let ((_e1382214277_
                                              (gx#stx-e _tl1382114274_)))
                                         (let ((_hd1382314280_
                                                (##car _e1382214277_))
                                               (_tl1382414282_
                                                (##cdr _e1382214277_)))
                                           (if (gx#stx-null? _tl1382414282_)
                                               (if (gx#stx-null?
                                                    _tl1381814266_)
                                                   (if (gx#stx-null?
                                                        _tl1378514178_)
                                                       ((lambda (_L14285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L14286_
                         _L14287_
                         _L14288_
                         _L14289_)
                  (if (if (gx#identifier? _L14289_)
                          (if (eq? (gxc#generate-runtime-binding-id _L14288_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L14287_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L14289_ _L14285_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t14332_
                             (gxc#generate-runtime-binding-id _L14286_)))
                        (let ((_type14334_
                               (gxc#optimizer-resolve-type _type-t14332_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type14334_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t14332_)
                                '#f))))
                      (_g1376714152_ _g1377114155_)))
                _hd1382314280_
                _hd1381414256_
                _hd1380514232_
                _hd1379614208_
                _hd1378114168_)
               (_g1376714152_ _g1377114155_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1376714152_
                                                    _g1377114155_))
                                               (_g1376714152_ _g1377114155_))))
                                       (_g1376714152_ _g1377114155_))
                                   (_g1376714152_ _g1377114155_))
                               (_g1376714152_ _g1377114155_))))
                       (_g1376714152_ _g1377114155_))))
               (_g1376714152_ _g1377114155_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1376714152_
                                                    _g1377114155_))))
                                           (_g1376714152_ _g1377114155_))
                                       (_g1376714152_ _g1377114155_))
                                   (_g1376714152_ _g1377114155_))))
                           (_g1376714152_ _g1377114155_))))
                   (_g1376714152_ _g1377114155_))
               (_g1376714152_ _g1377114155_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1376714152_ _g1377114155_))
                                           (_g1376714152_ _g1377114155_))
                                       (_g1376714152_ _g1377114155_))))
                               (_g1376714152_ _g1377114155_))))
                       (_g1376714152_ _g1377114155_))
                   (_g1376714152_ _g1377114155_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1376714152_
                                                    _g1377114155_))
                                               (_g1376714152_ _g1377114155_))
                                           (_g1376714152_ _g1377114155_))))
                                   (_g1376714152_ _g1377114155_))))
                           (_g1376714152_ _g1377114155_))
                       (_g1376714152_ _g1377114155_))
                   (_g1376714152_ _g1377114155_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1376714152_
                                                    _g1377114155_))))
                                           (_g1376714152_ _g1377114155_))))
                                   (_g1376714152_ _g1377114155_))))
                           (_g1376714152_ _g1377114155_)))))
                (_g1376614337_ _stx13765_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx13711_)
      (let ((_clause-e13713_
             (lambda (_form13763_)
               (let ((__obj19968 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj19968
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form13763_)
                    (gxc#dispatch-lambda-form-delegate _form13763_))
                   __obj19968)))))
        (let ((_g1371613726_
               (lambda (_g1371713723_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1371713723_))))
          (let ((_g1371513733_ (lambda (_g1371713729_) ((lambda () '#f)))))
            (let ((_g1371413760_
                   (lambda (_g1371713736_)
                     (if (gx#stx-pair? _g1371713736_)
                         (let ((_e1371913738_ (gx#stx-e _g1371713736_)))
                           (let ((_hd1372013741_ (##car _e1371913738_))
                                 (_tl1372113743_ (##cdr _e1371913738_)))
                             ((lambda (_L13746_)
                                (if (andmap1 gxc#dispatch-lambda-form?
                                             _L13746_)
                                    (let ((_clauses13758_
                                           (map _clause-e13713_ _L13746_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses13758_))
                                    (_g1371513733_ _g1371713736_)))
                              _tl1372113743_)))
                         (_g1371513733_ _g1371713736_)))))
              (_g1371413760_ _stx13711_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx13616_)
      (let ((_g1361913639_
             (lambda (_g1362013636_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1362013636_))))
        (let ((_g1361813646_ (lambda (_g1362013642_) ((lambda () '#f)))))
          (let ((_g1361713708_
                 (lambda (_g1362013649_)
                   (if (gx#stx-pair? _g1362013649_)
                       (let ((_e1362313651_ (gx#stx-e _g1362013649_)))
                         (let ((_hd1362413654_ (##car _e1362313651_))
                               (_tl1362513656_ (##cdr _e1362313651_)))
                           (if (gx#stx-pair? _tl1362513656_)
                               (let ((_e1362613659_ (gx#stx-e _tl1362513656_)))
                                 (let ((_hd1362713662_ (##car _e1362613659_))
                                       (_tl1362813664_ (##cdr _e1362613659_)))
                                   (if (gx#stx-pair? _hd1362713662_)
                                       (let ((_e1362913667_
                                              (gx#stx-e _hd1362713662_)))
                                         (let ((_hd1363013670_
                                                (##car _e1362913667_))
                                               (_tl1363113672_
                                                (##cdr _e1362913667_)))
                                           (if (gx#identifier? _hd1363013670_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1363013670_)
                                                   (if (gx#stx-pair?
                                                        _tl1363113672_)
                                                       (let ((_e1363213675_
                                                              (gx#stx-e
                                                               _tl1363113672_)))
                                                         (let ((_hd1363313678_
                                                                (##car _e1363213675_))
                                                               (_tl1363413680_
                                                                (##cdr _e1363213675_)))
                                                           (if (gx#stx-null?
                                                                _tl1363413680_)
                                                               ((lambda (_L13683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13684_)
                          (let ((_type-e1370113703_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L13684_)
                                  '#f)))
                            (if _type-e1370113703_
                                (let ((_type-e13706_ _type-e1370113703_))
                                  (_type-e13706_ _stx13616_ _L13683_))
                                '#f)))
                        _tl1362813664_
                        _hd1363313678_)
                       (_g1361813646_ _g1362013649_))))
               (_g1361813646_ _g1362013649_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1361813646_
                                                    _g1362013649_))
                                               (_g1361813646_ _g1362013649_))))
                                       (_g1361813646_ _g1362013649_))))
                               (_g1361813646_ _g1362013649_))))
                       (_g1361813646_ _g1362013649_)))))
            (_g1361713708_ _stx13616_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx13101_ _args13102_)
      (let ((_g1310613219_
             (lambda (_g1310713216_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1310713216_))))
        (let ((_g1310513226_
               (lambda (_g1310713222_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx13101_))
                      '#f))))))
          (let ((_g1310413433_
                 (lambda (_g1310713229_)
                   (if (gx#stx-pair? _g1310713229_)
                       (let ((_e1316713231_ (gx#stx-e _g1310713229_)))
                         (let ((_hd1316813234_ (##car _e1316713231_))
                               (_tl1316913236_ (##cdr _e1316713231_)))
                           (if (gx#stx-pair? _hd1316813234_)
                               (let ((_e1317013239_ (gx#stx-e _hd1316813234_)))
                                 (let ((_hd1317113242_ (##car _e1317013239_))
                                       (_tl1317213244_ (##cdr _e1317013239_)))
                                   (if (gx#identifier? _hd1317113242_)
                                       (if (gx#stx-eq? '%#quote _hd1317113242_)
                                           (if (gx#stx-pair? _tl1317213244_)
                                               (let ((_e1317313247_
                                                      (gx#stx-e
                                                       _tl1317213244_)))
                                                 (let ((_hd1317413250_
                                                        (##car _e1317313247_))
                                                       (_tl1317513252_
                                                        (##cdr _e1317313247_)))
                                                   (if (gx#stx-null?
                                                        _tl1317513252_)
                                                       (if (gx#stx-pair?
                                                            _tl1316913236_)
                                                           (let ((_e1317613255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1316913236_)))
                     (let ((_hd1317713258_ (##car _e1317613255_))
                           (_tl1317813260_ (##cdr _e1317613255_)))
                       (if (gx#stx-pair? _hd1317713258_)
                           (let ((_e1317913263_ (gx#stx-e _hd1317713258_)))
                             (let ((_hd1318013266_ (##car _e1317913263_))
                                   (_tl1318113268_ (##cdr _e1317913263_)))
                               (if (gx#identifier? _hd1318013266_)
                                   (if (gx#stx-eq? '%#ref _hd1318013266_)
                                       (if (gx#stx-pair? _tl1318113268_)
                                           (let ((_e1318213271_
                                                  (gx#stx-e _tl1318113268_)))
                                             (let ((_hd1318313274_
                                                    (##car _e1318213271_))
                                                   (_tl1318413276_
                                                    (##cdr _e1318213271_)))
                                               (if (gx#stx-null?
                                                    _tl1318413276_)
                                                   (if (gx#stx-pair?
                                                        _tl1317813260_)
                                                       (let ((_e1318513279_
                                                              (gx#stx-e
                                                               _tl1317813260_)))
                                                         (let ((_hd1318613282_
                                                                (##car _e1318513279_))
                                                               (_tl1318713284_
                                                                (##cdr _e1318513279_)))
                                                           (if (gx#stx-pair?
                                                                _hd1318613282_)
                                                               (let ((_e1318813287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1318613282_)))
                         (let ((_hd1318913290_ (##car _e1318813287_))
                               (_tl1319013292_ (##cdr _e1318813287_)))
                           (if (gx#identifier? _hd1318913290_)
                               (if (gx#stx-eq? '%#quote _hd1318913290_)
                                   (if (gx#stx-pair? _tl1319013292_)
                                       (let ((_e1319113295_
                                              (gx#stx-e _tl1319013292_)))
                                         (let ((_hd1319213298_
                                                (##car _e1319113295_))
                                               (_tl1319313300_
                                                (##cdr _e1319113295_)))
                                           (if (gx#stx-null? _tl1319313300_)
                                               (if (gx#stx-pair?
                                                    _tl1318713284_)
                                                   (let ((_e1319413303_
                                                          (gx#stx-e
                                                           _tl1318713284_)))
                                                     (let ((_hd1319513306_
                                                            (##car _e1319413303_))
                                                           (_tl1319613308_
                                                            (##cdr _e1319413303_)))
                                                       (if (gx#stx-pair?
                                                            _tl1319613308_)
                                                           (let ((_e1319713311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1319613308_)))
                     (let ((_hd1319813314_ (##car _e1319713311_))
                           (_tl1319913316_ (##cdr _e1319713311_)))
                       (if (gx#stx-pair? _hd1319813314_)
                           (let ((_e1320013319_ (gx#stx-e _hd1319813314_)))
                             (let ((_hd1320113322_ (##car _e1320013319_))
                                   (_tl1320213324_ (##cdr _e1320013319_)))
                               (if (gx#identifier? _hd1320113322_)
                                   (if (gx#stx-eq? '%#quote _hd1320113322_)
                                       (if (gx#stx-pair? _tl1320213324_)
                                           (let ((_e1320313327_
                                                  (gx#stx-e _tl1320213324_)))
                                             (let ((_hd1320413330_
                                                    (##car _e1320313327_))
                                                   (_tl1320513332_
                                                    (##cdr _e1320313327_)))
                                               (if (gx#stx-null?
                                                    _tl1320513332_)
                                                   (if (gx#stx-pair?
                                                        _tl1319913316_)
                                                       (let ((_e1320613335_
                                                              (gx#stx-e
                                                               _tl1319913316_)))
                                                         (let ((_hd1320713338_
                                                                (##car _e1320613335_))
                                                               (_tl1320813340_
                                                                (##cdr _e1320613335_)))
                                                           (if (gx#stx-pair?
                                                                _hd1320713338_)
                                                               (let ((_e1320913343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1320713338_)))
                         (let ((_hd1321013346_ (##car _e1320913343_))
                               (_tl1321113348_ (##cdr _e1320913343_)))
                           (if (gx#identifier? _hd1321013346_)
                               (if (gx#stx-eq? '%#quote _hd1321013346_)
                                   (if (gx#stx-pair? _tl1321113348_)
                                       (let ((_e1321213351_
                                              (gx#stx-e _tl1321113348_)))
                                         (let ((_hd1321313354_
                                                (##car _e1321213351_))
                                               (_tl1321413356_
                                                (##cdr _e1321213351_)))
                                           (if (gx#stx-null? _tl1321413356_)
                                               (if (gx#stx-null?
                                                    _tl1320813340_)
                                                   ((lambda (_L13359_
                                                             _L13360_
                                                             _L13361_
                                                             _L13362_
                                                             _L13363_
                                                             _L13364_)
                                                      (let ((_super-t13410_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13363_)
                         (gxc#generate-runtime-binding-id _L13363_)
                         '#f)))
                (let ((_super-type13412_
                       (if _super-t13410_
                           (gxc#optimizer-resolve-type _super-t13410_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type13412_
                              (not (##structure-instance-of?
                                    _super-type13412_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx13101_
                           _L13363_)
                          '#!void)
                      (let ((_fields13428_ (gx#stx-e _L13362_))
                            (_xfields13429_
                             (if _super-type13412_
                                 (let ((_super-fields1341413417_
                                        (##structure-ref
                                         _super-type13412_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1341513419_
                                        (##structure-ref
                                         _super-type13412_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1341413417_
                                       (if _super-xfields1341513419_
                                           (let ((_super-fields13422_
                                                  _super-fields1341413417_)
                                                 (_super-xfields13423_
                                                  _super-xfields1341513419_))
                                             (fx+ _super-fields13422_
                                                  _super-xfields13423_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist13430_ (gx#stx-e _L13360_))
                            (_ctor13431_
                             (let ((_$e13425_ (gx#stx-e _L13359_)))
                               (if _$e13425_
                                   (values _$e13425_)
                                   (if _super-type13412_
                                       (##structure-ref
                                        _super-type13412_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t13410_ '#!void '#f))))))
                        (let ((__obj19969
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19969
                             (gx#stx-e _L13364_)
                             _super-t13410_
                             _fields13428_
                             _xfields13429_
                             _ctor13431_
                             _plist13430_)
                            __obj19969))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1321313354_
                                                    _hd1320413330_
                                                    _hd1319513306_
                                                    _hd1319213298_
                                                    _hd1318313274_
                                                    _hd1317413250_)
                                                   (_g1310513226_
                                                    _g1310713229_))
                                               (_g1310513226_ _g1310713229_))))
                                       (_g1310513226_ _g1310713229_))
                                   (_g1310513226_ _g1310713229_))
                               (_g1310513226_ _g1310713229_))))
                       (_g1310513226_ _g1310713229_))))
               (_g1310513226_ _g1310713229_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1310513226_
                                                    _g1310713229_))))
                                           (_g1310513226_ _g1310713229_))
                                       (_g1310513226_ _g1310713229_))
                                   (_g1310513226_ _g1310713229_))))
                           (_g1310513226_ _g1310713229_))))
                   (_g1310513226_ _g1310713229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1310513226_
                                                    _g1310713229_))
                                               (_g1310513226_ _g1310713229_))))
                                       (_g1310513226_ _g1310713229_))
                                   (_g1310513226_ _g1310713229_))
                               (_g1310513226_ _g1310713229_))))
                       (_g1310513226_ _g1310713229_))))
               (_g1310513226_ _g1310713229_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1310513226_
                                                    _g1310713229_))))
                                           (_g1310513226_ _g1310713229_))
                                       (_g1310513226_ _g1310713229_))
                                   (_g1310513226_ _g1310713229_))))
                           (_g1310513226_ _g1310713229_))))
                   (_g1310513226_ _g1310713229_))
               (_g1310513226_ _g1310713229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1310513226_ _g1310713229_))
                                           (_g1310513226_ _g1310713229_))
                                       (_g1310513226_ _g1310713229_))))
                               (_g1310513226_ _g1310713229_))))
                       (_g1310513226_ _g1310713229_)))))
            (let ((_g1310313613_
                   (lambda (_g1310713436_)
                     (if (gx#stx-pair? _g1310713436_)
                         (let ((_e1311313438_ (gx#stx-e _g1310713436_)))
                           (let ((_hd1311413441_ (##car _e1311313438_))
                                 (_tl1311513443_ (##cdr _e1311313438_)))
                             (if (gx#stx-pair? _hd1311413441_)
                                 (let ((_e1311613446_
                                        (gx#stx-e _hd1311413441_)))
                                   (let ((_hd1311713449_ (##car _e1311613446_))
                                         (_tl1311813451_
                                          (##cdr _e1311613446_)))
                                     (if (gx#identifier? _hd1311713449_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1311713449_)
                                             (if (gx#stx-pair? _tl1311813451_)
                                                 (let ((_e1311913454_
                                                        (gx#stx-e
                                                         _tl1311813451_)))
                                                   (let ((_hd1312013457_
                                                          (##car _e1311913454_))
                                                         (_tl1312113459_
                                                          (##cdr _e1311913454_)))
                                                     (if (gx#stx-null?
                                                          _tl1312113459_)
                                                         (if (gx#stx-pair?
                                                              _tl1311513443_)
                                                             (let ((_e1312213462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1311513443_)))
                       (let ((_hd1312313465_ (##car _e1312213462_))
                             (_tl1312413467_ (##cdr _e1312213462_)))
                         (if (gx#stx-pair? _hd1312313465_)
                             (let ((_e1312513470_ (gx#stx-e _hd1312313465_)))
                               (let ((_hd1312613473_ (##car _e1312513470_))
                                     (_tl1312713475_ (##cdr _e1312513470_)))
                                 (if (gx#identifier? _hd1312613473_)
                                     (if (gx#stx-eq? '%#quote _hd1312613473_)
                                         (if (gx#stx-pair? _tl1312713475_)
                                             (let ((_e1312813478_
                                                    (gx#stx-e _tl1312713475_)))
                                               (let ((_hd1312913481_
                                                      (##car _e1312813478_))
                                                     (_tl1313013483_
                                                      (##cdr _e1312813478_)))
                                                 (if (gx#stx-datum?
                                                      _hd1312913481_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1312913481_)
                         '#f)
                 (if (gx#stx-null? _tl1313013483_)
                     (if (gx#stx-pair? _tl1312413467_)
                         (let ((_e1313113486_ (gx#stx-e _tl1312413467_)))
                           (let ((_hd1313213489_ (##car _e1313113486_))
                                 (_tl1313313491_ (##cdr _e1313113486_)))
                             (if (gx#stx-pair? _hd1313213489_)
                                 (let ((_e1313413494_
                                        (gx#stx-e _hd1313213489_)))
                                   (let ((_hd1313513497_ (##car _e1313413494_))
                                         (_tl1313613499_
                                          (##cdr _e1313413494_)))
                                     (if (gx#identifier? _hd1313513497_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1313513497_)
                                             (if (gx#stx-pair? _tl1313613499_)
                                                 (let ((_e1313713502_
                                                        (gx#stx-e
                                                         _tl1313613499_)))
                                                   (let ((_hd1313813505_
                                                          (##car _e1313713502_))
                                                         (_tl1313913507_
                                                          (##cdr _e1313713502_)))
                                                     (if (gx#stx-null?
                                                          _tl1313913507_)
                                                         (if (gx#stx-pair?
                                                              _tl1313313491_)
                                                             (let ((_e1314013510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1313313491_)))
                       (let ((_hd1314113513_ (##car _e1314013510_))
                             (_tl1314213515_ (##cdr _e1314013510_)))
                         (if (gx#stx-pair? _tl1314213515_)
                             (let ((_e1314313518_ (gx#stx-e _tl1314213515_)))
                               (let ((_hd1314413521_ (##car _e1314313518_))
                                     (_tl1314513523_ (##cdr _e1314313518_)))
                                 (if (gx#stx-pair? _hd1314413521_)
                                     (let ((_e1314613526_
                                            (gx#stx-e _hd1314413521_)))
                                       (let ((_hd1314713529_
                                              (##car _e1314613526_))
                                             (_tl1314813531_
                                              (##cdr _e1314613526_)))
                                         (if (gx#identifier? _hd1314713529_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1314713529_)
                                                 (if (gx#stx-pair?
                                                      _tl1314813531_)
                                                     (let ((_e1314913534_
                                                            (gx#stx-e
                                                             _tl1314813531_)))
                                                       (let ((_hd1315013537_
                                                              (##car _e1314913534_))
                                                             (_tl1315113539_
                                                              (##cdr _e1314913534_)))
                                                         (if (gx#stx-null?
                                                              _tl1315113539_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1314513523_)
                         (let ((_e1315213542_ (gx#stx-e _tl1314513523_)))
                           (let ((_hd1315313545_ (##car _e1315213542_))
                                 (_tl1315413547_ (##cdr _e1315213542_)))
                             (if (gx#stx-pair? _hd1315313545_)
                                 (let ((_e1315513550_
                                        (gx#stx-e _hd1315313545_)))
                                   (let ((_hd1315613553_ (##car _e1315513550_))
                                         (_tl1315713555_
                                          (##cdr _e1315513550_)))
                                     (if (gx#identifier? _hd1315613553_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1315613553_)
                                             (if (gx#stx-pair? _tl1315713555_)
                                                 (let ((_e1315813558_
                                                        (gx#stx-e
                                                         _tl1315713555_)))
                                                   (let ((_hd1315913561_
                                                          (##car _e1315813558_))
                                                         (_tl1316013563_
                                                          (##cdr _e1315813558_)))
                                                     (if (gx#stx-null?
                                                          _tl1316013563_)
                                                         (if (gx#stx-null?
                                                              _tl1315413547_)
                                                             ((lambda (_L13566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L13567_
                               _L13568_
                               _L13569_
                               _L13570_)
                        (let ((__obj19970
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19970
                             (gx#stx-e _L13570_)
                             '#f
                             (gx#stx-e _L13569_)
                             '0
                             (gx#stx-e _L13566_)
                             (gx#stx-e _L13567_))
                            __obj19970)))
                      _hd1315913561_
                      _hd1315013537_
                      _hd1314113513_
                      _hd1313813505_
                      _hd1312013457_)
                     (_g1310413433_ _g1310713436_))
                 (_g1310413433_ _g1310713436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1310413433_ _g1310713436_))
                                             (_g1310413433_ _g1310713436_))
                                         (_g1310413433_ _g1310713436_))))
                                 (_g1310413433_ _g1310713436_))))
                         (_g1310413433_ _g1310713436_))
                     (_g1310413433_ _g1310713436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1310413433_
                                                      _g1310713436_))
                                                 (_g1310413433_ _g1310713436_))
                                             (_g1310413433_ _g1310713436_))))
                                     (_g1310413433_ _g1310713436_))))
                             (_g1310413433_ _g1310713436_))))
                     (_g1310413433_ _g1310713436_))
                 (_g1310413433_ _g1310713436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1310413433_ _g1310713436_))
                                             (_g1310413433_ _g1310713436_))
                                         (_g1310413433_ _g1310713436_))))
                                 (_g1310413433_ _g1310713436_))))
                         (_g1310413433_ _g1310713436_))
                     (_g1310413433_ _g1310713436_))
                 (_g1310413433_ _g1310713436_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1310413433_
                                                      _g1310713436_))))
                                             (_g1310413433_ _g1310713436_))
                                         (_g1310413433_ _g1310713436_))
                                     (_g1310413433_ _g1310713436_))))
                             (_g1310413433_ _g1310713436_))))
                     (_g1310413433_ _g1310713436_))
                 (_g1310413433_ _g1310713436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1310413433_ _g1310713436_))
                                             (_g1310413433_ _g1310713436_))
                                         (_g1310413433_ _g1310713436_))))
                                 (_g1310413433_ _g1310713436_))))
                         (_g1310413433_ _g1310713436_)))))
              (_g1310313613_ _args13102_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx13027_ _args13028_)
      (let ((_g1303113047_
             (lambda (_g1303213044_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1303213044_))))
        (let ((_g1303013054_ (lambda (_g1303213050_) ((lambda () '#f)))))
          (let ((_g1302913098_
                 (lambda (_g1303213057_)
                   (if (gx#stx-pair? _g1303213057_)
                       (let ((_e1303413059_ (gx#stx-e _g1303213057_)))
                         (let ((_hd1303513062_ (##car _e1303413059_))
                               (_tl1303613064_ (##cdr _e1303413059_)))
                           (if (gx#stx-pair? _hd1303513062_)
                               (let ((_e1303713067_ (gx#stx-e _hd1303513062_)))
                                 (let ((_hd1303813070_ (##car _e1303713067_))
                                       (_tl1303913072_ (##cdr _e1303713067_)))
                                   (if (gx#identifier? _hd1303813070_)
                                       (if (gx#stx-eq? '%#ref _hd1303813070_)
                                           (if (gx#stx-pair? _tl1303913072_)
                                               (let ((_e1304013075_
                                                      (gx#stx-e
                                                       _tl1303913072_)))
                                                 (let ((_hd1304113078_
                                                        (##car _e1304013075_))
                                                       (_tl1304213080_
                                                        (##cdr _e1304013075_)))
                                                   (if (gx#stx-null?
                                                        _tl1304213080_)
                                                       (if (gx#stx-null?
                                                            _tl1303613064_)
                                                           ((lambda (_L13083_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L13083_)))
                                                            _hd1304113078_)
                                                           (_g1303013054_
                                                            _g1303213057_))
                                                       (_g1303013054_
                                                        _g1303213057_))))
                                               (_g1303013054_ _g1303213057_))
                                           (_g1303013054_ _g1303213057_))
                                       (_g1303013054_ _g1303213057_))))
                               (_g1303013054_ _g1303213057_))))
                       (_g1303013054_ _g1303213057_)))))
            (_g1302913098_ _args13028_))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__opt-lambda12896
      (lambda (_stx12898_ _args12899_ _unchecked?12900_)
        (let ((_g1290312929_
               (lambda (_g1290412926_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1290412926_))))
          (let ((_g1290212936_ (lambda (_g1290412932_) ((lambda () '#f)))))
            (let ((_g1290113012_
                   (lambda (_g1290412939_)
                     (if (gx#stx-pair? _g1290412939_)
                         (let ((_e1290712941_ (gx#stx-e _g1290412939_)))
                           (let ((_hd1290812944_ (##car _e1290712941_))
                                 (_tl1290912946_ (##cdr _e1290712941_)))
                             (if (gx#stx-pair? _hd1290812944_)
                                 (let ((_e1291012949_
                                        (gx#stx-e _hd1290812944_)))
                                   (let ((_hd1291112952_ (##car _e1291012949_))
                                         (_tl1291212954_
                                          (##cdr _e1291012949_)))
                                     (if (gx#identifier? _hd1291112952_)
                                         (if (gx#stx-eq? '%#ref _hd1291112952_)
                                             (if (gx#stx-pair? _tl1291212954_)
                                                 (let ((_e1291312957_
                                                        (gx#stx-e
                                                         _tl1291212954_)))
                                                   (let ((_hd1291412960_
                                                          (##car _e1291312957_))
                                                         (_tl1291512962_
                                                          (##cdr _e1291312957_)))
                                                     (if (gx#stx-null?
                                                          _tl1291512962_)
                                                         (if (gx#stx-pair?
                                                              _tl1290912946_)
                                                             (let ((_e1291612965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1290912946_)))
                       (let ((_hd1291712968_ (##car _e1291612965_))
                             (_tl1291812970_ (##cdr _e1291612965_)))
                         (if (gx#stx-pair? _hd1291712968_)
                             (let ((_e1291912973_ (gx#stx-e _hd1291712968_)))
                               (let ((_hd1292012976_ (##car _e1291912973_))
                                     (_tl1292112978_ (##cdr _e1291912973_)))
                                 (if (gx#identifier? _hd1292012976_)
                                     (if (gx#stx-eq? '%#quote _hd1292012976_)
                                         (if (gx#stx-pair? _tl1292112978_)
                                             (let ((_e1292212981_
                                                    (gx#stx-e _tl1292112978_)))
                                               (let ((_hd1292312984_
                                                      (##car _e1292212981_))
                                                     (_tl1292412986_
                                                      (##cdr _e1292212981_)))
                                                 (if (gx#stx-null?
                                                      _tl1292412986_)
                                                     (if (gx#stx-null?
                                                          _tl1291812970_)
                                                         ((lambda (_L12989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L12990_)
                    (##structure
                     gxc#!struct-getf::t
                     (gxc#generate-runtime-binding-id _L12990_)
                     (gx#stx-e _L12989_)
                     _unchecked?12900_))
                  _hd1292312984_
                  _hd1291412960_)
                 (_g1290212936_ _g1290412939_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1290212936_
                                                      _g1290412939_))))
                                             (_g1290212936_ _g1290412939_))
                                         (_g1290212936_ _g1290412939_))
                                     (_g1290212936_ _g1290412939_))))
                             (_g1290212936_ _g1290412939_))))
                     (_g1290212936_ _g1290412939_))
                 (_g1290212936_ _g1290412939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1290212936_ _g1290412939_))
                                             (_g1290212936_ _g1290412939_))
                                         (_g1290212936_ _g1290412939_))))
                                 (_g1290212936_ _g1290412939_))))
                         (_g1290212936_ _g1290412939_)))))
              (_g1290113012_ _args12899_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx13018_ _args13019_)
          (let ((_unchecked?13021_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda12896
             _stx13018_
             _args13019_
             _unchecked?13021_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g20034_
          (let ((_g20033_ (length _g20034_)))
            (cond ((fx= _g20033_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g20034_))
                  ((fx= _g20033_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__opt-lambda12896
                          _g20034_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g20034_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__opt-lambda12766
      (lambda (_stx12768_ _args12769_ _unchecked?12770_)
        (let ((_g1277312799_
               (lambda (_g1277412796_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1277412796_))))
          (let ((_g1277212806_ (lambda (_g1277412802_) ((lambda () '#f)))))
            (let ((_g1277112882_
                   (lambda (_g1277412809_)
                     (if (gx#stx-pair? _g1277412809_)
                         (let ((_e1277712811_ (gx#stx-e _g1277412809_)))
                           (let ((_hd1277812814_ (##car _e1277712811_))
                                 (_tl1277912816_ (##cdr _e1277712811_)))
                             (if (gx#stx-pair? _hd1277812814_)
                                 (let ((_e1278012819_
                                        (gx#stx-e _hd1277812814_)))
                                   (let ((_hd1278112822_ (##car _e1278012819_))
                                         (_tl1278212824_
                                          (##cdr _e1278012819_)))
                                     (if (gx#identifier? _hd1278112822_)
                                         (if (gx#stx-eq? '%#ref _hd1278112822_)
                                             (if (gx#stx-pair? _tl1278212824_)
                                                 (let ((_e1278312827_
                                                        (gx#stx-e
                                                         _tl1278212824_)))
                                                   (let ((_hd1278412830_
                                                          (##car _e1278312827_))
                                                         (_tl1278512832_
                                                          (##cdr _e1278312827_)))
                                                     (if (gx#stx-null?
                                                          _tl1278512832_)
                                                         (if (gx#stx-pair?
                                                              _tl1277912816_)
                                                             (let ((_e1278612835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1277912816_)))
                       (let ((_hd1278712838_ (##car _e1278612835_))
                             (_tl1278812840_ (##cdr _e1278612835_)))
                         (if (gx#stx-pair? _hd1278712838_)
                             (let ((_e1278912843_ (gx#stx-e _hd1278712838_)))
                               (let ((_hd1279012846_ (##car _e1278912843_))
                                     (_tl1279112848_ (##cdr _e1278912843_)))
                                 (if (gx#identifier? _hd1279012846_)
                                     (if (gx#stx-eq? '%#quote _hd1279012846_)
                                         (if (gx#stx-pair? _tl1279112848_)
                                             (let ((_e1279212851_
                                                    (gx#stx-e _tl1279112848_)))
                                               (let ((_hd1279312854_
                                                      (##car _e1279212851_))
                                                     (_tl1279412856_
                                                      (##cdr _e1279212851_)))
                                                 (if (gx#stx-null?
                                                      _tl1279412856_)
                                                     (if (gx#stx-null?
                                                          _tl1278812840_)
                                                         ((lambda (_L12859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L12860_)
                    (##structure
                     gxc#!struct-setf::t
                     (gxc#generate-runtime-binding-id _L12860_)
                     (gx#stx-e _L12859_)
                     _unchecked?12770_))
                  _hd1279312854_
                  _hd1278412830_)
                 (_g1277212806_ _g1277412809_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1277212806_
                                                      _g1277412809_))))
                                             (_g1277212806_ _g1277412809_))
                                         (_g1277212806_ _g1277412809_))
                                     (_g1277212806_ _g1277412809_))))
                             (_g1277212806_ _g1277412809_))))
                     (_g1277212806_ _g1277412809_))
                 (_g1277212806_ _g1277412809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1277212806_ _g1277412809_))
                                             (_g1277212806_ _g1277412809_))
                                         (_g1277212806_ _g1277412809_))))
                                 (_g1277212806_ _g1277412809_))))
                         (_g1277212806_ _g1277412809_)))))
              (_g1277112882_ _args12769_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx12888_ _args12889_)
          (let ((_unchecked?12891_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda12766
             _stx12888_
             _args12889_
             _unchecked?12891_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g20036_
          (let ((_g20035_ (length _g20036_)))
            (cond ((fx= _g20035_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g20036_))
                  ((fx= _g20035_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__opt-lambda12766
                          _g20036_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g20036_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx12764_ _args12765_)
      (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda12896
       _stx12764_
       _args12765_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx12761_ _args12762_)
      (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda12766
       _stx12761_
       _args12762_
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
    (lambda (_stx12710_)
      (let ((_g1271212725_
             (lambda (_g1271312722_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1271312722_))))
        (let ((_g1271112758_
               (lambda (_g1271312728_)
                 (if (gx#stx-pair? _g1271312728_)
                     (let ((_e1271512730_ (gx#stx-e _g1271312728_)))
                       (let ((_hd1271612733_ (##car _e1271512730_))
                             (_tl1271712735_ (##cdr _e1271512730_)))
                         (if (gx#stx-pair? _tl1271712735_)
                             (let ((_e1271812738_ (gx#stx-e _tl1271712735_)))
                               (let ((_hd1271912741_ (##car _e1271812738_))
                                     (_tl1272012743_ (##cdr _e1271812738_)))
                                 (if (gx#stx-null? _tl1272012743_)
                                     ((lambda (_L12746_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L12746_)))
                                      _hd1271912741_)
                                     (_g1271212725_ _g1271312728_))))
                             (_g1271212725_ _g1271312728_))))
                     (_g1271212725_ _g1271312728_)))))
          (_g1271112758_ _stx12710_)))))
  (define gxc#optimize-call%
    (lambda (_stx12616_)
      (let ((_g1261912639_
             (lambda (_g1262012636_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1262012636_))))
        (let ((_g1261812646_
               (lambda (_g1262012642_)
                 ((lambda () (gxc#xform-call% _stx12616_))))))
          (let ((_g1261712707_
                 (lambda (_g1262012649_)
                   (if (gx#stx-pair? _g1262012649_)
                       (let ((_e1262312651_ (gx#stx-e _g1262012649_)))
                         (let ((_hd1262412654_ (##car _e1262312651_))
                               (_tl1262512656_ (##cdr _e1262312651_)))
                           (if (gx#stx-pair? _tl1262512656_)
                               (let ((_e1262612659_ (gx#stx-e _tl1262512656_)))
                                 (let ((_hd1262712662_ (##car _e1262612659_))
                                       (_tl1262812664_ (##cdr _e1262612659_)))
                                   (if (gx#stx-pair? _hd1262712662_)
                                       (let ((_e1262912667_
                                              (gx#stx-e _hd1262712662_)))
                                         (let ((_hd1263012670_
                                                (##car _e1262912667_))
                                               (_tl1263112672_
                                                (##cdr _e1262912667_)))
                                           (if (gx#identifier? _hd1263012670_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1263012670_)
                                                   (if (gx#stx-pair?
                                                        _tl1263112672_)
                                                       (let ((_e1263212675_
                                                              (gx#stx-e
                                                               _tl1263112672_)))
                                                         (let ((_hd1263312678_
                                                                (##car _e1263212675_))
                                                               (_tl1263412680_
                                                                (##cdr _e1263212675_)))
                                                           (if (gx#stx-null?
                                                                _tl1263412680_)
                                                               ((lambda (_L12683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12684_)
                          (let ((_rator-id12702_
                                 (gxc#generate-runtime-binding-id _L12684_)))
                            (let ((_rator-type12704_
                                   (gxc#optimizer-resolve-type
                                    _rator-id12702_)))
                              (let ()
                                (if (##structure-instance-of?
                                     _rator-type12704_
                                     'gxc#!procedure::t)
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id12702_
                                       '" => "
                                       _rator-type12704_
                                       '" "
                                       (##structure-ref
                                        _rator-type12704_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type12704_
                                       'optimize-call
                                       _stx12616_
                                       _L12683_))
                                    (if (not _rator-type12704_)
                                        (gxc#xform-call% _stx12616_)
                                        (gxc#raise-compile-error
                                         '"Illegal application; not a procedure"
                                         _stx12616_
                                         _rator-type12704_)))))))
                        _tl1262812664_
                        _hd1263312678_)
                       (_g1261812646_ _g1262012649_))))
               (_g1261812646_ _g1262012649_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1261812646_
                                                    _g1262012649_))
                                               (_g1261812646_ _g1262012649_))))
                                       (_g1261812646_ _g1262012649_))))
                               (_g1261812646_ _g1262012649_))))
                       (_g1261812646_ _g1262012649_)))))
            (_g1261712707_ _stx12616_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self12471_ _stx12472_ _args12473_)
      (let ((_self1247412480_ _self12471_))
        (let ((_E1247612484_
               (lambda () (error '"No clause matching" _self1247412480_))))
          (let ((_K1247712608_
                 (lambda (_struct-t12487_)
                   (let ((_struct-type12489_
                          (gxc#optimizer-resolve-type _struct-t12487_)))
                     (let ((_struct-type1249012504_ _struct-type12489_))
                       (let ((_E1249412508_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1249012504_))))
                         (let ((_else1249312512_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx12472_
                                   _struct-t12487_
                                   _struct-type12489_))))
                           (let ((_try-match1249212520_
                                  (lambda ()
                                    (let ((_K1249512517_
                                           (lambda ()
                                             (gxc#xform-call% _stx12472_))))
                                      (if (##eq? _struct-type1249012504_ '#f)
                                          (_K1249512517_)
                                          (_else1249312512_))))))
                             (let ((_K1249612583_
                                    (lambda (_plist12523_
                                             _struct-type-id12524_)
                                      (let ((_g1252712537_
                                             (lambda (_g1252812534_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1252812534_))))
                                        (let ((_g1252612544_
                                               (lambda (_g1252812540_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx12472_))))))
                                          (let ((_g1252512580_
                                                 (lambda (_g1252812547_)
                                                   (if (gx#stx-pair?
                                                        _g1252812547_)
                                                       (let ((_e1253012549_
                                                              (gx#stx-e
                                                               _g1252812547_)))
                                                         (let ((_hd1253112552_
                                                                (##car _e1253012549_))
                                                               (_tl1253212554_
                                                                (##cdr _e1253012549_)))
                                                           (if (gx#stx-null?
                                                                _tl1253212554_)
                                                               ((lambda (_L12557_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr12577_ (gxc#compile-e _L12557_))
                                (_op12578_
                                 (if (if _plist12523_
                                         (assgetq 'final: _plist12523_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op12578_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id12524_
                                                     '()))
                                         (cons _expr12577_ '())))
                             _stx12472_)))
                        _hd1253112552_)
                       (_g1252612544_ _g1252812547_))))
               (_g1252612544_ _g1252812547_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1252512580_ _args12473_)))))))
                               (if (##structure-instance-of?
                                    _struct-type1249012504_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1249712586_
                                          (##vector-ref
                                           _struct-type1249012504_
                                           '1)))
                                     (let ((_struct-type-id12589_
                                            _e1249712586_))
                                       (let ((_e1249812591_
                                              (##vector-ref
                                               _struct-type1249012504_
                                               '2)))
                                         (let ((_e1249912594_
                                                (##vector-ref
                                                 _struct-type1249012504_
                                                 '3)))
                                           (let ((_e1250012597_
                                                  (##vector-ref
                                                   _struct-type1249012504_
                                                   '4)))
                                             (let ((_e1250112600_
                                                    (##vector-ref
                                                     _struct-type1249012504_
                                                     '5)))
                                               (let ((_e1250212603_
                                                      (##vector-ref
                                                       _struct-type1249012504_
                                                       '6)))
                                                 (let ((_plist12606_
                                                        _e1250212603_))
                                                   (_K1249612583_
                                                    _plist12606_
                                                    _struct-type-id12589_)))))))))
                                   (_try-match1249212520_)))))))))))
            (if (##structure-instance-of?
                 _self1247412480_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1247812611_ (##vector-ref _self1247412480_ '1)))
                  (let ((_struct-t12614_ _e1247812611_))
                    (_K1247712608_ _struct-t12614_)))
                (_E1247612484_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self12367_ _stx12368_ _args12369_)
      (let ((_self1237012376_ _self12367_))
        (let ((_E1237212380_
               (lambda () (error '"No clause matching" _self1237012376_))))
          (let ((_K1237312463_
                 (lambda (_struct-t12383_)
                   (let ((_struct-type12385_
                          (gxc#optimizer-resolve-type _struct-t12383_)))
                     (let ((_struct-type1238612399_ _struct-type12385_))
                       (let ((_E1239012403_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1238612399_))))
                         (let ((_else1238912407_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx12368_
                                   _struct-t12383_
                                   _struct-type12385_))))
                           (let ((_try-match1238812415_
                                  (lambda ()
                                    (let ((_K1239112412_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t12383_)
                                               (gxc#xform-call% _stx12368_)))))
                                      (if (##eq? _struct-type1238612399_ '#f)
                                          (_K1239112412_)
                                          (_else1238912407_))))))
                             (let ((_K1239212437_
                                    (lambda (_ctor12418_
                                             _xfields12419_
                                             _fields12420_
                                             _type-id12421_)
                                      (let ((_args12423_
                                             (map gxc#compile-e _args12369_)))
                                        (let ((_$e12425_
                                               (if _ctor12418_
                                                   (if _xfields12419_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type12385_
                                                        _ctor12418_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e12425_
                                              ((lambda (_kons12428_)
                                                 (let ((_$obj12430_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj12430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t12383_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields12420_ _xfields12419_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons12428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj12430_ '())) _args12423_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx12368_))
                                          (cons (cons '%#ref
                                                      (cons _$obj12430_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx12368_)))
                                               _$e12425_)
                                              (if (let ((_$e12432_
                                                         _ctor12418_))
                                                    (if _$e12432_
                                                        _$e12432_
                                                        (not _xfields12419_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t12383_ '()))
                             _args12423_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx12368_)
                                                  (let ((_arity12435_
                                                         (fx+ _fields12420_
                                                              _xfields12419_)))
                                                    (if (fx= _arity12435_
                                                             (length _args12423_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t12383_ '()))
                                   _args12423_)))
                 _stx12368_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx12368_
                 _struct-t12383_
                 _arity12435_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (##structure-instance-of?
                                    _struct-type1238612399_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1239312440_
                                          (##vector-ref
                                           _struct-type1238612399_
                                           '1)))
                                     (let ((_type-id12443_ _e1239312440_))
                                       (let ((_e1239412445_
                                              (##vector-ref
                                               _struct-type1238612399_
                                               '2)))
                                         (let ((_e1239512448_
                                                (##vector-ref
                                                 _struct-type1238612399_
                                                 '3)))
                                           (let ((_fields12451_ _e1239512448_))
                                             (let ((_e1239612453_
                                                    (##vector-ref
                                                     _struct-type1238612399_
                                                     '4)))
                                               (let ((_xfields12456_
                                                      _e1239612453_))
                                                 (let ((_e1239712458_
                                                        (##vector-ref
                                                         _struct-type1238612399_
                                                         '5)))
                                                   (let ((_ctor12461_
                                                          _e1239712458_))
                                                     (_K1239212437_
                                                      _ctor12461_
                                                      _xfields12456_
                                                      _fields12451_
                                                      _type-id12443_))))))))))
                                   (_try-match1238812415_)))))))))))
            (if (##structure-instance-of?
                 _self1237012376_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1237412466_ (##vector-ref _self1237012376_ '1)))
                  (let ((_struct-t12469_ _e1237412466_))
                    (_K1237312463_ _struct-t12469_)))
                (_E1237212380_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self12201_ _stx12202_ _args12203_)
      (let ((_self1220412212_ _self12201_))
        (let ((_E1220612216_
               (lambda () (error '"No clause matching" _self1220412212_))))
          (let ((_K1220712349_
                 (lambda (_unchecked?12219_ _off12220_ _struct-t12221_)
                   (let ((_struct-type12223_
                          (gxc#optimizer-resolve-type _struct-t12221_)))
                     (let ((_struct-type1222412238_ _struct-type12223_))
                       (let ((_E1222812242_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1222412238_))))
                         (let ((_else1222712246_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx12202_
                                   _struct-t12221_
                                   _struct-type12223_))))
                           (let ((_try-match1222612254_
                                  (lambda ()
                                    (let ((_K1222912251_
                                           (lambda ()
                                             (gxc#xform-call% _stx12202_))))
                                      (if (##eq? _struct-type1222412238_ '#f)
                                          (_K1222912251_)
                                          (_else1222712246_))))))
                             (let ((_K1223012320_
                                    (lambda (_plist12257_
                                             _xfields12258_
                                             _fields12259_
                                             _struct-type-id12260_)
                                      (if _xfields12258_
                                          (let ((_g1226312273_
                                                 (lambda (_g1226412270_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1226412270_))))
                                            (let ((_g1226212280_
                                                   (lambda (_g1226412276_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx12202_))))))
                                              (let ((_g1226112317_
                                                     (lambda (_g1226412283_)
                                                       (if (gx#stx-pair?
                                                            _g1226412283_)
                                                           (let ((_e1226612285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1226412283_)))
                     (let ((_hd1226712288_ (##car _e1226612285_))
                           (_tl1226812290_ (##cdr _e1226612285_)))
                       (if (gx#stx-null? _tl1226812290_)
                           ((lambda (_L12293_)
                              (let ((_expr12313_ (gxc#compile-e _L12293_))
                                    (_off12314_
                                     (fx+ _off12220_ _xfields12258_ '1))
                                    (_op12315_
                                     (if _unchecked?12219_
                                         '%#struct-unchecked-ref
                                         (if (if _plist12257_
                                                 (assgetq 'final: _plist12257_)
                                                 '#f)
                                             '%#struct-direct-ref
                                             '%#struct-ref))))
                                (gxc#xform-wrap-source
                                 (cons _op12315_
                                       (cons (cons '%#ref
                                                   (cons _struct-t12221_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off12314_ '()))
                                                   (cons _expr12313_ '()))))
                                 _stx12202_)))
                            _hd1226712288_)
                           (_g1226212280_ _g1226412283_))))
                   (_g1226212280_ _g1226412283_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1226112317_ _args12203_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id12260_)
                                            (gxc#xform-call% _stx12202_))))))
                               (if (##structure-instance-of?
                                    _struct-type1222412238_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1223112323_
                                          (##vector-ref
                                           _struct-type1222412238_
                                           '1)))
                                     (let ((_struct-type-id12326_
                                            _e1223112323_))
                                       (let ((_e1223212328_
                                              (##vector-ref
                                               _struct-type1222412238_
                                               '2)))
                                         (let ((_e1223312331_
                                                (##vector-ref
                                                 _struct-type1222412238_
                                                 '3)))
                                           (let ((_fields12334_ _e1223312331_))
                                             (let ((_e1223412336_
                                                    (##vector-ref
                                                     _struct-type1222412238_
                                                     '4)))
                                               (let ((_xfields12339_
                                                      _e1223412336_))
                                                 (let ((_e1223512341_
                                                        (##vector-ref
                                                         _struct-type1222412238_
                                                         '5)))
                                                   (let ((_e1223612344_
                                                          (##vector-ref
                                                           _struct-type1222412238_
                                                           '6)))
                                                     (let ((_plist12347_
                                                            _e1223612344_))
                                                       (_K1223012320_
                                                        _plist12347_
                                                        _xfields12339_
                                                        _fields12334_
                                                        _struct-type-id12326_)))))))))))
                                   (_try-match1222612254_)))))))))))
            (if (##structure-instance-of?
                 _self1220412212_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1220812352_ (##vector-ref _self1220412212_ '1)))
                  (let ((_struct-t12355_ _e1220812352_))
                    (let ((_e1220912357_ (##vector-ref _self1220412212_ '2)))
                      (let ((_off12360_ _e1220912357_))
                        (let ((_e1221012362_
                               (##vector-ref _self1220412212_ '3)))
                          (let ((_unchecked?12365_ _e1221012362_))
                            (_K1220712349_
                             _unchecked?12365_
                             _off12360_
                             _struct-t12355_)))))))
                (_E1220612216_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self12018_ _stx12019_ _args12020_)
      (let ((_self1202112029_ _self12018_))
        (let ((_E1202312033_
               (lambda () (error '"No clause matching" _self1202112029_))))
          (let ((_K1202412183_
                 (lambda (_unchecked?12036_ _off12037_ _struct-t12038_)
                   (let ((_struct-type12040_
                          (gxc#optimizer-resolve-type _struct-t12038_)))
                     (let ((_struct-type1204112055_ _struct-type12040_))
                       (let ((_E1204512059_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1204112055_))))
                         (let ((_else1204412063_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx12019_
                                   _struct-t12038_
                                   _struct-type12040_))))
                           (let ((_try-match1204312071_
                                  (lambda ()
                                    (let ((_K1204612068_
                                           (lambda ()
                                             (gxc#xform-call% _stx12019_))))
                                      (if (##eq? _struct-type1204112055_ '#f)
                                          (_K1204612068_)
                                          (_else1204412063_))))))
                             (let ((_K1204712154_
                                    (lambda (_plist12074_
                                             _xfields12075_
                                             _fields12076_
                                             _struct-type-id12077_)
                                      (if _xfields12075_
                                          (let ((_g1208012094_
                                                 (lambda (_g1208112091_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1208112091_))))
                                            (let ((_g1207912101_
                                                   (lambda (_g1208112097_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx12019_))))))
                                              (let ((_g1207812151_
                                                     (lambda (_g1208112104_)
                                                       (if (gx#stx-pair?
                                                            _g1208112104_)
                                                           (let ((_e1208412106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1208112104_)))
                     (let ((_hd1208512109_ (##car _e1208412106_))
                           (_tl1208612111_ (##cdr _e1208412106_)))
                       (if (gx#stx-pair? _tl1208612111_)
                           (let ((_e1208712114_ (gx#stx-e _tl1208612111_)))
                             (let ((_hd1208812117_ (##car _e1208712114_))
                                   (_tl1208912119_ (##cdr _e1208712114_)))
                               (if (gx#stx-null? _tl1208912119_)
                                   ((lambda (_L12122_ _L12123_)
                                      (let ((_expr12146_
                                             (gxc#compile-e _L12123_))
                                            (_val12147_
                                             (gxc#compile-e _L12122_))
                                            (_off12148_
                                             (fx+ _off12037_
                                                  _xfields12075_
                                                  '1))
                                            (_op12149_
                                             (if _unchecked?12036_
                                                 '%#struct-unchecked-set!
                                                 (if (if _plist12074_
                                                         (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _plist12074_)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '%#struct-direct-set!
                                                     '%#struct-set!))))
                                        (gxc#xform-wrap-source
                                         (cons _op12149_
                                               (cons (cons '%#ref
                                                           (cons _struct-t12038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off12148_ '()))
                   (cons _expr12146_ (cons _val12147_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx12019_)))
                                    _hd1208812117_
                                    _hd1208512109_)
                                   (_g1207912101_ _g1208112104_))))
                           (_g1207912101_ _g1208112104_))))
                   (_g1207912101_ _g1208112104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1207812151_ _args12020_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id12077_)
                                            (gxc#xform-call% _stx12019_))))))
                               (if (##structure-instance-of?
                                    _struct-type1204112055_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1204812157_
                                          (##vector-ref
                                           _struct-type1204112055_
                                           '1)))
                                     (let ((_struct-type-id12160_
                                            _e1204812157_))
                                       (let ((_e1204912162_
                                              (##vector-ref
                                               _struct-type1204112055_
                                               '2)))
                                         (let ((_e1205012165_
                                                (##vector-ref
                                                 _struct-type1204112055_
                                                 '3)))
                                           (let ((_fields12168_ _e1205012165_))
                                             (let ((_e1205112170_
                                                    (##vector-ref
                                                     _struct-type1204112055_
                                                     '4)))
                                               (let ((_xfields12173_
                                                      _e1205112170_))
                                                 (let ((_e1205212175_
                                                        (##vector-ref
                                                         _struct-type1204112055_
                                                         '5)))
                                                   (let ((_e1205312178_
                                                          (##vector-ref
                                                           _struct-type1204112055_
                                                           '6)))
                                                     (let ((_plist12181_
                                                            _e1205312178_))
                                                       (_K1204712154_
                                                        _plist12181_
                                                        _xfields12173_
                                                        _fields12168_
                                                        _struct-type-id12160_)))))))))))
                                   (_try-match1204312071_)))))))))))
            (if (##structure-instance-of?
                 _self1202112029_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1202512186_ (##vector-ref _self1202112029_ '1)))
                  (let ((_struct-t12189_ _e1202512186_))
                    (let ((_e1202612191_ (##vector-ref _self1202112029_ '2)))
                      (let ((_off12194_ _e1202612191_))
                        (let ((_e1202712196_
                               (##vector-ref _self1202112029_ '3)))
                          (let ((_unchecked?12199_ _e1202712196_))
                            (_K1202412183_
                             _unchecked?12199_
                             _off12194_
                             _struct-t12189_)))))))
                (_E1202312033_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self11974_ _stx11975_ _args11976_)
      (let ((_self1197711986_ _self11974_))
        (let ((_E1197911990_
               (lambda () (error '"No clause matching" _self1197711986_))))
          (let ((_K1198011997_
                 (lambda (_inline11993_ _dispatch11994_ _arity11995_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self11974_ _args11976_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx11975_
                          _arity11995_))
                     (if _inline11993_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline11993_ _stx11975_)
                             _stx11975_)))
                         (if _dispatch11994_
                             (begin
                               (gxc#verbose
                                '"dispatch lambda => "
                                _dispatch11994_)
                               (gxc#compile-e
                                (gxc#xform-wrap-source
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons _dispatch11994_ '()))
                                             _args11976_))
                                 _stx11975_)))
                             (gxc#xform-call% _stx11975_)))))))
            (if (##structure-instance-of?
                 _self1197711986_
                 (##type-id gxc#!lambda::t))
                (let ((_e1198112000_ (##vector-ref _self1197711986_ '1)))
                  (let ((_e1198212003_ (##vector-ref _self1197711986_ '2)))
                    (let ((_arity12006_ _e1198212003_))
                      (let ((_e1198312008_ (##vector-ref _self1197711986_ '3)))
                        (let ((_dispatch12011_ _e1198312008_))
                          (let ((_e1198412013_
                                 (##vector-ref _self1197711986_ '4)))
                            (let ((_inline12016_ _e1198412013_))
                              (_K1198011997_
                               _inline12016_
                               _dispatch12011_
                               _arity12006_))))))))
                (_E1197911990_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self11935_ _stx11936_ _args11937_)
      (let ((_self1193811945_ _self11935_))
        (let ((_E1194011949_
               (lambda () (error '"No clause matching" _self1193811945_))))
          (let ((_K1194111963_
                 (lambda (_clauses11952_)
                   (let ((_$e11958_
                          (find (lambda (_g1195311955_)
                                  (gxc#!lambda-arity-match?
                                   _g1195311955_
                                   _args11937_))
                                _clauses11952_)))
                     (if _$e11958_
                         ((lambda (_clause11961_)
                            (call-method
                             _clause11961_
                             'optimize-call
                             _stx11936_
                             _args11937_))
                          _$e11958_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx11936_
                          (map gxc#!lambda-arity _clauses11952_)))))))
            (if (##structure-instance-of?
                 _self1193811945_
                 (##type-id gxc#!case-lambda::t))
                (let ((_e1194211966_ (##vector-ref _self1193811945_ '1)))
                  (let ((_e1194311969_ (##vector-ref _self1193811945_ '2)))
                    (let ((_clauses11972_ _e1194311969_))
                      (_K1194111963_ _clauses11972_))))
                (_E1194011949_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self11871_ _args11872_)
      (let ((_self1187311880_ _self11871_))
        (let ((_E1187511884_
               (lambda () (error '"No clause matching" _self1187311880_))))
          (let ((_K1187611924_
                 (lambda (_arity11887_)
                   (let ((_arity1188811897_ _arity11887_))
                     (let ((_E1189111901_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1188811897_))))
                       (let ((_try-match1189011917_
                              (lambda ()
                                (let ((_K1189211907_
                                       (lambda (_arity11905_)
                                         (fx>= (length _args11872_)
                                               _arity11905_))))
                                  (if (##pair? _arity1188811897_)
                                      (let ((_hd1189311910_
                                             (##car _arity1188811897_))
                                            (_tl1189411912_
                                             (##cdr _arity1188811897_)))
                                        (let ((_arity11915_ _hd1189311910_))
                                          (if (##null? _tl1189411912_)
                                              (_K1189211907_ _arity11915_)
                                              (_E1189111901_))))
                                      (_E1189111901_))))))
                         (let ((_K1189511921_
                                (lambda ()
                                  (fx= (length _args11872_) _arity11887_))))
                           (if (fixnum? _arity1188811897_)
                               (_K1189511921_)
                               (_try-match1189011917_)))))))))
            (if (##structure-instance-of?
                 _self1187311880_
                 (##type-id gxc#!lambda::t))
                (let ((_e1187711927_ (##vector-ref _self1187311880_ '1)))
                  (let ((_e1187811930_ (##vector-ref _self1187311880_ '2)))
                    (let ((_arity11933_ _e1187811930_))
                      (_K1187611924_ _arity11933_))))
                (_E1187511884_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx11811_)
      (let ((_g1181311827_
             (lambda (_g1181411824_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1181411824_))))
        (let ((_g1181211868_
               (lambda (_g1181411830_)
                 (if (gx#stx-pair? _g1181411830_)
                     (let ((_e1181711832_ (gx#stx-e _g1181411830_)))
                       (let ((_hd1181811835_ (##car _e1181711832_))
                             (_tl1181911837_ (##cdr _e1181711832_)))
                         (if (gx#stx-pair? _tl1181911837_)
                             (let ((_e1182011840_ (gx#stx-e _tl1181911837_)))
                               (let ((_hd1182111843_ (##car _e1182011840_))
                                     (_tl1182211845_ (##cdr _e1182011840_)))
                                 ((lambda (_L11848_ _L11849_)
                                    (let ((_ctx11862_
                                           (gx#syntax-local-e__0 _L11849_)))
                                      (let ((_code11864_
                                             (##structure-ref
                                              _ctx11862_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code11864_))
                                           gx#current-expander-context
                                           _ctx11862_)))))
                                  _tl1182211845_
                                  _hd1182111843_)))
                             (_g1181311827_ _g1181411830_))))
                     (_g1181311827_ _g1181411830_)))))
          (_g1181211868_ _stx11811_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx11621_)
      (let ((_generate-e11623_
             (lambda (_id11800_)
               (let ((_sym11802_
                      (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                          (gxc#generate-runtime-binding-id _id11800_)
                          '#f)))
                 (let ((_$e11804_
                        (if _sym11802_
                            (gxc#optimizer-lookup-type _sym11802_)
                            '#f)))
                   (if _$e11804_
                       ((lambda (_type11807_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym11802_)
                            (let ((_typedecl11809_
                                   (call-method _type11807_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym11802_
                                          (cons _typedecl11809_ '()))))))
                        _$e11804_)
                       '(begin)))))))
        (let ((_g1162611664_
               (lambda (_g1162711661_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1162711661_))))
          (let ((_g1162511745_
                 (lambda (_g1162711667_)
                   (if (gx#stx-pair? _g1162711667_)
                       (let ((_e1164211669_ (gx#stx-e _g1162711667_)))
                         (let ((_hd1164311672_ (##car _e1164211669_))
                               (_tl1164411674_ (##cdr _e1164211669_)))
                           (if (gx#stx-pair? _tl1164411674_)
                               (let ((_e1164511677_ (gx#stx-e _tl1164411674_)))
                                 (let ((_hd1164611680_ (##car _e1164511677_))
                                       (_tl1164711682_ (##cdr _e1164511677_)))
                                   (if (gx#stx-pair/null? _hd1164611680_)
                                       (if (fx>= (gx#stx-length _hd1164611680_)
                                                 '0)
                                           (let ((_g20037_
                                                  (gx#syntax-split-splice
                                                   _hd1164611680_
                                                   '0)))
                                             (begin
                                               (let ((_g20038_
                                                      (values-count _g20037_)))
                                                 (if (not (fx= _g20038_ 2))
                                                     (error "Context expects 2 values"
                                                            _g20038_)))
                                               (let ((_target1164811685_
                                                      (values-ref _g20037_ 0))
                                                     (_tl1165011687_
                                                      (values-ref _g20037_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1165011687_)
                                                     (letrec ((_loop1165111690_
                                                               (lambda (_hd1164911693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1165511695_)
                         (if (gx#stx-pair? _hd1164911693_)
                             (let ((_e1165211698_ (gx#stx-e _hd1164911693_)))
                               (let ((_lp-hd1165311701_ (##car _e1165211698_))
                                     (_lp-tl1165411703_ (##cdr _e1165211698_)))
                                 (_loop1165111690_
                                  _lp-tl1165411703_
                                  (cons _lp-hd1165311701_ _id1165511695_))))
                             (let ((_id1165611706_ (reverse _id1165511695_)))
                               (if (gx#stx-pair? _tl1164711682_)
                                   (let ((_e1165711709_
                                          (gx#stx-e _tl1164711682_)))
                                     (let ((_hd1165811712_
                                            (##car _e1165711709_))
                                           (_tl1165911714_
                                            (##cdr _e1165711709_)))
                                       (if (gx#stx-null? _tl1165911714_)
                                           ((lambda (_L11717_)
                                              (let ((_types11743_
                                                     (map _generate-e11623_
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1173511738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1173611740_)
                              (cons _g1173511738_ _g1173611740_))
                            '()
                            _L11717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'begin _types11743_)))
                                            _id1165611706_)
                                           (_g1162611664_ _g1162711667_))))
                                   (_g1162611664_ _g1162711667_)))))))
               (_loop1165111690_ _target1164811685_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1162611664_
                                                      _g1162711667_)))))
                                           (_g1162611664_ _g1162711667_))
                                       (_g1162611664_ _g1162711667_))))
                               (_g1162611664_ _g1162711667_))))
                       (_g1162611664_ _g1162711667_)))))
            (let ((_g1162411797_
                   (lambda (_g1162711748_)
                     (if (gx#stx-pair? _g1162711748_)
                         (let ((_e1162911750_ (gx#stx-e _g1162711748_)))
                           (let ((_hd1163011753_ (##car _e1162911750_))
                                 (_tl1163111755_ (##cdr _e1162911750_)))
                             (if (gx#stx-pair? _tl1163111755_)
                                 (let ((_e1163211758_
                                        (gx#stx-e _tl1163111755_)))
                                   (let ((_hd1163311761_ (##car _e1163211758_))
                                         (_tl1163411763_
                                          (##cdr _e1163211758_)))
                                     (if (gx#stx-pair? _hd1163311761_)
                                         (let ((_e1163511766_
                                                (gx#stx-e _hd1163311761_)))
                                           (let ((_hd1163611769_
                                                  (##car _e1163511766_))
                                                 (_tl1163711771_
                                                  (##cdr _e1163511766_)))
                                             (if (gx#stx-null? _tl1163711771_)
                                                 (if (gx#stx-pair?
                                                      _tl1163411763_)
                                                     (let ((_e1163811774_
                                                            (gx#stx-e
                                                             _tl1163411763_)))
                                                       (let ((_hd1163911777_
                                                              (##car _e1163811774_))
                                                             (_tl1164011779_
                                                              (##cdr _e1163811774_)))
                                                         (if (gx#stx-null?
                                                              _tl1164011779_)
                                                             ((lambda (_L11782_)
                                                                (_generate-e11623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11782_))
                      _hd1163611769_)
                     (_g1162511745_ _g1162711748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1162511745_
                                                      _g1162711748_))
                                                 (_g1162511745_
                                                  _g1162711748_))))
                                         (_g1162511745_ _g1162711748_))))
                                 (_g1162511745_ _g1162711748_))))
                         (_g1162511745_ _g1162711748_)))))
              (_g1162411797_ _stx11621_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx11175_)
      (let ((_g1117911281_
             (lambda (_g1118011278_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1118011278_))))
        (let ((_g1117811288_ (lambda (_g1118011284_) ((lambda () '(begin))))))
          (let ((_g1117711438_
                 (lambda (_g1118011291_)
                   (if (gx#stx-pair? _g1118011291_)
                       (let ((_e1123811293_ (gx#stx-e _g1118011291_)))
                         (let ((_hd1123911296_ (##car _e1123811293_))
                               (_tl1124011298_ (##cdr _e1123811293_)))
                           (if (gx#stx-pair? _tl1124011298_)
                               (let ((_e1124111301_ (gx#stx-e _tl1124011298_)))
                                 (let ((_hd1124211304_ (##car _e1124111301_))
                                       (_tl1124311306_ (##cdr _e1124111301_)))
                                   (if (gx#stx-pair? _hd1124211304_)
                                       (let ((_e1124411309_
                                              (gx#stx-e _hd1124211304_)))
                                         (let ((_hd1124511312_
                                                (##car _e1124411309_))
                                               (_tl1124611314_
                                                (##cdr _e1124411309_)))
                                           (if (gx#identifier? _hd1124511312_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1124511312_)
                                                   (if (gx#stx-pair?
                                                        _tl1124611314_)
                                                       (let ((_e1124711317_
                                                              (gx#stx-e
                                                               _tl1124611314_)))
                                                         (let ((_hd1124811320_
                                                                (##car _e1124711317_))
                                                               (_tl1124911322_
                                                                (##cdr _e1124711317_)))
                                                           (if (gx#stx-null?
                                                                _tl1124911322_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1124311306_)
                           (let ((_e1125011325_ (gx#stx-e _tl1124311306_)))
                             (let ((_hd1125111328_ (##car _e1125011325_))
                                   (_tl1125211330_ (##cdr _e1125011325_)))
                               (if (gx#stx-pair? _hd1125111328_)
                                   (let ((_e1125311333_
                                          (gx#stx-e _hd1125111328_)))
                                     (let ((_hd1125411336_
                                            (##car _e1125311333_))
                                           (_tl1125511338_
                                            (##cdr _e1125311333_)))
                                       (if (gx#identifier? _hd1125411336_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1125411336_)
                                               (if (gx#stx-pair?
                                                    _tl1125511338_)
                                                   (let ((_e1125611341_
                                                          (gx#stx-e
                                                           _tl1125511338_)))
                                                     (let ((_hd1125711344_
                                                            (##car _e1125611341_))
                                                           (_tl1125811346_
                                                            (##cdr _e1125611341_)))
                                                       (if (gx#stx-null?
                                                            _tl1125811346_)
                                                           (if (gx#stx-pair?
                                                                _tl1125211330_)
                                                               (let ((_e1125911349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1125211330_)))
                         (let ((_hd1126011352_ (##car _e1125911349_))
                               (_tl1126111354_ (##cdr _e1125911349_)))
                           (if (gx#stx-pair? _hd1126011352_)
                               (let ((_e1126211357_ (gx#stx-e _hd1126011352_)))
                                 (let ((_hd1126311360_ (##car _e1126211357_))
                                       (_tl1126411362_ (##cdr _e1126211357_)))
                                   (if (gx#identifier? _hd1126311360_)
                                       (if (gx#stx-eq? '%#quote _hd1126311360_)
                                           (if (gx#stx-pair? _tl1126411362_)
                                               (let ((_e1126511365_
                                                      (gx#stx-e
                                                       _tl1126411362_)))
                                                 (let ((_hd1126611368_
                                                        (##car _e1126511365_))
                                                       (_tl1126711370_
                                                        (##cdr _e1126511365_)))
                                                   (if (gx#stx-null?
                                                        _tl1126711370_)
                                                       (if (gx#stx-pair?
                                                            _tl1126111354_)
                                                           (let ((_e1126811373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1126111354_)))
                     (let ((_hd1126911376_ (##car _e1126811373_))
                           (_tl1127011378_ (##cdr _e1126811373_)))
                       (if (gx#stx-pair? _hd1126911376_)
                           (let ((_e1127111381_ (gx#stx-e _hd1126911376_)))
                             (let ((_hd1127211384_ (##car _e1127111381_))
                                   (_tl1127311386_ (##cdr _e1127111381_)))
                               (if (gx#identifier? _hd1127211384_)
                                   (if (gx#stx-eq? '%#ref _hd1127211384_)
                                       (if (gx#stx-pair? _tl1127311386_)
                                           (let ((_e1127411389_
                                                  (gx#stx-e _tl1127311386_)))
                                             (let ((_hd1127511392_
                                                    (##car _e1127411389_))
                                                   (_tl1127611394_
                                                    (##cdr _e1127411389_)))
                                               (if (gx#stx-null?
                                                    _tl1127611394_)
                                                   (if (gx#stx-null?
                                                        _tl1127011378_)
                                                       ((lambda (_L11397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11398_
                         _L11399_
                         _L11400_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#generate-runtime-binding-id _L11399_)
                                  (cons (gx#stx-e _L11398_)
                                        (cons (gxc#generate-runtime-binding-id
                                               _L11397_)
                                              (cons '#f '())))))
                      (_g1117811288_ _g1118011291_)))
                _hd1127511392_
                _hd1126611368_
                _hd1125711344_
                _hd1124811320_)
               (_g1117811288_ _g1118011291_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1117811288_
                                                    _g1118011291_))))
                                           (_g1117811288_ _g1118011291_))
                                       (_g1117811288_ _g1118011291_))
                                   (_g1117811288_ _g1118011291_))))
                           (_g1117811288_ _g1118011291_))))
                   (_g1117811288_ _g1118011291_))
               (_g1117811288_ _g1118011291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1117811288_ _g1118011291_))
                                           (_g1117811288_ _g1118011291_))
                                       (_g1117811288_ _g1118011291_))))
                               (_g1117811288_ _g1118011291_))))
                       (_g1117811288_ _g1118011291_))
                   (_g1117811288_ _g1118011291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1117811288_
                                                    _g1118011291_))
                                               (_g1117811288_ _g1118011291_))
                                           (_g1117811288_ _g1118011291_))))
                                   (_g1117811288_ _g1118011291_))))
                           (_g1117811288_ _g1118011291_))
                       (_g1117811288_ _g1118011291_))))
               (_g1117811288_ _g1118011291_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1117811288_
                                                    _g1118011291_))
                                               (_g1117811288_ _g1118011291_))))
                                       (_g1117811288_ _g1118011291_))))
                               (_g1117811288_ _g1118011291_))))
                       (_g1117811288_ _g1118011291_)))))
            (let ((_g1117611618_
                   (lambda (_g1118011441_)
                     (if (gx#stx-pair? _g1118011441_)
                         (let ((_e1118611443_ (gx#stx-e _g1118011441_)))
                           (let ((_hd1118711446_ (##car _e1118611443_))
                                 (_tl1118811448_ (##cdr _e1118611443_)))
                             (if (gx#stx-pair? _tl1118811448_)
                                 (let ((_e1118911451_
                                        (gx#stx-e _tl1118811448_)))
                                   (let ((_hd1119011454_ (##car _e1118911451_))
                                         (_tl1119111456_
                                          (##cdr _e1118911451_)))
                                     (if (gx#stx-pair? _hd1119011454_)
                                         (let ((_e1119211459_
                                                (gx#stx-e _hd1119011454_)))
                                           (let ((_hd1119311462_
                                                  (##car _e1119211459_))
                                                 (_tl1119411464_
                                                  (##cdr _e1119211459_)))
                                             (if (gx#identifier?
                                                  _hd1119311462_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1119311462_)
                                                     (if (gx#stx-pair?
                                                          _tl1119411464_)
                                                         (let ((_e1119511467_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1119411464_)))
                   (let ((_hd1119611470_ (##car _e1119511467_))
                         (_tl1119711472_ (##cdr _e1119511467_)))
                     (if (gx#stx-null? _tl1119711472_)
                         (if (gx#stx-pair? _tl1119111456_)
                             (let ((_e1119811475_ (gx#stx-e _tl1119111456_)))
                               (let ((_hd1119911478_ (##car _e1119811475_))
                                     (_tl1120011480_ (##cdr _e1119811475_)))
                                 (if (gx#stx-pair? _hd1119911478_)
                                     (let ((_e1120111483_
                                            (gx#stx-e _hd1119911478_)))
                                       (let ((_hd1120211486_
                                              (##car _e1120111483_))
                                             (_tl1120311488_
                                              (##cdr _e1120111483_)))
                                         (if (gx#identifier? _hd1120211486_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1120211486_)
                                                 (if (gx#stx-pair?
                                                      _tl1120311488_)
                                                     (let ((_e1120411491_
                                                            (gx#stx-e
                                                             _tl1120311488_)))
                                                       (let ((_hd1120511494_
                                                              (##car _e1120411491_))
                                                             (_tl1120611496_
                                                              (##cdr _e1120411491_)))
                                                         (if (gx#stx-null?
                                                              _tl1120611496_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1120011480_)
                         (let ((_e1120711499_ (gx#stx-e _tl1120011480_)))
                           (let ((_hd1120811502_ (##car _e1120711499_))
                                 (_tl1120911504_ (##cdr _e1120711499_)))
                             (if (gx#stx-pair? _hd1120811502_)
                                 (let ((_e1121011507_
                                        (gx#stx-e _hd1120811502_)))
                                   (let ((_hd1121111510_ (##car _e1121011507_))
                                         (_tl1121211512_
                                          (##cdr _e1121011507_)))
                                     (if (gx#identifier? _hd1121111510_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1121111510_)
                                             (if (gx#stx-pair? _tl1121211512_)
                                                 (let ((_e1121311515_
                                                        (gx#stx-e
                                                         _tl1121211512_)))
                                                   (let ((_hd1121411518_
                                                          (##car _e1121311515_))
                                                         (_tl1121511520_
                                                          (##cdr _e1121311515_)))
                                                     (if (gx#stx-null?
                                                          _tl1121511520_)
                                                         (if (gx#stx-pair?
                                                              _tl1120911504_)
                                                             (let ((_e1121611523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1120911504_)))
                       (let ((_hd1121711526_ (##car _e1121611523_))
                             (_tl1121811528_ (##cdr _e1121611523_)))
                         (if (gx#stx-pair? _hd1121711526_)
                             (let ((_e1121911531_ (gx#stx-e _hd1121711526_)))
                               (let ((_hd1122011534_ (##car _e1121911531_))
                                     (_tl1122111536_ (##cdr _e1121911531_)))
                                 (if (gx#identifier? _hd1122011534_)
                                     (if (gx#stx-eq? '%#ref _hd1122011534_)
                                         (if (gx#stx-pair? _tl1122111536_)
                                             (let ((_e1122211539_
                                                    (gx#stx-e _tl1122111536_)))
                                               (let ((_hd1122311542_
                                                      (##car _e1122211539_))
                                                     (_tl1122411544_
                                                      (##cdr _e1122211539_)))
                                                 (if (gx#stx-null?
                                                      _tl1122411544_)
                                                     (if (gx#stx-pair?
                                                          _tl1121811528_)
                                                         (let ((_e1122511547_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1121811528_)))
                   (let ((_hd1122611550_ (##car _e1122511547_))
                         (_tl1122711552_ (##cdr _e1122511547_)))
                     (if (gx#stx-pair? _hd1122611550_)
                         (let ((_e1122811555_ (gx#stx-e _hd1122611550_)))
                           (let ((_hd1122911558_ (##car _e1122811555_))
                                 (_tl1123011560_ (##cdr _e1122811555_)))
                             (if (gx#identifier? _hd1122911558_)
                                 (if (gx#stx-eq? '%#quote _hd1122911558_)
                                     (if (gx#stx-pair? _tl1123011560_)
                                         (let ((_e1123111563_
                                                (gx#stx-e _tl1123011560_)))
                                           (let ((_hd1123211566_
                                                  (##car _e1123111563_))
                                                 (_tl1123311568_
                                                  (##cdr _e1123111563_)))
                                             (if (gx#stx-null? _tl1123311568_)
                                                 (if (gx#stx-null?
                                                      _tl1122711552_)
                                                     ((lambda (_L11571_
                                                               _L11572_
                                                               _L11573_
                                                               _L11574_
                                                               _L11575_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11575_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#generate-runtime-binding-id _L11574_)
                                (cons (gx#stx-e _L11573_)
                                      (cons (gxc#generate-runtime-binding-id
                                             _L11572_)
                                            (cons (gx#stx-e _L11571_) '())))))
                    (_g1117711438_ _g1118011441_)))
              _hd1123211566_
              _hd1122311542_
              _hd1121411518_
              _hd1120511494_
              _hd1119611470_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1117711438_
                                                      _g1118011441_))
                                                 (_g1117711438_
                                                  _g1118011441_))))
                                         (_g1117711438_ _g1118011441_))
                                     (_g1117711438_ _g1118011441_))
                                 (_g1117711438_ _g1118011441_))))
                         (_g1117711438_ _g1118011441_))))
                 (_g1117711438_ _g1118011441_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1117711438_
                                                      _g1118011441_))))
                                             (_g1117711438_ _g1118011441_))
                                         (_g1117711438_ _g1118011441_))
                                     (_g1117711438_ _g1118011441_))))
                             (_g1117711438_ _g1118011441_))))
                     (_g1117711438_ _g1118011441_))
                 (_g1117711438_ _g1118011441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1117711438_ _g1118011441_))
                                             (_g1117711438_ _g1118011441_))
                                         (_g1117711438_ _g1118011441_))))
                                 (_g1117711438_ _g1118011441_))))
                         (_g1117711438_ _g1118011441_))
                     (_g1117711438_ _g1118011441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1117711438_
                                                      _g1118011441_))
                                                 (_g1117711438_ _g1118011441_))
                                             (_g1117711438_ _g1118011441_))))
                                     (_g1117711438_ _g1118011441_))))
                             (_g1117711438_ _g1118011441_))
                         (_g1117711438_ _g1118011441_))))
                 (_g1117711438_ _g1118011441_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1117711438_
                                                      _g1118011441_))
                                                 (_g1117711438_
                                                  _g1118011441_))))
                                         (_g1117711438_ _g1118011441_))))
                                 (_g1117711438_ _g1118011441_))))
                         (_g1117711438_ _g1118011441_)))))
              (_g1117611618_ _stx11175_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self11151_)
      (let ((_self1115211158_ _self11151_))
        (let ((_E1115411162_
               (lambda () (error '"No clause matching" _self1115211158_))))
          (let ((_K1115511167_
                 (lambda (_alias-id11165_)
                   (cons '@alias (cons _alias-id11165_ '())))))
            (if (##structure-instance-of?
                 _self1115211158_
                 (##type-id gxc#!alias::t))
                (let ((_e1115611170_ (##vector-ref _self1115211158_ '1)))
                  (let ((_alias-id11173_ _e1115611170_))
                    (_K1115511167_ _alias-id11173_)))
                (_E1115411162_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self11095_)
      (let ((_self1109611107_ _self11095_))
        (let ((_E1109811111_
               (lambda () (error '"No clause matching" _self1109611107_))))
          (let ((_K1109911120_
                 (lambda (_plist11114_
                          _ctor11115_
                          _fields11116_
                          _super11117_
                          _type-id11118_)
                   (cons '@struct-type
                         (cons _type-id11118_
                               (cons _super11117_
                                     (cons _fields11116_
                                           (cons _ctor11115_
                                                 (cons _plist11114_
                                                       '())))))))))
            (if (##structure-instance-of?
                 _self1109611107_
                 (##type-id gxc#!struct-type::t))
                (let ((_e1110011123_ (##vector-ref _self1109611107_ '1)))
                  (let ((_type-id11126_ _e1110011123_))
                    (let ((_e1110111128_ (##vector-ref _self1109611107_ '2)))
                      (let ((_super11131_ _e1110111128_))
                        (let ((_e1110211133_
                               (##vector-ref _self1109611107_ '3)))
                          (let ((_fields11136_ _e1110211133_))
                            (let ((_e1110311138_
                                   (##vector-ref _self1109611107_ '4)))
                              (let ((_e1110411141_
                                     (##vector-ref _self1109611107_ '5)))
                                (let ((_ctor11144_ _e1110411141_))
                                  (let ((_e1110511146_
                                         (##vector-ref _self1109611107_ '6)))
                                    (let ((_plist11149_ _e1110511146_))
                                      (_K1109911120_
                                       _plist11149_
                                       _ctor11144_
                                       _fields11136_
                                       _super11131_
                                       _type-id11126_))))))))))))
                (_E1109811111_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self11071_)
      (let ((_self1107211078_ _self11071_))
        (let ((_E1107411082_
               (lambda () (error '"No clause matching" _self1107211078_))))
          (let ((_K1107511087_
                 (lambda (_struct-t11085_)
                   (cons '@struct-pred (cons _struct-t11085_ '())))))
            (if (##structure-instance-of?
                 _self1107211078_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1107611090_ (##vector-ref _self1107211078_ '1)))
                  (let ((_struct-t11093_ _e1107611090_))
                    (_K1107511087_ _struct-t11093_)))
                (_E1107411082_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self11047_)
      (let ((_self1104811054_ _self11047_))
        (let ((_E1105011058_
               (lambda () (error '"No clause matching" _self1104811054_))))
          (let ((_K1105111063_
                 (lambda (_struct-t11061_)
                   (cons '@struct-cons (cons _struct-t11061_ '())))))
            (if (##structure-instance-of?
                 _self1104811054_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1105211066_ (##vector-ref _self1104811054_ '1)))
                  (let ((_struct-t11069_ _e1105211066_))
                    (_K1105111063_ _struct-t11069_)))
                (_E1105011058_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self11009_)
      (let ((_self1101011018_ _self11009_))
        (let ((_E1101211022_
               (lambda () (error '"No clause matching" _self1101011018_))))
          (let ((_K1101311029_
                 (lambda (_unchecked?11025_ _off11026_ _struct-t11027_)
                   (cons '@struct-getf
                         (cons _struct-t11027_
                               (cons _off11026_
                                     (cons _unchecked?11025_ '())))))))
            (if (##structure-instance-of?
                 _self1101011018_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1101411032_ (##vector-ref _self1101011018_ '1)))
                  (let ((_struct-t11035_ _e1101411032_))
                    (let ((_e1101511037_ (##vector-ref _self1101011018_ '2)))
                      (let ((_off11040_ _e1101511037_))
                        (let ((_e1101611042_
                               (##vector-ref _self1101011018_ '3)))
                          (let ((_unchecked?11045_ _e1101611042_))
                            (_K1101311029_
                             _unchecked?11045_
                             _off11040_
                             _struct-t11035_)))))))
                (_E1101211022_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self10971_)
      (let ((_self1097210980_ _self10971_))
        (let ((_E1097410984_
               (lambda () (error '"No clause matching" _self1097210980_))))
          (let ((_K1097510991_
                 (lambda (_unchecked?10987_ _off10988_ _struct-t10989_)
                   (cons '@struct-setf
                         (cons _struct-t10989_
                               (cons _off10988_
                                     (cons _unchecked?10987_ '())))))))
            (if (##structure-instance-of?
                 _self1097210980_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1097610994_ (##vector-ref _self1097210980_ '1)))
                  (let ((_struct-t10997_ _e1097610994_))
                    (let ((_e1097710999_ (##vector-ref _self1097210980_ '2)))
                      (let ((_off11002_ _e1097710999_))
                        (let ((_e1097811004_
                               (##vector-ref _self1097210980_ '3)))
                          (let ((_unchecked?11007_ _e1097811004_))
                            (_K1097510991_
                             _unchecked?11007_
                             _off11002_
                             _struct-t10997_)))))))
                (_E1097410984_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self10919_)
      (let ((_self1092010930_ _self10919_))
        (let ((_E1092210934_
               (lambda () (error '"No clause matching" _self1092010930_))))
          (let ((_K1092310945_
                 (lambda (_typedecl10937_
                          _inline10938_
                          _dispatch10939_
                          _arity10940_)
                   (if _inline10938_
                       (let ((_$e10942_ _typedecl10937_))
                         (if _$e10942_
                             _$e10942_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity10940_
                                   (cons _dispatch10939_ '())))))))
            (if (##structure-instance-of?
                 _self1092010930_
                 (##type-id gxc#!lambda::t))
                (let ((_e1092410948_ (##vector-ref _self1092010930_ '1)))
                  (let ((_e1092510951_ (##vector-ref _self1092010930_ '2)))
                    (let ((_arity10954_ _e1092510951_))
                      (let ((_e1092610956_ (##vector-ref _self1092010930_ '3)))
                        (let ((_dispatch10959_ _e1092610956_))
                          (let ((_e1092710961_
                                 (##vector-ref _self1092010930_ '4)))
                            (let ((_inline10964_ _e1092710961_))
                              (let ((_e1092810966_
                                     (##vector-ref _self1092010930_ '5)))
                                (let ((_typedecl10969_ _e1092810966_))
                                  (_K1092310945_
                                   _typedecl10969_
                                   _inline10964_
                                   _dispatch10959_
                                   _arity10954_))))))))))
                (_E1092210934_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self10852_)
      (let ((_clause-e10854_
             (lambda (_clause10884_)
               (let ((_clause1088510893_ _clause10884_))
                 (let ((_E1088710897_
                        (lambda ()
                          (error '"No clause matching" _clause1088510893_))))
                   (let ((_K1088810903_
                          (lambda (_dispatch10900_ _arity10901_)
                            (cons _arity10901_ (cons _dispatch10900_ '())))))
                     (if (##structure-instance-of?
                          _clause1088510893_
                          (##type-id gxc#!lambda::t))
                         (let ((_e1088910906_
                                (##vector-ref _clause1088510893_ '1)))
                           (let ((_e1089010909_
                                  (##vector-ref _clause1088510893_ '2)))
                             (let ((_arity10912_ _e1089010909_))
                               (let ((_e1089110914_
                                      (##vector-ref _clause1088510893_ '3)))
                                 (let ((_dispatch10917_ _e1089110914_))
                                   (_K1088810903_
                                    _dispatch10917_
                                    _arity10912_))))))
                         (_E1088710897_))))))))
        (let ((_self1085510862_ _self10852_))
          (let ((_E1085710866_
                 (lambda () (error '"No clause matching" _self1085510862_))))
            (let ((_K1085810873_
                   (lambda (_clauses10869_)
                     (let ((_clauses10871_
                            (map _clause-e10854_ _clauses10869_)))
                       (cons '@case-lambda _clauses10871_)))))
              (if (##structure-instance-of?
                   _self1085510862_
                   (##type-id gxc#!case-lambda::t))
                  (let ((_e1085910876_ (##vector-ref _self1085510862_ '1)))
                    (let ((_e1086010879_ (##vector-ref _self1085510862_ '2)))
                      (let ((_clauses10882_ _e1086010879_))
                        (_K1085810873_ _clauses10882_))))
                  (_E1085710866_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx10850_) (gxc#generate-runtime-binding-id _stx10850_))))
