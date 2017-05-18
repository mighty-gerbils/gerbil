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
    (lambda _$args19206_
      (apply make-struct-instance gxc#optimizer-info::t _$args19206_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self19204_)
      (direct-struct-instance-init!
       _self19204_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj19218 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj19218) __obj19218))))))
  (define gxc#optimize!
    (lambda (_ctx19198_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx19198_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx19198_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code19201_
                  (gxc#optimize-source
                   (##structure-ref _ctx19198_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx19198_
              _code19201_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx19143_)
      (let ((_deps19145_
             (let ((_imports19189_
                    (##structure-ref _ctx19143_ '8 gx#module-context::t '#f)))
               (let ((_$e19191_
                      (gx#core-context-prelude__opt-lambda11021 _ctx19143_)))
                 (if _$e19191_
                     ((lambda (_g1919319195_)
                        (cons _g1919319195_ _imports19189_))
                      _$e19191_)
                     _imports19189_)))))
        ((letrec ((_lp19147_
                   (lambda (_rest19149_)
                     (let ((_rest1915019158_ _rest19149_))
                       (let ((_E1915319162_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1915019158_))))
                         (let ((_else1915219166_ (lambda () '#!void)))
                           (let ((_K1915419177_
                                  (lambda (_rest19169_ _hd19170_)
                                    (if (##structure-instance-of?
                                         _hd19170_
                                         'gx#module-context::t)
                                        (begin
                                          (if (table-ref
                                               (##structure-ref
                                                (gxc#current-compile-optimizer-info)
                                                '2
                                                gxc#optimizer-info::t
                                                '#f)
                                               (##structure-ref
                                                _hd19170_
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '#f)
                                              '#!void
                                              (begin
                                                (let ((_$e19172_
                                                       (gx#core-context-prelude__opt-lambda11021
                                                        _hd19170_)))
                                                  (if _$e19172_
                                                      ((lambda (_pre19175_)
                                                         (_lp19147_
                                                          (cons _pre19175_
                                                                (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd19170_
                         '8
                         gx#module-context::t
                         '#f))))
               _$e19172_)
              (_lp19147_
               (##structure-ref _hd19170_ '8 gx#module-context::t '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#optimizer-load-ssxi
                                                 _hd19170_)))
                                          (_lp19147_ _rest19169_))
                                        (if (##structure-instance-of?
                                             _hd19170_
                                             'gx#prelude-context::t)
                                            (begin
                                              (if (table-ref
                                                   (##structure-ref
                                                    (gxc#current-compile-optimizer-info)
                                                    '2
                                                    gxc#optimizer-info::t
                                                    '#f)
                                                   (##structure-ref
                                                    _hd19170_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   '#f)
                                                  '#!void
                                                  (begin
                                                    (_lp19147_
                                                     (##structure-ref
                                                      _hd19170_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f))
                                                    (gxc#optimizer-load-ssxi
                                                     _hd19170_)))
                                              (_lp19147_ _rest19169_))
                                            (if (##structure-direct-instance-of?
                                                 _hd19170_
                                                 'gx#module-import::t)
                                                (_lp19147_
                                                 (cons (##structure-ref
                                                        _hd19170_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       _rest19169_))
                                                (if (##structure-direct-instance-of?
                                                     _hd19170_
                                                     'gx#module-export::t)
                                                    (_lp19147_
                                                     (cons (##structure-ref
                                                            _hd19170_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)
                                                           _rest19169_))
                                                    (if (##structure-direct-instance-of?
                                                         _hd19170_
                                                         'gx#import-set::t)
                                                        (_lp19147_
                                                         (cons (##structure-ref
                                                                _hd19170_
                                                                '1
                                                                gx#import-set::t
                                                                '#f)
                                                               _rest19169_))
                                                        (error '"Unexpected module import"
                                                               _hd19170_)))))))))
                             (if (##pair? _rest1915019158_)
                                 (let ((_hd1915519180_
                                        (##car _rest1915019158_))
                                       (_tl1915619182_
                                        (##cdr _rest1915019158_)))
                                   (let ((_hd19185_ _hd1915519180_))
                                     (let ((_rest19187_ _tl1915619182_))
                                       (_K1915419177_ _rest19187_ _hd19185_))))
                                 (_else1915219166_)))))))))
           _lp19147_)
         _deps19145_))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx19123_)
      (if (if (##structure-instance-of? _ctx19123_ 'gx#module-context::t)
              (list? (##structure-ref _ctx19123_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht19125_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id19127_
                   (##structure-ref _ctx19123_ '1 gx#expander-context::t '#f)))
              (let ((_mod19129_ (table-ref _ht19125_ _id19127_ '#f)))
                (let ()
                  (let ((_$e19132_ _mod19129_))
                    (if _$e19132_
                        _$e19132_
                        (let ((_mod19135_
                               (gxc#optimizer-import-ssxi _ctx19123_)))
                          (let ((_val19140_
                                 (let ((_$e19137_ _mod19135_))
                                   (if _$e19137_ _$e19137_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht19125_ _id19127_ _val19140_)
                                _val19140_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx19100_)
      (let ((_catch-e19102_
             (lambda (_exn19121_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx19100_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn19121_))
                     '#!void)
                 '#f))))
        (let ((_import-e19103_
               (lambda ()
                 (let ((_str-id19106_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx19100_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path19114_
                          (let ((_odir1910719109_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1910719109_
                                (let ((_odir19112_ _odir1910719109_))
                                  (path-expand
                                   (string-append _str-id19106_ '".ss")
                                   _odir19112_))
                                '#f))))
                     (let ((_library-path19116_
                            (string->symbol
                             (string-append '":" _str-id19106_))))
                       (let ((_ssxi-path19118_
                              (if (if _artefact-path19114_
                                      (file-exists? _artefact-path19114_)
                                      '#f)
                                  _artefact-path19114_
                                  _library-path19116_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path19118_)
                             (gx#import-module__opt-lambda11056
                              _ssxi-path19118_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx19100_ '1 gx#expander-context::t '#f)
              (with-catch _catch-e19102_ _import-e19103_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args19097_
      (apply make-struct-instance gxc#!type::t _$args19097_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args19094_
      (apply make-struct-instance gxc#!alias::t _$args19094_)))
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
    (lambda _$args19091_
      (apply make-struct-instance gxc#!struct-type::t _$args19091_)))
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
    (lambda _$args19088_
      (apply make-struct-instance gxc#!procedure::t _$args19088_)))
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
    (lambda _$args19085_
      (apply make-struct-instance gxc#!struct-pred::t _$args19085_)))
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
    (lambda _$args19082_
      (apply make-struct-instance gxc#!struct-cons::t _$args19082_)))
  (define gxc#!struct-getf::t
    (make-struct-type
     'gxc#!struct-getf::t
     gxc#!procedure::t
     '1
     '!struct-getf
     '()
     '#f))
  (define gxc#!struct-getf? (make-struct-predicate gxc#!struct-getf::t))
  (define gxc#make-!struct-getf
    (lambda _$args19079_
      (apply make-struct-instance gxc#!struct-getf::t _$args19079_)))
  (define gxc#!struct-getf-off
    (make-struct-field-accessor gxc#!struct-getf::t '0))
  (define gxc#!struct-getf-off-set!
    (make-struct-field-mutator gxc#!struct-getf::t '0))
  (define gxc#!struct-setf::t
    (make-struct-type
     'gxc#!struct-setf::t
     gxc#!procedure::t
     '1
     '!struct-setf
     '()
     '#f))
  (define gxc#!struct-setf? (make-struct-predicate gxc#!struct-setf::t))
  (define gxc#make-!struct-setf
    (lambda _$args19076_
      (apply make-struct-instance gxc#!struct-setf::t _$args19076_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
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
    (lambda _$args19073_
      (apply make-struct-instance gxc#!lambda::t _$args19073_)))
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
    (lambda _$args19070_
      (apply make-struct-instance gxc#!case-lambda::t _$args19070_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self19062_
             _id19063_
             _super19064_
             _fields19065_
             _xfields19066_
             _ctor19067_
             _plist19068_)
      (direct-struct-instance-init!
       _self19062_
       _id19063_
       _super19064_
       _fields19065_
       _xfields19066_
       _ctor19067_
       _plist19068_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda19026
      (lambda (_self19028_
               _id19029_
               _arity19030_
               _dispatch19031_
               _inline19032_
               _typedecl19033_)
        (direct-struct-instance-init!
         _self19028_
         _id19029_
         _arity19030_
         _dispatch19031_
         _inline19032_
         _typedecl19033_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self19038_ _id19039_ _arity19040_ _dispatch19041_)
          (let ((_inline19043_ '#f))
            (let ((_typedecl19045_ '#f))
              (direct-struct-instance-init!
               _self19038_
               _id19039_
               _arity19040_
               _dispatch19041_
               _inline19043_
               _typedecl19045_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self19047_
                 _id19048_
                 _arity19049_
                 _dispatch19050_
                 _inline19051_)
          (let ((_typedecl19053_ '#f))
            (direct-struct-instance-init!
             _self19047_
             _id19048_
             _arity19049_
             _dispatch19050_
             _inline19051_
             _typedecl19053_))))
      (define gxc#!lambda:::init!
        (lambda _g19226_
          (let ((_g19225_ (length _g19226_)))
            (cond ((fx= _g19225_ 4) (apply gxc#!lambda:::init!__0 _g19226_))
                  ((fx= _g19225_ 5) (apply gxc#!lambda:::init!__1 _g19226_))
                  ((fx= _g19225_ 6)
                   (apply direct-struct-instance-init! _g19226_))
                  (else (error "No clause matching arguments" _g19226_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type19020_)
      (let ((_$e19022_
             (##structure-ref _type19020_ '7 gxc#!struct-type::t '#f)))
        (if _$e19022_
            (values _$e19022_)
            (let ((_vtab19025_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type19020_
                 _vtab19025_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab19025_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type19011_ _method19012_)
      (let ((_vtab1901319015_
             (##structure-ref _type19011_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1901319015_
            (let ((_vtab19018_ _vtab1901319015_))
              (table-ref _vtab19018_ _method19012_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda18993
      (lambda (_sym18995_ _type18996_ _local?18997_)
        (begin
          (if (##structure-instance-of? _type18996_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym18995_
                     _type18996_))
          (gxc#verbose
           '"declare-type "
           _sym18995_
           '" "
           (##vector->list _type18996_))
          (table-set!
           (if _local?18997_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym18995_
           _type18996_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym19002_ _type19003_)
          (let ((_local?19005_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda18993
             _sym19002_
             _type19003_
             _local?19005_))))
      (define gxc#optimizer-declare-type!
        (lambda _g19228_
          (let ((_g19227_ (length _g19228_)))
            (cond ((fx= _g19227_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g19228_))
                  ((fx= _g19227_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda18993
                          _g19228_))
                  (else (error "No clause matching arguments" _g19228_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda18969
      (lambda (_type-t18971_ _method18972_ _sym18973_ _rebind?18974_)
        (let ((_type18976_ (gxc#optimizer-resolve-type _type-t18971_)))
          (if (##structure-instance-of? _type18976_ 'gxc#!struct-type::t)
              (let ((_vtab18978_ (gxc#!struct-type-vtab _type18976_)))
                (if _rebind?18974_
                    (if (hash-key? _vtab18978_ _method18972_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t18971_
                         '" "
                         _method18972_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t18971_
                         '" "
                         _method18972_))
                    (if (hash-key? _vtab18978_ _method18972_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t18971_
                           '" "
                           _method18972_
                           '" => "
                           _sym18973_)
                          (table-set! _vtab18978_ _method18972_ _sym18973_)))))
              (if (not _type18976_)
                  (gxc#verbose '"declare-method: unknown type " _type-t18971_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t18971_
                         _type18976_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t18983_ _method18984_ _sym18985_)
          (let ((_rebind?18987_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda18969
             _type-t18983_
             _method18984_
             _sym18985_
             _rebind?18987_))))
      (define gxc#optimizer-declare-method!
        (lambda _g19230_
          (let ((_g19229_ (length _g19230_)))
            (cond ((fx= _g19229_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g19230_))
                  ((fx= _g19229_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda18969
                          _g19230_))
                  (else (error "No clause matching arguments" _g19230_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym18959_)
      (let ((_$e18967_
             (let ((_ht1896018962_ (gxc#current-compile-local-type)))
               (if _ht1896018962_
                   (let ((_ht18965_ _ht1896018962_))
                     (table-ref _ht18965_ _sym18959_ '#f))
                   '#f))))
        (if _$e18967_
            _$e18967_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym18959_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym18951_)
      (let ((_type1895218954_ (gxc#optimizer-lookup-type _sym18951_)))
        (if _type1895218954_
            (let ((_type18957_ _type1895218954_))
              (if (##structure-instance-of? _type18957_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type18957_ '1 gxc#!type::t '#f))
                  _type18957_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t18946_ _method18947_)
      (let ((_type18949_ (gxc#optimizer-resolve-type _type-t18946_)))
        (if (##structure-instance-of? _type18949_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type18949_ _method18947_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx18942_)
      (begin
        (gxc#apply-collect-mutators _stx18942_)
        (let ((_stx18944_ (gxc#apply-lift-top-lambdas _stx18942_)))
          (begin
            (gxc#apply-collect-type-info _stx18944_)
            (gxc#apply-optimize-call _stx18944_))))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl18939_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18939_ '%#lambda false)
           (table-set! _tbl18939_ '%#case-lambda false)
           (table-set! _tbl18939_ '%#let-values false)
           (table-set! _tbl18939_ '%#letrec-values false)
           (table-set! _tbl18939_ '%#letrec*-values false)
           (table-set! _tbl18939_ '%#quote false)
           (table-set! _tbl18939_ '%#quote-syntax false)
           (table-set! _tbl18939_ '%#call false)
           (table-set! _tbl18939_ '%#if false)
           (table-set! _tbl18939_ '%#ref false)
           (table-set! _tbl18939_ '%#set! false)
           (table-set! _tbl18939_ '%#struct-instance? false)
           (table-set! _tbl18939_ '%#struct-direct-instance? false)
           (table-set! _tbl18939_ '%#struct-ref false)
           (table-set! _tbl18939_ '%#struct-set! false)
           _tbl18939_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl18935_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18935_ '%#begin false)
           (table-set! _tbl18935_ '%#begin-syntax false)
           (table-set! _tbl18935_ '%#begin-foreign false)
           (table-set! _tbl18935_ '%#module false)
           (table-set! _tbl18935_ '%#import false)
           (table-set! _tbl18935_ '%#export false)
           (table-set! _tbl18935_ '%#provide false)
           (table-set! _tbl18935_ '%#extern false)
           (table-set! _tbl18935_ '%#define-values false)
           (table-set! _tbl18935_ '%#define-syntax false)
           (table-set! _tbl18935_ '%#define-alias false)
           (table-set! _tbl18935_ '%#declare false)
           _tbl18935_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl18931_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18931_ (force gxc#&false-special-form))
           (hash-copy! _tbl18931_ (force gxc#&false-expression))
           _tbl18931_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl18927_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18927_ '%#lambda gxc#xform-identity)
           (table-set! _tbl18927_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl18927_ '%#let-values gxc#xform-identity)
           (table-set! _tbl18927_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl18927_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl18927_ '%#quote gxc#xform-identity)
           (table-set! _tbl18927_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18927_ '%#call gxc#xform-identity)
           (table-set! _tbl18927_ '%#if gxc#xform-identity)
           (table-set! _tbl18927_ '%#ref gxc#xform-identity)
           (table-set! _tbl18927_ '%#set! gxc#xform-identity)
           (table-set! _tbl18927_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl18927_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl18927_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl18927_ '%#struct-set! gxc#xform-identity)
           _tbl18927_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl18923_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18923_ '%#begin gxc#xform-identity)
           (table-set! _tbl18923_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl18923_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl18923_ '%#module gxc#xform-identity)
           (table-set! _tbl18923_ '%#import gxc#xform-identity)
           (table-set! _tbl18923_ '%#export gxc#xform-identity)
           (table-set! _tbl18923_ '%#provide gxc#xform-identity)
           (table-set! _tbl18923_ '%#extern gxc#xform-identity)
           (table-set! _tbl18923_ '%#define-values gxc#xform-identity)
           (table-set! _tbl18923_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl18923_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl18923_ '%#declare gxc#xform-identity)
           _tbl18923_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl18919_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18919_ (force gxc#&identity-special-form))
           (hash-copy! _tbl18919_ (force gxc#&identity-expression))
           _tbl18919_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl18915_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18915_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl18915_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl18915_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl18915_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl18915_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl18915_ '%#quote gxc#xform-identity)
           (table-set! _tbl18915_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18915_ '%#call gxc#xform-operands)
           (table-set! _tbl18915_ '%#if gxc#xform-operands)
           (table-set! _tbl18915_ '%#ref gxc#xform-identity)
           (table-set! _tbl18915_ '%#set! gxc#xform-setq%)
           (table-set! _tbl18915_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl18915_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl18915_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl18915_ '%#struct-set! gxc#xform-operands)
           _tbl18915_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl18911_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18911_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl18911_ (force gxc#&identity))
           (table-set! _tbl18911_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18911_ '%#module gxc#xform-module%)
           (table-set! _tbl18911_ '%#define-values gxc#xform-define-values%)
           _tbl18911_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl18907_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18907_ (force gxc#&void))
           (table-set! _tbl18907_ '%#begin gxc#collect-begin%)
           (table-set! _tbl18907_ '%#module gxc#collect-module%)
           (table-set! _tbl18907_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl18907_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl18907_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl18907_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl18907_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl18907_ '%#call gxc#collect-operands)
           (table-set! _tbl18907_ '%#if gxc#collect-operands)
           (table-set! _tbl18907_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl18907_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl18907_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl18907_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl18907_ '%#struct-set! gxc#collect-operands)
           _tbl18907_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx18900_ . _args18902_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18900_ _args18902_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl18897_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18897_ (force gxc#&basic-xform))
           (table-set!
            _tbl18897_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl18897_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl18897_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl18897_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl18897_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx18890_ . _args18892_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18890_ _args18892_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl18887_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18887_ (force gxc#&basic-xform-expression))
           (table-set! _tbl18887_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18887_ '%#ref gxc#expression-subst-ref%)
           _tbl18887_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx18880_ . _args18882_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18880_ _args18882_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl18877_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18877_ (force gxc#&void))
           (table-set! _tbl18877_ '%#begin gxc#collect-begin%)
           (table-set! _tbl18877_ '%#module gxc#collect-module%)
           (table-set!
            _tbl18877_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl18877_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl18877_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl18877_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl18877_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl18877_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl18877_ '%#call gxc#collect-type-call%)
           (table-set! _tbl18877_ '%#if gxc#collect-operands)
           (table-set! _tbl18877_ '%#set! gxc#collect-body-setq%)
           _tbl18877_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx18870_ . _args18872_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18870_ _args18872_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl18867_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18867_ (force gxc#&false))
           (table-set! _tbl18867_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl18867_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl18867_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl18867_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl18867_ '%#ref gxc#basic-expression-type-ref%)
           _tbl18867_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx18860_ . _args18862_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18860_ _args18862_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl18857_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18857_ (force gxc#&basic-xform))
           (table-set! _tbl18857_ '%#call gxc#optimize-call%)
           _tbl18857_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx18850_ . _args18852_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18850_ _args18852_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl18847_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18847_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl18847_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl18847_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl18847_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl18847_ '%#call gxc#generate-ssxi-call%)
           _tbl18847_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx18840_ . _args18842_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18840_ _args18842_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx18837_ . _args18838_) _stx18837_))
  (define gxc#xform-wrap-source
    (lambda (_stx18834_ _src-stx18835_)
      (gx#stx-wrap-source _stx18834_ (gx#stx-source _src-stx18835_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args18828_)
      (lambda (_g1882918831_)
        (apply gxc#compile-e _g1882918831_ _args18828_))))
  (define gxc#xform-begin%
    (lambda (_stx18787_ . _args18788_)
      (let ((_g1879018800_
             (lambda (_g1879118797_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1879118797_))))
        (let ((_g1878918825_
               (lambda (_g1879118803_)
                 (if (gx#stx-pair? _g1879118803_)
                     (let ((_e1879318805_ (gx#stx-e _g1879118803_)))
                       (let ((_hd1879418808_ (##car _e1879318805_))
                             (_tl1879518810_ (##cdr _e1879318805_)))
                         ((lambda (_L18813_)
                            (let ((_forms18823_
                                   (map (gxc#xform-apply-compile-e _args18788_)
                                        _L18813_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms18823_)
                               _stx18787_)))
                          _tl1879518810_)))
                     (_g1879018800_ _g1879118803_)))))
          (_g1878918825_ _stx18787_)))))
  (define gxc#xform-module%
    (lambda (_stx18724_ . _args18725_)
      (let ((_g1872718741_
             (lambda (_g1872818738_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1872818738_))))
        (let ((_g1872618784_
               (lambda (_g1872818744_)
                 (if (gx#stx-pair? _g1872818744_)
                     (let ((_e1873118746_ (gx#stx-e _g1872818744_)))
                       (let ((_hd1873218749_ (##car _e1873118746_))
                             (_tl1873318751_ (##cdr _e1873118746_)))
                         (if (gx#stx-pair? _tl1873318751_)
                             (let ((_e1873418754_ (gx#stx-e _tl1873318751_)))
                               (let ((_hd1873518757_ (##car _e1873418754_))
                                     (_tl1873618759_ (##cdr _e1873418754_)))
                                 ((lambda (_L18762_ _L18763_)
                                    (let ((_ctx18776_
                                           (gx#syntax-local-e__0 _L18763_)))
                                      (let ((_code18778_
                                             (##structure-ref
                                              _ctx18776_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code18781_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code18778_
                                                         _args18725_))
                                                gx#current-expander-context
                                                _ctx18776_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx18776_
                                               _code18781_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L18763_
                                                           (cons _code18781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18724_)))))))
                                  _tl1873618759_
                                  _hd1873518757_)))
                             (_g1872718741_ _g1872818744_))))
                     (_g1872718741_ _g1872818744_)))))
          (_g1872618784_ _stx18724_)))))
  (define gxc#xform-define-values%
    (lambda (_stx18654_ . _args18655_)
      (let ((_g1865718674_
             (lambda (_g1865818671_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1865818671_))))
        (let ((_g1865618721_
               (lambda (_g1865818677_)
                 (if (gx#stx-pair? _g1865818677_)
                     (let ((_e1866118679_ (gx#stx-e _g1865818677_)))
                       (let ((_hd1866218682_ (##car _e1866118679_))
                             (_tl1866318684_ (##cdr _e1866118679_)))
                         (if (gx#stx-pair? _tl1866318684_)
                             (let ((_e1866418687_ (gx#stx-e _tl1866318684_)))
                               (let ((_hd1866518690_ (##car _e1866418687_))
                                     (_tl1866618692_ (##cdr _e1866418687_)))
                                 (if (gx#stx-pair? _tl1866618692_)
                                     (let ((_e1866718695_
                                            (gx#stx-e _tl1866618692_)))
                                       (let ((_hd1866818698_
                                              (##car _e1866718695_))
                                             (_tl1866918700_
                                              (##cdr _e1866718695_)))
                                         (if (gx#stx-null? _tl1866918700_)
                                             ((lambda (_L18703_ _L18704_)
                                                (let ((_expr18719_
                                                       (apply gxc#compile-e
                                                              _L18703_
                                                              _args18655_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L18704_
                                                               (cons _expr18719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18654_)))
                                              _hd1866818698_
                                              _hd1866518690_)
                                             (_g1865718674_ _g1865818677_))))
                                     (_g1865718674_ _g1865818677_))))
                             (_g1865718674_ _g1865818677_))))
                     (_g1865718674_ _g1865818677_)))))
          (_g1865618721_ _stx18654_)))))
  (define gxc#xform-lambda%
    (lambda (_stx18597_ . _args18598_)
      (let ((_g1860018614_
             (lambda (_g1860118611_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1860118611_))))
        (let ((_g1859918651_
               (lambda (_g1860118617_)
                 (if (gx#stx-pair? _g1860118617_)
                     (let ((_e1860418619_ (gx#stx-e _g1860118617_)))
                       (let ((_hd1860518622_ (##car _e1860418619_))
                             (_tl1860618624_ (##cdr _e1860418619_)))
                         (if (gx#stx-pair? _tl1860618624_)
                             (let ((_e1860718627_ (gx#stx-e _tl1860618624_)))
                               (let ((_hd1860818630_ (##car _e1860718627_))
                                     (_tl1860918632_ (##cdr _e1860718627_)))
                                 ((lambda (_L18635_ _L18636_)
                                    (let ((_body18649_
                                           (map (gxc#xform-apply-compile-e
                                                 _args18598_)
                                                _L18635_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L18636_ _body18649_))
                                       _stx18597_)))
                                  _tl1860918632_
                                  _hd1860818630_)))
                             (_g1860018614_ _g1860118617_))))
                     (_g1860018614_ _g1860118617_)))))
          (_g1859918651_ _stx18597_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx18510_ . _args18511_)
      (let ((_clause-e18513_
             (lambda (_clause18554_)
               (let ((_g1855618567_
                      (lambda (_g1855718564_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1855718564_))))
                 (let ((_g1855518594_
                        (lambda (_g1855718570_)
                          (if (gx#stx-pair? _g1855718570_)
                              (let ((_e1856018572_ (gx#stx-e _g1855718570_)))
                                (let ((_hd1856118575_ (##car _e1856018572_))
                                      (_tl1856218577_ (##cdr _e1856018572_)))
                                  ((lambda (_L18580_ _L18581_)
                                     (let ((_body18592_
                                            (map (gxc#xform-apply-compile-e
                                                  _args18511_)
                                                 _L18580_)))
                                       (cons _L18581_ _body18592_)))
                                   _tl1856218577_
                                   _hd1856118575_)))
                              (_g1855618567_ _g1855718570_)))))
                   (_g1855518594_ _clause18554_))))))
        (let ((_g1851518525_
               (lambda (_g1851618522_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1851618522_))))
          (let ((_g1851418551_
                 (lambda (_g1851618528_)
                   (if (gx#stx-pair? _g1851618528_)
                       (let ((_e1851818530_ (gx#stx-e _g1851618528_)))
                         (let ((_hd1851918533_ (##car _e1851818530_))
                               (_tl1852018535_ (##cdr _e1851818530_)))
                           ((lambda (_L18538_)
                              (let ((_clauses18549_
                                     (map _clause-e18513_ _L18538_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses18549_)
                                 _stx18510_)))
                            _tl1852018535_)))
                       (_g1851518525_ _g1851618528_)))))
            (_g1851418551_ _stx18510_))))))
  (define gxc#xform-let-values%
    (lambda (_stx18304_ . _args18305_)
      (let ((_g1830718340_
             (lambda (_g1830818337_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1830818337_))))
        (let ((_g1830618507_
               (lambda (_g1830818343_)
                 (if (gx#stx-pair? _g1830818343_)
                     (let ((_e1831318345_ (gx#stx-e _g1830818343_)))
                       (let ((_hd1831418348_ (##car _e1831318345_))
                             (_tl1831518350_ (##cdr _e1831318345_)))
                         (if (gx#stx-pair? _tl1831518350_)
                             (let ((_e1831618353_ (gx#stx-e _tl1831518350_)))
                               (let ((_hd1831718356_ (##car _e1831618353_))
                                     (_tl1831818358_ (##cdr _e1831618353_)))
                                 (if (gx#stx-pair/null? _hd1831718356_)
                                     (if (fx>= (gx#stx-length _hd1831718356_)
                                               '0)
                                         (let ((_g19231_
                                                (gx#syntax-split-splice
                                                 _hd1831718356_
                                                 '0)))
                                           (begin
                                             (let ((_g19232_
                                                    (values-count _g19231_)))
                                               (if (not (fx= _g19232_ 2))
                                                   (error "Context expects 2 values"
                                                          _g19232_)))
                                             (let ((_target1831918361_
                                                    (values-ref _g19231_ 0))
                                                   (_tl1832118363_
                                                    (values-ref _g19231_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1832118363_)
                                                   (letrec ((_loop1832218366_
                                                             (lambda (_hd1832018369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1832618371_
                              _hd1832718373_)
                       (if (gx#stx-pair? _hd1832018369_)
                           (let ((_e1832318376_ (gx#stx-e _hd1832018369_)))
                             (let ((_lp-hd1832418379_ (##car _e1832318376_))
                                   (_lp-tl1832518381_ (##cdr _e1832318376_)))
                               (if (gx#stx-pair? _lp-hd1832418379_)
                                   (let ((_e1833018384_
                                          (gx#stx-e _lp-hd1832418379_)))
                                     (let ((_hd1833118387_
                                            (##car _e1833018384_))
                                           (_tl1833218389_
                                            (##cdr _e1833018384_)))
                                       (if (gx#stx-pair? _tl1833218389_)
                                           (let ((_e1833318392_
                                                  (gx#stx-e _tl1833218389_)))
                                             (let ((_hd1833418395_
                                                    (##car _e1833318392_))
                                                   (_tl1833518397_
                                                    (##cdr _e1833318392_)))
                                               (if (gx#stx-null?
                                                    _tl1833518397_)
                                                   (_loop1832218366_
                                                    _lp-tl1832518381_
                                                    (cons _hd1833418395_
                                                          _expr1832618371_)
                                                    (cons _hd1833118387_
                                                          _hd1832718373_))
                                                   (_g1830718340_
                                                    _g1830818343_))))
                                           (_g1830718340_ _g1830818343_))))
                                   (_g1830718340_ _g1830818343_))))
                           (let ((_expr1832818400_ (reverse _expr1832618371_))
                                 (_hd1832918402_ (reverse _hd1832718373_)))
                             ((lambda (_L18405_ _L18406_ _L18407_ _L18408_)
                                (let ((_g1842718443_
                                       (lambda (_g1842818440_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1842818440_))))
                                  (let ((_g1842618497_
                                         (lambda (_g1842818446_)
                                           (if (gx#stx-pair/null?
                                                _g1842818446_)
                                               (if (fx>= (gx#stx-length
                                                          _g1842818446_)
                                                         '0)
                                                   (let ((_g19233_
                                                          (gx#syntax-split-splice
                                                           _g1842818446_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19234_
                                                              (values-count
                                                               _g19233_)))
                                                         (if (not (fx= _g19234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19234_)))
               (let ((_target1843018448_ (values-ref _g19233_ 0))
                     (_tl1843218450_ (values-ref _g19233_ 1)))
                 (if (gx#stx-null? _tl1843218450_)
                     (letrec ((_loop1843318453_
                               (lambda (_hd1843118456_ _expr1843718458_)
                                 (if (gx#stx-pair? _hd1843118456_)
                                     (let ((_e1843418461_
                                            (gx#syntax-e _hd1843118456_)))
                                       (let ((_lp-hd1843518464_
                                              (##car _e1843418461_))
                                             (_lp-tl1843618466_
                                              (##cdr _e1843418461_)))
                                         (_loop1843318453_
                                          _lp-tl1843618466_
                                          (cons _lp-hd1843518464_
                                                _expr1843718458_))))
                                     (let ((_expr1843818469_
                                            (reverse _expr1843718458_)))
                                       ((lambda (_L18472_)
                                          (let ()
                                            (let ((_body18485_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args18305_)
                                                        _L18405_)))
                                              (gxc#xform-wrap-source
                                               (cons _L18408_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L18472_
                                                              _L18407_)
                                                             (foldr (lambda (_g1848618490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1848718492_
                                     _g1848818494_)
                              (cons (cons _g1848718492_
                                          (cons _g1848618490_ '()))
                                    _g1848818494_))
                            '()
                            _L18472_
                            _L18407_))
                   _body18485_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18304_))))
                                        _expr1843818469_))))))
                       (_loop1843318453_ _target1843018448_ '()))
                     (_g1842718443_ _g1842818446_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1842718443_
                                                    _g1842818446_))
                                               (_g1842718443_
                                                _g1842818446_)))))
                                    (_g1842618497_
                                     (map (gxc#xform-apply-compile-e
                                           _args18305_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1849918502_
                                                             _g1850018504_)
                                                      (cons _g1849918502_
                                                            _g1850018504_))
                                                    '()
                                                    _L18406_)))))))
                              _tl1831818358_
                              _expr1832818400_
                              _hd1832918402_
                              _hd1831418348_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1832218366_
                                                      _target1831918361_
                                                      '()
                                                      '()))
                                                   (_g1830718340_
                                                    _g1830818343_)))))
                                         (_g1830718340_ _g1830818343_))
                                     (_g1830718340_ _g1830818343_))))
                             (_g1830718340_ _g1830818343_))))
                     (_g1830718340_ _g1830818343_)))))
          (_g1830618507_ _stx18304_)))))
  (define gxc#xform-operands
    (lambda (_stx18260_ . _args18261_)
      (let ((_g1826318274_
             (lambda (_g1826418271_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1826418271_))))
        (let ((_g1826218301_
               (lambda (_g1826418277_)
                 (if (gx#stx-pair? _g1826418277_)
                     (let ((_e1826718279_ (gx#stx-e _g1826418277_)))
                       (let ((_hd1826818282_ (##car _e1826718279_))
                             (_tl1826918284_ (##cdr _e1826718279_)))
                         ((lambda (_L18287_ _L18288_)
                            (let ((_rands18299_
                                   (map (gxc#xform-apply-compile-e _args18261_)
                                        _L18287_)))
                              (gxc#xform-wrap-source
                               (cons _L18288_ _rands18299_)
                               _stx18260_)))
                          _tl1826918284_
                          _hd1826818282_)))
                     (_g1826318274_ _g1826418277_)))))
          (_g1826218301_ _stx18260_)))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx18190_ . _args18191_)
      (let ((_g1819318210_
             (lambda (_g1819418207_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1819418207_))))
        (let ((_g1819218257_
               (lambda (_g1819418213_)
                 (if (gx#stx-pair? _g1819418213_)
                     (let ((_e1819718215_ (gx#stx-e _g1819418213_)))
                       (let ((_hd1819818218_ (##car _e1819718215_))
                             (_tl1819918220_ (##cdr _e1819718215_)))
                         (if (gx#stx-pair? _tl1819918220_)
                             (let ((_e1820018223_ (gx#stx-e _tl1819918220_)))
                               (let ((_hd1820118226_ (##car _e1820018223_))
                                     (_tl1820218228_ (##cdr _e1820018223_)))
                                 (if (gx#stx-pair? _tl1820218228_)
                                     (let ((_e1820318231_
                                            (gx#stx-e _tl1820218228_)))
                                       (let ((_hd1820418234_
                                              (##car _e1820318231_))
                                             (_tl1820518236_
                                              (##cdr _e1820318231_)))
                                         (if (gx#stx-null? _tl1820518236_)
                                             ((lambda (_L18239_ _L18240_)
                                                (let ((_expr18255_
                                                       (apply gxc#compile-e
                                                              _L18239_
                                                              _args18191_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L18240_
                                                               (cons _expr18255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18190_)))
                                              _hd1820418234_
                                              _hd1820118226_)
                                             (_g1819318210_ _g1819418213_))))
                                     (_g1819318210_ _g1819418213_))))
                             (_g1819318210_ _g1819418213_))))
                     (_g1819318210_ _g1819418213_)))))
          (_g1819218257_ _stx18190_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx18121_)
      (let ((_g1812318140_
             (lambda (_g1812418137_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1812418137_))))
        (let ((_g1812218187_
               (lambda (_g1812418143_)
                 (if (gx#stx-pair? _g1812418143_)
                     (let ((_e1812718145_ (gx#stx-e _g1812418143_)))
                       (let ((_hd1812818148_ (##car _e1812718145_))
                             (_tl1812918150_ (##cdr _e1812718145_)))
                         (if (gx#stx-pair? _tl1812918150_)
                             (let ((_e1813018153_ (gx#stx-e _tl1812918150_)))
                               (let ((_hd1813118156_ (##car _e1813018153_))
                                     (_tl1813218158_ (##cdr _e1813018153_)))
                                 (if (gx#stx-pair? _tl1813218158_)
                                     (let ((_e1813318161_
                                            (gx#stx-e _tl1813218158_)))
                                       (let ((_hd1813418164_
                                              (##car _e1813318161_))
                                             (_tl1813518166_
                                              (##cdr _e1813318161_)))
                                         (if (gx#stx-null? _tl1813518166_)
                                             ((lambda (_L18169_ _L18170_)
                                                (let ((_sym18185_
                                                       (gxc#generate-runtime-binding-id
                                                        _L18170_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym18185_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym18185_
                                                     '#t)
                                                    (gxc#compile-e _L18169_))))
                                              _hd1813418164_
                                              _hd1813118156_)
                                             (_g1812318140_ _g1812418143_))))
                                     (_g1812318140_ _g1812418143_))))
                             (_g1812318140_ _g1812418143_))))
                     (_g1812318140_ _g1812418143_)))))
          (_g1812218187_ _stx18121_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form17355_)
      (let ((_g1736017517_
             (lambda (_g1736117514_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1736117514_))))
        (let ((_g1735917524_ (lambda (_g1736117520_) ((lambda () '#f)))))
          (let ((_g1735817664_
                 (lambda (_g1736117527_)
                   (if (gx#stx-pair? _g1736117527_)
                       (let ((_e1747717529_ (gx#stx-e _g1736117527_)))
                         (let ((_hd1747817532_ (##car _e1747717529_))
                               (_tl1747917534_ (##cdr _e1747717529_)))
                           (if (gx#stx-pair? _tl1747917534_)
                               (let ((_e1748017537_ (gx#stx-e _tl1747917534_)))
                                 (let ((_hd1748117540_ (##car _e1748017537_))
                                       (_tl1748217542_ (##cdr _e1748017537_)))
                                   (if (gx#stx-pair? _hd1748117540_)
                                       (let ((_e1748317545_
                                              (gx#stx-e _hd1748117540_)))
                                         (let ((_hd1748417548_
                                                (##car _e1748317545_))
                                               (_tl1748517550_
                                                (##cdr _e1748317545_)))
                                           (if (gx#identifier? _hd1748417548_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1748417548_)
                                                   (if (gx#stx-pair?
                                                        _tl1748517550_)
                                                       (let ((_e1748617553_
                                                              (gx#stx-e
                                                               _tl1748517550_)))
                                                         (let ((_hd1748717556_
                                                                (##car _e1748617553_))
                                                               (_tl1748817558_
                                                                (##cdr _e1748617553_)))
                                                           (if (gx#stx-pair?
                                                                _hd1748717556_)
                                                               (let ((_e1748917561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1748717556_)))
                         (let ((_hd1749017564_ (##car _e1748917561_))
                               (_tl1749117566_ (##cdr _e1748917561_)))
                           (if (gx#identifier? _hd1749017564_)
                               (if (gx#stx-eq? '%#ref _hd1749017564_)
                                   (if (gx#stx-pair? _tl1749117566_)
                                       (let ((_e1749217569_
                                              (gx#stx-e _tl1749117566_)))
                                         (let ((_hd1749317572_
                                                (##car _e1749217569_))
                                               (_tl1749417574_
                                                (##cdr _e1749217569_)))
                                           (if (gx#stx-null? _tl1749417574_)
                                               (if (gx#stx-pair?
                                                    _tl1748817558_)
                                                   (let ((_e1749517577_
                                                          (gx#stx-e
                                                           _tl1748817558_)))
                                                     (let ((_hd1749617580_
                                                            (##car _e1749517577_))
                                                           (_tl1749717582_
                                                            (##cdr _e1749517577_)))
                                                       (if (gx#stx-pair?
                                                            _hd1749617580_)
                                                           (let ((_e1749817585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1749617580_)))
                     (let ((_hd1749917588_ (##car _e1749817585_))
                           (_tl1750017590_ (##cdr _e1749817585_)))
                       (if (gx#identifier? _hd1749917588_)
                           (if (gx#stx-eq? '%#ref _hd1749917588_)
                               (if (gx#stx-pair? _tl1750017590_)
                                   (let ((_e1750117593_
                                          (gx#stx-e _tl1750017590_)))
                                     (let ((_hd1750217596_
                                            (##car _e1750117593_))
                                           (_tl1750317598_
                                            (##cdr _e1750117593_)))
                                       (if (gx#stx-null? _tl1750317598_)
                                           (if (gx#stx-pair? _tl1749717582_)
                                               (let ((_e1750417601_
                                                      (gx#stx-e
                                                       _tl1749717582_)))
                                                 (let ((_hd1750517604_
                                                        (##car _e1750417601_))
                                                       (_tl1750617606_
                                                        (##cdr _e1750417601_)))
                                                   (if (gx#stx-pair?
                                                        _hd1750517604_)
                                                       (let ((_e1750717609_
                                                              (gx#stx-e
                                                               _hd1750517604_)))
                                                         (let ((_hd1750817612_
                                                                (##car _e1750717609_))
                                                               (_tl1750917614_
                                                                (##cdr _e1750717609_)))
                                                           (if (gx#identifier?
                                                                _hd1750817612_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1750817612_)
                           (if (gx#stx-pair? _tl1750917614_)
                               (let ((_e1751017617_ (gx#stx-e _tl1750917614_)))
                                 (let ((_hd1751117620_ (##car _e1751017617_))
                                       (_tl1751217622_ (##cdr _e1751017617_)))
                                   (if (gx#stx-null? _tl1751217622_)
                                       (if (gx#stx-null? _tl1750617606_)
                                           (if (gx#stx-null? _tl1748217542_)
                                               ((lambda (_L17625_
                                                         _L17626_
                                                         _L17627_
                                                         _L17628_)
                                                  (if (if (gx#identifier?
                                                           _L17628_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17627_)
                           'apply)
                      (if (gx#free-identifier=? _L17628_ _L17625_)
                          (not (gx#free-identifier=? _L17626_ _L17628_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1735917524_ _g1736117527_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1751117620_
                                                _hd1750217596_
                                                _hd1749317572_
                                                _hd1747817532_)
                                               (_g1735917524_ _g1736117527_))
                                           (_g1735917524_ _g1736117527_))
                                       (_g1735917524_ _g1736117527_))))
                               (_g1735917524_ _g1736117527_))
                           (_g1735917524_ _g1736117527_))
                       (_g1735917524_ _g1736117527_))))
               (_g1735917524_ _g1736117527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1735917524_ _g1736117527_))
                                           (_g1735917524_ _g1736117527_))))
                                   (_g1735917524_ _g1736117527_))
                               (_g1735917524_ _g1736117527_))
                           (_g1735917524_ _g1736117527_))))
                   (_g1735917524_ _g1736117527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1735917524_
                                                    _g1736117527_))
                                               (_g1735917524_ _g1736117527_))))
                                       (_g1735917524_ _g1736117527_))
                                   (_g1735917524_ _g1736117527_))
                               (_g1735917524_ _g1736117527_))))
                       (_g1735917524_ _g1736117527_))))
               (_g1735917524_ _g1736117527_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1735917524_
                                                    _g1736117527_))
                                               (_g1735917524_ _g1736117527_))))
                                       (_g1735917524_ _g1736117527_))))
                               (_g1735917524_ _g1736117527_))))
                       (_g1735917524_ _g1736117527_)))))
            (let ((_g1735717924_
                   (lambda (_g1736117667_)
                     (if (gx#stx-pair? _g1736117667_)
                         (let ((_e1741317669_ (gx#stx-e _g1736117667_)))
                           (let ((_hd1741417672_ (##car _e1741317669_))
                                 (_tl1741517674_ (##cdr _e1741317669_)))
                             (if (gx#stx-pair/null? _hd1741417672_)
                                 (if (fx>= (gx#stx-length _hd1741417672_) '0)
                                     (let ((_g19235_
                                            (gx#syntax-split-splice
                                             _hd1741417672_
                                             '0)))
                                       (begin
                                         (let ((_g19236_
                                                (values-count _g19235_)))
                                           (if (not (fx= _g19236_ 2))
                                               (error "Context expects 2 values"
                                                      _g19236_)))
                                         (let ((_target1741617677_
                                                (values-ref _g19235_ 0))
                                               (_tl1741817679_
                                                (values-ref _g19235_ 1)))
                                           (letrec ((_loop1741917682_
                                                     (lambda (_hd1741717685_
                                                              _arg1742317687_)
                                                       (if (gx#stx-pair?
                                                            _hd1741717685_)
                                                           (let ((_e1742017690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1741717685_)))
                     (let ((_lp-hd1742117693_ (##car _e1742017690_))
                           (_lp-tl1742217695_ (##cdr _e1742017690_)))
                       (_loop1741917682_
                        _lp-tl1742217695_
                        (cons _lp-hd1742117693_ _arg1742317687_))))
                   (let ((_arg1742417698_ (reverse _arg1742317687_)))
                     (if (gx#stx-pair? _tl1741517674_)
                         (let ((_e1742517701_ (gx#stx-e _tl1741517674_)))
                           (let ((_hd1742617704_ (##car _e1742517701_))
                                 (_tl1742717706_ (##cdr _e1742517701_)))
                             (if (gx#stx-pair? _hd1742617704_)
                                 (let ((_e1742817709_
                                        (gx#stx-e _hd1742617704_)))
                                   (let ((_hd1742917712_ (##car _e1742817709_))
                                         (_tl1743017714_
                                          (##cdr _e1742817709_)))
                                     (if (gx#identifier? _hd1742917712_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1742917712_)
                                             (if (gx#stx-pair? _tl1743017714_)
                                                 (let ((_e1743117717_
                                                        (gx#stx-e
                                                         _tl1743017714_)))
                                                   (let ((_hd1743217720_
                                                          (##car _e1743117717_))
                                                         (_tl1743317722_
                                                          (##cdr _e1743117717_)))
                                                     (if (gx#stx-pair?
                                                          _hd1743217720_)
                                                         (let ((_e1743417725_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1743217720_)))
                   (let ((_hd1743517728_ (##car _e1743417725_))
                         (_tl1743617730_ (##cdr _e1743417725_)))
                     (if (gx#identifier? _hd1743517728_)
                         (if (gx#stx-eq? '%#ref _hd1743517728_)
                             (if (gx#stx-pair? _tl1743617730_)
                                 (let ((_e1743717733_
                                        (gx#stx-e _tl1743617730_)))
                                   (let ((_hd1743817736_ (##car _e1743717733_))
                                         (_tl1743917738_
                                          (##cdr _e1743717733_)))
                                     (if (gx#stx-null? _tl1743917738_)
                                         (if (gx#stx-pair? _tl1743317722_)
                                             (let ((_e1744017741_
                                                    (gx#stx-e _tl1743317722_)))
                                               (let ((_hd1744117744_
                                                      (##car _e1744017741_))
                                                     (_tl1744217746_
                                                      (##cdr _e1744017741_)))
                                                 (if (gx#stx-pair?
                                                      _hd1744117744_)
                                                     (let ((_e1744317749_
                                                            (gx#stx-e
                                                             _hd1744117744_)))
                                                       (let ((_hd1744417752_
                                                              (##car _e1744317749_))
                                                             (_tl1744517754_
                                                              (##cdr _e1744317749_)))
                                                         (if (gx#identifier?
                                                              _hd1744417752_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1744417752_)
                         (if (gx#stx-pair? _tl1744517754_)
                             (let ((_e1744617757_ (gx#stx-e _tl1744517754_)))
                               (let ((_hd1744717760_ (##car _e1744617757_))
                                     (_tl1744817762_ (##cdr _e1744617757_)))
                                 (if (gx#stx-null? _tl1744817762_)
                                     (if (gx#stx-pair/null? _tl1744217746_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1744217746_)
                                                   '1)
                                             (let ((_g19237_
                                                    (gx#syntax-split-splice
                                                     _tl1744217746_
                                                     '1)))
                                               (begin
                                                 (let ((_g19238_
                                                        (values-count
                                                         _g19237_)))
                                                   (if (not (fx= _g19238_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19238_)))
                                                 (let ((_target1744917765_
                                                        (values-ref
                                                         _g19237_
                                                         0))
                                                       (_tl1745117767_
                                                        (values-ref
                                                         _g19237_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1745117767_)
                                                       (let ((_e1745817770_
                                                              (gx#stx-e
                                                               _tl1745117767_)))
                                                         (let ((_hd1745917773_
                                                                (##car _e1745817770_))
                                                               (_tl1746017775_
                                                                (##cdr _e1745817770_)))
                                                           (if (gx#stx-pair?
                                                                _hd1745917773_)
                                                               (let ((_e1746117778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1745917773_)))
                         (let ((_hd1746217781_ (##car _e1746117778_))
                               (_tl1746317783_ (##cdr _e1746117778_)))
                           (if (gx#identifier? _hd1746217781_)
                               (if (gx#stx-eq? '%#ref _hd1746217781_)
                                   (if (gx#stx-pair? _tl1746317783_)
                                       (let ((_e1746417786_
                                              (gx#stx-e _tl1746317783_)))
                                         (let ((_hd1746517789_
                                                (##car _e1746417786_))
                                               (_tl1746617791_
                                                (##cdr _e1746417786_)))
                                           (if (gx#stx-null? _tl1746617791_)
                                               (if (gx#stx-null?
                                                    _tl1746017775_)
                                                   (letrec ((_loop1745217794_
                                                             (lambda (_hd1745017797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1745617799_)
                       (if (gx#stx-pair? _hd1745017797_)
                           (let ((_e1745317802_ (gx#stx-e _hd1745017797_)))
                             (let ((_lp-hd1745417805_ (##car _e1745317802_))
                                   (_lp-tl1745517807_ (##cdr _e1745317802_)))
                               (if (gx#stx-pair? _lp-hd1745417805_)
                                   (let ((_e1746717810_
                                          (gx#stx-e _lp-hd1745417805_)))
                                     (let ((_hd1746817813_
                                            (##car _e1746717810_))
                                           (_tl1746917815_
                                            (##cdr _e1746717810_)))
                                       (if (gx#identifier? _hd1746817813_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1746817813_)
                                               (if (gx#stx-pair?
                                                    _tl1746917815_)
                                                   (let ((_e1747017818_
                                                          (gx#stx-e
                                                           _tl1746917815_)))
                                                     (let ((_hd1747117821_
                                                            (##car _e1747017818_))
                                                           (_tl1747217823_
                                                            (##cdr _e1747017818_)))
                                                       (if (gx#stx-null?
                                                            _tl1747217823_)
                                                           (_loop1745217794_
                                                            _lp-tl1745517807_
                                                            (cons _hd1747117821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1745617799_))
                   (_g1735817664_ _g1736117667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1735817664_
                                                    _g1736117667_))
                                               (_g1735817664_ _g1736117667_))
                                           (_g1735817664_ _g1736117667_))))
                                   (_g1735817664_ _g1736117667_))))
                           (let ((_xarg1745717826_ (reverse _xarg1745617799_)))
                             (if (gx#stx-null? _tl1742717706_)
                                 ((lambda (_L17829_
                                           _L17830_
                                           _L17831_
                                           _L17832_
                                           _L17833_
                                           _L17834_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1787717880_
                                                                _g1787817882_)
                                                         (cons _g1787717880_
                                                               _g1787817882_))
                                                       '()
                                                       _L17834_)))
                                            (if (gx#identifier? _L17833_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L17832_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1788417887_ _g1788517889_)
                                         (cons _g1788417887_ _g1788517889_))
                                       '()
                                       _L17834_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1789117894_ _g1789217896_)
                                         (cons _g1789117894_ _g1789217896_))
                                       '()
                                       _L17830_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1789817901_ _g1789917903_)
                                        (cons _g1789817901_ _g1789917903_))
                                      '()
                                      _L17834_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1790517908_ _g1790617910_)
                                        (cons _g1790517908_ _g1790617910_))
                                      '()
                                      _L17830_)))
                    (if (gx#free-identifier=? _L17833_ _L17829_)
                        (not (find (lambda (_g1791217914_)
                                     (gx#free-identifier=?
                                      _g1791217914_
                                      _L17831_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1791617919_
                                                      _g1791717921_)
                                               (cons _g1791617919_
                                                     _g1791717921_))
                                             (cons _L17833_ '())
                                             _L17834_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1735817664_ _g1736117667_)))
                                  _hd1746517789_
                                  _xarg1745717826_
                                  _hd1744717760_
                                  _hd1743817736_
                                  _tl1741817679_
                                  _arg1742417698_)
                                 (_g1735817664_ _g1736117667_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1745217794_
                                                      _target1744917765_
                                                      '()))
                                                   (_g1735817664_
                                                    _g1736117667_))
                                               (_g1735817664_ _g1736117667_))))
                                       (_g1735817664_ _g1736117667_))
                                   (_g1735817664_ _g1736117667_))
                               (_g1735817664_ _g1736117667_))))
                       (_g1735817664_ _g1736117667_))))
               (_g1735817664_ _g1736117667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1735817664_ _g1736117667_))
                                         (_g1735817664_ _g1736117667_))
                                     (_g1735817664_ _g1736117667_))))
                             (_g1735817664_ _g1736117667_))
                         (_g1735817664_ _g1736117667_))
                     (_g1735817664_ _g1736117667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1735817664_
                                                      _g1736117667_))))
                                             (_g1735817664_ _g1736117667_))
                                         (_g1735817664_ _g1736117667_))))
                                 (_g1735817664_ _g1736117667_))
                             (_g1735817664_ _g1736117667_))
                         (_g1735817664_ _g1736117667_))))
                 (_g1735817664_ _g1736117667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1735817664_ _g1736117667_))
                                             (_g1735817664_ _g1736117667_))
                                         (_g1735817664_ _g1736117667_))))
                                 (_g1735817664_ _g1736117667_))))
                         (_g1735817664_ _g1736117667_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1741917682_
                                              _target1741617677_
                                              '())))))
                                     (_g1735817664_ _g1736117667_))
                                 (_g1735817664_ _g1736117667_))))
                         (_g1735817664_ _g1736117667_)))))
              (let ((_g1735618118_
                     (lambda (_g1736117927_)
                       (if (gx#stx-pair? _g1736117927_)
                           (let ((_e1736517929_ (gx#stx-e _g1736117927_)))
                             (let ((_hd1736617932_ (##car _e1736517929_))
                                   (_tl1736717934_ (##cdr _e1736517929_)))
                               (if (gx#stx-pair/null? _hd1736617932_)
                                   (if (fx>= (gx#stx-length _hd1736617932_) '0)
                                       (let ((_g19239_
                                              (gx#syntax-split-splice
                                               _hd1736617932_
                                               '0)))
                                         (begin
                                           (let ((_g19240_
                                                  (values-count _g19239_)))
                                             (if (not (fx= _g19240_ 2))
                                                 (error "Context expects 2 values"
                                                        _g19240_)))
                                           (let ((_target1736817937_
                                                  (values-ref _g19239_ 0))
                                                 (_tl1737017939_
                                                  (values-ref _g19239_ 1)))
                                             (if (gx#stx-null? _tl1737017939_)
                                                 (letrec ((_loop1737117942_
                                                           (lambda (_hd1736917945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1737517947_)
                     (if (gx#stx-pair? _hd1736917945_)
                         (let ((_e1737217950_ (gx#stx-e _hd1736917945_)))
                           (let ((_lp-hd1737317953_ (##car _e1737217950_))
                                 (_lp-tl1737417955_ (##cdr _e1737217950_)))
                             (_loop1737117942_
                              _lp-tl1737417955_
                              (cons _lp-hd1737317953_ _arg1737517947_))))
                         (let ((_arg1737617958_ (reverse _arg1737517947_)))
                           (if (gx#stx-pair? _tl1736717934_)
                               (let ((_e1737717961_ (gx#stx-e _tl1736717934_)))
                                 (let ((_hd1737817964_ (##car _e1737717961_))
                                       (_tl1737917966_ (##cdr _e1737717961_)))
                                   (if (gx#stx-pair? _hd1737817964_)
                                       (let ((_e1738017969_
                                              (gx#stx-e _hd1737817964_)))
                                         (let ((_hd1738117972_
                                                (##car _e1738017969_))
                                               (_tl1738217974_
                                                (##cdr _e1738017969_)))
                                           (if (gx#identifier? _hd1738117972_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1738117972_)
                                                   (if (gx#stx-pair?
                                                        _tl1738217974_)
                                                       (let ((_e1738317977_
                                                              (gx#stx-e
                                                               _tl1738217974_)))
                                                         (let ((_hd1738417980_
                                                                (##car _e1738317977_))
                                                               (_tl1738517982_
                                                                (##cdr _e1738317977_)))
                                                           (if (gx#stx-pair?
                                                                _hd1738417980_)
                                                               (let ((_e1738617985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1738417980_)))
                         (let ((_hd1738717988_ (##car _e1738617985_))
                               (_tl1738817990_ (##cdr _e1738617985_)))
                           (if (gx#identifier? _hd1738717988_)
                               (if (gx#stx-eq? '%#ref _hd1738717988_)
                                   (if (gx#stx-pair? _tl1738817990_)
                                       (let ((_e1738917993_
                                              (gx#stx-e _tl1738817990_)))
                                         (let ((_hd1739017996_
                                                (##car _e1738917993_))
                                               (_tl1739117998_
                                                (##cdr _e1738917993_)))
                                           (if (gx#stx-null? _tl1739117998_)
                                               (if (gx#stx-pair/null?
                                                    _tl1738517982_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1738517982_)
                                                             '0)
                                                       (let ((_g19241_
                                                              (gx#syntax-split-splice
                                                               _tl1738517982_
                                                               '0)))
                                                         (begin
                                                           (let ((_g19242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g19241_)))
                     (if (not (fx= _g19242_ 2))
                         (error "Context expects 2 values" _g19242_)))
                   (let ((_target1739218001_ (values-ref _g19241_ 0))
                         (_tl1739418003_ (values-ref _g19241_ 1)))
                     (if (gx#stx-null? _tl1739418003_)
                         (letrec ((_loop1739518006_
                                   (lambda (_hd1739318009_ _xarg1739918011_)
                                     (if (gx#stx-pair? _hd1739318009_)
                                         (let ((_e1739618014_
                                                (gx#stx-e _hd1739318009_)))
                                           (let ((_lp-hd1739718017_
                                                  (##car _e1739618014_))
                                                 (_lp-tl1739818019_
                                                  (##cdr _e1739618014_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1739718017_)
                                                 (let ((_e1740118022_
                                                        (gx#stx-e
                                                         _lp-hd1739718017_)))
                                                   (let ((_hd1740218025_
                                                          (##car _e1740118022_))
                                                         (_tl1740318027_
                                                          (##cdr _e1740118022_)))
                                                     (if (gx#identifier?
                                                          _hd1740218025_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1740218025_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1740318027_)
                         (let ((_e1740418030_ (gx#stx-e _tl1740318027_)))
                           (let ((_hd1740518033_ (##car _e1740418030_))
                                 (_tl1740618035_ (##cdr _e1740418030_)))
                             (if (gx#stx-null? _tl1740618035_)
                                 (_loop1739518006_
                                  _lp-tl1739818019_
                                  (cons _hd1740518033_ _xarg1739918011_))
                                 (_g1735717924_ _g1736117927_))))
                         (_g1735717924_ _g1736117927_))
                     (_g1735717924_ _g1736117927_))
                 (_g1735717924_ _g1736117927_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1735717924_
                                                  _g1736117927_))))
                                         (let ((_xarg1740018038_
                                                (reverse _xarg1739918011_)))
                                           (if (gx#stx-null? _tl1737917966_)
                                               ((lambda (_L18041_
                                                         _L18042_
                                                         _L18043_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1807118074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1807218076_)
                               (cons _g1807118074_ _g1807218076_))
                             '()
                             _L18043_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1807818081_
                                                      _g1807918083_)
                                               (cons _g1807818081_
                                                     _g1807918083_))
                                             '()
                                             _L18043_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1808518088_
                                                      _g1808618090_)
                                               (cons _g1808518088_
                                                     _g1808618090_))
                                             '()
                                             _L18041_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1809218095_
                                                     _g1809318097_)
                                              (cons _g1809218095_
                                                    _g1809318097_))
                                            '()
                                            _L18043_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1809918102_
                                                     _g1810018104_)
                                              (cons _g1809918102_
                                                    _g1810018104_))
                                            '()
                                            _L18041_)))
                          (not (find (lambda (_g1810618108_)
                                       (gx#free-identifier=?
                                        _g1810618108_
                                        _L18042_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1811018113_
                                                        _g1811118115_)
                                                 (cons _g1811018113_
                                                       _g1811118115_))
                                               '()
                                               _L18043_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1735717924_ _g1736117927_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1740018038_
                                                _hd1739017996_
                                                _arg1737617958_)
                                               (_g1735717924_
                                                _g1736117927_)))))))
                           (_loop1739518006_ _target1739218001_ '()))
                         (_g1735717924_ _g1736117927_)))))
               (_g1735717924_ _g1736117927_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1735717924_
                                                    _g1736117927_))
                                               (_g1735717924_ _g1736117927_))))
                                       (_g1735717924_ _g1736117927_))
                                   (_g1735717924_ _g1736117927_))
                               (_g1735717924_ _g1736117927_))))
                       (_g1735717924_ _g1736117927_))))
               (_g1735717924_ _g1736117927_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1735717924_
                                                    _g1736117927_))
                                               (_g1735717924_ _g1736117927_))))
                                       (_g1735717924_ _g1736117927_))))
                               (_g1735717924_ _g1736117927_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1737117942_
                                                    _target1736817937_
                                                    '()))
                                                 (_g1735717924_
                                                  _g1736117927_)))))
                                       (_g1735717924_ _g1736117927_))
                                   (_g1735717924_ _g1736117927_))))
                           (_g1735717924_ _g1736117927_)))))
                (_g1735618118_ _form17355_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form16823_)
      (let ((_g1682716951_
             (lambda (_g1682816948_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1682816948_))))
        (let ((_g1682617068_
               (lambda (_g1682816954_)
                 (if (gx#stx-pair? _g1682816954_)
                     (let ((_e1691716956_ (gx#stx-e _g1682816954_)))
                       (let ((_hd1691816959_ (##car _e1691716956_))
                             (_tl1691916961_ (##cdr _e1691716956_)))
                         (if (gx#stx-pair? _tl1691916961_)
                             (let ((_e1692016964_ (gx#stx-e _tl1691916961_)))
                               (let ((_hd1692116967_ (##car _e1692016964_))
                                     (_tl1692216969_ (##cdr _e1692016964_)))
                                 (if (gx#stx-pair? _hd1692116967_)
                                     (let ((_e1692316972_
                                            (gx#stx-e _hd1692116967_)))
                                       (let ((_hd1692416975_
                                              (##car _e1692316972_))
                                             (_tl1692516977_
                                              (##cdr _e1692316972_)))
                                         (if (gx#identifier? _hd1692416975_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1692416975_)
                                                 (if (gx#stx-pair?
                                                      _tl1692516977_)
                                                     (let ((_e1692616980_
                                                            (gx#stx-e
                                                             _tl1692516977_)))
                                                       (let ((_hd1692716983_
                                                              (##car _e1692616980_))
                                                             (_tl1692816985_
                                                              (##cdr _e1692616980_)))
                                                         (if (gx#stx-pair?
                                                              _hd1692716983_)
                                                             (let ((_e1692916988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1692716983_)))
                       (let ((_hd1693016991_ (##car _e1692916988_))
                             (_tl1693116993_ (##cdr _e1692916988_)))
                         (if (gx#identifier? _hd1693016991_)
                             (if (gx#stx-eq? '%#ref _hd1693016991_)
                                 (if (gx#stx-pair? _tl1693116993_)
                                     (let ((_e1693216996_
                                            (gx#stx-e _tl1693116993_)))
                                       (let ((_hd1693316999_
                                              (##car _e1693216996_))
                                             (_tl1693417001_
                                              (##cdr _e1693216996_)))
                                         (if (gx#stx-null? _tl1693417001_)
                                             (if (gx#stx-pair? _tl1692816985_)
                                                 (let ((_e1693517004_
                                                        (gx#stx-e
                                                         _tl1692816985_)))
                                                   (let ((_hd1693617007_
                                                          (##car _e1693517004_))
                                                         (_tl1693717009_
                                                          (##cdr _e1693517004_)))
                                                     (if (gx#stx-pair?
                                                          _hd1693617007_)
                                                         (let ((_e1693817012_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1693617007_)))
                   (let ((_hd1693917015_ (##car _e1693817012_))
                         (_tl1694017017_ (##cdr _e1693817012_)))
                     (if (gx#identifier? _hd1693917015_)
                         (if (gx#stx-eq? '%#ref _hd1693917015_)
                             (if (gx#stx-pair? _tl1694017017_)
                                 (let ((_e1694117020_
                                        (gx#stx-e _tl1694017017_)))
                                   (let ((_hd1694217023_ (##car _e1694117020_))
                                         (_tl1694317025_
                                          (##cdr _e1694117020_)))
                                     (if (gx#stx-null? _tl1694317025_)
                                         (if (gx#stx-pair? _tl1693717009_)
                                             (let ((_e1694417028_
                                                    (gx#stx-e _tl1693717009_)))
                                               (let ((_hd1694517031_
                                                      (##car _e1694417028_))
                                                     (_tl1694617033_
                                                      (##cdr _e1694417028_)))
                                                 (if (gx#stx-null?
                                                      _tl1694617033_)
                                                     (if (gx#stx-null?
                                                          _tl1692216969_)
                                                         ((lambda (_L17036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L17037_
                           _L17038_)
                    (gxc#generate-runtime-binding-id _L17036_))
                  _hd1694217023_
                  _hd1693316999_
                  _hd1691816959_)
                 (_g1682716951_ _g1682816954_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1682716951_
                                                      _g1682816954_))))
                                             (_g1682716951_ _g1682816954_))
                                         (_g1682716951_ _g1682816954_))))
                                 (_g1682716951_ _g1682816954_))
                             (_g1682716951_ _g1682816954_))
                         (_g1682716951_ _g1682816954_))))
                 (_g1682716951_ _g1682816954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1682716951_ _g1682816954_))
                                             (_g1682716951_ _g1682816954_))))
                                     (_g1682716951_ _g1682816954_))
                                 (_g1682716951_ _g1682816954_))
                             (_g1682716951_ _g1682816954_))))
                     (_g1682716951_ _g1682816954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1682716951_
                                                      _g1682816954_))
                                                 (_g1682716951_ _g1682816954_))
                                             (_g1682716951_ _g1682816954_))))
                                     (_g1682716951_ _g1682816954_))))
                             (_g1682716951_ _g1682816954_))))
                     (_g1682716951_ _g1682816954_)))))
          (let ((_g1682517204_
                 (lambda (_g1682817071_)
                   (if (gx#stx-pair? _g1682817071_)
                       (let ((_e1687817073_ (gx#stx-e _g1682817071_)))
                         (let ((_hd1687917076_ (##car _e1687817073_))
                               (_tl1688017078_ (##cdr _e1687817073_)))
                           (if (gx#stx-pair/null? _hd1687917076_)
                               (if (fx>= (gx#stx-length _hd1687917076_) '0)
                                   (let ((_g19243_
                                          (gx#syntax-split-splice
                                           _hd1687917076_
                                           '0)))
                                     (begin
                                       (let ((_g19244_
                                              (values-count _g19243_)))
                                         (if (not (fx= _g19244_ 2))
                                             (error "Context expects 2 values"
                                                    _g19244_)))
                                       (let ((_target1688117081_
                                              (values-ref _g19243_ 0))
                                             (_tl1688317083_
                                              (values-ref _g19243_ 1)))
                                         (letrec ((_loop1688417086_
                                                   (lambda (_hd1688217089_
                                                            _arg1688817091_)
                                                     (if (gx#stx-pair?
                                                          _hd1688217089_)
                                                         (let ((_e1688517094_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1688217089_)))
                   (let ((_lp-hd1688617097_ (##car _e1688517094_))
                         (_lp-tl1688717099_ (##cdr _e1688517094_)))
                     (_loop1688417086_
                      _lp-tl1688717099_
                      (cons _lp-hd1688617097_ _arg1688817091_))))
                 (let ((_arg1688917102_ (reverse _arg1688817091_)))
                   (if (gx#stx-pair? _tl1688017078_)
                       (let ((_e1689017105_ (gx#stx-e _tl1688017078_)))
                         (let ((_hd1689117108_ (##car _e1689017105_))
                               (_tl1689217110_ (##cdr _e1689017105_)))
                           (if (gx#stx-pair? _hd1689117108_)
                               (let ((_e1689317113_ (gx#stx-e _hd1689117108_)))
                                 (let ((_hd1689417116_ (##car _e1689317113_))
                                       (_tl1689517118_ (##cdr _e1689317113_)))
                                   (if (gx#identifier? _hd1689417116_)
                                       (if (gx#stx-eq? '%#call _hd1689417116_)
                                           (if (gx#stx-pair? _tl1689517118_)
                                               (let ((_e1689617121_
                                                      (gx#stx-e
                                                       _tl1689517118_)))
                                                 (let ((_hd1689717124_
                                                        (##car _e1689617121_))
                                                       (_tl1689817126_
                                                        (##cdr _e1689617121_)))
                                                   (if (gx#stx-pair?
                                                        _hd1689717124_)
                                                       (let ((_e1689917129_
                                                              (gx#stx-e
                                                               _hd1689717124_)))
                                                         (let ((_hd1690017132_
                                                                (##car _e1689917129_))
                                                               (_tl1690117134_
                                                                (##cdr _e1689917129_)))
                                                           (if (gx#identifier?
                                                                _hd1690017132_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1690017132_)
                           (if (gx#stx-pair? _tl1690117134_)
                               (let ((_e1690217137_ (gx#stx-e _tl1690117134_)))
                                 (let ((_hd1690317140_ (##car _e1690217137_))
                                       (_tl1690417142_ (##cdr _e1690217137_)))
                                   (if (gx#stx-null? _tl1690417142_)
                                       (if (gx#stx-pair? _tl1689817126_)
                                           (let ((_e1690517145_
                                                  (gx#stx-e _tl1689817126_)))
                                             (let ((_hd1690617148_
                                                    (##car _e1690517145_))
                                                   (_tl1690717150_
                                                    (##cdr _e1690517145_)))
                                               (if (gx#stx-pair?
                                                    _hd1690617148_)
                                                   (let ((_e1690817153_
                                                          (gx#stx-e
                                                           _hd1690617148_)))
                                                     (let ((_hd1690917156_
                                                            (##car _e1690817153_))
                                                           (_tl1691017158_
                                                            (##cdr _e1690817153_)))
                                                       (if (gx#identifier?
                                                            _hd1690917156_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1690917156_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1691017158_)
                           (let ((_e1691117161_ (gx#stx-e _tl1691017158_)))
                             (let ((_hd1691217164_ (##car _e1691117161_))
                                   (_tl1691317166_ (##cdr _e1691117161_)))
                               (if (gx#stx-null? _tl1691317166_)
                                   (if (gx#stx-null? _tl1689217110_)
                                       ((lambda (_L17169_
                                                 _L17170_
                                                 _L17171_
                                                 _L17172_)
                                          (gxc#generate-runtime-binding-id
                                           _L17169_))
                                        _hd1691217164_
                                        _hd1690317140_
                                        _tl1688317083_
                                        _arg1688917102_)
                                       (_g1682617068_ _g1682817071_))
                                   (_g1682617068_ _g1682817071_))))
                           (_g1682617068_ _g1682817071_))
                       (_g1682617068_ _g1682817071_))
                   (_g1682617068_ _g1682817071_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1682617068_
                                                    _g1682817071_))))
                                           (_g1682617068_ _g1682817071_))
                                       (_g1682617068_ _g1682817071_))))
                               (_g1682617068_ _g1682817071_))
                           (_g1682617068_ _g1682817071_))
                       (_g1682617068_ _g1682817071_))))
               (_g1682617068_ _g1682817071_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1682617068_ _g1682817071_))
                                           (_g1682617068_ _g1682817071_))
                                       (_g1682617068_ _g1682817071_))))
                               (_g1682617068_ _g1682817071_))))
                       (_g1682617068_ _g1682817071_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1688417086_
                                            _target1688117081_
                                            '())))))
                                   (_g1682617068_ _g1682817071_))
                               (_g1682617068_ _g1682817071_))))
                       (_g1682617068_ _g1682817071_)))))
            (let ((_g1682417352_
                   (lambda (_g1682817207_)
                     (if (gx#stx-pair? _g1682817207_)
                         (let ((_e1683217209_ (gx#stx-e _g1682817207_)))
                           (let ((_hd1683317212_ (##car _e1683217209_))
                                 (_tl1683417214_ (##cdr _e1683217209_)))
                             (if (gx#stx-pair/null? _hd1683317212_)
                                 (if (fx>= (gx#stx-length _hd1683317212_) '0)
                                     (let ((_g19245_
                                            (gx#syntax-split-splice
                                             _hd1683317212_
                                             '0)))
                                       (begin
                                         (let ((_g19246_
                                                (values-count _g19245_)))
                                           (if (not (fx= _g19246_ 2))
                                               (error "Context expects 2 values"
                                                      _g19246_)))
                                         (let ((_target1683517217_
                                                (values-ref _g19245_ 0))
                                               (_tl1683717219_
                                                (values-ref _g19245_ 1)))
                                           (if (gx#stx-null? _tl1683717219_)
                                               (letrec ((_loop1683817222_
                                                         (lambda (_hd1683617225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1684217227_)
                   (if (gx#stx-pair? _hd1683617225_)
                       (let ((_e1683917230_ (gx#stx-e _hd1683617225_)))
                         (let ((_lp-hd1684017233_ (##car _e1683917230_))
                               (_lp-tl1684117235_ (##cdr _e1683917230_)))
                           (_loop1683817222_
                            _lp-tl1684117235_
                            (cons _lp-hd1684017233_ _arg1684217227_))))
                       (let ((_arg1684317238_ (reverse _arg1684217227_)))
                         (if (gx#stx-pair? _tl1683417214_)
                             (let ((_e1684417241_ (gx#stx-e _tl1683417214_)))
                               (let ((_hd1684517244_ (##car _e1684417241_))
                                     (_tl1684617246_ (##cdr _e1684417241_)))
                                 (if (gx#stx-pair? _hd1684517244_)
                                     (let ((_e1684717249_
                                            (gx#stx-e _hd1684517244_)))
                                       (let ((_hd1684817252_
                                              (##car _e1684717249_))
                                             (_tl1684917254_
                                              (##cdr _e1684717249_)))
                                         (if (gx#identifier? _hd1684817252_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1684817252_)
                                                 (if (gx#stx-pair?
                                                      _tl1684917254_)
                                                     (let ((_e1685017257_
                                                            (gx#stx-e
                                                             _tl1684917254_)))
                                                       (let ((_hd1685117260_
                                                              (##car _e1685017257_))
                                                             (_tl1685217262_
                                                              (##cdr _e1685017257_)))
                                                         (if (gx#stx-pair?
                                                              _hd1685117260_)
                                                             (let ((_e1685317265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1685117260_)))
                       (let ((_hd1685417268_ (##car _e1685317265_))
                             (_tl1685517270_ (##cdr _e1685317265_)))
                         (if (gx#identifier? _hd1685417268_)
                             (if (gx#stx-eq? '%#ref _hd1685417268_)
                                 (if (gx#stx-pair? _tl1685517270_)
                                     (let ((_e1685617273_
                                            (gx#stx-e _tl1685517270_)))
                                       (let ((_hd1685717276_
                                              (##car _e1685617273_))
                                             (_tl1685817278_
                                              (##cdr _e1685617273_)))
                                         (if (gx#stx-null? _tl1685817278_)
                                             (if (gx#stx-pair/null?
                                                  _tl1685217262_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1685217262_)
                                                           '0)
                                                     (let ((_g19247_
                                                            (gx#syntax-split-splice
                                                             _tl1685217262_
                                                             '0)))
                                                       (begin
                                                         (let ((_g19248_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g19247_)))
                   (if (not (fx= _g19248_ 2))
                       (error "Context expects 2 values" _g19248_)))
                 (let ((_target1685917281_ (values-ref _g19247_ 0))
                       (_tl1686117283_ (values-ref _g19247_ 1)))
                   (if (gx#stx-null? _tl1686117283_)
                       (letrec ((_loop1686217286_
                                 (lambda (_hd1686017289_ _xarg1686617291_)
                                   (if (gx#stx-pair? _hd1686017289_)
                                       (let ((_e1686317294_
                                              (gx#stx-e _hd1686017289_)))
                                         (let ((_lp-hd1686417297_
                                                (##car _e1686317294_))
                                               (_lp-tl1686517299_
                                                (##cdr _e1686317294_)))
                                           (if (gx#stx-pair? _lp-hd1686417297_)
                                               (let ((_e1686817302_
                                                      (gx#stx-e
                                                       _lp-hd1686417297_)))
                                                 (let ((_hd1686917305_
                                                        (##car _e1686817302_))
                                                       (_tl1687017307_
                                                        (##cdr _e1686817302_)))
                                                   (if (gx#identifier?
                                                        _hd1686917305_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1686917305_)
                                                           (if (gx#stx-pair?
                                                                _tl1687017307_)
                                                               (let ((_e1687117310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1687017307_)))
                         (let ((_hd1687217313_ (##car _e1687117310_))
                               (_tl1687317315_ (##cdr _e1687117310_)))
                           (if (gx#stx-null? _tl1687317315_)
                               (_loop1686217286_
                                _lp-tl1686517299_
                                (cons _hd1687217313_ _xarg1686617291_))
                               (_g1682517204_ _g1682817207_))))
                       (_g1682517204_ _g1682817207_))
                   (_g1682517204_ _g1682817207_))
               (_g1682517204_ _g1682817207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1682517204_ _g1682817207_))))
                                       (let ((_xarg1686717318_
                                              (reverse _xarg1686617291_)))
                                         (if (gx#stx-null? _tl1684617246_)
                                             ((lambda (_L17321_
                                                       _L17322_
                                                       _L17323_)
                                                (gxc#generate-runtime-binding-id
                                                 _L17322_))
                                              _xarg1686717318_
                                              _hd1685717276_
                                              _arg1684317238_)
                                             (_g1682517204_
                                              _g1682817207_)))))))
                         (_loop1686217286_ _target1685917281_ '()))
                       (_g1682517204_ _g1682817207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1682517204_
                                                      _g1682817207_))
                                                 (_g1682517204_ _g1682817207_))
                                             (_g1682517204_ _g1682817207_))))
                                     (_g1682517204_ _g1682817207_))
                                 (_g1682517204_ _g1682817207_))
                             (_g1682517204_ _g1682817207_))))
                     (_g1682517204_ _g1682817207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1682517204_
                                                      _g1682817207_))
                                                 (_g1682517204_ _g1682817207_))
                                             (_g1682517204_ _g1682817207_))))
                                     (_g1682517204_ _g1682817207_))))
                             (_g1682517204_ _g1682817207_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1683817222_
                                                  _target1683517217_
                                                  '()))
                                               (_g1682517204_
                                                _g1682817207_)))))
                                     (_g1682517204_ _g1682817207_))
                                 (_g1682517204_ _g1682817207_))))
                         (_g1682517204_ _g1682817207_)))))
              (_g1682417352_ _form16823_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form16627_)
      (let ((_g1662916643_
             (lambda (_g1663016640_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1663016640_))))
        (let ((_g1662816820_
               (lambda (_g1663016646_)
                 (if (gx#stx-pair? _g1663016646_)
                     (let ((_e1663316648_ (gx#stx-e _g1663016646_)))
                       (let ((_hd1663416651_ (##car _e1663316648_))
                             (_tl1663516653_ (##cdr _e1663316648_)))
                         (if (gx#stx-pair? _tl1663516653_)
                             (let ((_e1663616656_ (gx#stx-e _tl1663516653_)))
                               (let ((_hd1663716659_ (##car _e1663616656_))
                                     (_tl1663816661_ (##cdr _e1663616656_)))
                                 (if (gx#stx-null? _tl1663816661_)
                                     ((lambda (_L16664_ _L16665_)
                                        (let ((_g1668016708_
                                               (lambda (_g1668116705_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1668116705_))))
                                          (let ((_g1667916721_
                                                 (lambda (_g1668116711_)
                                                   ((lambda (_L16713_)
                                                      (cons '0 '()))
                                                    _g1668116711_))))
                                            (let ((_g1667816770_
                                                   (lambda (_g1668116724_)
                                                     (if (gx#stx-pair/null?
                                                          _g1668116724_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1668116724_)
                           '0)
                     (let ((_g19249_
                            (gx#syntax-split-splice _g1668116724_ '0)))
                       (begin
                         (let ((_g19250_ (values-count _g19249_)))
                           (if (not (fx= _g19250_ 2))
                               (error "Context expects 2 values" _g19250_)))
                         (let ((_target1669416726_ (values-ref _g19249_ 0))
                               (_tl1669616728_ (values-ref _g19249_ 1)))
                           (letrec ((_loop1669716731_
                                     (lambda (_hd1669516734_ _arg1670116736_)
                                       (if (gx#stx-pair? _hd1669516734_)
                                           (let ((_e1669816739_
                                                  (gx#stx-e _hd1669516734_)))
                                             (let ((_lp-hd1669916742_
                                                    (##car _e1669816739_))
                                                   (_lp-tl1670016744_
                                                    (##cdr _e1669816739_)))
                                               (_loop1669716731_
                                                _lp-tl1670016744_
                                                (cons _lp-hd1669916742_
                                                      _arg1670116736_))))
                                           (let ((_arg1670216747_
                                                  (reverse _arg1670116736_)))
                                             ((lambda (_L16750_ _L16751_)
                                                (cons (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1676216765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1676316767_)
                                  (cons _g1676216765_ _g1676316767_))
                                '()
                                _L16751_)))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _tl1669616728_
                                              _arg1670216747_))))))
                             (_loop1669716731_ _target1669416726_ '())))))
                     (_g1667916721_ _g1668116724_))
                 (_g1667916721_ _g1668116724_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1667716817_
                                                     (lambda (_g1668116773_)
                                                       (if (gx#stx-pair/null?
                                                            _g1668116773_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1668116773_)
                             '0)
                       (let ((_g19251_
                              (gx#syntax-split-splice _g1668116773_ '0)))
                         (begin
                           (let ((_g19252_ (values-count _g19251_)))
                             (if (not (fx= _g19252_ 2))
                                 (error "Context expects 2 values" _g19252_)))
                           (let ((_target1668316775_ (values-ref _g19251_ 0))
                                 (_tl1668516777_ (values-ref _g19251_ 1)))
                             (if (gx#stx-null? _tl1668516777_)
                                 (letrec ((_loop1668616780_
                                           (lambda (_hd1668416783_
                                                    _arg1669016785_)
                                             (if (gx#stx-pair? _hd1668416783_)
                                                 (let ((_e1668716788_
                                                        (gx#stx-e
                                                         _hd1668416783_)))
                                                   (let ((_lp-hd1668816791_
                                                          (##car _e1668716788_))
                                                         (_lp-tl1668916793_
                                                          (##cdr _e1668716788_)))
                                                     (_loop1668616780_
                                                      _lp-tl1668916793_
                                                      (cons _lp-hd1668816791_
                                                            _arg1669016785_))))
                                                 (let ((_arg1669116796_
                                                        (reverse _arg1669016785_)))
                                                   ((lambda (_L16799_)
                                                      (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1680916812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1681016814_)
                                  (cons _g1680916812_ _g1681016814_))
                                '()
                                _L16799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg1669116796_))))))
                                   (_loop1668616780_ _target1668316775_ '()))
                                 (_g1667816770_ _g1668116773_)))))
                       (_g1667816770_ _g1668116773_))
                   (_g1667816770_ _g1668116773_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1667716817_ _L16665_))))))
                                      _hd1663716659_
                                      _hd1663416651_)
                                     (_g1662916643_ _g1663016646_))))
                             (_g1662916643_ _g1663016646_))))
                     (_g1662916643_ _g1663016646_)))))
          (_g1662816820_ _form16627_)))))
  (define gxc#lambda-expr?
    (lambda (_expr16580_)
      (let ((_g1658316593_
             (lambda (_g1658416590_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1658416590_))))
        (let ((_g1658216600_ (lambda (_g1658416596_) ((lambda () '#f)))))
          (let ((_g1658116624_
                 (lambda (_g1658416603_)
                   (if (gx#stx-pair? _g1658416603_)
                       (let ((_e1658616605_ (gx#stx-e _g1658416603_)))
                         (let ((_hd1658716608_ (##car _e1658616605_))
                               (_tl1658816610_ (##cdr _e1658616605_)))
                           (if (gx#identifier? _hd1658716608_)
                               (if (gx#stx-eq? '%#lambda _hd1658716608_)
                                   ((lambda (_L16613_) '#t) _tl1658816610_)
                                   (_g1658216600_ _g1658416603_))
                               (_g1658216600_ _g1658416603_))))
                       (_g1658216600_ _g1658416603_)))))
            (_g1658116624_ _expr16580_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr16533_)
      (let ((_g1653616546_
             (lambda (_g1653716543_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1653716543_))))
        (let ((_g1653516553_ (lambda (_g1653716549_) ((lambda () '#f)))))
          (let ((_g1653416577_
                 (lambda (_g1653716556_)
                   (if (gx#stx-pair? _g1653716556_)
                       (let ((_e1653916558_ (gx#stx-e _g1653716556_)))
                         (let ((_hd1654016561_ (##car _e1653916558_))
                               (_tl1654116563_ (##cdr _e1653916558_)))
                           (if (gx#identifier? _hd1654016561_)
                               (if (gx#stx-eq? '%#case-lambda _hd1654016561_)
                                   ((lambda (_L16566_) '#t) _tl1654116563_)
                                   (_g1653516553_ _g1653716556_))
                               (_g1653516553_ _g1653716556_))))
                       (_g1653516553_ _g1653716556_)))))
            (_g1653416577_ _expr16533_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr16402_)
      (let ((_g1640516435_
             (lambda (_g1640616432_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1640616432_))))
        (let ((_g1640416442_ (lambda (_g1640616438_) ((lambda () '#f)))))
          (let ((_g1640316530_
                 (lambda (_g1640616445_)
                   (if (gx#stx-pair? _g1640616445_)
                       (let ((_e1641016447_ (gx#stx-e _g1640616445_)))
                         (let ((_hd1641116450_ (##car _e1641016447_))
                               (_tl1641216452_ (##cdr _e1641016447_)))
                           (if (gx#identifier? _hd1641116450_)
                               (if (gx#stx-eq? '%#let-values _hd1641116450_)
                                   (if (gx#stx-pair? _tl1641216452_)
                                       (let ((_e1641316455_
                                              (gx#stx-e _tl1641216452_)))
                                         (let ((_hd1641416458_
                                                (##car _e1641316455_))
                                               (_tl1641516460_
                                                (##cdr _e1641316455_)))
                                           (if (gx#stx-pair? _hd1641416458_)
                                               (let ((_e1641616463_
                                                      (gx#stx-e
                                                       _hd1641416458_)))
                                                 (let ((_hd1641716466_
                                                        (##car _e1641616463_))
                                                       (_tl1641816468_
                                                        (##cdr _e1641616463_)))
                                                   (if (gx#stx-pair?
                                                        _hd1641716466_)
                                                       (let ((_e1641916471_
                                                              (gx#stx-e
                                                               _hd1641716466_)))
                                                         (let ((_hd1642016474_
                                                                (##car _e1641916471_))
                                                               (_tl1642116476_
                                                                (##cdr _e1641916471_)))
                                                           (if (gx#stx-pair?
                                                                _hd1642016474_)
                                                               (let ((_e1642216479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1642016474_)))
                         (let ((_hd1642316482_ (##car _e1642216479_))
                               (_tl1642416484_ (##cdr _e1642216479_)))
                           (if (gx#stx-null? _tl1642416484_)
                               (if (gx#stx-pair? _tl1642116476_)
                                   (let ((_e1642516487_
                                          (gx#stx-e _tl1642116476_)))
                                     (let ((_hd1642616490_
                                            (##car _e1642516487_))
                                           (_tl1642716492_
                                            (##cdr _e1642516487_)))
                                       (if (gx#stx-null? _tl1642716492_)
                                           (if (gx#stx-null? _tl1641816468_)
                                               (if (gx#stx-pair?
                                                    _tl1641516460_)
                                                   (let ((_e1642816495_
                                                          (gx#stx-e
                                                           _tl1641516460_)))
                                                     (let ((_hd1642916498_
                                                            (##car _e1642816495_))
                                                           (_tl1643016500_
                                                            (##cdr _e1642816495_)))
                                                       (if (gx#stx-null?
                                                            _tl1643016500_)
                                                           ((lambda (_L16503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16504_
                             _L16505_)
                      (if (gx#identifier? _L16505_)
                          (if (gxc#lambda-expr? _L16504_)
                              (gxc#case-lambda-expr? _L16503_)
                              '#f)
                          '#f))
                    _hd1642916498_
                    _hd1642616490_
                    _hd1642316482_)
                   (_g1640416442_ _g1640616445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1640416442_
                                                    _g1640616445_))
                                               (_g1640416442_ _g1640616445_))
                                           (_g1640416442_ _g1640616445_))))
                                   (_g1640416442_ _g1640616445_))
                               (_g1640416442_ _g1640616445_))))
                       (_g1640416442_ _g1640616445_))))
               (_g1640416442_ _g1640616445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1640416442_ _g1640616445_))))
                                       (_g1640416442_ _g1640616445_))
                                   (_g1640416442_ _g1640616445_))
                               (_g1640416442_ _g1640616445_))))
                       (_g1640416442_ _g1640616445_)))))
            (_g1640316530_ _expr16402_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda16142
      (lambda (_stx16144_ _id16145_ _clauses16146_ _gensym?16147_)
        ((letrec ((_lp16149_
                   (lambda (_rest16151_ _ids16152_ _impls16153_ _clauses16154_)
                     (let ((_rest1615516163_ _rest16151_))
                       (let ((_E1615816167_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1615516163_))))
                         (let ((_else1615716171_
                                (lambda ()
                                  (values (reverse _ids16152_)
                                          (reverse _impls16153_)
                                          (reverse _clauses16154_)))))
                           (let ((_K1615916376_
                                  (lambda (_rest16174_ _clause16175_)
                                    (if (gxc#dispatch-lambda-form?
                                         _clause16175_)
                                        (_lp16149_
                                         _rest16174_
                                         _ids16152_
                                         _impls16153_
                                         (cons _clause16175_ _clauses16154_))
                                        (let ((_g1617716188_
                                               (lambda (_g1617816185_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1617816185_))))
                                          (let ((_g1617616373_
                                                 (lambda (_g1617816191_)
                                                   (if (gx#stx-pair?
                                                        _g1617816191_)
                                                       (let ((_e1618116193_
                                                              (gx#stx-e
                                                               _g1617816191_)))
                                                         (let ((_hd1618216196_
                                                                (##car _e1618116193_))
                                                               (_tl1618316198_
                                                                (##cdr _e1618116193_)))
                                                           ((lambda (_L16201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16202_)
                      (let ((_id16219_
                             (make-symbol
                              (gx#stx-e _id16145_)
                              '"__"
                              (length _clauses16154_)
                              (if _gensym?16147_ (gensym '__) '""))))
                        (let ((_id16221_
                               (gx#core-quote-syntax__1
                                _id16219_
                                (gx#stx-source _stx16144_))))
                          (let ((_impl16223_
                                 (gxc#xform-wrap-source
                                  (cons (gx#datum->syntax__0 '#f '%#lambda)
                                        (cons _L16202_ _L16201_))
                                  _stx16144_)))
                            (let ((_clause16370_
                                   (let ((_g1622716255_
                                          (lambda (_g1622816252_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1622816252_))))
                                     (let ((_g1622616271_
                                            (lambda (_g1622816258_)
                                              ((lambda (_L16260_)
                                                 (cons _L16202_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'apply '()))
                                  (cons (cons '%#ref (cons _id16221_ '()))
                                        (cons (cons (gx#datum->syntax__0
                                                     '#f
                                                     '%#ref)
                                                    (cons _L16260_ '()))
                                              '()))))
                      _stx16144_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g1622816258_))))
                                       (let ((_g1622516320_
                                              (lambda (_g1622816274_)
                                                (if (gx#stx-pair/null?
                                                     _g1622816274_)
                                                    (if (fx>= (gx#stx-length
                                                               _g1622816274_)
                                                              '0)
                                                        (let ((_g19253_
                                                               (gx#syntax-split-splice
                                                                _g1622816274_
                                                                '0)))
                                                          (begin
                                                            (let ((_g19254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g19253_)))
                      (if (not (fx= _g19254_ 2))
                          (error "Context expects 2 values" _g19254_)))
                    (let ((_target1624116276_ (values-ref _g19253_ 0))
                          (_tl1624316278_ (values-ref _g19253_ 1)))
                      (letrec ((_loop1624416281_
                                (lambda (_hd1624216284_ _arg1624816286_)
                                  (if (gx#stx-pair? _hd1624216284_)
                                      (let ((_e1624516289_
                                             (gx#stx-e _hd1624216284_)))
                                        (let ((_lp-hd1624616292_
                                               (##car _e1624516289_))
                                              (_lp-tl1624716294_
                                               (##cdr _e1624516289_)))
                                          (_loop1624416281_
                                           _lp-tl1624716294_
                                           (cons _lp-hd1624616292_
                                                 _arg1624816286_))))
                                      (let ((_arg1624916297_
                                             (reverse _arg1624816286_)))
                                        ((lambda (_L16300_ _L16301_)
                                           (cons _L16202_
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'apply '()))
                            (cons (cons '%#ref (cons _id16221_ '()))
                                  (foldr1 cons
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L16300_ '()))
                                                '())
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1631216315_
                                                             _g1631316317_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1631216315_ '()))
                    _g1631316317_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L16301_))))))
                _stx16144_)
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl1624316278_
                                         _arg1624916297_))))))
                        (_loop1624416281_ _target1624116276_ '())))))
                (_g1622616271_ _g1622816274_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1622616271_
                                                     _g1622816274_)))))
                                         (let ((_g1622416367_
                                                (lambda (_g1622816323_)
                                                  (if (gx#stx-pair/null?
                                                       _g1622816323_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1622816323_)
                        '0)
                  (let ((_g19255_ (gx#syntax-split-splice _g1622816323_ '0)))
                    (begin
                      (let ((_g19256_ (values-count _g19255_)))
                        (if (not (fx= _g19256_ 2))
                            (error "Context expects 2 values" _g19256_)))
                      (let ((_target1623016325_ (values-ref _g19255_ 0))
                            (_tl1623216327_ (values-ref _g19255_ 1)))
                        (if (gx#stx-null? _tl1623216327_)
                            (letrec ((_loop1623316330_
                                      (lambda (_hd1623116333_ _arg1623716335_)
                                        (if (gx#stx-pair? _hd1623116333_)
                                            (let ((_e1623416338_
                                                   (gx#stx-e _hd1623116333_)))
                                              (let ((_lp-hd1623516341_
                                                     (##car _e1623416338_))
                                                    (_lp-tl1623616343_
                                                     (##cdr _e1623416338_)))
                                                (_loop1623316330_
                                                 _lp-tl1623616343_
                                                 (cons _lp-hd1623516341_
                                                       _arg1623716335_))))
                                            (let ((_arg1623816346_
                                                   (reverse _arg1623716335_)))
                                              ((lambda (_L16349_)
                                                 (cons _L16202_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _id16221_ '()))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1635916362_
                                                     _g1636016364_)
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _g1635916362_
                                                                '()))
                                                    _g1636016364_))
                                            '()
                                            _L16349_))))
                      _stx16144_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _arg1623816346_))))))
                              (_loop1623316330_ _target1623016325_ '()))
                            (_g1622516320_ _g1622816323_)))))
                  (_g1622516320_ _g1622816323_))
              (_g1622516320_ _g1622816323_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1622416367_ _L16202_)))))))
                              (let ()
                                (_lp16149_
                                 _rest16174_
                                 (cons _id16221_ _ids16152_)
                                 (cons _impl16223_ _impls16153_)
                                 (cons _clause16370_ _clauses16154_))))))))
                    _tl1618316198_
                    _hd1618216196_)))
               (_g1617716188_ _g1617816191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1617616373_ _clause16175_)))))))
                             (if (##pair? _rest1615516163_)
                                 (let ((_hd1616016379_
                                        (##car _rest1615516163_))
                                       (_tl1616116381_
                                        (##cdr _rest1615516163_)))
                                   (let ((_clause16384_ _hd1616016379_))
                                     (let ((_rest16386_ _tl1616116381_))
                                       (_K1615916376_
                                        _rest16386_
                                        _clause16384_))))
                                 (_else1615716171_)))))))))
           _lp16149_)
         _clauses16146_
         '()
         '()
         '())))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx16391_ _id16392_ _clauses16393_)
          (let ((_gensym?16395_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda16142
             _stx16391_
             _id16392_
             _clauses16393_
             _gensym?16395_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g19258_
          (let ((_g19257_ (length _g19258_)))
            (cond ((fx= _g19257_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g19258_))
                  ((fx= _g19257_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda16142
                          _g19258_))
                  (else (error "No clause matching arguments" _g19258_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx15733_)
      (let ((_case-lambda-clause-def15735_
             (lambda (_id16140_ _impl16141_)
               (gxc#xform-wrap-source
                (cons '%#define-values
                      (cons (cons _id16140_ '())
                            (cons (gxc#compile-e _impl16141_) '())))
                _stx15733_))))
        (let ((_g1573915784_
               (lambda (_g1574015781_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1574015781_))))
          (let ((_g1573815830_
                 (lambda (_g1574015787_)
                   (if (gx#stx-pair? _g1574015787_)
                       (let ((_e1577115789_ (gx#stx-e _g1574015787_)))
                         (let ((_hd1577215792_ (##car _e1577115789_))
                               (_tl1577315794_ (##cdr _e1577115789_)))
                           (if (gx#stx-pair? _tl1577315794_)
                               (let ((_e1577415797_ (gx#stx-e _tl1577315794_)))
                                 (let ((_hd1577515800_ (##car _e1577415797_))
                                       (_tl1577615802_ (##cdr _e1577415797_)))
                                   (if (gx#stx-pair? _tl1577615802_)
                                       (let ((_e1577715805_
                                              (gx#stx-e _tl1577615802_)))
                                         (let ((_hd1577815808_
                                                (##car _e1577715805_))
                                               (_tl1577915810_
                                                (##cdr _e1577715805_)))
                                           (if (gx#stx-null? _tl1577915810_)
                                               ((lambda (_L15813_ _L15814_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L15814_
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L15813_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15733_))
                                                _hd1577815808_
                                                _hd1577515800_)
                                               (_g1573915784_ _g1574015787_))))
                                       (_g1573915784_ _g1574015787_))))
                               (_g1573915784_ _g1574015787_))))
                       (_g1573915784_ _g1574015787_)))))
            (let ((_g1573716012_
                   (lambda (_g1574015833_)
                     (if (gx#stx-pair? _g1574015833_)
                         (let ((_e1575715835_ (gx#stx-e _g1574015833_)))
                           (let ((_hd1575815838_ (##car _e1575715835_))
                                 (_tl1575915840_ (##cdr _e1575715835_)))
                             (if (gx#stx-pair? _tl1575915840_)
                                 (let ((_e1576015843_
                                        (gx#stx-e _tl1575915840_)))
                                   (let ((_hd1576115846_ (##car _e1576015843_))
                                         (_tl1576215848_
                                          (##cdr _e1576015843_)))
                                     (if (gx#stx-pair? _hd1576115846_)
                                         (let ((_e1576315851_
                                                (gx#stx-e _hd1576115846_)))
                                           (let ((_hd1576415854_
                                                  (##car _e1576315851_))
                                                 (_tl1576515856_
                                                  (##cdr _e1576315851_)))
                                             (if (gx#stx-null? _tl1576515856_)
                                                 (if (gx#stx-pair?
                                                      _tl1576215848_)
                                                     (let ((_e1576615859_
                                                            (gx#stx-e
                                                             _tl1576215848_)))
                                                       (let ((_hd1576715862_
                                                              (##car _e1576615859_))
                                                             (_tl1576815864_
                                                              (##cdr _e1576615859_)))
                                                         (if (gx#stx-null?
                                                              _tl1576815864_)
                                                             ((lambda (_L15867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L15868_)
                        (if (if (gx#identifier? _L15868_)
                                (gxc#opt-lambda-expr? _L15867_)
                                '#f)
                            (let ((_g1588415914_
                                   (lambda (_g1588515911_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1588515911_))))
                              (let ((_g1588316009_
                                     (lambda (_g1588515917_)
                                       (if (gx#stx-pair? _g1588515917_)
                                           (let ((_e1588915919_
                                                  (gx#stx-e _g1588515917_)))
                                             (let ((_hd1589015922_
                                                    (##car _e1588915919_))
                                                   (_tl1589115924_
                                                    (##cdr _e1588915919_)))
                                               (if (gx#stx-pair?
                                                    _tl1589115924_)
                                                   (let ((_e1589215927_
                                                          (gx#stx-e
                                                           _tl1589115924_)))
                                                     (let ((_hd1589315930_
                                                            (##car _e1589215927_))
                                                           (_tl1589415932_
                                                            (##cdr _e1589215927_)))
                                                       (if (gx#stx-pair?
                                                            _hd1589315930_)
                                                           (let ((_e1589515935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1589315930_)))
                     (let ((_hd1589615938_ (##car _e1589515935_))
                           (_tl1589715940_ (##cdr _e1589515935_)))
                       (if (gx#stx-pair? _hd1589615938_)
                           (let ((_e1589815943_ (gx#stx-e _hd1589615938_)))
                             (let ((_hd1589915946_ (##car _e1589815943_))
                                   (_tl1590015948_ (##cdr _e1589815943_)))
                               (if (gx#stx-pair? _hd1589915946_)
                                   (let ((_e1590115951_
                                          (gx#stx-e _hd1589915946_)))
                                     (let ((_hd1590215954_
                                            (##car _e1590115951_))
                                           (_tl1590315956_
                                            (##cdr _e1590115951_)))
                                       (if (gx#stx-null? _tl1590315956_)
                                           (if (gx#stx-pair? _tl1590015948_)
                                               (let ((_e1590415959_
                                                      (gx#stx-e
                                                       _tl1590015948_)))
                                                 (let ((_hd1590515962_
                                                        (##car _e1590415959_))
                                                       (_tl1590615964_
                                                        (##cdr _e1590415959_)))
                                                   (if (gx#stx-null?
                                                        _tl1590615964_)
                                                       (if (gx#stx-null?
                                                            _tl1589715940_)
                                                           (if (gx#stx-pair?
                                                                _tl1589415932_)
                                                               (let ((_e1590715967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1589415932_)))
                         (let ((_hd1590815970_ (##car _e1590715967_))
                               (_tl1590915972_ (##cdr _e1590715967_)))
                           (if (gx#stx-null? _tl1590915972_)
                               ((lambda (_L15975_ _L15976_ _L15977_)
                                  (let ((_lambda-id16001_
                                         (make-symbol
                                          (gx#stx-e _L15868_)
                                          '"__"
                                          (gx#stx-e _L15977_))))
                                    (let ((_lambda-id16003_
                                           (gx#core-quote-syntax__1
                                            _lambda-id16001_
                                            (gx#stx-source _stx15733_))))
                                      (let ((_g19259_
                                             (gx#core-bind-runtime!__0
                                              _lambda-id16003_)))
                                        (let ((_new-case-lambda-expr16006_
                                               (gxc#apply-expression-subst
                                                _L15975_
                                                _L15977_
                                                _lambda-id16003_)))
                                          (let ()
                                            (begin
                                              (gxc#verbose
                                               '"lift opt-lambda dispatch "
                                               (gxc#generate-runtime-binding-id
                                                _L15868_)
                                               '" => "
                                               (gxc#generate-runtime-binding-id
                                                _lambda-id16003_))
                                              (gxc#xform-wrap-source
                                               (cons '%#begin
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _lambda-id16003_ '())
                                (cons (gxc#compile-e _L15976_) '())))
                    _stx15733_)
                   (cons (gxc#lift-top-lambda-define-values%
                          (gxc#xform-wrap-source
                           (cons '%#define-values
                                 (cons (cons _L15868_ '())
                                       (cons _new-case-lambda-expr16006_ '())))
                           _stx15733_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx15733_))))))))
                                _hd1590815970_
                                _hd1590515962_
                                _hd1590215954_)
                               (_g1588415914_ _g1588515917_))))
                       (_g1588415914_ _g1588515917_))
                   (_g1588415914_ _g1588515917_))
               (_g1588415914_ _g1588515917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1588415914_ _g1588515917_))
                                           (_g1588415914_ _g1588515917_))))
                                   (_g1588415914_ _g1588515917_))))
                           (_g1588415914_ _g1588515917_))))
                   (_g1588415914_ _g1588515917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1588415914_
                                                    _g1588515917_))))
                                           (_g1588415914_ _g1588515917_)))))
                                (_g1588316009_ _L15867_)))
                            (_g1573815830_ _g1574015833_)))
                      _hd1576715862_
                      _hd1576415854_)
                     (_g1573815830_ _g1574015833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1573815830_
                                                      _g1574015833_))
                                                 (_g1573815830_
                                                  _g1574015833_))))
                                         (_g1573815830_ _g1574015833_))))
                                 (_g1573815830_ _g1574015833_))))
                         (_g1573815830_ _g1574015833_)))))
              (let ((_g1573616137_
                     (lambda (_g1574016015_)
                       (if (gx#stx-pair? _g1574016015_)
                           (let ((_e1574316017_ (gx#stx-e _g1574016015_)))
                             (let ((_hd1574416020_ (##car _e1574316017_))
                                   (_tl1574516022_ (##cdr _e1574316017_)))
                               (if (gx#stx-pair? _tl1574516022_)
                                   (let ((_e1574616025_
                                          (gx#stx-e _tl1574516022_)))
                                     (let ((_hd1574716028_
                                            (##car _e1574616025_))
                                           (_tl1574816030_
                                            (##cdr _e1574616025_)))
                                       (if (gx#stx-pair? _hd1574716028_)
                                           (let ((_e1574916033_
                                                  (gx#stx-e _hd1574716028_)))
                                             (let ((_hd1575016036_
                                                    (##car _e1574916033_))
                                                   (_tl1575116038_
                                                    (##cdr _e1574916033_)))
                                               (if (gx#stx-null?
                                                    _tl1575116038_)
                                                   (if (gx#stx-pair?
                                                        _tl1574816030_)
                                                       (let ((_e1575216041_
                                                              (gx#stx-e
                                                               _tl1574816030_)))
                                                         (let ((_hd1575316044_
                                                                (##car _e1575216041_))
                                                               (_tl1575416046_
                                                                (##cdr _e1575216041_)))
                                                           (if (gx#stx-null?
                                                                _tl1575416046_)
                                                               ((lambda (_L16049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L16050_)
                          (if (if (gx#identifier? _L16050_)
                                  (gxc#case-lambda-expr? _L16049_)
                                  '#f)
                              (let ((_g1606716081_
                                     (lambda (_g1606816078_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1606816078_))))
                                (let ((_g1606616112_
                                       (lambda (_g1606816084_)
                                         (if (gx#stx-pair? _g1606816084_)
                                             (let ((_e1607416086_
                                                    (gx#stx-e _g1606816084_)))
                                               (let ((_hd1607516089_
                                                      (##car _e1607416086_))
                                                     (_tl1607616091_
                                                      (##cdr _e1607416086_)))
                                                 ((lambda (_L16094_)
                                                    (let ((_g19260_
                                                           (gxc#lift-case-lambda-clauses__0
                                                            _stx15733_
                                                            _L16050_
                                                            _L16094_)))
                                                      (begin
                                                        (let ((_g19261_
                                                               (values-count
                                                                _g19260_)))
                                                          (if (not (fx= _g19261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                3))
                      (error "Context expects 3 values" _g19261_)))
                (let ((_ids16104_ (values-ref _g19260_ 0))
                      (_impls16105_ (values-ref _g19260_ 1))
                      (_clauses16106_ (values-ref _g19260_ 2)))
                  (let ((_g19262_ (for-each gx#core-bind-runtime! _ids16104_)))
                    (let ((_defs16109_
                           (map _case-lambda-clause-def15735_
                                _ids16104_
                                _impls16105_)))
                      (let ()
                        (begin
                          (gxc#verbose
                           '"lift case-lambda clauses "
                           (gxc#generate-runtime-binding-id _L16050_)
                           '" => "
                           (map gxc#identifier-symbol _ids16104_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (foldr1 cons
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _L16050_ '())
                                                            (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#case-lambda _clauses16106_)
                           (gx#datum->syntax__0 '#f 'case-lambda-expr))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx15733_)
                                               '())
                                         _defs16109_))
                           _stx15733_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1607616091_)))
                                             (_g1606716081_ _g1606816084_)))))
                                  (let ((_g1606516134_
                                         (lambda (_g1606816115_)
                                           (if (gx#stx-pair? _g1606816115_)
                                               (let ((_e1607016117_
                                                      (gx#stx-e
                                                       _g1606816115_)))
                                                 (let ((_hd1607116120_
                                                        (##car _e1607016117_))
                                                       (_tl1607216122_
                                                        (##cdr _e1607016117_)))
                                                   ((lambda (_L16125_)
                                                      (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16125_)
                  _stx15733_
                  (_g1606616112_ _g1606816115_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1607216122_)))
                                               (_g1606616112_
                                                _g1606816115_)))))
                                    (_g1606516134_ _L16049_))))
                              (_g1573716012_ _g1574016015_)))
                        _hd1575316044_
                        _hd1575016036_)
                       (_g1573716012_ _g1574016015_))))
               (_g1573716012_ _g1574016015_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1573716012_
                                                    _g1574016015_))))
                                           (_g1573716012_ _g1574016015_))))
                                   (_g1573716012_ _g1574016015_))))
                           (_g1573716012_ _g1574016015_)))))
                (_g1573616137_ _stx15733_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx15156_)
      (let ((_bind-e__opt-lambda15715__1920919210_
             (lambda (_id15717_ _expr15718_ _compile?15719_)
               (cons (cons _id15717_ '())
                     (cons (if _compile?15719_
                               (gxc#compile-e _expr15718_)
                               _expr15718_)
                           '())))))
        (let ((_bind-e__0__1921119212_
               (lambda (_id15724_ _expr15725_)
                 (let ((_compile?15727_ '#t))
                   (_bind-e__opt-lambda15715__1920919210_
                    _id15724_
                    _expr15725_
                    _compile?15727_)))))
          (let ((_bind-e15158_
                 (lambda _g19272_
                   (let ((_g19271_ (length _g19272_)))
                     (cond ((fx= _g19271_ 2)
                            (apply _bind-e__0__1921119212_ _g19272_))
                           ((fx= _g19271_ 3)
                            (apply _bind-e__opt-lambda15715__1920919210_
                                   _g19272_))
                           (else
                            (error "No clause matching arguments"
                                   _g19272_)))))))
            (let ((_compile-bindings15159_
                   (lambda (_rest15301_)
                     ((letrec ((_lp15303_
                                (lambda (_rest15305_
                                         _lift115306_
                                         _lift215307_
                                         _bind15308_)
                                  (let ((_rest1530915317_ _rest15305_))
                                    (let ((_E1531215321_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1530915317_))))
                                      (let ((_else1531115325_
                                             (lambda ()
                                               (values (reverse _lift115306_)
                                                       (reverse _lift215307_)
                                                       (reverse _bind15308_)))))
                                        (let ((_K1531315704_
                                               (lambda (_rest15328_ _hd15329_)
                                                 (let ((_g1533315369_
                                                        (lambda (_g1533415366_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1533415366_))))
                                                   (let ((_g1533215410_
                                                          (lambda (_g1533415372_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1533415372_)
                        (let ((_e1535915374_ (gx#stx-e _g1533415372_)))
                          (let ((_hd1536015377_ (##car _e1535915374_))
                                (_tl1536115379_ (##cdr _e1535915374_)))
                            (if (gx#stx-pair? _tl1536115379_)
                                (let ((_e1536215382_
                                       (gx#stx-e _tl1536115379_)))
                                  (let ((_hd1536315385_ (##car _e1536215382_))
                                        (_tl1536415387_ (##cdr _e1536215382_)))
                                    (if (gx#stx-null? _tl1536415387_)
                                        ((lambda (_L15390_ _L15391_)
                                           (_lp15303_
                                            _rest15328_
                                            _lift115306_
                                            _lift215307_
                                            (cons (cons _L15391_
                                                        (cons (gxc#compile-e
                                                               _L15390_)
                                                              '()))
                                                  _bind15308_)))
                                         _hd1536315385_
                                         _hd1536015377_)
                                        (_g1533315369_ _g1533415372_))))
                                (_g1533315369_ _g1533415372_))))
                        (_g1533315369_ _g1533415372_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1533115582_
                                                            (lambda (_g1533415413_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1533415413_)
                          (let ((_e1534815415_ (gx#stx-e _g1533415413_)))
                            (let ((_hd1534915418_ (##car _e1534815415_))
                                  (_tl1535015420_ (##cdr _e1534815415_)))
                              (if (gx#stx-pair? _hd1534915418_)
                                  (let ((_e1535115423_
                                         (gx#stx-e _hd1534915418_)))
                                    (let ((_hd1535215426_
                                           (##car _e1535115423_))
                                          (_tl1535315428_
                                           (##cdr _e1535115423_)))
                                      (if (gx#stx-null? _tl1535315428_)
                                          (if (gx#stx-pair? _tl1535015420_)
                                              (let ((_e1535415431_
                                                     (gx#stx-e
                                                      _tl1535015420_)))
                                                (let ((_hd1535515434_
                                                       (##car _e1535415431_))
                                                      (_tl1535615436_
                                                       (##cdr _e1535415431_)))
                                                  (if (gx#stx-null?
                                                       _tl1535615436_)
                                                      ((lambda (_L15439_
                                                                _L15440_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15440_)
                         (gxc#opt-lambda-expr? _L15439_)
                         '#f)
                     (let ((_g1545415484_
                            (lambda (_g1545515481_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1545515481_))))
                       (let ((_g1545315579_
                              (lambda (_g1545515487_)
                                (if (gx#stx-pair? _g1545515487_)
                                    (let ((_e1545915489_
                                           (gx#stx-e _g1545515487_)))
                                      (let ((_hd1546015492_
                                             (##car _e1545915489_))
                                            (_tl1546115494_
                                             (##cdr _e1545915489_)))
                                        (if (gx#stx-pair? _tl1546115494_)
                                            (let ((_e1546215497_
                                                   (gx#stx-e _tl1546115494_)))
                                              (let ((_hd1546315500_
                                                     (##car _e1546215497_))
                                                    (_tl1546415502_
                                                     (##cdr _e1546215497_)))
                                                (if (gx#stx-pair?
                                                     _hd1546315500_)
                                                    (let ((_e1546515505_
                                                           (gx#stx-e
                                                            _hd1546315500_)))
                                                      (let ((_hd1546615508_
                                                             (##car _e1546515505_))
                                                            (_tl1546715510_
                                                             (##cdr _e1546515505_)))
                                                        (if (gx#stx-pair?
                                                             _hd1546615508_)
                                                            (let ((_e1546815513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1546615508_)))
                      (let ((_hd1546915516_ (##car _e1546815513_))
                            (_tl1547015518_ (##cdr _e1546815513_)))
                        (if (gx#stx-pair? _hd1546915516_)
                            (let ((_e1547115521_ (gx#stx-e _hd1546915516_)))
                              (let ((_hd1547215524_ (##car _e1547115521_))
                                    (_tl1547315526_ (##cdr _e1547115521_)))
                                (if (gx#stx-null? _tl1547315526_)
                                    (if (gx#stx-pair? _tl1547015518_)
                                        (let ((_e1547415529_
                                               (gx#stx-e _tl1547015518_)))
                                          (let ((_hd1547515532_
                                                 (##car _e1547415529_))
                                                (_tl1547615534_
                                                 (##cdr _e1547415529_)))
                                            (if (gx#stx-null? _tl1547615534_)
                                                (if (gx#stx-null?
                                                     _tl1546715510_)
                                                    (if (gx#stx-pair?
                                                         _tl1546415502_)
                                                        (let ((_e1547715537_
                                                               (gx#stx-e
                                                                _tl1546415502_)))
                                                          (let ((_hd1547815540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1547715537_))
                        (_tl1547915542_ (##cdr _e1547715537_)))
                    (if (gx#stx-null? _tl1547915542_)
                        ((lambda (_L15545_ _L15546_ _L15547_)
                           (let ((_lambda-id15571_
                                  (make-symbol
                                   (gx#stx-e _L15440_)
                                   '"__"
                                   (gx#stx-e _L15547_)
                                   (gensym '__))))
                             (let ((_lambda-id15573_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15571_
                                     (gx#stx-source _stx15156_))))
                               (let ((_g19267_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15573_)))
                                 (let ((_new-case-lambda-expr15576_
                                        (gxc#apply-expression-subst
                                         _L15545_
                                         _L15547_
                                         _lambda-id15573_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15440_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15573_))
                                       (_lp15303_
                                        (cons (_bind-e__opt-lambda15715__1920919210_
                                               _L15440_
                                               _new-case-lambda-expr15576_
                                               '#f)
                                              _rest15328_)
                                        (cons (_bind-e__0__1921119212_
                                               _lambda-id15573_
                                               _L15546_)
                                              _lift115306_)
                                        _lift215307_
                                        _bind15308_))))))))
                         _hd1547815540_
                         _hd1547515532_
                         _hd1547215524_)
                        (_g1545415484_ _g1545515487_))))
                (_g1545415484_ _g1545515487_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1545415484_
                                                     _g1545515487_))
                                                (_g1545415484_
                                                 _g1545515487_))))
                                        (_g1545415484_ _g1545515487_))
                                    (_g1545415484_ _g1545515487_))))
                            (_g1545415484_ _g1545515487_))))
                    (_g1545415484_ _g1545515487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1545415484_
                                                     _g1545515487_))))
                                            (_g1545415484_ _g1545515487_))))
                                    (_g1545415484_ _g1545515487_)))))
                         (_g1545315579_ _L15439_)))
                     (_g1533215410_ _g1533415413_)))
               _hd1535515434_
               _hd1535215426_)
              (_g1533215410_ _g1533415413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1533215410_ _g1533415413_))
                                          (_g1533215410_ _g1533415413_))))
                                  (_g1533215410_ _g1533415413_))))
                          (_g1533215410_ _g1533415413_)))))
               (let ((_g1533015701_
                      (lambda (_g1533415585_)
                        (if (gx#stx-pair? _g1533415585_)
                            (let ((_e1533715587_ (gx#stx-e _g1533415585_)))
                              (let ((_hd1533815590_ (##car _e1533715587_))
                                    (_tl1533915592_ (##cdr _e1533715587_)))
                                (if (gx#stx-pair? _hd1533815590_)
                                    (let ((_e1534015595_
                                           (gx#stx-e _hd1533815590_)))
                                      (let ((_hd1534115598_
                                             (##car _e1534015595_))
                                            (_tl1534215600_
                                             (##cdr _e1534015595_)))
                                        (if (gx#stx-null? _tl1534215600_)
                                            (if (gx#stx-pair? _tl1533915592_)
                                                (let ((_e1534315603_
                                                       (gx#stx-e
                                                        _tl1533915592_)))
                                                  (let ((_hd1534415606_
                                                         (##car _e1534315603_))
                                                        (_tl1534515608_
                                                         (##cdr _e1534315603_)))
                                                    (if (gx#stx-null?
                                                         _tl1534515608_)
                                                        ((lambda (_L15611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15612_)
                   (if (if (gx#identifier? _L15612_)
                           (gxc#case-lambda-expr? _L15611_)
                           '#f)
                       (let ((_g1562715641_
                              (lambda (_g1562815638_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1562815638_))))
                         (let ((_g1562615676_
                                (lambda (_g1562815644_)
                                  (if (gx#stx-pair? _g1562815644_)
                                      (let ((_e1563415646_
                                             (gx#stx-e _g1562815644_)))
                                        (let ((_hd1563515649_
                                               (##car _e1563415646_))
                                              (_tl1563615651_
                                               (##cdr _e1563415646_)))
                                          ((lambda (_L15654_)
                                             (let ((_g19268_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16142
                                                     _stx15156_
                                                     _L15612_
                                                     _L15654_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19269_
                                                        (values-count
                                                         _g19268_)))
                                                   (if (not (fx= _g19269_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19269_)))
                                                 (let ((_ids15664_
                                                        (values-ref
                                                         _g19268_
                                                         0))
                                                       (_impls15665_
                                                        (values-ref
                                                         _g19268_
                                                         1))
                                                       (_clauses15666_
                                                        (values-ref
                                                         _g19268_
                                                         2)))
                                                   (let ((_g19270_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15664_)))
                                                     (let ((_xbind15669_
                                                            (map _bind-e15158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15664_
                         _impls15665_)))
               (let ((_expr*15671_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15666_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15673_
                        (_bind-e__opt-lambda15715__1920919210_
                         _L15612_
                         _expr*15671_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15612_)
                        '" => "
                        (map gxc#identifier-symbol _ids15664_))
                       (_lp15303_
                        _rest15328_
                        _lift115306_
                        (foldl1 cons _lift215307_ _xbind15669_)
                        (cons _bind*15673_ _bind15308_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1563615651_)))
                                      (_g1562715641_ _g1562815644_)))))
                           (let ((_g1562515698_
                                  (lambda (_g1562815679_)
                                    (if (gx#stx-pair? _g1562815679_)
                                        (let ((_e1563015681_
                                               (gx#stx-e _g1562815679_)))
                                          (let ((_hd1563115684_
                                                 (##car _e1563015681_))
                                                (_tl1563215686_
                                                 (##cdr _e1563015681_)))
                                            ((lambda (_L15689_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15689_)
                                                   (_lp15303_
                                                    _rest15328_
                                                    _lift115306_
                                                    _lift215307_
                                                    (cons (_bind-e__opt-lambda15715__1920919210_
                                                           _L15612_
                                                           _L15611_
                                                           '#f)
                                                          _bind15308_))
                                                   (_g1562615676_
                                                    _g1562815679_)))
                                             _tl1563215686_)))
                                        (_g1562615676_ _g1562815679_)))))
                             (_g1562515698_ _L15611_))))
                       (_g1533115582_ _g1533415585_)))
                 _hd1534415606_
                 _hd1534115598_)
                (_g1533115582_ _g1533415585_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1533115582_ _g1533415585_))
                                            (_g1533115582_ _g1533415585_))))
                                    (_g1533115582_ _g1533415585_))))
                            (_g1533115582_ _g1533415585_)))))
                 (_g1533015701_ _hd15329_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1530915317_)
                                              (let ((_hd1531415707_
                                                     (##car _rest1530915317_))
                                                    (_tl1531515709_
                                                     (##cdr _rest1530915317_)))
                                                (let ((_hd15712_
                                                       _hd1531415707_))
                                                  (let ((_rest15714_
                                                         _tl1531515709_))
                                                    (_K1531315704_
                                                     _rest15714_
                                                     _hd15712_))))
                                              (_else1531115325_)))))))))
                        _lp15303_)
                      _rest15301_
                      '()
                      '()
                      '()))))
              (let ((_g1516215188_
                     (lambda (_g1516315185_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1516315185_))))
                (let ((_g1516115195_
                       (lambda (_g1516315191_)
                         ((lambda () (gxc#xform-let-values% _stx15156_))))))
                  (let ((_g1516015298_
                         (lambda (_g1516315198_)
                           (if (gx#stx-pair? _g1516315198_)
                               (let ((_e1516615200_ (gx#stx-e _g1516315198_)))
                                 (let ((_hd1516715203_ (##car _e1516615200_))
                                       (_tl1516815205_ (##cdr _e1516615200_)))
                                   (if (gx#stx-pair? _tl1516815205_)
                                       (let ((_e1516915208_
                                              (gx#stx-e _tl1516815205_)))
                                         (let ((_hd1517015211_
                                                (##car _e1516915208_))
                                               (_tl1517115213_
                                                (##cdr _e1516915208_)))
                                           (if (gx#stx-pair/null?
                                                _hd1517015211_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1517015211_)
                                                         '0)
                                                   (let ((_g19263_
                                                          (gx#syntax-split-splice
                                                           _hd1517015211_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19264_
                                                              (values-count
                                                               _g19263_)))
                                                         (if (not (fx= _g19264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19264_)))
               (let ((_target1517215216_ (values-ref _g19263_ 0))
                     (_tl1517415218_ (values-ref _g19263_ 1)))
                 (if (gx#stx-null? _tl1517415218_)
                     (letrec ((_loop1517515221_
                               (lambda (_hd1517315224_ _bind1517915226_)
                                 (if (gx#stx-pair? _hd1517315224_)
                                     (let ((_e1517615229_
                                            (gx#stx-e _hd1517315224_)))
                                       (let ((_lp-hd1517715232_
                                              (##car _e1517615229_))
                                             (_lp-tl1517815234_
                                              (##cdr _e1517615229_)))
                                         (_loop1517515221_
                                          _lp-tl1517815234_
                                          (cons _lp-hd1517715232_
                                                _bind1517915226_))))
                                     (let ((_bind1518015237_
                                            (reverse _bind1517915226_)))
                                       (if (gx#stx-pair? _tl1517115213_)
                                           (let ((_e1518115240_
                                                  (gx#stx-e _tl1517115213_)))
                                             (let ((_hd1518215243_
                                                    (##car _e1518115240_))
                                                   (_tl1518315245_
                                                    (##cdr _e1518115240_)))
                                               (if (gx#stx-null?
                                                    _tl1518315245_)
                                                   ((lambda (_L15248_ _L15249_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1526915272_ _g1527015274_)
                                      (cons _g1526915272_ _g1527015274_))
                                    '()
                                    _L15249_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_g19265_
                            (_compile-bindings15159_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1527715280_ _g1527815282_)
                                         (cons _g1527715280_ _g1527815282_))
                                       '()
                                       _L15249_)))))
                       (begin
                         (let ((_g19266_ (values-count _g19265_)))
                           (if (not (fx= _g19266_ 3))
                               (error "Context expects 3 values" _g19266_)))
                         (let ((_lift115285_ (values-ref _g19265_ 0))
                               (_lift215286_ (values-ref _g19265_ 1))
                               (_hd15287_ (values-ref _g19265_ 2)))
                           (let ((_body15289_ (gxc#compile-e _L15248_)))
                             (let ((_expr15291_
                                    (gxc#xform-wrap-source
                                     (cons '%#let-values
                                           (cons _hd15287_
                                                 (cons _body15289_ '())))
                                     _stx15156_)))
                               (let ((_expr15293_
                                      (if (null? _lift215286_)
                                          _expr15291_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift215286_
                                                       (cons _expr15291_ '())))
                                           _stx15156_))))
                                 (let ((_expr15295_
                                        (if (null? _lift115285_)
                                            _expr15293_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift115285_
                                                         (cons _expr15293_
                                                               '())))
                                             _stx15156_))))
                                   (let () _expr15295_)))))))))
                   gx#current-expander-context
                   (let ((__obj19219 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19219)
                       __obj19219)))
                  (_g1516115195_ _g1516315198_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1518215243_
                                                    _bind1518015237_)
                                                   (_g1516115195_
                                                    _g1516315198_))))
                                           (_g1516115195_ _g1516315198_)))))))
                       (_loop1517515221_ _target1517215216_ '()))
                     (_g1516115195_ _g1516315198_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1516115195_
                                                    _g1516315198_))
                                               (_g1516115195_ _g1516315198_))))
                                       (_g1516115195_ _g1516315198_))))
                               (_g1516115195_ _g1516315198_)))))
                    (_g1516015298_ _stx15156_))))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx14588_)
      (let ((_bind-e__opt-lambda15138__1921419215_
             (lambda (_id15140_ _expr15141_ _compile?15142_)
               (cons (cons _id15140_ '())
                     (cons (if _compile?15142_
                               (gxc#compile-e _expr15141_)
                               _expr15141_)
                           '())))))
        (let ((_bind-e__0__1921619217_
               (lambda (_id15147_ _expr15148_)
                 (let ((_compile?15150_ '#t))
                   (_bind-e__opt-lambda15138__1921419215_
                    _id15147_
                    _expr15148_
                    _compile?15150_)))))
          (let ((_bind-e14590_
                 (lambda _g19280_
                   (let ((_g19279_ (length _g19280_)))
                     (cond ((fx= _g19279_ 2)
                            (apply _bind-e__0__1921619217_ _g19280_))
                           ((fx= _g19279_ 3)
                            (apply _bind-e__opt-lambda15138__1921419215_
                                   _g19280_))
                           (else
                            (error "No clause matching arguments"
                                   _g19280_)))))))
            (let ((_compile-bindings14591_
                   (lambda (_rest14726_)
                     ((letrec ((_lp14728_
                                (lambda (_rest14730_ _bind14731_)
                                  (let ((_rest1473214740_ _rest14730_))
                                    (let ((_E1473514744_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1473214740_))))
                                      (let ((_else1473414748_
                                             (lambda ()
                                               (reverse _bind14731_))))
                                        (let ((_K1473615127_
                                               (lambda (_rest14751_ _hd14752_)
                                                 (let ((_g1475614792_
                                                        (lambda (_g1475714789_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1475714789_))))
                                                   (let ((_g1475514833_
                                                          (lambda (_g1475714795_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1475714795_)
                        (let ((_e1478214797_ (gx#stx-e _g1475714795_)))
                          (let ((_hd1478314800_ (##car _e1478214797_))
                                (_tl1478414802_ (##cdr _e1478214797_)))
                            (if (gx#stx-pair? _tl1478414802_)
                                (let ((_e1478514805_
                                       (gx#stx-e _tl1478414802_)))
                                  (let ((_hd1478614808_ (##car _e1478514805_))
                                        (_tl1478714810_ (##cdr _e1478514805_)))
                                    (if (gx#stx-null? _tl1478714810_)
                                        ((lambda (_L14813_ _L14814_)
                                           (_lp14728_
                                            _rest14751_
                                            (cons (cons _L14814_
                                                        (cons (gxc#compile-e
                                                               _L14813_)
                                                              '()))
                                                  _bind14731_)))
                                         _hd1478614808_
                                         _hd1478314800_)
                                        (_g1475614792_ _g1475714795_))))
                                (_g1475614792_ _g1475714795_))))
                        (_g1475614792_ _g1475714795_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1475415005_
                                                            (lambda (_g1475714836_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1475714836_)
                          (let ((_e1477114838_ (gx#stx-e _g1475714836_)))
                            (let ((_hd1477214841_ (##car _e1477114838_))
                                  (_tl1477314843_ (##cdr _e1477114838_)))
                              (if (gx#stx-pair? _hd1477214841_)
                                  (let ((_e1477414846_
                                         (gx#stx-e _hd1477214841_)))
                                    (let ((_hd1477514849_
                                           (##car _e1477414846_))
                                          (_tl1477614851_
                                           (##cdr _e1477414846_)))
                                      (if (gx#stx-null? _tl1477614851_)
                                          (if (gx#stx-pair? _tl1477314843_)
                                              (let ((_e1477714854_
                                                     (gx#stx-e
                                                      _tl1477314843_)))
                                                (let ((_hd1477814857_
                                                       (##car _e1477714854_))
                                                      (_tl1477914859_
                                                       (##cdr _e1477714854_)))
                                                  (if (gx#stx-null?
                                                       _tl1477914859_)
                                                      ((lambda (_L14862_
                                                                _L14863_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14863_)
                         (gxc#opt-lambda-expr? _L14862_)
                         '#f)
                     (let ((_g1487714907_
                            (lambda (_g1487814904_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1487814904_))))
                       (let ((_g1487615002_
                              (lambda (_g1487814910_)
                                (if (gx#stx-pair? _g1487814910_)
                                    (let ((_e1488214912_
                                           (gx#stx-e _g1487814910_)))
                                      (let ((_hd1488314915_
                                             (##car _e1488214912_))
                                            (_tl1488414917_
                                             (##cdr _e1488214912_)))
                                        (if (gx#stx-pair? _tl1488414917_)
                                            (let ((_e1488514920_
                                                   (gx#stx-e _tl1488414917_)))
                                              (let ((_hd1488614923_
                                                     (##car _e1488514920_))
                                                    (_tl1488714925_
                                                     (##cdr _e1488514920_)))
                                                (if (gx#stx-pair?
                                                     _hd1488614923_)
                                                    (let ((_e1488814928_
                                                           (gx#stx-e
                                                            _hd1488614923_)))
                                                      (let ((_hd1488914931_
                                                             (##car _e1488814928_))
                                                            (_tl1489014933_
                                                             (##cdr _e1488814928_)))
                                                        (if (gx#stx-pair?
                                                             _hd1488914931_)
                                                            (let ((_e1489114936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1488914931_)))
                      (let ((_hd1489214939_ (##car _e1489114936_))
                            (_tl1489314941_ (##cdr _e1489114936_)))
                        (if (gx#stx-pair? _hd1489214939_)
                            (let ((_e1489414944_ (gx#stx-e _hd1489214939_)))
                              (let ((_hd1489514947_ (##car _e1489414944_))
                                    (_tl1489614949_ (##cdr _e1489414944_)))
                                (if (gx#stx-null? _tl1489614949_)
                                    (if (gx#stx-pair? _tl1489314941_)
                                        (let ((_e1489714952_
                                               (gx#stx-e _tl1489314941_)))
                                          (let ((_hd1489814955_
                                                 (##car _e1489714952_))
                                                (_tl1489914957_
                                                 (##cdr _e1489714952_)))
                                            (if (gx#stx-null? _tl1489914957_)
                                                (if (gx#stx-null?
                                                     _tl1489014933_)
                                                    (if (gx#stx-pair?
                                                         _tl1488714925_)
                                                        (let ((_e1490014960_
                                                               (gx#stx-e
                                                                _tl1488714925_)))
                                                          (let ((_hd1490114963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1490014960_))
                        (_tl1490214965_ (##cdr _e1490014960_)))
                    (if (gx#stx-null? _tl1490214965_)
                        ((lambda (_L14968_ _L14969_ _L14970_)
                           (let ((_lambda-id14994_
                                  (make-symbol
                                   (gx#stx-e _L14863_)
                                   '"__"
                                   (gx#stx-e _L14970_)
                                   (gensym '__))))
                             (let ((_lambda-id14996_
                                    (gx#core-quote-syntax__1
                                     _lambda-id14994_
                                     (gx#stx-source _stx14588_))))
                               (let ((_g19275_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id14996_)))
                                 (let ((_new-case-lambda-expr14999_
                                        (gxc#apply-expression-subst
                                         _L14968_
                                         _L14970_
                                         _lambda-id14996_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L14863_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id14996_))
                                       (_lp14728_
                                        (cons (_bind-e__opt-lambda15138__1921419215_
                                               _L14863_
                                               _new-case-lambda-expr14999_
                                               '#f)
                                              _rest14751_)
                                        (cons (_bind-e__0__1921619217_
                                               _lambda-id14996_
                                               _L14969_)
                                              _bind14731_)))))))))
                         _hd1490114963_
                         _hd1489814955_
                         _hd1489514947_)
                        (_g1487714907_ _g1487814910_))))
                (_g1487714907_ _g1487814910_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1487714907_
                                                     _g1487814910_))
                                                (_g1487714907_
                                                 _g1487814910_))))
                                        (_g1487714907_ _g1487814910_))
                                    (_g1487714907_ _g1487814910_))))
                            (_g1487714907_ _g1487814910_))))
                    (_g1487714907_ _g1487814910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1487714907_
                                                     _g1487814910_))))
                                            (_g1487714907_ _g1487814910_))))
                                    (_g1487714907_ _g1487814910_)))))
                         (_g1487615002_ _L14862_)))
                     (_g1475514833_ _g1475714836_)))
               _hd1477814857_
               _hd1477514849_)
              (_g1475514833_ _g1475714836_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1475514833_ _g1475714836_))
                                          (_g1475514833_ _g1475714836_))))
                                  (_g1475514833_ _g1475714836_))))
                          (_g1475514833_ _g1475714836_)))))
               (let ((_g1475315124_
                      (lambda (_g1475715008_)
                        (if (gx#stx-pair? _g1475715008_)
                            (let ((_e1476015010_ (gx#stx-e _g1475715008_)))
                              (let ((_hd1476115013_ (##car _e1476015010_))
                                    (_tl1476215015_ (##cdr _e1476015010_)))
                                (if (gx#stx-pair? _hd1476115013_)
                                    (let ((_e1476315018_
                                           (gx#stx-e _hd1476115013_)))
                                      (let ((_hd1476415021_
                                             (##car _e1476315018_))
                                            (_tl1476515023_
                                             (##cdr _e1476315018_)))
                                        (if (gx#stx-null? _tl1476515023_)
                                            (if (gx#stx-pair? _tl1476215015_)
                                                (let ((_e1476615026_
                                                       (gx#stx-e
                                                        _tl1476215015_)))
                                                  (let ((_hd1476715029_
                                                         (##car _e1476615026_))
                                                        (_tl1476815031_
                                                         (##cdr _e1476615026_)))
                                                    (if (gx#stx-null?
                                                         _tl1476815031_)
                                                        ((lambda (_L15034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15035_)
                   (if (if (gx#identifier? _L15035_)
                           (gxc#case-lambda-expr? _L15034_)
                           '#f)
                       (let ((_g1505015064_
                              (lambda (_g1505115061_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1505115061_))))
                         (let ((_g1504915099_
                                (lambda (_g1505115067_)
                                  (if (gx#stx-pair? _g1505115067_)
                                      (let ((_e1505715069_
                                             (gx#stx-e _g1505115067_)))
                                        (let ((_hd1505815072_
                                               (##car _e1505715069_))
                                              (_tl1505915074_
                                               (##cdr _e1505715069_)))
                                          ((lambda (_L15077_)
                                             (let ((_g19276_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16142
                                                     _stx14588_
                                                     _L15035_
                                                     _L15077_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19277_
                                                        (values-count
                                                         _g19276_)))
                                                   (if (not (fx= _g19277_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19277_)))
                                                 (let ((_ids15087_
                                                        (values-ref
                                                         _g19276_
                                                         0))
                                                       (_impls15088_
                                                        (values-ref
                                                         _g19276_
                                                         1))
                                                       (_clauses15089_
                                                        (values-ref
                                                         _g19276_
                                                         2)))
                                                   (let ((_g19278_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15087_)))
                                                     (let ((_xbind15092_
                                                            (map _bind-e14590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15087_
                         _impls15088_)))
               (let ((_expr*15094_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15089_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15096_
                        (_bind-e__opt-lambda15138__1921419215_
                         _L15035_
                         _expr*15094_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15035_)
                        '" => "
                        (map gxc#identifier-symbol _ids15087_))
                       (_lp14728_
                        _rest14751_
                        (cons _bind*15096_
                              (foldl1 cons
                                      _bind14731_
                                      _xbind15092_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1505915074_)))
                                      (_g1505015064_ _g1505115067_)))))
                           (let ((_g1504815121_
                                  (lambda (_g1505115102_)
                                    (if (gx#stx-pair? _g1505115102_)
                                        (let ((_e1505315104_
                                               (gx#stx-e _g1505115102_)))
                                          (let ((_hd1505415107_
                                                 (##car _e1505315104_))
                                                (_tl1505515109_
                                                 (##cdr _e1505315104_)))
                                            ((lambda (_L15112_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15112_)
                                                   (_lp14728_
                                                    _rest14751_
                                                    (cons (_bind-e__opt-lambda15138__1921419215_
                                                           _L15035_
                                                           _L15034_
                                                           '#f)
                                                          _bind14731_))
                                                   (_g1504915099_
                                                    _g1505115102_)))
                                             _tl1505515109_)))
                                        (_g1504915099_ _g1505115102_)))))
                             (_g1504815121_ _L15034_))))
                       (_g1475415005_ _g1475715008_)))
                 _hd1476715029_
                 _hd1476415021_)
                (_g1475415005_ _g1475715008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1475415005_ _g1475715008_))
                                            (_g1475415005_ _g1475715008_))))
                                    (_g1475415005_ _g1475715008_))))
                            (_g1475415005_ _g1475715008_)))))
                 (_g1475315124_ _hd14752_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1473214740_)
                                              (let ((_hd1473715130_
                                                     (##car _rest1473214740_))
                                                    (_tl1473815132_
                                                     (##cdr _rest1473214740_)))
                                                (let ((_hd15135_
                                                       _hd1473715130_))
                                                  (let ((_rest15137_
                                                         _tl1473815132_))
                                                    (_K1473615127_
                                                     _rest15137_
                                                     _hd15135_))))
                                              (_else1473414748_)))))))))
                        _lp14728_)
                      _rest14726_
                      '()))))
              (let ((_g1459414621_
                     (lambda (_g1459514618_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1459514618_))))
                (let ((_g1459314628_
                       (lambda (_g1459514624_)
                         ((lambda () (gxc#xform-let-values% _stx14588_))))))
                  (let ((_g1459214723_
                         (lambda (_g1459514631_)
                           (if (gx#stx-pair? _g1459514631_)
                               (let ((_e1459914633_ (gx#stx-e _g1459514631_)))
                                 (let ((_hd1460014636_ (##car _e1459914633_))
                                       (_tl1460114638_ (##cdr _e1459914633_)))
                                   (if (gx#stx-pair? _tl1460114638_)
                                       (let ((_e1460214641_
                                              (gx#stx-e _tl1460114638_)))
                                         (let ((_hd1460314644_
                                                (##car _e1460214641_))
                                               (_tl1460414646_
                                                (##cdr _e1460214641_)))
                                           (if (gx#stx-pair/null?
                                                _hd1460314644_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1460314644_)
                                                         '0)
                                                   (let ((_g19273_
                                                          (gx#syntax-split-splice
                                                           _hd1460314644_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19274_
                                                              (values-count
                                                               _g19273_)))
                                                         (if (not (fx= _g19274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19274_)))
               (let ((_target1460514649_ (values-ref _g19273_ 0))
                     (_tl1460714651_ (values-ref _g19273_ 1)))
                 (if (gx#stx-null? _tl1460714651_)
                     (letrec ((_loop1460814654_
                               (lambda (_hd1460614657_ _bind1461214659_)
                                 (if (gx#stx-pair? _hd1460614657_)
                                     (let ((_e1460914662_
                                            (gx#stx-e _hd1460614657_)))
                                       (let ((_lp-hd1461014665_
                                              (##car _e1460914662_))
                                             (_lp-tl1461114667_
                                              (##cdr _e1460914662_)))
                                         (_loop1460814654_
                                          _lp-tl1461114667_
                                          (cons _lp-hd1461014665_
                                                _bind1461214659_))))
                                     (let ((_bind1461314670_
                                            (reverse _bind1461214659_)))
                                       (if (gx#stx-pair? _tl1460414646_)
                                           (let ((_e1461414673_
                                                  (gx#stx-e _tl1460414646_)))
                                             (let ((_hd1461514676_
                                                    (##car _e1461414673_))
                                                   (_tl1461614678_
                                                    (##cdr _e1461414673_)))
                                               (if (gx#stx-null?
                                                    _tl1461614678_)
                                                   ((lambda (_L14681_
                                                             _L14682_
                                                             _L14683_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1470414707_ _g1470514709_)
                                      (cons _g1470414707_ _g1470514709_))
                                    '()
                                    _L14682_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_hd14720_
                            (_compile-bindings14591_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1471214715_ _g1471314717_)
                                         (cons _g1471214715_ _g1471314717_))
                                       '()
                                       _L14682_))))
                           (_body14721_ (gxc#compile-e _L14681_)))
                       (gxc#xform-wrap-source
                        (cons _L14683_ (cons _hd14720_ (cons _body14721_ '())))
                        _stx14588_)))
                   gx#current-expander-context
                   (let ((__obj19220 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19220)
                       __obj19220)))
                  (_g1459314628_ _g1459514631_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1461514676_
                                                    _bind1461314670_
                                                    _hd1460014636_)
                                                   (_g1459314628_
                                                    _g1459514631_))))
                                           (_g1459314628_ _g1459514631_)))))))
                       (_loop1460814654_ _target1460514649_ '()))
                     (_g1459314628_ _g1459514631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1459314628_
                                                    _g1459514631_))
                                               (_g1459314628_ _g1459514631_))))
                                       (_g1459314628_ _g1459514631_))))
                               (_g1459314628_ _g1459514631_)))))
                    (_g1459214723_ _stx14588_))))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind14509_)
      (let ((_g1451214529_
             (lambda (_g1451314526_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1451314526_))))
        (let ((_g1451114536_ (lambda (_g1451314532_) ((lambda () '#f)))))
          (let ((_g1451014585_
                 (lambda (_g1451314539_)
                   (if (gx#stx-pair? _g1451314539_)
                       (let ((_e1451614541_ (gx#stx-e _g1451314539_)))
                         (let ((_hd1451714544_ (##car _e1451614541_))
                               (_tl1451814546_ (##cdr _e1451614541_)))
                           (if (gx#stx-pair? _hd1451714544_)
                               (let ((_e1451914549_ (gx#stx-e _hd1451714544_)))
                                 (let ((_hd1452014552_ (##car _e1451914549_))
                                       (_tl1452114554_ (##cdr _e1451914549_)))
                                   (if (gx#stx-null? _tl1452114554_)
                                       (if (gx#stx-pair? _tl1451814546_)
                                           (let ((_e1452214557_
                                                  (gx#stx-e _tl1451814546_)))
                                             (let ((_hd1452314560_
                                                    (##car _e1452214557_))
                                                   (_tl1452414562_
                                                    (##cdr _e1452214557_)))
                                               (if (gx#stx-null?
                                                    _tl1452414562_)
                                                   ((lambda (_L14565_ _L14566_)
                                                      (if (gx#identifier?
                                                           _L14566_)
                                                          (let ((_$e14582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#case-lambda-expr? _L14565_)))
                    (if _$e14582_ _$e14582_ (gxc#opt-lambda-expr? _L14565_)))
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1452314560_
                                                    _hd1452014552_)
                                                   (_g1451114536_
                                                    _g1451314539_))))
                                           (_g1451114536_ _g1451314539_))
                                       (_g1451114536_ _g1451314539_))))
                               (_g1451114536_ _g1451314539_))))
                       (_g1451114536_ _g1451314539_)))))
            (_g1451014585_ _bind14509_))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx14447_ _id14448_ _new-id14449_)
      (let ((_g1445214465_
             (lambda (_g1445314462_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1445314462_))))
        (let ((_g1445114472_
               (lambda (_g1445314468_) ((lambda () _stx14447_)))))
          (let ((_g1445014506_
                 (lambda (_g1445314475_)
                   (if (gx#stx-pair? _g1445314475_)
                       (let ((_e1445514477_ (gx#stx-e _g1445314475_)))
                         (let ((_hd1445614480_ (##car _e1445514477_))
                               (_tl1445714482_ (##cdr _e1445514477_)))
                           (if (gx#stx-pair? _tl1445714482_)
                               (let ((_e1445814485_ (gx#stx-e _tl1445714482_)))
                                 (let ((_hd1445914488_ (##car _e1445814485_))
                                       (_tl1446014490_ (##cdr _e1445814485_)))
                                   (if (gx#stx-null? _tl1446014490_)
                                       ((lambda (_L14493_)
                                          (if (gx#free-identifier=?
                                               _L14493_
                                               _id14448_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id14449_ '()))
                                               _stx14447_)
                                              (_g1445114472_ _g1445314475_)))
                                        _hd1445914488_)
                                       (_g1445114472_ _g1445314475_))))
                               (_g1445114472_ _g1445314475_))))
                       (_g1445114472_ _g1445314475_)))))
            (_g1445014506_ _stx14447_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx14303_)
      (let ((_g1430614337_
             (lambda (_g1430714334_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1430714334_))))
        (let ((_g1430514382_
               (lambda (_g1430714340_)
                 (if (gx#stx-pair? _g1430714340_)
                     (let ((_e1432414342_ (gx#stx-e _g1430714340_)))
                       (let ((_hd1432514345_ (##car _e1432414342_))
                             (_tl1432614347_ (##cdr _e1432414342_)))
                         (if (gx#stx-pair? _tl1432614347_)
                             (let ((_e1432714350_ (gx#stx-e _tl1432614347_)))
                               (let ((_hd1432814353_ (##car _e1432714350_))
                                     (_tl1432914355_ (##cdr _e1432714350_)))
                                 (if (gx#stx-pair? _tl1432914355_)
                                     (let ((_e1433014358_
                                            (gx#stx-e _tl1432914355_)))
                                       (let ((_hd1433114361_
                                              (##car _e1433014358_))
                                             (_tl1433214363_
                                              (##cdr _e1433014358_)))
                                         (if (gx#stx-null? _tl1433214363_)
                                             ((lambda (_L14366_ _L14367_)
                                                (gxc#compile-e _L14366_))
                                              _hd1433114361_
                                              _hd1432814353_)
                                             (_g1430614337_ _g1430714340_))))
                                     (_g1430614337_ _g1430714340_))))
                             (_g1430614337_ _g1430714340_))))
                     (_g1430614337_ _g1430714340_)))))
          (let ((_g1430414444_
                 (lambda (_g1430714385_)
                   (if (gx#stx-pair? _g1430714385_)
                       (let ((_e1431014387_ (gx#stx-e _g1430714385_)))
                         (let ((_hd1431114390_ (##car _e1431014387_))
                               (_tl1431214392_ (##cdr _e1431014387_)))
                           (if (gx#stx-pair? _tl1431214392_)
                               (let ((_e1431314395_ (gx#stx-e _tl1431214392_)))
                                 (let ((_hd1431414398_ (##car _e1431314395_))
                                       (_tl1431514400_ (##cdr _e1431314395_)))
                                   (if (gx#stx-pair? _hd1431414398_)
                                       (let ((_e1431614403_
                                              (gx#stx-e _hd1431414398_)))
                                         (let ((_hd1431714406_
                                                (##car _e1431614403_))
                                               (_tl1431814408_
                                                (##cdr _e1431614403_)))
                                           (if (gx#stx-null? _tl1431814408_)
                                               (if (gx#stx-pair?
                                                    _tl1431514400_)
                                                   (let ((_e1431914411_
                                                          (gx#stx-e
                                                           _tl1431514400_)))
                                                     (let ((_hd1432014414_
                                                            (##car _e1431914411_))
                                                           (_tl1432114416_
                                                            (##cdr _e1431914411_)))
                                                       (if (gx#stx-null?
                                                            _tl1432114416_)
                                                           ((lambda (_L14419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L14420_)
                      (if (gx#identifier? _L14420_)
                          (let ((_sym14436_
                                 (gxc#generate-runtime-binding-id _L14420_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym14436_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym14436_)
                                  (let ((_type1443714439_
                                         (gxc#apply-basic-expression-type
                                          _L14419_)))
                                    (if _type1443714439_
                                        (let ((_type14442_ _type1443714439_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym14436_
                                           _type14442_))
                                        '#f)))
                              (gxc#compile-e _L14419_)))
                          (_g1430514382_ _g1430714385_)))
                    _hd1432014414_
                    _hd1431714406_)
                   (_g1430514382_ _g1430714385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1430514382_
                                                    _g1430714385_))
                                               (_g1430514382_ _g1430714385_))))
                                       (_g1430514382_ _g1430714385_))))
                               (_g1430514382_ _g1430714385_))))
                       (_g1430514382_ _g1430714385_)))))
            (_g1430414444_ _stx14303_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx14088_)
      (let ((_collect-e14090_
             (lambda (_hd14247_ _expr14248_)
               (let ((_g1425114261_
                      (lambda (_g1425214258_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1425214258_))))
                 (let ((_g1425014268_
                        (lambda (_g1425214264_) ((lambda () '#!void)))))
                   (let ((_g1424914300_
                          (lambda (_g1425214271_)
                            (if (gx#stx-pair? _g1425214271_)
                                (let ((_e1425414273_ (gx#stx-e _g1425214271_)))
                                  (let ((_hd1425514276_ (##car _e1425414273_))
                                        (_tl1425614278_ (##cdr _e1425414273_)))
                                    (if (gx#stx-null? _tl1425614278_)
                                        ((lambda (_L14281_)
                                           (if (gx#identifier? _L14281_)
                                               (let ((_sym14292_
                                                      (gxc#generate-runtime-binding-id
                                                       _L14281_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym14292_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym14292_)
                                                     (let ((_type1429314295_
                                                            (gxc#apply-basic-expression-type
                                                             _expr14248_)))
                                                       (if _type1429314295_
                                                           (let ((_type14298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1429314295_))
                     (gxc#optimizer-declare-type!__opt-lambda18993
                      _sym14292_
                      _type14298_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1425014268_ _g1425214271_)))
                                         _hd1425514276_)
                                        (_g1425014268_ _g1425214271_))))
                                (_g1425014268_ _g1425214271_)))))
                     (_g1424914300_ _hd14247_)))))))
        (let ((_g1409214127_
               (lambda (_g1409314124_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1409314124_))))
          (let ((_g1409114244_
                 (lambda (_g1409314130_)
                   (if (gx#stx-pair? _g1409314130_)
                       (let ((_e1409714132_ (gx#stx-e _g1409314130_)))
                         (let ((_hd1409814135_ (##car _e1409714132_))
                               (_tl1409914137_ (##cdr _e1409714132_)))
                           (if (gx#stx-pair? _tl1409914137_)
                               (let ((_e1410014140_ (gx#stx-e _tl1409914137_)))
                                 (let ((_hd1410114143_ (##car _e1410014140_))
                                       (_tl1410214145_ (##cdr _e1410014140_)))
                                   (if (gx#stx-pair/null? _hd1410114143_)
                                       (if (fx>= (gx#stx-length _hd1410114143_)
                                                 '0)
                                           (let ((_g19281_
                                                  (gx#syntax-split-splice
                                                   _hd1410114143_
                                                   '0)))
                                             (begin
                                               (let ((_g19282_
                                                      (values-count _g19281_)))
                                                 (if (not (fx= _g19282_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19282_)))
                                               (let ((_target1410314148_
                                                      (values-ref _g19281_ 0))
                                                     (_tl1410514150_
                                                      (values-ref _g19281_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1410514150_)
                                                     (letrec ((_loop1410614153_
                                                               (lambda (_hd1410414156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1411014158_
                                _hd1411114160_)
                         (if (gx#stx-pair? _hd1410414156_)
                             (let ((_e1410714163_ (gx#stx-e _hd1410414156_)))
                               (let ((_lp-hd1410814166_ (##car _e1410714163_))
                                     (_lp-tl1410914168_ (##cdr _e1410714163_)))
                                 (if (gx#stx-pair? _lp-hd1410814166_)
                                     (let ((_e1411414171_
                                            (gx#stx-e _lp-hd1410814166_)))
                                       (let ((_hd1411514174_
                                              (##car _e1411414171_))
                                             (_tl1411614176_
                                              (##cdr _e1411414171_)))
                                         (if (gx#stx-pair? _tl1411614176_)
                                             (let ((_e1411714179_
                                                    (gx#stx-e _tl1411614176_)))
                                               (let ((_hd1411814182_
                                                      (##car _e1411714179_))
                                                     (_tl1411914184_
                                                      (##cdr _e1411714179_)))
                                                 (if (gx#stx-null?
                                                      _tl1411914184_)
                                                     (_loop1410614153_
                                                      _lp-tl1410914168_
                                                      (cons _hd1411814182_
                                                            _expr1411014158_)
                                                      (cons _hd1411514174_
                                                            _hd1411114160_))
                                                     (_g1409214127_
                                                      _g1409314130_))))
                                             (_g1409214127_ _g1409314130_))))
                                     (_g1409214127_ _g1409314130_))))
                             (let ((_expr1411214187_
                                    (reverse _expr1411014158_))
                                   (_hd1411314189_ (reverse _hd1411114160_)))
                               (if (gx#stx-pair? _tl1410214145_)
                                   (let ((_e1412014192_
                                          (gx#stx-e _tl1410214145_)))
                                     (let ((_hd1412114195_
                                            (##car _e1412014192_))
                                           (_tl1412214197_
                                            (##cdr _e1412014192_)))
                                       (if (gx#stx-null? _tl1412214197_)
                                           ((lambda (_L14200_
                                                     _L14201_
                                                     _L14202_)
                                              (begin
                                                (for-each
                                                 _collect-e14090_
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1422214225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1422314227_)
                     (cons _g1422214225_ _g1422314227_))
                   '()
                   _L14202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1422914232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1423014234_)
                     (cons _g1422914232_ _g1423014234_))
                   '()
                   _L14201_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1423614239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1423714241_)
                     (cons _g1423614239_ _g1423714241_))
                   '()
                   _L14201_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L14200_)))
                                            _hd1412114195_
                                            _expr1411214187_
                                            _hd1411314189_)
                                           (_g1409214127_ _g1409314130_))))
                                   (_g1409214127_ _g1409314130_)))))))
               (_loop1410614153_ _target1410314148_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1409214127_
                                                      _g1409314130_)))))
                                           (_g1409214127_ _g1409314130_))
                                       (_g1409214127_ _g1409314130_))))
                               (_g1409214127_ _g1409314130_))))
                       (_g1409214127_ _g1409314130_)))))
            (_g1409114244_ _stx14088_))))))
  (define gxc#collect-type-call%
    (lambda (_stx13642_)
      (let ((_g1364613748_
             (lambda (_g1364713745_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1364713745_))))
        (let ((_g1364513755_ (lambda (_g1364713751_) ((lambda () '#!void)))))
          (let ((_g1364413905_
                 (lambda (_g1364713758_)
                   (if (gx#stx-pair? _g1364713758_)
                       (let ((_e1370513760_ (gx#stx-e _g1364713758_)))
                         (let ((_hd1370613763_ (##car _e1370513760_))
                               (_tl1370713765_ (##cdr _e1370513760_)))
                           (if (gx#stx-pair? _tl1370713765_)
                               (let ((_e1370813768_ (gx#stx-e _tl1370713765_)))
                                 (let ((_hd1370913771_ (##car _e1370813768_))
                                       (_tl1371013773_ (##cdr _e1370813768_)))
                                   (if (gx#stx-pair? _hd1370913771_)
                                       (let ((_e1371113776_
                                              (gx#stx-e _hd1370913771_)))
                                         (let ((_hd1371213779_
                                                (##car _e1371113776_))
                                               (_tl1371313781_
                                                (##cdr _e1371113776_)))
                                           (if (gx#identifier? _hd1371213779_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1371213779_)
                                                   (if (gx#stx-pair?
                                                        _tl1371313781_)
                                                       (let ((_e1371413784_
                                                              (gx#stx-e
                                                               _tl1371313781_)))
                                                         (let ((_hd1371513787_
                                                                (##car _e1371413784_))
                                                               (_tl1371613789_
                                                                (##cdr _e1371413784_)))
                                                           (if (gx#stx-null?
                                                                _tl1371613789_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1371013773_)
                           (let ((_e1371713792_ (gx#stx-e _tl1371013773_)))
                             (let ((_hd1371813795_ (##car _e1371713792_))
                                   (_tl1371913797_ (##cdr _e1371713792_)))
                               (if (gx#stx-pair? _hd1371813795_)
                                   (let ((_e1372013800_
                                          (gx#stx-e _hd1371813795_)))
                                     (let ((_hd1372113803_
                                            (##car _e1372013800_))
                                           (_tl1372213805_
                                            (##cdr _e1372013800_)))
                                       (if (gx#identifier? _hd1372113803_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1372113803_)
                                               (if (gx#stx-pair?
                                                    _tl1372213805_)
                                                   (let ((_e1372313808_
                                                          (gx#stx-e
                                                           _tl1372213805_)))
                                                     (let ((_hd1372413811_
                                                            (##car _e1372313808_))
                                                           (_tl1372513813_
                                                            (##cdr _e1372313808_)))
                                                       (if (gx#stx-null?
                                                            _tl1372513813_)
                                                           (if (gx#stx-pair?
                                                                _tl1371913797_)
                                                               (let ((_e1372613816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1371913797_)))
                         (let ((_hd1372713819_ (##car _e1372613816_))
                               (_tl1372813821_ (##cdr _e1372613816_)))
                           (if (gx#stx-pair? _hd1372713819_)
                               (let ((_e1372913824_ (gx#stx-e _hd1372713819_)))
                                 (let ((_hd1373013827_ (##car _e1372913824_))
                                       (_tl1373113829_ (##cdr _e1372913824_)))
                                   (if (gx#identifier? _hd1373013827_)
                                       (if (gx#stx-eq? '%#quote _hd1373013827_)
                                           (if (gx#stx-pair? _tl1373113829_)
                                               (let ((_e1373213832_
                                                      (gx#stx-e
                                                       _tl1373113829_)))
                                                 (let ((_hd1373313835_
                                                        (##car _e1373213832_))
                                                       (_tl1373413837_
                                                        (##cdr _e1373213832_)))
                                                   (if (gx#stx-null?
                                                        _tl1373413837_)
                                                       (if (gx#stx-pair?
                                                            _tl1372813821_)
                                                           (let ((_e1373513840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1372813821_)))
                     (let ((_hd1373613843_ (##car _e1373513840_))
                           (_tl1373713845_ (##cdr _e1373513840_)))
                       (if (gx#stx-pair? _hd1373613843_)
                           (let ((_e1373813848_ (gx#stx-e _hd1373613843_)))
                             (let ((_hd1373913851_ (##car _e1373813848_))
                                   (_tl1374013853_ (##cdr _e1373813848_)))
                               (if (gx#identifier? _hd1373913851_)
                                   (if (gx#stx-eq? '%#ref _hd1373913851_)
                                       (if (gx#stx-pair? _tl1374013853_)
                                           (let ((_e1374113856_
                                                  (gx#stx-e _tl1374013853_)))
                                             (let ((_hd1374213859_
                                                    (##car _e1374113856_))
                                                   (_tl1374313861_
                                                    (##cdr _e1374113856_)))
                                               (if (gx#stx-null?
                                                    _tl1374313861_)
                                                   (if (gx#stx-null?
                                                        _tl1373713845_)
                                                       ((lambda (_L13864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13865_
                         _L13866_
                         _L13867_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda18969
                       (gxc#generate-runtime-binding-id _L13866_)
                       (gx#stx-e _L13865_)
                       (gxc#generate-runtime-binding-id _L13864_)
                       '#f)
                      (_g1364513755_ _g1364713758_)))
                _hd1374213859_
                _hd1373313835_
                _hd1372413811_
                _hd1371513787_)
               (_g1364513755_ _g1364713758_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1364513755_
                                                    _g1364713758_))))
                                           (_g1364513755_ _g1364713758_))
                                       (_g1364513755_ _g1364713758_))
                                   (_g1364513755_ _g1364713758_))))
                           (_g1364513755_ _g1364713758_))))
                   (_g1364513755_ _g1364713758_))
               (_g1364513755_ _g1364713758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1364513755_ _g1364713758_))
                                           (_g1364513755_ _g1364713758_))
                                       (_g1364513755_ _g1364713758_))))
                               (_g1364513755_ _g1364713758_))))
                       (_g1364513755_ _g1364713758_))
                   (_g1364513755_ _g1364713758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1364513755_
                                                    _g1364713758_))
                                               (_g1364513755_ _g1364713758_))
                                           (_g1364513755_ _g1364713758_))))
                                   (_g1364513755_ _g1364713758_))))
                           (_g1364513755_ _g1364713758_))
                       (_g1364513755_ _g1364713758_))))
               (_g1364513755_ _g1364713758_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1364513755_
                                                    _g1364713758_))
                                               (_g1364513755_ _g1364713758_))))
                                       (_g1364513755_ _g1364713758_))))
                               (_g1364513755_ _g1364713758_))))
                       (_g1364513755_ _g1364713758_)))))
            (let ((_g1364314085_
                   (lambda (_g1364713908_)
                     (if (gx#stx-pair? _g1364713908_)
                         (let ((_e1365313910_ (gx#stx-e _g1364713908_)))
                           (let ((_hd1365413913_ (##car _e1365313910_))
                                 (_tl1365513915_ (##cdr _e1365313910_)))
                             (if (gx#stx-pair? _tl1365513915_)
                                 (let ((_e1365613918_
                                        (gx#stx-e _tl1365513915_)))
                                   (let ((_hd1365713921_ (##car _e1365613918_))
                                         (_tl1365813923_
                                          (##cdr _e1365613918_)))
                                     (if (gx#stx-pair? _hd1365713921_)
                                         (let ((_e1365913926_
                                                (gx#stx-e _hd1365713921_)))
                                           (let ((_hd1366013929_
                                                  (##car _e1365913926_))
                                                 (_tl1366113931_
                                                  (##cdr _e1365913926_)))
                                             (if (gx#identifier?
                                                  _hd1366013929_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1366013929_)
                                                     (if (gx#stx-pair?
                                                          _tl1366113931_)
                                                         (let ((_e1366213934_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1366113931_)))
                   (let ((_hd1366313937_ (##car _e1366213934_))
                         (_tl1366413939_ (##cdr _e1366213934_)))
                     (if (gx#stx-null? _tl1366413939_)
                         (if (gx#stx-pair? _tl1365813923_)
                             (let ((_e1366513942_ (gx#stx-e _tl1365813923_)))
                               (let ((_hd1366613945_ (##car _e1366513942_))
                                     (_tl1366713947_ (##cdr _e1366513942_)))
                                 (if (gx#stx-pair? _hd1366613945_)
                                     (let ((_e1366813950_
                                            (gx#stx-e _hd1366613945_)))
                                       (let ((_hd1366913953_
                                              (##car _e1366813950_))
                                             (_tl1367013955_
                                              (##cdr _e1366813950_)))
                                         (if (gx#identifier? _hd1366913953_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1366913953_)
                                                 (if (gx#stx-pair?
                                                      _tl1367013955_)
                                                     (let ((_e1367113958_
                                                            (gx#stx-e
                                                             _tl1367013955_)))
                                                       (let ((_hd1367213961_
                                                              (##car _e1367113958_))
                                                             (_tl1367313963_
                                                              (##cdr _e1367113958_)))
                                                         (if (gx#stx-null?
                                                              _tl1367313963_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1366713947_)
                         (let ((_e1367413966_ (gx#stx-e _tl1366713947_)))
                           (let ((_hd1367513969_ (##car _e1367413966_))
                                 (_tl1367613971_ (##cdr _e1367413966_)))
                             (if (gx#stx-pair? _hd1367513969_)
                                 (let ((_e1367713974_
                                        (gx#stx-e _hd1367513969_)))
                                   (let ((_hd1367813977_ (##car _e1367713974_))
                                         (_tl1367913979_
                                          (##cdr _e1367713974_)))
                                     (if (gx#identifier? _hd1367813977_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1367813977_)
                                             (if (gx#stx-pair? _tl1367913979_)
                                                 (let ((_e1368013982_
                                                        (gx#stx-e
                                                         _tl1367913979_)))
                                                   (let ((_hd1368113985_
                                                          (##car _e1368013982_))
                                                         (_tl1368213987_
                                                          (##cdr _e1368013982_)))
                                                     (if (gx#stx-null?
                                                          _tl1368213987_)
                                                         (if (gx#stx-pair?
                                                              _tl1367613971_)
                                                             (let ((_e1368313990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1367613971_)))
                       (let ((_hd1368413993_ (##car _e1368313990_))
                             (_tl1368513995_ (##cdr _e1368313990_)))
                         (if (gx#stx-pair? _hd1368413993_)
                             (let ((_e1368613998_ (gx#stx-e _hd1368413993_)))
                               (let ((_hd1368714001_ (##car _e1368613998_))
                                     (_tl1368814003_ (##cdr _e1368613998_)))
                                 (if (gx#identifier? _hd1368714001_)
                                     (if (gx#stx-eq? '%#ref _hd1368714001_)
                                         (if (gx#stx-pair? _tl1368814003_)
                                             (let ((_e1368914006_
                                                    (gx#stx-e _tl1368814003_)))
                                               (let ((_hd1369014009_
                                                      (##car _e1368914006_))
                                                     (_tl1369114011_
                                                      (##cdr _e1368914006_)))
                                                 (if (gx#stx-null?
                                                      _tl1369114011_)
                                                     (if (gx#stx-pair?
                                                          _tl1368513995_)
                                                         (let ((_e1369214014_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1368513995_)))
                   (let ((_hd1369314017_ (##car _e1369214014_))
                         (_tl1369414019_ (##cdr _e1369214014_)))
                     (if (gx#stx-pair? _hd1369314017_)
                         (let ((_e1369514022_ (gx#stx-e _hd1369314017_)))
                           (let ((_hd1369614025_ (##car _e1369514022_))
                                 (_tl1369714027_ (##cdr _e1369514022_)))
                             (if (gx#identifier? _hd1369614025_)
                                 (if (gx#stx-eq? '%#quote _hd1369614025_)
                                     (if (gx#stx-pair? _tl1369714027_)
                                         (let ((_e1369814030_
                                                (gx#stx-e _tl1369714027_)))
                                           (let ((_hd1369914033_
                                                  (##car _e1369814030_))
                                                 (_tl1370014035_
                                                  (##cdr _e1369814030_)))
                                             (if (gx#stx-null? _tl1370014035_)
                                                 (if (gx#stx-null?
                                                      _tl1369414019_)
                                                     ((lambda (_L14038_
                                                               _L14039_
                                                               _L14040_
                                                               _L14041_
                                                               _L14042_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14042_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda18969
                     (gxc#generate-runtime-binding-id _L14041_)
                     (gx#stx-e _L14040_)
                     (gxc#generate-runtime-binding-id _L14039_)
                     (gx#stx-e _L14038_))
                    (_g1364413905_ _g1364713908_)))
              _hd1369914033_
              _hd1369014009_
              _hd1368113985_
              _hd1367213961_
              _hd1366313937_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1364413905_
                                                      _g1364713908_))
                                                 (_g1364413905_
                                                  _g1364713908_))))
                                         (_g1364413905_ _g1364713908_))
                                     (_g1364413905_ _g1364713908_))
                                 (_g1364413905_ _g1364713908_))))
                         (_g1364413905_ _g1364713908_))))
                 (_g1364413905_ _g1364713908_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1364413905_
                                                      _g1364713908_))))
                                             (_g1364413905_ _g1364713908_))
                                         (_g1364413905_ _g1364713908_))
                                     (_g1364413905_ _g1364713908_))))
                             (_g1364413905_ _g1364713908_))))
                     (_g1364413905_ _g1364713908_))
                 (_g1364413905_ _g1364713908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1364413905_ _g1364713908_))
                                             (_g1364413905_ _g1364713908_))
                                         (_g1364413905_ _g1364713908_))))
                                 (_g1364413905_ _g1364713908_))))
                         (_g1364413905_ _g1364713908_))
                     (_g1364413905_ _g1364713908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1364413905_
                                                      _g1364713908_))
                                                 (_g1364413905_ _g1364713908_))
                                             (_g1364413905_ _g1364713908_))))
                                     (_g1364413905_ _g1364713908_))))
                             (_g1364413905_ _g1364713908_))
                         (_g1364413905_ _g1364713908_))))
                 (_g1364413905_ _g1364713908_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1364413905_
                                                      _g1364713908_))
                                                 (_g1364413905_
                                                  _g1364713908_))))
                                         (_g1364413905_ _g1364713908_))))
                                 (_g1364413905_ _g1364713908_))))
                         (_g1364413905_ _g1364713908_)))))
              (_g1364314085_ _stx13642_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx13582_)
      (let ((_g1358513598_
             (lambda (_g1358613595_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1358613595_))))
        (let ((_g1358413605_ (lambda (_g1358613601_) ((lambda () '#f)))))
          (let ((_g1358313639_
                 (lambda (_g1358613608_)
                   (if (gx#stx-pair? _g1358613608_)
                       (let ((_e1358813610_ (gx#stx-e _g1358613608_)))
                         (let ((_hd1358913613_ (##car _e1358813610_))
                               (_tl1359013615_ (##cdr _e1358813610_)))
                           (if (gx#stx-pair? _tl1359013615_)
                               (let ((_e1359113618_ (gx#stx-e _tl1359013615_)))
                                 (let ((_hd1359213621_ (##car _e1359113618_))
                                       (_tl1359313623_ (##cdr _e1359113618_)))
                                   (if (gx#stx-null? _tl1359313623_)
                                       ((lambda (_L13626_)
                                          (gxc#compile-e _L13626_))
                                        _hd1359213621_)
                                       (_g1358413605_ _g1358613608_))))
                               (_g1358413605_ _g1358613608_))))
                       (_g1358413605_ _g1358613608_)))))
            (_g1358313639_ _stx13582_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx13007_)
      (let ((_g1301213133_
             (lambda (_g1301313130_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1301313130_))))
        (let ((_g1301113140_ (lambda (_g1301313136_) ((lambda () '#f)))))
          (let ((_g1301013164_
                 (lambda (_g1301313143_)
                   (if (gx#stx-pair? _g1301313143_)
                       (let ((_e1312613145_ (gx#stx-e _g1301313143_)))
                         (let ((_hd1312713148_ (##car _e1312613145_))
                               (_tl1312813150_ (##cdr _e1312613145_)))
                           ((lambda (_L13153_)
                              (if (gxc#dispatch-lambda-form? _L13153_)
                                  (let ((__obj19221
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj19221
                                       'lambda
                                       (gxc#lambda-form-arity _L13153_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13153_))
                                      __obj19221))
                                  (_g1301113140_ _g1301313143_)))
                            _tl1312813150_)))
                       (_g1301113140_ _g1301313143_)))))
            (let ((_g1300913394_
                   (lambda (_g1301313167_)
                     (if (gx#stx-pair? _g1301313167_)
                         (let ((_e1307113169_ (gx#stx-e _g1301313167_)))
                           (let ((_hd1307213172_ (##car _e1307113169_))
                                 (_tl1307313174_ (##cdr _e1307113169_)))
                             (if (gx#stx-pair? _tl1307313174_)
                                 (let ((_e1307413177_
                                        (gx#stx-e _tl1307313174_)))
                                   (let ((_hd1307513180_ (##car _e1307413177_))
                                         (_tl1307613182_
                                          (##cdr _e1307413177_)))
                                     (if (gx#stx-pair/null? _hd1307513180_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1307513180_)
                                                   '0)
                                             (let ((_g19283_
                                                    (gx#syntax-split-splice
                                                     _hd1307513180_
                                                     '0)))
                                               (begin
                                                 (let ((_g19284_
                                                        (values-count
                                                         _g19283_)))
                                                   (if (not (fx= _g19284_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19284_)))
                                                 (let ((_target1307713185_
                                                        (values-ref
                                                         _g19283_
                                                         0))
                                                       (_tl1307913187_
                                                        (values-ref
                                                         _g19283_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1307913187_)
                                                       (letrec ((_loop1308013190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1307813193_ _arg1308413195_)
                           (if (gx#stx-pair? _hd1307813193_)
                               (let ((_e1308113198_ (gx#stx-e _hd1307813193_)))
                                 (let ((_lp-hd1308213201_
                                        (##car _e1308113198_))
                                       (_lp-tl1308313203_
                                        (##cdr _e1308113198_)))
                                   (_loop1308013190_
                                    _lp-tl1308313203_
                                    (cons _lp-hd1308213201_ _arg1308413195_))))
                               (let ((_arg1308513206_
                                      (reverse _arg1308413195_)))
                                 (if (gx#stx-pair? _tl1307613182_)
                                     (let ((_e1308613209_
                                            (gx#stx-e _tl1307613182_)))
                                       (let ((_hd1308713212_
                                              (##car _e1308613209_))
                                             (_tl1308813214_
                                              (##cdr _e1308613209_)))
                                         (if (gx#stx-pair? _hd1308713212_)
                                             (let ((_e1308913217_
                                                    (gx#stx-e _hd1308713212_)))
                                               (let ((_hd1309013220_
                                                      (##car _e1308913217_))
                                                     (_tl1309113222_
                                                      (##cdr _e1308913217_)))
                                                 (if (gx#identifier?
                                                      _hd1309013220_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1309013220_)
                                                         (if (gx#stx-pair?
                                                              _tl1309113222_)
                                                             (let ((_e1309213225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1309113222_)))
                       (let ((_hd1309313228_ (##car _e1309213225_))
                             (_tl1309413230_ (##cdr _e1309213225_)))
                         (if (gx#stx-pair? _hd1309313228_)
                             (let ((_e1309513233_ (gx#stx-e _hd1309313228_)))
                               (let ((_hd1309613236_ (##car _e1309513233_))
                                     (_tl1309713238_ (##cdr _e1309513233_)))
                                 (if (gx#identifier? _hd1309613236_)
                                     (if (gx#stx-eq? '%#ref _hd1309613236_)
                                         (if (gx#stx-pair? _tl1309713238_)
                                             (let ((_e1309813241_
                                                    (gx#stx-e _tl1309713238_)))
                                               (let ((_hd1309913244_
                                                      (##car _e1309813241_))
                                                     (_tl1310013246_
                                                      (##cdr _e1309813241_)))
                                                 (if (gx#stx-null?
                                                      _tl1310013246_)
                                                     (if (gx#stx-pair?
                                                          _tl1309413230_)
                                                         (let ((_e1310113249_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1309413230_)))
                   (let ((_hd1310213252_ (##car _e1310113249_))
                         (_tl1310313254_ (##cdr _e1310113249_)))
                     (if (gx#stx-pair? _hd1310213252_)
                         (let ((_e1310413257_ (gx#stx-e _hd1310213252_)))
                           (let ((_hd1310513260_ (##car _e1310413257_))
                                 (_tl1310613262_ (##cdr _e1310413257_)))
                             (if (gx#identifier? _hd1310513260_)
                                 (if (gx#stx-eq? '%#ref _hd1310513260_)
                                     (if (gx#stx-pair? _tl1310613262_)
                                         (let ((_e1310713265_
                                                (gx#stx-e _tl1310613262_)))
                                           (let ((_hd1310813268_
                                                  (##car _e1310713265_))
                                                 (_tl1310913270_
                                                  (##cdr _e1310713265_)))
                                             (if (gx#stx-null? _tl1310913270_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1310313254_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1310313254_)
                                                               '0)
                                                         (let ((_g19285_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1310313254_
                         '0)))
                   (begin
                     (let ((_g19286_ (values-count _g19285_)))
                       (if (not (fx= _g19286_ 2))
                           (error "Context expects 2 values" _g19286_)))
                     (let ((_target1311013273_ (values-ref _g19285_ 0))
                           (_tl1311213275_ (values-ref _g19285_ 1)))
                       (if (gx#stx-null? _tl1311213275_)
                           (letrec ((_loop1311313278_
                                     (lambda (_hd1311113281_ _xarg1311713283_)
                                       (if (gx#stx-pair? _hd1311113281_)
                                           (let ((_e1311413286_
                                                  (gx#stx-e _hd1311113281_)))
                                             (let ((_lp-hd1311513289_
                                                    (##car _e1311413286_))
                                                   (_lp-tl1311613291_
                                                    (##cdr _e1311413286_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1311513289_)
                                                   (let ((_e1311913294_
                                                          (gx#stx-e
                                                           _lp-hd1311513289_)))
                                                     (let ((_hd1312013297_
                                                            (##car _e1311913294_))
                                                           (_tl1312113299_
                                                            (##cdr _e1311913294_)))
                                                       (if (gx#identifier?
                                                            _hd1312013297_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1312013297_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1312113299_)
                           (let ((_e1312213302_ (gx#stx-e _tl1312113299_)))
                             (let ((_hd1312313305_ (##car _e1312213302_))
                                   (_tl1312413307_ (##cdr _e1312213302_)))
                               (if (gx#stx-null? _tl1312413307_)
                                   (_loop1311313278_
                                    _lp-tl1311613291_
                                    (cons _hd1312313305_ _xarg1311713283_))
                                   (_g1301013164_ _g1301313167_))))
                           (_g1301013164_ _g1301313167_))
                       (_g1301013164_ _g1301313167_))
                   (_g1301013164_ _g1301313167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1301013164_
                                                    _g1301313167_))))
                                           (let ((_xarg1311813310_
                                                  (reverse _xarg1311713283_)))
                                             (if (gx#stx-null? _tl1308813214_)
                                                 ((lambda (_L13313_
                                                           _L13314_
                                                           _L13315_
                                                           _L13316_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1335313356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1335413358_)
                                 (cons _g1335313356_ _g1335413358_))
                               '()
                               _L13316_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L13315_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1336013363_
                                                            _g1336113365_)
                                                     (cons _g1336013363_
                                                           _g1336113365_))
                                                   '()
                                                   _L13316_)))
                                 (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1336713370_
                                                            _g1336813372_)
                                                     (cons _g1336713370_
                                                           _g1336813372_))
                                                   '()
                                                   _L13313_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1337413377_
                                                       _g1337513379_)
                                                (cons _g1337413377_
                                                      _g1337513379_))
                                              '()
                                              _L13316_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1338113384_
                                                       _g1338213386_)
                                                (cons _g1338113384_
                                                      _g1338213386_))
                                              '()
                                              _L13313_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t13389_
                       (gxc#generate-runtime-binding-id _L13314_)))
                  (let ((_type13391_
                         (gxc#optimizer-resolve-type _type-t13389_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type13391_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t13389_)
                          '#f))))
                (_g1301013164_ _g1301313167_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1311813310_
                                                  _hd1310813268_
                                                  _hd1309913244_
                                                  _arg1308513206_)
                                                 (_g1301013164_
                                                  _g1301313167_)))))))
                             (_loop1311313278_ _target1311013273_ '()))
                           (_g1301013164_ _g1301313167_)))))
                 (_g1301013164_ _g1301313167_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1301013164_
                                                      _g1301313167_))
                                                 (_g1301013164_
                                                  _g1301313167_))))
                                         (_g1301013164_ _g1301313167_))
                                     (_g1301013164_ _g1301313167_))
                                 (_g1301013164_ _g1301313167_))))
                         (_g1301013164_ _g1301313167_))))
                 (_g1301013164_ _g1301313167_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1301013164_
                                                      _g1301313167_))))
                                             (_g1301013164_ _g1301313167_))
                                         (_g1301013164_ _g1301313167_))
                                     (_g1301013164_ _g1301313167_))))
                             (_g1301013164_ _g1301313167_))))
                     (_g1301013164_ _g1301313167_))
                 (_g1301013164_ _g1301313167_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1301013164_
                                                      _g1301313167_))))
                                             (_g1301013164_ _g1301313167_))))
                                     (_g1301013164_ _g1301313167_)))))))
                 (_loop1308013190_ _target1307713185_ '()))
               (_g1301013164_ _g1301313167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1301013164_ _g1301313167_))
                                         (_g1301013164_ _g1301313167_))))
                                 (_g1301013164_ _g1301313167_))))
                         (_g1301013164_ _g1301313167_)))))
              (let ((_g1300813579_
                     (lambda (_g1301313397_)
                       (if (gx#stx-pair? _g1301313397_)
                           (let ((_e1301913399_ (gx#stx-e _g1301313397_)))
                             (let ((_hd1302013402_ (##car _e1301913399_))
                                   (_tl1302113404_ (##cdr _e1301913399_)))
                               (if (gx#stx-pair? _tl1302113404_)
                                   (let ((_e1302213407_
                                          (gx#stx-e _tl1302113404_)))
                                     (let ((_hd1302313410_
                                            (##car _e1302213407_))
                                           (_tl1302413412_
                                            (##cdr _e1302213407_)))
                                       (if (gx#stx-pair? _tl1302413412_)
                                           (let ((_e1302513415_
                                                  (gx#stx-e _tl1302413412_)))
                                             (let ((_hd1302613418_
                                                    (##car _e1302513415_))
                                                   (_tl1302713420_
                                                    (##cdr _e1302513415_)))
                                               (if (gx#stx-pair?
                                                    _hd1302613418_)
                                                   (let ((_e1302813423_
                                                          (gx#stx-e
                                                           _hd1302613418_)))
                                                     (let ((_hd1302913426_
                                                            (##car _e1302813423_))
                                                           (_tl1303013428_
                                                            (##cdr _e1302813423_)))
                                                       (if (gx#identifier?
                                                            _hd1302913426_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1302913426_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1303013428_)
                           (let ((_e1303113431_ (gx#stx-e _tl1303013428_)))
                             (let ((_hd1303213434_ (##car _e1303113431_))
                                   (_tl1303313436_ (##cdr _e1303113431_)))
                               (if (gx#stx-pair? _hd1303213434_)
                                   (let ((_e1303413439_
                                          (gx#stx-e _hd1303213434_)))
                                     (let ((_hd1303513442_
                                            (##car _e1303413439_))
                                           (_tl1303613444_
                                            (##cdr _e1303413439_)))
                                       (if (gx#identifier? _hd1303513442_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1303513442_)
                                               (if (gx#stx-pair?
                                                    _tl1303613444_)
                                                   (let ((_e1303713447_
                                                          (gx#stx-e
                                                           _tl1303613444_)))
                                                     (let ((_hd1303813450_
                                                            (##car _e1303713447_))
                                                           (_tl1303913452_
                                                            (##cdr _e1303713447_)))
                                                       (if (gx#stx-null?
                                                            _tl1303913452_)
                                                           (if (gx#stx-pair?
                                                                _tl1303313436_)
                                                               (let ((_e1304013455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1303313436_)))
                         (let ((_hd1304113458_ (##car _e1304013455_))
                               (_tl1304213460_ (##cdr _e1304013455_)))
                           (if (gx#stx-pair? _hd1304113458_)
                               (let ((_e1304313463_ (gx#stx-e _hd1304113458_)))
                                 (let ((_hd1304413466_ (##car _e1304313463_))
                                       (_tl1304513468_ (##cdr _e1304313463_)))
                                   (if (gx#identifier? _hd1304413466_)
                                       (if (gx#stx-eq? '%#ref _hd1304413466_)
                                           (if (gx#stx-pair? _tl1304513468_)
                                               (let ((_e1304613471_
                                                      (gx#stx-e
                                                       _tl1304513468_)))
                                                 (let ((_hd1304713474_
                                                        (##car _e1304613471_))
                                                       (_tl1304813476_
                                                        (##cdr _e1304613471_)))
                                                   (if (gx#stx-null?
                                                        _tl1304813476_)
                                                       (if (gx#stx-pair?
                                                            _tl1304213460_)
                                                           (let ((_e1304913479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1304213460_)))
                     (let ((_hd1305013482_ (##car _e1304913479_))
                           (_tl1305113484_ (##cdr _e1304913479_)))
                       (if (gx#stx-pair? _hd1305013482_)
                           (let ((_e1305213487_ (gx#stx-e _hd1305013482_)))
                             (let ((_hd1305313490_ (##car _e1305213487_))
                                   (_tl1305413492_ (##cdr _e1305213487_)))
                               (if (gx#identifier? _hd1305313490_)
                                   (if (gx#stx-eq? '%#ref _hd1305313490_)
                                       (if (gx#stx-pair? _tl1305413492_)
                                           (let ((_e1305513495_
                                                  (gx#stx-e _tl1305413492_)))
                                             (let ((_hd1305613498_
                                                    (##car _e1305513495_))
                                                   (_tl1305713500_
                                                    (##cdr _e1305513495_)))
                                               (if (gx#stx-null?
                                                    _tl1305713500_)
                                                   (if (gx#stx-pair?
                                                        _tl1305113484_)
                                                       (let ((_e1305813503_
                                                              (gx#stx-e
                                                               _tl1305113484_)))
                                                         (let ((_hd1305913506_
                                                                (##car _e1305813503_))
                                                               (_tl1306013508_
                                                                (##cdr _e1305813503_)))
                                                           (if (gx#stx-pair?
                                                                _hd1305913506_)
                                                               (let ((_e1306113511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1305913506_)))
                         (let ((_hd1306213514_ (##car _e1306113511_))
                               (_tl1306313516_ (##cdr _e1306113511_)))
                           (if (gx#identifier? _hd1306213514_)
                               (if (gx#stx-eq? '%#ref _hd1306213514_)
                                   (if (gx#stx-pair? _tl1306313516_)
                                       (let ((_e1306413519_
                                              (gx#stx-e _tl1306313516_)))
                                         (let ((_hd1306513522_
                                                (##car _e1306413519_))
                                               (_tl1306613524_
                                                (##cdr _e1306413519_)))
                                           (if (gx#stx-null? _tl1306613524_)
                                               (if (gx#stx-null?
                                                    _tl1306013508_)
                                                   (if (gx#stx-null?
                                                        _tl1302713420_)
                                                       ((lambda (_L13527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13528_
                         _L13529_
                         _L13530_
                         _L13531_)
                  (if (if (gx#identifier? _L13531_)
                          (if (eq? (gxc#generate-runtime-binding-id _L13530_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L13529_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L13531_ _L13527_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t13574_
                             (gxc#generate-runtime-binding-id _L13528_)))
                        (let ((_type13576_
                               (gxc#optimizer-resolve-type _type-t13574_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type13576_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t13574_)
                                '#f))))
                      (_g1300913394_ _g1301313397_)))
                _hd1306513522_
                _hd1305613498_
                _hd1304713474_
                _hd1303813450_
                _hd1302313410_)
               (_g1300913394_ _g1301313397_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1300913394_
                                                    _g1301313397_))
                                               (_g1300913394_ _g1301313397_))))
                                       (_g1300913394_ _g1301313397_))
                                   (_g1300913394_ _g1301313397_))
                               (_g1300913394_ _g1301313397_))))
                       (_g1300913394_ _g1301313397_))))
               (_g1300913394_ _g1301313397_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1300913394_
                                                    _g1301313397_))))
                                           (_g1300913394_ _g1301313397_))
                                       (_g1300913394_ _g1301313397_))
                                   (_g1300913394_ _g1301313397_))))
                           (_g1300913394_ _g1301313397_))))
                   (_g1300913394_ _g1301313397_))
               (_g1300913394_ _g1301313397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1300913394_ _g1301313397_))
                                           (_g1300913394_ _g1301313397_))
                                       (_g1300913394_ _g1301313397_))))
                               (_g1300913394_ _g1301313397_))))
                       (_g1300913394_ _g1301313397_))
                   (_g1300913394_ _g1301313397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1300913394_
                                                    _g1301313397_))
                                               (_g1300913394_ _g1301313397_))
                                           (_g1300913394_ _g1301313397_))))
                                   (_g1300913394_ _g1301313397_))))
                           (_g1300913394_ _g1301313397_))
                       (_g1300913394_ _g1301313397_))
                   (_g1300913394_ _g1301313397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1300913394_
                                                    _g1301313397_))))
                                           (_g1300913394_ _g1301313397_))))
                                   (_g1300913394_ _g1301313397_))))
                           (_g1300913394_ _g1301313397_)))))
                (_g1300813579_ _stx13007_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx12953_)
      (let ((_clause-e12955_
             (lambda (_form13005_)
               (let ((__obj19222 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj19222
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form13005_)
                    (gxc#dispatch-lambda-form-delegate _form13005_))
                   __obj19222)))))
        (let ((_g1295812968_
               (lambda (_g1295912965_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1295912965_))))
          (let ((_g1295712975_ (lambda (_g1295912971_) ((lambda () '#f)))))
            (let ((_g1295613002_
                   (lambda (_g1295912978_)
                     (if (gx#stx-pair? _g1295912978_)
                         (let ((_e1296112980_ (gx#stx-e _g1295912978_)))
                           (let ((_hd1296212983_ (##car _e1296112980_))
                                 (_tl1296312985_ (##cdr _e1296112980_)))
                             ((lambda (_L12988_)
                                (if (andmap1 gxc#dispatch-lambda-form?
                                             _L12988_)
                                    (let ((_clauses13000_
                                           (map _clause-e12955_ _L12988_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses13000_))
                                    (_g1295712975_ _g1295912978_)))
                              _tl1296312985_)))
                         (_g1295712975_ _g1295912978_)))))
              (_g1295613002_ _stx12953_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx12858_)
      (let ((_g1286112881_
             (lambda (_g1286212878_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1286212878_))))
        (let ((_g1286012888_ (lambda (_g1286212884_) ((lambda () '#f)))))
          (let ((_g1285912950_
                 (lambda (_g1286212891_)
                   (if (gx#stx-pair? _g1286212891_)
                       (let ((_e1286512893_ (gx#stx-e _g1286212891_)))
                         (let ((_hd1286612896_ (##car _e1286512893_))
                               (_tl1286712898_ (##cdr _e1286512893_)))
                           (if (gx#stx-pair? _tl1286712898_)
                               (let ((_e1286812901_ (gx#stx-e _tl1286712898_)))
                                 (let ((_hd1286912904_ (##car _e1286812901_))
                                       (_tl1287012906_ (##cdr _e1286812901_)))
                                   (if (gx#stx-pair? _hd1286912904_)
                                       (let ((_e1287112909_
                                              (gx#stx-e _hd1286912904_)))
                                         (let ((_hd1287212912_
                                                (##car _e1287112909_))
                                               (_tl1287312914_
                                                (##cdr _e1287112909_)))
                                           (if (gx#identifier? _hd1287212912_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1287212912_)
                                                   (if (gx#stx-pair?
                                                        _tl1287312914_)
                                                       (let ((_e1287412917_
                                                              (gx#stx-e
                                                               _tl1287312914_)))
                                                         (let ((_hd1287512920_
                                                                (##car _e1287412917_))
                                                               (_tl1287612922_
                                                                (##cdr _e1287412917_)))
                                                           (if (gx#stx-null?
                                                                _tl1287612922_)
                                                               ((lambda (_L12925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12926_)
                          (let ((_type-e1294312945_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L12926_)
                                  '#f)))
                            (if _type-e1294312945_
                                (let ((_type-e12948_ _type-e1294312945_))
                                  (_type-e12948_ _stx12858_ _L12925_))
                                '#f)))
                        _tl1287012906_
                        _hd1287512920_)
                       (_g1286012888_ _g1286212891_))))
               (_g1286012888_ _g1286212891_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1286012888_
                                                    _g1286212891_))
                                               (_g1286012888_ _g1286212891_))))
                                       (_g1286012888_ _g1286212891_))))
                               (_g1286012888_ _g1286212891_))))
                       (_g1286012888_ _g1286212891_)))))
            (_g1285912950_ _stx12858_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx12343_ _args12344_)
      (let ((_g1234812461_
             (lambda (_g1234912458_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1234912458_))))
        (let ((_g1234712468_
               (lambda (_g1234912464_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx12343_))
                      '#f))))))
          (let ((_g1234612675_
                 (lambda (_g1234912471_)
                   (if (gx#stx-pair? _g1234912471_)
                       (let ((_e1240912473_ (gx#stx-e _g1234912471_)))
                         (let ((_hd1241012476_ (##car _e1240912473_))
                               (_tl1241112478_ (##cdr _e1240912473_)))
                           (if (gx#stx-pair? _hd1241012476_)
                               (let ((_e1241212481_ (gx#stx-e _hd1241012476_)))
                                 (let ((_hd1241312484_ (##car _e1241212481_))
                                       (_tl1241412486_ (##cdr _e1241212481_)))
                                   (if (gx#identifier? _hd1241312484_)
                                       (if (gx#stx-eq? '%#quote _hd1241312484_)
                                           (if (gx#stx-pair? _tl1241412486_)
                                               (let ((_e1241512489_
                                                      (gx#stx-e
                                                       _tl1241412486_)))
                                                 (let ((_hd1241612492_
                                                        (##car _e1241512489_))
                                                       (_tl1241712494_
                                                        (##cdr _e1241512489_)))
                                                   (if (gx#stx-null?
                                                        _tl1241712494_)
                                                       (if (gx#stx-pair?
                                                            _tl1241112478_)
                                                           (let ((_e1241812497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1241112478_)))
                     (let ((_hd1241912500_ (##car _e1241812497_))
                           (_tl1242012502_ (##cdr _e1241812497_)))
                       (if (gx#stx-pair? _hd1241912500_)
                           (let ((_e1242112505_ (gx#stx-e _hd1241912500_)))
                             (let ((_hd1242212508_ (##car _e1242112505_))
                                   (_tl1242312510_ (##cdr _e1242112505_)))
                               (if (gx#identifier? _hd1242212508_)
                                   (if (gx#stx-eq? '%#ref _hd1242212508_)
                                       (if (gx#stx-pair? _tl1242312510_)
                                           (let ((_e1242412513_
                                                  (gx#stx-e _tl1242312510_)))
                                             (let ((_hd1242512516_
                                                    (##car _e1242412513_))
                                                   (_tl1242612518_
                                                    (##cdr _e1242412513_)))
                                               (if (gx#stx-null?
                                                    _tl1242612518_)
                                                   (if (gx#stx-pair?
                                                        _tl1242012502_)
                                                       (let ((_e1242712521_
                                                              (gx#stx-e
                                                               _tl1242012502_)))
                                                         (let ((_hd1242812524_
                                                                (##car _e1242712521_))
                                                               (_tl1242912526_
                                                                (##cdr _e1242712521_)))
                                                           (if (gx#stx-pair?
                                                                _hd1242812524_)
                                                               (let ((_e1243012529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1242812524_)))
                         (let ((_hd1243112532_ (##car _e1243012529_))
                               (_tl1243212534_ (##cdr _e1243012529_)))
                           (if (gx#identifier? _hd1243112532_)
                               (if (gx#stx-eq? '%#quote _hd1243112532_)
                                   (if (gx#stx-pair? _tl1243212534_)
                                       (let ((_e1243312537_
                                              (gx#stx-e _tl1243212534_)))
                                         (let ((_hd1243412540_
                                                (##car _e1243312537_))
                                               (_tl1243512542_
                                                (##cdr _e1243312537_)))
                                           (if (gx#stx-null? _tl1243512542_)
                                               (if (gx#stx-pair?
                                                    _tl1242912526_)
                                                   (let ((_e1243612545_
                                                          (gx#stx-e
                                                           _tl1242912526_)))
                                                     (let ((_hd1243712548_
                                                            (##car _e1243612545_))
                                                           (_tl1243812550_
                                                            (##cdr _e1243612545_)))
                                                       (if (gx#stx-pair?
                                                            _tl1243812550_)
                                                           (let ((_e1243912553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1243812550_)))
                     (let ((_hd1244012556_ (##car _e1243912553_))
                           (_tl1244112558_ (##cdr _e1243912553_)))
                       (if (gx#stx-pair? _hd1244012556_)
                           (let ((_e1244212561_ (gx#stx-e _hd1244012556_)))
                             (let ((_hd1244312564_ (##car _e1244212561_))
                                   (_tl1244412566_ (##cdr _e1244212561_)))
                               (if (gx#identifier? _hd1244312564_)
                                   (if (gx#stx-eq? '%#quote _hd1244312564_)
                                       (if (gx#stx-pair? _tl1244412566_)
                                           (let ((_e1244512569_
                                                  (gx#stx-e _tl1244412566_)))
                                             (let ((_hd1244612572_
                                                    (##car _e1244512569_))
                                                   (_tl1244712574_
                                                    (##cdr _e1244512569_)))
                                               (if (gx#stx-null?
                                                    _tl1244712574_)
                                                   (if (gx#stx-pair?
                                                        _tl1244112558_)
                                                       (let ((_e1244812577_
                                                              (gx#stx-e
                                                               _tl1244112558_)))
                                                         (let ((_hd1244912580_
                                                                (##car _e1244812577_))
                                                               (_tl1245012582_
                                                                (##cdr _e1244812577_)))
                                                           (if (gx#stx-pair?
                                                                _hd1244912580_)
                                                               (let ((_e1245112585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1244912580_)))
                         (let ((_hd1245212588_ (##car _e1245112585_))
                               (_tl1245312590_ (##cdr _e1245112585_)))
                           (if (gx#identifier? _hd1245212588_)
                               (if (gx#stx-eq? '%#quote _hd1245212588_)
                                   (if (gx#stx-pair? _tl1245312590_)
                                       (let ((_e1245412593_
                                              (gx#stx-e _tl1245312590_)))
                                         (let ((_hd1245512596_
                                                (##car _e1245412593_))
                                               (_tl1245612598_
                                                (##cdr _e1245412593_)))
                                           (if (gx#stx-null? _tl1245612598_)
                                               (if (gx#stx-null?
                                                    _tl1245012582_)
                                                   ((lambda (_L12601_
                                                             _L12602_
                                                             _L12603_
                                                             _L12604_
                                                             _L12605_
                                                             _L12606_)
                                                      (let ((_super-t12652_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12605_)
                         (gxc#generate-runtime-binding-id _L12605_)
                         '#f)))
                (let ((_super-type12654_
                       (if _super-t12652_
                           (gxc#optimizer-resolve-type _super-t12652_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type12654_
                              (not (##structure-instance-of?
                                    _super-type12654_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx12343_
                           _L12605_)
                          '#!void)
                      (let ((_fields12670_ (gx#stx-e _L12604_))
                            (_xfields12671_
                             (if _super-type12654_
                                 (let ((_super-fields1265612659_
                                        (##structure-ref
                                         _super-type12654_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1265712661_
                                        (##structure-ref
                                         _super-type12654_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1265612659_
                                       (if _super-xfields1265712661_
                                           (let ((_super-fields12664_
                                                  _super-fields1265612659_)
                                                 (_super-xfields12665_
                                                  _super-xfields1265712661_))
                                             (fx+ _super-fields12664_
                                                  _super-xfields12665_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist12672_ (gx#stx-e _L12602_))
                            (_ctor12673_
                             (let ((_$e12667_ (gx#stx-e _L12601_)))
                               (if _$e12667_
                                   (values _$e12667_)
                                   (if _super-type12654_
                                       (##structure-ref
                                        _super-type12654_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t12652_ '#!void '#f))))))
                        (let ((__obj19223
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19223
                             (gx#stx-e _L12606_)
                             _super-t12652_
                             _fields12670_
                             _xfields12671_
                             _ctor12673_
                             _plist12672_)
                            __obj19223))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1245512596_
                                                    _hd1244612572_
                                                    _hd1243712548_
                                                    _hd1243412540_
                                                    _hd1242512516_
                                                    _hd1241612492_)
                                                   (_g1234712468_
                                                    _g1234912471_))
                                               (_g1234712468_ _g1234912471_))))
                                       (_g1234712468_ _g1234912471_))
                                   (_g1234712468_ _g1234912471_))
                               (_g1234712468_ _g1234912471_))))
                       (_g1234712468_ _g1234912471_))))
               (_g1234712468_ _g1234912471_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1234712468_
                                                    _g1234912471_))))
                                           (_g1234712468_ _g1234912471_))
                                       (_g1234712468_ _g1234912471_))
                                   (_g1234712468_ _g1234912471_))))
                           (_g1234712468_ _g1234912471_))))
                   (_g1234712468_ _g1234912471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1234712468_
                                                    _g1234912471_))
                                               (_g1234712468_ _g1234912471_))))
                                       (_g1234712468_ _g1234912471_))
                                   (_g1234712468_ _g1234912471_))
                               (_g1234712468_ _g1234912471_))))
                       (_g1234712468_ _g1234912471_))))
               (_g1234712468_ _g1234912471_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1234712468_
                                                    _g1234912471_))))
                                           (_g1234712468_ _g1234912471_))
                                       (_g1234712468_ _g1234912471_))
                                   (_g1234712468_ _g1234912471_))))
                           (_g1234712468_ _g1234912471_))))
                   (_g1234712468_ _g1234912471_))
               (_g1234712468_ _g1234912471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1234712468_ _g1234912471_))
                                           (_g1234712468_ _g1234912471_))
                                       (_g1234712468_ _g1234912471_))))
                               (_g1234712468_ _g1234912471_))))
                       (_g1234712468_ _g1234912471_)))))
            (let ((_g1234512855_
                   (lambda (_g1234912678_)
                     (if (gx#stx-pair? _g1234912678_)
                         (let ((_e1235512680_ (gx#stx-e _g1234912678_)))
                           (let ((_hd1235612683_ (##car _e1235512680_))
                                 (_tl1235712685_ (##cdr _e1235512680_)))
                             (if (gx#stx-pair? _hd1235612683_)
                                 (let ((_e1235812688_
                                        (gx#stx-e _hd1235612683_)))
                                   (let ((_hd1235912691_ (##car _e1235812688_))
                                         (_tl1236012693_
                                          (##cdr _e1235812688_)))
                                     (if (gx#identifier? _hd1235912691_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1235912691_)
                                             (if (gx#stx-pair? _tl1236012693_)
                                                 (let ((_e1236112696_
                                                        (gx#stx-e
                                                         _tl1236012693_)))
                                                   (let ((_hd1236212699_
                                                          (##car _e1236112696_))
                                                         (_tl1236312701_
                                                          (##cdr _e1236112696_)))
                                                     (if (gx#stx-null?
                                                          _tl1236312701_)
                                                         (if (gx#stx-pair?
                                                              _tl1235712685_)
                                                             (let ((_e1236412704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1235712685_)))
                       (let ((_hd1236512707_ (##car _e1236412704_))
                             (_tl1236612709_ (##cdr _e1236412704_)))
                         (if (gx#stx-pair? _hd1236512707_)
                             (let ((_e1236712712_ (gx#stx-e _hd1236512707_)))
                               (let ((_hd1236812715_ (##car _e1236712712_))
                                     (_tl1236912717_ (##cdr _e1236712712_)))
                                 (if (gx#identifier? _hd1236812715_)
                                     (if (gx#stx-eq? '%#quote _hd1236812715_)
                                         (if (gx#stx-pair? _tl1236912717_)
                                             (let ((_e1237012720_
                                                    (gx#stx-e _tl1236912717_)))
                                               (let ((_hd1237112723_
                                                      (##car _e1237012720_))
                                                     (_tl1237212725_
                                                      (##cdr _e1237012720_)))
                                                 (if (gx#stx-datum?
                                                      _hd1237112723_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1237112723_)
                         '#f)
                 (if (gx#stx-null? _tl1237212725_)
                     (if (gx#stx-pair? _tl1236612709_)
                         (let ((_e1237312728_ (gx#stx-e _tl1236612709_)))
                           (let ((_hd1237412731_ (##car _e1237312728_))
                                 (_tl1237512733_ (##cdr _e1237312728_)))
                             (if (gx#stx-pair? _hd1237412731_)
                                 (let ((_e1237612736_
                                        (gx#stx-e _hd1237412731_)))
                                   (let ((_hd1237712739_ (##car _e1237612736_))
                                         (_tl1237812741_
                                          (##cdr _e1237612736_)))
                                     (if (gx#identifier? _hd1237712739_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1237712739_)
                                             (if (gx#stx-pair? _tl1237812741_)
                                                 (let ((_e1237912744_
                                                        (gx#stx-e
                                                         _tl1237812741_)))
                                                   (let ((_hd1238012747_
                                                          (##car _e1237912744_))
                                                         (_tl1238112749_
                                                          (##cdr _e1237912744_)))
                                                     (if (gx#stx-null?
                                                          _tl1238112749_)
                                                         (if (gx#stx-pair?
                                                              _tl1237512733_)
                                                             (let ((_e1238212752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1237512733_)))
                       (let ((_hd1238312755_ (##car _e1238212752_))
                             (_tl1238412757_ (##cdr _e1238212752_)))
                         (if (gx#stx-pair? _tl1238412757_)
                             (let ((_e1238512760_ (gx#stx-e _tl1238412757_)))
                               (let ((_hd1238612763_ (##car _e1238512760_))
                                     (_tl1238712765_ (##cdr _e1238512760_)))
                                 (if (gx#stx-pair? _hd1238612763_)
                                     (let ((_e1238812768_
                                            (gx#stx-e _hd1238612763_)))
                                       (let ((_hd1238912771_
                                              (##car _e1238812768_))
                                             (_tl1239012773_
                                              (##cdr _e1238812768_)))
                                         (if (gx#identifier? _hd1238912771_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1238912771_)
                                                 (if (gx#stx-pair?
                                                      _tl1239012773_)
                                                     (let ((_e1239112776_
                                                            (gx#stx-e
                                                             _tl1239012773_)))
                                                       (let ((_hd1239212779_
                                                              (##car _e1239112776_))
                                                             (_tl1239312781_
                                                              (##cdr _e1239112776_)))
                                                         (if (gx#stx-null?
                                                              _tl1239312781_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1238712765_)
                         (let ((_e1239412784_ (gx#stx-e _tl1238712765_)))
                           (let ((_hd1239512787_ (##car _e1239412784_))
                                 (_tl1239612789_ (##cdr _e1239412784_)))
                             (if (gx#stx-pair? _hd1239512787_)
                                 (let ((_e1239712792_
                                        (gx#stx-e _hd1239512787_)))
                                   (let ((_hd1239812795_ (##car _e1239712792_))
                                         (_tl1239912797_
                                          (##cdr _e1239712792_)))
                                     (if (gx#identifier? _hd1239812795_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1239812795_)
                                             (if (gx#stx-pair? _tl1239912797_)
                                                 (let ((_e1240012800_
                                                        (gx#stx-e
                                                         _tl1239912797_)))
                                                   (let ((_hd1240112803_
                                                          (##car _e1240012800_))
                                                         (_tl1240212805_
                                                          (##cdr _e1240012800_)))
                                                     (if (gx#stx-null?
                                                          _tl1240212805_)
                                                         (if (gx#stx-null?
                                                              _tl1239612789_)
                                                             ((lambda (_L12808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L12809_
                               _L12810_
                               _L12811_
                               _L12812_)
                        (let ((__obj19224
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19224
                             (gx#stx-e _L12812_)
                             '#f
                             (gx#stx-e _L12811_)
                             '0
                             (gx#stx-e _L12808_)
                             (gx#stx-e _L12809_))
                            __obj19224)))
                      _hd1240112803_
                      _hd1239212779_
                      _hd1238312755_
                      _hd1238012747_
                      _hd1236212699_)
                     (_g1234612675_ _g1234912678_))
                 (_g1234612675_ _g1234912678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1234612675_ _g1234912678_))
                                             (_g1234612675_ _g1234912678_))
                                         (_g1234612675_ _g1234912678_))))
                                 (_g1234612675_ _g1234912678_))))
                         (_g1234612675_ _g1234912678_))
                     (_g1234612675_ _g1234912678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1234612675_
                                                      _g1234912678_))
                                                 (_g1234612675_ _g1234912678_))
                                             (_g1234612675_ _g1234912678_))))
                                     (_g1234612675_ _g1234912678_))))
                             (_g1234612675_ _g1234912678_))))
                     (_g1234612675_ _g1234912678_))
                 (_g1234612675_ _g1234912678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1234612675_ _g1234912678_))
                                             (_g1234612675_ _g1234912678_))
                                         (_g1234612675_ _g1234912678_))))
                                 (_g1234612675_ _g1234912678_))))
                         (_g1234612675_ _g1234912678_))
                     (_g1234612675_ _g1234912678_))
                 (_g1234612675_ _g1234912678_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1234612675_
                                                      _g1234912678_))))
                                             (_g1234612675_ _g1234912678_))
                                         (_g1234612675_ _g1234912678_))
                                     (_g1234612675_ _g1234912678_))))
                             (_g1234612675_ _g1234912678_))))
                     (_g1234612675_ _g1234912678_))
                 (_g1234612675_ _g1234912678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1234612675_ _g1234912678_))
                                             (_g1234612675_ _g1234912678_))
                                         (_g1234612675_ _g1234912678_))))
                                 (_g1234612675_ _g1234912678_))))
                         (_g1234612675_ _g1234912678_)))))
              (_g1234512855_ _args12344_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx12269_ _args12270_)
      (let ((_g1227312289_
             (lambda (_g1227412286_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1227412286_))))
        (let ((_g1227212296_ (lambda (_g1227412292_) ((lambda () '#f)))))
          (let ((_g1227112340_
                 (lambda (_g1227412299_)
                   (if (gx#stx-pair? _g1227412299_)
                       (let ((_e1227612301_ (gx#stx-e _g1227412299_)))
                         (let ((_hd1227712304_ (##car _e1227612301_))
                               (_tl1227812306_ (##cdr _e1227612301_)))
                           (if (gx#stx-pair? _hd1227712304_)
                               (let ((_e1227912309_ (gx#stx-e _hd1227712304_)))
                                 (let ((_hd1228012312_ (##car _e1227912309_))
                                       (_tl1228112314_ (##cdr _e1227912309_)))
                                   (if (gx#identifier? _hd1228012312_)
                                       (if (gx#stx-eq? '%#ref _hd1228012312_)
                                           (if (gx#stx-pair? _tl1228112314_)
                                               (let ((_e1228212317_
                                                      (gx#stx-e
                                                       _tl1228112314_)))
                                                 (let ((_hd1228312320_
                                                        (##car _e1228212317_))
                                                       (_tl1228412322_
                                                        (##cdr _e1228212317_)))
                                                   (if (gx#stx-null?
                                                        _tl1228412322_)
                                                       (if (gx#stx-null?
                                                            _tl1227812306_)
                                                           ((lambda (_L12325_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L12325_)))
                                                            _hd1228312320_)
                                                           (_g1227212296_
                                                            _g1227412299_))
                                                       (_g1227212296_
                                                        _g1227412299_))))
                                               (_g1227212296_ _g1227412299_))
                                           (_g1227212296_ _g1227412299_))
                                       (_g1227212296_ _g1227412299_))))
                               (_g1227212296_ _g1227412299_))))
                       (_g1227212296_ _g1227412299_)))))
            (_g1227112340_ _args12270_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx12153_ _args12154_)
      (let ((_g1215712183_
             (lambda (_g1215812180_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1215812180_))))
        (let ((_g1215612190_ (lambda (_g1215812186_) ((lambda () '#f)))))
          (let ((_g1215512266_
                 (lambda (_g1215812193_)
                   (if (gx#stx-pair? _g1215812193_)
                       (let ((_e1216112195_ (gx#stx-e _g1215812193_)))
                         (let ((_hd1216212198_ (##car _e1216112195_))
                               (_tl1216312200_ (##cdr _e1216112195_)))
                           (if (gx#stx-pair? _hd1216212198_)
                               (let ((_e1216412203_ (gx#stx-e _hd1216212198_)))
                                 (let ((_hd1216512206_ (##car _e1216412203_))
                                       (_tl1216612208_ (##cdr _e1216412203_)))
                                   (if (gx#identifier? _hd1216512206_)
                                       (if (gx#stx-eq? '%#ref _hd1216512206_)
                                           (if (gx#stx-pair? _tl1216612208_)
                                               (let ((_e1216712211_
                                                      (gx#stx-e
                                                       _tl1216612208_)))
                                                 (let ((_hd1216812214_
                                                        (##car _e1216712211_))
                                                       (_tl1216912216_
                                                        (##cdr _e1216712211_)))
                                                   (if (gx#stx-null?
                                                        _tl1216912216_)
                                                       (if (gx#stx-pair?
                                                            _tl1216312200_)
                                                           (let ((_e1217012219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1216312200_)))
                     (let ((_hd1217112222_ (##car _e1217012219_))
                           (_tl1217212224_ (##cdr _e1217012219_)))
                       (if (gx#stx-pair? _hd1217112222_)
                           (let ((_e1217312227_ (gx#stx-e _hd1217112222_)))
                             (let ((_hd1217412230_ (##car _e1217312227_))
                                   (_tl1217512232_ (##cdr _e1217312227_)))
                               (if (gx#identifier? _hd1217412230_)
                                   (if (gx#stx-eq? '%#quote _hd1217412230_)
                                       (if (gx#stx-pair? _tl1217512232_)
                                           (let ((_e1217612235_
                                                  (gx#stx-e _tl1217512232_)))
                                             (let ((_hd1217712238_
                                                    (##car _e1217612235_))
                                                   (_tl1217812240_
                                                    (##cdr _e1217612235_)))
                                               (if (gx#stx-null?
                                                    _tl1217812240_)
                                                   (if (gx#stx-null?
                                                        _tl1217212224_)
                                                       ((lambda (_L12243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12244_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#generate-runtime-binding-id _L12244_)
                   (gx#stx-e _L12243_)))
                _hd1217712238_
                _hd1216812214_)
               (_g1215612190_ _g1215812193_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1215612190_
                                                    _g1215812193_))))
                                           (_g1215612190_ _g1215812193_))
                                       (_g1215612190_ _g1215812193_))
                                   (_g1215612190_ _g1215812193_))))
                           (_g1215612190_ _g1215812193_))))
                   (_g1215612190_ _g1215812193_))
               (_g1215612190_ _g1215812193_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1215612190_ _g1215812193_))
                                           (_g1215612190_ _g1215812193_))
                                       (_g1215612190_ _g1215812193_))))
                               (_g1215612190_ _g1215812193_))))
                       (_g1215612190_ _g1215812193_)))))
            (_g1215512266_ _args12154_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx12037_ _args12038_)
      (let ((_g1204112067_
             (lambda (_g1204212064_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1204212064_))))
        (let ((_g1204012074_ (lambda (_g1204212070_) ((lambda () '#f)))))
          (let ((_g1203912150_
                 (lambda (_g1204212077_)
                   (if (gx#stx-pair? _g1204212077_)
                       (let ((_e1204512079_ (gx#stx-e _g1204212077_)))
                         (let ((_hd1204612082_ (##car _e1204512079_))
                               (_tl1204712084_ (##cdr _e1204512079_)))
                           (if (gx#stx-pair? _hd1204612082_)
                               (let ((_e1204812087_ (gx#stx-e _hd1204612082_)))
                                 (let ((_hd1204912090_ (##car _e1204812087_))
                                       (_tl1205012092_ (##cdr _e1204812087_)))
                                   (if (gx#identifier? _hd1204912090_)
                                       (if (gx#stx-eq? '%#ref _hd1204912090_)
                                           (if (gx#stx-pair? _tl1205012092_)
                                               (let ((_e1205112095_
                                                      (gx#stx-e
                                                       _tl1205012092_)))
                                                 (let ((_hd1205212098_
                                                        (##car _e1205112095_))
                                                       (_tl1205312100_
                                                        (##cdr _e1205112095_)))
                                                   (if (gx#stx-null?
                                                        _tl1205312100_)
                                                       (if (gx#stx-pair?
                                                            _tl1204712084_)
                                                           (let ((_e1205412103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1204712084_)))
                     (let ((_hd1205512106_ (##car _e1205412103_))
                           (_tl1205612108_ (##cdr _e1205412103_)))
                       (if (gx#stx-pair? _hd1205512106_)
                           (let ((_e1205712111_ (gx#stx-e _hd1205512106_)))
                             (let ((_hd1205812114_ (##car _e1205712111_))
                                   (_tl1205912116_ (##cdr _e1205712111_)))
                               (if (gx#identifier? _hd1205812114_)
                                   (if (gx#stx-eq? '%#quote _hd1205812114_)
                                       (if (gx#stx-pair? _tl1205912116_)
                                           (let ((_e1206012119_
                                                  (gx#stx-e _tl1205912116_)))
                                             (let ((_hd1206112122_
                                                    (##car _e1206012119_))
                                                   (_tl1206212124_
                                                    (##cdr _e1206012119_)))
                                               (if (gx#stx-null?
                                                    _tl1206212124_)
                                                   (if (gx#stx-null?
                                                        _tl1205612108_)
                                                       ((lambda (_L12127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12128_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#generate-runtime-binding-id _L12128_)
                   (gx#stx-e _L12127_)))
                _hd1206112122_
                _hd1205212098_)
               (_g1204012074_ _g1204212077_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1204012074_
                                                    _g1204212077_))))
                                           (_g1204012074_ _g1204212077_))
                                       (_g1204012074_ _g1204212077_))
                                   (_g1204012074_ _g1204212077_))))
                           (_g1204012074_ _g1204212077_))))
                   (_g1204012074_ _g1204212077_))
               (_g1204012074_ _g1204212077_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1204012074_ _g1204212077_))
                                           (_g1204012074_ _g1204212077_))
                                       (_g1204012074_ _g1204212077_))))
                               (_g1204012074_ _g1204212077_))))
                       (_g1204012074_ _g1204212077_)))))
            (_g1203912150_ _args12038_))))))
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
  (define gxc#basic-expression-type-ref%
    (lambda (_stx11986_)
      (let ((_g1198812001_
             (lambda (_g1198911998_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1198911998_))))
        (let ((_g1198712034_
               (lambda (_g1198912004_)
                 (if (gx#stx-pair? _g1198912004_)
                     (let ((_e1199112006_ (gx#stx-e _g1198912004_)))
                       (let ((_hd1199212009_ (##car _e1199112006_))
                             (_tl1199312011_ (##cdr _e1199112006_)))
                         (if (gx#stx-pair? _tl1199312011_)
                             (let ((_e1199412014_ (gx#stx-e _tl1199312011_)))
                               (let ((_hd1199512017_ (##car _e1199412014_))
                                     (_tl1199612019_ (##cdr _e1199412014_)))
                                 (if (gx#stx-null? _tl1199612019_)
                                     ((lambda (_L12022_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L12022_)))
                                      _hd1199512017_)
                                     (_g1198812001_ _g1198912004_))))
                             (_g1198812001_ _g1198912004_))))
                     (_g1198812001_ _g1198912004_)))))
          (_g1198712034_ _stx11986_)))))
  (define gxc#optimize-call%
    (lambda (_stx11892_)
      (let ((_g1189511915_
             (lambda (_g1189611912_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1189611912_))))
        (let ((_g1189411922_
               (lambda (_g1189611918_)
                 ((lambda () (gxc#xform-call% _stx11892_))))))
          (let ((_g1189311983_
                 (lambda (_g1189611925_)
                   (if (gx#stx-pair? _g1189611925_)
                       (let ((_e1189911927_ (gx#stx-e _g1189611925_)))
                         (let ((_hd1190011930_ (##car _e1189911927_))
                               (_tl1190111932_ (##cdr _e1189911927_)))
                           (if (gx#stx-pair? _tl1190111932_)
                               (let ((_e1190211935_ (gx#stx-e _tl1190111932_)))
                                 (let ((_hd1190311938_ (##car _e1190211935_))
                                       (_tl1190411940_ (##cdr _e1190211935_)))
                                   (if (gx#stx-pair? _hd1190311938_)
                                       (let ((_e1190511943_
                                              (gx#stx-e _hd1190311938_)))
                                         (let ((_hd1190611946_
                                                (##car _e1190511943_))
                                               (_tl1190711948_
                                                (##cdr _e1190511943_)))
                                           (if (gx#identifier? _hd1190611946_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1190611946_)
                                                   (if (gx#stx-pair?
                                                        _tl1190711948_)
                                                       (let ((_e1190811951_
                                                              (gx#stx-e
                                                               _tl1190711948_)))
                                                         (let ((_hd1190911954_
                                                                (##car _e1190811951_))
                                                               (_tl1191011956_
                                                                (##cdr _e1190811951_)))
                                                           (if (gx#stx-null?
                                                                _tl1191011956_)
                                                               ((lambda (_L11959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11960_)
                          (let ((_rator-id11978_
                                 (gxc#generate-runtime-binding-id _L11960_)))
                            (let ((_rator-type11980_
                                   (gxc#optimizer-resolve-type
                                    _rator-id11978_)))
                              (let ()
                                (if (##structure-instance-of?
                                     _rator-type11980_
                                     'gxc#!procedure::t)
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id11978_
                                       '" => "
                                       _rator-type11980_
                                       '" "
                                       (##structure-ref
                                        _rator-type11980_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type11980_
                                       'optimize-call
                                       _stx11892_
                                       _L11959_))
                                    (if (not _rator-type11980_)
                                        (gxc#xform-call% _stx11892_)
                                        (gxc#raise-compile-error
                                         '"Illegal application; not a procedure"
                                         _stx11892_
                                         _rator-type11980_)))))))
                        _tl1190411940_
                        _hd1190911954_)
                       (_g1189411922_ _g1189611925_))))
               (_g1189411922_ _g1189611925_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1189411922_
                                                    _g1189611925_))
                                               (_g1189411922_ _g1189611925_))))
                                       (_g1189411922_ _g1189611925_))))
                               (_g1189411922_ _g1189611925_))))
                       (_g1189411922_ _g1189611925_)))))
            (_g1189311983_ _stx11892_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self11747_ _stx11748_ _args11749_)
      (let ((_self1175011756_ _self11747_))
        (let ((_E1175211760_
               (lambda () (error '"No clause matching" _self1175011756_))))
          (let ((_K1175311884_
                 (lambda (_struct-t11763_)
                   (let ((_struct-type11765_
                          (gxc#optimizer-resolve-type _struct-t11763_)))
                     (let ((_struct-type1176611780_ _struct-type11765_))
                       (let ((_E1177011784_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1176611780_))))
                         (let ((_else1176911788_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11748_
                                   _struct-t11763_
                                   _struct-type11765_))))
                           (let ((_try-match1176811796_
                                  (lambda ()
                                    (let ((_K1177111793_
                                           (lambda ()
                                             (gxc#xform-call% _stx11748_))))
                                      (if (##eq? _struct-type1176611780_ '#f)
                                          (_K1177111793_)
                                          (_else1176911788_))))))
                             (let ((_K1177211859_
                                    (lambda (_plist11799_
                                             _struct-type-id11800_)
                                      (let ((_g1180311813_
                                             (lambda (_g1180411810_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1180411810_))))
                                        (let ((_g1180211820_
                                               (lambda (_g1180411816_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx11748_))))))
                                          (let ((_g1180111856_
                                                 (lambda (_g1180411823_)
                                                   (if (gx#stx-pair?
                                                        _g1180411823_)
                                                       (let ((_e1180611825_
                                                              (gx#stx-e
                                                               _g1180411823_)))
                                                         (let ((_hd1180711828_
                                                                (##car _e1180611825_))
                                                               (_tl1180811830_
                                                                (##cdr _e1180611825_)))
                                                           (if (gx#stx-null?
                                                                _tl1180811830_)
                                                               ((lambda (_L11833_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr11853_ (gxc#compile-e _L11833_))
                                (_op11854_
                                 (if (if _plist11799_
                                         (assgetq 'final: _plist11799_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op11854_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id11800_
                                                     '()))
                                         (cons _expr11853_ '())))
                             _stx11748_)))
                        _hd1180711828_)
                       (_g1180211820_ _g1180411823_))))
               (_g1180211820_ _g1180411823_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1180111856_ _args11749_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1176611780_)
                                   (let ((_e1177311862_
                                          (##vector-ref
                                           _struct-type1176611780_
                                           '1)))
                                     (let ((_struct-type-id11865_
                                            _e1177311862_))
                                       (let ((_e1177411867_
                                              (##vector-ref
                                               _struct-type1176611780_
                                               '2)))
                                         (let ((_e1177511870_
                                                (##vector-ref
                                                 _struct-type1176611780_
                                                 '3)))
                                           (let ((_e1177611873_
                                                  (##vector-ref
                                                   _struct-type1176611780_
                                                   '4)))
                                             (let ((_e1177711876_
                                                    (##vector-ref
                                                     _struct-type1176611780_
                                                     '5)))
                                               (let ((_e1177811879_
                                                      (##vector-ref
                                                       _struct-type1176611780_
                                                       '6)))
                                                 (let ((_plist11882_
                                                        _e1177811879_))
                                                   (_K1177211859_
                                                    _plist11882_
                                                    _struct-type-id11865_)))))))))
                                   (_try-match1176811796_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self1175011756_)
                (let ((_e1175411887_ (##vector-ref _self1175011756_ '1)))
                  (let ((_struct-t11890_ _e1175411887_))
                    (_K1175311884_ _struct-t11890_)))
                (_E1175211760_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self11643_ _stx11644_ _args11645_)
      (let ((_self1164611652_ _self11643_))
        (let ((_E1164811656_
               (lambda () (error '"No clause matching" _self1164611652_))))
          (let ((_K1164911739_
                 (lambda (_struct-t11659_)
                   (let ((_struct-type11661_
                          (gxc#optimizer-resolve-type _struct-t11659_)))
                     (let ((_struct-type1166211675_ _struct-type11661_))
                       (let ((_E1166611679_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1166211675_))))
                         (let ((_else1166511683_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx11644_
                                   _struct-t11659_
                                   _struct-type11661_))))
                           (let ((_try-match1166411691_
                                  (lambda ()
                                    (let ((_K1166711688_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t11659_)
                                               (gxc#xform-call% _stx11644_)))))
                                      (if (##eq? _struct-type1166211675_ '#f)
                                          (_K1166711688_)
                                          (_else1166511683_))))))
                             (let ((_K1166811713_
                                    (lambda (_ctor11694_
                                             _xfields11695_
                                             _fields11696_
                                             _type-id11697_)
                                      (let ((_args11699_
                                             (map gxc#compile-e _args11645_)))
                                        (let ((_$e11701_
                                               (if _ctor11694_
                                                   (if _xfields11695_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type11661_
                                                        _ctor11694_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e11701_
                                              ((lambda (_kons11704_)
                                                 (let ((_$obj11706_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj11706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t11659_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields11696_ _xfields11695_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons11704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj11706_ '())) _args11699_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx11644_))
                                          (cons (cons '%#ref
                                                      (cons _$obj11706_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx11644_)))
                                               _$e11701_)
                                              (if (let ((_$e11708_
                                                         _ctor11694_))
                                                    (if _$e11708_
                                                        _$e11708_
                                                        (not _xfields11695_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t11659_ '()))
                             _args11699_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx11644_)
                                                  (let ((_arity11711_
                                                         (fx+ _fields11696_
                                                              _xfields11695_)))
                                                    (if (fx= _arity11711_
                                                             (length _args11699_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t11659_ '()))
                                   _args11699_)))
                 _stx11644_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx11644_
                 _struct-t11659_
                 _arity11711_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1166211675_)
                                   (let ((_e1166911716_
                                          (##vector-ref
                                           _struct-type1166211675_
                                           '1)))
                                     (let ((_type-id11719_ _e1166911716_))
                                       (let ((_e1167011721_
                                              (##vector-ref
                                               _struct-type1166211675_
                                               '2)))
                                         (let ((_e1167111724_
                                                (##vector-ref
                                                 _struct-type1166211675_
                                                 '3)))
                                           (let ((_fields11727_ _e1167111724_))
                                             (let ((_e1167211729_
                                                    (##vector-ref
                                                     _struct-type1166211675_
                                                     '4)))
                                               (let ((_xfields11732_
                                                      _e1167211729_))
                                                 (let ((_e1167311734_
                                                        (##vector-ref
                                                         _struct-type1166211675_
                                                         '5)))
                                                   (let ((_ctor11737_
                                                          _e1167311734_))
                                                     (_K1166811713_
                                                      _ctor11737_
                                                      _xfields11732_
                                                      _fields11727_
                                                      _type-id11719_))))))))))
                                   (_try-match1166411691_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self1164611652_)
                (let ((_e1165011742_ (##vector-ref _self1164611652_ '1)))
                  (let ((_struct-t11745_ _e1165011742_))
                    (_K1164911739_ _struct-t11745_)))
                (_E1164811656_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self11496_ _stx11497_ _args11498_)
      (let ((_self1149911506_ _self11496_))
        (let ((_E1150111510_
               (lambda () (error '"No clause matching" _self1149911506_))))
          (let ((_K1150211630_
                 (lambda (_off11513_ _struct-t11514_)
                   (let ((_struct-type11516_
                          (gxc#optimizer-resolve-type _struct-t11514_)))
                     (let ((_struct-type1151711529_ _struct-type11516_))
                       (let ((_E1152111533_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1151711529_))))
                         (let ((_else1152011537_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11497_
                                   _struct-t11514_
                                   _struct-type11516_))))
                           (let ((_try-match1151911545_
                                  (lambda ()
                                    (let ((_K1152211542_
                                           (lambda ()
                                             (gxc#xform-call% _stx11497_))))
                                      (if (##eq? _struct-type1151711529_ '#f)
                                          (_K1152211542_)
                                          (_else1152011537_))))))
                             (let ((_K1152311609_
                                    (lambda (_xfields11548_
                                             _fields11549_
                                             _struct-type-id11550_)
                                      (if _xfields11548_
                                          (let ((_g1155311563_
                                                 (lambda (_g1155411560_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1155411560_))))
                                            (let ((_g1155211570_
                                                   (lambda (_g1155411566_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx11497_))))))
                                              (let ((_g1155111606_
                                                     (lambda (_g1155411573_)
                                                       (if (gx#stx-pair?
                                                            _g1155411573_)
                                                           (let ((_e1155611575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1155411573_)))
                     (let ((_hd1155711578_ (##car _e1155611575_))
                           (_tl1155811580_ (##cdr _e1155611575_)))
                       (if (gx#stx-null? _tl1155811580_)
                           ((lambda (_L11583_)
                              (let ((_expr11603_ (gxc#compile-e _L11583_))
                                    (_off11604_
                                     (fx+ _off11513_ _xfields11548_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t11514_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off11604_ '()))
                                                   (cons _expr11603_ '()))))
                                 _stx11497_)))
                            _hd1155711578_)
                           (_g1155211570_ _g1155411573_))))
                   (_g1155211570_ _g1155411573_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1155111606_ _args11498_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id11550_)
                                            (gxc#xform-call% _stx11497_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1151711529_)
                                   (let ((_e1152411612_
                                          (##vector-ref
                                           _struct-type1151711529_
                                           '1)))
                                     (let ((_struct-type-id11615_
                                            _e1152411612_))
                                       (let ((_e1152511617_
                                              (##vector-ref
                                               _struct-type1151711529_
                                               '2)))
                                         (let ((_e1152611620_
                                                (##vector-ref
                                                 _struct-type1151711529_
                                                 '3)))
                                           (let ((_fields11623_ _e1152611620_))
                                             (let ((_e1152711625_
                                                    (##vector-ref
                                                     _struct-type1151711529_
                                                     '4)))
                                               (let ((_xfields11628_
                                                      _e1152711625_))
                                                 (_K1152311609_
                                                  _xfields11628_
                                                  _fields11623_
                                                  _struct-type-id11615_))))))))
                                   (_try-match1151911545_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self1149911506_)
                (let ((_e1150311633_ (##vector-ref _self1149911506_ '1)))
                  (let ((_struct-t11636_ _e1150311633_))
                    (let ((_e1150411638_ (##vector-ref _self1149911506_ '2)))
                      (let ((_off11641_ _e1150411638_))
                        (_K1150211630_ _off11641_ _struct-t11636_)))))
                (_E1150111510_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self11332_ _stx11333_ _args11334_)
      (let ((_self1133511342_ _self11332_))
        (let ((_E1133711346_
               (lambda () (error '"No clause matching" _self1133511342_))))
          (let ((_K1133811483_
                 (lambda (_off11349_ _struct-t11350_)
                   (let ((_struct-type11352_
                          (gxc#optimizer-resolve-type _struct-t11350_)))
                     (let ((_struct-type1135311365_ _struct-type11352_))
                       (let ((_E1135711369_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1135311365_))))
                         (let ((_else1135611373_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11333_
                                   _struct-t11350_
                                   _struct-type11352_))))
                           (let ((_try-match1135511381_
                                  (lambda ()
                                    (let ((_K1135811378_
                                           (lambda ()
                                             (gxc#xform-call% _stx11333_))))
                                      (if (##eq? _struct-type1135311365_ '#f)
                                          (_K1135811378_)
                                          (_else1135611373_))))))
                             (let ((_K1135911462_
                                    (lambda (_xfields11384_
                                             _fields11385_
                                             _struct-type-id11386_)
                                      (if _xfields11384_
                                          (let ((_g1138911403_
                                                 (lambda (_g1139011400_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1139011400_))))
                                            (let ((_g1138811410_
                                                   (lambda (_g1139011406_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx11333_))))))
                                              (let ((_g1138711459_
                                                     (lambda (_g1139011413_)
                                                       (if (gx#stx-pair?
                                                            _g1139011413_)
                                                           (let ((_e1139311415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1139011413_)))
                     (let ((_hd1139411418_ (##car _e1139311415_))
                           (_tl1139511420_ (##cdr _e1139311415_)))
                       (if (gx#stx-pair? _tl1139511420_)
                           (let ((_e1139611423_ (gx#stx-e _tl1139511420_)))
                             (let ((_hd1139711426_ (##car _e1139611423_))
                                   (_tl1139811428_ (##cdr _e1139611423_)))
                               (if (gx#stx-null? _tl1139811428_)
                                   ((lambda (_L11431_ _L11432_)
                                      (let ((_expr11455_
                                             (gxc#compile-e _L11432_))
                                            (_val11456_
                                             (gxc#compile-e _L11431_))
                                            (_off11457_
                                             (fx+ _off11349_
                                                  _xfields11384_
                                                  '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t11350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off11457_ '()))
                   (cons _expr11455_ (cons _val11456_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx11333_)))
                                    _hd1139711426_
                                    _hd1139411418_)
                                   (_g1138811410_ _g1139011413_))))
                           (_g1138811410_ _g1139011413_))))
                   (_g1138811410_ _g1139011413_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1138711459_ _args11334_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id11386_)
                                            (gxc#xform-call% _stx11333_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1135311365_)
                                   (let ((_e1136011465_
                                          (##vector-ref
                                           _struct-type1135311365_
                                           '1)))
                                     (let ((_struct-type-id11468_
                                            _e1136011465_))
                                       (let ((_e1136111470_
                                              (##vector-ref
                                               _struct-type1135311365_
                                               '2)))
                                         (let ((_e1136211473_
                                                (##vector-ref
                                                 _struct-type1135311365_
                                                 '3)))
                                           (let ((_fields11476_ _e1136211473_))
                                             (let ((_e1136311478_
                                                    (##vector-ref
                                                     _struct-type1135311365_
                                                     '4)))
                                               (let ((_xfields11481_
                                                      _e1136311478_))
                                                 (_K1135911462_
                                                  _xfields11481_
                                                  _fields11476_
                                                  _struct-type-id11468_))))))))
                                   (_try-match1135511381_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self1133511342_)
                (let ((_e1133911486_ (##vector-ref _self1133511342_ '1)))
                  (let ((_struct-t11489_ _e1133911486_))
                    (let ((_e1134011491_ (##vector-ref _self1133511342_ '2)))
                      (let ((_off11494_ _e1134011491_))
                        (_K1133811483_ _off11494_ _struct-t11489_)))))
                (_E1133711346_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self11288_ _stx11289_ _args11290_)
      (let ((_self1129111300_ _self11288_))
        (let ((_E1129311304_
               (lambda () (error '"No clause matching" _self1129111300_))))
          (let ((_K1129411311_
                 (lambda (_inline11307_ _dispatch11308_ _arity11309_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self11288_ _args11290_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx11289_
                          _arity11309_))
                     (if _inline11307_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline11307_ _stx11289_)
                             _stx11289_)))
                         (if _dispatch11308_
                             (begin
                               (gxc#verbose
                                '"dispatch lambda => "
                                _dispatch11308_)
                               (gxc#compile-e
                                (gxc#xform-wrap-source
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons _dispatch11308_ '()))
                                             _args11290_))
                                 _stx11289_)))
                             (gxc#xform-call% _stx11289_)))))))
            (if (struct-instance? gxc#!lambda::t _self1129111300_)
                (let ((_e1129511314_ (##vector-ref _self1129111300_ '1)))
                  (let ((_e1129611317_ (##vector-ref _self1129111300_ '2)))
                    (let ((_arity11320_ _e1129611317_))
                      (let ((_e1129711322_ (##vector-ref _self1129111300_ '3)))
                        (let ((_dispatch11325_ _e1129711322_))
                          (let ((_e1129811327_
                                 (##vector-ref _self1129111300_ '4)))
                            (let ((_inline11330_ _e1129811327_))
                              (_K1129411311_
                               _inline11330_
                               _dispatch11325_
                               _arity11320_))))))))
                (_E1129311304_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self11248_ _stx11249_ _args11250_)
      (let ((_self1125111258_ _self11248_))
        (let ((_E1125311262_
               (lambda () (error '"No clause matching" _self1125111258_))))
          (let ((_K1125411277_
                 (lambda (_clauses11265_)
                   (let ((_$e11271_
                          (find (lambda (_g1126611268_)
                                  (gxc#!lambda-arity-match?
                                   _g1126611268_
                                   _args11250_))
                                _clauses11265_)))
                     (if _$e11271_
                         ((lambda (_clause11274_)
                            (call-method
                             _clause11274_
                             'optimize-call
                             _stx11249_
                             _args11250_))
                          _$e11271_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx11249_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses11265_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses11265_)))))))
            (if (struct-instance? gxc#!case-lambda::t _self1125111258_)
                (let ((_e1125511280_ (##vector-ref _self1125111258_ '1)))
                  (let ((_e1125611283_ (##vector-ref _self1125111258_ '2)))
                    (let ((_clauses11286_ _e1125611283_))
                      (_K1125411277_ _clauses11286_))))
                (_E1125311262_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self11184_ _args11185_)
      (let ((_self1118611193_ _self11184_))
        (let ((_E1118811197_
               (lambda () (error '"No clause matching" _self1118611193_))))
          (let ((_K1118911237_
                 (lambda (_arity11200_)
                   (let ((_arity1120111210_ _arity11200_))
                     (let ((_E1120411214_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1120111210_))))
                       (let ((_try-match1120311230_
                              (lambda ()
                                (let ((_K1120511220_
                                       (lambda (_arity11218_)
                                         (fx>= (length _args11185_)
                                               _arity11218_))))
                                  (if (##pair? _arity1120111210_)
                                      (let ((_hd1120611223_
                                             (##car _arity1120111210_))
                                            (_tl1120711225_
                                             (##cdr _arity1120111210_)))
                                        (let ((_arity11228_ _hd1120611223_))
                                          (if (##null? _tl1120711225_)
                                              (_K1120511220_ _arity11228_)
                                              (_E1120411214_))))
                                      (_E1120411214_))))))
                         (let ((_K1120811234_
                                (lambda ()
                                  (fx= (length _args11185_) _arity11200_))))
                           (if (fixnum? _arity1120111210_)
                               (_K1120811234_)
                               (_try-match1120311230_)))))))))
            (if (struct-instance? gxc#!lambda::t _self1118611193_)
                (let ((_e1119011240_ (##vector-ref _self1118611193_ '1)))
                  (let ((_e1119111243_ (##vector-ref _self1118611193_ '2)))
                    (let ((_arity11246_ _e1119111243_))
                      (_K1118911237_ _arity11246_))))
                (_E1118811197_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx11124_)
      (let ((_g1112611140_
             (lambda (_g1112711137_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1112711137_))))
        (let ((_g1112511181_
               (lambda (_g1112711143_)
                 (if (gx#stx-pair? _g1112711143_)
                     (let ((_e1113011145_ (gx#stx-e _g1112711143_)))
                       (let ((_hd1113111148_ (##car _e1113011145_))
                             (_tl1113211150_ (##cdr _e1113011145_)))
                         (if (gx#stx-pair? _tl1113211150_)
                             (let ((_e1113311153_ (gx#stx-e _tl1113211150_)))
                               (let ((_hd1113411156_ (##car _e1113311153_))
                                     (_tl1113511158_ (##cdr _e1113311153_)))
                                 ((lambda (_L11161_ _L11162_)
                                    (let ((_ctx11175_
                                           (gx#syntax-local-e__0 _L11162_)))
                                      (let ((_code11177_
                                             (##structure-ref
                                              _ctx11175_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code11177_))
                                           gx#current-expander-context
                                           _ctx11175_)))))
                                  _tl1113511158_
                                  _hd1113411156_)))
                             (_g1112611140_ _g1112711143_))))
                     (_g1112611140_ _g1112711143_)))))
          (_g1112511181_ _stx11124_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx10934_)
      (let ((_generate-e10936_
             (lambda (_id11113_)
               (let ((_sym11115_
                      (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                          (gxc#generate-runtime-binding-id _id11113_)
                          '#f)))
                 (let ((_$e11117_
                        (if _sym11115_
                            (gxc#optimizer-lookup-type _sym11115_)
                            '#f)))
                   (if _$e11117_
                       ((lambda (_type11120_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym11115_)
                            (let ((_typedecl11122_
                                   (call-method _type11120_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym11115_
                                          (cons _typedecl11122_ '()))))))
                        _$e11117_)
                       '(begin)))))))
        (let ((_g1093910977_
               (lambda (_g1094010974_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1094010974_))))
          (let ((_g1093811058_
                 (lambda (_g1094010980_)
                   (if (gx#stx-pair? _g1094010980_)
                       (let ((_e1095510982_ (gx#stx-e _g1094010980_)))
                         (let ((_hd1095610985_ (##car _e1095510982_))
                               (_tl1095710987_ (##cdr _e1095510982_)))
                           (if (gx#stx-pair? _tl1095710987_)
                               (let ((_e1095810990_ (gx#stx-e _tl1095710987_)))
                                 (let ((_hd1095910993_ (##car _e1095810990_))
                                       (_tl1096010995_ (##cdr _e1095810990_)))
                                   (if (gx#stx-pair/null? _hd1095910993_)
                                       (if (fx>= (gx#stx-length _hd1095910993_)
                                                 '0)
                                           (let ((_g19287_
                                                  (gx#syntax-split-splice
                                                   _hd1095910993_
                                                   '0)))
                                             (begin
                                               (let ((_g19288_
                                                      (values-count _g19287_)))
                                                 (if (not (fx= _g19288_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19288_)))
                                               (let ((_target1096110998_
                                                      (values-ref _g19287_ 0))
                                                     (_tl1096311000_
                                                      (values-ref _g19287_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1096311000_)
                                                     (letrec ((_loop1096411003_
                                                               (lambda (_hd1096211006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1096811008_)
                         (if (gx#stx-pair? _hd1096211006_)
                             (let ((_e1096511011_ (gx#stx-e _hd1096211006_)))
                               (let ((_lp-hd1096611014_ (##car _e1096511011_))
                                     (_lp-tl1096711016_ (##cdr _e1096511011_)))
                                 (_loop1096411003_
                                  _lp-tl1096711016_
                                  (cons _lp-hd1096611014_ _id1096811008_))))
                             (let ((_id1096911019_ (reverse _id1096811008_)))
                               (if (gx#stx-pair? _tl1096010995_)
                                   (let ((_e1097011022_
                                          (gx#stx-e _tl1096010995_)))
                                     (let ((_hd1097111025_
                                            (##car _e1097011022_))
                                           (_tl1097211027_
                                            (##cdr _e1097011022_)))
                                       (if (gx#stx-null? _tl1097211027_)
                                           ((lambda (_L11030_)
                                              (let ((_types11056_
                                                     (map _generate-e10936_
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1104811051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1104911053_)
                              (cons _g1104811051_ _g1104911053_))
                            '()
                            _L11030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'begin _types11056_)))
                                            _id1096911019_)
                                           (_g1093910977_ _g1094010980_))))
                                   (_g1093910977_ _g1094010980_)))))))
               (_loop1096411003_ _target1096110998_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1093910977_
                                                      _g1094010980_)))))
                                           (_g1093910977_ _g1094010980_))
                                       (_g1093910977_ _g1094010980_))))
                               (_g1093910977_ _g1094010980_))))
                       (_g1093910977_ _g1094010980_)))))
            (let ((_g1093711110_
                   (lambda (_g1094011061_)
                     (if (gx#stx-pair? _g1094011061_)
                         (let ((_e1094211063_ (gx#stx-e _g1094011061_)))
                           (let ((_hd1094311066_ (##car _e1094211063_))
                                 (_tl1094411068_ (##cdr _e1094211063_)))
                             (if (gx#stx-pair? _tl1094411068_)
                                 (let ((_e1094511071_
                                        (gx#stx-e _tl1094411068_)))
                                   (let ((_hd1094611074_ (##car _e1094511071_))
                                         (_tl1094711076_
                                          (##cdr _e1094511071_)))
                                     (if (gx#stx-pair? _hd1094611074_)
                                         (let ((_e1094811079_
                                                (gx#stx-e _hd1094611074_)))
                                           (let ((_hd1094911082_
                                                  (##car _e1094811079_))
                                                 (_tl1095011084_
                                                  (##cdr _e1094811079_)))
                                             (if (gx#stx-null? _tl1095011084_)
                                                 (if (gx#stx-pair?
                                                      _tl1094711076_)
                                                     (let ((_e1095111087_
                                                            (gx#stx-e
                                                             _tl1094711076_)))
                                                       (let ((_hd1095211090_
                                                              (##car _e1095111087_))
                                                             (_tl1095311092_
                                                              (##cdr _e1095111087_)))
                                                         (if (gx#stx-null?
                                                              _tl1095311092_)
                                                             ((lambda (_L11095_)
                                                                (_generate-e10936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11095_))
                      _hd1094911082_)
                     (_g1093811058_ _g1094011061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1093811058_
                                                      _g1094011061_))
                                                 (_g1093811058_
                                                  _g1094011061_))))
                                         (_g1093811058_ _g1094011061_))))
                                 (_g1093811058_ _g1094011061_))))
                         (_g1093811058_ _g1094011061_)))))
              (_g1093711110_ _stx10934_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx10488_)
      (let ((_g1049210594_
             (lambda (_g1049310591_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1049310591_))))
        (let ((_g1049110601_ (lambda (_g1049310597_) ((lambda () '(begin))))))
          (let ((_g1049010751_
                 (lambda (_g1049310604_)
                   (if (gx#stx-pair? _g1049310604_)
                       (let ((_e1055110606_ (gx#stx-e _g1049310604_)))
                         (let ((_hd1055210609_ (##car _e1055110606_))
                               (_tl1055310611_ (##cdr _e1055110606_)))
                           (if (gx#stx-pair? _tl1055310611_)
                               (let ((_e1055410614_ (gx#stx-e _tl1055310611_)))
                                 (let ((_hd1055510617_ (##car _e1055410614_))
                                       (_tl1055610619_ (##cdr _e1055410614_)))
                                   (if (gx#stx-pair? _hd1055510617_)
                                       (let ((_e1055710622_
                                              (gx#stx-e _hd1055510617_)))
                                         (let ((_hd1055810625_
                                                (##car _e1055710622_))
                                               (_tl1055910627_
                                                (##cdr _e1055710622_)))
                                           (if (gx#identifier? _hd1055810625_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1055810625_)
                                                   (if (gx#stx-pair?
                                                        _tl1055910627_)
                                                       (let ((_e1056010630_
                                                              (gx#stx-e
                                                               _tl1055910627_)))
                                                         (let ((_hd1056110633_
                                                                (##car _e1056010630_))
                                                               (_tl1056210635_
                                                                (##cdr _e1056010630_)))
                                                           (if (gx#stx-null?
                                                                _tl1056210635_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1055610619_)
                           (let ((_e1056310638_ (gx#stx-e _tl1055610619_)))
                             (let ((_hd1056410641_ (##car _e1056310638_))
                                   (_tl1056510643_ (##cdr _e1056310638_)))
                               (if (gx#stx-pair? _hd1056410641_)
                                   (let ((_e1056610646_
                                          (gx#stx-e _hd1056410641_)))
                                     (let ((_hd1056710649_
                                            (##car _e1056610646_))
                                           (_tl1056810651_
                                            (##cdr _e1056610646_)))
                                       (if (gx#identifier? _hd1056710649_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1056710649_)
                                               (if (gx#stx-pair?
                                                    _tl1056810651_)
                                                   (let ((_e1056910654_
                                                          (gx#stx-e
                                                           _tl1056810651_)))
                                                     (let ((_hd1057010657_
                                                            (##car _e1056910654_))
                                                           (_tl1057110659_
                                                            (##cdr _e1056910654_)))
                                                       (if (gx#stx-null?
                                                            _tl1057110659_)
                                                           (if (gx#stx-pair?
                                                                _tl1056510643_)
                                                               (let ((_e1057210662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1056510643_)))
                         (let ((_hd1057310665_ (##car _e1057210662_))
                               (_tl1057410667_ (##cdr _e1057210662_)))
                           (if (gx#stx-pair? _hd1057310665_)
                               (let ((_e1057510670_ (gx#stx-e _hd1057310665_)))
                                 (let ((_hd1057610673_ (##car _e1057510670_))
                                       (_tl1057710675_ (##cdr _e1057510670_)))
                                   (if (gx#identifier? _hd1057610673_)
                                       (if (gx#stx-eq? '%#quote _hd1057610673_)
                                           (if (gx#stx-pair? _tl1057710675_)
                                               (let ((_e1057810678_
                                                      (gx#stx-e
                                                       _tl1057710675_)))
                                                 (let ((_hd1057910681_
                                                        (##car _e1057810678_))
                                                       (_tl1058010683_
                                                        (##cdr _e1057810678_)))
                                                   (if (gx#stx-null?
                                                        _tl1058010683_)
                                                       (if (gx#stx-pair?
                                                            _tl1057410667_)
                                                           (let ((_e1058110686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1057410667_)))
                     (let ((_hd1058210689_ (##car _e1058110686_))
                           (_tl1058310691_ (##cdr _e1058110686_)))
                       (if (gx#stx-pair? _hd1058210689_)
                           (let ((_e1058410694_ (gx#stx-e _hd1058210689_)))
                             (let ((_hd1058510697_ (##car _e1058410694_))
                                   (_tl1058610699_ (##cdr _e1058410694_)))
                               (if (gx#identifier? _hd1058510697_)
                                   (if (gx#stx-eq? '%#ref _hd1058510697_)
                                       (if (gx#stx-pair? _tl1058610699_)
                                           (let ((_e1058710702_
                                                  (gx#stx-e _tl1058610699_)))
                                             (let ((_hd1058810705_
                                                    (##car _e1058710702_))
                                                   (_tl1058910707_
                                                    (##cdr _e1058710702_)))
                                               (if (gx#stx-null?
                                                    _tl1058910707_)
                                                   (if (gx#stx-null?
                                                        _tl1058310691_)
                                                       ((lambda (_L10710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10711_
                         _L10712_
                         _L10713_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#generate-runtime-binding-id _L10712_)
                                  (cons (gx#stx-e _L10711_)
                                        (cons (gxc#generate-runtime-binding-id
                                               _L10710_)
                                              (cons '#f '())))))
                      (_g1049110601_ _g1049310604_)))
                _hd1058810705_
                _hd1057910681_
                _hd1057010657_
                _hd1056110633_)
               (_g1049110601_ _g1049310604_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1049110601_
                                                    _g1049310604_))))
                                           (_g1049110601_ _g1049310604_))
                                       (_g1049110601_ _g1049310604_))
                                   (_g1049110601_ _g1049310604_))))
                           (_g1049110601_ _g1049310604_))))
                   (_g1049110601_ _g1049310604_))
               (_g1049110601_ _g1049310604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1049110601_ _g1049310604_))
                                           (_g1049110601_ _g1049310604_))
                                       (_g1049110601_ _g1049310604_))))
                               (_g1049110601_ _g1049310604_))))
                       (_g1049110601_ _g1049310604_))
                   (_g1049110601_ _g1049310604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1049110601_
                                                    _g1049310604_))
                                               (_g1049110601_ _g1049310604_))
                                           (_g1049110601_ _g1049310604_))))
                                   (_g1049110601_ _g1049310604_))))
                           (_g1049110601_ _g1049310604_))
                       (_g1049110601_ _g1049310604_))))
               (_g1049110601_ _g1049310604_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1049110601_
                                                    _g1049310604_))
                                               (_g1049110601_ _g1049310604_))))
                                       (_g1049110601_ _g1049310604_))))
                               (_g1049110601_ _g1049310604_))))
                       (_g1049110601_ _g1049310604_)))))
            (let ((_g1048910931_
                   (lambda (_g1049310754_)
                     (if (gx#stx-pair? _g1049310754_)
                         (let ((_e1049910756_ (gx#stx-e _g1049310754_)))
                           (let ((_hd1050010759_ (##car _e1049910756_))
                                 (_tl1050110761_ (##cdr _e1049910756_)))
                             (if (gx#stx-pair? _tl1050110761_)
                                 (let ((_e1050210764_
                                        (gx#stx-e _tl1050110761_)))
                                   (let ((_hd1050310767_ (##car _e1050210764_))
                                         (_tl1050410769_
                                          (##cdr _e1050210764_)))
                                     (if (gx#stx-pair? _hd1050310767_)
                                         (let ((_e1050510772_
                                                (gx#stx-e _hd1050310767_)))
                                           (let ((_hd1050610775_
                                                  (##car _e1050510772_))
                                                 (_tl1050710777_
                                                  (##cdr _e1050510772_)))
                                             (if (gx#identifier?
                                                  _hd1050610775_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1050610775_)
                                                     (if (gx#stx-pair?
                                                          _tl1050710777_)
                                                         (let ((_e1050810780_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1050710777_)))
                   (let ((_hd1050910783_ (##car _e1050810780_))
                         (_tl1051010785_ (##cdr _e1050810780_)))
                     (if (gx#stx-null? _tl1051010785_)
                         (if (gx#stx-pair? _tl1050410769_)
                             (let ((_e1051110788_ (gx#stx-e _tl1050410769_)))
                               (let ((_hd1051210791_ (##car _e1051110788_))
                                     (_tl1051310793_ (##cdr _e1051110788_)))
                                 (if (gx#stx-pair? _hd1051210791_)
                                     (let ((_e1051410796_
                                            (gx#stx-e _hd1051210791_)))
                                       (let ((_hd1051510799_
                                              (##car _e1051410796_))
                                             (_tl1051610801_
                                              (##cdr _e1051410796_)))
                                         (if (gx#identifier? _hd1051510799_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1051510799_)
                                                 (if (gx#stx-pair?
                                                      _tl1051610801_)
                                                     (let ((_e1051710804_
                                                            (gx#stx-e
                                                             _tl1051610801_)))
                                                       (let ((_hd1051810807_
                                                              (##car _e1051710804_))
                                                             (_tl1051910809_
                                                              (##cdr _e1051710804_)))
                                                         (if (gx#stx-null?
                                                              _tl1051910809_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1051310793_)
                         (let ((_e1052010812_ (gx#stx-e _tl1051310793_)))
                           (let ((_hd1052110815_ (##car _e1052010812_))
                                 (_tl1052210817_ (##cdr _e1052010812_)))
                             (if (gx#stx-pair? _hd1052110815_)
                                 (let ((_e1052310820_
                                        (gx#stx-e _hd1052110815_)))
                                   (let ((_hd1052410823_ (##car _e1052310820_))
                                         (_tl1052510825_
                                          (##cdr _e1052310820_)))
                                     (if (gx#identifier? _hd1052410823_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1052410823_)
                                             (if (gx#stx-pair? _tl1052510825_)
                                                 (let ((_e1052610828_
                                                        (gx#stx-e
                                                         _tl1052510825_)))
                                                   (let ((_hd1052710831_
                                                          (##car _e1052610828_))
                                                         (_tl1052810833_
                                                          (##cdr _e1052610828_)))
                                                     (if (gx#stx-null?
                                                          _tl1052810833_)
                                                         (if (gx#stx-pair?
                                                              _tl1052210817_)
                                                             (let ((_e1052910836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1052210817_)))
                       (let ((_hd1053010839_ (##car _e1052910836_))
                             (_tl1053110841_ (##cdr _e1052910836_)))
                         (if (gx#stx-pair? _hd1053010839_)
                             (let ((_e1053210844_ (gx#stx-e _hd1053010839_)))
                               (let ((_hd1053310847_ (##car _e1053210844_))
                                     (_tl1053410849_ (##cdr _e1053210844_)))
                                 (if (gx#identifier? _hd1053310847_)
                                     (if (gx#stx-eq? '%#ref _hd1053310847_)
                                         (if (gx#stx-pair? _tl1053410849_)
                                             (let ((_e1053510852_
                                                    (gx#stx-e _tl1053410849_)))
                                               (let ((_hd1053610855_
                                                      (##car _e1053510852_))
                                                     (_tl1053710857_
                                                      (##cdr _e1053510852_)))
                                                 (if (gx#stx-null?
                                                      _tl1053710857_)
                                                     (if (gx#stx-pair?
                                                          _tl1053110841_)
                                                         (let ((_e1053810860_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1053110841_)))
                   (let ((_hd1053910863_ (##car _e1053810860_))
                         (_tl1054010865_ (##cdr _e1053810860_)))
                     (if (gx#stx-pair? _hd1053910863_)
                         (let ((_e1054110868_ (gx#stx-e _hd1053910863_)))
                           (let ((_hd1054210871_ (##car _e1054110868_))
                                 (_tl1054310873_ (##cdr _e1054110868_)))
                             (if (gx#identifier? _hd1054210871_)
                                 (if (gx#stx-eq? '%#quote _hd1054210871_)
                                     (if (gx#stx-pair? _tl1054310873_)
                                         (let ((_e1054410876_
                                                (gx#stx-e _tl1054310873_)))
                                           (let ((_hd1054510879_
                                                  (##car _e1054410876_))
                                                 (_tl1054610881_
                                                  (##cdr _e1054410876_)))
                                             (if (gx#stx-null? _tl1054610881_)
                                                 (if (gx#stx-null?
                                                      _tl1054010865_)
                                                     ((lambda (_L10884_
                                                               _L10885_
                                                               _L10886_
                                                               _L10887_
                                                               _L10888_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10888_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#generate-runtime-binding-id _L10887_)
                                (cons (gx#stx-e _L10886_)
                                      (cons (gxc#generate-runtime-binding-id
                                             _L10885_)
                                            (cons (gx#stx-e _L10884_) '())))))
                    (_g1049010751_ _g1049310754_)))
              _hd1054510879_
              _hd1053610855_
              _hd1052710831_
              _hd1051810807_
              _hd1050910783_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1049010751_
                                                      _g1049310754_))
                                                 (_g1049010751_
                                                  _g1049310754_))))
                                         (_g1049010751_ _g1049310754_))
                                     (_g1049010751_ _g1049310754_))
                                 (_g1049010751_ _g1049310754_))))
                         (_g1049010751_ _g1049310754_))))
                 (_g1049010751_ _g1049310754_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1049010751_
                                                      _g1049310754_))))
                                             (_g1049010751_ _g1049310754_))
                                         (_g1049010751_ _g1049310754_))
                                     (_g1049010751_ _g1049310754_))))
                             (_g1049010751_ _g1049310754_))))
                     (_g1049010751_ _g1049310754_))
                 (_g1049010751_ _g1049310754_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1049010751_ _g1049310754_))
                                             (_g1049010751_ _g1049310754_))
                                         (_g1049010751_ _g1049310754_))))
                                 (_g1049010751_ _g1049310754_))))
                         (_g1049010751_ _g1049310754_))
                     (_g1049010751_ _g1049310754_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1049010751_
                                                      _g1049310754_))
                                                 (_g1049010751_ _g1049310754_))
                                             (_g1049010751_ _g1049310754_))))
                                     (_g1049010751_ _g1049310754_))))
                             (_g1049010751_ _g1049310754_))
                         (_g1049010751_ _g1049310754_))))
                 (_g1049010751_ _g1049310754_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1049010751_
                                                      _g1049310754_))
                                                 (_g1049010751_
                                                  _g1049310754_))))
                                         (_g1049010751_ _g1049310754_))))
                                 (_g1049010751_ _g1049310754_))))
                         (_g1049010751_ _g1049310754_)))))
              (_g1048910931_ _stx10488_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self10464_)
      (let ((_self1046510471_ _self10464_))
        (let ((_E1046710475_
               (lambda () (error '"No clause matching" _self1046510471_))))
          (let ((_K1046810480_
                 (lambda (_alias-id10478_)
                   (cons '@alias (cons _alias-id10478_ '())))))
            (if (struct-instance? gxc#!alias::t _self1046510471_)
                (let ((_e1046910483_ (##vector-ref _self1046510471_ '1)))
                  (let ((_alias-id10486_ _e1046910483_))
                    (_K1046810480_ _alias-id10486_)))
                (_E1046710475_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self10408_)
      (let ((_self1040910420_ _self10408_))
        (let ((_E1041110424_
               (lambda () (error '"No clause matching" _self1040910420_))))
          (let ((_K1041210433_
                 (lambda (_plist10427_
                          _ctor10428_
                          _fields10429_
                          _super10430_
                          _type-id10431_)
                   (cons '@struct-type
                         (cons _type-id10431_
                               (cons _super10430_
                                     (cons _fields10429_
                                           (cons _ctor10428_
                                                 (cons _plist10427_
                                                       '())))))))))
            (if (struct-instance? gxc#!struct-type::t _self1040910420_)
                (let ((_e1041310436_ (##vector-ref _self1040910420_ '1)))
                  (let ((_type-id10439_ _e1041310436_))
                    (let ((_e1041410441_ (##vector-ref _self1040910420_ '2)))
                      (let ((_super10444_ _e1041410441_))
                        (let ((_e1041510446_
                               (##vector-ref _self1040910420_ '3)))
                          (let ((_fields10449_ _e1041510446_))
                            (let ((_e1041610451_
                                   (##vector-ref _self1040910420_ '4)))
                              (let ((_e1041710454_
                                     (##vector-ref _self1040910420_ '5)))
                                (let ((_ctor10457_ _e1041710454_))
                                  (let ((_e1041810459_
                                         (##vector-ref _self1040910420_ '6)))
                                    (let ((_plist10462_ _e1041810459_))
                                      (_K1041210433_
                                       _plist10462_
                                       _ctor10457_
                                       _fields10449_
                                       _super10444_
                                       _type-id10439_))))))))))))
                (_E1041110424_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self10384_)
      (let ((_self1038510391_ _self10384_))
        (let ((_E1038710395_
               (lambda () (error '"No clause matching" _self1038510391_))))
          (let ((_K1038810400_
                 (lambda (_struct-t10398_)
                   (cons '@struct-pred (cons _struct-t10398_ '())))))
            (if (struct-instance? gxc#!struct-pred::t _self1038510391_)
                (let ((_e1038910403_ (##vector-ref _self1038510391_ '1)))
                  (let ((_struct-t10406_ _e1038910403_))
                    (_K1038810400_ _struct-t10406_)))
                (_E1038710395_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self10360_)
      (let ((_self1036110367_ _self10360_))
        (let ((_E1036310371_
               (lambda () (error '"No clause matching" _self1036110367_))))
          (let ((_K1036410376_
                 (lambda (_struct-t10374_)
                   (cons '@struct-cons (cons _struct-t10374_ '())))))
            (if (struct-instance? gxc#!struct-cons::t _self1036110367_)
                (let ((_e1036510379_ (##vector-ref _self1036110367_ '1)))
                  (let ((_struct-t10382_ _e1036510379_))
                    (_K1036410376_ _struct-t10382_)))
                (_E1036310371_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self10329_)
      (let ((_self1033010337_ _self10329_))
        (let ((_E1033210341_
               (lambda () (error '"No clause matching" _self1033010337_))))
          (let ((_K1033310347_
                 (lambda (_off10344_ _struct-t10345_)
                   (cons '@struct-getf
                         (cons _struct-t10345_ (cons _off10344_ '()))))))
            (if (struct-instance? gxc#!struct-getf::t _self1033010337_)
                (let ((_e1033410350_ (##vector-ref _self1033010337_ '1)))
                  (let ((_struct-t10353_ _e1033410350_))
                    (let ((_e1033510355_ (##vector-ref _self1033010337_ '2)))
                      (let ((_off10358_ _e1033510355_))
                        (_K1033310347_ _off10358_ _struct-t10353_)))))
                (_E1033210341_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self10298_)
      (let ((_self1029910306_ _self10298_))
        (let ((_E1030110310_
               (lambda () (error '"No clause matching" _self1029910306_))))
          (let ((_K1030210316_
                 (lambda (_off10313_ _struct-t10314_)
                   (cons '@struct-setf
                         (cons _struct-t10314_ (cons _off10313_ '()))))))
            (if (struct-instance? gxc#!struct-setf::t _self1029910306_)
                (let ((_e1030310319_ (##vector-ref _self1029910306_ '1)))
                  (let ((_struct-t10322_ _e1030310319_))
                    (let ((_e1030410324_ (##vector-ref _self1029910306_ '2)))
                      (let ((_off10327_ _e1030410324_))
                        (_K1030210316_ _off10327_ _struct-t10322_)))))
                (_E1030110310_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self10246_)
      (let ((_self1024710257_ _self10246_))
        (let ((_E1024910261_
               (lambda () (error '"No clause matching" _self1024710257_))))
          (let ((_K1025010272_
                 (lambda (_typedecl10264_
                          _inline10265_
                          _dispatch10266_
                          _arity10267_)
                   (if _inline10265_
                       (let ((_$e10269_ _typedecl10264_))
                         (if _$e10269_
                             _$e10269_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity10267_
                                   (cons _dispatch10266_ '())))))))
            (if (struct-instance? gxc#!lambda::t _self1024710257_)
                (let ((_e1025110275_ (##vector-ref _self1024710257_ '1)))
                  (let ((_e1025210278_ (##vector-ref _self1024710257_ '2)))
                    (let ((_arity10281_ _e1025210278_))
                      (let ((_e1025310283_ (##vector-ref _self1024710257_ '3)))
                        (let ((_dispatch10286_ _e1025310283_))
                          (let ((_e1025410288_
                                 (##vector-ref _self1024710257_ '4)))
                            (let ((_inline10291_ _e1025410288_))
                              (let ((_e1025510293_
                                     (##vector-ref _self1024710257_ '5)))
                                (let ((_typedecl10296_ _e1025510293_))
                                  (_K1025010272_
                                   _typedecl10296_
                                   _inline10291_
                                   _dispatch10286_
                                   _arity10281_))))))))))
                (_E1024910261_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self10179_)
      (let ((_clause-e10181_
             (lambda (_clause10211_)
               (let ((_clause1021210220_ _clause10211_))
                 (let ((_E1021410224_
                        (lambda ()
                          (error '"No clause matching" _clause1021210220_))))
                   (let ((_K1021510230_
                          (lambda (_dispatch10227_ _arity10228_)
                            (cons _arity10228_ (cons _dispatch10227_ '())))))
                     (if (struct-instance? gxc#!lambda::t _clause1021210220_)
                         (let ((_e1021610233_
                                (##vector-ref _clause1021210220_ '1)))
                           (let ((_e1021710236_
                                  (##vector-ref _clause1021210220_ '2)))
                             (let ((_arity10239_ _e1021710236_))
                               (let ((_e1021810241_
                                      (##vector-ref _clause1021210220_ '3)))
                                 (let ((_dispatch10244_ _e1021810241_))
                                   (_K1021510230_
                                    _dispatch10244_
                                    _arity10239_))))))
                         (_E1021410224_))))))))
        (let ((_self1018210189_ _self10179_))
          (let ((_E1018410193_
                 (lambda () (error '"No clause matching" _self1018210189_))))
            (let ((_K1018510200_
                   (lambda (_clauses10196_)
                     (let ((_clauses10198_
                            (map _clause-e10181_ _clauses10196_)))
                       (cons '@case-lambda _clauses10198_)))))
              (if (struct-instance? gxc#!case-lambda::t _self1018210189_)
                  (let ((_e1018610203_ (##vector-ref _self1018210189_ '1)))
                    (let ((_e1018710206_ (##vector-ref _self1018210189_ '2)))
                      (let ((_clauses10209_ _e1018710206_))
                        (_K1018510200_ _clauses10209_))))
                  (_E1018410193_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx10177_) (gxc#generate-runtime-binding-id _stx10177_))))
