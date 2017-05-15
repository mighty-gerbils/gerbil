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
    (lambda _$args19101_
      (apply make-struct-instance gxc#optimizer-info::t _$args19101_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self19099_)
      (direct-struct-instance-init!
       _self19099_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj19113 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj19113) __obj19113))))))
  (define gxc#optimize!
    (lambda (_ctx19093_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-prelude-ssxi _ctx19093_)
           (gxc#optimizer-load-ssxi-deps _ctx19093_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx19093_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code19096_
                  (gxc#optimize-source
                   (##structure-ref _ctx19093_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx19093_
              _code19096_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx19054_)
      ((letrec ((_lp19056_
                 (lambda (_rest19058_)
                   (let ((_rest1905919067_ _rest19058_))
                     (let ((_E1906219071_
                            (lambda ()
                              (error '"No clause matching" _rest1905919067_))))
                       (let ((_else1906119075_ (lambda () '#!void)))
                         (let ((_K1906319081_
                                (lambda (_rest19078_ _hd19079_)
                                  (if (##structure-instance-of?
                                       _hd19079_
                                       'gx#module-context::t)
                                      (begin
                                        (if (table-ref
                                             (##structure-ref
                                              (gxc#current-compile-optimizer-info)
                                              '2
                                              gxc#optimizer-info::t
                                              '#f)
                                             (##structure-ref
                                              _hd19079_
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '#f)
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx19054_)
                                              (_lp19056_
                                               (##structure-ref
                                                _hd19079_
                                                '8
                                                gx#module-context::t
                                                '#f))
                                              (gxc#optimizer-load-ssxi
                                               _hd19079_)))
                                        (_lp19056_ _rest19078_))
                                      (if (##structure-direct-instance-of?
                                           _hd19079_
                                           'gx#module-import::t)
                                          (_lp19056_
                                           (cons (##structure-ref
                                                  _hd19079_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _rest19078_))
                                          (if (##structure-direct-instance-of?
                                               _hd19079_
                                               'gx#module-export::t)
                                              (_lp19056_
                                               (cons (##structure-ref
                                                      _hd19079_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _rest19078_))
                                              (if (##structure-direct-instance-of?
                                                   _hd19079_
                                                   'gx#import-set::t)
                                                  (_lp19056_
                                                   (cons (##structure-ref
                                                          _hd19079_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _rest19078_))
                                                  (error '"Unexpected module import"
                                                         _hd19079_))))))))
                           (if (##pair? _rest1905919067_)
                               (let ((_hd1906419084_ (##car _rest1905919067_))
                                     (_tl1906519086_ (##cdr _rest1905919067_)))
                                 (let ((_hd19089_ _hd1906419084_))
                                   (let ((_rest19091_ _tl1906519086_))
                                     (_K1906319081_ _rest19091_ _hd19089_))))
                               (_else1906119075_)))))))))
         _lp19056_)
       (##structure-ref _ctx19054_ '8 gx#module-context::t '#f))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx19049_)
      (let ((_$e19051_ (gx#core-context-prelude__opt-lambda10896 _ctx19049_)))
        (if _$e19051_ (gxc#optimizer-load-ssxi _$e19051_) '#!void))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx19029_)
      (if (if (##structure-instance-of? _ctx19029_ 'gx#module-context::t)
              (list? (##structure-ref _ctx19029_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht19031_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id19033_
                   (##structure-ref _ctx19029_ '1 gx#expander-context::t '#f)))
              (let ((_mod19035_ (table-ref _ht19031_ _id19033_ '#f)))
                (let ()
                  (let ((_$e19038_ _mod19035_))
                    (if _$e19038_
                        _$e19038_
                        (let ((_mod19041_
                               (gxc#optimizer-import-ssxi _ctx19029_)))
                          (let ((_val19046_
                                 (let ((_$e19043_ _mod19041_))
                                   (if _$e19043_ _$e19043_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht19031_ _id19033_ _val19046_)
                                _val19046_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx19006_)
      (let ((_catch-e19008_
             (lambda (_exn19027_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx19006_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn19027_))
                     '#!void)
                 '#f))))
        (let ((_import-e19009_
               (lambda ()
                 (let ((_str-id19012_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx19006_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path19020_
                          (let ((_odir1901319015_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1901319015_
                                (let ((_odir19018_ _odir1901319015_))
                                  (path-expand
                                   (string-append _str-id19012_ '".ss")
                                   _odir19018_))
                                '#f))))
                     (let ((_library-path19022_
                            (string->symbol
                             (string-append '":" _str-id19012_))))
                       (let ((_ssxi-path19024_
                              (if (if _artefact-path19020_
                                      (file-exists? _artefact-path19020_)
                                      '#f)
                                  _artefact-path19020_
                                  _library-path19022_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path19024_)
                             (gx#import-module__opt-lambda10931
                              _ssxi-path19024_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx19006_ '1 gx#expander-context::t '#f)
              (with-catch _catch-e19008_ _import-e19009_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args19003_
      (apply make-struct-instance gxc#!type::t _$args19003_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args19000_
      (apply make-struct-instance gxc#!alias::t _$args19000_)))
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
    (lambda _$args18997_
      (apply make-struct-instance gxc#!struct-type::t _$args18997_)))
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
    (lambda _$args18994_
      (apply make-struct-instance gxc#!procedure::t _$args18994_)))
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
    (lambda _$args18991_
      (apply make-struct-instance gxc#!struct-pred::t _$args18991_)))
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
    (lambda _$args18988_
      (apply make-struct-instance gxc#!struct-cons::t _$args18988_)))
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
    (lambda _$args18985_
      (apply make-struct-instance gxc#!struct-getf::t _$args18985_)))
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
    (lambda _$args18982_
      (apply make-struct-instance gxc#!struct-setf::t _$args18982_)))
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
    (lambda _$args18979_
      (apply make-struct-instance gxc#!lambda::t _$args18979_)))
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
    (lambda _$args18976_
      (apply make-struct-instance gxc#!case-lambda::t _$args18976_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self18968_
             _id18969_
             _super18970_
             _fields18971_
             _xfields18972_
             _ctor18973_
             _plist18974_)
      (direct-struct-instance-init!
       _self18968_
       _id18969_
       _super18970_
       _fields18971_
       _xfields18972_
       _ctor18973_
       _plist18974_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda18932
      (lambda (_self18934_
               _id18935_
               _arity18936_
               _dispatch18937_
               _inline18938_
               _typedecl18939_)
        (direct-struct-instance-init!
         _self18934_
         _id18935_
         _arity18936_
         _dispatch18937_
         _inline18938_
         _typedecl18939_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self18944_ _id18945_ _arity18946_ _dispatch18947_)
          (let ((_inline18949_ '#f))
            (let ((_typedecl18951_ '#f))
              (direct-struct-instance-init!
               _self18944_
               _id18945_
               _arity18946_
               _dispatch18947_
               _inline18949_
               _typedecl18951_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self18953_
                 _id18954_
                 _arity18955_
                 _dispatch18956_
                 _inline18957_)
          (let ((_typedecl18959_ '#f))
            (direct-struct-instance-init!
             _self18953_
             _id18954_
             _arity18955_
             _dispatch18956_
             _inline18957_
             _typedecl18959_))))
      (define gxc#!lambda:::init!
        (lambda _g19121_
          (let ((_g19120_ (length _g19121_)))
            (cond ((fx= _g19120_ 4) (apply gxc#!lambda:::init!__0 _g19121_))
                  ((fx= _g19120_ 5) (apply gxc#!lambda:::init!__1 _g19121_))
                  ((fx= _g19120_ 6)
                   (apply direct-struct-instance-init! _g19121_))
                  (else (error "No clause matching arguments" _g19121_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type18926_)
      (let ((_$e18928_
             (##structure-ref _type18926_ '7 gxc#!struct-type::t '#f)))
        (if _$e18928_
            (values _$e18928_)
            (let ((_vtab18931_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type18926_
                 _vtab18931_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab18931_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type18917_ _method18918_)
      (let ((_vtab1891918921_
             (##structure-ref _type18917_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1891918921_
            (let ((_vtab18924_ _vtab1891918921_))
              (table-ref _vtab18924_ _method18918_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda18899
      (lambda (_sym18901_ _type18902_ _local?18903_)
        (begin
          (if (##structure-instance-of? _type18902_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym18901_
                     _type18902_))
          (gxc#verbose
           '"declare-type "
           _sym18901_
           '" "
           (##vector->list _type18902_))
          (table-set!
           (if _local?18903_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym18901_
           _type18902_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym18908_ _type18909_)
          (let ((_local?18911_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda18899
             _sym18908_
             _type18909_
             _local?18911_))))
      (define gxc#optimizer-declare-type!
        (lambda _g19123_
          (let ((_g19122_ (length _g19123_)))
            (cond ((fx= _g19122_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g19123_))
                  ((fx= _g19122_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda18899
                          _g19123_))
                  (else (error "No clause matching arguments" _g19123_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda18875
      (lambda (_type-t18877_ _method18878_ _sym18879_ _rebind?18880_)
        (let ((_type18882_ (gxc#optimizer-resolve-type _type-t18877_)))
          (if (##structure-instance-of? _type18882_ 'gxc#!struct-type::t)
              (let ((_vtab18884_ (gxc#!struct-type-vtab _type18882_)))
                (if _rebind?18880_
                    (if (hash-key? _vtab18884_ _method18878_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t18877_
                         '" "
                         _method18878_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t18877_
                         '" "
                         _method18878_))
                    (if (hash-key? _vtab18884_ _method18878_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t18877_
                           '" "
                           _method18878_
                           '" => "
                           _sym18879_)
                          (table-set! _vtab18884_ _method18878_ _sym18879_)))))
              (if (not _type18882_)
                  (gxc#verbose '"declare-method: unknown type " _type-t18877_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t18877_
                         _type18882_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t18889_ _method18890_ _sym18891_)
          (let ((_rebind?18893_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda18875
             _type-t18889_
             _method18890_
             _sym18891_
             _rebind?18893_))))
      (define gxc#optimizer-declare-method!
        (lambda _g19125_
          (let ((_g19124_ (length _g19125_)))
            (cond ((fx= _g19124_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g19125_))
                  ((fx= _g19124_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda18875
                          _g19125_))
                  (else (error "No clause matching arguments" _g19125_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym18865_)
      (let ((_$e18873_
             (let ((_ht1886618868_ (gxc#current-compile-local-type)))
               (if _ht1886618868_
                   (let ((_ht18871_ _ht1886618868_))
                     (table-ref _ht18871_ _sym18865_ '#f))
                   '#f))))
        (if _$e18873_
            _$e18873_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym18865_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym18857_)
      (let ((_type1885818860_ (gxc#optimizer-lookup-type _sym18857_)))
        (if _type1885818860_
            (let ((_type18863_ _type1885818860_))
              (if (##structure-instance-of? _type18863_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type18863_ '1 gxc#!type::t '#f))
                  _type18863_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t18852_ _method18853_)
      (let ((_type18855_ (gxc#optimizer-resolve-type _type-t18852_)))
        (if (##structure-instance-of? _type18855_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type18855_ _method18853_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx18848_)
      (begin
        (gxc#apply-collect-mutators _stx18848_)
        (let ((_stx18850_ (gxc#apply-lift-top-lambdas _stx18848_)))
          (begin
            (gxc#apply-collect-type-info _stx18850_)
            (gxc#apply-optimize-call _stx18850_))))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl18845_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18845_ '%#lambda false)
           (table-set! _tbl18845_ '%#case-lambda false)
           (table-set! _tbl18845_ '%#let-values false)
           (table-set! _tbl18845_ '%#letrec-values false)
           (table-set! _tbl18845_ '%#letrec*-values false)
           (table-set! _tbl18845_ '%#quote false)
           (table-set! _tbl18845_ '%#quote-syntax false)
           (table-set! _tbl18845_ '%#call false)
           (table-set! _tbl18845_ '%#if false)
           (table-set! _tbl18845_ '%#ref false)
           (table-set! _tbl18845_ '%#set! false)
           (table-set! _tbl18845_ '%#struct-instance? false)
           (table-set! _tbl18845_ '%#struct-direct-instance? false)
           (table-set! _tbl18845_ '%#struct-ref false)
           (table-set! _tbl18845_ '%#struct-set! false)
           _tbl18845_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl18841_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18841_ '%#begin false)
           (table-set! _tbl18841_ '%#begin-syntax false)
           (table-set! _tbl18841_ '%#begin-foreign false)
           (table-set! _tbl18841_ '%#module false)
           (table-set! _tbl18841_ '%#import false)
           (table-set! _tbl18841_ '%#export false)
           (table-set! _tbl18841_ '%#provide false)
           (table-set! _tbl18841_ '%#extern false)
           (table-set! _tbl18841_ '%#define-values false)
           (table-set! _tbl18841_ '%#define-syntax false)
           (table-set! _tbl18841_ '%#define-alias false)
           (table-set! _tbl18841_ '%#declare false)
           _tbl18841_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl18837_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18837_ (force gxc#&false-special-form))
           (hash-copy! _tbl18837_ (force gxc#&false-expression))
           _tbl18837_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl18833_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18833_ '%#lambda gxc#xform-identity)
           (table-set! _tbl18833_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl18833_ '%#let-values gxc#xform-identity)
           (table-set! _tbl18833_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl18833_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl18833_ '%#quote gxc#xform-identity)
           (table-set! _tbl18833_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18833_ '%#call gxc#xform-identity)
           (table-set! _tbl18833_ '%#if gxc#xform-identity)
           (table-set! _tbl18833_ '%#ref gxc#xform-identity)
           (table-set! _tbl18833_ '%#set! gxc#xform-identity)
           (table-set! _tbl18833_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl18833_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl18833_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl18833_ '%#struct-set! gxc#xform-identity)
           _tbl18833_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl18829_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18829_ '%#begin gxc#xform-identity)
           (table-set! _tbl18829_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl18829_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl18829_ '%#module gxc#xform-identity)
           (table-set! _tbl18829_ '%#import gxc#xform-identity)
           (table-set! _tbl18829_ '%#export gxc#xform-identity)
           (table-set! _tbl18829_ '%#provide gxc#xform-identity)
           (table-set! _tbl18829_ '%#extern gxc#xform-identity)
           (table-set! _tbl18829_ '%#define-values gxc#xform-identity)
           (table-set! _tbl18829_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl18829_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl18829_ '%#declare gxc#xform-identity)
           _tbl18829_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl18825_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18825_ (force gxc#&identity-special-form))
           (hash-copy! _tbl18825_ (force gxc#&identity-expression))
           _tbl18825_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl18821_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18821_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl18821_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl18821_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl18821_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl18821_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl18821_ '%#quote gxc#xform-identity)
           (table-set! _tbl18821_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18821_ '%#call gxc#xform-operands)
           (table-set! _tbl18821_ '%#if gxc#xform-operands)
           (table-set! _tbl18821_ '%#ref gxc#xform-identity)
           (table-set! _tbl18821_ '%#set! gxc#xform-setq%)
           (table-set! _tbl18821_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl18821_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl18821_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl18821_ '%#struct-set! gxc#xform-operands)
           _tbl18821_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl18817_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18817_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl18817_ (force gxc#&identity))
           (table-set! _tbl18817_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18817_ '%#module gxc#xform-module%)
           (table-set! _tbl18817_ '%#define-values gxc#xform-define-values%)
           _tbl18817_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl18813_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18813_ (force gxc#&void))
           (table-set! _tbl18813_ '%#begin gxc#collect-begin%)
           (table-set! _tbl18813_ '%#module gxc#collect-module%)
           (table-set! _tbl18813_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl18813_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl18813_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl18813_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl18813_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl18813_ '%#call gxc#collect-operands)
           (table-set! _tbl18813_ '%#if gxc#collect-operands)
           (table-set! _tbl18813_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl18813_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl18813_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl18813_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl18813_ '%#struct-set! gxc#collect-operands)
           _tbl18813_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx18806_ . _args18808_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18806_ _args18808_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl18803_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18803_ (force gxc#&basic-xform))
           (table-set!
            _tbl18803_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl18803_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl18803_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl18803_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl18803_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx18796_ . _args18798_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18796_ _args18798_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl18793_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18793_ (force gxc#&basic-xform-expression))
           (table-set! _tbl18793_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18793_ '%#ref gxc#expression-subst-ref%)
           _tbl18793_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx18786_ . _args18788_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18786_ _args18788_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl18783_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18783_ (force gxc#&void))
           (table-set! _tbl18783_ '%#begin gxc#collect-begin%)
           (table-set! _tbl18783_ '%#module gxc#collect-module%)
           (table-set!
            _tbl18783_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl18783_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl18783_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl18783_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl18783_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl18783_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl18783_ '%#call gxc#collect-type-call%)
           (table-set! _tbl18783_ '%#if gxc#collect-operands)
           (table-set! _tbl18783_ '%#set! gxc#collect-body-setq%)
           _tbl18783_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx18776_ . _args18778_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18776_ _args18778_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl18773_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18773_ (force gxc#&false))
           (table-set! _tbl18773_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl18773_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl18773_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl18773_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl18773_ '%#ref gxc#basic-expression-type-ref%)
           _tbl18773_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx18766_ . _args18768_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18766_ _args18768_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl18763_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18763_ (force gxc#&basic-xform))
           (table-set! _tbl18763_ '%#call gxc#optimize-call%)
           _tbl18763_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx18756_ . _args18758_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18756_ _args18758_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl18753_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18753_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl18753_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl18753_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl18753_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl18753_ '%#call gxc#generate-ssxi-call%)
           _tbl18753_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx18746_ . _args18748_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18746_ _args18748_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx18743_ . _args18744_) _stx18743_))
  (define gxc#xform-wrap-source
    (lambda (_stx18740_ _src-stx18741_)
      (gx#stx-wrap-source _stx18740_ (gx#stx-source _src-stx18741_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args18734_)
      (lambda (_g1873518737_)
        (apply gxc#compile-e _g1873518737_ _args18734_))))
  (define gxc#xform-begin%
    (lambda (_stx18693_ . _args18694_)
      (let ((_g1869618706_
             (lambda (_g1869718703_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1869718703_))))
        (let ((_g1869518731_
               (lambda (_g1869718709_)
                 (if (gx#stx-pair? _g1869718709_)
                     (let ((_e1869918711_ (gx#stx-e _g1869718709_)))
                       (let ((_hd1870018714_ (##car _e1869918711_))
                             (_tl1870118716_ (##cdr _e1869918711_)))
                         ((lambda (_L18719_)
                            (let ((_forms18729_
                                   (map (gxc#xform-apply-compile-e _args18694_)
                                        _L18719_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms18729_)
                               _stx18693_)))
                          _tl1870118716_)))
                     (_g1869618706_ _g1869718709_)))))
          (_g1869518731_ _stx18693_)))))
  (define gxc#xform-module%
    (lambda (_stx18630_ . _args18631_)
      (let ((_g1863318647_
             (lambda (_g1863418644_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1863418644_))))
        (let ((_g1863218690_
               (lambda (_g1863418650_)
                 (if (gx#stx-pair? _g1863418650_)
                     (let ((_e1863718652_ (gx#stx-e _g1863418650_)))
                       (let ((_hd1863818655_ (##car _e1863718652_))
                             (_tl1863918657_ (##cdr _e1863718652_)))
                         (if (gx#stx-pair? _tl1863918657_)
                             (let ((_e1864018660_ (gx#stx-e _tl1863918657_)))
                               (let ((_hd1864118663_ (##car _e1864018660_))
                                     (_tl1864218665_ (##cdr _e1864018660_)))
                                 ((lambda (_L18668_ _L18669_)
                                    (let ((_ctx18682_
                                           (gx#syntax-local-e__0 _L18669_)))
                                      (let ((_code18684_
                                             (##structure-ref
                                              _ctx18682_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code18687_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code18684_
                                                         _args18631_))
                                                gx#current-expander-context
                                                _ctx18682_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx18682_
                                               _code18687_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L18669_
                                                           (cons _code18687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18630_)))))))
                                  _tl1864218665_
                                  _hd1864118663_)))
                             (_g1863318647_ _g1863418650_))))
                     (_g1863318647_ _g1863418650_)))))
          (_g1863218690_ _stx18630_)))))
  (define gxc#xform-define-values%
    (lambda (_stx18560_ . _args18561_)
      (let ((_g1856318580_
             (lambda (_g1856418577_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1856418577_))))
        (let ((_g1856218627_
               (lambda (_g1856418583_)
                 (if (gx#stx-pair? _g1856418583_)
                     (let ((_e1856718585_ (gx#stx-e _g1856418583_)))
                       (let ((_hd1856818588_ (##car _e1856718585_))
                             (_tl1856918590_ (##cdr _e1856718585_)))
                         (if (gx#stx-pair? _tl1856918590_)
                             (let ((_e1857018593_ (gx#stx-e _tl1856918590_)))
                               (let ((_hd1857118596_ (##car _e1857018593_))
                                     (_tl1857218598_ (##cdr _e1857018593_)))
                                 (if (gx#stx-pair? _tl1857218598_)
                                     (let ((_e1857318601_
                                            (gx#stx-e _tl1857218598_)))
                                       (let ((_hd1857418604_
                                              (##car _e1857318601_))
                                             (_tl1857518606_
                                              (##cdr _e1857318601_)))
                                         (if (gx#stx-null? _tl1857518606_)
                                             ((lambda (_L18609_ _L18610_)
                                                (let ((_expr18625_
                                                       (apply gxc#compile-e
                                                              _L18609_
                                                              _args18561_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L18610_
                                                               (cons _expr18625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18560_)))
                                              _hd1857418604_
                                              _hd1857118596_)
                                             (_g1856318580_ _g1856418583_))))
                                     (_g1856318580_ _g1856418583_))))
                             (_g1856318580_ _g1856418583_))))
                     (_g1856318580_ _g1856418583_)))))
          (_g1856218627_ _stx18560_)))))
  (define gxc#xform-lambda%
    (lambda (_stx18503_ . _args18504_)
      (let ((_g1850618520_
             (lambda (_g1850718517_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1850718517_))))
        (let ((_g1850518557_
               (lambda (_g1850718523_)
                 (if (gx#stx-pair? _g1850718523_)
                     (let ((_e1851018525_ (gx#stx-e _g1850718523_)))
                       (let ((_hd1851118528_ (##car _e1851018525_))
                             (_tl1851218530_ (##cdr _e1851018525_)))
                         (if (gx#stx-pair? _tl1851218530_)
                             (let ((_e1851318533_ (gx#stx-e _tl1851218530_)))
                               (let ((_hd1851418536_ (##car _e1851318533_))
                                     (_tl1851518538_ (##cdr _e1851318533_)))
                                 ((lambda (_L18541_ _L18542_)
                                    (let ((_body18555_
                                           (map (gxc#xform-apply-compile-e
                                                 _args18504_)
                                                _L18541_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L18542_ _body18555_))
                                       _stx18503_)))
                                  _tl1851518538_
                                  _hd1851418536_)))
                             (_g1850618520_ _g1850718523_))))
                     (_g1850618520_ _g1850718523_)))))
          (_g1850518557_ _stx18503_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx18416_ . _args18417_)
      (let ((_clause-e18419_
             (lambda (_clause18460_)
               (let ((_g1846218473_
                      (lambda (_g1846318470_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1846318470_))))
                 (let ((_g1846118500_
                        (lambda (_g1846318476_)
                          (if (gx#stx-pair? _g1846318476_)
                              (let ((_e1846618478_ (gx#stx-e _g1846318476_)))
                                (let ((_hd1846718481_ (##car _e1846618478_))
                                      (_tl1846818483_ (##cdr _e1846618478_)))
                                  ((lambda (_L18486_ _L18487_)
                                     (let ((_body18498_
                                            (map (gxc#xform-apply-compile-e
                                                  _args18417_)
                                                 _L18486_)))
                                       (cons _L18487_ _body18498_)))
                                   _tl1846818483_
                                   _hd1846718481_)))
                              (_g1846218473_ _g1846318476_)))))
                   (_g1846118500_ _clause18460_))))))
        (let ((_g1842118431_
               (lambda (_g1842218428_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1842218428_))))
          (let ((_g1842018457_
                 (lambda (_g1842218434_)
                   (if (gx#stx-pair? _g1842218434_)
                       (let ((_e1842418436_ (gx#stx-e _g1842218434_)))
                         (let ((_hd1842518439_ (##car _e1842418436_))
                               (_tl1842618441_ (##cdr _e1842418436_)))
                           ((lambda (_L18444_)
                              (let ((_clauses18455_
                                     (map _clause-e18419_ _L18444_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses18455_)
                                 _stx18416_)))
                            _tl1842618441_)))
                       (_g1842118431_ _g1842218434_)))))
            (_g1842018457_ _stx18416_))))))
  (define gxc#xform-let-values%
    (lambda (_stx18210_ . _args18211_)
      (let ((_g1821318246_
             (lambda (_g1821418243_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1821418243_))))
        (let ((_g1821218413_
               (lambda (_g1821418249_)
                 (if (gx#stx-pair? _g1821418249_)
                     (let ((_e1821918251_ (gx#stx-e _g1821418249_)))
                       (let ((_hd1822018254_ (##car _e1821918251_))
                             (_tl1822118256_ (##cdr _e1821918251_)))
                         (if (gx#stx-pair? _tl1822118256_)
                             (let ((_e1822218259_ (gx#stx-e _tl1822118256_)))
                               (let ((_hd1822318262_ (##car _e1822218259_))
                                     (_tl1822418264_ (##cdr _e1822218259_)))
                                 (if (gx#stx-pair/null? _hd1822318262_)
                                     (if (fx>= (gx#stx-length _hd1822318262_)
                                               '0)
                                         (let ((_g19126_
                                                (gx#syntax-split-splice
                                                 _hd1822318262_
                                                 '0)))
                                           (begin
                                             (let ((_g19127_
                                                    (values-count _g19126_)))
                                               (if (not (fx= _g19127_ 2))
                                                   (error "Context expects 2 values"
                                                          _g19127_)))
                                             (let ((_target1822518267_
                                                    (values-ref _g19126_ 0))
                                                   (_tl1822718269_
                                                    (values-ref _g19126_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1822718269_)
                                                   (letrec ((_loop1822818272_
                                                             (lambda (_hd1822618275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1823218277_
                              _hd1823318279_)
                       (if (gx#stx-pair? _hd1822618275_)
                           (let ((_e1822918282_ (gx#stx-e _hd1822618275_)))
                             (let ((_lp-hd1823018285_ (##car _e1822918282_))
                                   (_lp-tl1823118287_ (##cdr _e1822918282_)))
                               (if (gx#stx-pair? _lp-hd1823018285_)
                                   (let ((_e1823618290_
                                          (gx#stx-e _lp-hd1823018285_)))
                                     (let ((_hd1823718293_
                                            (##car _e1823618290_))
                                           (_tl1823818295_
                                            (##cdr _e1823618290_)))
                                       (if (gx#stx-pair? _tl1823818295_)
                                           (let ((_e1823918298_
                                                  (gx#stx-e _tl1823818295_)))
                                             (let ((_hd1824018301_
                                                    (##car _e1823918298_))
                                                   (_tl1824118303_
                                                    (##cdr _e1823918298_)))
                                               (if (gx#stx-null?
                                                    _tl1824118303_)
                                                   (_loop1822818272_
                                                    _lp-tl1823118287_
                                                    (cons _hd1824018301_
                                                          _expr1823218277_)
                                                    (cons _hd1823718293_
                                                          _hd1823318279_))
                                                   (_g1821318246_
                                                    _g1821418249_))))
                                           (_g1821318246_ _g1821418249_))))
                                   (_g1821318246_ _g1821418249_))))
                           (let ((_expr1823418306_ (reverse _expr1823218277_))
                                 (_hd1823518308_ (reverse _hd1823318279_)))
                             ((lambda (_L18311_ _L18312_ _L18313_ _L18314_)
                                (let ((_g1833318349_
                                       (lambda (_g1833418346_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1833418346_))))
                                  (let ((_g1833218403_
                                         (lambda (_g1833418352_)
                                           (if (gx#stx-pair/null?
                                                _g1833418352_)
                                               (if (fx>= (gx#stx-length
                                                          _g1833418352_)
                                                         '0)
                                                   (let ((_g19128_
                                                          (gx#syntax-split-splice
                                                           _g1833418352_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19129_
                                                              (values-count
                                                               _g19128_)))
                                                         (if (not (fx= _g19129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19129_)))
               (let ((_target1833618354_ (values-ref _g19128_ 0))
                     (_tl1833818356_ (values-ref _g19128_ 1)))
                 (if (gx#stx-null? _tl1833818356_)
                     (letrec ((_loop1833918359_
                               (lambda (_hd1833718362_ _expr1834318364_)
                                 (if (gx#stx-pair? _hd1833718362_)
                                     (let ((_e1834018367_
                                            (gx#syntax-e _hd1833718362_)))
                                       (let ((_lp-hd1834118370_
                                              (##car _e1834018367_))
                                             (_lp-tl1834218372_
                                              (##cdr _e1834018367_)))
                                         (_loop1833918359_
                                          _lp-tl1834218372_
                                          (cons _lp-hd1834118370_
                                                _expr1834318364_))))
                                     (let ((_expr1834418375_
                                            (reverse _expr1834318364_)))
                                       ((lambda (_L18378_)
                                          (let ()
                                            (let ((_body18391_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args18211_)
                                                        _L18311_)))
                                              (gxc#xform-wrap-source
                                               (cons _L18314_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L18378_
                                                              _L18313_)
                                                             (foldr (lambda (_g1839218396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1839318398_
                                     _g1839418400_)
                              (cons (cons _g1839318398_
                                          (cons _g1839218396_ '()))
                                    _g1839418400_))
                            '()
                            _L18378_
                            _L18313_))
                   _body18391_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18210_))))
                                        _expr1834418375_))))))
                       (_loop1833918359_ _target1833618354_ '()))
                     (_g1833318349_ _g1833418352_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1833318349_
                                                    _g1833418352_))
                                               (_g1833318349_
                                                _g1833418352_)))))
                                    (_g1833218403_
                                     (map (gxc#xform-apply-compile-e
                                           _args18211_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1840518408_
                                                             _g1840618410_)
                                                      (cons _g1840518408_
                                                            _g1840618410_))
                                                    '()
                                                    _L18312_)))))))
                              _tl1822418264_
                              _expr1823418306_
                              _hd1823518308_
                              _hd1822018254_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1822818272_
                                                      _target1822518267_
                                                      '()
                                                      '()))
                                                   (_g1821318246_
                                                    _g1821418249_)))))
                                         (_g1821318246_ _g1821418249_))
                                     (_g1821318246_ _g1821418249_))))
                             (_g1821318246_ _g1821418249_))))
                     (_g1821318246_ _g1821418249_)))))
          (_g1821218413_ _stx18210_)))))
  (define gxc#xform-operands
    (lambda (_stx18166_ . _args18167_)
      (let ((_g1816918180_
             (lambda (_g1817018177_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1817018177_))))
        (let ((_g1816818207_
               (lambda (_g1817018183_)
                 (if (gx#stx-pair? _g1817018183_)
                     (let ((_e1817318185_ (gx#stx-e _g1817018183_)))
                       (let ((_hd1817418188_ (##car _e1817318185_))
                             (_tl1817518190_ (##cdr _e1817318185_)))
                         ((lambda (_L18193_ _L18194_)
                            (let ((_rands18205_
                                   (map (gxc#xform-apply-compile-e _args18167_)
                                        _L18193_)))
                              (gxc#xform-wrap-source
                               (cons _L18194_ _rands18205_)
                               _stx18166_)))
                          _tl1817518190_
                          _hd1817418188_)))
                     (_g1816918180_ _g1817018183_)))))
          (_g1816818207_ _stx18166_)))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx18096_ . _args18097_)
      (let ((_g1809918116_
             (lambda (_g1810018113_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1810018113_))))
        (let ((_g1809818163_
               (lambda (_g1810018119_)
                 (if (gx#stx-pair? _g1810018119_)
                     (let ((_e1810318121_ (gx#stx-e _g1810018119_)))
                       (let ((_hd1810418124_ (##car _e1810318121_))
                             (_tl1810518126_ (##cdr _e1810318121_)))
                         (if (gx#stx-pair? _tl1810518126_)
                             (let ((_e1810618129_ (gx#stx-e _tl1810518126_)))
                               (let ((_hd1810718132_ (##car _e1810618129_))
                                     (_tl1810818134_ (##cdr _e1810618129_)))
                                 (if (gx#stx-pair? _tl1810818134_)
                                     (let ((_e1810918137_
                                            (gx#stx-e _tl1810818134_)))
                                       (let ((_hd1811018140_
                                              (##car _e1810918137_))
                                             (_tl1811118142_
                                              (##cdr _e1810918137_)))
                                         (if (gx#stx-null? _tl1811118142_)
                                             ((lambda (_L18145_ _L18146_)
                                                (let ((_expr18161_
                                                       (apply gxc#compile-e
                                                              _L18145_
                                                              _args18097_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L18146_
                                                               (cons _expr18161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18096_)))
                                              _hd1811018140_
                                              _hd1810718132_)
                                             (_g1809918116_ _g1810018119_))))
                                     (_g1809918116_ _g1810018119_))))
                             (_g1809918116_ _g1810018119_))))
                     (_g1809918116_ _g1810018119_)))))
          (_g1809818163_ _stx18096_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx18027_)
      (let ((_g1802918046_
             (lambda (_g1803018043_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1803018043_))))
        (let ((_g1802818093_
               (lambda (_g1803018049_)
                 (if (gx#stx-pair? _g1803018049_)
                     (let ((_e1803318051_ (gx#stx-e _g1803018049_)))
                       (let ((_hd1803418054_ (##car _e1803318051_))
                             (_tl1803518056_ (##cdr _e1803318051_)))
                         (if (gx#stx-pair? _tl1803518056_)
                             (let ((_e1803618059_ (gx#stx-e _tl1803518056_)))
                               (let ((_hd1803718062_ (##car _e1803618059_))
                                     (_tl1803818064_ (##cdr _e1803618059_)))
                                 (if (gx#stx-pair? _tl1803818064_)
                                     (let ((_e1803918067_
                                            (gx#stx-e _tl1803818064_)))
                                       (let ((_hd1804018070_
                                              (##car _e1803918067_))
                                             (_tl1804118072_
                                              (##cdr _e1803918067_)))
                                         (if (gx#stx-null? _tl1804118072_)
                                             ((lambda (_L18075_ _L18076_)
                                                (let ((_sym18091_
                                                       (gxc#generate-runtime-binding-id
                                                        _L18076_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym18091_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym18091_
                                                     '#t)
                                                    (gxc#compile-e _L18075_))))
                                              _hd1804018070_
                                              _hd1803718062_)
                                             (_g1802918046_ _g1803018049_))))
                                     (_g1802918046_ _g1803018049_))))
                             (_g1802918046_ _g1803018049_))))
                     (_g1802918046_ _g1803018049_)))))
          (_g1802818093_ _stx18027_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form17261_)
      (let ((_g1726617423_
             (lambda (_g1726717420_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1726717420_))))
        (let ((_g1726517430_ (lambda (_g1726717426_) ((lambda () '#f)))))
          (let ((_g1726417570_
                 (lambda (_g1726717433_)
                   (if (gx#stx-pair? _g1726717433_)
                       (let ((_e1738317435_ (gx#stx-e _g1726717433_)))
                         (let ((_hd1738417438_ (##car _e1738317435_))
                               (_tl1738517440_ (##cdr _e1738317435_)))
                           (if (gx#stx-pair? _tl1738517440_)
                               (let ((_e1738617443_ (gx#stx-e _tl1738517440_)))
                                 (let ((_hd1738717446_ (##car _e1738617443_))
                                       (_tl1738817448_ (##cdr _e1738617443_)))
                                   (if (gx#stx-pair? _hd1738717446_)
                                       (let ((_e1738917451_
                                              (gx#stx-e _hd1738717446_)))
                                         (let ((_hd1739017454_
                                                (##car _e1738917451_))
                                               (_tl1739117456_
                                                (##cdr _e1738917451_)))
                                           (if (gx#identifier? _hd1739017454_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1739017454_)
                                                   (if (gx#stx-pair?
                                                        _tl1739117456_)
                                                       (let ((_e1739217459_
                                                              (gx#stx-e
                                                               _tl1739117456_)))
                                                         (let ((_hd1739317462_
                                                                (##car _e1739217459_))
                                                               (_tl1739417464_
                                                                (##cdr _e1739217459_)))
                                                           (if (gx#stx-pair?
                                                                _hd1739317462_)
                                                               (let ((_e1739517467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1739317462_)))
                         (let ((_hd1739617470_ (##car _e1739517467_))
                               (_tl1739717472_ (##cdr _e1739517467_)))
                           (if (gx#identifier? _hd1739617470_)
                               (if (gx#stx-eq? '%#ref _hd1739617470_)
                                   (if (gx#stx-pair? _tl1739717472_)
                                       (let ((_e1739817475_
                                              (gx#stx-e _tl1739717472_)))
                                         (let ((_hd1739917478_
                                                (##car _e1739817475_))
                                               (_tl1740017480_
                                                (##cdr _e1739817475_)))
                                           (if (gx#stx-null? _tl1740017480_)
                                               (if (gx#stx-pair?
                                                    _tl1739417464_)
                                                   (let ((_e1740117483_
                                                          (gx#stx-e
                                                           _tl1739417464_)))
                                                     (let ((_hd1740217486_
                                                            (##car _e1740117483_))
                                                           (_tl1740317488_
                                                            (##cdr _e1740117483_)))
                                                       (if (gx#stx-pair?
                                                            _hd1740217486_)
                                                           (let ((_e1740417491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1740217486_)))
                     (let ((_hd1740517494_ (##car _e1740417491_))
                           (_tl1740617496_ (##cdr _e1740417491_)))
                       (if (gx#identifier? _hd1740517494_)
                           (if (gx#stx-eq? '%#ref _hd1740517494_)
                               (if (gx#stx-pair? _tl1740617496_)
                                   (let ((_e1740717499_
                                          (gx#stx-e _tl1740617496_)))
                                     (let ((_hd1740817502_
                                            (##car _e1740717499_))
                                           (_tl1740917504_
                                            (##cdr _e1740717499_)))
                                       (if (gx#stx-null? _tl1740917504_)
                                           (if (gx#stx-pair? _tl1740317488_)
                                               (let ((_e1741017507_
                                                      (gx#stx-e
                                                       _tl1740317488_)))
                                                 (let ((_hd1741117510_
                                                        (##car _e1741017507_))
                                                       (_tl1741217512_
                                                        (##cdr _e1741017507_)))
                                                   (if (gx#stx-pair?
                                                        _hd1741117510_)
                                                       (let ((_e1741317515_
                                                              (gx#stx-e
                                                               _hd1741117510_)))
                                                         (let ((_hd1741417518_
                                                                (##car _e1741317515_))
                                                               (_tl1741517520_
                                                                (##cdr _e1741317515_)))
                                                           (if (gx#identifier?
                                                                _hd1741417518_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1741417518_)
                           (if (gx#stx-pair? _tl1741517520_)
                               (let ((_e1741617523_ (gx#stx-e _tl1741517520_)))
                                 (let ((_hd1741717526_ (##car _e1741617523_))
                                       (_tl1741817528_ (##cdr _e1741617523_)))
                                   (if (gx#stx-null? _tl1741817528_)
                                       (if (gx#stx-null? _tl1741217512_)
                                           (if (gx#stx-null? _tl1738817448_)
                                               ((lambda (_L17531_
                                                         _L17532_
                                                         _L17533_
                                                         _L17534_)
                                                  (if (if (gx#identifier?
                                                           _L17534_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17533_)
                           'apply)
                      (if (gx#free-identifier=? _L17534_ _L17531_)
                          (not (gx#free-identifier=? _L17532_ _L17534_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1726517430_ _g1726717433_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1741717526_
                                                _hd1740817502_
                                                _hd1739917478_
                                                _hd1738417438_)
                                               (_g1726517430_ _g1726717433_))
                                           (_g1726517430_ _g1726717433_))
                                       (_g1726517430_ _g1726717433_))))
                               (_g1726517430_ _g1726717433_))
                           (_g1726517430_ _g1726717433_))
                       (_g1726517430_ _g1726717433_))))
               (_g1726517430_ _g1726717433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1726517430_ _g1726717433_))
                                           (_g1726517430_ _g1726717433_))))
                                   (_g1726517430_ _g1726717433_))
                               (_g1726517430_ _g1726717433_))
                           (_g1726517430_ _g1726717433_))))
                   (_g1726517430_ _g1726717433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1726517430_
                                                    _g1726717433_))
                                               (_g1726517430_ _g1726717433_))))
                                       (_g1726517430_ _g1726717433_))
                                   (_g1726517430_ _g1726717433_))
                               (_g1726517430_ _g1726717433_))))
                       (_g1726517430_ _g1726717433_))))
               (_g1726517430_ _g1726717433_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1726517430_
                                                    _g1726717433_))
                                               (_g1726517430_ _g1726717433_))))
                                       (_g1726517430_ _g1726717433_))))
                               (_g1726517430_ _g1726717433_))))
                       (_g1726517430_ _g1726717433_)))))
            (let ((_g1726317830_
                   (lambda (_g1726717573_)
                     (if (gx#stx-pair? _g1726717573_)
                         (let ((_e1731917575_ (gx#stx-e _g1726717573_)))
                           (let ((_hd1732017578_ (##car _e1731917575_))
                                 (_tl1732117580_ (##cdr _e1731917575_)))
                             (if (gx#stx-pair/null? _hd1732017578_)
                                 (if (fx>= (gx#stx-length _hd1732017578_) '0)
                                     (let ((_g19130_
                                            (gx#syntax-split-splice
                                             _hd1732017578_
                                             '0)))
                                       (begin
                                         (let ((_g19131_
                                                (values-count _g19130_)))
                                           (if (not (fx= _g19131_ 2))
                                               (error "Context expects 2 values"
                                                      _g19131_)))
                                         (let ((_target1732217583_
                                                (values-ref _g19130_ 0))
                                               (_tl1732417585_
                                                (values-ref _g19130_ 1)))
                                           (letrec ((_loop1732517588_
                                                     (lambda (_hd1732317591_
                                                              _arg1732917593_)
                                                       (if (gx#stx-pair?
                                                            _hd1732317591_)
                                                           (let ((_e1732617596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1732317591_)))
                     (let ((_lp-hd1732717599_ (##car _e1732617596_))
                           (_lp-tl1732817601_ (##cdr _e1732617596_)))
                       (_loop1732517588_
                        _lp-tl1732817601_
                        (cons _lp-hd1732717599_ _arg1732917593_))))
                   (let ((_arg1733017604_ (reverse _arg1732917593_)))
                     (if (gx#stx-pair? _tl1732117580_)
                         (let ((_e1733117607_ (gx#stx-e _tl1732117580_)))
                           (let ((_hd1733217610_ (##car _e1733117607_))
                                 (_tl1733317612_ (##cdr _e1733117607_)))
                             (if (gx#stx-pair? _hd1733217610_)
                                 (let ((_e1733417615_
                                        (gx#stx-e _hd1733217610_)))
                                   (let ((_hd1733517618_ (##car _e1733417615_))
                                         (_tl1733617620_
                                          (##cdr _e1733417615_)))
                                     (if (gx#identifier? _hd1733517618_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1733517618_)
                                             (if (gx#stx-pair? _tl1733617620_)
                                                 (let ((_e1733717623_
                                                        (gx#stx-e
                                                         _tl1733617620_)))
                                                   (let ((_hd1733817626_
                                                          (##car _e1733717623_))
                                                         (_tl1733917628_
                                                          (##cdr _e1733717623_)))
                                                     (if (gx#stx-pair?
                                                          _hd1733817626_)
                                                         (let ((_e1734017631_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1733817626_)))
                   (let ((_hd1734117634_ (##car _e1734017631_))
                         (_tl1734217636_ (##cdr _e1734017631_)))
                     (if (gx#identifier? _hd1734117634_)
                         (if (gx#stx-eq? '%#ref _hd1734117634_)
                             (if (gx#stx-pair? _tl1734217636_)
                                 (let ((_e1734317639_
                                        (gx#stx-e _tl1734217636_)))
                                   (let ((_hd1734417642_ (##car _e1734317639_))
                                         (_tl1734517644_
                                          (##cdr _e1734317639_)))
                                     (if (gx#stx-null? _tl1734517644_)
                                         (if (gx#stx-pair? _tl1733917628_)
                                             (let ((_e1734617647_
                                                    (gx#stx-e _tl1733917628_)))
                                               (let ((_hd1734717650_
                                                      (##car _e1734617647_))
                                                     (_tl1734817652_
                                                      (##cdr _e1734617647_)))
                                                 (if (gx#stx-pair?
                                                      _hd1734717650_)
                                                     (let ((_e1734917655_
                                                            (gx#stx-e
                                                             _hd1734717650_)))
                                                       (let ((_hd1735017658_
                                                              (##car _e1734917655_))
                                                             (_tl1735117660_
                                                              (##cdr _e1734917655_)))
                                                         (if (gx#identifier?
                                                              _hd1735017658_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1735017658_)
                         (if (gx#stx-pair? _tl1735117660_)
                             (let ((_e1735217663_ (gx#stx-e _tl1735117660_)))
                               (let ((_hd1735317666_ (##car _e1735217663_))
                                     (_tl1735417668_ (##cdr _e1735217663_)))
                                 (if (gx#stx-null? _tl1735417668_)
                                     (if (gx#stx-pair/null? _tl1734817652_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1734817652_)
                                                   '1)
                                             (let ((_g19132_
                                                    (gx#syntax-split-splice
                                                     _tl1734817652_
                                                     '1)))
                                               (begin
                                                 (let ((_g19133_
                                                        (values-count
                                                         _g19132_)))
                                                   (if (not (fx= _g19133_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19133_)))
                                                 (let ((_target1735517671_
                                                        (values-ref
                                                         _g19132_
                                                         0))
                                                       (_tl1735717673_
                                                        (values-ref
                                                         _g19132_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1735717673_)
                                                       (let ((_e1736417676_
                                                              (gx#stx-e
                                                               _tl1735717673_)))
                                                         (let ((_hd1736517679_
                                                                (##car _e1736417676_))
                                                               (_tl1736617681_
                                                                (##cdr _e1736417676_)))
                                                           (if (gx#stx-pair?
                                                                _hd1736517679_)
                                                               (let ((_e1736717684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1736517679_)))
                         (let ((_hd1736817687_ (##car _e1736717684_))
                               (_tl1736917689_ (##cdr _e1736717684_)))
                           (if (gx#identifier? _hd1736817687_)
                               (if (gx#stx-eq? '%#ref _hd1736817687_)
                                   (if (gx#stx-pair? _tl1736917689_)
                                       (let ((_e1737017692_
                                              (gx#stx-e _tl1736917689_)))
                                         (let ((_hd1737117695_
                                                (##car _e1737017692_))
                                               (_tl1737217697_
                                                (##cdr _e1737017692_)))
                                           (if (gx#stx-null? _tl1737217697_)
                                               (if (gx#stx-null?
                                                    _tl1736617681_)
                                                   (letrec ((_loop1735817700_
                                                             (lambda (_hd1735617703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1736217705_)
                       (if (gx#stx-pair? _hd1735617703_)
                           (let ((_e1735917708_ (gx#stx-e _hd1735617703_)))
                             (let ((_lp-hd1736017711_ (##car _e1735917708_))
                                   (_lp-tl1736117713_ (##cdr _e1735917708_)))
                               (if (gx#stx-pair? _lp-hd1736017711_)
                                   (let ((_e1737317716_
                                          (gx#stx-e _lp-hd1736017711_)))
                                     (let ((_hd1737417719_
                                            (##car _e1737317716_))
                                           (_tl1737517721_
                                            (##cdr _e1737317716_)))
                                       (if (gx#identifier? _hd1737417719_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1737417719_)
                                               (if (gx#stx-pair?
                                                    _tl1737517721_)
                                                   (let ((_e1737617724_
                                                          (gx#stx-e
                                                           _tl1737517721_)))
                                                     (let ((_hd1737717727_
                                                            (##car _e1737617724_))
                                                           (_tl1737817729_
                                                            (##cdr _e1737617724_)))
                                                       (if (gx#stx-null?
                                                            _tl1737817729_)
                                                           (_loop1735817700_
                                                            _lp-tl1736117713_
                                                            (cons _hd1737717727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1736217705_))
                   (_g1726417570_ _g1726717573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1726417570_
                                                    _g1726717573_))
                                               (_g1726417570_ _g1726717573_))
                                           (_g1726417570_ _g1726717573_))))
                                   (_g1726417570_ _g1726717573_))))
                           (let ((_xarg1736317732_ (reverse _xarg1736217705_)))
                             (if (gx#stx-null? _tl1733317612_)
                                 ((lambda (_L17735_
                                           _L17736_
                                           _L17737_
                                           _L17738_
                                           _L17739_
                                           _L17740_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1778317786_
                                                                _g1778417788_)
                                                         (cons _g1778317786_
                                                               _g1778417788_))
                                                       '()
                                                       _L17740_)))
                                            (if (gx#identifier? _L17739_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L17738_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1779017793_ _g1779117795_)
                                         (cons _g1779017793_ _g1779117795_))
                                       '()
                                       _L17740_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1779717800_ _g1779817802_)
                                         (cons _g1779717800_ _g1779817802_))
                                       '()
                                       _L17736_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1780417807_ _g1780517809_)
                                        (cons _g1780417807_ _g1780517809_))
                                      '()
                                      _L17740_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1781117814_ _g1781217816_)
                                        (cons _g1781117814_ _g1781217816_))
                                      '()
                                      _L17736_)))
                    (if (gx#free-identifier=? _L17739_ _L17735_)
                        (not (find (lambda (_g1781817820_)
                                     (gx#free-identifier=?
                                      _g1781817820_
                                      _L17737_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1782217825_
                                                      _g1782317827_)
                                               (cons _g1782217825_
                                                     _g1782317827_))
                                             (cons _L17739_ '())
                                             _L17740_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1726417570_ _g1726717573_)))
                                  _hd1737117695_
                                  _xarg1736317732_
                                  _hd1735317666_
                                  _hd1734417642_
                                  _tl1732417585_
                                  _arg1733017604_)
                                 (_g1726417570_ _g1726717573_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1735817700_
                                                      _target1735517671_
                                                      '()))
                                                   (_g1726417570_
                                                    _g1726717573_))
                                               (_g1726417570_ _g1726717573_))))
                                       (_g1726417570_ _g1726717573_))
                                   (_g1726417570_ _g1726717573_))
                               (_g1726417570_ _g1726717573_))))
                       (_g1726417570_ _g1726717573_))))
               (_g1726417570_ _g1726717573_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1726417570_ _g1726717573_))
                                         (_g1726417570_ _g1726717573_))
                                     (_g1726417570_ _g1726717573_))))
                             (_g1726417570_ _g1726717573_))
                         (_g1726417570_ _g1726717573_))
                     (_g1726417570_ _g1726717573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1726417570_
                                                      _g1726717573_))))
                                             (_g1726417570_ _g1726717573_))
                                         (_g1726417570_ _g1726717573_))))
                                 (_g1726417570_ _g1726717573_))
                             (_g1726417570_ _g1726717573_))
                         (_g1726417570_ _g1726717573_))))
                 (_g1726417570_ _g1726717573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1726417570_ _g1726717573_))
                                             (_g1726417570_ _g1726717573_))
                                         (_g1726417570_ _g1726717573_))))
                                 (_g1726417570_ _g1726717573_))))
                         (_g1726417570_ _g1726717573_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1732517588_
                                              _target1732217583_
                                              '())))))
                                     (_g1726417570_ _g1726717573_))
                                 (_g1726417570_ _g1726717573_))))
                         (_g1726417570_ _g1726717573_)))))
              (let ((_g1726218024_
                     (lambda (_g1726717833_)
                       (if (gx#stx-pair? _g1726717833_)
                           (let ((_e1727117835_ (gx#stx-e _g1726717833_)))
                             (let ((_hd1727217838_ (##car _e1727117835_))
                                   (_tl1727317840_ (##cdr _e1727117835_)))
                               (if (gx#stx-pair/null? _hd1727217838_)
                                   (if (fx>= (gx#stx-length _hd1727217838_) '0)
                                       (let ((_g19134_
                                              (gx#syntax-split-splice
                                               _hd1727217838_
                                               '0)))
                                         (begin
                                           (let ((_g19135_
                                                  (values-count _g19134_)))
                                             (if (not (fx= _g19135_ 2))
                                                 (error "Context expects 2 values"
                                                        _g19135_)))
                                           (let ((_target1727417843_
                                                  (values-ref _g19134_ 0))
                                                 (_tl1727617845_
                                                  (values-ref _g19134_ 1)))
                                             (if (gx#stx-null? _tl1727617845_)
                                                 (letrec ((_loop1727717848_
                                                           (lambda (_hd1727517851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1728117853_)
                     (if (gx#stx-pair? _hd1727517851_)
                         (let ((_e1727817856_ (gx#stx-e _hd1727517851_)))
                           (let ((_lp-hd1727917859_ (##car _e1727817856_))
                                 (_lp-tl1728017861_ (##cdr _e1727817856_)))
                             (_loop1727717848_
                              _lp-tl1728017861_
                              (cons _lp-hd1727917859_ _arg1728117853_))))
                         (let ((_arg1728217864_ (reverse _arg1728117853_)))
                           (if (gx#stx-pair? _tl1727317840_)
                               (let ((_e1728317867_ (gx#stx-e _tl1727317840_)))
                                 (let ((_hd1728417870_ (##car _e1728317867_))
                                       (_tl1728517872_ (##cdr _e1728317867_)))
                                   (if (gx#stx-pair? _hd1728417870_)
                                       (let ((_e1728617875_
                                              (gx#stx-e _hd1728417870_)))
                                         (let ((_hd1728717878_
                                                (##car _e1728617875_))
                                               (_tl1728817880_
                                                (##cdr _e1728617875_)))
                                           (if (gx#identifier? _hd1728717878_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1728717878_)
                                                   (if (gx#stx-pair?
                                                        _tl1728817880_)
                                                       (let ((_e1728917883_
                                                              (gx#stx-e
                                                               _tl1728817880_)))
                                                         (let ((_hd1729017886_
                                                                (##car _e1728917883_))
                                                               (_tl1729117888_
                                                                (##cdr _e1728917883_)))
                                                           (if (gx#stx-pair?
                                                                _hd1729017886_)
                                                               (let ((_e1729217891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1729017886_)))
                         (let ((_hd1729317894_ (##car _e1729217891_))
                               (_tl1729417896_ (##cdr _e1729217891_)))
                           (if (gx#identifier? _hd1729317894_)
                               (if (gx#stx-eq? '%#ref _hd1729317894_)
                                   (if (gx#stx-pair? _tl1729417896_)
                                       (let ((_e1729517899_
                                              (gx#stx-e _tl1729417896_)))
                                         (let ((_hd1729617902_
                                                (##car _e1729517899_))
                                               (_tl1729717904_
                                                (##cdr _e1729517899_)))
                                           (if (gx#stx-null? _tl1729717904_)
                                               (if (gx#stx-pair/null?
                                                    _tl1729117888_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1729117888_)
                                                             '0)
                                                       (let ((_g19136_
                                                              (gx#syntax-split-splice
                                                               _tl1729117888_
                                                               '0)))
                                                         (begin
                                                           (let ((_g19137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g19136_)))
                     (if (not (fx= _g19137_ 2))
                         (error "Context expects 2 values" _g19137_)))
                   (let ((_target1729817907_ (values-ref _g19136_ 0))
                         (_tl1730017909_ (values-ref _g19136_ 1)))
                     (if (gx#stx-null? _tl1730017909_)
                         (letrec ((_loop1730117912_
                                   (lambda (_hd1729917915_ _xarg1730517917_)
                                     (if (gx#stx-pair? _hd1729917915_)
                                         (let ((_e1730217920_
                                                (gx#stx-e _hd1729917915_)))
                                           (let ((_lp-hd1730317923_
                                                  (##car _e1730217920_))
                                                 (_lp-tl1730417925_
                                                  (##cdr _e1730217920_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1730317923_)
                                                 (let ((_e1730717928_
                                                        (gx#stx-e
                                                         _lp-hd1730317923_)))
                                                   (let ((_hd1730817931_
                                                          (##car _e1730717928_))
                                                         (_tl1730917933_
                                                          (##cdr _e1730717928_)))
                                                     (if (gx#identifier?
                                                          _hd1730817931_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1730817931_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1730917933_)
                         (let ((_e1731017936_ (gx#stx-e _tl1730917933_)))
                           (let ((_hd1731117939_ (##car _e1731017936_))
                                 (_tl1731217941_ (##cdr _e1731017936_)))
                             (if (gx#stx-null? _tl1731217941_)
                                 (_loop1730117912_
                                  _lp-tl1730417925_
                                  (cons _hd1731117939_ _xarg1730517917_))
                                 (_g1726317830_ _g1726717833_))))
                         (_g1726317830_ _g1726717833_))
                     (_g1726317830_ _g1726717833_))
                 (_g1726317830_ _g1726717833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1726317830_
                                                  _g1726717833_))))
                                         (let ((_xarg1730617944_
                                                (reverse _xarg1730517917_)))
                                           (if (gx#stx-null? _tl1728517872_)
                                               ((lambda (_L17947_
                                                         _L17948_
                                                         _L17949_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1797717980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1797817982_)
                               (cons _g1797717980_ _g1797817982_))
                             '()
                             _L17949_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1798417987_
                                                      _g1798517989_)
                                               (cons _g1798417987_
                                                     _g1798517989_))
                                             '()
                                             _L17949_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1799117994_
                                                      _g1799217996_)
                                               (cons _g1799117994_
                                                     _g1799217996_))
                                             '()
                                             _L17947_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1799818001_
                                                     _g1799918003_)
                                              (cons _g1799818001_
                                                    _g1799918003_))
                                            '()
                                            _L17949_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1800518008_
                                                     _g1800618010_)
                                              (cons _g1800518008_
                                                    _g1800618010_))
                                            '()
                                            _L17947_)))
                          (not (find (lambda (_g1801218014_)
                                       (gx#free-identifier=?
                                        _g1801218014_
                                        _L17948_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1801618019_
                                                        _g1801718021_)
                                                 (cons _g1801618019_
                                                       _g1801718021_))
                                               '()
                                               _L17949_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1726317830_ _g1726717833_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1730617944_
                                                _hd1729617902_
                                                _arg1728217864_)
                                               (_g1726317830_
                                                _g1726717833_)))))))
                           (_loop1730117912_ _target1729817907_ '()))
                         (_g1726317830_ _g1726717833_)))))
               (_g1726317830_ _g1726717833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1726317830_
                                                    _g1726717833_))
                                               (_g1726317830_ _g1726717833_))))
                                       (_g1726317830_ _g1726717833_))
                                   (_g1726317830_ _g1726717833_))
                               (_g1726317830_ _g1726717833_))))
                       (_g1726317830_ _g1726717833_))))
               (_g1726317830_ _g1726717833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1726317830_
                                                    _g1726717833_))
                                               (_g1726317830_ _g1726717833_))))
                                       (_g1726317830_ _g1726717833_))))
                               (_g1726317830_ _g1726717833_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1727717848_
                                                    _target1727417843_
                                                    '()))
                                                 (_g1726317830_
                                                  _g1726717833_)))))
                                       (_g1726317830_ _g1726717833_))
                                   (_g1726317830_ _g1726717833_))))
                           (_g1726317830_ _g1726717833_)))))
                (_g1726218024_ _form17261_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form16729_)
      (let ((_g1673316857_
             (lambda (_g1673416854_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1673416854_))))
        (let ((_g1673216974_
               (lambda (_g1673416860_)
                 (if (gx#stx-pair? _g1673416860_)
                     (let ((_e1682316862_ (gx#stx-e _g1673416860_)))
                       (let ((_hd1682416865_ (##car _e1682316862_))
                             (_tl1682516867_ (##cdr _e1682316862_)))
                         (if (gx#stx-pair? _tl1682516867_)
                             (let ((_e1682616870_ (gx#stx-e _tl1682516867_)))
                               (let ((_hd1682716873_ (##car _e1682616870_))
                                     (_tl1682816875_ (##cdr _e1682616870_)))
                                 (if (gx#stx-pair? _hd1682716873_)
                                     (let ((_e1682916878_
                                            (gx#stx-e _hd1682716873_)))
                                       (let ((_hd1683016881_
                                              (##car _e1682916878_))
                                             (_tl1683116883_
                                              (##cdr _e1682916878_)))
                                         (if (gx#identifier? _hd1683016881_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1683016881_)
                                                 (if (gx#stx-pair?
                                                      _tl1683116883_)
                                                     (let ((_e1683216886_
                                                            (gx#stx-e
                                                             _tl1683116883_)))
                                                       (let ((_hd1683316889_
                                                              (##car _e1683216886_))
                                                             (_tl1683416891_
                                                              (##cdr _e1683216886_)))
                                                         (if (gx#stx-pair?
                                                              _hd1683316889_)
                                                             (let ((_e1683516894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1683316889_)))
                       (let ((_hd1683616897_ (##car _e1683516894_))
                             (_tl1683716899_ (##cdr _e1683516894_)))
                         (if (gx#identifier? _hd1683616897_)
                             (if (gx#stx-eq? '%#ref _hd1683616897_)
                                 (if (gx#stx-pair? _tl1683716899_)
                                     (let ((_e1683816902_
                                            (gx#stx-e _tl1683716899_)))
                                       (let ((_hd1683916905_
                                              (##car _e1683816902_))
                                             (_tl1684016907_
                                              (##cdr _e1683816902_)))
                                         (if (gx#stx-null? _tl1684016907_)
                                             (if (gx#stx-pair? _tl1683416891_)
                                                 (let ((_e1684116910_
                                                        (gx#stx-e
                                                         _tl1683416891_)))
                                                   (let ((_hd1684216913_
                                                          (##car _e1684116910_))
                                                         (_tl1684316915_
                                                          (##cdr _e1684116910_)))
                                                     (if (gx#stx-pair?
                                                          _hd1684216913_)
                                                         (let ((_e1684416918_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1684216913_)))
                   (let ((_hd1684516921_ (##car _e1684416918_))
                         (_tl1684616923_ (##cdr _e1684416918_)))
                     (if (gx#identifier? _hd1684516921_)
                         (if (gx#stx-eq? '%#ref _hd1684516921_)
                             (if (gx#stx-pair? _tl1684616923_)
                                 (let ((_e1684716926_
                                        (gx#stx-e _tl1684616923_)))
                                   (let ((_hd1684816929_ (##car _e1684716926_))
                                         (_tl1684916931_
                                          (##cdr _e1684716926_)))
                                     (if (gx#stx-null? _tl1684916931_)
                                         (if (gx#stx-pair? _tl1684316915_)
                                             (let ((_e1685016934_
                                                    (gx#stx-e _tl1684316915_)))
                                               (let ((_hd1685116937_
                                                      (##car _e1685016934_))
                                                     (_tl1685216939_
                                                      (##cdr _e1685016934_)))
                                                 (if (gx#stx-null?
                                                      _tl1685216939_)
                                                     (if (gx#stx-null?
                                                          _tl1682816875_)
                                                         ((lambda (_L16942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16943_
                           _L16944_)
                    (gxc#generate-runtime-binding-id _L16942_))
                  _hd1684816929_
                  _hd1683916905_
                  _hd1682416865_)
                 (_g1673316857_ _g1673416860_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1673316857_
                                                      _g1673416860_))))
                                             (_g1673316857_ _g1673416860_))
                                         (_g1673316857_ _g1673416860_))))
                                 (_g1673316857_ _g1673416860_))
                             (_g1673316857_ _g1673416860_))
                         (_g1673316857_ _g1673416860_))))
                 (_g1673316857_ _g1673416860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1673316857_ _g1673416860_))
                                             (_g1673316857_ _g1673416860_))))
                                     (_g1673316857_ _g1673416860_))
                                 (_g1673316857_ _g1673416860_))
                             (_g1673316857_ _g1673416860_))))
                     (_g1673316857_ _g1673416860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1673316857_
                                                      _g1673416860_))
                                                 (_g1673316857_ _g1673416860_))
                                             (_g1673316857_ _g1673416860_))))
                                     (_g1673316857_ _g1673416860_))))
                             (_g1673316857_ _g1673416860_))))
                     (_g1673316857_ _g1673416860_)))))
          (let ((_g1673117110_
                 (lambda (_g1673416977_)
                   (if (gx#stx-pair? _g1673416977_)
                       (let ((_e1678416979_ (gx#stx-e _g1673416977_)))
                         (let ((_hd1678516982_ (##car _e1678416979_))
                               (_tl1678616984_ (##cdr _e1678416979_)))
                           (if (gx#stx-pair/null? _hd1678516982_)
                               (if (fx>= (gx#stx-length _hd1678516982_) '0)
                                   (let ((_g19138_
                                          (gx#syntax-split-splice
                                           _hd1678516982_
                                           '0)))
                                     (begin
                                       (let ((_g19139_
                                              (values-count _g19138_)))
                                         (if (not (fx= _g19139_ 2))
                                             (error "Context expects 2 values"
                                                    _g19139_)))
                                       (let ((_target1678716987_
                                              (values-ref _g19138_ 0))
                                             (_tl1678916989_
                                              (values-ref _g19138_ 1)))
                                         (letrec ((_loop1679016992_
                                                   (lambda (_hd1678816995_
                                                            _arg1679416997_)
                                                     (if (gx#stx-pair?
                                                          _hd1678816995_)
                                                         (let ((_e1679117000_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1678816995_)))
                   (let ((_lp-hd1679217003_ (##car _e1679117000_))
                         (_lp-tl1679317005_ (##cdr _e1679117000_)))
                     (_loop1679016992_
                      _lp-tl1679317005_
                      (cons _lp-hd1679217003_ _arg1679416997_))))
                 (let ((_arg1679517008_ (reverse _arg1679416997_)))
                   (if (gx#stx-pair? _tl1678616984_)
                       (let ((_e1679617011_ (gx#stx-e _tl1678616984_)))
                         (let ((_hd1679717014_ (##car _e1679617011_))
                               (_tl1679817016_ (##cdr _e1679617011_)))
                           (if (gx#stx-pair? _hd1679717014_)
                               (let ((_e1679917019_ (gx#stx-e _hd1679717014_)))
                                 (let ((_hd1680017022_ (##car _e1679917019_))
                                       (_tl1680117024_ (##cdr _e1679917019_)))
                                   (if (gx#identifier? _hd1680017022_)
                                       (if (gx#stx-eq? '%#call _hd1680017022_)
                                           (if (gx#stx-pair? _tl1680117024_)
                                               (let ((_e1680217027_
                                                      (gx#stx-e
                                                       _tl1680117024_)))
                                                 (let ((_hd1680317030_
                                                        (##car _e1680217027_))
                                                       (_tl1680417032_
                                                        (##cdr _e1680217027_)))
                                                   (if (gx#stx-pair?
                                                        _hd1680317030_)
                                                       (let ((_e1680517035_
                                                              (gx#stx-e
                                                               _hd1680317030_)))
                                                         (let ((_hd1680617038_
                                                                (##car _e1680517035_))
                                                               (_tl1680717040_
                                                                (##cdr _e1680517035_)))
                                                           (if (gx#identifier?
                                                                _hd1680617038_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1680617038_)
                           (if (gx#stx-pair? _tl1680717040_)
                               (let ((_e1680817043_ (gx#stx-e _tl1680717040_)))
                                 (let ((_hd1680917046_ (##car _e1680817043_))
                                       (_tl1681017048_ (##cdr _e1680817043_)))
                                   (if (gx#stx-null? _tl1681017048_)
                                       (if (gx#stx-pair? _tl1680417032_)
                                           (let ((_e1681117051_
                                                  (gx#stx-e _tl1680417032_)))
                                             (let ((_hd1681217054_
                                                    (##car _e1681117051_))
                                                   (_tl1681317056_
                                                    (##cdr _e1681117051_)))
                                               (if (gx#stx-pair?
                                                    _hd1681217054_)
                                                   (let ((_e1681417059_
                                                          (gx#stx-e
                                                           _hd1681217054_)))
                                                     (let ((_hd1681517062_
                                                            (##car _e1681417059_))
                                                           (_tl1681617064_
                                                            (##cdr _e1681417059_)))
                                                       (if (gx#identifier?
                                                            _hd1681517062_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1681517062_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1681617064_)
                           (let ((_e1681717067_ (gx#stx-e _tl1681617064_)))
                             (let ((_hd1681817070_ (##car _e1681717067_))
                                   (_tl1681917072_ (##cdr _e1681717067_)))
                               (if (gx#stx-null? _tl1681917072_)
                                   (if (gx#stx-null? _tl1679817016_)
                                       ((lambda (_L17075_
                                                 _L17076_
                                                 _L17077_
                                                 _L17078_)
                                          (gxc#generate-runtime-binding-id
                                           _L17075_))
                                        _hd1681817070_
                                        _hd1680917046_
                                        _tl1678916989_
                                        _arg1679517008_)
                                       (_g1673216974_ _g1673416977_))
                                   (_g1673216974_ _g1673416977_))))
                           (_g1673216974_ _g1673416977_))
                       (_g1673216974_ _g1673416977_))
                   (_g1673216974_ _g1673416977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1673216974_
                                                    _g1673416977_))))
                                           (_g1673216974_ _g1673416977_))
                                       (_g1673216974_ _g1673416977_))))
                               (_g1673216974_ _g1673416977_))
                           (_g1673216974_ _g1673416977_))
                       (_g1673216974_ _g1673416977_))))
               (_g1673216974_ _g1673416977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1673216974_ _g1673416977_))
                                           (_g1673216974_ _g1673416977_))
                                       (_g1673216974_ _g1673416977_))))
                               (_g1673216974_ _g1673416977_))))
                       (_g1673216974_ _g1673416977_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1679016992_
                                            _target1678716987_
                                            '())))))
                                   (_g1673216974_ _g1673416977_))
                               (_g1673216974_ _g1673416977_))))
                       (_g1673216974_ _g1673416977_)))))
            (let ((_g1673017258_
                   (lambda (_g1673417113_)
                     (if (gx#stx-pair? _g1673417113_)
                         (let ((_e1673817115_ (gx#stx-e _g1673417113_)))
                           (let ((_hd1673917118_ (##car _e1673817115_))
                                 (_tl1674017120_ (##cdr _e1673817115_)))
                             (if (gx#stx-pair/null? _hd1673917118_)
                                 (if (fx>= (gx#stx-length _hd1673917118_) '0)
                                     (let ((_g19140_
                                            (gx#syntax-split-splice
                                             _hd1673917118_
                                             '0)))
                                       (begin
                                         (let ((_g19141_
                                                (values-count _g19140_)))
                                           (if (not (fx= _g19141_ 2))
                                               (error "Context expects 2 values"
                                                      _g19141_)))
                                         (let ((_target1674117123_
                                                (values-ref _g19140_ 0))
                                               (_tl1674317125_
                                                (values-ref _g19140_ 1)))
                                           (if (gx#stx-null? _tl1674317125_)
                                               (letrec ((_loop1674417128_
                                                         (lambda (_hd1674217131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1674817133_)
                   (if (gx#stx-pair? _hd1674217131_)
                       (let ((_e1674517136_ (gx#stx-e _hd1674217131_)))
                         (let ((_lp-hd1674617139_ (##car _e1674517136_))
                               (_lp-tl1674717141_ (##cdr _e1674517136_)))
                           (_loop1674417128_
                            _lp-tl1674717141_
                            (cons _lp-hd1674617139_ _arg1674817133_))))
                       (let ((_arg1674917144_ (reverse _arg1674817133_)))
                         (if (gx#stx-pair? _tl1674017120_)
                             (let ((_e1675017147_ (gx#stx-e _tl1674017120_)))
                               (let ((_hd1675117150_ (##car _e1675017147_))
                                     (_tl1675217152_ (##cdr _e1675017147_)))
                                 (if (gx#stx-pair? _hd1675117150_)
                                     (let ((_e1675317155_
                                            (gx#stx-e _hd1675117150_)))
                                       (let ((_hd1675417158_
                                              (##car _e1675317155_))
                                             (_tl1675517160_
                                              (##cdr _e1675317155_)))
                                         (if (gx#identifier? _hd1675417158_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1675417158_)
                                                 (if (gx#stx-pair?
                                                      _tl1675517160_)
                                                     (let ((_e1675617163_
                                                            (gx#stx-e
                                                             _tl1675517160_)))
                                                       (let ((_hd1675717166_
                                                              (##car _e1675617163_))
                                                             (_tl1675817168_
                                                              (##cdr _e1675617163_)))
                                                         (if (gx#stx-pair?
                                                              _hd1675717166_)
                                                             (let ((_e1675917171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1675717166_)))
                       (let ((_hd1676017174_ (##car _e1675917171_))
                             (_tl1676117176_ (##cdr _e1675917171_)))
                         (if (gx#identifier? _hd1676017174_)
                             (if (gx#stx-eq? '%#ref _hd1676017174_)
                                 (if (gx#stx-pair? _tl1676117176_)
                                     (let ((_e1676217179_
                                            (gx#stx-e _tl1676117176_)))
                                       (let ((_hd1676317182_
                                              (##car _e1676217179_))
                                             (_tl1676417184_
                                              (##cdr _e1676217179_)))
                                         (if (gx#stx-null? _tl1676417184_)
                                             (if (gx#stx-pair/null?
                                                  _tl1675817168_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1675817168_)
                                                           '0)
                                                     (let ((_g19142_
                                                            (gx#syntax-split-splice
                                                             _tl1675817168_
                                                             '0)))
                                                       (begin
                                                         (let ((_g19143_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g19142_)))
                   (if (not (fx= _g19143_ 2))
                       (error "Context expects 2 values" _g19143_)))
                 (let ((_target1676517187_ (values-ref _g19142_ 0))
                       (_tl1676717189_ (values-ref _g19142_ 1)))
                   (if (gx#stx-null? _tl1676717189_)
                       (letrec ((_loop1676817192_
                                 (lambda (_hd1676617195_ _xarg1677217197_)
                                   (if (gx#stx-pair? _hd1676617195_)
                                       (let ((_e1676917200_
                                              (gx#stx-e _hd1676617195_)))
                                         (let ((_lp-hd1677017203_
                                                (##car _e1676917200_))
                                               (_lp-tl1677117205_
                                                (##cdr _e1676917200_)))
                                           (if (gx#stx-pair? _lp-hd1677017203_)
                                               (let ((_e1677417208_
                                                      (gx#stx-e
                                                       _lp-hd1677017203_)))
                                                 (let ((_hd1677517211_
                                                        (##car _e1677417208_))
                                                       (_tl1677617213_
                                                        (##cdr _e1677417208_)))
                                                   (if (gx#identifier?
                                                        _hd1677517211_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1677517211_)
                                                           (if (gx#stx-pair?
                                                                _tl1677617213_)
                                                               (let ((_e1677717216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1677617213_)))
                         (let ((_hd1677817219_ (##car _e1677717216_))
                               (_tl1677917221_ (##cdr _e1677717216_)))
                           (if (gx#stx-null? _tl1677917221_)
                               (_loop1676817192_
                                _lp-tl1677117205_
                                (cons _hd1677817219_ _xarg1677217197_))
                               (_g1673117110_ _g1673417113_))))
                       (_g1673117110_ _g1673417113_))
                   (_g1673117110_ _g1673417113_))
               (_g1673117110_ _g1673417113_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1673117110_ _g1673417113_))))
                                       (let ((_xarg1677317224_
                                              (reverse _xarg1677217197_)))
                                         (if (gx#stx-null? _tl1675217152_)
                                             ((lambda (_L17227_
                                                       _L17228_
                                                       _L17229_)
                                                (gxc#generate-runtime-binding-id
                                                 _L17228_))
                                              _xarg1677317224_
                                              _hd1676317182_
                                              _arg1674917144_)
                                             (_g1673117110_
                                              _g1673417113_)))))))
                         (_loop1676817192_ _target1676517187_ '()))
                       (_g1673117110_ _g1673417113_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1673117110_
                                                      _g1673417113_))
                                                 (_g1673117110_ _g1673417113_))
                                             (_g1673117110_ _g1673417113_))))
                                     (_g1673117110_ _g1673417113_))
                                 (_g1673117110_ _g1673417113_))
                             (_g1673117110_ _g1673417113_))))
                     (_g1673117110_ _g1673417113_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1673117110_
                                                      _g1673417113_))
                                                 (_g1673117110_ _g1673417113_))
                                             (_g1673117110_ _g1673417113_))))
                                     (_g1673117110_ _g1673417113_))))
                             (_g1673117110_ _g1673417113_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1674417128_
                                                  _target1674117123_
                                                  '()))
                                               (_g1673117110_
                                                _g1673417113_)))))
                                     (_g1673117110_ _g1673417113_))
                                 (_g1673117110_ _g1673417113_))))
                         (_g1673117110_ _g1673417113_)))))
              (_g1673017258_ _form16729_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form16533_)
      (let ((_g1653516549_
             (lambda (_g1653616546_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1653616546_))))
        (let ((_g1653416726_
               (lambda (_g1653616552_)
                 (if (gx#stx-pair? _g1653616552_)
                     (let ((_e1653916554_ (gx#stx-e _g1653616552_)))
                       (let ((_hd1654016557_ (##car _e1653916554_))
                             (_tl1654116559_ (##cdr _e1653916554_)))
                         (if (gx#stx-pair? _tl1654116559_)
                             (let ((_e1654216562_ (gx#stx-e _tl1654116559_)))
                               (let ((_hd1654316565_ (##car _e1654216562_))
                                     (_tl1654416567_ (##cdr _e1654216562_)))
                                 (if (gx#stx-null? _tl1654416567_)
                                     ((lambda (_L16570_ _L16571_)
                                        (let ((_g1658616614_
                                               (lambda (_g1658716611_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1658716611_))))
                                          (let ((_g1658516627_
                                                 (lambda (_g1658716617_)
                                                   ((lambda (_L16619_)
                                                      (cons '0 '()))
                                                    _g1658716617_))))
                                            (let ((_g1658416676_
                                                   (lambda (_g1658716630_)
                                                     (if (gx#stx-pair/null?
                                                          _g1658716630_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1658716630_)
                           '0)
                     (let ((_g19144_
                            (gx#syntax-split-splice _g1658716630_ '0)))
                       (begin
                         (let ((_g19145_ (values-count _g19144_)))
                           (if (not (fx= _g19145_ 2))
                               (error "Context expects 2 values" _g19145_)))
                         (let ((_target1660016632_ (values-ref _g19144_ 0))
                               (_tl1660216634_ (values-ref _g19144_ 1)))
                           (letrec ((_loop1660316637_
                                     (lambda (_hd1660116640_ _arg1660716642_)
                                       (if (gx#stx-pair? _hd1660116640_)
                                           (let ((_e1660416645_
                                                  (gx#stx-e _hd1660116640_)))
                                             (let ((_lp-hd1660516648_
                                                    (##car _e1660416645_))
                                                   (_lp-tl1660616650_
                                                    (##cdr _e1660416645_)))
                                               (_loop1660316637_
                                                _lp-tl1660616650_
                                                (cons _lp-hd1660516648_
                                                      _arg1660716642_))))
                                           (let ((_arg1660816653_
                                                  (reverse _arg1660716642_)))
                                             ((lambda (_L16656_ _L16657_)
                                                (cons (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1666816671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1666916673_)
                                  (cons _g1666816671_ _g1666916673_))
                                '()
                                _L16657_)))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _tl1660216634_
                                              _arg1660816653_))))))
                             (_loop1660316637_ _target1660016632_ '())))))
                     (_g1658516627_ _g1658716630_))
                 (_g1658516627_ _g1658716630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1658316723_
                                                     (lambda (_g1658716679_)
                                                       (if (gx#stx-pair/null?
                                                            _g1658716679_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1658716679_)
                             '0)
                       (let ((_g19146_
                              (gx#syntax-split-splice _g1658716679_ '0)))
                         (begin
                           (let ((_g19147_ (values-count _g19146_)))
                             (if (not (fx= _g19147_ 2))
                                 (error "Context expects 2 values" _g19147_)))
                           (let ((_target1658916681_ (values-ref _g19146_ 0))
                                 (_tl1659116683_ (values-ref _g19146_ 1)))
                             (if (gx#stx-null? _tl1659116683_)
                                 (letrec ((_loop1659216686_
                                           (lambda (_hd1659016689_
                                                    _arg1659616691_)
                                             (if (gx#stx-pair? _hd1659016689_)
                                                 (let ((_e1659316694_
                                                        (gx#stx-e
                                                         _hd1659016689_)))
                                                   (let ((_lp-hd1659416697_
                                                          (##car _e1659316694_))
                                                         (_lp-tl1659516699_
                                                          (##cdr _e1659316694_)))
                                                     (_loop1659216686_
                                                      _lp-tl1659516699_
                                                      (cons _lp-hd1659416697_
                                                            _arg1659616691_))))
                                                 (let ((_arg1659716702_
                                                        (reverse _arg1659616691_)))
                                                   ((lambda (_L16705_)
                                                      (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1671516718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1671616720_)
                                  (cons _g1671516718_ _g1671616720_))
                                '()
                                _L16705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg1659716702_))))))
                                   (_loop1659216686_ _target1658916681_ '()))
                                 (_g1658416676_ _g1658716679_)))))
                       (_g1658416676_ _g1658716679_))
                   (_g1658416676_ _g1658716679_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1658316723_ _L16571_))))))
                                      _hd1654316565_
                                      _hd1654016557_)
                                     (_g1653516549_ _g1653616552_))))
                             (_g1653516549_ _g1653616552_))))
                     (_g1653516549_ _g1653616552_)))))
          (_g1653416726_ _form16533_)))))
  (define gxc#lambda-expr?
    (lambda (_expr16486_)
      (let ((_g1648916499_
             (lambda (_g1649016496_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1649016496_))))
        (let ((_g1648816506_ (lambda (_g1649016502_) ((lambda () '#f)))))
          (let ((_g1648716530_
                 (lambda (_g1649016509_)
                   (if (gx#stx-pair? _g1649016509_)
                       (let ((_e1649216511_ (gx#stx-e _g1649016509_)))
                         (let ((_hd1649316514_ (##car _e1649216511_))
                               (_tl1649416516_ (##cdr _e1649216511_)))
                           (if (gx#identifier? _hd1649316514_)
                               (if (gx#stx-eq? '%#lambda _hd1649316514_)
                                   ((lambda (_L16519_) '#t) _tl1649416516_)
                                   (_g1648816506_ _g1649016509_))
                               (_g1648816506_ _g1649016509_))))
                       (_g1648816506_ _g1649016509_)))))
            (_g1648716530_ _expr16486_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr16439_)
      (let ((_g1644216452_
             (lambda (_g1644316449_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1644316449_))))
        (let ((_g1644116459_ (lambda (_g1644316455_) ((lambda () '#f)))))
          (let ((_g1644016483_
                 (lambda (_g1644316462_)
                   (if (gx#stx-pair? _g1644316462_)
                       (let ((_e1644516464_ (gx#stx-e _g1644316462_)))
                         (let ((_hd1644616467_ (##car _e1644516464_))
                               (_tl1644716469_ (##cdr _e1644516464_)))
                           (if (gx#identifier? _hd1644616467_)
                               (if (gx#stx-eq? '%#case-lambda _hd1644616467_)
                                   ((lambda (_L16472_) '#t) _tl1644716469_)
                                   (_g1644116459_ _g1644316462_))
                               (_g1644116459_ _g1644316462_))))
                       (_g1644116459_ _g1644316462_)))))
            (_g1644016483_ _expr16439_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr16308_)
      (let ((_g1631116341_
             (lambda (_g1631216338_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1631216338_))))
        (let ((_g1631016348_ (lambda (_g1631216344_) ((lambda () '#f)))))
          (let ((_g1630916436_
                 (lambda (_g1631216351_)
                   (if (gx#stx-pair? _g1631216351_)
                       (let ((_e1631616353_ (gx#stx-e _g1631216351_)))
                         (let ((_hd1631716356_ (##car _e1631616353_))
                               (_tl1631816358_ (##cdr _e1631616353_)))
                           (if (gx#identifier? _hd1631716356_)
                               (if (gx#stx-eq? '%#let-values _hd1631716356_)
                                   (if (gx#stx-pair? _tl1631816358_)
                                       (let ((_e1631916361_
                                              (gx#stx-e _tl1631816358_)))
                                         (let ((_hd1632016364_
                                                (##car _e1631916361_))
                                               (_tl1632116366_
                                                (##cdr _e1631916361_)))
                                           (if (gx#stx-pair? _hd1632016364_)
                                               (let ((_e1632216369_
                                                      (gx#stx-e
                                                       _hd1632016364_)))
                                                 (let ((_hd1632316372_
                                                        (##car _e1632216369_))
                                                       (_tl1632416374_
                                                        (##cdr _e1632216369_)))
                                                   (if (gx#stx-pair?
                                                        _hd1632316372_)
                                                       (let ((_e1632516377_
                                                              (gx#stx-e
                                                               _hd1632316372_)))
                                                         (let ((_hd1632616380_
                                                                (##car _e1632516377_))
                                                               (_tl1632716382_
                                                                (##cdr _e1632516377_)))
                                                           (if (gx#stx-pair?
                                                                _hd1632616380_)
                                                               (let ((_e1632816385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1632616380_)))
                         (let ((_hd1632916388_ (##car _e1632816385_))
                               (_tl1633016390_ (##cdr _e1632816385_)))
                           (if (gx#stx-null? _tl1633016390_)
                               (if (gx#stx-pair? _tl1632716382_)
                                   (let ((_e1633116393_
                                          (gx#stx-e _tl1632716382_)))
                                     (let ((_hd1633216396_
                                            (##car _e1633116393_))
                                           (_tl1633316398_
                                            (##cdr _e1633116393_)))
                                       (if (gx#stx-null? _tl1633316398_)
                                           (if (gx#stx-null? _tl1632416374_)
                                               (if (gx#stx-pair?
                                                    _tl1632116366_)
                                                   (let ((_e1633416401_
                                                          (gx#stx-e
                                                           _tl1632116366_)))
                                                     (let ((_hd1633516404_
                                                            (##car _e1633416401_))
                                                           (_tl1633616406_
                                                            (##cdr _e1633416401_)))
                                                       (if (gx#stx-null?
                                                            _tl1633616406_)
                                                           ((lambda (_L16409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16410_
                             _L16411_)
                      (if (gx#identifier? _L16411_)
                          (if (gxc#lambda-expr? _L16410_)
                              (gxc#case-lambda-expr? _L16409_)
                              '#f)
                          '#f))
                    _hd1633516404_
                    _hd1633216396_
                    _hd1632916388_)
                   (_g1631016348_ _g1631216351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1631016348_
                                                    _g1631216351_))
                                               (_g1631016348_ _g1631216351_))
                                           (_g1631016348_ _g1631216351_))))
                                   (_g1631016348_ _g1631216351_))
                               (_g1631016348_ _g1631216351_))))
                       (_g1631016348_ _g1631216351_))))
               (_g1631016348_ _g1631216351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1631016348_ _g1631216351_))))
                                       (_g1631016348_ _g1631216351_))
                                   (_g1631016348_ _g1631216351_))
                               (_g1631016348_ _g1631216351_))))
                       (_g1631016348_ _g1631216351_)))))
            (_g1630916436_ _expr16308_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda16048
      (lambda (_stx16050_ _id16051_ _clauses16052_ _gensym?16053_)
        ((letrec ((_lp16055_
                   (lambda (_rest16057_ _ids16058_ _impls16059_ _clauses16060_)
                     (let ((_rest1606116069_ _rest16057_))
                       (let ((_E1606416073_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1606116069_))))
                         (let ((_else1606316077_
                                (lambda ()
                                  (values (reverse _ids16058_)
                                          (reverse _impls16059_)
                                          (reverse _clauses16060_)))))
                           (let ((_K1606516282_
                                  (lambda (_rest16080_ _clause16081_)
                                    (if (gxc#dispatch-lambda-form?
                                         _clause16081_)
                                        (_lp16055_
                                         _rest16080_
                                         _ids16058_
                                         _impls16059_
                                         (cons _clause16081_ _clauses16060_))
                                        (let ((_g1608316094_
                                               (lambda (_g1608416091_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1608416091_))))
                                          (let ((_g1608216279_
                                                 (lambda (_g1608416097_)
                                                   (if (gx#stx-pair?
                                                        _g1608416097_)
                                                       (let ((_e1608716099_
                                                              (gx#stx-e
                                                               _g1608416097_)))
                                                         (let ((_hd1608816102_
                                                                (##car _e1608716099_))
                                                               (_tl1608916104_
                                                                (##cdr _e1608716099_)))
                                                           ((lambda (_L16107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16108_)
                      (let ((_id16125_
                             (make-symbol
                              (gx#stx-e _id16051_)
                              '"__"
                              (length _clauses16060_)
                              (if _gensym?16053_ (gensym '__) '""))))
                        (let ((_id16127_
                               (gx#core-quote-syntax__1
                                _id16125_
                                (gx#stx-source _stx16050_))))
                          (let ((_impl16129_
                                 (gxc#xform-wrap-source
                                  (cons (gx#datum->syntax__0 '#f '%#lambda)
                                        (cons _L16108_ _L16107_))
                                  _stx16050_)))
                            (let ((_clause16276_
                                   (let ((_g1613316161_
                                          (lambda (_g1613416158_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1613416158_))))
                                     (let ((_g1613216177_
                                            (lambda (_g1613416164_)
                                              ((lambda (_L16166_)
                                                 (cons _L16108_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'apply '()))
                                  (cons (cons '%#ref (cons _id16127_ '()))
                                        (cons (cons (gx#datum->syntax__0
                                                     '#f
                                                     '%#ref)
                                                    (cons _L16166_ '()))
                                              '()))))
                      _stx16050_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g1613416164_))))
                                       (let ((_g1613116226_
                                              (lambda (_g1613416180_)
                                                (if (gx#stx-pair/null?
                                                     _g1613416180_)
                                                    (if (fx>= (gx#stx-length
                                                               _g1613416180_)
                                                              '0)
                                                        (let ((_g19148_
                                                               (gx#syntax-split-splice
                                                                _g1613416180_
                                                                '0)))
                                                          (begin
                                                            (let ((_g19149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g19148_)))
                      (if (not (fx= _g19149_ 2))
                          (error "Context expects 2 values" _g19149_)))
                    (let ((_target1614716182_ (values-ref _g19148_ 0))
                          (_tl1614916184_ (values-ref _g19148_ 1)))
                      (letrec ((_loop1615016187_
                                (lambda (_hd1614816190_ _arg1615416192_)
                                  (if (gx#stx-pair? _hd1614816190_)
                                      (let ((_e1615116195_
                                             (gx#stx-e _hd1614816190_)))
                                        (let ((_lp-hd1615216198_
                                               (##car _e1615116195_))
                                              (_lp-tl1615316200_
                                               (##cdr _e1615116195_)))
                                          (_loop1615016187_
                                           _lp-tl1615316200_
                                           (cons _lp-hd1615216198_
                                                 _arg1615416192_))))
                                      (let ((_arg1615516203_
                                             (reverse _arg1615416192_)))
                                        ((lambda (_L16206_ _L16207_)
                                           (cons _L16108_
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'apply '()))
                            (cons (cons '%#ref (cons _id16127_ '()))
                                  (foldr1 cons
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L16206_ '()))
                                                '())
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1621816221_
                                                             _g1621916223_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1621816221_ '()))
                    _g1621916223_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L16207_))))))
                _stx16050_)
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl1614916184_
                                         _arg1615516203_))))))
                        (_loop1615016187_ _target1614716182_ '())))))
                (_g1613216177_ _g1613416180_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1613216177_
                                                     _g1613416180_)))))
                                         (let ((_g1613016273_
                                                (lambda (_g1613416229_)
                                                  (if (gx#stx-pair/null?
                                                       _g1613416229_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1613416229_)
                        '0)
                  (let ((_g19150_ (gx#syntax-split-splice _g1613416229_ '0)))
                    (begin
                      (let ((_g19151_ (values-count _g19150_)))
                        (if (not (fx= _g19151_ 2))
                            (error "Context expects 2 values" _g19151_)))
                      (let ((_target1613616231_ (values-ref _g19150_ 0))
                            (_tl1613816233_ (values-ref _g19150_ 1)))
                        (if (gx#stx-null? _tl1613816233_)
                            (letrec ((_loop1613916236_
                                      (lambda (_hd1613716239_ _arg1614316241_)
                                        (if (gx#stx-pair? _hd1613716239_)
                                            (let ((_e1614016244_
                                                   (gx#stx-e _hd1613716239_)))
                                              (let ((_lp-hd1614116247_
                                                     (##car _e1614016244_))
                                                    (_lp-tl1614216249_
                                                     (##cdr _e1614016244_)))
                                                (_loop1613916236_
                                                 _lp-tl1614216249_
                                                 (cons _lp-hd1614116247_
                                                       _arg1614316241_))))
                                            (let ((_arg1614416252_
                                                   (reverse _arg1614316241_)))
                                              ((lambda (_L16255_)
                                                 (cons _L16108_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _id16127_ '()))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1626516268_
                                                     _g1626616270_)
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _g1626516268_
                                                                '()))
                                                    _g1626616270_))
                                            '()
                                            _L16255_))))
                      _stx16050_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _arg1614416252_))))))
                              (_loop1613916236_ _target1613616231_ '()))
                            (_g1613116226_ _g1613416229_)))))
                  (_g1613116226_ _g1613416229_))
              (_g1613116226_ _g1613416229_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1613016273_ _L16108_)))))))
                              (let ()
                                (_lp16055_
                                 _rest16080_
                                 (cons _id16127_ _ids16058_)
                                 (cons _impl16129_ _impls16059_)
                                 (cons _clause16276_ _clauses16060_))))))))
                    _tl1608916104_
                    _hd1608816102_)))
               (_g1608316094_ _g1608416097_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1608216279_ _clause16081_)))))))
                             (if (##pair? _rest1606116069_)
                                 (let ((_hd1606616285_
                                        (##car _rest1606116069_))
                                       (_tl1606716287_
                                        (##cdr _rest1606116069_)))
                                   (let ((_clause16290_ _hd1606616285_))
                                     (let ((_rest16292_ _tl1606716287_))
                                       (_K1606516282_
                                        _rest16292_
                                        _clause16290_))))
                                 (_else1606316077_)))))))))
           _lp16055_)
         _clauses16052_
         '()
         '()
         '())))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx16297_ _id16298_ _clauses16299_)
          (let ((_gensym?16301_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda16048
             _stx16297_
             _id16298_
             _clauses16299_
             _gensym?16301_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g19153_
          (let ((_g19152_ (length _g19153_)))
            (cond ((fx= _g19152_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g19153_))
                  ((fx= _g19152_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda16048
                          _g19153_))
                  (else (error "No clause matching arguments" _g19153_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx15639_)
      (let ((_case-lambda-clause-def15641_
             (lambda (_id16046_ _impl16047_)
               (gxc#xform-wrap-source
                (cons '%#define-values
                      (cons (cons _id16046_ '())
                            (cons (gxc#compile-e _impl16047_) '())))
                _stx15639_))))
        (let ((_g1564515690_
               (lambda (_g1564615687_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1564615687_))))
          (let ((_g1564415736_
                 (lambda (_g1564615693_)
                   (if (gx#stx-pair? _g1564615693_)
                       (let ((_e1567715695_ (gx#stx-e _g1564615693_)))
                         (let ((_hd1567815698_ (##car _e1567715695_))
                               (_tl1567915700_ (##cdr _e1567715695_)))
                           (if (gx#stx-pair? _tl1567915700_)
                               (let ((_e1568015703_ (gx#stx-e _tl1567915700_)))
                                 (let ((_hd1568115706_ (##car _e1568015703_))
                                       (_tl1568215708_ (##cdr _e1568015703_)))
                                   (if (gx#stx-pair? _tl1568215708_)
                                       (let ((_e1568315711_
                                              (gx#stx-e _tl1568215708_)))
                                         (let ((_hd1568415714_
                                                (##car _e1568315711_))
                                               (_tl1568515716_
                                                (##cdr _e1568315711_)))
                                           (if (gx#stx-null? _tl1568515716_)
                                               ((lambda (_L15719_ _L15720_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L15720_
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L15719_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15639_))
                                                _hd1568415714_
                                                _hd1568115706_)
                                               (_g1564515690_ _g1564615693_))))
                                       (_g1564515690_ _g1564615693_))))
                               (_g1564515690_ _g1564615693_))))
                       (_g1564515690_ _g1564615693_)))))
            (let ((_g1564315918_
                   (lambda (_g1564615739_)
                     (if (gx#stx-pair? _g1564615739_)
                         (let ((_e1566315741_ (gx#stx-e _g1564615739_)))
                           (let ((_hd1566415744_ (##car _e1566315741_))
                                 (_tl1566515746_ (##cdr _e1566315741_)))
                             (if (gx#stx-pair? _tl1566515746_)
                                 (let ((_e1566615749_
                                        (gx#stx-e _tl1566515746_)))
                                   (let ((_hd1566715752_ (##car _e1566615749_))
                                         (_tl1566815754_
                                          (##cdr _e1566615749_)))
                                     (if (gx#stx-pair? _hd1566715752_)
                                         (let ((_e1566915757_
                                                (gx#stx-e _hd1566715752_)))
                                           (let ((_hd1567015760_
                                                  (##car _e1566915757_))
                                                 (_tl1567115762_
                                                  (##cdr _e1566915757_)))
                                             (if (gx#stx-null? _tl1567115762_)
                                                 (if (gx#stx-pair?
                                                      _tl1566815754_)
                                                     (let ((_e1567215765_
                                                            (gx#stx-e
                                                             _tl1566815754_)))
                                                       (let ((_hd1567315768_
                                                              (##car _e1567215765_))
                                                             (_tl1567415770_
                                                              (##cdr _e1567215765_)))
                                                         (if (gx#stx-null?
                                                              _tl1567415770_)
                                                             ((lambda (_L15773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L15774_)
                        (if (if (gx#identifier? _L15774_)
                                (gxc#opt-lambda-expr? _L15773_)
                                '#f)
                            (let ((_g1579015820_
                                   (lambda (_g1579115817_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1579115817_))))
                              (let ((_g1578915915_
                                     (lambda (_g1579115823_)
                                       (if (gx#stx-pair? _g1579115823_)
                                           (let ((_e1579515825_
                                                  (gx#stx-e _g1579115823_)))
                                             (let ((_hd1579615828_
                                                    (##car _e1579515825_))
                                                   (_tl1579715830_
                                                    (##cdr _e1579515825_)))
                                               (if (gx#stx-pair?
                                                    _tl1579715830_)
                                                   (let ((_e1579815833_
                                                          (gx#stx-e
                                                           _tl1579715830_)))
                                                     (let ((_hd1579915836_
                                                            (##car _e1579815833_))
                                                           (_tl1580015838_
                                                            (##cdr _e1579815833_)))
                                                       (if (gx#stx-pair?
                                                            _hd1579915836_)
                                                           (let ((_e1580115841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1579915836_)))
                     (let ((_hd1580215844_ (##car _e1580115841_))
                           (_tl1580315846_ (##cdr _e1580115841_)))
                       (if (gx#stx-pair? _hd1580215844_)
                           (let ((_e1580415849_ (gx#stx-e _hd1580215844_)))
                             (let ((_hd1580515852_ (##car _e1580415849_))
                                   (_tl1580615854_ (##cdr _e1580415849_)))
                               (if (gx#stx-pair? _hd1580515852_)
                                   (let ((_e1580715857_
                                          (gx#stx-e _hd1580515852_)))
                                     (let ((_hd1580815860_
                                            (##car _e1580715857_))
                                           (_tl1580915862_
                                            (##cdr _e1580715857_)))
                                       (if (gx#stx-null? _tl1580915862_)
                                           (if (gx#stx-pair? _tl1580615854_)
                                               (let ((_e1581015865_
                                                      (gx#stx-e
                                                       _tl1580615854_)))
                                                 (let ((_hd1581115868_
                                                        (##car _e1581015865_))
                                                       (_tl1581215870_
                                                        (##cdr _e1581015865_)))
                                                   (if (gx#stx-null?
                                                        _tl1581215870_)
                                                       (if (gx#stx-null?
                                                            _tl1580315846_)
                                                           (if (gx#stx-pair?
                                                                _tl1580015838_)
                                                               (let ((_e1581315873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1580015838_)))
                         (let ((_hd1581415876_ (##car _e1581315873_))
                               (_tl1581515878_ (##cdr _e1581315873_)))
                           (if (gx#stx-null? _tl1581515878_)
                               ((lambda (_L15881_ _L15882_ _L15883_)
                                  (let ((_lambda-id15907_
                                         (make-symbol
                                          (gx#stx-e _L15774_)
                                          '"__"
                                          (gx#stx-e _L15883_))))
                                    (let ((_lambda-id15909_
                                           (gx#core-quote-syntax__1
                                            _lambda-id15907_
                                            (gx#stx-source _stx15639_))))
                                      (let ((_g19154_
                                             (gx#core-bind-runtime!__0
                                              _lambda-id15909_)))
                                        (let ((_new-case-lambda-expr15912_
                                               (gxc#apply-expression-subst
                                                _L15881_
                                                _L15883_
                                                _lambda-id15909_)))
                                          (let ()
                                            (begin
                                              (gxc#verbose
                                               '"lift opt-lambda dispatch "
                                               (gxc#generate-runtime-binding-id
                                                _L15774_)
                                               '" => "
                                               (gxc#generate-runtime-binding-id
                                                _lambda-id15909_))
                                              (gxc#xform-wrap-source
                                               (cons '%#begin
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _lambda-id15909_ '())
                                (cons (gxc#compile-e _L15882_) '())))
                    _stx15639_)
                   (cons (gxc#lift-top-lambda-define-values%
                          (gxc#xform-wrap-source
                           (cons '%#define-values
                                 (cons (cons _L15774_ '())
                                       (cons _new-case-lambda-expr15912_ '())))
                           _stx15639_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx15639_))))))))
                                _hd1581415876_
                                _hd1581115868_
                                _hd1580815860_)
                               (_g1579015820_ _g1579115823_))))
                       (_g1579015820_ _g1579115823_))
                   (_g1579015820_ _g1579115823_))
               (_g1579015820_ _g1579115823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1579015820_ _g1579115823_))
                                           (_g1579015820_ _g1579115823_))))
                                   (_g1579015820_ _g1579115823_))))
                           (_g1579015820_ _g1579115823_))))
                   (_g1579015820_ _g1579115823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1579015820_
                                                    _g1579115823_))))
                                           (_g1579015820_ _g1579115823_)))))
                                (_g1578915915_ _L15773_)))
                            (_g1564415736_ _g1564615739_)))
                      _hd1567315768_
                      _hd1567015760_)
                     (_g1564415736_ _g1564615739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1564415736_
                                                      _g1564615739_))
                                                 (_g1564415736_
                                                  _g1564615739_))))
                                         (_g1564415736_ _g1564615739_))))
                                 (_g1564415736_ _g1564615739_))))
                         (_g1564415736_ _g1564615739_)))))
              (let ((_g1564216043_
                     (lambda (_g1564615921_)
                       (if (gx#stx-pair? _g1564615921_)
                           (let ((_e1564915923_ (gx#stx-e _g1564615921_)))
                             (let ((_hd1565015926_ (##car _e1564915923_))
                                   (_tl1565115928_ (##cdr _e1564915923_)))
                               (if (gx#stx-pair? _tl1565115928_)
                                   (let ((_e1565215931_
                                          (gx#stx-e _tl1565115928_)))
                                     (let ((_hd1565315934_
                                            (##car _e1565215931_))
                                           (_tl1565415936_
                                            (##cdr _e1565215931_)))
                                       (if (gx#stx-pair? _hd1565315934_)
                                           (let ((_e1565515939_
                                                  (gx#stx-e _hd1565315934_)))
                                             (let ((_hd1565615942_
                                                    (##car _e1565515939_))
                                                   (_tl1565715944_
                                                    (##cdr _e1565515939_)))
                                               (if (gx#stx-null?
                                                    _tl1565715944_)
                                                   (if (gx#stx-pair?
                                                        _tl1565415936_)
                                                       (let ((_e1565815947_
                                                              (gx#stx-e
                                                               _tl1565415936_)))
                                                         (let ((_hd1565915950_
                                                                (##car _e1565815947_))
                                                               (_tl1566015952_
                                                                (##cdr _e1565815947_)))
                                                           (if (gx#stx-null?
                                                                _tl1566015952_)
                                                               ((lambda (_L15955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L15956_)
                          (if (if (gx#identifier? _L15956_)
                                  (gxc#case-lambda-expr? _L15955_)
                                  '#f)
                              (let ((_g1597315987_
                                     (lambda (_g1597415984_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1597415984_))))
                                (let ((_g1597216018_
                                       (lambda (_g1597415990_)
                                         (if (gx#stx-pair? _g1597415990_)
                                             (let ((_e1598015992_
                                                    (gx#stx-e _g1597415990_)))
                                               (let ((_hd1598115995_
                                                      (##car _e1598015992_))
                                                     (_tl1598215997_
                                                      (##cdr _e1598015992_)))
                                                 ((lambda (_L16000_)
                                                    (let ((_g19155_
                                                           (gxc#lift-case-lambda-clauses__0
                                                            _stx15639_
                                                            _L15956_
                                                            _L16000_)))
                                                      (begin
                                                        (let ((_g19156_
                                                               (values-count
                                                                _g19155_)))
                                                          (if (not (fx= _g19156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                3))
                      (error "Context expects 3 values" _g19156_)))
                (let ((_ids16010_ (values-ref _g19155_ 0))
                      (_impls16011_ (values-ref _g19155_ 1))
                      (_clauses16012_ (values-ref _g19155_ 2)))
                  (let ((_g19157_ (for-each gx#core-bind-runtime! _ids16010_)))
                    (let ((_defs16015_
                           (map _case-lambda-clause-def15641_
                                _ids16010_
                                _impls16011_)))
                      (let ()
                        (begin
                          (gxc#verbose
                           '"lift case-lambda clauses "
                           (gxc#generate-runtime-binding-id _L15956_)
                           '" => "
                           (map gxc#identifier-symbol _ids16010_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (foldr1 cons
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _L15956_ '())
                                                            (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#case-lambda _clauses16012_)
                           (gx#datum->syntax__0 '#f 'case-lambda-expr))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx15639_)
                                               '())
                                         _defs16015_))
                           _stx15639_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1598215997_)))
                                             (_g1597315987_ _g1597415990_)))))
                                  (let ((_g1597116040_
                                         (lambda (_g1597416021_)
                                           (if (gx#stx-pair? _g1597416021_)
                                               (let ((_e1597616023_
                                                      (gx#stx-e
                                                       _g1597416021_)))
                                                 (let ((_hd1597716026_
                                                        (##car _e1597616023_))
                                                       (_tl1597816028_
                                                        (##cdr _e1597616023_)))
                                                   ((lambda (_L16031_)
                                                      (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16031_)
                  _stx15639_
                  (_g1597216018_ _g1597416021_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1597816028_)))
                                               (_g1597216018_
                                                _g1597416021_)))))
                                    (_g1597116040_ _L15955_))))
                              (_g1564315918_ _g1564615921_)))
                        _hd1565915950_
                        _hd1565615942_)
                       (_g1564315918_ _g1564615921_))))
               (_g1564315918_ _g1564615921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1564315918_
                                                    _g1564615921_))))
                                           (_g1564315918_ _g1564615921_))))
                                   (_g1564315918_ _g1564615921_))))
                           (_g1564315918_ _g1564615921_)))))
                (_g1564216043_ _stx15639_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx15062_)
      (let ((_bind-e__opt-lambda15621__1910419105_
             (lambda (_id15623_ _expr15624_ _compile?15625_)
               (cons (cons _id15623_ '())
                     (cons (if _compile?15625_
                               (gxc#compile-e _expr15624_)
                               _expr15624_)
                           '())))))
        (let ((_bind-e__0__1910619107_
               (lambda (_id15630_ _expr15631_)
                 (let ((_compile?15633_ '#t))
                   (_bind-e__opt-lambda15621__1910419105_
                    _id15630_
                    _expr15631_
                    _compile?15633_)))))
          (let ((_bind-e15064_
                 (lambda _g19167_
                   (let ((_g19166_ (length _g19167_)))
                     (cond ((fx= _g19166_ 2)
                            (apply _bind-e__0__1910619107_ _g19167_))
                           ((fx= _g19166_ 3)
                            (apply _bind-e__opt-lambda15621__1910419105_
                                   _g19167_))
                           (else
                            (error "No clause matching arguments"
                                   _g19167_)))))))
            (let ((_compile-bindings15065_
                   (lambda (_rest15207_)
                     ((letrec ((_lp15209_
                                (lambda (_rest15211_
                                         _lift115212_
                                         _lift215213_
                                         _bind15214_)
                                  (let ((_rest1521515223_ _rest15211_))
                                    (let ((_E1521815227_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1521515223_))))
                                      (let ((_else1521715231_
                                             (lambda ()
                                               (values (reverse _lift115212_)
                                                       (reverse _lift215213_)
                                                       (reverse _bind15214_)))))
                                        (let ((_K1521915610_
                                               (lambda (_rest15234_ _hd15235_)
                                                 (let ((_g1523915275_
                                                        (lambda (_g1524015272_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1524015272_))))
                                                   (let ((_g1523815316_
                                                          (lambda (_g1524015278_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1524015278_)
                        (let ((_e1526515280_ (gx#stx-e _g1524015278_)))
                          (let ((_hd1526615283_ (##car _e1526515280_))
                                (_tl1526715285_ (##cdr _e1526515280_)))
                            (if (gx#stx-pair? _tl1526715285_)
                                (let ((_e1526815288_
                                       (gx#stx-e _tl1526715285_)))
                                  (let ((_hd1526915291_ (##car _e1526815288_))
                                        (_tl1527015293_ (##cdr _e1526815288_)))
                                    (if (gx#stx-null? _tl1527015293_)
                                        ((lambda (_L15296_ _L15297_)
                                           (_lp15209_
                                            _rest15234_
                                            _lift115212_
                                            _lift215213_
                                            (cons (cons _L15297_
                                                        (cons (gxc#compile-e
                                                               _L15296_)
                                                              '()))
                                                  _bind15214_)))
                                         _hd1526915291_
                                         _hd1526615283_)
                                        (_g1523915275_ _g1524015278_))))
                                (_g1523915275_ _g1524015278_))))
                        (_g1523915275_ _g1524015278_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1523715488_
                                                            (lambda (_g1524015319_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1524015319_)
                          (let ((_e1525415321_ (gx#stx-e _g1524015319_)))
                            (let ((_hd1525515324_ (##car _e1525415321_))
                                  (_tl1525615326_ (##cdr _e1525415321_)))
                              (if (gx#stx-pair? _hd1525515324_)
                                  (let ((_e1525715329_
                                         (gx#stx-e _hd1525515324_)))
                                    (let ((_hd1525815332_
                                           (##car _e1525715329_))
                                          (_tl1525915334_
                                           (##cdr _e1525715329_)))
                                      (if (gx#stx-null? _tl1525915334_)
                                          (if (gx#stx-pair? _tl1525615326_)
                                              (let ((_e1526015337_
                                                     (gx#stx-e
                                                      _tl1525615326_)))
                                                (let ((_hd1526115340_
                                                       (##car _e1526015337_))
                                                      (_tl1526215342_
                                                       (##cdr _e1526015337_)))
                                                  (if (gx#stx-null?
                                                       _tl1526215342_)
                                                      ((lambda (_L15345_
                                                                _L15346_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15346_)
                         (gxc#opt-lambda-expr? _L15345_)
                         '#f)
                     (let ((_g1536015390_
                            (lambda (_g1536115387_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1536115387_))))
                       (let ((_g1535915485_
                              (lambda (_g1536115393_)
                                (if (gx#stx-pair? _g1536115393_)
                                    (let ((_e1536515395_
                                           (gx#stx-e _g1536115393_)))
                                      (let ((_hd1536615398_
                                             (##car _e1536515395_))
                                            (_tl1536715400_
                                             (##cdr _e1536515395_)))
                                        (if (gx#stx-pair? _tl1536715400_)
                                            (let ((_e1536815403_
                                                   (gx#stx-e _tl1536715400_)))
                                              (let ((_hd1536915406_
                                                     (##car _e1536815403_))
                                                    (_tl1537015408_
                                                     (##cdr _e1536815403_)))
                                                (if (gx#stx-pair?
                                                     _hd1536915406_)
                                                    (let ((_e1537115411_
                                                           (gx#stx-e
                                                            _hd1536915406_)))
                                                      (let ((_hd1537215414_
                                                             (##car _e1537115411_))
                                                            (_tl1537315416_
                                                             (##cdr _e1537115411_)))
                                                        (if (gx#stx-pair?
                                                             _hd1537215414_)
                                                            (let ((_e1537415419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1537215414_)))
                      (let ((_hd1537515422_ (##car _e1537415419_))
                            (_tl1537615424_ (##cdr _e1537415419_)))
                        (if (gx#stx-pair? _hd1537515422_)
                            (let ((_e1537715427_ (gx#stx-e _hd1537515422_)))
                              (let ((_hd1537815430_ (##car _e1537715427_))
                                    (_tl1537915432_ (##cdr _e1537715427_)))
                                (if (gx#stx-null? _tl1537915432_)
                                    (if (gx#stx-pair? _tl1537615424_)
                                        (let ((_e1538015435_
                                               (gx#stx-e _tl1537615424_)))
                                          (let ((_hd1538115438_
                                                 (##car _e1538015435_))
                                                (_tl1538215440_
                                                 (##cdr _e1538015435_)))
                                            (if (gx#stx-null? _tl1538215440_)
                                                (if (gx#stx-null?
                                                     _tl1537315416_)
                                                    (if (gx#stx-pair?
                                                         _tl1537015408_)
                                                        (let ((_e1538315443_
                                                               (gx#stx-e
                                                                _tl1537015408_)))
                                                          (let ((_hd1538415446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1538315443_))
                        (_tl1538515448_ (##cdr _e1538315443_)))
                    (if (gx#stx-null? _tl1538515448_)
                        ((lambda (_L15451_ _L15452_ _L15453_)
                           (let ((_lambda-id15477_
                                  (make-symbol
                                   (gx#stx-e _L15346_)
                                   '"__"
                                   (gx#stx-e _L15453_)
                                   (gensym '__))))
                             (let ((_lambda-id15479_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15477_
                                     (gx#stx-source _stx15062_))))
                               (let ((_g19162_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15479_)))
                                 (let ((_new-case-lambda-expr15482_
                                        (gxc#apply-expression-subst
                                         _L15451_
                                         _L15453_
                                         _lambda-id15479_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15346_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15479_))
                                       (_lp15209_
                                        (cons (_bind-e__opt-lambda15621__1910419105_
                                               _L15346_
                                               _new-case-lambda-expr15482_
                                               '#f)
                                              _rest15234_)
                                        (cons (_bind-e__0__1910619107_
                                               _lambda-id15479_
                                               _L15452_)
                                              _lift115212_)
                                        _lift215213_
                                        _bind15214_))))))))
                         _hd1538415446_
                         _hd1538115438_
                         _hd1537815430_)
                        (_g1536015390_ _g1536115393_))))
                (_g1536015390_ _g1536115393_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1536015390_
                                                     _g1536115393_))
                                                (_g1536015390_
                                                 _g1536115393_))))
                                        (_g1536015390_ _g1536115393_))
                                    (_g1536015390_ _g1536115393_))))
                            (_g1536015390_ _g1536115393_))))
                    (_g1536015390_ _g1536115393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1536015390_
                                                     _g1536115393_))))
                                            (_g1536015390_ _g1536115393_))))
                                    (_g1536015390_ _g1536115393_)))))
                         (_g1535915485_ _L15345_)))
                     (_g1523815316_ _g1524015319_)))
               _hd1526115340_
               _hd1525815332_)
              (_g1523815316_ _g1524015319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1523815316_ _g1524015319_))
                                          (_g1523815316_ _g1524015319_))))
                                  (_g1523815316_ _g1524015319_))))
                          (_g1523815316_ _g1524015319_)))))
               (let ((_g1523615607_
                      (lambda (_g1524015491_)
                        (if (gx#stx-pair? _g1524015491_)
                            (let ((_e1524315493_ (gx#stx-e _g1524015491_)))
                              (let ((_hd1524415496_ (##car _e1524315493_))
                                    (_tl1524515498_ (##cdr _e1524315493_)))
                                (if (gx#stx-pair? _hd1524415496_)
                                    (let ((_e1524615501_
                                           (gx#stx-e _hd1524415496_)))
                                      (let ((_hd1524715504_
                                             (##car _e1524615501_))
                                            (_tl1524815506_
                                             (##cdr _e1524615501_)))
                                        (if (gx#stx-null? _tl1524815506_)
                                            (if (gx#stx-pair? _tl1524515498_)
                                                (let ((_e1524915509_
                                                       (gx#stx-e
                                                        _tl1524515498_)))
                                                  (let ((_hd1525015512_
                                                         (##car _e1524915509_))
                                                        (_tl1525115514_
                                                         (##cdr _e1524915509_)))
                                                    (if (gx#stx-null?
                                                         _tl1525115514_)
                                                        ((lambda (_L15517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15518_)
                   (if (if (gx#identifier? _L15518_)
                           (gxc#case-lambda-expr? _L15517_)
                           '#f)
                       (let ((_g1553315547_
                              (lambda (_g1553415544_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1553415544_))))
                         (let ((_g1553215582_
                                (lambda (_g1553415550_)
                                  (if (gx#stx-pair? _g1553415550_)
                                      (let ((_e1554015552_
                                             (gx#stx-e _g1553415550_)))
                                        (let ((_hd1554115555_
                                               (##car _e1554015552_))
                                              (_tl1554215557_
                                               (##cdr _e1554015552_)))
                                          ((lambda (_L15560_)
                                             (let ((_g19163_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16048
                                                     _stx15062_
                                                     _L15518_
                                                     _L15560_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19164_
                                                        (values-count
                                                         _g19163_)))
                                                   (if (not (fx= _g19164_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19164_)))
                                                 (let ((_ids15570_
                                                        (values-ref
                                                         _g19163_
                                                         0))
                                                       (_impls15571_
                                                        (values-ref
                                                         _g19163_
                                                         1))
                                                       (_clauses15572_
                                                        (values-ref
                                                         _g19163_
                                                         2)))
                                                   (let ((_g19165_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15570_)))
                                                     (let ((_xbind15575_
                                                            (map _bind-e15064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15570_
                         _impls15571_)))
               (let ((_expr*15577_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15572_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15579_
                        (_bind-e__opt-lambda15621__1910419105_
                         _L15518_
                         _expr*15577_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15518_)
                        '" => "
                        (map gxc#identifier-symbol _ids15570_))
                       (_lp15209_
                        _rest15234_
                        _lift115212_
                        (foldl1 cons _lift215213_ _xbind15575_)
                        (cons _bind*15579_ _bind15214_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1554215557_)))
                                      (_g1553315547_ _g1553415550_)))))
                           (let ((_g1553115604_
                                  (lambda (_g1553415585_)
                                    (if (gx#stx-pair? _g1553415585_)
                                        (let ((_e1553615587_
                                               (gx#stx-e _g1553415585_)))
                                          (let ((_hd1553715590_
                                                 (##car _e1553615587_))
                                                (_tl1553815592_
                                                 (##cdr _e1553615587_)))
                                            ((lambda (_L15595_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15595_)
                                                   (_lp15209_
                                                    _rest15234_
                                                    _lift115212_
                                                    _lift215213_
                                                    (cons (_bind-e__opt-lambda15621__1910419105_
                                                           _L15518_
                                                           _L15517_
                                                           '#f)
                                                          _bind15214_))
                                                   (_g1553215582_
                                                    _g1553415585_)))
                                             _tl1553815592_)))
                                        (_g1553215582_ _g1553415585_)))))
                             (_g1553115604_ _L15517_))))
                       (_g1523715488_ _g1524015491_)))
                 _hd1525015512_
                 _hd1524715504_)
                (_g1523715488_ _g1524015491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1523715488_ _g1524015491_))
                                            (_g1523715488_ _g1524015491_))))
                                    (_g1523715488_ _g1524015491_))))
                            (_g1523715488_ _g1524015491_)))))
                 (_g1523615607_ _hd15235_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1521515223_)
                                              (let ((_hd1522015613_
                                                     (##car _rest1521515223_))
                                                    (_tl1522115615_
                                                     (##cdr _rest1521515223_)))
                                                (let ((_hd15618_
                                                       _hd1522015613_))
                                                  (let ((_rest15620_
                                                         _tl1522115615_))
                                                    (_K1521915610_
                                                     _rest15620_
                                                     _hd15618_))))
                                              (_else1521715231_)))))))))
                        _lp15209_)
                      _rest15207_
                      '()
                      '()
                      '()))))
              (let ((_g1506815094_
                     (lambda (_g1506915091_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1506915091_))))
                (let ((_g1506715101_
                       (lambda (_g1506915097_)
                         ((lambda () (gxc#xform-let-values% _stx15062_))))))
                  (let ((_g1506615204_
                         (lambda (_g1506915104_)
                           (if (gx#stx-pair? _g1506915104_)
                               (let ((_e1507215106_ (gx#stx-e _g1506915104_)))
                                 (let ((_hd1507315109_ (##car _e1507215106_))
                                       (_tl1507415111_ (##cdr _e1507215106_)))
                                   (if (gx#stx-pair? _tl1507415111_)
                                       (let ((_e1507515114_
                                              (gx#stx-e _tl1507415111_)))
                                         (let ((_hd1507615117_
                                                (##car _e1507515114_))
                                               (_tl1507715119_
                                                (##cdr _e1507515114_)))
                                           (if (gx#stx-pair/null?
                                                _hd1507615117_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1507615117_)
                                                         '0)
                                                   (let ((_g19158_
                                                          (gx#syntax-split-splice
                                                           _hd1507615117_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19159_
                                                              (values-count
                                                               _g19158_)))
                                                         (if (not (fx= _g19159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19159_)))
               (let ((_target1507815122_ (values-ref _g19158_ 0))
                     (_tl1508015124_ (values-ref _g19158_ 1)))
                 (if (gx#stx-null? _tl1508015124_)
                     (letrec ((_loop1508115127_
                               (lambda (_hd1507915130_ _bind1508515132_)
                                 (if (gx#stx-pair? _hd1507915130_)
                                     (let ((_e1508215135_
                                            (gx#stx-e _hd1507915130_)))
                                       (let ((_lp-hd1508315138_
                                              (##car _e1508215135_))
                                             (_lp-tl1508415140_
                                              (##cdr _e1508215135_)))
                                         (_loop1508115127_
                                          _lp-tl1508415140_
                                          (cons _lp-hd1508315138_
                                                _bind1508515132_))))
                                     (let ((_bind1508615143_
                                            (reverse _bind1508515132_)))
                                       (if (gx#stx-pair? _tl1507715119_)
                                           (let ((_e1508715146_
                                                  (gx#stx-e _tl1507715119_)))
                                             (let ((_hd1508815149_
                                                    (##car _e1508715146_))
                                                   (_tl1508915151_
                                                    (##cdr _e1508715146_)))
                                               (if (gx#stx-null?
                                                    _tl1508915151_)
                                                   ((lambda (_L15154_ _L15155_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1517515178_ _g1517615180_)
                                      (cons _g1517515178_ _g1517615180_))
                                    '()
                                    _L15155_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_g19160_
                            (_compile-bindings15065_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1518315186_ _g1518415188_)
                                         (cons _g1518315186_ _g1518415188_))
                                       '()
                                       _L15155_)))))
                       (begin
                         (let ((_g19161_ (values-count _g19160_)))
                           (if (not (fx= _g19161_ 3))
                               (error "Context expects 3 values" _g19161_)))
                         (let ((_lift115191_ (values-ref _g19160_ 0))
                               (_lift215192_ (values-ref _g19160_ 1))
                               (_hd15193_ (values-ref _g19160_ 2)))
                           (let ((_body15195_ (gxc#compile-e _L15154_)))
                             (let ((_expr15197_
                                    (gxc#xform-wrap-source
                                     (cons '%#let-values
                                           (cons _hd15193_
                                                 (cons _body15195_ '())))
                                     _stx15062_)))
                               (let ((_expr15199_
                                      (if (null? _lift215192_)
                                          _expr15197_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift215192_
                                                       (cons _expr15197_ '())))
                                           _stx15062_))))
                                 (let ((_expr15201_
                                        (if (null? _lift115191_)
                                            _expr15199_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift115191_
                                                         (cons _expr15199_
                                                               '())))
                                             _stx15062_))))
                                   (let () _expr15201_)))))))))
                   gx#current-expander-context
                   (let ((__obj19114 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19114)
                       __obj19114)))
                  (_g1506715101_ _g1506915104_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1508815149_
                                                    _bind1508615143_)
                                                   (_g1506715101_
                                                    _g1506915104_))))
                                           (_g1506715101_ _g1506915104_)))))))
                       (_loop1508115127_ _target1507815122_ '()))
                     (_g1506715101_ _g1506915104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1506715101_
                                                    _g1506915104_))
                                               (_g1506715101_ _g1506915104_))))
                                       (_g1506715101_ _g1506915104_))))
                               (_g1506715101_ _g1506915104_)))))
                    (_g1506615204_ _stx15062_))))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx14494_)
      (let ((_bind-e__opt-lambda15044__1910919110_
             (lambda (_id15046_ _expr15047_ _compile?15048_)
               (cons (cons _id15046_ '())
                     (cons (if _compile?15048_
                               (gxc#compile-e _expr15047_)
                               _expr15047_)
                           '())))))
        (let ((_bind-e__0__1911119112_
               (lambda (_id15053_ _expr15054_)
                 (let ((_compile?15056_ '#t))
                   (_bind-e__opt-lambda15044__1910919110_
                    _id15053_
                    _expr15054_
                    _compile?15056_)))))
          (let ((_bind-e14496_
                 (lambda _g19175_
                   (let ((_g19174_ (length _g19175_)))
                     (cond ((fx= _g19174_ 2)
                            (apply _bind-e__0__1911119112_ _g19175_))
                           ((fx= _g19174_ 3)
                            (apply _bind-e__opt-lambda15044__1910919110_
                                   _g19175_))
                           (else
                            (error "No clause matching arguments"
                                   _g19175_)))))))
            (let ((_compile-bindings14497_
                   (lambda (_rest14632_)
                     ((letrec ((_lp14634_
                                (lambda (_rest14636_ _bind14637_)
                                  (let ((_rest1463814646_ _rest14636_))
                                    (let ((_E1464114650_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1463814646_))))
                                      (let ((_else1464014654_
                                             (lambda ()
                                               (reverse _bind14637_))))
                                        (let ((_K1464215033_
                                               (lambda (_rest14657_ _hd14658_)
                                                 (let ((_g1466214698_
                                                        (lambda (_g1466314695_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1466314695_))))
                                                   (let ((_g1466114739_
                                                          (lambda (_g1466314701_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1466314701_)
                        (let ((_e1468814703_ (gx#stx-e _g1466314701_)))
                          (let ((_hd1468914706_ (##car _e1468814703_))
                                (_tl1469014708_ (##cdr _e1468814703_)))
                            (if (gx#stx-pair? _tl1469014708_)
                                (let ((_e1469114711_
                                       (gx#stx-e _tl1469014708_)))
                                  (let ((_hd1469214714_ (##car _e1469114711_))
                                        (_tl1469314716_ (##cdr _e1469114711_)))
                                    (if (gx#stx-null? _tl1469314716_)
                                        ((lambda (_L14719_ _L14720_)
                                           (_lp14634_
                                            _rest14657_
                                            (cons (cons _L14720_
                                                        (cons (gxc#compile-e
                                                               _L14719_)
                                                              '()))
                                                  _bind14637_)))
                                         _hd1469214714_
                                         _hd1468914706_)
                                        (_g1466214698_ _g1466314701_))))
                                (_g1466214698_ _g1466314701_))))
                        (_g1466214698_ _g1466314701_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1466014911_
                                                            (lambda (_g1466314742_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1466314742_)
                          (let ((_e1467714744_ (gx#stx-e _g1466314742_)))
                            (let ((_hd1467814747_ (##car _e1467714744_))
                                  (_tl1467914749_ (##cdr _e1467714744_)))
                              (if (gx#stx-pair? _hd1467814747_)
                                  (let ((_e1468014752_
                                         (gx#stx-e _hd1467814747_)))
                                    (let ((_hd1468114755_
                                           (##car _e1468014752_))
                                          (_tl1468214757_
                                           (##cdr _e1468014752_)))
                                      (if (gx#stx-null? _tl1468214757_)
                                          (if (gx#stx-pair? _tl1467914749_)
                                              (let ((_e1468314760_
                                                     (gx#stx-e
                                                      _tl1467914749_)))
                                                (let ((_hd1468414763_
                                                       (##car _e1468314760_))
                                                      (_tl1468514765_
                                                       (##cdr _e1468314760_)))
                                                  (if (gx#stx-null?
                                                       _tl1468514765_)
                                                      ((lambda (_L14768_
                                                                _L14769_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14769_)
                         (gxc#opt-lambda-expr? _L14768_)
                         '#f)
                     (let ((_g1478314813_
                            (lambda (_g1478414810_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1478414810_))))
                       (let ((_g1478214908_
                              (lambda (_g1478414816_)
                                (if (gx#stx-pair? _g1478414816_)
                                    (let ((_e1478814818_
                                           (gx#stx-e _g1478414816_)))
                                      (let ((_hd1478914821_
                                             (##car _e1478814818_))
                                            (_tl1479014823_
                                             (##cdr _e1478814818_)))
                                        (if (gx#stx-pair? _tl1479014823_)
                                            (let ((_e1479114826_
                                                   (gx#stx-e _tl1479014823_)))
                                              (let ((_hd1479214829_
                                                     (##car _e1479114826_))
                                                    (_tl1479314831_
                                                     (##cdr _e1479114826_)))
                                                (if (gx#stx-pair?
                                                     _hd1479214829_)
                                                    (let ((_e1479414834_
                                                           (gx#stx-e
                                                            _hd1479214829_)))
                                                      (let ((_hd1479514837_
                                                             (##car _e1479414834_))
                                                            (_tl1479614839_
                                                             (##cdr _e1479414834_)))
                                                        (if (gx#stx-pair?
                                                             _hd1479514837_)
                                                            (let ((_e1479714842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1479514837_)))
                      (let ((_hd1479814845_ (##car _e1479714842_))
                            (_tl1479914847_ (##cdr _e1479714842_)))
                        (if (gx#stx-pair? _hd1479814845_)
                            (let ((_e1480014850_ (gx#stx-e _hd1479814845_)))
                              (let ((_hd1480114853_ (##car _e1480014850_))
                                    (_tl1480214855_ (##cdr _e1480014850_)))
                                (if (gx#stx-null? _tl1480214855_)
                                    (if (gx#stx-pair? _tl1479914847_)
                                        (let ((_e1480314858_
                                               (gx#stx-e _tl1479914847_)))
                                          (let ((_hd1480414861_
                                                 (##car _e1480314858_))
                                                (_tl1480514863_
                                                 (##cdr _e1480314858_)))
                                            (if (gx#stx-null? _tl1480514863_)
                                                (if (gx#stx-null?
                                                     _tl1479614839_)
                                                    (if (gx#stx-pair?
                                                         _tl1479314831_)
                                                        (let ((_e1480614866_
                                                               (gx#stx-e
                                                                _tl1479314831_)))
                                                          (let ((_hd1480714869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1480614866_))
                        (_tl1480814871_ (##cdr _e1480614866_)))
                    (if (gx#stx-null? _tl1480814871_)
                        ((lambda (_L14874_ _L14875_ _L14876_)
                           (let ((_lambda-id14900_
                                  (make-symbol
                                   (gx#stx-e _L14769_)
                                   '"__"
                                   (gx#stx-e _L14876_)
                                   (gensym '__))))
                             (let ((_lambda-id14902_
                                    (gx#core-quote-syntax__1
                                     _lambda-id14900_
                                     (gx#stx-source _stx14494_))))
                               (let ((_g19170_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id14902_)))
                                 (let ((_new-case-lambda-expr14905_
                                        (gxc#apply-expression-subst
                                         _L14874_
                                         _L14876_
                                         _lambda-id14902_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L14769_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id14902_))
                                       (_lp14634_
                                        (cons (_bind-e__opt-lambda15044__1910919110_
                                               _L14769_
                                               _new-case-lambda-expr14905_
                                               '#f)
                                              _rest14657_)
                                        (cons (_bind-e__0__1911119112_
                                               _lambda-id14902_
                                               _L14875_)
                                              _bind14637_)))))))))
                         _hd1480714869_
                         _hd1480414861_
                         _hd1480114853_)
                        (_g1478314813_ _g1478414816_))))
                (_g1478314813_ _g1478414816_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1478314813_
                                                     _g1478414816_))
                                                (_g1478314813_
                                                 _g1478414816_))))
                                        (_g1478314813_ _g1478414816_))
                                    (_g1478314813_ _g1478414816_))))
                            (_g1478314813_ _g1478414816_))))
                    (_g1478314813_ _g1478414816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1478314813_
                                                     _g1478414816_))))
                                            (_g1478314813_ _g1478414816_))))
                                    (_g1478314813_ _g1478414816_)))))
                         (_g1478214908_ _L14768_)))
                     (_g1466114739_ _g1466314742_)))
               _hd1468414763_
               _hd1468114755_)
              (_g1466114739_ _g1466314742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1466114739_ _g1466314742_))
                                          (_g1466114739_ _g1466314742_))))
                                  (_g1466114739_ _g1466314742_))))
                          (_g1466114739_ _g1466314742_)))))
               (let ((_g1465915030_
                      (lambda (_g1466314914_)
                        (if (gx#stx-pair? _g1466314914_)
                            (let ((_e1466614916_ (gx#stx-e _g1466314914_)))
                              (let ((_hd1466714919_ (##car _e1466614916_))
                                    (_tl1466814921_ (##cdr _e1466614916_)))
                                (if (gx#stx-pair? _hd1466714919_)
                                    (let ((_e1466914924_
                                           (gx#stx-e _hd1466714919_)))
                                      (let ((_hd1467014927_
                                             (##car _e1466914924_))
                                            (_tl1467114929_
                                             (##cdr _e1466914924_)))
                                        (if (gx#stx-null? _tl1467114929_)
                                            (if (gx#stx-pair? _tl1466814921_)
                                                (let ((_e1467214932_
                                                       (gx#stx-e
                                                        _tl1466814921_)))
                                                  (let ((_hd1467314935_
                                                         (##car _e1467214932_))
                                                        (_tl1467414937_
                                                         (##cdr _e1467214932_)))
                                                    (if (gx#stx-null?
                                                         _tl1467414937_)
                                                        ((lambda (_L14940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14941_)
                   (if (if (gx#identifier? _L14941_)
                           (gxc#case-lambda-expr? _L14940_)
                           '#f)
                       (let ((_g1495614970_
                              (lambda (_g1495714967_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1495714967_))))
                         (let ((_g1495515005_
                                (lambda (_g1495714973_)
                                  (if (gx#stx-pair? _g1495714973_)
                                      (let ((_e1496314975_
                                             (gx#stx-e _g1495714973_)))
                                        (let ((_hd1496414978_
                                               (##car _e1496314975_))
                                              (_tl1496514980_
                                               (##cdr _e1496314975_)))
                                          ((lambda (_L14983_)
                                             (let ((_g19171_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16048
                                                     _stx14494_
                                                     _L14941_
                                                     _L14983_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19172_
                                                        (values-count
                                                         _g19171_)))
                                                   (if (not (fx= _g19172_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19172_)))
                                                 (let ((_ids14993_
                                                        (values-ref
                                                         _g19171_
                                                         0))
                                                       (_impls14994_
                                                        (values-ref
                                                         _g19171_
                                                         1))
                                                       (_clauses14995_
                                                        (values-ref
                                                         _g19171_
                                                         2)))
                                                   (let ((_g19173_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids14993_)))
                                                     (let ((_xbind14998_
                                                            (map _bind-e14496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids14993_
                         _impls14994_)))
               (let ((_expr*15000_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses14995_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15002_
                        (_bind-e__opt-lambda15044__1910919110_
                         _L14941_
                         _expr*15000_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L14941_)
                        '" => "
                        (map gxc#identifier-symbol _ids14993_))
                       (_lp14634_
                        _rest14657_
                        (cons _bind*15002_
                              (foldl1 cons
                                      _bind14637_
                                      _xbind14998_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1496514980_)))
                                      (_g1495614970_ _g1495714973_)))))
                           (let ((_g1495415027_
                                  (lambda (_g1495715008_)
                                    (if (gx#stx-pair? _g1495715008_)
                                        (let ((_e1495915010_
                                               (gx#stx-e _g1495715008_)))
                                          (let ((_hd1496015013_
                                                 (##car _e1495915010_))
                                                (_tl1496115015_
                                                 (##cdr _e1495915010_)))
                                            ((lambda (_L15018_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15018_)
                                                   (_lp14634_
                                                    _rest14657_
                                                    (cons (_bind-e__opt-lambda15044__1910919110_
                                                           _L14941_
                                                           _L14940_
                                                           '#f)
                                                          _bind14637_))
                                                   (_g1495515005_
                                                    _g1495715008_)))
                                             _tl1496115015_)))
                                        (_g1495515005_ _g1495715008_)))))
                             (_g1495415027_ _L14940_))))
                       (_g1466014911_ _g1466314914_)))
                 _hd1467314935_
                 _hd1467014927_)
                (_g1466014911_ _g1466314914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1466014911_ _g1466314914_))
                                            (_g1466014911_ _g1466314914_))))
                                    (_g1466014911_ _g1466314914_))))
                            (_g1466014911_ _g1466314914_)))))
                 (_g1465915030_ _hd14658_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1463814646_)
                                              (let ((_hd1464315036_
                                                     (##car _rest1463814646_))
                                                    (_tl1464415038_
                                                     (##cdr _rest1463814646_)))
                                                (let ((_hd15041_
                                                       _hd1464315036_))
                                                  (let ((_rest15043_
                                                         _tl1464415038_))
                                                    (_K1464215033_
                                                     _rest15043_
                                                     _hd15041_))))
                                              (_else1464014654_)))))))))
                        _lp14634_)
                      _rest14632_
                      '()))))
              (let ((_g1450014527_
                     (lambda (_g1450114524_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1450114524_))))
                (let ((_g1449914534_
                       (lambda (_g1450114530_)
                         ((lambda () (gxc#xform-let-values% _stx14494_))))))
                  (let ((_g1449814629_
                         (lambda (_g1450114537_)
                           (if (gx#stx-pair? _g1450114537_)
                               (let ((_e1450514539_ (gx#stx-e _g1450114537_)))
                                 (let ((_hd1450614542_ (##car _e1450514539_))
                                       (_tl1450714544_ (##cdr _e1450514539_)))
                                   (if (gx#stx-pair? _tl1450714544_)
                                       (let ((_e1450814547_
                                              (gx#stx-e _tl1450714544_)))
                                         (let ((_hd1450914550_
                                                (##car _e1450814547_))
                                               (_tl1451014552_
                                                (##cdr _e1450814547_)))
                                           (if (gx#stx-pair/null?
                                                _hd1450914550_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1450914550_)
                                                         '0)
                                                   (let ((_g19168_
                                                          (gx#syntax-split-splice
                                                           _hd1450914550_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19169_
                                                              (values-count
                                                               _g19168_)))
                                                         (if (not (fx= _g19169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19169_)))
               (let ((_target1451114555_ (values-ref _g19168_ 0))
                     (_tl1451314557_ (values-ref _g19168_ 1)))
                 (if (gx#stx-null? _tl1451314557_)
                     (letrec ((_loop1451414560_
                               (lambda (_hd1451214563_ _bind1451814565_)
                                 (if (gx#stx-pair? _hd1451214563_)
                                     (let ((_e1451514568_
                                            (gx#stx-e _hd1451214563_)))
                                       (let ((_lp-hd1451614571_
                                              (##car _e1451514568_))
                                             (_lp-tl1451714573_
                                              (##cdr _e1451514568_)))
                                         (_loop1451414560_
                                          _lp-tl1451714573_
                                          (cons _lp-hd1451614571_
                                                _bind1451814565_))))
                                     (let ((_bind1451914576_
                                            (reverse _bind1451814565_)))
                                       (if (gx#stx-pair? _tl1451014552_)
                                           (let ((_e1452014579_
                                                  (gx#stx-e _tl1451014552_)))
                                             (let ((_hd1452114582_
                                                    (##car _e1452014579_))
                                                   (_tl1452214584_
                                                    (##cdr _e1452014579_)))
                                               (if (gx#stx-null?
                                                    _tl1452214584_)
                                                   ((lambda (_L14587_
                                                             _L14588_
                                                             _L14589_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1461014613_ _g1461114615_)
                                      (cons _g1461014613_ _g1461114615_))
                                    '()
                                    _L14588_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_hd14626_
                            (_compile-bindings14497_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1461814621_ _g1461914623_)
                                         (cons _g1461814621_ _g1461914623_))
                                       '()
                                       _L14588_))))
                           (_body14627_ (gxc#compile-e _L14587_)))
                       (gxc#xform-wrap-source
                        (cons _L14589_ (cons _hd14626_ (cons _body14627_ '())))
                        _stx14494_)))
                   gx#current-expander-context
                   (let ((__obj19115 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19115)
                       __obj19115)))
                  (_g1449914534_ _g1450114537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1452114582_
                                                    _bind1451914576_
                                                    _hd1450614542_)
                                                   (_g1449914534_
                                                    _g1450114537_))))
                                           (_g1449914534_ _g1450114537_)))))))
                       (_loop1451414560_ _target1451114555_ '()))
                     (_g1449914534_ _g1450114537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1449914534_
                                                    _g1450114537_))
                                               (_g1449914534_ _g1450114537_))))
                                       (_g1449914534_ _g1450114537_))))
                               (_g1449914534_ _g1450114537_)))))
                    (_g1449814629_ _stx14494_))))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind14415_)
      (let ((_g1441814435_
             (lambda (_g1441914432_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1441914432_))))
        (let ((_g1441714442_ (lambda (_g1441914438_) ((lambda () '#f)))))
          (let ((_g1441614491_
                 (lambda (_g1441914445_)
                   (if (gx#stx-pair? _g1441914445_)
                       (let ((_e1442214447_ (gx#stx-e _g1441914445_)))
                         (let ((_hd1442314450_ (##car _e1442214447_))
                               (_tl1442414452_ (##cdr _e1442214447_)))
                           (if (gx#stx-pair? _hd1442314450_)
                               (let ((_e1442514455_ (gx#stx-e _hd1442314450_)))
                                 (let ((_hd1442614458_ (##car _e1442514455_))
                                       (_tl1442714460_ (##cdr _e1442514455_)))
                                   (if (gx#stx-null? _tl1442714460_)
                                       (if (gx#stx-pair? _tl1442414452_)
                                           (let ((_e1442814463_
                                                  (gx#stx-e _tl1442414452_)))
                                             (let ((_hd1442914466_
                                                    (##car _e1442814463_))
                                                   (_tl1443014468_
                                                    (##cdr _e1442814463_)))
                                               (if (gx#stx-null?
                                                    _tl1443014468_)
                                                   ((lambda (_L14471_ _L14472_)
                                                      (if (gx#identifier?
                                                           _L14472_)
                                                          (let ((_$e14488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#case-lambda-expr? _L14471_)))
                    (if _$e14488_ _$e14488_ (gxc#opt-lambda-expr? _L14471_)))
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1442914466_
                                                    _hd1442614458_)
                                                   (_g1441714442_
                                                    _g1441914445_))))
                                           (_g1441714442_ _g1441914445_))
                                       (_g1441714442_ _g1441914445_))))
                               (_g1441714442_ _g1441914445_))))
                       (_g1441714442_ _g1441914445_)))))
            (_g1441614491_ _bind14415_))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx14353_ _id14354_ _new-id14355_)
      (let ((_g1435814371_
             (lambda (_g1435914368_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1435914368_))))
        (let ((_g1435714378_
               (lambda (_g1435914374_) ((lambda () _stx14353_)))))
          (let ((_g1435614412_
                 (lambda (_g1435914381_)
                   (if (gx#stx-pair? _g1435914381_)
                       (let ((_e1436114383_ (gx#stx-e _g1435914381_)))
                         (let ((_hd1436214386_ (##car _e1436114383_))
                               (_tl1436314388_ (##cdr _e1436114383_)))
                           (if (gx#stx-pair? _tl1436314388_)
                               (let ((_e1436414391_ (gx#stx-e _tl1436314388_)))
                                 (let ((_hd1436514394_ (##car _e1436414391_))
                                       (_tl1436614396_ (##cdr _e1436414391_)))
                                   (if (gx#stx-null? _tl1436614396_)
                                       ((lambda (_L14399_)
                                          (if (gx#free-identifier=?
                                               _L14399_
                                               _id14354_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id14355_ '()))
                                               _stx14353_)
                                              (_g1435714378_ _g1435914381_)))
                                        _hd1436514394_)
                                       (_g1435714378_ _g1435914381_))))
                               (_g1435714378_ _g1435914381_))))
                       (_g1435714378_ _g1435914381_)))))
            (_g1435614412_ _stx14353_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx14209_)
      (let ((_g1421214243_
             (lambda (_g1421314240_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1421314240_))))
        (let ((_g1421114288_
               (lambda (_g1421314246_)
                 (if (gx#stx-pair? _g1421314246_)
                     (let ((_e1423014248_ (gx#stx-e _g1421314246_)))
                       (let ((_hd1423114251_ (##car _e1423014248_))
                             (_tl1423214253_ (##cdr _e1423014248_)))
                         (if (gx#stx-pair? _tl1423214253_)
                             (let ((_e1423314256_ (gx#stx-e _tl1423214253_)))
                               (let ((_hd1423414259_ (##car _e1423314256_))
                                     (_tl1423514261_ (##cdr _e1423314256_)))
                                 (if (gx#stx-pair? _tl1423514261_)
                                     (let ((_e1423614264_
                                            (gx#stx-e _tl1423514261_)))
                                       (let ((_hd1423714267_
                                              (##car _e1423614264_))
                                             (_tl1423814269_
                                              (##cdr _e1423614264_)))
                                         (if (gx#stx-null? _tl1423814269_)
                                             ((lambda (_L14272_ _L14273_)
                                                (gxc#compile-e _L14272_))
                                              _hd1423714267_
                                              _hd1423414259_)
                                             (_g1421214243_ _g1421314246_))))
                                     (_g1421214243_ _g1421314246_))))
                             (_g1421214243_ _g1421314246_))))
                     (_g1421214243_ _g1421314246_)))))
          (let ((_g1421014350_
                 (lambda (_g1421314291_)
                   (if (gx#stx-pair? _g1421314291_)
                       (let ((_e1421614293_ (gx#stx-e _g1421314291_)))
                         (let ((_hd1421714296_ (##car _e1421614293_))
                               (_tl1421814298_ (##cdr _e1421614293_)))
                           (if (gx#stx-pair? _tl1421814298_)
                               (let ((_e1421914301_ (gx#stx-e _tl1421814298_)))
                                 (let ((_hd1422014304_ (##car _e1421914301_))
                                       (_tl1422114306_ (##cdr _e1421914301_)))
                                   (if (gx#stx-pair? _hd1422014304_)
                                       (let ((_e1422214309_
                                              (gx#stx-e _hd1422014304_)))
                                         (let ((_hd1422314312_
                                                (##car _e1422214309_))
                                               (_tl1422414314_
                                                (##cdr _e1422214309_)))
                                           (if (gx#stx-null? _tl1422414314_)
                                               (if (gx#stx-pair?
                                                    _tl1422114306_)
                                                   (let ((_e1422514317_
                                                          (gx#stx-e
                                                           _tl1422114306_)))
                                                     (let ((_hd1422614320_
                                                            (##car _e1422514317_))
                                                           (_tl1422714322_
                                                            (##cdr _e1422514317_)))
                                                       (if (gx#stx-null?
                                                            _tl1422714322_)
                                                           ((lambda (_L14325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L14326_)
                      (if (gx#identifier? _L14326_)
                          (let ((_sym14342_
                                 (gxc#generate-runtime-binding-id _L14326_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym14342_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym14342_)
                                  (let ((_type1434314345_
                                         (gxc#apply-basic-expression-type
                                          _L14325_)))
                                    (if _type1434314345_
                                        (let ((_type14348_ _type1434314345_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym14342_
                                           _type14348_))
                                        '#f)))
                              (gxc#compile-e _L14325_)))
                          (_g1421114288_ _g1421314291_)))
                    _hd1422614320_
                    _hd1422314312_)
                   (_g1421114288_ _g1421314291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1421114288_
                                                    _g1421314291_))
                                               (_g1421114288_ _g1421314291_))))
                                       (_g1421114288_ _g1421314291_))))
                               (_g1421114288_ _g1421314291_))))
                       (_g1421114288_ _g1421314291_)))))
            (_g1421014350_ _stx14209_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx13994_)
      (let ((_collect-e13996_
             (lambda (_hd14153_ _expr14154_)
               (let ((_g1415714167_
                      (lambda (_g1415814164_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1415814164_))))
                 (let ((_g1415614174_
                        (lambda (_g1415814170_) ((lambda () '#!void)))))
                   (let ((_g1415514206_
                          (lambda (_g1415814177_)
                            (if (gx#stx-pair? _g1415814177_)
                                (let ((_e1416014179_ (gx#stx-e _g1415814177_)))
                                  (let ((_hd1416114182_ (##car _e1416014179_))
                                        (_tl1416214184_ (##cdr _e1416014179_)))
                                    (if (gx#stx-null? _tl1416214184_)
                                        ((lambda (_L14187_)
                                           (if (gx#identifier? _L14187_)
                                               (let ((_sym14198_
                                                      (gxc#generate-runtime-binding-id
                                                       _L14187_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym14198_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym14198_)
                                                     (let ((_type1419914201_
                                                            (gxc#apply-basic-expression-type
                                                             _expr14154_)))
                                                       (if _type1419914201_
                                                           (let ((_type14204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1419914201_))
                     (gxc#optimizer-declare-type!__opt-lambda18899
                      _sym14198_
                      _type14204_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1415614174_ _g1415814177_)))
                                         _hd1416114182_)
                                        (_g1415614174_ _g1415814177_))))
                                (_g1415614174_ _g1415814177_)))))
                     (_g1415514206_ _hd14153_)))))))
        (let ((_g1399814033_
               (lambda (_g1399914030_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1399914030_))))
          (let ((_g1399714150_
                 (lambda (_g1399914036_)
                   (if (gx#stx-pair? _g1399914036_)
                       (let ((_e1400314038_ (gx#stx-e _g1399914036_)))
                         (let ((_hd1400414041_ (##car _e1400314038_))
                               (_tl1400514043_ (##cdr _e1400314038_)))
                           (if (gx#stx-pair? _tl1400514043_)
                               (let ((_e1400614046_ (gx#stx-e _tl1400514043_)))
                                 (let ((_hd1400714049_ (##car _e1400614046_))
                                       (_tl1400814051_ (##cdr _e1400614046_)))
                                   (if (gx#stx-pair/null? _hd1400714049_)
                                       (if (fx>= (gx#stx-length _hd1400714049_)
                                                 '0)
                                           (let ((_g19176_
                                                  (gx#syntax-split-splice
                                                   _hd1400714049_
                                                   '0)))
                                             (begin
                                               (let ((_g19177_
                                                      (values-count _g19176_)))
                                                 (if (not (fx= _g19177_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19177_)))
                                               (let ((_target1400914054_
                                                      (values-ref _g19176_ 0))
                                                     (_tl1401114056_
                                                      (values-ref _g19176_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1401114056_)
                                                     (letrec ((_loop1401214059_
                                                               (lambda (_hd1401014062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1401614064_
                                _hd1401714066_)
                         (if (gx#stx-pair? _hd1401014062_)
                             (let ((_e1401314069_ (gx#stx-e _hd1401014062_)))
                               (let ((_lp-hd1401414072_ (##car _e1401314069_))
                                     (_lp-tl1401514074_ (##cdr _e1401314069_)))
                                 (if (gx#stx-pair? _lp-hd1401414072_)
                                     (let ((_e1402014077_
                                            (gx#stx-e _lp-hd1401414072_)))
                                       (let ((_hd1402114080_
                                              (##car _e1402014077_))
                                             (_tl1402214082_
                                              (##cdr _e1402014077_)))
                                         (if (gx#stx-pair? _tl1402214082_)
                                             (let ((_e1402314085_
                                                    (gx#stx-e _tl1402214082_)))
                                               (let ((_hd1402414088_
                                                      (##car _e1402314085_))
                                                     (_tl1402514090_
                                                      (##cdr _e1402314085_)))
                                                 (if (gx#stx-null?
                                                      _tl1402514090_)
                                                     (_loop1401214059_
                                                      _lp-tl1401514074_
                                                      (cons _hd1402414088_
                                                            _expr1401614064_)
                                                      (cons _hd1402114080_
                                                            _hd1401714066_))
                                                     (_g1399814033_
                                                      _g1399914036_))))
                                             (_g1399814033_ _g1399914036_))))
                                     (_g1399814033_ _g1399914036_))))
                             (let ((_expr1401814093_
                                    (reverse _expr1401614064_))
                                   (_hd1401914095_ (reverse _hd1401714066_)))
                               (if (gx#stx-pair? _tl1400814051_)
                                   (let ((_e1402614098_
                                          (gx#stx-e _tl1400814051_)))
                                     (let ((_hd1402714101_
                                            (##car _e1402614098_))
                                           (_tl1402814103_
                                            (##cdr _e1402614098_)))
                                       (if (gx#stx-null? _tl1402814103_)
                                           ((lambda (_L14106_
                                                     _L14107_
                                                     _L14108_)
                                              (begin
                                                (for-each
                                                 _collect-e13996_
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1412814131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1412914133_)
                     (cons _g1412814131_ _g1412914133_))
                   '()
                   _L14108_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1413514138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1413614140_)
                     (cons _g1413514138_ _g1413614140_))
                   '()
                   _L14107_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1414214145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1414314147_)
                     (cons _g1414214145_ _g1414314147_))
                   '()
                   _L14107_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L14106_)))
                                            _hd1402714101_
                                            _expr1401814093_
                                            _hd1401914095_)
                                           (_g1399814033_ _g1399914036_))))
                                   (_g1399814033_ _g1399914036_)))))))
               (_loop1401214059_ _target1400914054_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1399814033_
                                                      _g1399914036_)))))
                                           (_g1399814033_ _g1399914036_))
                                       (_g1399814033_ _g1399914036_))))
                               (_g1399814033_ _g1399914036_))))
                       (_g1399814033_ _g1399914036_)))))
            (_g1399714150_ _stx13994_))))))
  (define gxc#collect-type-call%
    (lambda (_stx13548_)
      (let ((_g1355213654_
             (lambda (_g1355313651_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1355313651_))))
        (let ((_g1355113661_ (lambda (_g1355313657_) ((lambda () '#!void)))))
          (let ((_g1355013811_
                 (lambda (_g1355313664_)
                   (if (gx#stx-pair? _g1355313664_)
                       (let ((_e1361113666_ (gx#stx-e _g1355313664_)))
                         (let ((_hd1361213669_ (##car _e1361113666_))
                               (_tl1361313671_ (##cdr _e1361113666_)))
                           (if (gx#stx-pair? _tl1361313671_)
                               (let ((_e1361413674_ (gx#stx-e _tl1361313671_)))
                                 (let ((_hd1361513677_ (##car _e1361413674_))
                                       (_tl1361613679_ (##cdr _e1361413674_)))
                                   (if (gx#stx-pair? _hd1361513677_)
                                       (let ((_e1361713682_
                                              (gx#stx-e _hd1361513677_)))
                                         (let ((_hd1361813685_
                                                (##car _e1361713682_))
                                               (_tl1361913687_
                                                (##cdr _e1361713682_)))
                                           (if (gx#identifier? _hd1361813685_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1361813685_)
                                                   (if (gx#stx-pair?
                                                        _tl1361913687_)
                                                       (let ((_e1362013690_
                                                              (gx#stx-e
                                                               _tl1361913687_)))
                                                         (let ((_hd1362113693_
                                                                (##car _e1362013690_))
                                                               (_tl1362213695_
                                                                (##cdr _e1362013690_)))
                                                           (if (gx#stx-null?
                                                                _tl1362213695_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1361613679_)
                           (let ((_e1362313698_ (gx#stx-e _tl1361613679_)))
                             (let ((_hd1362413701_ (##car _e1362313698_))
                                   (_tl1362513703_ (##cdr _e1362313698_)))
                               (if (gx#stx-pair? _hd1362413701_)
                                   (let ((_e1362613706_
                                          (gx#stx-e _hd1362413701_)))
                                     (let ((_hd1362713709_
                                            (##car _e1362613706_))
                                           (_tl1362813711_
                                            (##cdr _e1362613706_)))
                                       (if (gx#identifier? _hd1362713709_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1362713709_)
                                               (if (gx#stx-pair?
                                                    _tl1362813711_)
                                                   (let ((_e1362913714_
                                                          (gx#stx-e
                                                           _tl1362813711_)))
                                                     (let ((_hd1363013717_
                                                            (##car _e1362913714_))
                                                           (_tl1363113719_
                                                            (##cdr _e1362913714_)))
                                                       (if (gx#stx-null?
                                                            _tl1363113719_)
                                                           (if (gx#stx-pair?
                                                                _tl1362513703_)
                                                               (let ((_e1363213722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1362513703_)))
                         (let ((_hd1363313725_ (##car _e1363213722_))
                               (_tl1363413727_ (##cdr _e1363213722_)))
                           (if (gx#stx-pair? _hd1363313725_)
                               (let ((_e1363513730_ (gx#stx-e _hd1363313725_)))
                                 (let ((_hd1363613733_ (##car _e1363513730_))
                                       (_tl1363713735_ (##cdr _e1363513730_)))
                                   (if (gx#identifier? _hd1363613733_)
                                       (if (gx#stx-eq? '%#quote _hd1363613733_)
                                           (if (gx#stx-pair? _tl1363713735_)
                                               (let ((_e1363813738_
                                                      (gx#stx-e
                                                       _tl1363713735_)))
                                                 (let ((_hd1363913741_
                                                        (##car _e1363813738_))
                                                       (_tl1364013743_
                                                        (##cdr _e1363813738_)))
                                                   (if (gx#stx-null?
                                                        _tl1364013743_)
                                                       (if (gx#stx-pair?
                                                            _tl1363413727_)
                                                           (let ((_e1364113746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1363413727_)))
                     (let ((_hd1364213749_ (##car _e1364113746_))
                           (_tl1364313751_ (##cdr _e1364113746_)))
                       (if (gx#stx-pair? _hd1364213749_)
                           (let ((_e1364413754_ (gx#stx-e _hd1364213749_)))
                             (let ((_hd1364513757_ (##car _e1364413754_))
                                   (_tl1364613759_ (##cdr _e1364413754_)))
                               (if (gx#identifier? _hd1364513757_)
                                   (if (gx#stx-eq? '%#ref _hd1364513757_)
                                       (if (gx#stx-pair? _tl1364613759_)
                                           (let ((_e1364713762_
                                                  (gx#stx-e _tl1364613759_)))
                                             (let ((_hd1364813765_
                                                    (##car _e1364713762_))
                                                   (_tl1364913767_
                                                    (##cdr _e1364713762_)))
                                               (if (gx#stx-null?
                                                    _tl1364913767_)
                                                   (if (gx#stx-null?
                                                        _tl1364313751_)
                                                       ((lambda (_L13770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13771_
                         _L13772_
                         _L13773_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda18875
                       (gxc#generate-runtime-binding-id _L13772_)
                       (gx#stx-e _L13771_)
                       (gxc#generate-runtime-binding-id _L13770_)
                       '#f)
                      (_g1355113661_ _g1355313664_)))
                _hd1364813765_
                _hd1363913741_
                _hd1363013717_
                _hd1362113693_)
               (_g1355113661_ _g1355313664_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1355113661_
                                                    _g1355313664_))))
                                           (_g1355113661_ _g1355313664_))
                                       (_g1355113661_ _g1355313664_))
                                   (_g1355113661_ _g1355313664_))))
                           (_g1355113661_ _g1355313664_))))
                   (_g1355113661_ _g1355313664_))
               (_g1355113661_ _g1355313664_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1355113661_ _g1355313664_))
                                           (_g1355113661_ _g1355313664_))
                                       (_g1355113661_ _g1355313664_))))
                               (_g1355113661_ _g1355313664_))))
                       (_g1355113661_ _g1355313664_))
                   (_g1355113661_ _g1355313664_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1355113661_
                                                    _g1355313664_))
                                               (_g1355113661_ _g1355313664_))
                                           (_g1355113661_ _g1355313664_))))
                                   (_g1355113661_ _g1355313664_))))
                           (_g1355113661_ _g1355313664_))
                       (_g1355113661_ _g1355313664_))))
               (_g1355113661_ _g1355313664_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1355113661_
                                                    _g1355313664_))
                                               (_g1355113661_ _g1355313664_))))
                                       (_g1355113661_ _g1355313664_))))
                               (_g1355113661_ _g1355313664_))))
                       (_g1355113661_ _g1355313664_)))))
            (let ((_g1354913991_
                   (lambda (_g1355313814_)
                     (if (gx#stx-pair? _g1355313814_)
                         (let ((_e1355913816_ (gx#stx-e _g1355313814_)))
                           (let ((_hd1356013819_ (##car _e1355913816_))
                                 (_tl1356113821_ (##cdr _e1355913816_)))
                             (if (gx#stx-pair? _tl1356113821_)
                                 (let ((_e1356213824_
                                        (gx#stx-e _tl1356113821_)))
                                   (let ((_hd1356313827_ (##car _e1356213824_))
                                         (_tl1356413829_
                                          (##cdr _e1356213824_)))
                                     (if (gx#stx-pair? _hd1356313827_)
                                         (let ((_e1356513832_
                                                (gx#stx-e _hd1356313827_)))
                                           (let ((_hd1356613835_
                                                  (##car _e1356513832_))
                                                 (_tl1356713837_
                                                  (##cdr _e1356513832_)))
                                             (if (gx#identifier?
                                                  _hd1356613835_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1356613835_)
                                                     (if (gx#stx-pair?
                                                          _tl1356713837_)
                                                         (let ((_e1356813840_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1356713837_)))
                   (let ((_hd1356913843_ (##car _e1356813840_))
                         (_tl1357013845_ (##cdr _e1356813840_)))
                     (if (gx#stx-null? _tl1357013845_)
                         (if (gx#stx-pair? _tl1356413829_)
                             (let ((_e1357113848_ (gx#stx-e _tl1356413829_)))
                               (let ((_hd1357213851_ (##car _e1357113848_))
                                     (_tl1357313853_ (##cdr _e1357113848_)))
                                 (if (gx#stx-pair? _hd1357213851_)
                                     (let ((_e1357413856_
                                            (gx#stx-e _hd1357213851_)))
                                       (let ((_hd1357513859_
                                              (##car _e1357413856_))
                                             (_tl1357613861_
                                              (##cdr _e1357413856_)))
                                         (if (gx#identifier? _hd1357513859_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1357513859_)
                                                 (if (gx#stx-pair?
                                                      _tl1357613861_)
                                                     (let ((_e1357713864_
                                                            (gx#stx-e
                                                             _tl1357613861_)))
                                                       (let ((_hd1357813867_
                                                              (##car _e1357713864_))
                                                             (_tl1357913869_
                                                              (##cdr _e1357713864_)))
                                                         (if (gx#stx-null?
                                                              _tl1357913869_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1357313853_)
                         (let ((_e1358013872_ (gx#stx-e _tl1357313853_)))
                           (let ((_hd1358113875_ (##car _e1358013872_))
                                 (_tl1358213877_ (##cdr _e1358013872_)))
                             (if (gx#stx-pair? _hd1358113875_)
                                 (let ((_e1358313880_
                                        (gx#stx-e _hd1358113875_)))
                                   (let ((_hd1358413883_ (##car _e1358313880_))
                                         (_tl1358513885_
                                          (##cdr _e1358313880_)))
                                     (if (gx#identifier? _hd1358413883_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1358413883_)
                                             (if (gx#stx-pair? _tl1358513885_)
                                                 (let ((_e1358613888_
                                                        (gx#stx-e
                                                         _tl1358513885_)))
                                                   (let ((_hd1358713891_
                                                          (##car _e1358613888_))
                                                         (_tl1358813893_
                                                          (##cdr _e1358613888_)))
                                                     (if (gx#stx-null?
                                                          _tl1358813893_)
                                                         (if (gx#stx-pair?
                                                              _tl1358213877_)
                                                             (let ((_e1358913896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1358213877_)))
                       (let ((_hd1359013899_ (##car _e1358913896_))
                             (_tl1359113901_ (##cdr _e1358913896_)))
                         (if (gx#stx-pair? _hd1359013899_)
                             (let ((_e1359213904_ (gx#stx-e _hd1359013899_)))
                               (let ((_hd1359313907_ (##car _e1359213904_))
                                     (_tl1359413909_ (##cdr _e1359213904_)))
                                 (if (gx#identifier? _hd1359313907_)
                                     (if (gx#stx-eq? '%#ref _hd1359313907_)
                                         (if (gx#stx-pair? _tl1359413909_)
                                             (let ((_e1359513912_
                                                    (gx#stx-e _tl1359413909_)))
                                               (let ((_hd1359613915_
                                                      (##car _e1359513912_))
                                                     (_tl1359713917_
                                                      (##cdr _e1359513912_)))
                                                 (if (gx#stx-null?
                                                      _tl1359713917_)
                                                     (if (gx#stx-pair?
                                                          _tl1359113901_)
                                                         (let ((_e1359813920_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1359113901_)))
                   (let ((_hd1359913923_ (##car _e1359813920_))
                         (_tl1360013925_ (##cdr _e1359813920_)))
                     (if (gx#stx-pair? _hd1359913923_)
                         (let ((_e1360113928_ (gx#stx-e _hd1359913923_)))
                           (let ((_hd1360213931_ (##car _e1360113928_))
                                 (_tl1360313933_ (##cdr _e1360113928_)))
                             (if (gx#identifier? _hd1360213931_)
                                 (if (gx#stx-eq? '%#quote _hd1360213931_)
                                     (if (gx#stx-pair? _tl1360313933_)
                                         (let ((_e1360413936_
                                                (gx#stx-e _tl1360313933_)))
                                           (let ((_hd1360513939_
                                                  (##car _e1360413936_))
                                                 (_tl1360613941_
                                                  (##cdr _e1360413936_)))
                                             (if (gx#stx-null? _tl1360613941_)
                                                 (if (gx#stx-null?
                                                      _tl1360013925_)
                                                     ((lambda (_L13944_
                                                               _L13945_
                                                               _L13946_
                                                               _L13947_
                                                               _L13948_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13948_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda18875
                     (gxc#generate-runtime-binding-id _L13947_)
                     (gx#stx-e _L13946_)
                     (gxc#generate-runtime-binding-id _L13945_)
                     (gx#stx-e _L13944_))
                    (_g1355013811_ _g1355313814_)))
              _hd1360513939_
              _hd1359613915_
              _hd1358713891_
              _hd1357813867_
              _hd1356913843_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1355013811_
                                                      _g1355313814_))
                                                 (_g1355013811_
                                                  _g1355313814_))))
                                         (_g1355013811_ _g1355313814_))
                                     (_g1355013811_ _g1355313814_))
                                 (_g1355013811_ _g1355313814_))))
                         (_g1355013811_ _g1355313814_))))
                 (_g1355013811_ _g1355313814_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1355013811_
                                                      _g1355313814_))))
                                             (_g1355013811_ _g1355313814_))
                                         (_g1355013811_ _g1355313814_))
                                     (_g1355013811_ _g1355313814_))))
                             (_g1355013811_ _g1355313814_))))
                     (_g1355013811_ _g1355313814_))
                 (_g1355013811_ _g1355313814_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1355013811_ _g1355313814_))
                                             (_g1355013811_ _g1355313814_))
                                         (_g1355013811_ _g1355313814_))))
                                 (_g1355013811_ _g1355313814_))))
                         (_g1355013811_ _g1355313814_))
                     (_g1355013811_ _g1355313814_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1355013811_
                                                      _g1355313814_))
                                                 (_g1355013811_ _g1355313814_))
                                             (_g1355013811_ _g1355313814_))))
                                     (_g1355013811_ _g1355313814_))))
                             (_g1355013811_ _g1355313814_))
                         (_g1355013811_ _g1355313814_))))
                 (_g1355013811_ _g1355313814_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1355013811_
                                                      _g1355313814_))
                                                 (_g1355013811_
                                                  _g1355313814_))))
                                         (_g1355013811_ _g1355313814_))))
                                 (_g1355013811_ _g1355313814_))))
                         (_g1355013811_ _g1355313814_)))))
              (_g1354913991_ _stx13548_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx13488_)
      (let ((_g1349113504_
             (lambda (_g1349213501_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1349213501_))))
        (let ((_g1349013511_ (lambda (_g1349213507_) ((lambda () '#f)))))
          (let ((_g1348913545_
                 (lambda (_g1349213514_)
                   (if (gx#stx-pair? _g1349213514_)
                       (let ((_e1349413516_ (gx#stx-e _g1349213514_)))
                         (let ((_hd1349513519_ (##car _e1349413516_))
                               (_tl1349613521_ (##cdr _e1349413516_)))
                           (if (gx#stx-pair? _tl1349613521_)
                               (let ((_e1349713524_ (gx#stx-e _tl1349613521_)))
                                 (let ((_hd1349813527_ (##car _e1349713524_))
                                       (_tl1349913529_ (##cdr _e1349713524_)))
                                   (if (gx#stx-null? _tl1349913529_)
                                       ((lambda (_L13532_)
                                          (gxc#compile-e _L13532_))
                                        _hd1349813527_)
                                       (_g1349013511_ _g1349213514_))))
                               (_g1349013511_ _g1349213514_))))
                       (_g1349013511_ _g1349213514_)))))
            (_g1348913545_ _stx13488_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx12913_)
      (let ((_g1291813039_
             (lambda (_g1291913036_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1291913036_))))
        (let ((_g1291713046_ (lambda (_g1291913042_) ((lambda () '#f)))))
          (let ((_g1291613070_
                 (lambda (_g1291913049_)
                   (if (gx#stx-pair? _g1291913049_)
                       (let ((_e1303213051_ (gx#stx-e _g1291913049_)))
                         (let ((_hd1303313054_ (##car _e1303213051_))
                               (_tl1303413056_ (##cdr _e1303213051_)))
                           ((lambda (_L13059_)
                              (if (gxc#dispatch-lambda-form? _L13059_)
                                  (let ((__obj19116
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj19116
                                       'lambda
                                       (gxc#lambda-form-arity _L13059_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13059_))
                                      __obj19116))
                                  (_g1291713046_ _g1291913049_)))
                            _tl1303413056_)))
                       (_g1291713046_ _g1291913049_)))))
            (let ((_g1291513300_
                   (lambda (_g1291913073_)
                     (if (gx#stx-pair? _g1291913073_)
                         (let ((_e1297713075_ (gx#stx-e _g1291913073_)))
                           (let ((_hd1297813078_ (##car _e1297713075_))
                                 (_tl1297913080_ (##cdr _e1297713075_)))
                             (if (gx#stx-pair? _tl1297913080_)
                                 (let ((_e1298013083_
                                        (gx#stx-e _tl1297913080_)))
                                   (let ((_hd1298113086_ (##car _e1298013083_))
                                         (_tl1298213088_
                                          (##cdr _e1298013083_)))
                                     (if (gx#stx-pair/null? _hd1298113086_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1298113086_)
                                                   '0)
                                             (let ((_g19178_
                                                    (gx#syntax-split-splice
                                                     _hd1298113086_
                                                     '0)))
                                               (begin
                                                 (let ((_g19179_
                                                        (values-count
                                                         _g19178_)))
                                                   (if (not (fx= _g19179_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19179_)))
                                                 (let ((_target1298313091_
                                                        (values-ref
                                                         _g19178_
                                                         0))
                                                       (_tl1298513093_
                                                        (values-ref
                                                         _g19178_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1298513093_)
                                                       (letrec ((_loop1298613096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1298413099_ _arg1299013101_)
                           (if (gx#stx-pair? _hd1298413099_)
                               (let ((_e1298713104_ (gx#stx-e _hd1298413099_)))
                                 (let ((_lp-hd1298813107_
                                        (##car _e1298713104_))
                                       (_lp-tl1298913109_
                                        (##cdr _e1298713104_)))
                                   (_loop1298613096_
                                    _lp-tl1298913109_
                                    (cons _lp-hd1298813107_ _arg1299013101_))))
                               (let ((_arg1299113112_
                                      (reverse _arg1299013101_)))
                                 (if (gx#stx-pair? _tl1298213088_)
                                     (let ((_e1299213115_
                                            (gx#stx-e _tl1298213088_)))
                                       (let ((_hd1299313118_
                                              (##car _e1299213115_))
                                             (_tl1299413120_
                                              (##cdr _e1299213115_)))
                                         (if (gx#stx-pair? _hd1299313118_)
                                             (let ((_e1299513123_
                                                    (gx#stx-e _hd1299313118_)))
                                               (let ((_hd1299613126_
                                                      (##car _e1299513123_))
                                                     (_tl1299713128_
                                                      (##cdr _e1299513123_)))
                                                 (if (gx#identifier?
                                                      _hd1299613126_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1299613126_)
                                                         (if (gx#stx-pair?
                                                              _tl1299713128_)
                                                             (let ((_e1299813131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1299713128_)))
                       (let ((_hd1299913134_ (##car _e1299813131_))
                             (_tl1300013136_ (##cdr _e1299813131_)))
                         (if (gx#stx-pair? _hd1299913134_)
                             (let ((_e1300113139_ (gx#stx-e _hd1299913134_)))
                               (let ((_hd1300213142_ (##car _e1300113139_))
                                     (_tl1300313144_ (##cdr _e1300113139_)))
                                 (if (gx#identifier? _hd1300213142_)
                                     (if (gx#stx-eq? '%#ref _hd1300213142_)
                                         (if (gx#stx-pair? _tl1300313144_)
                                             (let ((_e1300413147_
                                                    (gx#stx-e _tl1300313144_)))
                                               (let ((_hd1300513150_
                                                      (##car _e1300413147_))
                                                     (_tl1300613152_
                                                      (##cdr _e1300413147_)))
                                                 (if (gx#stx-null?
                                                      _tl1300613152_)
                                                     (if (gx#stx-pair?
                                                          _tl1300013136_)
                                                         (let ((_e1300713155_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1300013136_)))
                   (let ((_hd1300813158_ (##car _e1300713155_))
                         (_tl1300913160_ (##cdr _e1300713155_)))
                     (if (gx#stx-pair? _hd1300813158_)
                         (let ((_e1301013163_ (gx#stx-e _hd1300813158_)))
                           (let ((_hd1301113166_ (##car _e1301013163_))
                                 (_tl1301213168_ (##cdr _e1301013163_)))
                             (if (gx#identifier? _hd1301113166_)
                                 (if (gx#stx-eq? '%#ref _hd1301113166_)
                                     (if (gx#stx-pair? _tl1301213168_)
                                         (let ((_e1301313171_
                                                (gx#stx-e _tl1301213168_)))
                                           (let ((_hd1301413174_
                                                  (##car _e1301313171_))
                                                 (_tl1301513176_
                                                  (##cdr _e1301313171_)))
                                             (if (gx#stx-null? _tl1301513176_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1300913160_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1300913160_)
                                                               '0)
                                                         (let ((_g19180_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1300913160_
                         '0)))
                   (begin
                     (let ((_g19181_ (values-count _g19180_)))
                       (if (not (fx= _g19181_ 2))
                           (error "Context expects 2 values" _g19181_)))
                     (let ((_target1301613179_ (values-ref _g19180_ 0))
                           (_tl1301813181_ (values-ref _g19180_ 1)))
                       (if (gx#stx-null? _tl1301813181_)
                           (letrec ((_loop1301913184_
                                     (lambda (_hd1301713187_ _xarg1302313189_)
                                       (if (gx#stx-pair? _hd1301713187_)
                                           (let ((_e1302013192_
                                                  (gx#stx-e _hd1301713187_)))
                                             (let ((_lp-hd1302113195_
                                                    (##car _e1302013192_))
                                                   (_lp-tl1302213197_
                                                    (##cdr _e1302013192_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1302113195_)
                                                   (let ((_e1302513200_
                                                          (gx#stx-e
                                                           _lp-hd1302113195_)))
                                                     (let ((_hd1302613203_
                                                            (##car _e1302513200_))
                                                           (_tl1302713205_
                                                            (##cdr _e1302513200_)))
                                                       (if (gx#identifier?
                                                            _hd1302613203_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1302613203_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1302713205_)
                           (let ((_e1302813208_ (gx#stx-e _tl1302713205_)))
                             (let ((_hd1302913211_ (##car _e1302813208_))
                                   (_tl1303013213_ (##cdr _e1302813208_)))
                               (if (gx#stx-null? _tl1303013213_)
                                   (_loop1301913184_
                                    _lp-tl1302213197_
                                    (cons _hd1302913211_ _xarg1302313189_))
                                   (_g1291613070_ _g1291913073_))))
                           (_g1291613070_ _g1291913073_))
                       (_g1291613070_ _g1291913073_))
                   (_g1291613070_ _g1291913073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1291613070_
                                                    _g1291913073_))))
                                           (let ((_xarg1302413216_
                                                  (reverse _xarg1302313189_)))
                                             (if (gx#stx-null? _tl1299413120_)
                                                 ((lambda (_L13219_
                                                           _L13220_
                                                           _L13221_
                                                           _L13222_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1325913262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1326013264_)
                                 (cons _g1325913262_ _g1326013264_))
                               '()
                               _L13222_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L13221_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1326613269_
                                                            _g1326713271_)
                                                     (cons _g1326613269_
                                                           _g1326713271_))
                                                   '()
                                                   _L13222_)))
                                 (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1327313276_
                                                            _g1327413278_)
                                                     (cons _g1327313276_
                                                           _g1327413278_))
                                                   '()
                                                   _L13219_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1328013283_
                                                       _g1328113285_)
                                                (cons _g1328013283_
                                                      _g1328113285_))
                                              '()
                                              _L13222_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1328713290_
                                                       _g1328813292_)
                                                (cons _g1328713290_
                                                      _g1328813292_))
                                              '()
                                              _L13219_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t13295_
                       (gxc#generate-runtime-binding-id _L13220_)))
                  (let ((_type13297_
                         (gxc#optimizer-resolve-type _type-t13295_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type13297_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t13295_)
                          '#f))))
                (_g1291613070_ _g1291913073_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1302413216_
                                                  _hd1301413174_
                                                  _hd1300513150_
                                                  _arg1299113112_)
                                                 (_g1291613070_
                                                  _g1291913073_)))))))
                             (_loop1301913184_ _target1301613179_ '()))
                           (_g1291613070_ _g1291913073_)))))
                 (_g1291613070_ _g1291913073_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1291613070_
                                                      _g1291913073_))
                                                 (_g1291613070_
                                                  _g1291913073_))))
                                         (_g1291613070_ _g1291913073_))
                                     (_g1291613070_ _g1291913073_))
                                 (_g1291613070_ _g1291913073_))))
                         (_g1291613070_ _g1291913073_))))
                 (_g1291613070_ _g1291913073_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1291613070_
                                                      _g1291913073_))))
                                             (_g1291613070_ _g1291913073_))
                                         (_g1291613070_ _g1291913073_))
                                     (_g1291613070_ _g1291913073_))))
                             (_g1291613070_ _g1291913073_))))
                     (_g1291613070_ _g1291913073_))
                 (_g1291613070_ _g1291913073_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1291613070_
                                                      _g1291913073_))))
                                             (_g1291613070_ _g1291913073_))))
                                     (_g1291613070_ _g1291913073_)))))))
                 (_loop1298613096_ _target1298313091_ '()))
               (_g1291613070_ _g1291913073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1291613070_ _g1291913073_))
                                         (_g1291613070_ _g1291913073_))))
                                 (_g1291613070_ _g1291913073_))))
                         (_g1291613070_ _g1291913073_)))))
              (let ((_g1291413485_
                     (lambda (_g1291913303_)
                       (if (gx#stx-pair? _g1291913303_)
                           (let ((_e1292513305_ (gx#stx-e _g1291913303_)))
                             (let ((_hd1292613308_ (##car _e1292513305_))
                                   (_tl1292713310_ (##cdr _e1292513305_)))
                               (if (gx#stx-pair? _tl1292713310_)
                                   (let ((_e1292813313_
                                          (gx#stx-e _tl1292713310_)))
                                     (let ((_hd1292913316_
                                            (##car _e1292813313_))
                                           (_tl1293013318_
                                            (##cdr _e1292813313_)))
                                       (if (gx#stx-pair? _tl1293013318_)
                                           (let ((_e1293113321_
                                                  (gx#stx-e _tl1293013318_)))
                                             (let ((_hd1293213324_
                                                    (##car _e1293113321_))
                                                   (_tl1293313326_
                                                    (##cdr _e1293113321_)))
                                               (if (gx#stx-pair?
                                                    _hd1293213324_)
                                                   (let ((_e1293413329_
                                                          (gx#stx-e
                                                           _hd1293213324_)))
                                                     (let ((_hd1293513332_
                                                            (##car _e1293413329_))
                                                           (_tl1293613334_
                                                            (##cdr _e1293413329_)))
                                                       (if (gx#identifier?
                                                            _hd1293513332_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1293513332_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1293613334_)
                           (let ((_e1293713337_ (gx#stx-e _tl1293613334_)))
                             (let ((_hd1293813340_ (##car _e1293713337_))
                                   (_tl1293913342_ (##cdr _e1293713337_)))
                               (if (gx#stx-pair? _hd1293813340_)
                                   (let ((_e1294013345_
                                          (gx#stx-e _hd1293813340_)))
                                     (let ((_hd1294113348_
                                            (##car _e1294013345_))
                                           (_tl1294213350_
                                            (##cdr _e1294013345_)))
                                       (if (gx#identifier? _hd1294113348_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1294113348_)
                                               (if (gx#stx-pair?
                                                    _tl1294213350_)
                                                   (let ((_e1294313353_
                                                          (gx#stx-e
                                                           _tl1294213350_)))
                                                     (let ((_hd1294413356_
                                                            (##car _e1294313353_))
                                                           (_tl1294513358_
                                                            (##cdr _e1294313353_)))
                                                       (if (gx#stx-null?
                                                            _tl1294513358_)
                                                           (if (gx#stx-pair?
                                                                _tl1293913342_)
                                                               (let ((_e1294613361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1293913342_)))
                         (let ((_hd1294713364_ (##car _e1294613361_))
                               (_tl1294813366_ (##cdr _e1294613361_)))
                           (if (gx#stx-pair? _hd1294713364_)
                               (let ((_e1294913369_ (gx#stx-e _hd1294713364_)))
                                 (let ((_hd1295013372_ (##car _e1294913369_))
                                       (_tl1295113374_ (##cdr _e1294913369_)))
                                   (if (gx#identifier? _hd1295013372_)
                                       (if (gx#stx-eq? '%#ref _hd1295013372_)
                                           (if (gx#stx-pair? _tl1295113374_)
                                               (let ((_e1295213377_
                                                      (gx#stx-e
                                                       _tl1295113374_)))
                                                 (let ((_hd1295313380_
                                                        (##car _e1295213377_))
                                                       (_tl1295413382_
                                                        (##cdr _e1295213377_)))
                                                   (if (gx#stx-null?
                                                        _tl1295413382_)
                                                       (if (gx#stx-pair?
                                                            _tl1294813366_)
                                                           (let ((_e1295513385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1294813366_)))
                     (let ((_hd1295613388_ (##car _e1295513385_))
                           (_tl1295713390_ (##cdr _e1295513385_)))
                       (if (gx#stx-pair? _hd1295613388_)
                           (let ((_e1295813393_ (gx#stx-e _hd1295613388_)))
                             (let ((_hd1295913396_ (##car _e1295813393_))
                                   (_tl1296013398_ (##cdr _e1295813393_)))
                               (if (gx#identifier? _hd1295913396_)
                                   (if (gx#stx-eq? '%#ref _hd1295913396_)
                                       (if (gx#stx-pair? _tl1296013398_)
                                           (let ((_e1296113401_
                                                  (gx#stx-e _tl1296013398_)))
                                             (let ((_hd1296213404_
                                                    (##car _e1296113401_))
                                                   (_tl1296313406_
                                                    (##cdr _e1296113401_)))
                                               (if (gx#stx-null?
                                                    _tl1296313406_)
                                                   (if (gx#stx-pair?
                                                        _tl1295713390_)
                                                       (let ((_e1296413409_
                                                              (gx#stx-e
                                                               _tl1295713390_)))
                                                         (let ((_hd1296513412_
                                                                (##car _e1296413409_))
                                                               (_tl1296613414_
                                                                (##cdr _e1296413409_)))
                                                           (if (gx#stx-pair?
                                                                _hd1296513412_)
                                                               (let ((_e1296713417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1296513412_)))
                         (let ((_hd1296813420_ (##car _e1296713417_))
                               (_tl1296913422_ (##cdr _e1296713417_)))
                           (if (gx#identifier? _hd1296813420_)
                               (if (gx#stx-eq? '%#ref _hd1296813420_)
                                   (if (gx#stx-pair? _tl1296913422_)
                                       (let ((_e1297013425_
                                              (gx#stx-e _tl1296913422_)))
                                         (let ((_hd1297113428_
                                                (##car _e1297013425_))
                                               (_tl1297213430_
                                                (##cdr _e1297013425_)))
                                           (if (gx#stx-null? _tl1297213430_)
                                               (if (gx#stx-null?
                                                    _tl1296613414_)
                                                   (if (gx#stx-null?
                                                        _tl1293313326_)
                                                       ((lambda (_L13433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13434_
                         _L13435_
                         _L13436_
                         _L13437_)
                  (if (if (gx#identifier? _L13437_)
                          (if (eq? (gxc#generate-runtime-binding-id _L13436_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L13435_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L13437_ _L13433_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t13480_
                             (gxc#generate-runtime-binding-id _L13434_)))
                        (let ((_type13482_
                               (gxc#optimizer-resolve-type _type-t13480_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type13482_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t13480_)
                                '#f))))
                      (_g1291513300_ _g1291913303_)))
                _hd1297113428_
                _hd1296213404_
                _hd1295313380_
                _hd1294413356_
                _hd1292913316_)
               (_g1291513300_ _g1291913303_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1291513300_
                                                    _g1291913303_))
                                               (_g1291513300_ _g1291913303_))))
                                       (_g1291513300_ _g1291913303_))
                                   (_g1291513300_ _g1291913303_))
                               (_g1291513300_ _g1291913303_))))
                       (_g1291513300_ _g1291913303_))))
               (_g1291513300_ _g1291913303_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1291513300_
                                                    _g1291913303_))))
                                           (_g1291513300_ _g1291913303_))
                                       (_g1291513300_ _g1291913303_))
                                   (_g1291513300_ _g1291913303_))))
                           (_g1291513300_ _g1291913303_))))
                   (_g1291513300_ _g1291913303_))
               (_g1291513300_ _g1291913303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1291513300_ _g1291913303_))
                                           (_g1291513300_ _g1291913303_))
                                       (_g1291513300_ _g1291913303_))))
                               (_g1291513300_ _g1291913303_))))
                       (_g1291513300_ _g1291913303_))
                   (_g1291513300_ _g1291913303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1291513300_
                                                    _g1291913303_))
                                               (_g1291513300_ _g1291913303_))
                                           (_g1291513300_ _g1291913303_))))
                                   (_g1291513300_ _g1291913303_))))
                           (_g1291513300_ _g1291913303_))
                       (_g1291513300_ _g1291913303_))
                   (_g1291513300_ _g1291913303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1291513300_
                                                    _g1291913303_))))
                                           (_g1291513300_ _g1291913303_))))
                                   (_g1291513300_ _g1291913303_))))
                           (_g1291513300_ _g1291913303_)))))
                (_g1291413485_ _stx12913_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx12859_)
      (let ((_clause-e12861_
             (lambda (_form12911_)
               (let ((__obj19117 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj19117
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form12911_)
                    (gxc#dispatch-lambda-form-delegate _form12911_))
                   __obj19117)))))
        (let ((_g1286412874_
               (lambda (_g1286512871_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1286512871_))))
          (let ((_g1286312881_ (lambda (_g1286512877_) ((lambda () '#f)))))
            (let ((_g1286212908_
                   (lambda (_g1286512884_)
                     (if (gx#stx-pair? _g1286512884_)
                         (let ((_e1286712886_ (gx#stx-e _g1286512884_)))
                           (let ((_hd1286812889_ (##car _e1286712886_))
                                 (_tl1286912891_ (##cdr _e1286712886_)))
                             ((lambda (_L12894_)
                                (if (andmap1 gxc#dispatch-lambda-form?
                                             _L12894_)
                                    (let ((_clauses12906_
                                           (map _clause-e12861_ _L12894_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses12906_))
                                    (_g1286312881_ _g1286512884_)))
                              _tl1286912891_)))
                         (_g1286312881_ _g1286512884_)))))
              (_g1286212908_ _stx12859_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx12764_)
      (let ((_g1276712787_
             (lambda (_g1276812784_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1276812784_))))
        (let ((_g1276612794_ (lambda (_g1276812790_) ((lambda () '#f)))))
          (let ((_g1276512856_
                 (lambda (_g1276812797_)
                   (if (gx#stx-pair? _g1276812797_)
                       (let ((_e1277112799_ (gx#stx-e _g1276812797_)))
                         (let ((_hd1277212802_ (##car _e1277112799_))
                               (_tl1277312804_ (##cdr _e1277112799_)))
                           (if (gx#stx-pair? _tl1277312804_)
                               (let ((_e1277412807_ (gx#stx-e _tl1277312804_)))
                                 (let ((_hd1277512810_ (##car _e1277412807_))
                                       (_tl1277612812_ (##cdr _e1277412807_)))
                                   (if (gx#stx-pair? _hd1277512810_)
                                       (let ((_e1277712815_
                                              (gx#stx-e _hd1277512810_)))
                                         (let ((_hd1277812818_
                                                (##car _e1277712815_))
                                               (_tl1277912820_
                                                (##cdr _e1277712815_)))
                                           (if (gx#identifier? _hd1277812818_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1277812818_)
                                                   (if (gx#stx-pair?
                                                        _tl1277912820_)
                                                       (let ((_e1278012823_
                                                              (gx#stx-e
                                                               _tl1277912820_)))
                                                         (let ((_hd1278112826_
                                                                (##car _e1278012823_))
                                                               (_tl1278212828_
                                                                (##cdr _e1278012823_)))
                                                           (if (gx#stx-null?
                                                                _tl1278212828_)
                                                               ((lambda (_L12831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12832_)
                          (let ((_type-e1284912851_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L12832_)
                                  '#f)))
                            (if _type-e1284912851_
                                (let ((_type-e12854_ _type-e1284912851_))
                                  (_type-e12854_ _stx12764_ _L12831_))
                                '#f)))
                        _tl1277612812_
                        _hd1278112826_)
                       (_g1276612794_ _g1276812797_))))
               (_g1276612794_ _g1276812797_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1276612794_
                                                    _g1276812797_))
                                               (_g1276612794_ _g1276812797_))))
                                       (_g1276612794_ _g1276812797_))))
                               (_g1276612794_ _g1276812797_))))
                       (_g1276612794_ _g1276812797_)))))
            (_g1276512856_ _stx12764_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx12249_ _args12250_)
      (let ((_g1225412367_
             (lambda (_g1225512364_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1225512364_))))
        (let ((_g1225312374_
               (lambda (_g1225512370_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx12249_))
                      '#f))))))
          (let ((_g1225212581_
                 (lambda (_g1225512377_)
                   (if (gx#stx-pair? _g1225512377_)
                       (let ((_e1231512379_ (gx#stx-e _g1225512377_)))
                         (let ((_hd1231612382_ (##car _e1231512379_))
                               (_tl1231712384_ (##cdr _e1231512379_)))
                           (if (gx#stx-pair? _hd1231612382_)
                               (let ((_e1231812387_ (gx#stx-e _hd1231612382_)))
                                 (let ((_hd1231912390_ (##car _e1231812387_))
                                       (_tl1232012392_ (##cdr _e1231812387_)))
                                   (if (gx#identifier? _hd1231912390_)
                                       (if (gx#stx-eq? '%#quote _hd1231912390_)
                                           (if (gx#stx-pair? _tl1232012392_)
                                               (let ((_e1232112395_
                                                      (gx#stx-e
                                                       _tl1232012392_)))
                                                 (let ((_hd1232212398_
                                                        (##car _e1232112395_))
                                                       (_tl1232312400_
                                                        (##cdr _e1232112395_)))
                                                   (if (gx#stx-null?
                                                        _tl1232312400_)
                                                       (if (gx#stx-pair?
                                                            _tl1231712384_)
                                                           (let ((_e1232412403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1231712384_)))
                     (let ((_hd1232512406_ (##car _e1232412403_))
                           (_tl1232612408_ (##cdr _e1232412403_)))
                       (if (gx#stx-pair? _hd1232512406_)
                           (let ((_e1232712411_ (gx#stx-e _hd1232512406_)))
                             (let ((_hd1232812414_ (##car _e1232712411_))
                                   (_tl1232912416_ (##cdr _e1232712411_)))
                               (if (gx#identifier? _hd1232812414_)
                                   (if (gx#stx-eq? '%#ref _hd1232812414_)
                                       (if (gx#stx-pair? _tl1232912416_)
                                           (let ((_e1233012419_
                                                  (gx#stx-e _tl1232912416_)))
                                             (let ((_hd1233112422_
                                                    (##car _e1233012419_))
                                                   (_tl1233212424_
                                                    (##cdr _e1233012419_)))
                                               (if (gx#stx-null?
                                                    _tl1233212424_)
                                                   (if (gx#stx-pair?
                                                        _tl1232612408_)
                                                       (let ((_e1233312427_
                                                              (gx#stx-e
                                                               _tl1232612408_)))
                                                         (let ((_hd1233412430_
                                                                (##car _e1233312427_))
                                                               (_tl1233512432_
                                                                (##cdr _e1233312427_)))
                                                           (if (gx#stx-pair?
                                                                _hd1233412430_)
                                                               (let ((_e1233612435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1233412430_)))
                         (let ((_hd1233712438_ (##car _e1233612435_))
                               (_tl1233812440_ (##cdr _e1233612435_)))
                           (if (gx#identifier? _hd1233712438_)
                               (if (gx#stx-eq? '%#quote _hd1233712438_)
                                   (if (gx#stx-pair? _tl1233812440_)
                                       (let ((_e1233912443_
                                              (gx#stx-e _tl1233812440_)))
                                         (let ((_hd1234012446_
                                                (##car _e1233912443_))
                                               (_tl1234112448_
                                                (##cdr _e1233912443_)))
                                           (if (gx#stx-null? _tl1234112448_)
                                               (if (gx#stx-pair?
                                                    _tl1233512432_)
                                                   (let ((_e1234212451_
                                                          (gx#stx-e
                                                           _tl1233512432_)))
                                                     (let ((_hd1234312454_
                                                            (##car _e1234212451_))
                                                           (_tl1234412456_
                                                            (##cdr _e1234212451_)))
                                                       (if (gx#stx-pair?
                                                            _tl1234412456_)
                                                           (let ((_e1234512459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1234412456_)))
                     (let ((_hd1234612462_ (##car _e1234512459_))
                           (_tl1234712464_ (##cdr _e1234512459_)))
                       (if (gx#stx-pair? _hd1234612462_)
                           (let ((_e1234812467_ (gx#stx-e _hd1234612462_)))
                             (let ((_hd1234912470_ (##car _e1234812467_))
                                   (_tl1235012472_ (##cdr _e1234812467_)))
                               (if (gx#identifier? _hd1234912470_)
                                   (if (gx#stx-eq? '%#quote _hd1234912470_)
                                       (if (gx#stx-pair? _tl1235012472_)
                                           (let ((_e1235112475_
                                                  (gx#stx-e _tl1235012472_)))
                                             (let ((_hd1235212478_
                                                    (##car _e1235112475_))
                                                   (_tl1235312480_
                                                    (##cdr _e1235112475_)))
                                               (if (gx#stx-null?
                                                    _tl1235312480_)
                                                   (if (gx#stx-pair?
                                                        _tl1234712464_)
                                                       (let ((_e1235412483_
                                                              (gx#stx-e
                                                               _tl1234712464_)))
                                                         (let ((_hd1235512486_
                                                                (##car _e1235412483_))
                                                               (_tl1235612488_
                                                                (##cdr _e1235412483_)))
                                                           (if (gx#stx-pair?
                                                                _hd1235512486_)
                                                               (let ((_e1235712491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1235512486_)))
                         (let ((_hd1235812494_ (##car _e1235712491_))
                               (_tl1235912496_ (##cdr _e1235712491_)))
                           (if (gx#identifier? _hd1235812494_)
                               (if (gx#stx-eq? '%#quote _hd1235812494_)
                                   (if (gx#stx-pair? _tl1235912496_)
                                       (let ((_e1236012499_
                                              (gx#stx-e _tl1235912496_)))
                                         (let ((_hd1236112502_
                                                (##car _e1236012499_))
                                               (_tl1236212504_
                                                (##cdr _e1236012499_)))
                                           (if (gx#stx-null? _tl1236212504_)
                                               (if (gx#stx-null?
                                                    _tl1235612488_)
                                                   ((lambda (_L12507_
                                                             _L12508_
                                                             _L12509_
                                                             _L12510_
                                                             _L12511_
                                                             _L12512_)
                                                      (let ((_super-t12558_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12511_)
                         (gxc#generate-runtime-binding-id _L12511_)
                         '#f)))
                (let ((_super-type12560_
                       (if _super-t12558_
                           (gxc#optimizer-resolve-type _super-t12558_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type12560_
                              (not (##structure-instance-of?
                                    _super-type12560_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx12249_
                           _L12511_)
                          '#!void)
                      (let ((_fields12576_ (gx#stx-e _L12510_))
                            (_xfields12577_
                             (if _super-type12560_
                                 (let ((_super-fields1256212565_
                                        (##structure-ref
                                         _super-type12560_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1256312567_
                                        (##structure-ref
                                         _super-type12560_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1256212565_
                                       (if _super-xfields1256312567_
                                           (let ((_super-fields12570_
                                                  _super-fields1256212565_)
                                                 (_super-xfields12571_
                                                  _super-xfields1256312567_))
                                             (fx+ _super-fields12570_
                                                  _super-xfields12571_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist12578_ (gx#stx-e _L12508_))
                            (_ctor12579_
                             (let ((_$e12573_ (gx#stx-e _L12507_)))
                               (if _$e12573_
                                   (values _$e12573_)
                                   (if _super-type12560_
                                       (##structure-ref
                                        _super-type12560_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t12558_ '#!void '#f))))))
                        (let ((__obj19118
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19118
                             (gx#stx-e _L12512_)
                             _super-t12558_
                             _fields12576_
                             _xfields12577_
                             _ctor12579_
                             _plist12578_)
                            __obj19118))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1236112502_
                                                    _hd1235212478_
                                                    _hd1234312454_
                                                    _hd1234012446_
                                                    _hd1233112422_
                                                    _hd1232212398_)
                                                   (_g1225312374_
                                                    _g1225512377_))
                                               (_g1225312374_ _g1225512377_))))
                                       (_g1225312374_ _g1225512377_))
                                   (_g1225312374_ _g1225512377_))
                               (_g1225312374_ _g1225512377_))))
                       (_g1225312374_ _g1225512377_))))
               (_g1225312374_ _g1225512377_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1225312374_
                                                    _g1225512377_))))
                                           (_g1225312374_ _g1225512377_))
                                       (_g1225312374_ _g1225512377_))
                                   (_g1225312374_ _g1225512377_))))
                           (_g1225312374_ _g1225512377_))))
                   (_g1225312374_ _g1225512377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1225312374_
                                                    _g1225512377_))
                                               (_g1225312374_ _g1225512377_))))
                                       (_g1225312374_ _g1225512377_))
                                   (_g1225312374_ _g1225512377_))
                               (_g1225312374_ _g1225512377_))))
                       (_g1225312374_ _g1225512377_))))
               (_g1225312374_ _g1225512377_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1225312374_
                                                    _g1225512377_))))
                                           (_g1225312374_ _g1225512377_))
                                       (_g1225312374_ _g1225512377_))
                                   (_g1225312374_ _g1225512377_))))
                           (_g1225312374_ _g1225512377_))))
                   (_g1225312374_ _g1225512377_))
               (_g1225312374_ _g1225512377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1225312374_ _g1225512377_))
                                           (_g1225312374_ _g1225512377_))
                                       (_g1225312374_ _g1225512377_))))
                               (_g1225312374_ _g1225512377_))))
                       (_g1225312374_ _g1225512377_)))))
            (let ((_g1225112761_
                   (lambda (_g1225512584_)
                     (if (gx#stx-pair? _g1225512584_)
                         (let ((_e1226112586_ (gx#stx-e _g1225512584_)))
                           (let ((_hd1226212589_ (##car _e1226112586_))
                                 (_tl1226312591_ (##cdr _e1226112586_)))
                             (if (gx#stx-pair? _hd1226212589_)
                                 (let ((_e1226412594_
                                        (gx#stx-e _hd1226212589_)))
                                   (let ((_hd1226512597_ (##car _e1226412594_))
                                         (_tl1226612599_
                                          (##cdr _e1226412594_)))
                                     (if (gx#identifier? _hd1226512597_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1226512597_)
                                             (if (gx#stx-pair? _tl1226612599_)
                                                 (let ((_e1226712602_
                                                        (gx#stx-e
                                                         _tl1226612599_)))
                                                   (let ((_hd1226812605_
                                                          (##car _e1226712602_))
                                                         (_tl1226912607_
                                                          (##cdr _e1226712602_)))
                                                     (if (gx#stx-null?
                                                          _tl1226912607_)
                                                         (if (gx#stx-pair?
                                                              _tl1226312591_)
                                                             (let ((_e1227012610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1226312591_)))
                       (let ((_hd1227112613_ (##car _e1227012610_))
                             (_tl1227212615_ (##cdr _e1227012610_)))
                         (if (gx#stx-pair? _hd1227112613_)
                             (let ((_e1227312618_ (gx#stx-e _hd1227112613_)))
                               (let ((_hd1227412621_ (##car _e1227312618_))
                                     (_tl1227512623_ (##cdr _e1227312618_)))
                                 (if (gx#identifier? _hd1227412621_)
                                     (if (gx#stx-eq? '%#quote _hd1227412621_)
                                         (if (gx#stx-pair? _tl1227512623_)
                                             (let ((_e1227612626_
                                                    (gx#stx-e _tl1227512623_)))
                                               (let ((_hd1227712629_
                                                      (##car _e1227612626_))
                                                     (_tl1227812631_
                                                      (##cdr _e1227612626_)))
                                                 (if (gx#stx-datum?
                                                      _hd1227712629_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1227712629_)
                         '#f)
                 (if (gx#stx-null? _tl1227812631_)
                     (if (gx#stx-pair? _tl1227212615_)
                         (let ((_e1227912634_ (gx#stx-e _tl1227212615_)))
                           (let ((_hd1228012637_ (##car _e1227912634_))
                                 (_tl1228112639_ (##cdr _e1227912634_)))
                             (if (gx#stx-pair? _hd1228012637_)
                                 (let ((_e1228212642_
                                        (gx#stx-e _hd1228012637_)))
                                   (let ((_hd1228312645_ (##car _e1228212642_))
                                         (_tl1228412647_
                                          (##cdr _e1228212642_)))
                                     (if (gx#identifier? _hd1228312645_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1228312645_)
                                             (if (gx#stx-pair? _tl1228412647_)
                                                 (let ((_e1228512650_
                                                        (gx#stx-e
                                                         _tl1228412647_)))
                                                   (let ((_hd1228612653_
                                                          (##car _e1228512650_))
                                                         (_tl1228712655_
                                                          (##cdr _e1228512650_)))
                                                     (if (gx#stx-null?
                                                          _tl1228712655_)
                                                         (if (gx#stx-pair?
                                                              _tl1228112639_)
                                                             (let ((_e1228812658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1228112639_)))
                       (let ((_hd1228912661_ (##car _e1228812658_))
                             (_tl1229012663_ (##cdr _e1228812658_)))
                         (if (gx#stx-pair? _tl1229012663_)
                             (let ((_e1229112666_ (gx#stx-e _tl1229012663_)))
                               (let ((_hd1229212669_ (##car _e1229112666_))
                                     (_tl1229312671_ (##cdr _e1229112666_)))
                                 (if (gx#stx-pair? _hd1229212669_)
                                     (let ((_e1229412674_
                                            (gx#stx-e _hd1229212669_)))
                                       (let ((_hd1229512677_
                                              (##car _e1229412674_))
                                             (_tl1229612679_
                                              (##cdr _e1229412674_)))
                                         (if (gx#identifier? _hd1229512677_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1229512677_)
                                                 (if (gx#stx-pair?
                                                      _tl1229612679_)
                                                     (let ((_e1229712682_
                                                            (gx#stx-e
                                                             _tl1229612679_)))
                                                       (let ((_hd1229812685_
                                                              (##car _e1229712682_))
                                                             (_tl1229912687_
                                                              (##cdr _e1229712682_)))
                                                         (if (gx#stx-null?
                                                              _tl1229912687_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1229312671_)
                         (let ((_e1230012690_ (gx#stx-e _tl1229312671_)))
                           (let ((_hd1230112693_ (##car _e1230012690_))
                                 (_tl1230212695_ (##cdr _e1230012690_)))
                             (if (gx#stx-pair? _hd1230112693_)
                                 (let ((_e1230312698_
                                        (gx#stx-e _hd1230112693_)))
                                   (let ((_hd1230412701_ (##car _e1230312698_))
                                         (_tl1230512703_
                                          (##cdr _e1230312698_)))
                                     (if (gx#identifier? _hd1230412701_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1230412701_)
                                             (if (gx#stx-pair? _tl1230512703_)
                                                 (let ((_e1230612706_
                                                        (gx#stx-e
                                                         _tl1230512703_)))
                                                   (let ((_hd1230712709_
                                                          (##car _e1230612706_))
                                                         (_tl1230812711_
                                                          (##cdr _e1230612706_)))
                                                     (if (gx#stx-null?
                                                          _tl1230812711_)
                                                         (if (gx#stx-null?
                                                              _tl1230212695_)
                                                             ((lambda (_L12714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L12715_
                               _L12716_
                               _L12717_
                               _L12718_)
                        (let ((__obj19119
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19119
                             (gx#stx-e _L12718_)
                             '#f
                             (gx#stx-e _L12717_)
                             '0
                             (gx#stx-e _L12714_)
                             (gx#stx-e _L12715_))
                            __obj19119)))
                      _hd1230712709_
                      _hd1229812685_
                      _hd1228912661_
                      _hd1228612653_
                      _hd1226812605_)
                     (_g1225212581_ _g1225512584_))
                 (_g1225212581_ _g1225512584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1225212581_ _g1225512584_))
                                             (_g1225212581_ _g1225512584_))
                                         (_g1225212581_ _g1225512584_))))
                                 (_g1225212581_ _g1225512584_))))
                         (_g1225212581_ _g1225512584_))
                     (_g1225212581_ _g1225512584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1225212581_
                                                      _g1225512584_))
                                                 (_g1225212581_ _g1225512584_))
                                             (_g1225212581_ _g1225512584_))))
                                     (_g1225212581_ _g1225512584_))))
                             (_g1225212581_ _g1225512584_))))
                     (_g1225212581_ _g1225512584_))
                 (_g1225212581_ _g1225512584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1225212581_ _g1225512584_))
                                             (_g1225212581_ _g1225512584_))
                                         (_g1225212581_ _g1225512584_))))
                                 (_g1225212581_ _g1225512584_))))
                         (_g1225212581_ _g1225512584_))
                     (_g1225212581_ _g1225512584_))
                 (_g1225212581_ _g1225512584_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1225212581_
                                                      _g1225512584_))))
                                             (_g1225212581_ _g1225512584_))
                                         (_g1225212581_ _g1225512584_))
                                     (_g1225212581_ _g1225512584_))))
                             (_g1225212581_ _g1225512584_))))
                     (_g1225212581_ _g1225512584_))
                 (_g1225212581_ _g1225512584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1225212581_ _g1225512584_))
                                             (_g1225212581_ _g1225512584_))
                                         (_g1225212581_ _g1225512584_))))
                                 (_g1225212581_ _g1225512584_))))
                         (_g1225212581_ _g1225512584_)))))
              (_g1225112761_ _args12250_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx12175_ _args12176_)
      (let ((_g1217912195_
             (lambda (_g1218012192_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1218012192_))))
        (let ((_g1217812202_ (lambda (_g1218012198_) ((lambda () '#f)))))
          (let ((_g1217712246_
                 (lambda (_g1218012205_)
                   (if (gx#stx-pair? _g1218012205_)
                       (let ((_e1218212207_ (gx#stx-e _g1218012205_)))
                         (let ((_hd1218312210_ (##car _e1218212207_))
                               (_tl1218412212_ (##cdr _e1218212207_)))
                           (if (gx#stx-pair? _hd1218312210_)
                               (let ((_e1218512215_ (gx#stx-e _hd1218312210_)))
                                 (let ((_hd1218612218_ (##car _e1218512215_))
                                       (_tl1218712220_ (##cdr _e1218512215_)))
                                   (if (gx#identifier? _hd1218612218_)
                                       (if (gx#stx-eq? '%#ref _hd1218612218_)
                                           (if (gx#stx-pair? _tl1218712220_)
                                               (let ((_e1218812223_
                                                      (gx#stx-e
                                                       _tl1218712220_)))
                                                 (let ((_hd1218912226_
                                                        (##car _e1218812223_))
                                                       (_tl1219012228_
                                                        (##cdr _e1218812223_)))
                                                   (if (gx#stx-null?
                                                        _tl1219012228_)
                                                       (if (gx#stx-null?
                                                            _tl1218412212_)
                                                           ((lambda (_L12231_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L12231_)))
                                                            _hd1218912226_)
                                                           (_g1217812202_
                                                            _g1218012205_))
                                                       (_g1217812202_
                                                        _g1218012205_))))
                                               (_g1217812202_ _g1218012205_))
                                           (_g1217812202_ _g1218012205_))
                                       (_g1217812202_ _g1218012205_))))
                               (_g1217812202_ _g1218012205_))))
                       (_g1217812202_ _g1218012205_)))))
            (_g1217712246_ _args12176_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx12059_ _args12060_)
      (let ((_g1206312089_
             (lambda (_g1206412086_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1206412086_))))
        (let ((_g1206212096_ (lambda (_g1206412092_) ((lambda () '#f)))))
          (let ((_g1206112172_
                 (lambda (_g1206412099_)
                   (if (gx#stx-pair? _g1206412099_)
                       (let ((_e1206712101_ (gx#stx-e _g1206412099_)))
                         (let ((_hd1206812104_ (##car _e1206712101_))
                               (_tl1206912106_ (##cdr _e1206712101_)))
                           (if (gx#stx-pair? _hd1206812104_)
                               (let ((_e1207012109_ (gx#stx-e _hd1206812104_)))
                                 (let ((_hd1207112112_ (##car _e1207012109_))
                                       (_tl1207212114_ (##cdr _e1207012109_)))
                                   (if (gx#identifier? _hd1207112112_)
                                       (if (gx#stx-eq? '%#ref _hd1207112112_)
                                           (if (gx#stx-pair? _tl1207212114_)
                                               (let ((_e1207312117_
                                                      (gx#stx-e
                                                       _tl1207212114_)))
                                                 (let ((_hd1207412120_
                                                        (##car _e1207312117_))
                                                       (_tl1207512122_
                                                        (##cdr _e1207312117_)))
                                                   (if (gx#stx-null?
                                                        _tl1207512122_)
                                                       (if (gx#stx-pair?
                                                            _tl1206912106_)
                                                           (let ((_e1207612125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1206912106_)))
                     (let ((_hd1207712128_ (##car _e1207612125_))
                           (_tl1207812130_ (##cdr _e1207612125_)))
                       (if (gx#stx-pair? _hd1207712128_)
                           (let ((_e1207912133_ (gx#stx-e _hd1207712128_)))
                             (let ((_hd1208012136_ (##car _e1207912133_))
                                   (_tl1208112138_ (##cdr _e1207912133_)))
                               (if (gx#identifier? _hd1208012136_)
                                   (if (gx#stx-eq? '%#quote _hd1208012136_)
                                       (if (gx#stx-pair? _tl1208112138_)
                                           (let ((_e1208212141_
                                                  (gx#stx-e _tl1208112138_)))
                                             (let ((_hd1208312144_
                                                    (##car _e1208212141_))
                                                   (_tl1208412146_
                                                    (##cdr _e1208212141_)))
                                               (if (gx#stx-null?
                                                    _tl1208412146_)
                                                   (if (gx#stx-null?
                                                        _tl1207812130_)
                                                       ((lambda (_L12149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12150_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#generate-runtime-binding-id _L12150_)
                   (gx#stx-e _L12149_)))
                _hd1208312144_
                _hd1207412120_)
               (_g1206212096_ _g1206412099_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1206212096_
                                                    _g1206412099_))))
                                           (_g1206212096_ _g1206412099_))
                                       (_g1206212096_ _g1206412099_))
                                   (_g1206212096_ _g1206412099_))))
                           (_g1206212096_ _g1206412099_))))
                   (_g1206212096_ _g1206412099_))
               (_g1206212096_ _g1206412099_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1206212096_ _g1206412099_))
                                           (_g1206212096_ _g1206412099_))
                                       (_g1206212096_ _g1206412099_))))
                               (_g1206212096_ _g1206412099_))))
                       (_g1206212096_ _g1206412099_)))))
            (_g1206112172_ _args12060_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx11943_ _args11944_)
      (let ((_g1194711973_
             (lambda (_g1194811970_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1194811970_))))
        (let ((_g1194611980_ (lambda (_g1194811976_) ((lambda () '#f)))))
          (let ((_g1194512056_
                 (lambda (_g1194811983_)
                   (if (gx#stx-pair? _g1194811983_)
                       (let ((_e1195111985_ (gx#stx-e _g1194811983_)))
                         (let ((_hd1195211988_ (##car _e1195111985_))
                               (_tl1195311990_ (##cdr _e1195111985_)))
                           (if (gx#stx-pair? _hd1195211988_)
                               (let ((_e1195411993_ (gx#stx-e _hd1195211988_)))
                                 (let ((_hd1195511996_ (##car _e1195411993_))
                                       (_tl1195611998_ (##cdr _e1195411993_)))
                                   (if (gx#identifier? _hd1195511996_)
                                       (if (gx#stx-eq? '%#ref _hd1195511996_)
                                           (if (gx#stx-pair? _tl1195611998_)
                                               (let ((_e1195712001_
                                                      (gx#stx-e
                                                       _tl1195611998_)))
                                                 (let ((_hd1195812004_
                                                        (##car _e1195712001_))
                                                       (_tl1195912006_
                                                        (##cdr _e1195712001_)))
                                                   (if (gx#stx-null?
                                                        _tl1195912006_)
                                                       (if (gx#stx-pair?
                                                            _tl1195311990_)
                                                           (let ((_e1196012009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1195311990_)))
                     (let ((_hd1196112012_ (##car _e1196012009_))
                           (_tl1196212014_ (##cdr _e1196012009_)))
                       (if (gx#stx-pair? _hd1196112012_)
                           (let ((_e1196312017_ (gx#stx-e _hd1196112012_)))
                             (let ((_hd1196412020_ (##car _e1196312017_))
                                   (_tl1196512022_ (##cdr _e1196312017_)))
                               (if (gx#identifier? _hd1196412020_)
                                   (if (gx#stx-eq? '%#quote _hd1196412020_)
                                       (if (gx#stx-pair? _tl1196512022_)
                                           (let ((_e1196612025_
                                                  (gx#stx-e _tl1196512022_)))
                                             (let ((_hd1196712028_
                                                    (##car _e1196612025_))
                                                   (_tl1196812030_
                                                    (##cdr _e1196612025_)))
                                               (if (gx#stx-null?
                                                    _tl1196812030_)
                                                   (if (gx#stx-null?
                                                        _tl1196212014_)
                                                       ((lambda (_L12033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12034_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#generate-runtime-binding-id _L12034_)
                   (gx#stx-e _L12033_)))
                _hd1196712028_
                _hd1195812004_)
               (_g1194611980_ _g1194811983_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1194611980_
                                                    _g1194811983_))))
                                           (_g1194611980_ _g1194811983_))
                                       (_g1194611980_ _g1194811983_))
                                   (_g1194611980_ _g1194811983_))))
                           (_g1194611980_ _g1194811983_))))
                   (_g1194611980_ _g1194811983_))
               (_g1194611980_ _g1194811983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1194611980_ _g1194811983_))
                                           (_g1194611980_ _g1194811983_))
                                       (_g1194611980_ _g1194811983_))))
                               (_g1194611980_ _g1194811983_))))
                       (_g1194611980_ _g1194811983_)))))
            (_g1194512056_ _args11944_))))))
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
    (lambda (_stx11892_)
      (let ((_g1189411907_
             (lambda (_g1189511904_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1189511904_))))
        (let ((_g1189311940_
               (lambda (_g1189511910_)
                 (if (gx#stx-pair? _g1189511910_)
                     (let ((_e1189711912_ (gx#stx-e _g1189511910_)))
                       (let ((_hd1189811915_ (##car _e1189711912_))
                             (_tl1189911917_ (##cdr _e1189711912_)))
                         (if (gx#stx-pair? _tl1189911917_)
                             (let ((_e1190011920_ (gx#stx-e _tl1189911917_)))
                               (let ((_hd1190111923_ (##car _e1190011920_))
                                     (_tl1190211925_ (##cdr _e1190011920_)))
                                 (if (gx#stx-null? _tl1190211925_)
                                     ((lambda (_L11928_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L11928_)))
                                      _hd1190111923_)
                                     (_g1189411907_ _g1189511910_))))
                             (_g1189411907_ _g1189511910_))))
                     (_g1189411907_ _g1189511910_)))))
          (_g1189311940_ _stx11892_)))))
  (define gxc#optimize-call%
    (lambda (_stx11798_)
      (let ((_g1180111821_
             (lambda (_g1180211818_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1180211818_))))
        (let ((_g1180011828_
               (lambda (_g1180211824_)
                 ((lambda () (gxc#xform-call% _stx11798_))))))
          (let ((_g1179911889_
                 (lambda (_g1180211831_)
                   (if (gx#stx-pair? _g1180211831_)
                       (let ((_e1180511833_ (gx#stx-e _g1180211831_)))
                         (let ((_hd1180611836_ (##car _e1180511833_))
                               (_tl1180711838_ (##cdr _e1180511833_)))
                           (if (gx#stx-pair? _tl1180711838_)
                               (let ((_e1180811841_ (gx#stx-e _tl1180711838_)))
                                 (let ((_hd1180911844_ (##car _e1180811841_))
                                       (_tl1181011846_ (##cdr _e1180811841_)))
                                   (if (gx#stx-pair? _hd1180911844_)
                                       (let ((_e1181111849_
                                              (gx#stx-e _hd1180911844_)))
                                         (let ((_hd1181211852_
                                                (##car _e1181111849_))
                                               (_tl1181311854_
                                                (##cdr _e1181111849_)))
                                           (if (gx#identifier? _hd1181211852_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1181211852_)
                                                   (if (gx#stx-pair?
                                                        _tl1181311854_)
                                                       (let ((_e1181411857_
                                                              (gx#stx-e
                                                               _tl1181311854_)))
                                                         (let ((_hd1181511860_
                                                                (##car _e1181411857_))
                                                               (_tl1181611862_
                                                                (##cdr _e1181411857_)))
                                                           (if (gx#stx-null?
                                                                _tl1181611862_)
                                                               ((lambda (_L11865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11866_)
                          (let ((_rator-id11884_
                                 (gxc#generate-runtime-binding-id _L11866_)))
                            (let ((_rator-type11886_
                                   (gxc#optimizer-resolve-type
                                    _rator-id11884_)))
                              (let ()
                                (if (##structure-instance-of?
                                     _rator-type11886_
                                     'gxc#!procedure::t)
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id11884_
                                       '" => "
                                       _rator-type11886_
                                       '" "
                                       (##structure-ref
                                        _rator-type11886_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type11886_
                                       'optimize-call
                                       _stx11798_
                                       _L11865_))
                                    (if (not _rator-type11886_)
                                        (gxc#xform-call% _stx11798_)
                                        (gxc#raise-compile-error
                                         '"Illegal application; not a procedure"
                                         _stx11798_
                                         _rator-type11886_)))))))
                        _tl1181011846_
                        _hd1181511860_)
                       (_g1180011828_ _g1180211831_))))
               (_g1180011828_ _g1180211831_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1180011828_
                                                    _g1180211831_))
                                               (_g1180011828_ _g1180211831_))))
                                       (_g1180011828_ _g1180211831_))))
                               (_g1180011828_ _g1180211831_))))
                       (_g1180011828_ _g1180211831_)))))
            (_g1179911889_ _stx11798_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self11653_ _stx11654_ _args11655_)
      (let ((_self1165611662_ _self11653_))
        (let ((_E1165811666_
               (lambda () (error '"No clause matching" _self1165611662_))))
          (let ((_K1165911790_
                 (lambda (_struct-t11669_)
                   (let ((_struct-type11671_
                          (gxc#optimizer-resolve-type _struct-t11669_)))
                     (let ((_struct-type1167211686_ _struct-type11671_))
                       (let ((_E1167611690_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1167211686_))))
                         (let ((_else1167511694_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11654_
                                   _struct-t11669_
                                   _struct-type11671_))))
                           (let ((_try-match1167411702_
                                  (lambda ()
                                    (let ((_K1167711699_
                                           (lambda ()
                                             (gxc#xform-call% _stx11654_))))
                                      (if (##eq? _struct-type1167211686_ '#f)
                                          (_K1167711699_)
                                          (_else1167511694_))))))
                             (let ((_K1167811765_
                                    (lambda (_plist11705_
                                             _struct-type-id11706_)
                                      (let ((_g1170911719_
                                             (lambda (_g1171011716_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1171011716_))))
                                        (let ((_g1170811726_
                                               (lambda (_g1171011722_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx11654_))))))
                                          (let ((_g1170711762_
                                                 (lambda (_g1171011729_)
                                                   (if (gx#stx-pair?
                                                        _g1171011729_)
                                                       (let ((_e1171211731_
                                                              (gx#stx-e
                                                               _g1171011729_)))
                                                         (let ((_hd1171311734_
                                                                (##car _e1171211731_))
                                                               (_tl1171411736_
                                                                (##cdr _e1171211731_)))
                                                           (if (gx#stx-null?
                                                                _tl1171411736_)
                                                               ((lambda (_L11739_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr11759_ (gxc#compile-e _L11739_))
                                (_op11760_
                                 (if (if _plist11705_
                                         (assgetq 'final: _plist11705_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op11760_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id11706_
                                                     '()))
                                         (cons _expr11759_ '())))
                             _stx11654_)))
                        _hd1171311734_)
                       (_g1170811726_ _g1171011729_))))
               (_g1170811726_ _g1171011729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1170711762_ _args11655_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1167211686_)
                                   (let ((_e1167911768_
                                          (##vector-ref
                                           _struct-type1167211686_
                                           '1)))
                                     (let ((_struct-type-id11771_
                                            _e1167911768_))
                                       (let ((_e1168011773_
                                              (##vector-ref
                                               _struct-type1167211686_
                                               '2)))
                                         (let ((_e1168111776_
                                                (##vector-ref
                                                 _struct-type1167211686_
                                                 '3)))
                                           (let ((_e1168211779_
                                                  (##vector-ref
                                                   _struct-type1167211686_
                                                   '4)))
                                             (let ((_e1168311782_
                                                    (##vector-ref
                                                     _struct-type1167211686_
                                                     '5)))
                                               (let ((_e1168411785_
                                                      (##vector-ref
                                                       _struct-type1167211686_
                                                       '6)))
                                                 (let ((_plist11788_
                                                        _e1168411785_))
                                                   (_K1167811765_
                                                    _plist11788_
                                                    _struct-type-id11771_)))))))))
                                   (_try-match1167411702_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self1165611662_)
                (let ((_e1166011793_ (##vector-ref _self1165611662_ '1)))
                  (let ((_struct-t11796_ _e1166011793_))
                    (_K1165911790_ _struct-t11796_)))
                (_E1165811666_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self11549_ _stx11550_ _args11551_)
      (let ((_self1155211558_ _self11549_))
        (let ((_E1155411562_
               (lambda () (error '"No clause matching" _self1155211558_))))
          (let ((_K1155511645_
                 (lambda (_struct-t11565_)
                   (let ((_struct-type11567_
                          (gxc#optimizer-resolve-type _struct-t11565_)))
                     (let ((_struct-type1156811581_ _struct-type11567_))
                       (let ((_E1157211585_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1156811581_))))
                         (let ((_else1157111589_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx11550_
                                   _struct-t11565_
                                   _struct-type11567_))))
                           (let ((_try-match1157011597_
                                  (lambda ()
                                    (let ((_K1157311594_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t11565_)
                                               (gxc#xform-call% _stx11550_)))))
                                      (if (##eq? _struct-type1156811581_ '#f)
                                          (_K1157311594_)
                                          (_else1157111589_))))))
                             (let ((_K1157411619_
                                    (lambda (_ctor11600_
                                             _xfields11601_
                                             _fields11602_
                                             _type-id11603_)
                                      (let ((_args11605_
                                             (map gxc#compile-e _args11551_)))
                                        (let ((_$e11607_
                                               (if _ctor11600_
                                                   (if _xfields11601_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type11567_
                                                        _ctor11600_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e11607_
                                              ((lambda (_kons11610_)
                                                 (let ((_$obj11612_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj11612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t11565_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields11602_ _xfields11601_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons11610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj11612_ '())) _args11605_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx11550_))
                                          (cons (cons '%#ref
                                                      (cons _$obj11612_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx11550_)))
                                               _$e11607_)
                                              (if (let ((_$e11614_
                                                         _ctor11600_))
                                                    (if _$e11614_
                                                        _$e11614_
                                                        (not _xfields11601_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t11565_ '()))
                             _args11605_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx11550_)
                                                  (let ((_arity11617_
                                                         (fx+ _fields11602_
                                                              _xfields11601_)))
                                                    (if (fx= _arity11617_
                                                             (length _args11605_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t11565_ '()))
                                   _args11605_)))
                 _stx11550_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx11550_
                 _struct-t11565_
                 _arity11617_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1156811581_)
                                   (let ((_e1157511622_
                                          (##vector-ref
                                           _struct-type1156811581_
                                           '1)))
                                     (let ((_type-id11625_ _e1157511622_))
                                       (let ((_e1157611627_
                                              (##vector-ref
                                               _struct-type1156811581_
                                               '2)))
                                         (let ((_e1157711630_
                                                (##vector-ref
                                                 _struct-type1156811581_
                                                 '3)))
                                           (let ((_fields11633_ _e1157711630_))
                                             (let ((_e1157811635_
                                                    (##vector-ref
                                                     _struct-type1156811581_
                                                     '4)))
                                               (let ((_xfields11638_
                                                      _e1157811635_))
                                                 (let ((_e1157911640_
                                                        (##vector-ref
                                                         _struct-type1156811581_
                                                         '5)))
                                                   (let ((_ctor11643_
                                                          _e1157911640_))
                                                     (_K1157411619_
                                                      _ctor11643_
                                                      _xfields11638_
                                                      _fields11633_
                                                      _type-id11625_))))))))))
                                   (_try-match1157011597_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self1155211558_)
                (let ((_e1155611648_ (##vector-ref _self1155211558_ '1)))
                  (let ((_struct-t11651_ _e1155611648_))
                    (_K1155511645_ _struct-t11651_)))
                (_E1155411562_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self11402_ _stx11403_ _args11404_)
      (let ((_self1140511412_ _self11402_))
        (let ((_E1140711416_
               (lambda () (error '"No clause matching" _self1140511412_))))
          (let ((_K1140811536_
                 (lambda (_off11419_ _struct-t11420_)
                   (let ((_struct-type11422_
                          (gxc#optimizer-resolve-type _struct-t11420_)))
                     (let ((_struct-type1142311435_ _struct-type11422_))
                       (let ((_E1142711439_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1142311435_))))
                         (let ((_else1142611443_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11403_
                                   _struct-t11420_
                                   _struct-type11422_))))
                           (let ((_try-match1142511451_
                                  (lambda ()
                                    (let ((_K1142811448_
                                           (lambda ()
                                             (gxc#xform-call% _stx11403_))))
                                      (if (##eq? _struct-type1142311435_ '#f)
                                          (_K1142811448_)
                                          (_else1142611443_))))))
                             (let ((_K1142911515_
                                    (lambda (_xfields11454_
                                             _fields11455_
                                             _struct-type-id11456_)
                                      (if _xfields11454_
                                          (let ((_g1145911469_
                                                 (lambda (_g1146011466_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1146011466_))))
                                            (let ((_g1145811476_
                                                   (lambda (_g1146011472_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx11403_))))))
                                              (let ((_g1145711512_
                                                     (lambda (_g1146011479_)
                                                       (if (gx#stx-pair?
                                                            _g1146011479_)
                                                           (let ((_e1146211481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1146011479_)))
                     (let ((_hd1146311484_ (##car _e1146211481_))
                           (_tl1146411486_ (##cdr _e1146211481_)))
                       (if (gx#stx-null? _tl1146411486_)
                           ((lambda (_L11489_)
                              (let ((_expr11509_ (gxc#compile-e _L11489_))
                                    (_off11510_
                                     (fx+ _off11419_ _xfields11454_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t11420_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off11510_ '()))
                                                   (cons _expr11509_ '()))))
                                 _stx11403_)))
                            _hd1146311484_)
                           (_g1145811476_ _g1146011479_))))
                   (_g1145811476_ _g1146011479_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1145711512_ _args11404_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id11456_)
                                            (gxc#xform-call% _stx11403_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1142311435_)
                                   (let ((_e1143011518_
                                          (##vector-ref
                                           _struct-type1142311435_
                                           '1)))
                                     (let ((_struct-type-id11521_
                                            _e1143011518_))
                                       (let ((_e1143111523_
                                              (##vector-ref
                                               _struct-type1142311435_
                                               '2)))
                                         (let ((_e1143211526_
                                                (##vector-ref
                                                 _struct-type1142311435_
                                                 '3)))
                                           (let ((_fields11529_ _e1143211526_))
                                             (let ((_e1143311531_
                                                    (##vector-ref
                                                     _struct-type1142311435_
                                                     '4)))
                                               (let ((_xfields11534_
                                                      _e1143311531_))
                                                 (_K1142911515_
                                                  _xfields11534_
                                                  _fields11529_
                                                  _struct-type-id11521_))))))))
                                   (_try-match1142511451_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self1140511412_)
                (let ((_e1140911539_ (##vector-ref _self1140511412_ '1)))
                  (let ((_struct-t11542_ _e1140911539_))
                    (let ((_e1141011544_ (##vector-ref _self1140511412_ '2)))
                      (let ((_off11547_ _e1141011544_))
                        (_K1140811536_ _off11547_ _struct-t11542_)))))
                (_E1140711416_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self11238_ _stx11239_ _args11240_)
      (let ((_self1124111248_ _self11238_))
        (let ((_E1124311252_
               (lambda () (error '"No clause matching" _self1124111248_))))
          (let ((_K1124411389_
                 (lambda (_off11255_ _struct-t11256_)
                   (let ((_struct-type11258_
                          (gxc#optimizer-resolve-type _struct-t11256_)))
                     (let ((_struct-type1125911271_ _struct-type11258_))
                       (let ((_E1126311275_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1125911271_))))
                         (let ((_else1126211279_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11239_
                                   _struct-t11256_
                                   _struct-type11258_))))
                           (let ((_try-match1126111287_
                                  (lambda ()
                                    (let ((_K1126411284_
                                           (lambda ()
                                             (gxc#xform-call% _stx11239_))))
                                      (if (##eq? _struct-type1125911271_ '#f)
                                          (_K1126411284_)
                                          (_else1126211279_))))))
                             (let ((_K1126511368_
                                    (lambda (_xfields11290_
                                             _fields11291_
                                             _struct-type-id11292_)
                                      (if _xfields11290_
                                          (let ((_g1129511309_
                                                 (lambda (_g1129611306_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1129611306_))))
                                            (let ((_g1129411316_
                                                   (lambda (_g1129611312_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx11239_))))))
                                              (let ((_g1129311365_
                                                     (lambda (_g1129611319_)
                                                       (if (gx#stx-pair?
                                                            _g1129611319_)
                                                           (let ((_e1129911321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1129611319_)))
                     (let ((_hd1130011324_ (##car _e1129911321_))
                           (_tl1130111326_ (##cdr _e1129911321_)))
                       (if (gx#stx-pair? _tl1130111326_)
                           (let ((_e1130211329_ (gx#stx-e _tl1130111326_)))
                             (let ((_hd1130311332_ (##car _e1130211329_))
                                   (_tl1130411334_ (##cdr _e1130211329_)))
                               (if (gx#stx-null? _tl1130411334_)
                                   ((lambda (_L11337_ _L11338_)
                                      (let ((_expr11361_
                                             (gxc#compile-e _L11338_))
                                            (_val11362_
                                             (gxc#compile-e _L11337_))
                                            (_off11363_
                                             (fx+ _off11255_
                                                  _xfields11290_
                                                  '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t11256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off11363_ '()))
                   (cons _expr11361_ (cons _val11362_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx11239_)))
                                    _hd1130311332_
                                    _hd1130011324_)
                                   (_g1129411316_ _g1129611319_))))
                           (_g1129411316_ _g1129611319_))))
                   (_g1129411316_ _g1129611319_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1129311365_ _args11240_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id11292_)
                                            (gxc#xform-call% _stx11239_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1125911271_)
                                   (let ((_e1126611371_
                                          (##vector-ref
                                           _struct-type1125911271_
                                           '1)))
                                     (let ((_struct-type-id11374_
                                            _e1126611371_))
                                       (let ((_e1126711376_
                                              (##vector-ref
                                               _struct-type1125911271_
                                               '2)))
                                         (let ((_e1126811379_
                                                (##vector-ref
                                                 _struct-type1125911271_
                                                 '3)))
                                           (let ((_fields11382_ _e1126811379_))
                                             (let ((_e1126911384_
                                                    (##vector-ref
                                                     _struct-type1125911271_
                                                     '4)))
                                               (let ((_xfields11387_
                                                      _e1126911384_))
                                                 (_K1126511368_
                                                  _xfields11387_
                                                  _fields11382_
                                                  _struct-type-id11374_))))))))
                                   (_try-match1126111287_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self1124111248_)
                (let ((_e1124511392_ (##vector-ref _self1124111248_ '1)))
                  (let ((_struct-t11395_ _e1124511392_))
                    (let ((_e1124611397_ (##vector-ref _self1124111248_ '2)))
                      (let ((_off11400_ _e1124611397_))
                        (_K1124411389_ _off11400_ _struct-t11395_)))))
                (_E1124311252_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self11194_ _stx11195_ _args11196_)
      (let ((_self1119711206_ _self11194_))
        (let ((_E1119911210_
               (lambda () (error '"No clause matching" _self1119711206_))))
          (let ((_K1120011217_
                 (lambda (_inline11213_ _dispatch11214_ _arity11215_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self11194_ _args11196_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx11195_
                          _arity11215_))
                     (if _inline11213_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline11213_ _stx11195_)
                             _stx11195_)))
                         (if _dispatch11214_
                             (begin
                               (gxc#verbose
                                '"dispatch lambda => "
                                _dispatch11214_)
                               (gxc#compile-e
                                (gxc#xform-wrap-source
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons _dispatch11214_ '()))
                                             _args11196_))
                                 _stx11195_)))
                             (gxc#xform-call% _stx11195_)))))))
            (if (struct-instance? gxc#!lambda::t _self1119711206_)
                (let ((_e1120111220_ (##vector-ref _self1119711206_ '1)))
                  (let ((_e1120211223_ (##vector-ref _self1119711206_ '2)))
                    (let ((_arity11226_ _e1120211223_))
                      (let ((_e1120311228_ (##vector-ref _self1119711206_ '3)))
                        (let ((_dispatch11231_ _e1120311228_))
                          (let ((_e1120411233_
                                 (##vector-ref _self1119711206_ '4)))
                            (let ((_inline11236_ _e1120411233_))
                              (_K1120011217_
                               _inline11236_
                               _dispatch11231_
                               _arity11226_))))))))
                (_E1119911210_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self11154_ _stx11155_ _args11156_)
      (let ((_self1115711164_ _self11154_))
        (let ((_E1115911168_
               (lambda () (error '"No clause matching" _self1115711164_))))
          (let ((_K1116011183_
                 (lambda (_clauses11171_)
                   (let ((_$e11177_
                          (find (lambda (_g1117211174_)
                                  (gxc#!lambda-arity-match?
                                   _g1117211174_
                                   _args11156_))
                                _clauses11171_)))
                     (if _$e11177_
                         ((lambda (_clause11180_)
                            (call-method
                             _clause11180_
                             'optimize-call
                             _stx11155_
                             _args11156_))
                          _$e11177_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx11155_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses11171_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses11171_)))))))
            (if (struct-instance? gxc#!case-lambda::t _self1115711164_)
                (let ((_e1116111186_ (##vector-ref _self1115711164_ '1)))
                  (let ((_e1116211189_ (##vector-ref _self1115711164_ '2)))
                    (let ((_clauses11192_ _e1116211189_))
                      (_K1116011183_ _clauses11192_))))
                (_E1115911168_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self11090_ _args11091_)
      (let ((_self1109211099_ _self11090_))
        (let ((_E1109411103_
               (lambda () (error '"No clause matching" _self1109211099_))))
          (let ((_K1109511143_
                 (lambda (_arity11106_)
                   (let ((_arity1110711116_ _arity11106_))
                     (let ((_E1111011120_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1110711116_))))
                       (let ((_try-match1110911136_
                              (lambda ()
                                (let ((_K1111111126_
                                       (lambda (_arity11124_)
                                         (fx>= (length _args11091_)
                                               _arity11124_))))
                                  (if (##pair? _arity1110711116_)
                                      (let ((_hd1111211129_
                                             (##car _arity1110711116_))
                                            (_tl1111311131_
                                             (##cdr _arity1110711116_)))
                                        (let ((_arity11134_ _hd1111211129_))
                                          (if (##null? _tl1111311131_)
                                              (_K1111111126_ _arity11134_)
                                              (_E1111011120_))))
                                      (_E1111011120_))))))
                         (let ((_K1111411140_
                                (lambda ()
                                  (fx= (length _args11091_) _arity11106_))))
                           (if (fixnum? _arity1110711116_)
                               (_K1111411140_)
                               (_try-match1110911136_)))))))))
            (if (struct-instance? gxc#!lambda::t _self1109211099_)
                (let ((_e1109611146_ (##vector-ref _self1109211099_ '1)))
                  (let ((_e1109711149_ (##vector-ref _self1109211099_ '2)))
                    (let ((_arity11152_ _e1109711149_))
                      (_K1109511143_ _arity11152_))))
                (_E1109411103_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx11030_)
      (let ((_g1103211046_
             (lambda (_g1103311043_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1103311043_))))
        (let ((_g1103111087_
               (lambda (_g1103311049_)
                 (if (gx#stx-pair? _g1103311049_)
                     (let ((_e1103611051_ (gx#stx-e _g1103311049_)))
                       (let ((_hd1103711054_ (##car _e1103611051_))
                             (_tl1103811056_ (##cdr _e1103611051_)))
                         (if (gx#stx-pair? _tl1103811056_)
                             (let ((_e1103911059_ (gx#stx-e _tl1103811056_)))
                               (let ((_hd1104011062_ (##car _e1103911059_))
                                     (_tl1104111064_ (##cdr _e1103911059_)))
                                 ((lambda (_L11067_ _L11068_)
                                    (let ((_ctx11081_
                                           (gx#syntax-local-e__0 _L11068_)))
                                      (let ((_code11083_
                                             (##structure-ref
                                              _ctx11081_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code11083_))
                                           gx#current-expander-context
                                           _ctx11081_)))))
                                  _tl1104111064_
                                  _hd1104011062_)))
                             (_g1103211046_ _g1103311049_))))
                     (_g1103211046_ _g1103311049_)))))
          (_g1103111087_ _stx11030_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx10840_)
      (let ((_generate-e10842_
             (lambda (_id11019_)
               (let ((_sym11021_
                      (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                          (gxc#generate-runtime-binding-id _id11019_)
                          '#f)))
                 (let ((_$e11023_
                        (if _sym11021_
                            (gxc#optimizer-lookup-type _sym11021_)
                            '#f)))
                   (if _$e11023_
                       ((lambda (_type11026_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym11021_)
                            (let ((_typedecl11028_
                                   (call-method _type11026_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym11021_
                                          (cons _typedecl11028_ '()))))))
                        _$e11023_)
                       '(begin)))))))
        (let ((_g1084510883_
               (lambda (_g1084610880_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1084610880_))))
          (let ((_g1084410964_
                 (lambda (_g1084610886_)
                   (if (gx#stx-pair? _g1084610886_)
                       (let ((_e1086110888_ (gx#stx-e _g1084610886_)))
                         (let ((_hd1086210891_ (##car _e1086110888_))
                               (_tl1086310893_ (##cdr _e1086110888_)))
                           (if (gx#stx-pair? _tl1086310893_)
                               (let ((_e1086410896_ (gx#stx-e _tl1086310893_)))
                                 (let ((_hd1086510899_ (##car _e1086410896_))
                                       (_tl1086610901_ (##cdr _e1086410896_)))
                                   (if (gx#stx-pair/null? _hd1086510899_)
                                       (if (fx>= (gx#stx-length _hd1086510899_)
                                                 '0)
                                           (let ((_g19182_
                                                  (gx#syntax-split-splice
                                                   _hd1086510899_
                                                   '0)))
                                             (begin
                                               (let ((_g19183_
                                                      (values-count _g19182_)))
                                                 (if (not (fx= _g19183_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19183_)))
                                               (let ((_target1086710904_
                                                      (values-ref _g19182_ 0))
                                                     (_tl1086910906_
                                                      (values-ref _g19182_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1086910906_)
                                                     (letrec ((_loop1087010909_
                                                               (lambda (_hd1086810912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1087410914_)
                         (if (gx#stx-pair? _hd1086810912_)
                             (let ((_e1087110917_ (gx#stx-e _hd1086810912_)))
                               (let ((_lp-hd1087210920_ (##car _e1087110917_))
                                     (_lp-tl1087310922_ (##cdr _e1087110917_)))
                                 (_loop1087010909_
                                  _lp-tl1087310922_
                                  (cons _lp-hd1087210920_ _id1087410914_))))
                             (let ((_id1087510925_ (reverse _id1087410914_)))
                               (if (gx#stx-pair? _tl1086610901_)
                                   (let ((_e1087610928_
                                          (gx#stx-e _tl1086610901_)))
                                     (let ((_hd1087710931_
                                            (##car _e1087610928_))
                                           (_tl1087810933_
                                            (##cdr _e1087610928_)))
                                       (if (gx#stx-null? _tl1087810933_)
                                           ((lambda (_L10936_)
                                              (let ((_types10962_
                                                     (map _generate-e10842_
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1095410957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1095510959_)
                              (cons _g1095410957_ _g1095510959_))
                            '()
                            _L10936_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'begin _types10962_)))
                                            _id1087510925_)
                                           (_g1084510883_ _g1084610886_))))
                                   (_g1084510883_ _g1084610886_)))))))
               (_loop1087010909_ _target1086710904_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1084510883_
                                                      _g1084610886_)))))
                                           (_g1084510883_ _g1084610886_))
                                       (_g1084510883_ _g1084610886_))))
                               (_g1084510883_ _g1084610886_))))
                       (_g1084510883_ _g1084610886_)))))
            (let ((_g1084311016_
                   (lambda (_g1084610967_)
                     (if (gx#stx-pair? _g1084610967_)
                         (let ((_e1084810969_ (gx#stx-e _g1084610967_)))
                           (let ((_hd1084910972_ (##car _e1084810969_))
                                 (_tl1085010974_ (##cdr _e1084810969_)))
                             (if (gx#stx-pair? _tl1085010974_)
                                 (let ((_e1085110977_
                                        (gx#stx-e _tl1085010974_)))
                                   (let ((_hd1085210980_ (##car _e1085110977_))
                                         (_tl1085310982_
                                          (##cdr _e1085110977_)))
                                     (if (gx#stx-pair? _hd1085210980_)
                                         (let ((_e1085410985_
                                                (gx#stx-e _hd1085210980_)))
                                           (let ((_hd1085510988_
                                                  (##car _e1085410985_))
                                                 (_tl1085610990_
                                                  (##cdr _e1085410985_)))
                                             (if (gx#stx-null? _tl1085610990_)
                                                 (if (gx#stx-pair?
                                                      _tl1085310982_)
                                                     (let ((_e1085710993_
                                                            (gx#stx-e
                                                             _tl1085310982_)))
                                                       (let ((_hd1085810996_
                                                              (##car _e1085710993_))
                                                             (_tl1085910998_
                                                              (##cdr _e1085710993_)))
                                                         (if (gx#stx-null?
                                                              _tl1085910998_)
                                                             ((lambda (_L11001_)
                                                                (_generate-e10842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11001_))
                      _hd1085510988_)
                     (_g1084410964_ _g1084610967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1084410964_
                                                      _g1084610967_))
                                                 (_g1084410964_
                                                  _g1084610967_))))
                                         (_g1084410964_ _g1084610967_))))
                                 (_g1084410964_ _g1084610967_))))
                         (_g1084410964_ _g1084610967_)))))
              (_g1084311016_ _stx10840_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx10394_)
      (let ((_g1039810500_
             (lambda (_g1039910497_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1039910497_))))
        (let ((_g1039710507_ (lambda (_g1039910503_) ((lambda () '(begin))))))
          (let ((_g1039610657_
                 (lambda (_g1039910510_)
                   (if (gx#stx-pair? _g1039910510_)
                       (let ((_e1045710512_ (gx#stx-e _g1039910510_)))
                         (let ((_hd1045810515_ (##car _e1045710512_))
                               (_tl1045910517_ (##cdr _e1045710512_)))
                           (if (gx#stx-pair? _tl1045910517_)
                               (let ((_e1046010520_ (gx#stx-e _tl1045910517_)))
                                 (let ((_hd1046110523_ (##car _e1046010520_))
                                       (_tl1046210525_ (##cdr _e1046010520_)))
                                   (if (gx#stx-pair? _hd1046110523_)
                                       (let ((_e1046310528_
                                              (gx#stx-e _hd1046110523_)))
                                         (let ((_hd1046410531_
                                                (##car _e1046310528_))
                                               (_tl1046510533_
                                                (##cdr _e1046310528_)))
                                           (if (gx#identifier? _hd1046410531_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1046410531_)
                                                   (if (gx#stx-pair?
                                                        _tl1046510533_)
                                                       (let ((_e1046610536_
                                                              (gx#stx-e
                                                               _tl1046510533_)))
                                                         (let ((_hd1046710539_
                                                                (##car _e1046610536_))
                                                               (_tl1046810541_
                                                                (##cdr _e1046610536_)))
                                                           (if (gx#stx-null?
                                                                _tl1046810541_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1046210525_)
                           (let ((_e1046910544_ (gx#stx-e _tl1046210525_)))
                             (let ((_hd1047010547_ (##car _e1046910544_))
                                   (_tl1047110549_ (##cdr _e1046910544_)))
                               (if (gx#stx-pair? _hd1047010547_)
                                   (let ((_e1047210552_
                                          (gx#stx-e _hd1047010547_)))
                                     (let ((_hd1047310555_
                                            (##car _e1047210552_))
                                           (_tl1047410557_
                                            (##cdr _e1047210552_)))
                                       (if (gx#identifier? _hd1047310555_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1047310555_)
                                               (if (gx#stx-pair?
                                                    _tl1047410557_)
                                                   (let ((_e1047510560_
                                                          (gx#stx-e
                                                           _tl1047410557_)))
                                                     (let ((_hd1047610563_
                                                            (##car _e1047510560_))
                                                           (_tl1047710565_
                                                            (##cdr _e1047510560_)))
                                                       (if (gx#stx-null?
                                                            _tl1047710565_)
                                                           (if (gx#stx-pair?
                                                                _tl1047110549_)
                                                               (let ((_e1047810568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1047110549_)))
                         (let ((_hd1047910571_ (##car _e1047810568_))
                               (_tl1048010573_ (##cdr _e1047810568_)))
                           (if (gx#stx-pair? _hd1047910571_)
                               (let ((_e1048110576_ (gx#stx-e _hd1047910571_)))
                                 (let ((_hd1048210579_ (##car _e1048110576_))
                                       (_tl1048310581_ (##cdr _e1048110576_)))
                                   (if (gx#identifier? _hd1048210579_)
                                       (if (gx#stx-eq? '%#quote _hd1048210579_)
                                           (if (gx#stx-pair? _tl1048310581_)
                                               (let ((_e1048410584_
                                                      (gx#stx-e
                                                       _tl1048310581_)))
                                                 (let ((_hd1048510587_
                                                        (##car _e1048410584_))
                                                       (_tl1048610589_
                                                        (##cdr _e1048410584_)))
                                                   (if (gx#stx-null?
                                                        _tl1048610589_)
                                                       (if (gx#stx-pair?
                                                            _tl1048010573_)
                                                           (let ((_e1048710592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1048010573_)))
                     (let ((_hd1048810595_ (##car _e1048710592_))
                           (_tl1048910597_ (##cdr _e1048710592_)))
                       (if (gx#stx-pair? _hd1048810595_)
                           (let ((_e1049010600_ (gx#stx-e _hd1048810595_)))
                             (let ((_hd1049110603_ (##car _e1049010600_))
                                   (_tl1049210605_ (##cdr _e1049010600_)))
                               (if (gx#identifier? _hd1049110603_)
                                   (if (gx#stx-eq? '%#ref _hd1049110603_)
                                       (if (gx#stx-pair? _tl1049210605_)
                                           (let ((_e1049310608_
                                                  (gx#stx-e _tl1049210605_)))
                                             (let ((_hd1049410611_
                                                    (##car _e1049310608_))
                                                   (_tl1049510613_
                                                    (##cdr _e1049310608_)))
                                               (if (gx#stx-null?
                                                    _tl1049510613_)
                                                   (if (gx#stx-null?
                                                        _tl1048910597_)
                                                       ((lambda (_L10616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10617_
                         _L10618_
                         _L10619_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#generate-runtime-binding-id _L10618_)
                                  (cons (gx#stx-e _L10617_)
                                        (cons (gxc#generate-runtime-binding-id
                                               _L10616_)
                                              (cons '#f '())))))
                      (_g1039710507_ _g1039910510_)))
                _hd1049410611_
                _hd1048510587_
                _hd1047610563_
                _hd1046710539_)
               (_g1039710507_ _g1039910510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1039710507_
                                                    _g1039910510_))))
                                           (_g1039710507_ _g1039910510_))
                                       (_g1039710507_ _g1039910510_))
                                   (_g1039710507_ _g1039910510_))))
                           (_g1039710507_ _g1039910510_))))
                   (_g1039710507_ _g1039910510_))
               (_g1039710507_ _g1039910510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1039710507_ _g1039910510_))
                                           (_g1039710507_ _g1039910510_))
                                       (_g1039710507_ _g1039910510_))))
                               (_g1039710507_ _g1039910510_))))
                       (_g1039710507_ _g1039910510_))
                   (_g1039710507_ _g1039910510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1039710507_
                                                    _g1039910510_))
                                               (_g1039710507_ _g1039910510_))
                                           (_g1039710507_ _g1039910510_))))
                                   (_g1039710507_ _g1039910510_))))
                           (_g1039710507_ _g1039910510_))
                       (_g1039710507_ _g1039910510_))))
               (_g1039710507_ _g1039910510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1039710507_
                                                    _g1039910510_))
                                               (_g1039710507_ _g1039910510_))))
                                       (_g1039710507_ _g1039910510_))))
                               (_g1039710507_ _g1039910510_))))
                       (_g1039710507_ _g1039910510_)))))
            (let ((_g1039510837_
                   (lambda (_g1039910660_)
                     (if (gx#stx-pair? _g1039910660_)
                         (let ((_e1040510662_ (gx#stx-e _g1039910660_)))
                           (let ((_hd1040610665_ (##car _e1040510662_))
                                 (_tl1040710667_ (##cdr _e1040510662_)))
                             (if (gx#stx-pair? _tl1040710667_)
                                 (let ((_e1040810670_
                                        (gx#stx-e _tl1040710667_)))
                                   (let ((_hd1040910673_ (##car _e1040810670_))
                                         (_tl1041010675_
                                          (##cdr _e1040810670_)))
                                     (if (gx#stx-pair? _hd1040910673_)
                                         (let ((_e1041110678_
                                                (gx#stx-e _hd1040910673_)))
                                           (let ((_hd1041210681_
                                                  (##car _e1041110678_))
                                                 (_tl1041310683_
                                                  (##cdr _e1041110678_)))
                                             (if (gx#identifier?
                                                  _hd1041210681_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1041210681_)
                                                     (if (gx#stx-pair?
                                                          _tl1041310683_)
                                                         (let ((_e1041410686_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1041310683_)))
                   (let ((_hd1041510689_ (##car _e1041410686_))
                         (_tl1041610691_ (##cdr _e1041410686_)))
                     (if (gx#stx-null? _tl1041610691_)
                         (if (gx#stx-pair? _tl1041010675_)
                             (let ((_e1041710694_ (gx#stx-e _tl1041010675_)))
                               (let ((_hd1041810697_ (##car _e1041710694_))
                                     (_tl1041910699_ (##cdr _e1041710694_)))
                                 (if (gx#stx-pair? _hd1041810697_)
                                     (let ((_e1042010702_
                                            (gx#stx-e _hd1041810697_)))
                                       (let ((_hd1042110705_
                                              (##car _e1042010702_))
                                             (_tl1042210707_
                                              (##cdr _e1042010702_)))
                                         (if (gx#identifier? _hd1042110705_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1042110705_)
                                                 (if (gx#stx-pair?
                                                      _tl1042210707_)
                                                     (let ((_e1042310710_
                                                            (gx#stx-e
                                                             _tl1042210707_)))
                                                       (let ((_hd1042410713_
                                                              (##car _e1042310710_))
                                                             (_tl1042510715_
                                                              (##cdr _e1042310710_)))
                                                         (if (gx#stx-null?
                                                              _tl1042510715_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1041910699_)
                         (let ((_e1042610718_ (gx#stx-e _tl1041910699_)))
                           (let ((_hd1042710721_ (##car _e1042610718_))
                                 (_tl1042810723_ (##cdr _e1042610718_)))
                             (if (gx#stx-pair? _hd1042710721_)
                                 (let ((_e1042910726_
                                        (gx#stx-e _hd1042710721_)))
                                   (let ((_hd1043010729_ (##car _e1042910726_))
                                         (_tl1043110731_
                                          (##cdr _e1042910726_)))
                                     (if (gx#identifier? _hd1043010729_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1043010729_)
                                             (if (gx#stx-pair? _tl1043110731_)
                                                 (let ((_e1043210734_
                                                        (gx#stx-e
                                                         _tl1043110731_)))
                                                   (let ((_hd1043310737_
                                                          (##car _e1043210734_))
                                                         (_tl1043410739_
                                                          (##cdr _e1043210734_)))
                                                     (if (gx#stx-null?
                                                          _tl1043410739_)
                                                         (if (gx#stx-pair?
                                                              _tl1042810723_)
                                                             (let ((_e1043510742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1042810723_)))
                       (let ((_hd1043610745_ (##car _e1043510742_))
                             (_tl1043710747_ (##cdr _e1043510742_)))
                         (if (gx#stx-pair? _hd1043610745_)
                             (let ((_e1043810750_ (gx#stx-e _hd1043610745_)))
                               (let ((_hd1043910753_ (##car _e1043810750_))
                                     (_tl1044010755_ (##cdr _e1043810750_)))
                                 (if (gx#identifier? _hd1043910753_)
                                     (if (gx#stx-eq? '%#ref _hd1043910753_)
                                         (if (gx#stx-pair? _tl1044010755_)
                                             (let ((_e1044110758_
                                                    (gx#stx-e _tl1044010755_)))
                                               (let ((_hd1044210761_
                                                      (##car _e1044110758_))
                                                     (_tl1044310763_
                                                      (##cdr _e1044110758_)))
                                                 (if (gx#stx-null?
                                                      _tl1044310763_)
                                                     (if (gx#stx-pair?
                                                          _tl1043710747_)
                                                         (let ((_e1044410766_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1043710747_)))
                   (let ((_hd1044510769_ (##car _e1044410766_))
                         (_tl1044610771_ (##cdr _e1044410766_)))
                     (if (gx#stx-pair? _hd1044510769_)
                         (let ((_e1044710774_ (gx#stx-e _hd1044510769_)))
                           (let ((_hd1044810777_ (##car _e1044710774_))
                                 (_tl1044910779_ (##cdr _e1044710774_)))
                             (if (gx#identifier? _hd1044810777_)
                                 (if (gx#stx-eq? '%#quote _hd1044810777_)
                                     (if (gx#stx-pair? _tl1044910779_)
                                         (let ((_e1045010782_
                                                (gx#stx-e _tl1044910779_)))
                                           (let ((_hd1045110785_
                                                  (##car _e1045010782_))
                                                 (_tl1045210787_
                                                  (##cdr _e1045010782_)))
                                             (if (gx#stx-null? _tl1045210787_)
                                                 (if (gx#stx-null?
                                                      _tl1044610771_)
                                                     ((lambda (_L10790_
                                                               _L10791_
                                                               _L10792_
                                                               _L10793_
                                                               _L10794_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10794_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#generate-runtime-binding-id _L10793_)
                                (cons (gx#stx-e _L10792_)
                                      (cons (gxc#generate-runtime-binding-id
                                             _L10791_)
                                            (cons (gx#stx-e _L10790_) '())))))
                    (_g1039610657_ _g1039910660_)))
              _hd1045110785_
              _hd1044210761_
              _hd1043310737_
              _hd1042410713_
              _hd1041510689_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1039610657_
                                                      _g1039910660_))
                                                 (_g1039610657_
                                                  _g1039910660_))))
                                         (_g1039610657_ _g1039910660_))
                                     (_g1039610657_ _g1039910660_))
                                 (_g1039610657_ _g1039910660_))))
                         (_g1039610657_ _g1039910660_))))
                 (_g1039610657_ _g1039910660_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1039610657_
                                                      _g1039910660_))))
                                             (_g1039610657_ _g1039910660_))
                                         (_g1039610657_ _g1039910660_))
                                     (_g1039610657_ _g1039910660_))))
                             (_g1039610657_ _g1039910660_))))
                     (_g1039610657_ _g1039910660_))
                 (_g1039610657_ _g1039910660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1039610657_ _g1039910660_))
                                             (_g1039610657_ _g1039910660_))
                                         (_g1039610657_ _g1039910660_))))
                                 (_g1039610657_ _g1039910660_))))
                         (_g1039610657_ _g1039910660_))
                     (_g1039610657_ _g1039910660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1039610657_
                                                      _g1039910660_))
                                                 (_g1039610657_ _g1039910660_))
                                             (_g1039610657_ _g1039910660_))))
                                     (_g1039610657_ _g1039910660_))))
                             (_g1039610657_ _g1039910660_))
                         (_g1039610657_ _g1039910660_))))
                 (_g1039610657_ _g1039910660_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1039610657_
                                                      _g1039910660_))
                                                 (_g1039610657_
                                                  _g1039910660_))))
                                         (_g1039610657_ _g1039910660_))))
                                 (_g1039610657_ _g1039910660_))))
                         (_g1039610657_ _g1039910660_)))))
              (_g1039510837_ _stx10394_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self10370_)
      (let ((_self1037110377_ _self10370_))
        (let ((_E1037310381_
               (lambda () (error '"No clause matching" _self1037110377_))))
          (let ((_K1037410386_
                 (lambda (_alias-id10384_)
                   (cons '@alias (cons _alias-id10384_ '())))))
            (if (struct-instance? gxc#!alias::t _self1037110377_)
                (let ((_e1037510389_ (##vector-ref _self1037110377_ '1)))
                  (let ((_alias-id10392_ _e1037510389_))
                    (_K1037410386_ _alias-id10392_)))
                (_E1037310381_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self10314_)
      (let ((_self1031510326_ _self10314_))
        (let ((_E1031710330_
               (lambda () (error '"No clause matching" _self1031510326_))))
          (let ((_K1031810339_
                 (lambda (_plist10333_
                          _ctor10334_
                          _fields10335_
                          _super10336_
                          _type-id10337_)
                   (cons '@struct-type
                         (cons _type-id10337_
                               (cons _super10336_
                                     (cons _fields10335_
                                           (cons _ctor10334_
                                                 (cons _plist10333_
                                                       '())))))))))
            (if (struct-instance? gxc#!struct-type::t _self1031510326_)
                (let ((_e1031910342_ (##vector-ref _self1031510326_ '1)))
                  (let ((_type-id10345_ _e1031910342_))
                    (let ((_e1032010347_ (##vector-ref _self1031510326_ '2)))
                      (let ((_super10350_ _e1032010347_))
                        (let ((_e1032110352_
                               (##vector-ref _self1031510326_ '3)))
                          (let ((_fields10355_ _e1032110352_))
                            (let ((_e1032210357_
                                   (##vector-ref _self1031510326_ '4)))
                              (let ((_e1032310360_
                                     (##vector-ref _self1031510326_ '5)))
                                (let ((_ctor10363_ _e1032310360_))
                                  (let ((_e1032410365_
                                         (##vector-ref _self1031510326_ '6)))
                                    (let ((_plist10368_ _e1032410365_))
                                      (_K1031810339_
                                       _plist10368_
                                       _ctor10363_
                                       _fields10355_
                                       _super10350_
                                       _type-id10345_))))))))))))
                (_E1031710330_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self10290_)
      (let ((_self1029110297_ _self10290_))
        (let ((_E1029310301_
               (lambda () (error '"No clause matching" _self1029110297_))))
          (let ((_K1029410306_
                 (lambda (_struct-t10304_)
                   (cons '@struct-pred (cons _struct-t10304_ '())))))
            (if (struct-instance? gxc#!struct-pred::t _self1029110297_)
                (let ((_e1029510309_ (##vector-ref _self1029110297_ '1)))
                  (let ((_struct-t10312_ _e1029510309_))
                    (_K1029410306_ _struct-t10312_)))
                (_E1029310301_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self10266_)
      (let ((_self1026710273_ _self10266_))
        (let ((_E1026910277_
               (lambda () (error '"No clause matching" _self1026710273_))))
          (let ((_K1027010282_
                 (lambda (_struct-t10280_)
                   (cons '@struct-cons (cons _struct-t10280_ '())))))
            (if (struct-instance? gxc#!struct-cons::t _self1026710273_)
                (let ((_e1027110285_ (##vector-ref _self1026710273_ '1)))
                  (let ((_struct-t10288_ _e1027110285_))
                    (_K1027010282_ _struct-t10288_)))
                (_E1026910277_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self10235_)
      (let ((_self1023610243_ _self10235_))
        (let ((_E1023810247_
               (lambda () (error '"No clause matching" _self1023610243_))))
          (let ((_K1023910253_
                 (lambda (_off10250_ _struct-t10251_)
                   (cons '@struct-getf
                         (cons _struct-t10251_ (cons _off10250_ '()))))))
            (if (struct-instance? gxc#!struct-getf::t _self1023610243_)
                (let ((_e1024010256_ (##vector-ref _self1023610243_ '1)))
                  (let ((_struct-t10259_ _e1024010256_))
                    (let ((_e1024110261_ (##vector-ref _self1023610243_ '2)))
                      (let ((_off10264_ _e1024110261_))
                        (_K1023910253_ _off10264_ _struct-t10259_)))))
                (_E1023810247_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self10204_)
      (let ((_self1020510212_ _self10204_))
        (let ((_E1020710216_
               (lambda () (error '"No clause matching" _self1020510212_))))
          (let ((_K1020810222_
                 (lambda (_off10219_ _struct-t10220_)
                   (cons '@struct-setf
                         (cons _struct-t10220_ (cons _off10219_ '()))))))
            (if (struct-instance? gxc#!struct-setf::t _self1020510212_)
                (let ((_e1020910225_ (##vector-ref _self1020510212_ '1)))
                  (let ((_struct-t10228_ _e1020910225_))
                    (let ((_e1021010230_ (##vector-ref _self1020510212_ '2)))
                      (let ((_off10233_ _e1021010230_))
                        (_K1020810222_ _off10233_ _struct-t10228_)))))
                (_E1020710216_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self10152_)
      (let ((_self1015310163_ _self10152_))
        (let ((_E1015510167_
               (lambda () (error '"No clause matching" _self1015310163_))))
          (let ((_K1015610178_
                 (lambda (_typedecl10170_
                          _inline10171_
                          _dispatch10172_
                          _arity10173_)
                   (if _inline10171_
                       (let ((_$e10175_ _typedecl10170_))
                         (if _$e10175_
                             _$e10175_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity10173_
                                   (cons _dispatch10172_ '())))))))
            (if (struct-instance? gxc#!lambda::t _self1015310163_)
                (let ((_e1015710181_ (##vector-ref _self1015310163_ '1)))
                  (let ((_e1015810184_ (##vector-ref _self1015310163_ '2)))
                    (let ((_arity10187_ _e1015810184_))
                      (let ((_e1015910189_ (##vector-ref _self1015310163_ '3)))
                        (let ((_dispatch10192_ _e1015910189_))
                          (let ((_e1016010194_
                                 (##vector-ref _self1015310163_ '4)))
                            (let ((_inline10197_ _e1016010194_))
                              (let ((_e1016110199_
                                     (##vector-ref _self1015310163_ '5)))
                                (let ((_typedecl10202_ _e1016110199_))
                                  (_K1015610178_
                                   _typedecl10202_
                                   _inline10197_
                                   _dispatch10192_
                                   _arity10187_))))))))))
                (_E1015510167_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self10085_)
      (let ((_clause-e10087_
             (lambda (_clause10117_)
               (let ((_clause1011810126_ _clause10117_))
                 (let ((_E1012010130_
                        (lambda ()
                          (error '"No clause matching" _clause1011810126_))))
                   (let ((_K1012110136_
                          (lambda (_dispatch10133_ _arity10134_)
                            (cons _arity10134_ (cons _dispatch10133_ '())))))
                     (if (struct-instance? gxc#!lambda::t _clause1011810126_)
                         (let ((_e1012210139_
                                (##vector-ref _clause1011810126_ '1)))
                           (let ((_e1012310142_
                                  (##vector-ref _clause1011810126_ '2)))
                             (let ((_arity10145_ _e1012310142_))
                               (let ((_e1012410147_
                                      (##vector-ref _clause1011810126_ '3)))
                                 (let ((_dispatch10150_ _e1012410147_))
                                   (_K1012110136_
                                    _dispatch10150_
                                    _arity10145_))))))
                         (_E1012010130_))))))))
        (let ((_self1008810095_ _self10085_))
          (let ((_E1009010099_
                 (lambda () (error '"No clause matching" _self1008810095_))))
            (let ((_K1009110106_
                   (lambda (_clauses10102_)
                     (let ((_clauses10104_
                            (map _clause-e10087_ _clauses10102_)))
                       (cons '@case-lambda _clauses10104_)))))
              (if (struct-instance? gxc#!case-lambda::t _self1008810095_)
                  (let ((_e1009210109_ (##vector-ref _self1008810095_ '1)))
                    (let ((_e1009310112_ (##vector-ref _self1008810095_ '2)))
                      (let ((_clauses10115_ _e1009310112_))
                        (_K1009110106_ _clauses10115_))))
                  (_E1009010099_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx10083_) (gxc#generate-runtime-binding-id _stx10083_))))
