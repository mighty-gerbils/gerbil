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
    (lambda _$args19073_
      (apply make-struct-instance gxc#optimizer-info::t _$args19073_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self19071_)
      (direct-struct-instance-init!
       _self19071_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj19075 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj19075) __obj19075))))))
  (define gxc#optimize!
    (lambda (_ctx19065_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-prelude-ssxi _ctx19065_)
           (gxc#optimizer-load-ssxi-deps _ctx19065_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx19065_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code19068_
                  (gxc#optimize-source
                   (##structure-ref _ctx19065_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx19065_
              _code19068_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx19026_)
      ((letrec ((_lp19028_
                 (lambda (_rest19030_)
                   (let ((_rest1903119039_ _rest19030_))
                     (let ((_E1903419043_
                            (lambda ()
                              (error '"No clause matching" _rest1903119039_))))
                       (let ((_else1903319047_ (lambda () '#!void)))
                         (let ((_K1903519053_
                                (lambda (_rest19050_ _hd19051_)
                                  (if (##structure-instance-of?
                                       _hd19051_
                                       'gx#module-context::t)
                                      (begin
                                        (if (table-ref
                                             (##structure-ref
                                              (gxc#current-compile-optimizer-info)
                                              '2
                                              gxc#optimizer-info::t
                                              '#f)
                                             (##structure-ref
                                              _hd19051_
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '#f)
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx19026_)
                                              (_lp19028_
                                               (##structure-ref
                                                _hd19051_
                                                '8
                                                gx#module-context::t
                                                '#f))
                                              (gxc#optimizer-load-ssxi
                                               _hd19051_)))
                                        (_lp19028_ _rest19050_))
                                      (if (##structure-direct-instance-of?
                                           _hd19051_
                                           'gx#module-import::t)
                                          (_lp19028_
                                           (cons (##structure-ref
                                                  _hd19051_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _rest19050_))
                                          (if (##structure-direct-instance-of?
                                               _hd19051_
                                               'gx#module-export::t)
                                              (_lp19028_
                                               (cons (##structure-ref
                                                      _hd19051_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _rest19050_))
                                              (if (##structure-direct-instance-of?
                                                   _hd19051_
                                                   'gx#import-set::t)
                                                  (_lp19028_
                                                   (cons (##structure-ref
                                                          _hd19051_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _rest19050_))
                                                  (error '"Unexpected module import"
                                                         _hd19051_))))))))
                           (if (##pair? _rest1903119039_)
                               (let ((_hd1903619056_ (##car _rest1903119039_))
                                     (_tl1903719058_ (##cdr _rest1903119039_)))
                                 (let ((_hd19061_ _hd1903619056_))
                                   (let ((_rest19063_ _tl1903719058_))
                                     (_K1903519053_ _rest19063_ _hd19061_))))
                               (_else1903319047_)))))))))
         _lp19028_)
       (##structure-ref _ctx19026_ '8 gx#module-context::t '#f))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx19021_)
      (let ((_$e19023_ (gx#core-context-prelude__opt-lambda10896 _ctx19021_)))
        (if _$e19023_ (gxc#optimizer-load-ssxi _$e19023_) '#!void))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx19001_)
      (if (if (##structure-instance-of? _ctx19001_ 'gx#module-context::t)
              (list? (##structure-ref _ctx19001_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht19003_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id19005_
                   (##structure-ref _ctx19001_ '1 gx#expander-context::t '#f)))
              (let ((_mod19007_ (table-ref _ht19003_ _id19005_ '#f)))
                (let ()
                  (let ((_$e19010_ _mod19007_))
                    (if _$e19010_
                        _$e19010_
                        (let ((_mod19013_
                               (gxc#optimizer-import-ssxi _ctx19001_)))
                          (let ((_val19018_
                                 (let ((_$e19015_ _mod19013_))
                                   (if _$e19015_ _$e19015_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht19003_ _id19005_ _val19018_)
                                _val19018_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx18978_)
      (let ((_catch-e18980_
             (lambda (_exn18999_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx18978_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn18999_))
                     '#!void)
                 '#f))))
        (let ((_import-e18981_
               (lambda ()
                 (let ((_str-id18984_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx18978_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path18992_
                          (let ((_odir1898518987_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1898518987_
                                (let ((_odir18990_ _odir1898518987_))
                                  (path-expand
                                   (string-append _str-id18984_ '".ss")
                                   _odir18990_))
                                '#f))))
                     (let ((_library-path18994_
                            (string->symbol
                             (string-append '":" _str-id18984_))))
                       (let ((_ssxi-path18996_
                              (if (if _artefact-path18992_
                                      (file-exists? _artefact-path18992_)
                                      '#f)
                                  _artefact-path18992_
                                  _library-path18994_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path18996_)
                             (gx#import-module__opt-lambda10931
                              _ssxi-path18996_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx18978_ '1 gx#expander-context::t '#f)
              (with-catch _catch-e18980_ _import-e18981_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args18975_
      (apply make-struct-instance gxc#!type::t _$args18975_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args18972_
      (apply make-struct-instance gxc#!alias::t _$args18972_)))
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
    (lambda _$args18969_
      (apply make-struct-instance gxc#!struct-type::t _$args18969_)))
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
    (lambda _$args18966_
      (apply make-struct-instance gxc#!procedure::t _$args18966_)))
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
    (lambda _$args18963_
      (apply make-struct-instance gxc#!struct-pred::t _$args18963_)))
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
    (lambda _$args18960_
      (apply make-struct-instance gxc#!struct-cons::t _$args18960_)))
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
    (lambda _$args18957_
      (apply make-struct-instance gxc#!struct-getf::t _$args18957_)))
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
    (lambda _$args18954_
      (apply make-struct-instance gxc#!struct-setf::t _$args18954_)))
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
    (lambda _$args18951_
      (apply make-struct-instance gxc#!lambda::t _$args18951_)))
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
    (lambda _$args18948_
      (apply make-struct-instance gxc#!case-lambda::t _$args18948_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self18940_
             _id18941_
             _super18942_
             _fields18943_
             _xfields18944_
             _ctor18945_
             _plist18946_)
      (direct-struct-instance-init!
       _self18940_
       _id18941_
       _super18942_
       _fields18943_
       _xfields18944_
       _ctor18945_
       _plist18946_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda18904
      (lambda (_self18906_
               _id18907_
               _arity18908_
               _dispatch18909_
               _inline18910_
               _typedecl18911_)
        (direct-struct-instance-init!
         _self18906_
         _id18907_
         _arity18908_
         _dispatch18909_
         _inline18910_
         _typedecl18911_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self18916_ _id18917_ _arity18918_ _dispatch18919_)
          (let ((_inline18921_ '#f))
            (let ((_typedecl18923_ '#f))
              (direct-struct-instance-init!
               _self18916_
               _id18917_
               _arity18918_
               _dispatch18919_
               _inline18921_
               _typedecl18923_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self18925_
                 _id18926_
                 _arity18927_
                 _dispatch18928_
                 _inline18929_)
          (let ((_typedecl18931_ '#f))
            (direct-struct-instance-init!
             _self18925_
             _id18926_
             _arity18927_
             _dispatch18928_
             _inline18929_
             _typedecl18931_))))
      (define gxc#!lambda:::init!
        (lambda _g19083_
          (let ((_g19082_ (length _g19083_)))
            (cond ((fx= _g19082_ 4) (apply gxc#!lambda:::init!__0 _g19083_))
                  ((fx= _g19082_ 5) (apply gxc#!lambda:::init!__1 _g19083_))
                  ((fx= _g19082_ 6)
                   (apply direct-struct-instance-init! _g19083_))
                  (else (error "No clause matching arguments" _g19083_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type18898_)
      (let ((_$e18900_
             (##structure-ref _type18898_ '7 gxc#!struct-type::t '#f)))
        (if _$e18900_
            (values _$e18900_)
            (let ((_vtab18903_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type18898_
                 _vtab18903_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab18903_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type18889_ _method18890_)
      (let ((_vtab1889118893_
             (##structure-ref _type18889_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1889118893_
            (let ((_vtab18896_ _vtab1889118893_))
              (table-ref _vtab18896_ _method18890_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda18871
      (lambda (_sym18873_ _type18874_ _local?18875_)
        (begin
          (if (##structure-instance-of? _type18874_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym18873_
                     _type18874_))
          (gxc#verbose
           '"declare-type "
           _sym18873_
           '" "
           (##vector->list _type18874_))
          (table-set!
           (if _local?18875_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym18873_
           _type18874_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym18880_ _type18881_)
          (let ((_local?18883_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda18871
             _sym18880_
             _type18881_
             _local?18883_))))
      (define gxc#optimizer-declare-type!
        (lambda _g19085_
          (let ((_g19084_ (length _g19085_)))
            (cond ((fx= _g19084_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g19085_))
                  ((fx= _g19084_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda18871
                          _g19085_))
                  (else (error "No clause matching arguments" _g19085_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda18847
      (lambda (_type-t18849_ _method18850_ _sym18851_ _rebind?18852_)
        (let ((_type18854_ (gxc#optimizer-resolve-type _type-t18849_)))
          (if (##structure-instance-of? _type18854_ 'gxc#!struct-type::t)
              (let ((_vtab18856_ (gxc#!struct-type-vtab _type18854_)))
                (if _rebind?18852_
                    (if (hash-key? _vtab18856_ _method18850_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t18849_
                         '" "
                         _method18850_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t18849_
                         '" "
                         _method18850_))
                    (if (hash-key? _vtab18856_ _method18850_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t18849_
                           '" "
                           _method18850_
                           '" => "
                           _sym18851_)
                          (table-set! _vtab18856_ _method18850_ _sym18851_)))))
              (if (not _type18854_)
                  (gxc#verbose '"declare-method: unknown type " _type-t18849_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t18849_
                         _type18854_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t18861_ _method18862_ _sym18863_)
          (let ((_rebind?18865_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda18847
             _type-t18861_
             _method18862_
             _sym18863_
             _rebind?18865_))))
      (define gxc#optimizer-declare-method!
        (lambda _g19087_
          (let ((_g19086_ (length _g19087_)))
            (cond ((fx= _g19086_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g19087_))
                  ((fx= _g19086_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda18847
                          _g19087_))
                  (else (error "No clause matching arguments" _g19087_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym18837_)
      (let ((_$e18845_
             (let ((_ht1883818840_ (gxc#current-compile-local-type)))
               (if _ht1883818840_
                   (let ((_ht18843_ _ht1883818840_))
                     (table-ref _ht18843_ _sym18837_ '#f))
                   '#f))))
        (if _$e18845_
            _$e18845_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym18837_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym18829_)
      (let ((_type1883018832_ (gxc#optimizer-lookup-type _sym18829_)))
        (if _type1883018832_
            (let ((_type18835_ _type1883018832_))
              (if (##structure-instance-of? _type18835_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type18835_ '1 gxc#!type::t '#f))
                  _type18835_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t18824_ _method18825_)
      (let ((_type18827_ (gxc#optimizer-resolve-type _type-t18824_)))
        (if (##structure-instance-of? _type18827_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type18827_ _method18825_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx18820_)
      (begin
        (gxc#apply-collect-mutators _stx18820_)
        (let ((_stx18822_ (gxc#apply-lift-top-lambdas _stx18820_)))
          (begin
            (gxc#apply-collect-type-info _stx18822_)
            (gxc#apply-optimize-call _stx18822_))))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl18817_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18817_ '%#lambda false)
           (table-set! _tbl18817_ '%#case-lambda false)
           (table-set! _tbl18817_ '%#let-values false)
           (table-set! _tbl18817_ '%#letrec-values false)
           (table-set! _tbl18817_ '%#letrec*-values false)
           (table-set! _tbl18817_ '%#quote false)
           (table-set! _tbl18817_ '%#quote-syntax false)
           (table-set! _tbl18817_ '%#call false)
           (table-set! _tbl18817_ '%#if false)
           (table-set! _tbl18817_ '%#ref false)
           (table-set! _tbl18817_ '%#set! false)
           (table-set! _tbl18817_ '%#struct-instance? false)
           (table-set! _tbl18817_ '%#struct-direct-instance? false)
           (table-set! _tbl18817_ '%#struct-ref false)
           (table-set! _tbl18817_ '%#struct-set! false)
           _tbl18817_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl18813_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18813_ '%#begin false)
           (table-set! _tbl18813_ '%#begin-syntax false)
           (table-set! _tbl18813_ '%#begin-foreign false)
           (table-set! _tbl18813_ '%#module false)
           (table-set! _tbl18813_ '%#import false)
           (table-set! _tbl18813_ '%#export false)
           (table-set! _tbl18813_ '%#provide false)
           (table-set! _tbl18813_ '%#extern false)
           (table-set! _tbl18813_ '%#define-values false)
           (table-set! _tbl18813_ '%#define-syntax false)
           (table-set! _tbl18813_ '%#define-alias false)
           (table-set! _tbl18813_ '%#declare false)
           _tbl18813_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl18809_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18809_ (force gxc#&false-special-form))
           (hash-copy! _tbl18809_ (force gxc#&false-expression))
           _tbl18809_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl18805_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18805_ '%#lambda gxc#xform-identity)
           (table-set! _tbl18805_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl18805_ '%#let-values gxc#xform-identity)
           (table-set! _tbl18805_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl18805_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl18805_ '%#quote gxc#xform-identity)
           (table-set! _tbl18805_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18805_ '%#call gxc#xform-identity)
           (table-set! _tbl18805_ '%#if gxc#xform-identity)
           (table-set! _tbl18805_ '%#ref gxc#xform-identity)
           (table-set! _tbl18805_ '%#set! gxc#xform-identity)
           (table-set! _tbl18805_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl18805_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl18805_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl18805_ '%#struct-set! gxc#xform-identity)
           _tbl18805_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl18801_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18801_ '%#begin gxc#xform-identity)
           (table-set! _tbl18801_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl18801_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl18801_ '%#module gxc#xform-identity)
           (table-set! _tbl18801_ '%#import gxc#xform-identity)
           (table-set! _tbl18801_ '%#export gxc#xform-identity)
           (table-set! _tbl18801_ '%#provide gxc#xform-identity)
           (table-set! _tbl18801_ '%#extern gxc#xform-identity)
           (table-set! _tbl18801_ '%#define-values gxc#xform-identity)
           (table-set! _tbl18801_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl18801_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl18801_ '%#declare gxc#xform-identity)
           _tbl18801_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl18797_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18797_ (force gxc#&identity-special-form))
           (hash-copy! _tbl18797_ (force gxc#&identity-expression))
           _tbl18797_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl18793_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18793_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl18793_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl18793_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl18793_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl18793_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl18793_ '%#quote gxc#xform-identity)
           (table-set! _tbl18793_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18793_ '%#call gxc#xform-operands)
           (table-set! _tbl18793_ '%#if gxc#xform-operands)
           (table-set! _tbl18793_ '%#ref gxc#xform-identity)
           (table-set! _tbl18793_ '%#set! gxc#xform-setq%)
           (table-set! _tbl18793_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl18793_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl18793_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl18793_ '%#struct-set! gxc#xform-operands)
           _tbl18793_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl18789_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18789_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl18789_ (force gxc#&identity))
           (table-set! _tbl18789_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18789_ '%#module gxc#xform-module%)
           (table-set! _tbl18789_ '%#define-values gxc#xform-define-values%)
           _tbl18789_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl18785_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18785_ (force gxc#&void))
           (table-set! _tbl18785_ '%#begin gxc#collect-begin%)
           (table-set! _tbl18785_ '%#module gxc#collect-module%)
           (table-set! _tbl18785_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl18785_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl18785_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl18785_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl18785_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl18785_ '%#call gxc#collect-operands)
           (table-set! _tbl18785_ '%#if gxc#collect-operands)
           (table-set! _tbl18785_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl18785_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl18785_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl18785_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl18785_ '%#struct-set! gxc#collect-operands)
           _tbl18785_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx18778_ . _args18780_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18778_ _args18780_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl18775_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18775_ (force gxc#&basic-xform))
           (table-set!
            _tbl18775_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl18775_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl18775_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl18775_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl18775_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx18768_ . _args18770_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18768_ _args18770_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl18765_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18765_ (force gxc#&basic-xform-expression))
           (table-set! _tbl18765_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18765_ '%#ref gxc#expression-subst-ref%)
           _tbl18765_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx18758_ . _args18760_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18758_ _args18760_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl18755_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18755_ (force gxc#&void))
           (table-set! _tbl18755_ '%#begin gxc#collect-begin%)
           (table-set! _tbl18755_ '%#module gxc#collect-module%)
           (table-set!
            _tbl18755_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl18755_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl18755_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl18755_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl18755_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl18755_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl18755_ '%#call gxc#collect-type-call%)
           (table-set! _tbl18755_ '%#if gxc#collect-operands)
           (table-set! _tbl18755_ '%#set! gxc#collect-body-setq%)
           _tbl18755_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx18748_ . _args18750_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18748_ _args18750_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl18745_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18745_ (force gxc#&false))
           (table-set! _tbl18745_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl18745_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl18745_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl18745_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl18745_ '%#ref gxc#basic-expression-type-ref%)
           _tbl18745_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx18738_ . _args18740_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18738_ _args18740_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl18735_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18735_ (force gxc#&basic-xform))
           (table-set! _tbl18735_ '%#call gxc#optimize-call%)
           _tbl18735_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx18728_ . _args18730_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18728_ _args18730_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl18725_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18725_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl18725_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl18725_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl18725_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl18725_ '%#call gxc#generate-ssxi-call%)
           _tbl18725_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx18718_ . _args18720_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18718_ _args18720_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx18715_ . _args18716_) _stx18715_))
  (define gxc#xform-wrap-source
    (lambda (_stx18712_ _src-stx18713_)
      (gx#stx-wrap-source _stx18712_ (gx#stx-source _src-stx18713_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args18706_)
      (lambda (_g1870718709_)
        (apply gxc#compile-e _g1870718709_ _args18706_))))
  (define gxc#xform-begin%
    (lambda (_stx18665_ . _args18666_)
      (let ((_g1866818678_
             (lambda (_g1866918675_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1866918675_))))
        (let ((_g1866718703_
               (lambda (_g1866918681_)
                 (if (gx#stx-pair? _g1866918681_)
                     (let ((_e1867118683_ (gx#stx-e _g1866918681_)))
                       (let ((_hd1867218686_ (##car _e1867118683_))
                             (_tl1867318688_ (##cdr _e1867118683_)))
                         ((lambda (_L18691_)
                            (let ((_forms18701_
                                   (map (gxc#xform-apply-compile-e _args18666_)
                                        _L18691_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms18701_)
                               _stx18665_)))
                          _tl1867318688_)))
                     (_g1866818678_ _g1866918681_)))))
          (_g1866718703_ _stx18665_)))))
  (define gxc#xform-module%
    (lambda (_stx18602_ . _args18603_)
      (let ((_g1860518619_
             (lambda (_g1860618616_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1860618616_))))
        (let ((_g1860418662_
               (lambda (_g1860618622_)
                 (if (gx#stx-pair? _g1860618622_)
                     (let ((_e1860918624_ (gx#stx-e _g1860618622_)))
                       (let ((_hd1861018627_ (##car _e1860918624_))
                             (_tl1861118629_ (##cdr _e1860918624_)))
                         (if (gx#stx-pair? _tl1861118629_)
                             (let ((_e1861218632_ (gx#stx-e _tl1861118629_)))
                               (let ((_hd1861318635_ (##car _e1861218632_))
                                     (_tl1861418637_ (##cdr _e1861218632_)))
                                 ((lambda (_L18640_ _L18641_)
                                    (let ((_ctx18654_
                                           (gx#syntax-local-e__0 _L18641_)))
                                      (let ((_code18656_
                                             (##structure-ref
                                              _ctx18654_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code18659_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code18656_
                                                         _args18603_))
                                                gx#current-expander-context
                                                _ctx18654_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx18654_
                                               _code18659_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L18641_
                                                           (cons _code18659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18602_)))))))
                                  _tl1861418637_
                                  _hd1861318635_)))
                             (_g1860518619_ _g1860618622_))))
                     (_g1860518619_ _g1860618622_)))))
          (_g1860418662_ _stx18602_)))))
  (define gxc#xform-define-values%
    (lambda (_stx18532_ . _args18533_)
      (let ((_g1853518552_
             (lambda (_g1853618549_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1853618549_))))
        (let ((_g1853418599_
               (lambda (_g1853618555_)
                 (if (gx#stx-pair? _g1853618555_)
                     (let ((_e1853918557_ (gx#stx-e _g1853618555_)))
                       (let ((_hd1854018560_ (##car _e1853918557_))
                             (_tl1854118562_ (##cdr _e1853918557_)))
                         (if (gx#stx-pair? _tl1854118562_)
                             (let ((_e1854218565_ (gx#stx-e _tl1854118562_)))
                               (let ((_hd1854318568_ (##car _e1854218565_))
                                     (_tl1854418570_ (##cdr _e1854218565_)))
                                 (if (gx#stx-pair? _tl1854418570_)
                                     (let ((_e1854518573_
                                            (gx#stx-e _tl1854418570_)))
                                       (let ((_hd1854618576_
                                              (##car _e1854518573_))
                                             (_tl1854718578_
                                              (##cdr _e1854518573_)))
                                         (if (gx#stx-null? _tl1854718578_)
                                             ((lambda (_L18581_ _L18582_)
                                                (let ((_expr18597_
                                                       (apply gxc#compile-e
                                                              _L18581_
                                                              _args18533_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L18582_
                                                               (cons _expr18597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18532_)))
                                              _hd1854618576_
                                              _hd1854318568_)
                                             (_g1853518552_ _g1853618555_))))
                                     (_g1853518552_ _g1853618555_))))
                             (_g1853518552_ _g1853618555_))))
                     (_g1853518552_ _g1853618555_)))))
          (_g1853418599_ _stx18532_)))))
  (define gxc#xform-lambda%
    (lambda (_stx18475_ . _args18476_)
      (let ((_g1847818492_
             (lambda (_g1847918489_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1847918489_))))
        (let ((_g1847718529_
               (lambda (_g1847918495_)
                 (if (gx#stx-pair? _g1847918495_)
                     (let ((_e1848218497_ (gx#stx-e _g1847918495_)))
                       (let ((_hd1848318500_ (##car _e1848218497_))
                             (_tl1848418502_ (##cdr _e1848218497_)))
                         (if (gx#stx-pair? _tl1848418502_)
                             (let ((_e1848518505_ (gx#stx-e _tl1848418502_)))
                               (let ((_hd1848618508_ (##car _e1848518505_))
                                     (_tl1848718510_ (##cdr _e1848518505_)))
                                 ((lambda (_L18513_ _L18514_)
                                    (let ((_body18527_
                                           (map (gxc#xform-apply-compile-e
                                                 _args18476_)
                                                _L18513_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L18514_ _body18527_))
                                       _stx18475_)))
                                  _tl1848718510_
                                  _hd1848618508_)))
                             (_g1847818492_ _g1847918495_))))
                     (_g1847818492_ _g1847918495_)))))
          (_g1847718529_ _stx18475_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx18388_ . _args18389_)
      (let ((_clause-e18391_
             (lambda (_clause18432_)
               (let ((_g1843418445_
                      (lambda (_g1843518442_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1843518442_))))
                 (let ((_g1843318472_
                        (lambda (_g1843518448_)
                          (if (gx#stx-pair? _g1843518448_)
                              (let ((_e1843818450_ (gx#stx-e _g1843518448_)))
                                (let ((_hd1843918453_ (##car _e1843818450_))
                                      (_tl1844018455_ (##cdr _e1843818450_)))
                                  ((lambda (_L18458_ _L18459_)
                                     (let ((_body18470_
                                            (map (gxc#xform-apply-compile-e
                                                  _args18389_)
                                                 _L18458_)))
                                       (cons _L18459_ _body18470_)))
                                   _tl1844018455_
                                   _hd1843918453_)))
                              (_g1843418445_ _g1843518448_)))))
                   (_g1843318472_ _clause18432_))))))
        (let ((_g1839318403_
               (lambda (_g1839418400_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1839418400_))))
          (let ((_g1839218429_
                 (lambda (_g1839418406_)
                   (if (gx#stx-pair? _g1839418406_)
                       (let ((_e1839618408_ (gx#stx-e _g1839418406_)))
                         (let ((_hd1839718411_ (##car _e1839618408_))
                               (_tl1839818413_ (##cdr _e1839618408_)))
                           ((lambda (_L18416_)
                              (let ((_clauses18427_
                                     (map _clause-e18391_ _L18416_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses18427_)
                                 _stx18388_)))
                            _tl1839818413_)))
                       (_g1839318403_ _g1839418406_)))))
            (_g1839218429_ _stx18388_))))))
  (define gxc#xform-let-values%
    (lambda (_stx18182_ . _args18183_)
      (let ((_g1818518218_
             (lambda (_g1818618215_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1818618215_))))
        (let ((_g1818418385_
               (lambda (_g1818618221_)
                 (if (gx#stx-pair? _g1818618221_)
                     (let ((_e1819118223_ (gx#stx-e _g1818618221_)))
                       (let ((_hd1819218226_ (##car _e1819118223_))
                             (_tl1819318228_ (##cdr _e1819118223_)))
                         (if (gx#stx-pair? _tl1819318228_)
                             (let ((_e1819418231_ (gx#stx-e _tl1819318228_)))
                               (let ((_hd1819518234_ (##car _e1819418231_))
                                     (_tl1819618236_ (##cdr _e1819418231_)))
                                 (if (gx#stx-pair/null? _hd1819518234_)
                                     (if (fx>= (gx#stx-length _hd1819518234_)
                                               '0)
                                         (let ((_g19088_
                                                (gx#syntax-split-splice
                                                 _hd1819518234_
                                                 '0)))
                                           (begin
                                             (let ((_g19089_
                                                    (values-count _g19088_)))
                                               (if (not (fx= _g19089_ 2))
                                                   (error "Context expects 2 values"
                                                          _g19089_)))
                                             (let ((_target1819718239_
                                                    (values-ref _g19088_ 0))
                                                   (_tl1819918241_
                                                    (values-ref _g19088_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1819918241_)
                                                   (letrec ((_loop1820018244_
                                                             (lambda (_hd1819818247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1820418249_
                              _hd1820518251_)
                       (if (gx#stx-pair? _hd1819818247_)
                           (let ((_e1820118254_ (gx#stx-e _hd1819818247_)))
                             (let ((_lp-hd1820218257_ (##car _e1820118254_))
                                   (_lp-tl1820318259_ (##cdr _e1820118254_)))
                               (if (gx#stx-pair? _lp-hd1820218257_)
                                   (let ((_e1820818262_
                                          (gx#stx-e _lp-hd1820218257_)))
                                     (let ((_hd1820918265_
                                            (##car _e1820818262_))
                                           (_tl1821018267_
                                            (##cdr _e1820818262_)))
                                       (if (gx#stx-pair? _tl1821018267_)
                                           (let ((_e1821118270_
                                                  (gx#stx-e _tl1821018267_)))
                                             (let ((_hd1821218273_
                                                    (##car _e1821118270_))
                                                   (_tl1821318275_
                                                    (##cdr _e1821118270_)))
                                               (if (gx#stx-null?
                                                    _tl1821318275_)
                                                   (_loop1820018244_
                                                    _lp-tl1820318259_
                                                    (cons _hd1821218273_
                                                          _expr1820418249_)
                                                    (cons _hd1820918265_
                                                          _hd1820518251_))
                                                   (_g1818518218_
                                                    _g1818618221_))))
                                           (_g1818518218_ _g1818618221_))))
                                   (_g1818518218_ _g1818618221_))))
                           (let ((_expr1820618278_ (reverse _expr1820418249_))
                                 (_hd1820718280_ (reverse _hd1820518251_)))
                             ((lambda (_L18283_ _L18284_ _L18285_ _L18286_)
                                (let ((_g1830518321_
                                       (lambda (_g1830618318_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1830618318_))))
                                  (let ((_g1830418375_
                                         (lambda (_g1830618324_)
                                           (if (gx#stx-pair/null?
                                                _g1830618324_)
                                               (if (fx>= (gx#stx-length
                                                          _g1830618324_)
                                                         '0)
                                                   (let ((_g19090_
                                                          (gx#syntax-split-splice
                                                           _g1830618324_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19091_
                                                              (values-count
                                                               _g19090_)))
                                                         (if (not (fx= _g19091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19091_)))
               (let ((_target1830818326_ (values-ref _g19090_ 0))
                     (_tl1831018328_ (values-ref _g19090_ 1)))
                 (if (gx#stx-null? _tl1831018328_)
                     (letrec ((_loop1831118331_
                               (lambda (_hd1830918334_ _expr1831518336_)
                                 (if (gx#stx-pair? _hd1830918334_)
                                     (let ((_e1831218339_
                                            (gx#syntax-e _hd1830918334_)))
                                       (let ((_lp-hd1831318342_
                                              (##car _e1831218339_))
                                             (_lp-tl1831418344_
                                              (##cdr _e1831218339_)))
                                         (_loop1831118331_
                                          _lp-tl1831418344_
                                          (cons _lp-hd1831318342_
                                                _expr1831518336_))))
                                     (let ((_expr1831618347_
                                            (reverse _expr1831518336_)))
                                       ((lambda (_L18350_)
                                          (let ()
                                            (let ((_body18363_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args18183_)
                                                        _L18283_)))
                                              (gxc#xform-wrap-source
                                               (cons _L18286_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L18350_
                                                              _L18285_)
                                                             (foldr (lambda (_g1836418368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1836518370_
                                     _g1836618372_)
                              (cons (cons _g1836518370_
                                          (cons _g1836418368_ '()))
                                    _g1836618372_))
                            '()
                            _L18350_
                            _L18285_))
                   _body18363_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18182_))))
                                        _expr1831618347_))))))
                       (_loop1831118331_ _target1830818326_ '()))
                     (_g1830518321_ _g1830618324_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1830518321_
                                                    _g1830618324_))
                                               (_g1830518321_
                                                _g1830618324_)))))
                                    (_g1830418375_
                                     (map (gxc#xform-apply-compile-e
                                           _args18183_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1837718380_
                                                             _g1837818382_)
                                                      (cons _g1837718380_
                                                            _g1837818382_))
                                                    '()
                                                    _L18284_)))))))
                              _tl1819618236_
                              _expr1820618278_
                              _hd1820718280_
                              _hd1819218226_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1820018244_
                                                      _target1819718239_
                                                      '()
                                                      '()))
                                                   (_g1818518218_
                                                    _g1818618221_)))))
                                         (_g1818518218_ _g1818618221_))
                                     (_g1818518218_ _g1818618221_))))
                             (_g1818518218_ _g1818618221_))))
                     (_g1818518218_ _g1818618221_)))))
          (_g1818418385_ _stx18182_)))))
  (define gxc#xform-operands
    (lambda (_stx18138_ . _args18139_)
      (let ((_g1814118152_
             (lambda (_g1814218149_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1814218149_))))
        (let ((_g1814018179_
               (lambda (_g1814218155_)
                 (if (gx#stx-pair? _g1814218155_)
                     (let ((_e1814518157_ (gx#stx-e _g1814218155_)))
                       (let ((_hd1814618160_ (##car _e1814518157_))
                             (_tl1814718162_ (##cdr _e1814518157_)))
                         ((lambda (_L18165_ _L18166_)
                            (let ((_rands18177_
                                   (map (gxc#xform-apply-compile-e _args18139_)
                                        _L18165_)))
                              (gxc#xform-wrap-source
                               (cons _L18166_ _rands18177_)
                               _stx18138_)))
                          _tl1814718162_
                          _hd1814618160_)))
                     (_g1814118152_ _g1814218155_)))))
          (_g1814018179_ _stx18138_)))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx18068_ . _args18069_)
      (let ((_g1807118088_
             (lambda (_g1807218085_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1807218085_))))
        (let ((_g1807018135_
               (lambda (_g1807218091_)
                 (if (gx#stx-pair? _g1807218091_)
                     (let ((_e1807518093_ (gx#stx-e _g1807218091_)))
                       (let ((_hd1807618096_ (##car _e1807518093_))
                             (_tl1807718098_ (##cdr _e1807518093_)))
                         (if (gx#stx-pair? _tl1807718098_)
                             (let ((_e1807818101_ (gx#stx-e _tl1807718098_)))
                               (let ((_hd1807918104_ (##car _e1807818101_))
                                     (_tl1808018106_ (##cdr _e1807818101_)))
                                 (if (gx#stx-pair? _tl1808018106_)
                                     (let ((_e1808118109_
                                            (gx#stx-e _tl1808018106_)))
                                       (let ((_hd1808218112_
                                              (##car _e1808118109_))
                                             (_tl1808318114_
                                              (##cdr _e1808118109_)))
                                         (if (gx#stx-null? _tl1808318114_)
                                             ((lambda (_L18117_ _L18118_)
                                                (let ((_expr18133_
                                                       (apply gxc#compile-e
                                                              _L18117_
                                                              _args18069_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L18118_
                                                               (cons _expr18133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18068_)))
                                              _hd1808218112_
                                              _hd1807918104_)
                                             (_g1807118088_ _g1807218091_))))
                                     (_g1807118088_ _g1807218091_))))
                             (_g1807118088_ _g1807218091_))))
                     (_g1807118088_ _g1807218091_)))))
          (_g1807018135_ _stx18068_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx17999_)
      (let ((_g1800118018_
             (lambda (_g1800218015_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1800218015_))))
        (let ((_g1800018065_
               (lambda (_g1800218021_)
                 (if (gx#stx-pair? _g1800218021_)
                     (let ((_e1800518023_ (gx#stx-e _g1800218021_)))
                       (let ((_hd1800618026_ (##car _e1800518023_))
                             (_tl1800718028_ (##cdr _e1800518023_)))
                         (if (gx#stx-pair? _tl1800718028_)
                             (let ((_e1800818031_ (gx#stx-e _tl1800718028_)))
                               (let ((_hd1800918034_ (##car _e1800818031_))
                                     (_tl1801018036_ (##cdr _e1800818031_)))
                                 (if (gx#stx-pair? _tl1801018036_)
                                     (let ((_e1801118039_
                                            (gx#stx-e _tl1801018036_)))
                                       (let ((_hd1801218042_
                                              (##car _e1801118039_))
                                             (_tl1801318044_
                                              (##cdr _e1801118039_)))
                                         (if (gx#stx-null? _tl1801318044_)
                                             ((lambda (_L18047_ _L18048_)
                                                (let ((_sym18063_
                                                       (gxc#generate-runtime-binding-id
                                                        _L18048_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym18063_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym18063_
                                                     '#t)
                                                    (gxc#compile-e _L18047_))))
                                              _hd1801218042_
                                              _hd1800918034_)
                                             (_g1800118018_ _g1800218021_))))
                                     (_g1800118018_ _g1800218021_))))
                             (_g1800118018_ _g1800218021_))))
                     (_g1800118018_ _g1800218021_)))))
          (_g1800018065_ _stx17999_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form17233_)
      (let ((_g1723817395_
             (lambda (_g1723917392_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1723917392_))))
        (let ((_g1723717402_ (lambda (_g1723917398_) ((lambda () '#f)))))
          (let ((_g1723617542_
                 (lambda (_g1723917405_)
                   (if (gx#stx-pair? _g1723917405_)
                       (let ((_e1735517407_ (gx#stx-e _g1723917405_)))
                         (let ((_hd1735617410_ (##car _e1735517407_))
                               (_tl1735717412_ (##cdr _e1735517407_)))
                           (if (gx#stx-pair? _tl1735717412_)
                               (let ((_e1735817415_ (gx#stx-e _tl1735717412_)))
                                 (let ((_hd1735917418_ (##car _e1735817415_))
                                       (_tl1736017420_ (##cdr _e1735817415_)))
                                   (if (gx#stx-pair? _hd1735917418_)
                                       (let ((_e1736117423_
                                              (gx#stx-e _hd1735917418_)))
                                         (let ((_hd1736217426_
                                                (##car _e1736117423_))
                                               (_tl1736317428_
                                                (##cdr _e1736117423_)))
                                           (if (gx#identifier? _hd1736217426_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1736217426_)
                                                   (if (gx#stx-pair?
                                                        _tl1736317428_)
                                                       (let ((_e1736417431_
                                                              (gx#stx-e
                                                               _tl1736317428_)))
                                                         (let ((_hd1736517434_
                                                                (##car _e1736417431_))
                                                               (_tl1736617436_
                                                                (##cdr _e1736417431_)))
                                                           (if (gx#stx-pair?
                                                                _hd1736517434_)
                                                               (let ((_e1736717439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1736517434_)))
                         (let ((_hd1736817442_ (##car _e1736717439_))
                               (_tl1736917444_ (##cdr _e1736717439_)))
                           (if (gx#identifier? _hd1736817442_)
                               (if (gx#stx-eq? '%#ref _hd1736817442_)
                                   (if (gx#stx-pair? _tl1736917444_)
                                       (let ((_e1737017447_
                                              (gx#stx-e _tl1736917444_)))
                                         (let ((_hd1737117450_
                                                (##car _e1737017447_))
                                               (_tl1737217452_
                                                (##cdr _e1737017447_)))
                                           (if (gx#stx-null? _tl1737217452_)
                                               (if (gx#stx-pair?
                                                    _tl1736617436_)
                                                   (let ((_e1737317455_
                                                          (gx#stx-e
                                                           _tl1736617436_)))
                                                     (let ((_hd1737417458_
                                                            (##car _e1737317455_))
                                                           (_tl1737517460_
                                                            (##cdr _e1737317455_)))
                                                       (if (gx#stx-pair?
                                                            _hd1737417458_)
                                                           (let ((_e1737617463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1737417458_)))
                     (let ((_hd1737717466_ (##car _e1737617463_))
                           (_tl1737817468_ (##cdr _e1737617463_)))
                       (if (gx#identifier? _hd1737717466_)
                           (if (gx#stx-eq? '%#ref _hd1737717466_)
                               (if (gx#stx-pair? _tl1737817468_)
                                   (let ((_e1737917471_
                                          (gx#stx-e _tl1737817468_)))
                                     (let ((_hd1738017474_
                                            (##car _e1737917471_))
                                           (_tl1738117476_
                                            (##cdr _e1737917471_)))
                                       (if (gx#stx-null? _tl1738117476_)
                                           (if (gx#stx-pair? _tl1737517460_)
                                               (let ((_e1738217479_
                                                      (gx#stx-e
                                                       _tl1737517460_)))
                                                 (let ((_hd1738317482_
                                                        (##car _e1738217479_))
                                                       (_tl1738417484_
                                                        (##cdr _e1738217479_)))
                                                   (if (gx#stx-pair?
                                                        _hd1738317482_)
                                                       (let ((_e1738517487_
                                                              (gx#stx-e
                                                               _hd1738317482_)))
                                                         (let ((_hd1738617490_
                                                                (##car _e1738517487_))
                                                               (_tl1738717492_
                                                                (##cdr _e1738517487_)))
                                                           (if (gx#identifier?
                                                                _hd1738617490_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1738617490_)
                           (if (gx#stx-pair? _tl1738717492_)
                               (let ((_e1738817495_ (gx#stx-e _tl1738717492_)))
                                 (let ((_hd1738917498_ (##car _e1738817495_))
                                       (_tl1739017500_ (##cdr _e1738817495_)))
                                   (if (gx#stx-null? _tl1739017500_)
                                       (if (gx#stx-null? _tl1738417484_)
                                           (if (gx#stx-null? _tl1736017420_)
                                               ((lambda (_L17503_
                                                         _L17504_
                                                         _L17505_
                                                         _L17506_)
                                                  (if (if (gx#identifier?
                                                           _L17506_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17505_)
                           'apply)
                      (if (gx#free-identifier=? _L17506_ _L17503_)
                          (not (gx#free-identifier=? _L17504_ _L17506_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1723717402_ _g1723917405_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1738917498_
                                                _hd1738017474_
                                                _hd1737117450_
                                                _hd1735617410_)
                                               (_g1723717402_ _g1723917405_))
                                           (_g1723717402_ _g1723917405_))
                                       (_g1723717402_ _g1723917405_))))
                               (_g1723717402_ _g1723917405_))
                           (_g1723717402_ _g1723917405_))
                       (_g1723717402_ _g1723917405_))))
               (_g1723717402_ _g1723917405_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1723717402_ _g1723917405_))
                                           (_g1723717402_ _g1723917405_))))
                                   (_g1723717402_ _g1723917405_))
                               (_g1723717402_ _g1723917405_))
                           (_g1723717402_ _g1723917405_))))
                   (_g1723717402_ _g1723917405_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1723717402_
                                                    _g1723917405_))
                                               (_g1723717402_ _g1723917405_))))
                                       (_g1723717402_ _g1723917405_))
                                   (_g1723717402_ _g1723917405_))
                               (_g1723717402_ _g1723917405_))))
                       (_g1723717402_ _g1723917405_))))
               (_g1723717402_ _g1723917405_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1723717402_
                                                    _g1723917405_))
                                               (_g1723717402_ _g1723917405_))))
                                       (_g1723717402_ _g1723917405_))))
                               (_g1723717402_ _g1723917405_))))
                       (_g1723717402_ _g1723917405_)))))
            (let ((_g1723517802_
                   (lambda (_g1723917545_)
                     (if (gx#stx-pair? _g1723917545_)
                         (let ((_e1729117547_ (gx#stx-e _g1723917545_)))
                           (let ((_hd1729217550_ (##car _e1729117547_))
                                 (_tl1729317552_ (##cdr _e1729117547_)))
                             (if (gx#stx-pair/null? _hd1729217550_)
                                 (if (fx>= (gx#stx-length _hd1729217550_) '0)
                                     (let ((_g19092_
                                            (gx#syntax-split-splice
                                             _hd1729217550_
                                             '0)))
                                       (begin
                                         (let ((_g19093_
                                                (values-count _g19092_)))
                                           (if (not (fx= _g19093_ 2))
                                               (error "Context expects 2 values"
                                                      _g19093_)))
                                         (let ((_target1729417555_
                                                (values-ref _g19092_ 0))
                                               (_tl1729617557_
                                                (values-ref _g19092_ 1)))
                                           (letrec ((_loop1729717560_
                                                     (lambda (_hd1729517563_
                                                              _arg1730117565_)
                                                       (if (gx#stx-pair?
                                                            _hd1729517563_)
                                                           (let ((_e1729817568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1729517563_)))
                     (let ((_lp-hd1729917571_ (##car _e1729817568_))
                           (_lp-tl1730017573_ (##cdr _e1729817568_)))
                       (_loop1729717560_
                        _lp-tl1730017573_
                        (cons _lp-hd1729917571_ _arg1730117565_))))
                   (let ((_arg1730217576_ (reverse _arg1730117565_)))
                     (if (gx#stx-pair? _tl1729317552_)
                         (let ((_e1730317579_ (gx#stx-e _tl1729317552_)))
                           (let ((_hd1730417582_ (##car _e1730317579_))
                                 (_tl1730517584_ (##cdr _e1730317579_)))
                             (if (gx#stx-pair? _hd1730417582_)
                                 (let ((_e1730617587_
                                        (gx#stx-e _hd1730417582_)))
                                   (let ((_hd1730717590_ (##car _e1730617587_))
                                         (_tl1730817592_
                                          (##cdr _e1730617587_)))
                                     (if (gx#identifier? _hd1730717590_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1730717590_)
                                             (if (gx#stx-pair? _tl1730817592_)
                                                 (let ((_e1730917595_
                                                        (gx#stx-e
                                                         _tl1730817592_)))
                                                   (let ((_hd1731017598_
                                                          (##car _e1730917595_))
                                                         (_tl1731117600_
                                                          (##cdr _e1730917595_)))
                                                     (if (gx#stx-pair?
                                                          _hd1731017598_)
                                                         (let ((_e1731217603_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1731017598_)))
                   (let ((_hd1731317606_ (##car _e1731217603_))
                         (_tl1731417608_ (##cdr _e1731217603_)))
                     (if (gx#identifier? _hd1731317606_)
                         (if (gx#stx-eq? '%#ref _hd1731317606_)
                             (if (gx#stx-pair? _tl1731417608_)
                                 (let ((_e1731517611_
                                        (gx#stx-e _tl1731417608_)))
                                   (let ((_hd1731617614_ (##car _e1731517611_))
                                         (_tl1731717616_
                                          (##cdr _e1731517611_)))
                                     (if (gx#stx-null? _tl1731717616_)
                                         (if (gx#stx-pair? _tl1731117600_)
                                             (let ((_e1731817619_
                                                    (gx#stx-e _tl1731117600_)))
                                               (let ((_hd1731917622_
                                                      (##car _e1731817619_))
                                                     (_tl1732017624_
                                                      (##cdr _e1731817619_)))
                                                 (if (gx#stx-pair?
                                                      _hd1731917622_)
                                                     (let ((_e1732117627_
                                                            (gx#stx-e
                                                             _hd1731917622_)))
                                                       (let ((_hd1732217630_
                                                              (##car _e1732117627_))
                                                             (_tl1732317632_
                                                              (##cdr _e1732117627_)))
                                                         (if (gx#identifier?
                                                              _hd1732217630_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1732217630_)
                         (if (gx#stx-pair? _tl1732317632_)
                             (let ((_e1732417635_ (gx#stx-e _tl1732317632_)))
                               (let ((_hd1732517638_ (##car _e1732417635_))
                                     (_tl1732617640_ (##cdr _e1732417635_)))
                                 (if (gx#stx-null? _tl1732617640_)
                                     (if (gx#stx-pair/null? _tl1732017624_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1732017624_)
                                                   '1)
                                             (let ((_g19094_
                                                    (gx#syntax-split-splice
                                                     _tl1732017624_
                                                     '1)))
                                               (begin
                                                 (let ((_g19095_
                                                        (values-count
                                                         _g19094_)))
                                                   (if (not (fx= _g19095_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19095_)))
                                                 (let ((_target1732717643_
                                                        (values-ref
                                                         _g19094_
                                                         0))
                                                       (_tl1732917645_
                                                        (values-ref
                                                         _g19094_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1732917645_)
                                                       (let ((_e1733617648_
                                                              (gx#stx-e
                                                               _tl1732917645_)))
                                                         (let ((_hd1733717651_
                                                                (##car _e1733617648_))
                                                               (_tl1733817653_
                                                                (##cdr _e1733617648_)))
                                                           (if (gx#stx-pair?
                                                                _hd1733717651_)
                                                               (let ((_e1733917656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1733717651_)))
                         (let ((_hd1734017659_ (##car _e1733917656_))
                               (_tl1734117661_ (##cdr _e1733917656_)))
                           (if (gx#identifier? _hd1734017659_)
                               (if (gx#stx-eq? '%#ref _hd1734017659_)
                                   (if (gx#stx-pair? _tl1734117661_)
                                       (let ((_e1734217664_
                                              (gx#stx-e _tl1734117661_)))
                                         (let ((_hd1734317667_
                                                (##car _e1734217664_))
                                               (_tl1734417669_
                                                (##cdr _e1734217664_)))
                                           (if (gx#stx-null? _tl1734417669_)
                                               (if (gx#stx-null?
                                                    _tl1733817653_)
                                                   (letrec ((_loop1733017672_
                                                             (lambda (_hd1732817675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1733417677_)
                       (if (gx#stx-pair? _hd1732817675_)
                           (let ((_e1733117680_ (gx#stx-e _hd1732817675_)))
                             (let ((_lp-hd1733217683_ (##car _e1733117680_))
                                   (_lp-tl1733317685_ (##cdr _e1733117680_)))
                               (if (gx#stx-pair? _lp-hd1733217683_)
                                   (let ((_e1734517688_
                                          (gx#stx-e _lp-hd1733217683_)))
                                     (let ((_hd1734617691_
                                            (##car _e1734517688_))
                                           (_tl1734717693_
                                            (##cdr _e1734517688_)))
                                       (if (gx#identifier? _hd1734617691_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1734617691_)
                                               (if (gx#stx-pair?
                                                    _tl1734717693_)
                                                   (let ((_e1734817696_
                                                          (gx#stx-e
                                                           _tl1734717693_)))
                                                     (let ((_hd1734917699_
                                                            (##car _e1734817696_))
                                                           (_tl1735017701_
                                                            (##cdr _e1734817696_)))
                                                       (if (gx#stx-null?
                                                            _tl1735017701_)
                                                           (_loop1733017672_
                                                            _lp-tl1733317685_
                                                            (cons _hd1734917699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1733417677_))
                   (_g1723617542_ _g1723917545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1723617542_
                                                    _g1723917545_))
                                               (_g1723617542_ _g1723917545_))
                                           (_g1723617542_ _g1723917545_))))
                                   (_g1723617542_ _g1723917545_))))
                           (let ((_xarg1733517704_ (reverse _xarg1733417677_)))
                             (if (gx#stx-null? _tl1730517584_)
                                 ((lambda (_L17707_
                                           _L17708_
                                           _L17709_
                                           _L17710_
                                           _L17711_
                                           _L17712_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1775517758_
                                                                _g1775617760_)
                                                         (cons _g1775517758_
                                                               _g1775617760_))
                                                       '()
                                                       _L17712_)))
                                            (if (gx#identifier? _L17711_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L17710_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1776217765_ _g1776317767_)
                                         (cons _g1776217765_ _g1776317767_))
                                       '()
                                       _L17712_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1776917772_ _g1777017774_)
                                         (cons _g1776917772_ _g1777017774_))
                                       '()
                                       _L17708_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1777617779_ _g1777717781_)
                                        (cons _g1777617779_ _g1777717781_))
                                      '()
                                      _L17712_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1778317786_ _g1778417788_)
                                        (cons _g1778317786_ _g1778417788_))
                                      '()
                                      _L17708_)))
                    (if (gx#free-identifier=? _L17711_ _L17707_)
                        (not (find (lambda (_g1779017792_)
                                     (gx#free-identifier=?
                                      _g1779017792_
                                      _L17709_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1779417797_
                                                      _g1779517799_)
                                               (cons _g1779417797_
                                                     _g1779517799_))
                                             (cons _L17711_ '())
                                             _L17712_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1723617542_ _g1723917545_)))
                                  _hd1734317667_
                                  _xarg1733517704_
                                  _hd1732517638_
                                  _hd1731617614_
                                  _tl1729617557_
                                  _arg1730217576_)
                                 (_g1723617542_ _g1723917545_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1733017672_
                                                      _target1732717643_
                                                      '()))
                                                   (_g1723617542_
                                                    _g1723917545_))
                                               (_g1723617542_ _g1723917545_))))
                                       (_g1723617542_ _g1723917545_))
                                   (_g1723617542_ _g1723917545_))
                               (_g1723617542_ _g1723917545_))))
                       (_g1723617542_ _g1723917545_))))
               (_g1723617542_ _g1723917545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1723617542_ _g1723917545_))
                                         (_g1723617542_ _g1723917545_))
                                     (_g1723617542_ _g1723917545_))))
                             (_g1723617542_ _g1723917545_))
                         (_g1723617542_ _g1723917545_))
                     (_g1723617542_ _g1723917545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1723617542_
                                                      _g1723917545_))))
                                             (_g1723617542_ _g1723917545_))
                                         (_g1723617542_ _g1723917545_))))
                                 (_g1723617542_ _g1723917545_))
                             (_g1723617542_ _g1723917545_))
                         (_g1723617542_ _g1723917545_))))
                 (_g1723617542_ _g1723917545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1723617542_ _g1723917545_))
                                             (_g1723617542_ _g1723917545_))
                                         (_g1723617542_ _g1723917545_))))
                                 (_g1723617542_ _g1723917545_))))
                         (_g1723617542_ _g1723917545_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1729717560_
                                              _target1729417555_
                                              '())))))
                                     (_g1723617542_ _g1723917545_))
                                 (_g1723617542_ _g1723917545_))))
                         (_g1723617542_ _g1723917545_)))))
              (let ((_g1723417996_
                     (lambda (_g1723917805_)
                       (if (gx#stx-pair? _g1723917805_)
                           (let ((_e1724317807_ (gx#stx-e _g1723917805_)))
                             (let ((_hd1724417810_ (##car _e1724317807_))
                                   (_tl1724517812_ (##cdr _e1724317807_)))
                               (if (gx#stx-pair/null? _hd1724417810_)
                                   (if (fx>= (gx#stx-length _hd1724417810_) '0)
                                       (let ((_g19096_
                                              (gx#syntax-split-splice
                                               _hd1724417810_
                                               '0)))
                                         (begin
                                           (let ((_g19097_
                                                  (values-count _g19096_)))
                                             (if (not (fx= _g19097_ 2))
                                                 (error "Context expects 2 values"
                                                        _g19097_)))
                                           (let ((_target1724617815_
                                                  (values-ref _g19096_ 0))
                                                 (_tl1724817817_
                                                  (values-ref _g19096_ 1)))
                                             (if (gx#stx-null? _tl1724817817_)
                                                 (letrec ((_loop1724917820_
                                                           (lambda (_hd1724717823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1725317825_)
                     (if (gx#stx-pair? _hd1724717823_)
                         (let ((_e1725017828_ (gx#stx-e _hd1724717823_)))
                           (let ((_lp-hd1725117831_ (##car _e1725017828_))
                                 (_lp-tl1725217833_ (##cdr _e1725017828_)))
                             (_loop1724917820_
                              _lp-tl1725217833_
                              (cons _lp-hd1725117831_ _arg1725317825_))))
                         (let ((_arg1725417836_ (reverse _arg1725317825_)))
                           (if (gx#stx-pair? _tl1724517812_)
                               (let ((_e1725517839_ (gx#stx-e _tl1724517812_)))
                                 (let ((_hd1725617842_ (##car _e1725517839_))
                                       (_tl1725717844_ (##cdr _e1725517839_)))
                                   (if (gx#stx-pair? _hd1725617842_)
                                       (let ((_e1725817847_
                                              (gx#stx-e _hd1725617842_)))
                                         (let ((_hd1725917850_
                                                (##car _e1725817847_))
                                               (_tl1726017852_
                                                (##cdr _e1725817847_)))
                                           (if (gx#identifier? _hd1725917850_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1725917850_)
                                                   (if (gx#stx-pair?
                                                        _tl1726017852_)
                                                       (let ((_e1726117855_
                                                              (gx#stx-e
                                                               _tl1726017852_)))
                                                         (let ((_hd1726217858_
                                                                (##car _e1726117855_))
                                                               (_tl1726317860_
                                                                (##cdr _e1726117855_)))
                                                           (if (gx#stx-pair?
                                                                _hd1726217858_)
                                                               (let ((_e1726417863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1726217858_)))
                         (let ((_hd1726517866_ (##car _e1726417863_))
                               (_tl1726617868_ (##cdr _e1726417863_)))
                           (if (gx#identifier? _hd1726517866_)
                               (if (gx#stx-eq? '%#ref _hd1726517866_)
                                   (if (gx#stx-pair? _tl1726617868_)
                                       (let ((_e1726717871_
                                              (gx#stx-e _tl1726617868_)))
                                         (let ((_hd1726817874_
                                                (##car _e1726717871_))
                                               (_tl1726917876_
                                                (##cdr _e1726717871_)))
                                           (if (gx#stx-null? _tl1726917876_)
                                               (if (gx#stx-pair/null?
                                                    _tl1726317860_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1726317860_)
                                                             '0)
                                                       (let ((_g19098_
                                                              (gx#syntax-split-splice
                                                               _tl1726317860_
                                                               '0)))
                                                         (begin
                                                           (let ((_g19099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g19098_)))
                     (if (not (fx= _g19099_ 2))
                         (error "Context expects 2 values" _g19099_)))
                   (let ((_target1727017879_ (values-ref _g19098_ 0))
                         (_tl1727217881_ (values-ref _g19098_ 1)))
                     (if (gx#stx-null? _tl1727217881_)
                         (letrec ((_loop1727317884_
                                   (lambda (_hd1727117887_ _xarg1727717889_)
                                     (if (gx#stx-pair? _hd1727117887_)
                                         (let ((_e1727417892_
                                                (gx#stx-e _hd1727117887_)))
                                           (let ((_lp-hd1727517895_
                                                  (##car _e1727417892_))
                                                 (_lp-tl1727617897_
                                                  (##cdr _e1727417892_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1727517895_)
                                                 (let ((_e1727917900_
                                                        (gx#stx-e
                                                         _lp-hd1727517895_)))
                                                   (let ((_hd1728017903_
                                                          (##car _e1727917900_))
                                                         (_tl1728117905_
                                                          (##cdr _e1727917900_)))
                                                     (if (gx#identifier?
                                                          _hd1728017903_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1728017903_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1728117905_)
                         (let ((_e1728217908_ (gx#stx-e _tl1728117905_)))
                           (let ((_hd1728317911_ (##car _e1728217908_))
                                 (_tl1728417913_ (##cdr _e1728217908_)))
                             (if (gx#stx-null? _tl1728417913_)
                                 (_loop1727317884_
                                  _lp-tl1727617897_
                                  (cons _hd1728317911_ _xarg1727717889_))
                                 (_g1723517802_ _g1723917805_))))
                         (_g1723517802_ _g1723917805_))
                     (_g1723517802_ _g1723917805_))
                 (_g1723517802_ _g1723917805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1723517802_
                                                  _g1723917805_))))
                                         (let ((_xarg1727817916_
                                                (reverse _xarg1727717889_)))
                                           (if (gx#stx-null? _tl1725717844_)
                                               ((lambda (_L17919_
                                                         _L17920_
                                                         _L17921_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1794917952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1795017954_)
                               (cons _g1794917952_ _g1795017954_))
                             '()
                             _L17921_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1795617959_
                                                      _g1795717961_)
                                               (cons _g1795617959_
                                                     _g1795717961_))
                                             '()
                                             _L17921_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1796317966_
                                                      _g1796417968_)
                                               (cons _g1796317966_
                                                     _g1796417968_))
                                             '()
                                             _L17919_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1797017973_
                                                     _g1797117975_)
                                              (cons _g1797017973_
                                                    _g1797117975_))
                                            '()
                                            _L17921_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1797717980_
                                                     _g1797817982_)
                                              (cons _g1797717980_
                                                    _g1797817982_))
                                            '()
                                            _L17919_)))
                          (not (find (lambda (_g1798417986_)
                                       (gx#free-identifier=?
                                        _g1798417986_
                                        _L17920_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1798817991_
                                                        _g1798917993_)
                                                 (cons _g1798817991_
                                                       _g1798917993_))
                                               '()
                                               _L17921_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1723517802_ _g1723917805_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1727817916_
                                                _hd1726817874_
                                                _arg1725417836_)
                                               (_g1723517802_
                                                _g1723917805_)))))))
                           (_loop1727317884_ _target1727017879_ '()))
                         (_g1723517802_ _g1723917805_)))))
               (_g1723517802_ _g1723917805_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1723517802_
                                                    _g1723917805_))
                                               (_g1723517802_ _g1723917805_))))
                                       (_g1723517802_ _g1723917805_))
                                   (_g1723517802_ _g1723917805_))
                               (_g1723517802_ _g1723917805_))))
                       (_g1723517802_ _g1723917805_))))
               (_g1723517802_ _g1723917805_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1723517802_
                                                    _g1723917805_))
                                               (_g1723517802_ _g1723917805_))))
                                       (_g1723517802_ _g1723917805_))))
                               (_g1723517802_ _g1723917805_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1724917820_
                                                    _target1724617815_
                                                    '()))
                                                 (_g1723517802_
                                                  _g1723917805_)))))
                                       (_g1723517802_ _g1723917805_))
                                   (_g1723517802_ _g1723917805_))))
                           (_g1723517802_ _g1723917805_)))))
                (_g1723417996_ _form17233_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form16701_)
      (let ((_g1670516829_
             (lambda (_g1670616826_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1670616826_))))
        (let ((_g1670416946_
               (lambda (_g1670616832_)
                 (if (gx#stx-pair? _g1670616832_)
                     (let ((_e1679516834_ (gx#stx-e _g1670616832_)))
                       (let ((_hd1679616837_ (##car _e1679516834_))
                             (_tl1679716839_ (##cdr _e1679516834_)))
                         (if (gx#stx-pair? _tl1679716839_)
                             (let ((_e1679816842_ (gx#stx-e _tl1679716839_)))
                               (let ((_hd1679916845_ (##car _e1679816842_))
                                     (_tl1680016847_ (##cdr _e1679816842_)))
                                 (if (gx#stx-pair? _hd1679916845_)
                                     (let ((_e1680116850_
                                            (gx#stx-e _hd1679916845_)))
                                       (let ((_hd1680216853_
                                              (##car _e1680116850_))
                                             (_tl1680316855_
                                              (##cdr _e1680116850_)))
                                         (if (gx#identifier? _hd1680216853_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1680216853_)
                                                 (if (gx#stx-pair?
                                                      _tl1680316855_)
                                                     (let ((_e1680416858_
                                                            (gx#stx-e
                                                             _tl1680316855_)))
                                                       (let ((_hd1680516861_
                                                              (##car _e1680416858_))
                                                             (_tl1680616863_
                                                              (##cdr _e1680416858_)))
                                                         (if (gx#stx-pair?
                                                              _hd1680516861_)
                                                             (let ((_e1680716866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1680516861_)))
                       (let ((_hd1680816869_ (##car _e1680716866_))
                             (_tl1680916871_ (##cdr _e1680716866_)))
                         (if (gx#identifier? _hd1680816869_)
                             (if (gx#stx-eq? '%#ref _hd1680816869_)
                                 (if (gx#stx-pair? _tl1680916871_)
                                     (let ((_e1681016874_
                                            (gx#stx-e _tl1680916871_)))
                                       (let ((_hd1681116877_
                                              (##car _e1681016874_))
                                             (_tl1681216879_
                                              (##cdr _e1681016874_)))
                                         (if (gx#stx-null? _tl1681216879_)
                                             (if (gx#stx-pair? _tl1680616863_)
                                                 (let ((_e1681316882_
                                                        (gx#stx-e
                                                         _tl1680616863_)))
                                                   (let ((_hd1681416885_
                                                          (##car _e1681316882_))
                                                         (_tl1681516887_
                                                          (##cdr _e1681316882_)))
                                                     (if (gx#stx-pair?
                                                          _hd1681416885_)
                                                         (let ((_e1681616890_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1681416885_)))
                   (let ((_hd1681716893_ (##car _e1681616890_))
                         (_tl1681816895_ (##cdr _e1681616890_)))
                     (if (gx#identifier? _hd1681716893_)
                         (if (gx#stx-eq? '%#ref _hd1681716893_)
                             (if (gx#stx-pair? _tl1681816895_)
                                 (let ((_e1681916898_
                                        (gx#stx-e _tl1681816895_)))
                                   (let ((_hd1682016901_ (##car _e1681916898_))
                                         (_tl1682116903_
                                          (##cdr _e1681916898_)))
                                     (if (gx#stx-null? _tl1682116903_)
                                         (if (gx#stx-pair? _tl1681516887_)
                                             (let ((_e1682216906_
                                                    (gx#stx-e _tl1681516887_)))
                                               (let ((_hd1682316909_
                                                      (##car _e1682216906_))
                                                     (_tl1682416911_
                                                      (##cdr _e1682216906_)))
                                                 (if (gx#stx-null?
                                                      _tl1682416911_)
                                                     (if (gx#stx-null?
                                                          _tl1680016847_)
                                                         ((lambda (_L16914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16915_
                           _L16916_)
                    (gxc#generate-runtime-binding-id _L16914_))
                  _hd1682016901_
                  _hd1681116877_
                  _hd1679616837_)
                 (_g1670516829_ _g1670616832_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1670516829_
                                                      _g1670616832_))))
                                             (_g1670516829_ _g1670616832_))
                                         (_g1670516829_ _g1670616832_))))
                                 (_g1670516829_ _g1670616832_))
                             (_g1670516829_ _g1670616832_))
                         (_g1670516829_ _g1670616832_))))
                 (_g1670516829_ _g1670616832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1670516829_ _g1670616832_))
                                             (_g1670516829_ _g1670616832_))))
                                     (_g1670516829_ _g1670616832_))
                                 (_g1670516829_ _g1670616832_))
                             (_g1670516829_ _g1670616832_))))
                     (_g1670516829_ _g1670616832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1670516829_
                                                      _g1670616832_))
                                                 (_g1670516829_ _g1670616832_))
                                             (_g1670516829_ _g1670616832_))))
                                     (_g1670516829_ _g1670616832_))))
                             (_g1670516829_ _g1670616832_))))
                     (_g1670516829_ _g1670616832_)))))
          (let ((_g1670317082_
                 (lambda (_g1670616949_)
                   (if (gx#stx-pair? _g1670616949_)
                       (let ((_e1675616951_ (gx#stx-e _g1670616949_)))
                         (let ((_hd1675716954_ (##car _e1675616951_))
                               (_tl1675816956_ (##cdr _e1675616951_)))
                           (if (gx#stx-pair/null? _hd1675716954_)
                               (if (fx>= (gx#stx-length _hd1675716954_) '0)
                                   (let ((_g19100_
                                          (gx#syntax-split-splice
                                           _hd1675716954_
                                           '0)))
                                     (begin
                                       (let ((_g19101_
                                              (values-count _g19100_)))
                                         (if (not (fx= _g19101_ 2))
                                             (error "Context expects 2 values"
                                                    _g19101_)))
                                       (let ((_target1675916959_
                                              (values-ref _g19100_ 0))
                                             (_tl1676116961_
                                              (values-ref _g19100_ 1)))
                                         (letrec ((_loop1676216964_
                                                   (lambda (_hd1676016967_
                                                            _arg1676616969_)
                                                     (if (gx#stx-pair?
                                                          _hd1676016967_)
                                                         (let ((_e1676316972_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1676016967_)))
                   (let ((_lp-hd1676416975_ (##car _e1676316972_))
                         (_lp-tl1676516977_ (##cdr _e1676316972_)))
                     (_loop1676216964_
                      _lp-tl1676516977_
                      (cons _lp-hd1676416975_ _arg1676616969_))))
                 (let ((_arg1676716980_ (reverse _arg1676616969_)))
                   (if (gx#stx-pair? _tl1675816956_)
                       (let ((_e1676816983_ (gx#stx-e _tl1675816956_)))
                         (let ((_hd1676916986_ (##car _e1676816983_))
                               (_tl1677016988_ (##cdr _e1676816983_)))
                           (if (gx#stx-pair? _hd1676916986_)
                               (let ((_e1677116991_ (gx#stx-e _hd1676916986_)))
                                 (let ((_hd1677216994_ (##car _e1677116991_))
                                       (_tl1677316996_ (##cdr _e1677116991_)))
                                   (if (gx#identifier? _hd1677216994_)
                                       (if (gx#stx-eq? '%#call _hd1677216994_)
                                           (if (gx#stx-pair? _tl1677316996_)
                                               (let ((_e1677416999_
                                                      (gx#stx-e
                                                       _tl1677316996_)))
                                                 (let ((_hd1677517002_
                                                        (##car _e1677416999_))
                                                       (_tl1677617004_
                                                        (##cdr _e1677416999_)))
                                                   (if (gx#stx-pair?
                                                        _hd1677517002_)
                                                       (let ((_e1677717007_
                                                              (gx#stx-e
                                                               _hd1677517002_)))
                                                         (let ((_hd1677817010_
                                                                (##car _e1677717007_))
                                                               (_tl1677917012_
                                                                (##cdr _e1677717007_)))
                                                           (if (gx#identifier?
                                                                _hd1677817010_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1677817010_)
                           (if (gx#stx-pair? _tl1677917012_)
                               (let ((_e1678017015_ (gx#stx-e _tl1677917012_)))
                                 (let ((_hd1678117018_ (##car _e1678017015_))
                                       (_tl1678217020_ (##cdr _e1678017015_)))
                                   (if (gx#stx-null? _tl1678217020_)
                                       (if (gx#stx-pair? _tl1677617004_)
                                           (let ((_e1678317023_
                                                  (gx#stx-e _tl1677617004_)))
                                             (let ((_hd1678417026_
                                                    (##car _e1678317023_))
                                                   (_tl1678517028_
                                                    (##cdr _e1678317023_)))
                                               (if (gx#stx-pair?
                                                    _hd1678417026_)
                                                   (let ((_e1678617031_
                                                          (gx#stx-e
                                                           _hd1678417026_)))
                                                     (let ((_hd1678717034_
                                                            (##car _e1678617031_))
                                                           (_tl1678817036_
                                                            (##cdr _e1678617031_)))
                                                       (if (gx#identifier?
                                                            _hd1678717034_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1678717034_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1678817036_)
                           (let ((_e1678917039_ (gx#stx-e _tl1678817036_)))
                             (let ((_hd1679017042_ (##car _e1678917039_))
                                   (_tl1679117044_ (##cdr _e1678917039_)))
                               (if (gx#stx-null? _tl1679117044_)
                                   (if (gx#stx-null? _tl1677016988_)
                                       ((lambda (_L17047_
                                                 _L17048_
                                                 _L17049_
                                                 _L17050_)
                                          (gxc#generate-runtime-binding-id
                                           _L17047_))
                                        _hd1679017042_
                                        _hd1678117018_
                                        _tl1676116961_
                                        _arg1676716980_)
                                       (_g1670416946_ _g1670616949_))
                                   (_g1670416946_ _g1670616949_))))
                           (_g1670416946_ _g1670616949_))
                       (_g1670416946_ _g1670616949_))
                   (_g1670416946_ _g1670616949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1670416946_
                                                    _g1670616949_))))
                                           (_g1670416946_ _g1670616949_))
                                       (_g1670416946_ _g1670616949_))))
                               (_g1670416946_ _g1670616949_))
                           (_g1670416946_ _g1670616949_))
                       (_g1670416946_ _g1670616949_))))
               (_g1670416946_ _g1670616949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1670416946_ _g1670616949_))
                                           (_g1670416946_ _g1670616949_))
                                       (_g1670416946_ _g1670616949_))))
                               (_g1670416946_ _g1670616949_))))
                       (_g1670416946_ _g1670616949_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1676216964_
                                            _target1675916959_
                                            '())))))
                                   (_g1670416946_ _g1670616949_))
                               (_g1670416946_ _g1670616949_))))
                       (_g1670416946_ _g1670616949_)))))
            (let ((_g1670217230_
                   (lambda (_g1670617085_)
                     (if (gx#stx-pair? _g1670617085_)
                         (let ((_e1671017087_ (gx#stx-e _g1670617085_)))
                           (let ((_hd1671117090_ (##car _e1671017087_))
                                 (_tl1671217092_ (##cdr _e1671017087_)))
                             (if (gx#stx-pair/null? _hd1671117090_)
                                 (if (fx>= (gx#stx-length _hd1671117090_) '0)
                                     (let ((_g19102_
                                            (gx#syntax-split-splice
                                             _hd1671117090_
                                             '0)))
                                       (begin
                                         (let ((_g19103_
                                                (values-count _g19102_)))
                                           (if (not (fx= _g19103_ 2))
                                               (error "Context expects 2 values"
                                                      _g19103_)))
                                         (let ((_target1671317095_
                                                (values-ref _g19102_ 0))
                                               (_tl1671517097_
                                                (values-ref _g19102_ 1)))
                                           (if (gx#stx-null? _tl1671517097_)
                                               (letrec ((_loop1671617100_
                                                         (lambda (_hd1671417103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1672017105_)
                   (if (gx#stx-pair? _hd1671417103_)
                       (let ((_e1671717108_ (gx#stx-e _hd1671417103_)))
                         (let ((_lp-hd1671817111_ (##car _e1671717108_))
                               (_lp-tl1671917113_ (##cdr _e1671717108_)))
                           (_loop1671617100_
                            _lp-tl1671917113_
                            (cons _lp-hd1671817111_ _arg1672017105_))))
                       (let ((_arg1672117116_ (reverse _arg1672017105_)))
                         (if (gx#stx-pair? _tl1671217092_)
                             (let ((_e1672217119_ (gx#stx-e _tl1671217092_)))
                               (let ((_hd1672317122_ (##car _e1672217119_))
                                     (_tl1672417124_ (##cdr _e1672217119_)))
                                 (if (gx#stx-pair? _hd1672317122_)
                                     (let ((_e1672517127_
                                            (gx#stx-e _hd1672317122_)))
                                       (let ((_hd1672617130_
                                              (##car _e1672517127_))
                                             (_tl1672717132_
                                              (##cdr _e1672517127_)))
                                         (if (gx#identifier? _hd1672617130_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1672617130_)
                                                 (if (gx#stx-pair?
                                                      _tl1672717132_)
                                                     (let ((_e1672817135_
                                                            (gx#stx-e
                                                             _tl1672717132_)))
                                                       (let ((_hd1672917138_
                                                              (##car _e1672817135_))
                                                             (_tl1673017140_
                                                              (##cdr _e1672817135_)))
                                                         (if (gx#stx-pair?
                                                              _hd1672917138_)
                                                             (let ((_e1673117143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1672917138_)))
                       (let ((_hd1673217146_ (##car _e1673117143_))
                             (_tl1673317148_ (##cdr _e1673117143_)))
                         (if (gx#identifier? _hd1673217146_)
                             (if (gx#stx-eq? '%#ref _hd1673217146_)
                                 (if (gx#stx-pair? _tl1673317148_)
                                     (let ((_e1673417151_
                                            (gx#stx-e _tl1673317148_)))
                                       (let ((_hd1673517154_
                                              (##car _e1673417151_))
                                             (_tl1673617156_
                                              (##cdr _e1673417151_)))
                                         (if (gx#stx-null? _tl1673617156_)
                                             (if (gx#stx-pair/null?
                                                  _tl1673017140_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1673017140_)
                                                           '0)
                                                     (let ((_g19104_
                                                            (gx#syntax-split-splice
                                                             _tl1673017140_
                                                             '0)))
                                                       (begin
                                                         (let ((_g19105_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g19104_)))
                   (if (not (fx= _g19105_ 2))
                       (error "Context expects 2 values" _g19105_)))
                 (let ((_target1673717159_ (values-ref _g19104_ 0))
                       (_tl1673917161_ (values-ref _g19104_ 1)))
                   (if (gx#stx-null? _tl1673917161_)
                       (letrec ((_loop1674017164_
                                 (lambda (_hd1673817167_ _xarg1674417169_)
                                   (if (gx#stx-pair? _hd1673817167_)
                                       (let ((_e1674117172_
                                              (gx#stx-e _hd1673817167_)))
                                         (let ((_lp-hd1674217175_
                                                (##car _e1674117172_))
                                               (_lp-tl1674317177_
                                                (##cdr _e1674117172_)))
                                           (if (gx#stx-pair? _lp-hd1674217175_)
                                               (let ((_e1674617180_
                                                      (gx#stx-e
                                                       _lp-hd1674217175_)))
                                                 (let ((_hd1674717183_
                                                        (##car _e1674617180_))
                                                       (_tl1674817185_
                                                        (##cdr _e1674617180_)))
                                                   (if (gx#identifier?
                                                        _hd1674717183_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1674717183_)
                                                           (if (gx#stx-pair?
                                                                _tl1674817185_)
                                                               (let ((_e1674917188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1674817185_)))
                         (let ((_hd1675017191_ (##car _e1674917188_))
                               (_tl1675117193_ (##cdr _e1674917188_)))
                           (if (gx#stx-null? _tl1675117193_)
                               (_loop1674017164_
                                _lp-tl1674317177_
                                (cons _hd1675017191_ _xarg1674417169_))
                               (_g1670317082_ _g1670617085_))))
                       (_g1670317082_ _g1670617085_))
                   (_g1670317082_ _g1670617085_))
               (_g1670317082_ _g1670617085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1670317082_ _g1670617085_))))
                                       (let ((_xarg1674517196_
                                              (reverse _xarg1674417169_)))
                                         (if (gx#stx-null? _tl1672417124_)
                                             ((lambda (_L17199_
                                                       _L17200_
                                                       _L17201_)
                                                (gxc#generate-runtime-binding-id
                                                 _L17200_))
                                              _xarg1674517196_
                                              _hd1673517154_
                                              _arg1672117116_)
                                             (_g1670317082_
                                              _g1670617085_)))))))
                         (_loop1674017164_ _target1673717159_ '()))
                       (_g1670317082_ _g1670617085_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1670317082_
                                                      _g1670617085_))
                                                 (_g1670317082_ _g1670617085_))
                                             (_g1670317082_ _g1670617085_))))
                                     (_g1670317082_ _g1670617085_))
                                 (_g1670317082_ _g1670617085_))
                             (_g1670317082_ _g1670617085_))))
                     (_g1670317082_ _g1670617085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1670317082_
                                                      _g1670617085_))
                                                 (_g1670317082_ _g1670617085_))
                                             (_g1670317082_ _g1670617085_))))
                                     (_g1670317082_ _g1670617085_))))
                             (_g1670317082_ _g1670617085_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1671617100_
                                                  _target1671317095_
                                                  '()))
                                               (_g1670317082_
                                                _g1670617085_)))))
                                     (_g1670317082_ _g1670617085_))
                                 (_g1670317082_ _g1670617085_))))
                         (_g1670317082_ _g1670617085_)))))
              (_g1670217230_ _form16701_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form16505_)
      (let ((_g1650716521_
             (lambda (_g1650816518_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1650816518_))))
        (let ((_g1650616698_
               (lambda (_g1650816524_)
                 (if (gx#stx-pair? _g1650816524_)
                     (let ((_e1651116526_ (gx#stx-e _g1650816524_)))
                       (let ((_hd1651216529_ (##car _e1651116526_))
                             (_tl1651316531_ (##cdr _e1651116526_)))
                         (if (gx#stx-pair? _tl1651316531_)
                             (let ((_e1651416534_ (gx#stx-e _tl1651316531_)))
                               (let ((_hd1651516537_ (##car _e1651416534_))
                                     (_tl1651616539_ (##cdr _e1651416534_)))
                                 (if (gx#stx-null? _tl1651616539_)
                                     ((lambda (_L16542_ _L16543_)
                                        (let ((_g1655816586_
                                               (lambda (_g1655916583_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1655916583_))))
                                          (let ((_g1655716599_
                                                 (lambda (_g1655916589_)
                                                   ((lambda (_L16591_)
                                                      (cons '0 '()))
                                                    _g1655916589_))))
                                            (let ((_g1655616648_
                                                   (lambda (_g1655916602_)
                                                     (if (gx#stx-pair/null?
                                                          _g1655916602_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1655916602_)
                           '0)
                     (let ((_g19106_
                            (gx#syntax-split-splice _g1655916602_ '0)))
                       (begin
                         (let ((_g19107_ (values-count _g19106_)))
                           (if (not (fx= _g19107_ 2))
                               (error "Context expects 2 values" _g19107_)))
                         (let ((_target1657216604_ (values-ref _g19106_ 0))
                               (_tl1657416606_ (values-ref _g19106_ 1)))
                           (letrec ((_loop1657516609_
                                     (lambda (_hd1657316612_ _arg1657916614_)
                                       (if (gx#stx-pair? _hd1657316612_)
                                           (let ((_e1657616617_
                                                  (gx#stx-e _hd1657316612_)))
                                             (let ((_lp-hd1657716620_
                                                    (##car _e1657616617_))
                                                   (_lp-tl1657816622_
                                                    (##cdr _e1657616617_)))
                                               (_loop1657516609_
                                                _lp-tl1657816622_
                                                (cons _lp-hd1657716620_
                                                      _arg1657916614_))))
                                           (let ((_arg1658016625_
                                                  (reverse _arg1657916614_)))
                                             ((lambda (_L16628_ _L16629_)
                                                (cons (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1664016643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1664116645_)
                                  (cons _g1664016643_ _g1664116645_))
                                '()
                                _L16629_)))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _tl1657416606_
                                              _arg1658016625_))))))
                             (_loop1657516609_ _target1657216604_ '())))))
                     (_g1655716599_ _g1655916602_))
                 (_g1655716599_ _g1655916602_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1655516695_
                                                     (lambda (_g1655916651_)
                                                       (if (gx#stx-pair/null?
                                                            _g1655916651_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1655916651_)
                             '0)
                       (let ((_g19108_
                              (gx#syntax-split-splice _g1655916651_ '0)))
                         (begin
                           (let ((_g19109_ (values-count _g19108_)))
                             (if (not (fx= _g19109_ 2))
                                 (error "Context expects 2 values" _g19109_)))
                           (let ((_target1656116653_ (values-ref _g19108_ 0))
                                 (_tl1656316655_ (values-ref _g19108_ 1)))
                             (if (gx#stx-null? _tl1656316655_)
                                 (letrec ((_loop1656416658_
                                           (lambda (_hd1656216661_
                                                    _arg1656816663_)
                                             (if (gx#stx-pair? _hd1656216661_)
                                                 (let ((_e1656516666_
                                                        (gx#stx-e
                                                         _hd1656216661_)))
                                                   (let ((_lp-hd1656616669_
                                                          (##car _e1656516666_))
                                                         (_lp-tl1656716671_
                                                          (##cdr _e1656516666_)))
                                                     (_loop1656416658_
                                                      _lp-tl1656716671_
                                                      (cons _lp-hd1656616669_
                                                            _arg1656816663_))))
                                                 (let ((_arg1656916674_
                                                        (reverse _arg1656816663_)))
                                                   ((lambda (_L16677_)
                                                      (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1668716690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1668816692_)
                                  (cons _g1668716690_ _g1668816692_))
                                '()
                                _L16677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg1656916674_))))))
                                   (_loop1656416658_ _target1656116653_ '()))
                                 (_g1655616648_ _g1655916651_)))))
                       (_g1655616648_ _g1655916651_))
                   (_g1655616648_ _g1655916651_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1655516695_ _L16543_))))))
                                      _hd1651516537_
                                      _hd1651216529_)
                                     (_g1650716521_ _g1650816524_))))
                             (_g1650716521_ _g1650816524_))))
                     (_g1650716521_ _g1650816524_)))))
          (_g1650616698_ _form16505_)))))
  (define gxc#lambda-expr?
    (lambda (_expr16458_)
      (let ((_g1646116471_
             (lambda (_g1646216468_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1646216468_))))
        (let ((_g1646016478_ (lambda (_g1646216474_) ((lambda () '#f)))))
          (let ((_g1645916502_
                 (lambda (_g1646216481_)
                   (if (gx#stx-pair? _g1646216481_)
                       (let ((_e1646416483_ (gx#stx-e _g1646216481_)))
                         (let ((_hd1646516486_ (##car _e1646416483_))
                               (_tl1646616488_ (##cdr _e1646416483_)))
                           (if (gx#identifier? _hd1646516486_)
                               (if (gx#stx-eq? '%#lambda _hd1646516486_)
                                   ((lambda (_L16491_) '#t) _tl1646616488_)
                                   (_g1646016478_ _g1646216481_))
                               (_g1646016478_ _g1646216481_))))
                       (_g1646016478_ _g1646216481_)))))
            (_g1645916502_ _expr16458_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr16411_)
      (let ((_g1641416424_
             (lambda (_g1641516421_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1641516421_))))
        (let ((_g1641316431_ (lambda (_g1641516427_) ((lambda () '#f)))))
          (let ((_g1641216455_
                 (lambda (_g1641516434_)
                   (if (gx#stx-pair? _g1641516434_)
                       (let ((_e1641716436_ (gx#stx-e _g1641516434_)))
                         (let ((_hd1641816439_ (##car _e1641716436_))
                               (_tl1641916441_ (##cdr _e1641716436_)))
                           (if (gx#identifier? _hd1641816439_)
                               (if (gx#stx-eq? '%#case-lambda _hd1641816439_)
                                   ((lambda (_L16444_) '#t) _tl1641916441_)
                                   (_g1641316431_ _g1641516434_))
                               (_g1641316431_ _g1641516434_))))
                       (_g1641316431_ _g1641516434_)))))
            (_g1641216455_ _expr16411_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr16280_)
      (let ((_g1628316313_
             (lambda (_g1628416310_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1628416310_))))
        (let ((_g1628216320_ (lambda (_g1628416316_) ((lambda () '#f)))))
          (let ((_g1628116408_
                 (lambda (_g1628416323_)
                   (if (gx#stx-pair? _g1628416323_)
                       (let ((_e1628816325_ (gx#stx-e _g1628416323_)))
                         (let ((_hd1628916328_ (##car _e1628816325_))
                               (_tl1629016330_ (##cdr _e1628816325_)))
                           (if (gx#identifier? _hd1628916328_)
                               (if (gx#stx-eq? '%#let-values _hd1628916328_)
                                   (if (gx#stx-pair? _tl1629016330_)
                                       (let ((_e1629116333_
                                              (gx#stx-e _tl1629016330_)))
                                         (let ((_hd1629216336_
                                                (##car _e1629116333_))
                                               (_tl1629316338_
                                                (##cdr _e1629116333_)))
                                           (if (gx#stx-pair? _hd1629216336_)
                                               (let ((_e1629416341_
                                                      (gx#stx-e
                                                       _hd1629216336_)))
                                                 (let ((_hd1629516344_
                                                        (##car _e1629416341_))
                                                       (_tl1629616346_
                                                        (##cdr _e1629416341_)))
                                                   (if (gx#stx-pair?
                                                        _hd1629516344_)
                                                       (let ((_e1629716349_
                                                              (gx#stx-e
                                                               _hd1629516344_)))
                                                         (let ((_hd1629816352_
                                                                (##car _e1629716349_))
                                                               (_tl1629916354_
                                                                (##cdr _e1629716349_)))
                                                           (if (gx#stx-pair?
                                                                _hd1629816352_)
                                                               (let ((_e1630016357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1629816352_)))
                         (let ((_hd1630116360_ (##car _e1630016357_))
                               (_tl1630216362_ (##cdr _e1630016357_)))
                           (if (gx#stx-null? _tl1630216362_)
                               (if (gx#stx-pair? _tl1629916354_)
                                   (let ((_e1630316365_
                                          (gx#stx-e _tl1629916354_)))
                                     (let ((_hd1630416368_
                                            (##car _e1630316365_))
                                           (_tl1630516370_
                                            (##cdr _e1630316365_)))
                                       (if (gx#stx-null? _tl1630516370_)
                                           (if (gx#stx-null? _tl1629616346_)
                                               (if (gx#stx-pair?
                                                    _tl1629316338_)
                                                   (let ((_e1630616373_
                                                          (gx#stx-e
                                                           _tl1629316338_)))
                                                     (let ((_hd1630716376_
                                                            (##car _e1630616373_))
                                                           (_tl1630816378_
                                                            (##cdr _e1630616373_)))
                                                       (if (gx#stx-null?
                                                            _tl1630816378_)
                                                           ((lambda (_L16381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16382_
                             _L16383_)
                      (if (gx#identifier? _L16383_)
                          (if (gxc#lambda-expr? _L16382_)
                              (gxc#case-lambda-expr? _L16381_)
                              '#f)
                          '#f))
                    _hd1630716376_
                    _hd1630416368_
                    _hd1630116360_)
                   (_g1628216320_ _g1628416323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1628216320_
                                                    _g1628416323_))
                                               (_g1628216320_ _g1628416323_))
                                           (_g1628216320_ _g1628416323_))))
                                   (_g1628216320_ _g1628416323_))
                               (_g1628216320_ _g1628416323_))))
                       (_g1628216320_ _g1628416323_))))
               (_g1628216320_ _g1628416323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1628216320_ _g1628416323_))))
                                       (_g1628216320_ _g1628416323_))
                                   (_g1628216320_ _g1628416323_))
                               (_g1628216320_ _g1628416323_))))
                       (_g1628216320_ _g1628416323_)))))
            (_g1628116408_ _expr16280_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda16020
      (lambda (_stx16022_ _id16023_ _clauses16024_ _gensym?16025_)
        ((letrec ((_lp16027_
                   (lambda (_rest16029_ _ids16030_ _impls16031_ _clauses16032_)
                     (let ((_rest1603316041_ _rest16029_))
                       (let ((_E1603616045_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1603316041_))))
                         (let ((_else1603516049_
                                (lambda ()
                                  (values (reverse _ids16030_)
                                          (reverse _impls16031_)
                                          (reverse _clauses16032_)))))
                           (let ((_K1603716254_
                                  (lambda (_rest16052_ _clause16053_)
                                    (if (gxc#dispatch-lambda-form?
                                         _clause16053_)
                                        (_lp16027_
                                         _rest16052_
                                         _ids16030_
                                         _impls16031_
                                         (cons _clause16053_ _clauses16032_))
                                        (let ((_g1605516066_
                                               (lambda (_g1605616063_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1605616063_))))
                                          (let ((_g1605416251_
                                                 (lambda (_g1605616069_)
                                                   (if (gx#stx-pair?
                                                        _g1605616069_)
                                                       (let ((_e1605916071_
                                                              (gx#stx-e
                                                               _g1605616069_)))
                                                         (let ((_hd1606016074_
                                                                (##car _e1605916071_))
                                                               (_tl1606116076_
                                                                (##cdr _e1605916071_)))
                                                           ((lambda (_L16079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16080_)
                      (let ((_id16097_
                             (make-symbol
                              (gx#stx-e _id16023_)
                              '"__"
                              (length _clauses16032_)
                              (if _gensym?16025_ (gensym '__) '""))))
                        (let ((_id16099_
                               (gx#core-quote-syntax__1
                                _id16097_
                                (gx#stx-source _stx16022_))))
                          (let ((_impl16101_
                                 (gxc#xform-wrap-source
                                  (cons (gx#datum->syntax__0 '#f '%#lambda)
                                        (cons _L16080_ _L16079_))
                                  _stx16022_)))
                            (let ((_clause16248_
                                   (let ((_g1610516133_
                                          (lambda (_g1610616130_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1610616130_))))
                                     (let ((_g1610416149_
                                            (lambda (_g1610616136_)
                                              ((lambda (_L16138_)
                                                 (cons _L16080_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'apply '()))
                                  (cons (cons '%#ref (cons _id16099_ '()))
                                        (cons (cons (gx#datum->syntax__0
                                                     '#f
                                                     '%#ref)
                                                    (cons _L16138_ '()))
                                              '()))))
                      _stx16022_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g1610616136_))))
                                       (let ((_g1610316198_
                                              (lambda (_g1610616152_)
                                                (if (gx#stx-pair/null?
                                                     _g1610616152_)
                                                    (if (fx>= (gx#stx-length
                                                               _g1610616152_)
                                                              '0)
                                                        (let ((_g19110_
                                                               (gx#syntax-split-splice
                                                                _g1610616152_
                                                                '0)))
                                                          (begin
                                                            (let ((_g19111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g19110_)))
                      (if (not (fx= _g19111_ 2))
                          (error "Context expects 2 values" _g19111_)))
                    (let ((_target1611916154_ (values-ref _g19110_ 0))
                          (_tl1612116156_ (values-ref _g19110_ 1)))
                      (letrec ((_loop1612216159_
                                (lambda (_hd1612016162_ _arg1612616164_)
                                  (if (gx#stx-pair? _hd1612016162_)
                                      (let ((_e1612316167_
                                             (gx#stx-e _hd1612016162_)))
                                        (let ((_lp-hd1612416170_
                                               (##car _e1612316167_))
                                              (_lp-tl1612516172_
                                               (##cdr _e1612316167_)))
                                          (_loop1612216159_
                                           _lp-tl1612516172_
                                           (cons _lp-hd1612416170_
                                                 _arg1612616164_))))
                                      (let ((_arg1612716175_
                                             (reverse _arg1612616164_)))
                                        ((lambda (_L16178_ _L16179_)
                                           (cons _L16080_
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'apply '()))
                            (cons (cons '%#ref (cons _id16099_ '()))
                                  (foldr1 cons
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L16178_ '()))
                                                '())
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1619016193_
                                                             _g1619116195_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1619016193_ '()))
                    _g1619116195_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L16179_))))))
                _stx16022_)
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl1612116156_
                                         _arg1612716175_))))))
                        (_loop1612216159_ _target1611916154_ '())))))
                (_g1610416149_ _g1610616152_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1610416149_
                                                     _g1610616152_)))))
                                         (let ((_g1610216245_
                                                (lambda (_g1610616201_)
                                                  (if (gx#stx-pair/null?
                                                       _g1610616201_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1610616201_)
                        '0)
                  (let ((_g19112_ (gx#syntax-split-splice _g1610616201_ '0)))
                    (begin
                      (let ((_g19113_ (values-count _g19112_)))
                        (if (not (fx= _g19113_ 2))
                            (error "Context expects 2 values" _g19113_)))
                      (let ((_target1610816203_ (values-ref _g19112_ 0))
                            (_tl1611016205_ (values-ref _g19112_ 1)))
                        (if (gx#stx-null? _tl1611016205_)
                            (letrec ((_loop1611116208_
                                      (lambda (_hd1610916211_ _arg1611516213_)
                                        (if (gx#stx-pair? _hd1610916211_)
                                            (let ((_e1611216216_
                                                   (gx#stx-e _hd1610916211_)))
                                              (let ((_lp-hd1611316219_
                                                     (##car _e1611216216_))
                                                    (_lp-tl1611416221_
                                                     (##cdr _e1611216216_)))
                                                (_loop1611116208_
                                                 _lp-tl1611416221_
                                                 (cons _lp-hd1611316219_
                                                       _arg1611516213_))))
                                            (let ((_arg1611616224_
                                                   (reverse _arg1611516213_)))
                                              ((lambda (_L16227_)
                                                 (cons _L16080_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _id16099_ '()))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1623716240_
                                                     _g1623816242_)
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _g1623716240_
                                                                '()))
                                                    _g1623816242_))
                                            '()
                                            _L16227_))))
                      _stx16022_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _arg1611616224_))))))
                              (_loop1611116208_ _target1610816203_ '()))
                            (_g1610316198_ _g1610616201_)))))
                  (_g1610316198_ _g1610616201_))
              (_g1610316198_ _g1610616201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1610216245_ _L16080_)))))))
                              (let ()
                                (_lp16027_
                                 _rest16052_
                                 (cons _id16099_ _ids16030_)
                                 (cons _impl16101_ _impls16031_)
                                 (cons _clause16248_ _clauses16032_))))))))
                    _tl1606116076_
                    _hd1606016074_)))
               (_g1605516066_ _g1605616069_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1605416251_ _clause16053_)))))))
                             (if (##pair? _rest1603316041_)
                                 (let ((_hd1603816257_
                                        (##car _rest1603316041_))
                                       (_tl1603916259_
                                        (##cdr _rest1603316041_)))
                                   (let ((_clause16262_ _hd1603816257_))
                                     (let ((_rest16264_ _tl1603916259_))
                                       (_K1603716254_
                                        _rest16264_
                                        _clause16262_))))
                                 (_else1603516049_)))))))))
           _lp16027_)
         _clauses16024_
         '()
         '()
         '())))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx16269_ _id16270_ _clauses16271_)
          (let ((_gensym?16273_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda16020
             _stx16269_
             _id16270_
             _clauses16271_
             _gensym?16273_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g19115_
          (let ((_g19114_ (length _g19115_)))
            (cond ((fx= _g19114_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g19115_))
                  ((fx= _g19114_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda16020
                          _g19115_))
                  (else (error "No clause matching arguments" _g19115_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx15611_)
      (let ((_case-lambda-clause-def15613_
             (lambda (_id16018_ _impl16019_)
               (gxc#xform-wrap-source
                (cons '%#define-values
                      (cons (cons _id16018_ '())
                            (cons (gxc#compile-e _impl16019_) '())))
                _stx15611_))))
        (let ((_g1561715662_
               (lambda (_g1561815659_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1561815659_))))
          (let ((_g1561615708_
                 (lambda (_g1561815665_)
                   (if (gx#stx-pair? _g1561815665_)
                       (let ((_e1564915667_ (gx#stx-e _g1561815665_)))
                         (let ((_hd1565015670_ (##car _e1564915667_))
                               (_tl1565115672_ (##cdr _e1564915667_)))
                           (if (gx#stx-pair? _tl1565115672_)
                               (let ((_e1565215675_ (gx#stx-e _tl1565115672_)))
                                 (let ((_hd1565315678_ (##car _e1565215675_))
                                       (_tl1565415680_ (##cdr _e1565215675_)))
                                   (if (gx#stx-pair? _tl1565415680_)
                                       (let ((_e1565515683_
                                              (gx#stx-e _tl1565415680_)))
                                         (let ((_hd1565615686_
                                                (##car _e1565515683_))
                                               (_tl1565715688_
                                                (##cdr _e1565515683_)))
                                           (if (gx#stx-null? _tl1565715688_)
                                               ((lambda (_L15691_ _L15692_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L15692_
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L15691_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15611_))
                                                _hd1565615686_
                                                _hd1565315678_)
                                               (_g1561715662_ _g1561815665_))))
                                       (_g1561715662_ _g1561815665_))))
                               (_g1561715662_ _g1561815665_))))
                       (_g1561715662_ _g1561815665_)))))
            (let ((_g1561515890_
                   (lambda (_g1561815711_)
                     (if (gx#stx-pair? _g1561815711_)
                         (let ((_e1563515713_ (gx#stx-e _g1561815711_)))
                           (let ((_hd1563615716_ (##car _e1563515713_))
                                 (_tl1563715718_ (##cdr _e1563515713_)))
                             (if (gx#stx-pair? _tl1563715718_)
                                 (let ((_e1563815721_
                                        (gx#stx-e _tl1563715718_)))
                                   (let ((_hd1563915724_ (##car _e1563815721_))
                                         (_tl1564015726_
                                          (##cdr _e1563815721_)))
                                     (if (gx#stx-pair? _hd1563915724_)
                                         (let ((_e1564115729_
                                                (gx#stx-e _hd1563915724_)))
                                           (let ((_hd1564215732_
                                                  (##car _e1564115729_))
                                                 (_tl1564315734_
                                                  (##cdr _e1564115729_)))
                                             (if (gx#stx-null? _tl1564315734_)
                                                 (if (gx#stx-pair?
                                                      _tl1564015726_)
                                                     (let ((_e1564415737_
                                                            (gx#stx-e
                                                             _tl1564015726_)))
                                                       (let ((_hd1564515740_
                                                              (##car _e1564415737_))
                                                             (_tl1564615742_
                                                              (##cdr _e1564415737_)))
                                                         (if (gx#stx-null?
                                                              _tl1564615742_)
                                                             ((lambda (_L15745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L15746_)
                        (if (if (gx#identifier? _L15746_)
                                (gxc#opt-lambda-expr? _L15745_)
                                '#f)
                            (let ((_g1576215792_
                                   (lambda (_g1576315789_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1576315789_))))
                              (let ((_g1576115887_
                                     (lambda (_g1576315795_)
                                       (if (gx#stx-pair? _g1576315795_)
                                           (let ((_e1576715797_
                                                  (gx#stx-e _g1576315795_)))
                                             (let ((_hd1576815800_
                                                    (##car _e1576715797_))
                                                   (_tl1576915802_
                                                    (##cdr _e1576715797_)))
                                               (if (gx#stx-pair?
                                                    _tl1576915802_)
                                                   (let ((_e1577015805_
                                                          (gx#stx-e
                                                           _tl1576915802_)))
                                                     (let ((_hd1577115808_
                                                            (##car _e1577015805_))
                                                           (_tl1577215810_
                                                            (##cdr _e1577015805_)))
                                                       (if (gx#stx-pair?
                                                            _hd1577115808_)
                                                           (let ((_e1577315813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1577115808_)))
                     (let ((_hd1577415816_ (##car _e1577315813_))
                           (_tl1577515818_ (##cdr _e1577315813_)))
                       (if (gx#stx-pair? _hd1577415816_)
                           (let ((_e1577615821_ (gx#stx-e _hd1577415816_)))
                             (let ((_hd1577715824_ (##car _e1577615821_))
                                   (_tl1577815826_ (##cdr _e1577615821_)))
                               (if (gx#stx-pair? _hd1577715824_)
                                   (let ((_e1577915829_
                                          (gx#stx-e _hd1577715824_)))
                                     (let ((_hd1578015832_
                                            (##car _e1577915829_))
                                           (_tl1578115834_
                                            (##cdr _e1577915829_)))
                                       (if (gx#stx-null? _tl1578115834_)
                                           (if (gx#stx-pair? _tl1577815826_)
                                               (let ((_e1578215837_
                                                      (gx#stx-e
                                                       _tl1577815826_)))
                                                 (let ((_hd1578315840_
                                                        (##car _e1578215837_))
                                                       (_tl1578415842_
                                                        (##cdr _e1578215837_)))
                                                   (if (gx#stx-null?
                                                        _tl1578415842_)
                                                       (if (gx#stx-null?
                                                            _tl1577515818_)
                                                           (if (gx#stx-pair?
                                                                _tl1577215810_)
                                                               (let ((_e1578515845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1577215810_)))
                         (let ((_hd1578615848_ (##car _e1578515845_))
                               (_tl1578715850_ (##cdr _e1578515845_)))
                           (if (gx#stx-null? _tl1578715850_)
                               ((lambda (_L15853_ _L15854_ _L15855_)
                                  (let ((_lambda-id15879_
                                         (make-symbol
                                          (gx#stx-e _L15746_)
                                          '"__"
                                          (gx#stx-e _L15855_))))
                                    (let ((_lambda-id15881_
                                           (gx#core-quote-syntax__1
                                            _lambda-id15879_
                                            (gx#stx-source _stx15611_))))
                                      (let ((_g19116_
                                             (gx#core-bind-runtime!__0
                                              _lambda-id15881_)))
                                        (let ((_new-case-lambda-expr15884_
                                               (gxc#apply-expression-subst
                                                _L15853_
                                                _L15855_
                                                _lambda-id15881_)))
                                          (let ()
                                            (begin
                                              (gxc#verbose
                                               '"lift opt-lambda dispatch "
                                               (gxc#generate-runtime-binding-id
                                                _L15746_)
                                               '" => "
                                               (gxc#generate-runtime-binding-id
                                                _lambda-id15881_))
                                              (gxc#xform-wrap-source
                                               (cons '%#begin
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _lambda-id15881_ '())
                                (cons (gxc#compile-e _L15854_) '())))
                    _stx15611_)
                   (cons (gxc#lift-top-lambda-define-values%
                          (gxc#xform-wrap-source
                           (cons '%#define-values
                                 (cons (cons _L15746_ '())
                                       (cons _new-case-lambda-expr15884_ '())))
                           _stx15611_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx15611_))))))))
                                _hd1578615848_
                                _hd1578315840_
                                _hd1578015832_)
                               (_g1576215792_ _g1576315795_))))
                       (_g1576215792_ _g1576315795_))
                   (_g1576215792_ _g1576315795_))
               (_g1576215792_ _g1576315795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1576215792_ _g1576315795_))
                                           (_g1576215792_ _g1576315795_))))
                                   (_g1576215792_ _g1576315795_))))
                           (_g1576215792_ _g1576315795_))))
                   (_g1576215792_ _g1576315795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1576215792_
                                                    _g1576315795_))))
                                           (_g1576215792_ _g1576315795_)))))
                                (_g1576115887_ _L15745_)))
                            (_g1561615708_ _g1561815711_)))
                      _hd1564515740_
                      _hd1564215732_)
                     (_g1561615708_ _g1561815711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1561615708_
                                                      _g1561815711_))
                                                 (_g1561615708_
                                                  _g1561815711_))))
                                         (_g1561615708_ _g1561815711_))))
                                 (_g1561615708_ _g1561815711_))))
                         (_g1561615708_ _g1561815711_)))))
              (let ((_g1561416015_
                     (lambda (_g1561815893_)
                       (if (gx#stx-pair? _g1561815893_)
                           (let ((_e1562115895_ (gx#stx-e _g1561815893_)))
                             (let ((_hd1562215898_ (##car _e1562115895_))
                                   (_tl1562315900_ (##cdr _e1562115895_)))
                               (if (gx#stx-pair? _tl1562315900_)
                                   (let ((_e1562415903_
                                          (gx#stx-e _tl1562315900_)))
                                     (let ((_hd1562515906_
                                            (##car _e1562415903_))
                                           (_tl1562615908_
                                            (##cdr _e1562415903_)))
                                       (if (gx#stx-pair? _hd1562515906_)
                                           (let ((_e1562715911_
                                                  (gx#stx-e _hd1562515906_)))
                                             (let ((_hd1562815914_
                                                    (##car _e1562715911_))
                                                   (_tl1562915916_
                                                    (##cdr _e1562715911_)))
                                               (if (gx#stx-null?
                                                    _tl1562915916_)
                                                   (if (gx#stx-pair?
                                                        _tl1562615908_)
                                                       (let ((_e1563015919_
                                                              (gx#stx-e
                                                               _tl1562615908_)))
                                                         (let ((_hd1563115922_
                                                                (##car _e1563015919_))
                                                               (_tl1563215924_
                                                                (##cdr _e1563015919_)))
                                                           (if (gx#stx-null?
                                                                _tl1563215924_)
                                                               ((lambda (_L15927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L15928_)
                          (if (if (gx#identifier? _L15928_)
                                  (gxc#case-lambda-expr? _L15927_)
                                  '#f)
                              (let ((_g1594515959_
                                     (lambda (_g1594615956_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1594615956_))))
                                (let ((_g1594415990_
                                       (lambda (_g1594615962_)
                                         (if (gx#stx-pair? _g1594615962_)
                                             (let ((_e1595215964_
                                                    (gx#stx-e _g1594615962_)))
                                               (let ((_hd1595315967_
                                                      (##car _e1595215964_))
                                                     (_tl1595415969_
                                                      (##cdr _e1595215964_)))
                                                 ((lambda (_L15972_)
                                                    (let ((_g19117_
                                                           (gxc#lift-case-lambda-clauses__0
                                                            _stx15611_
                                                            _L15928_
                                                            _L15972_)))
                                                      (begin
                                                        (let ((_g19118_
                                                               (values-count
                                                                _g19117_)))
                                                          (if (not (fx= _g19118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                3))
                      (error "Context expects 3 values" _g19118_)))
                (let ((_ids15982_ (values-ref _g19117_ 0))
                      (_impls15983_ (values-ref _g19117_ 1))
                      (_clauses15984_ (values-ref _g19117_ 2)))
                  (let ((_g19119_ (for-each gx#core-bind-runtime! _ids15982_)))
                    (let ((_defs15987_
                           (map _case-lambda-clause-def15613_
                                _ids15982_
                                _impls15983_)))
                      (let ()
                        (begin
                          (gxc#verbose
                           '"lift case-lambda clauses "
                           (gxc#generate-runtime-binding-id _L15928_)
                           '" => "
                           (map gxc#identifier-symbol _ids15982_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (foldr1 cons
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _L15928_ '())
                                                            (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#case-lambda _clauses15984_)
                           (gx#datum->syntax__0 '#f 'case-lambda-expr))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx15611_)
                                               '())
                                         _defs15987_))
                           _stx15611_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1595415969_)))
                                             (_g1594515959_ _g1594615962_)))))
                                  (let ((_g1594316012_
                                         (lambda (_g1594615993_)
                                           (if (gx#stx-pair? _g1594615993_)
                                               (let ((_e1594815995_
                                                      (gx#stx-e
                                                       _g1594615993_)))
                                                 (let ((_hd1594915998_
                                                        (##car _e1594815995_))
                                                       (_tl1595016000_
                                                        (##cdr _e1594815995_)))
                                                   ((lambda (_L16003_)
                                                      (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16003_)
                  _stx15611_
                  (_g1594415990_ _g1594615993_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1595016000_)))
                                               (_g1594415990_
                                                _g1594615993_)))))
                                    (_g1594316012_ _L15927_))))
                              (_g1561515890_ _g1561815893_)))
                        _hd1563115922_
                        _hd1562815914_)
                       (_g1561515890_ _g1561815893_))))
               (_g1561515890_ _g1561815893_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1561515890_
                                                    _g1561815893_))))
                                           (_g1561515890_ _g1561815893_))))
                                   (_g1561515890_ _g1561815893_))))
                           (_g1561515890_ _g1561815893_)))))
                (_g1561416015_ _stx15611_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx15048_)
      (let ((_bind-e15050_
             (lambda (_id15608_ _expr15609_)
               (cons (cons _id15608_ '())
                     (cons (gxc#compile-e _expr15609_) '())))))
        (let ((_compile-bindings15051_
               (lambda (_rest15193_)
                 ((letrec ((_lp15195_
                            (lambda (_rest15197_
                                     _lift115198_
                                     _lift215199_
                                     _bind15200_)
                              (let ((_rest1520115209_ _rest15197_))
                                (let ((_E1520415213_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1520115209_))))
                                  (let ((_else1520315217_
                                         (lambda ()
                                           (values (reverse _lift115198_)
                                                   (reverse _lift215199_)
                                                   (reverse _bind15200_)))))
                                    (let ((_K1520515596_
                                           (lambda (_rest15220_ _hd15221_)
                                             (let ((_g1522515261_
                                                    (lambda (_g1522615258_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g1522615258_))))
                                               (let ((_g1522415302_
                                                      (lambda (_g1522615264_)
                                                        (if (gx#stx-pair?
                                                             _g1522615264_)
                                                            (let ((_e1525115266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _g1522615264_)))
                      (let ((_hd1525215269_ (##car _e1525115266_))
                            (_tl1525315271_ (##cdr _e1525115266_)))
                        (if (gx#stx-pair? _tl1525315271_)
                            (let ((_e1525415274_ (gx#stx-e _tl1525315271_)))
                              (let ((_hd1525515277_ (##car _e1525415274_))
                                    (_tl1525615279_ (##cdr _e1525415274_)))
                                (if (gx#stx-null? _tl1525615279_)
                                    ((lambda (_L15282_ _L15283_)
                                       (_lp15195_
                                        _rest15220_
                                        _lift115198_
                                        _lift215199_
                                        (cons (cons _L15283_
                                                    (cons (gxc#compile-e
                                                           _L15282_)
                                                          '()))
                                              _bind15200_)))
                                     _hd1525515277_
                                     _hd1525215269_)
                                    (_g1522515261_ _g1522615264_))))
                            (_g1522515261_ _g1522615264_))))
                    (_g1522515261_ _g1522615264_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g1522315474_
                                                        (lambda (_g1522615305_)
                                                          (if (gx#stx-pair?
                                                               _g1522615305_)
                                                              (let ((_e1524015307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _g1522615305_)))
                        (let ((_hd1524115310_ (##car _e1524015307_))
                              (_tl1524215312_ (##cdr _e1524015307_)))
                          (if (gx#stx-pair? _hd1524115310_)
                              (let ((_e1524315315_ (gx#stx-e _hd1524115310_)))
                                (let ((_hd1524415318_ (##car _e1524315315_))
                                      (_tl1524515320_ (##cdr _e1524315315_)))
                                  (if (gx#stx-null? _tl1524515320_)
                                      (if (gx#stx-pair? _tl1524215312_)
                                          (let ((_e1524615323_
                                                 (gx#stx-e _tl1524215312_)))
                                            (let ((_hd1524715326_
                                                   (##car _e1524615323_))
                                                  (_tl1524815328_
                                                   (##cdr _e1524615323_)))
                                              (if (gx#stx-null? _tl1524815328_)
                                                  ((lambda (_L15331_ _L15332_)
                                                     (if (if (gx#identifier?
                                                              _L15332_)
                                                             (gxc#opt-lambda-expr?
                                                              _L15331_)
                                                             '#f)
                                                         (let ((_g1534615376_
                                                                (lambda (_g1534715373_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1534715373_))))
                   (let ((_g1534515471_
                          (lambda (_g1534715379_)
                            (if (gx#stx-pair? _g1534715379_)
                                (let ((_e1535115381_ (gx#stx-e _g1534715379_)))
                                  (let ((_hd1535215384_ (##car _e1535115381_))
                                        (_tl1535315386_ (##cdr _e1535115381_)))
                                    (if (gx#stx-pair? _tl1535315386_)
                                        (let ((_e1535415389_
                                               (gx#stx-e _tl1535315386_)))
                                          (let ((_hd1535515392_
                                                 (##car _e1535415389_))
                                                (_tl1535615394_
                                                 (##cdr _e1535415389_)))
                                            (if (gx#stx-pair? _hd1535515392_)
                                                (let ((_e1535715397_
                                                       (gx#stx-e
                                                        _hd1535515392_)))
                                                  (let ((_hd1535815400_
                                                         (##car _e1535715397_))
                                                        (_tl1535915402_
                                                         (##cdr _e1535715397_)))
                                                    (if (gx#stx-pair?
                                                         _hd1535815400_)
                                                        (let ((_e1536015405_
                                                               (gx#stx-e
                                                                _hd1535815400_)))
                                                          (let ((_hd1536115408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1536015405_))
                        (_tl1536215410_ (##cdr _e1536015405_)))
                    (if (gx#stx-pair? _hd1536115408_)
                        (let ((_e1536315413_ (gx#stx-e _hd1536115408_)))
                          (let ((_hd1536415416_ (##car _e1536315413_))
                                (_tl1536515418_ (##cdr _e1536315413_)))
                            (if (gx#stx-null? _tl1536515418_)
                                (if (gx#stx-pair? _tl1536215410_)
                                    (let ((_e1536615421_
                                           (gx#stx-e _tl1536215410_)))
                                      (let ((_hd1536715424_
                                             (##car _e1536615421_))
                                            (_tl1536815426_
                                             (##cdr _e1536615421_)))
                                        (if (gx#stx-null? _tl1536815426_)
                                            (if (gx#stx-null? _tl1535915402_)
                                                (if (gx#stx-pair?
                                                     _tl1535615394_)
                                                    (let ((_e1536915429_
                                                           (gx#stx-e
                                                            _tl1535615394_)))
                                                      (let ((_hd1537015432_
                                                             (##car _e1536915429_))
                                                            (_tl1537115434_
                                                             (##cdr _e1536915429_)))
                                                        (if (gx#stx-null?
                                                             _tl1537115434_)
                                                            ((lambda (_L15437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L15438_
                              _L15439_)
                       (let ((_lambda-id15463_
                              (make-symbol
                               (gx#stx-e _L15332_)
                               '"__"
                               (gx#stx-e _L15439_)
                               (gensym '__))))
                         (let ((_lambda-id15465_
                                (gx#core-quote-syntax__1
                                 _lambda-id15463_
                                 (gx#stx-source _stx15048_))))
                           (let ((_g19124_
                                  (gx#core-bind-runtime!__0 _lambda-id15465_)))
                             (let ((_new-case-lambda-expr15468_
                                    (gxc#apply-expression-subst
                                     _L15437_
                                     _L15439_
                                     _lambda-id15465_)))
                               (let ()
                                 (begin
                                   (gxc#verbose
                                    '"lift opt-lambda dispatch "
                                    (gxc#generate-runtime-binding-id _L15332_)
                                    '" => "
                                    (gxc#generate-runtime-binding-id
                                     _lambda-id15465_))
                                   (_lp15195_
                                    (cons (_bind-e15050_
                                           _L15332_
                                           _new-case-lambda-expr15468_)
                                          _rest15220_)
                                    (cons (_bind-e15050_
                                           _lambda-id15465_
                                           (gxc#compile-e _L15438_))
                                          _lift115198_)
                                    _lift215199_
                                    _bind15200_))))))))
                     _hd1537015432_
                     _hd1536715424_
                     _hd1536415416_)
                    (_g1534615376_ _g1534715379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1534615376_
                                                     _g1534715379_))
                                                (_g1534615376_ _g1534715379_))
                                            (_g1534615376_ _g1534715379_))))
                                    (_g1534615376_ _g1534715379_))
                                (_g1534615376_ _g1534715379_))))
                        (_g1534615376_ _g1534715379_))))
                (_g1534615376_ _g1534715379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1534615376_
                                                 _g1534715379_))))
                                        (_g1534615376_ _g1534715379_))))
                                (_g1534615376_ _g1534715379_)))))
                     (_g1534515471_ _L15331_)))
                 (_g1522415302_ _g1522615305_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd1524715326_
                                                   _hd1524415318_)
                                                  (_g1522415302_
                                                   _g1522615305_))))
                                          (_g1522415302_ _g1522615305_))
                                      (_g1522415302_ _g1522615305_))))
                              (_g1522415302_ _g1522615305_))))
                      (_g1522415302_ _g1522615305_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g1522215593_
                                                          (lambda (_g1522615477_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1522615477_)
                        (let ((_e1522915479_ (gx#stx-e _g1522615477_)))
                          (let ((_hd1523015482_ (##car _e1522915479_))
                                (_tl1523115484_ (##cdr _e1522915479_)))
                            (if (gx#stx-pair? _hd1523015482_)
                                (let ((_e1523215487_
                                       (gx#stx-e _hd1523015482_)))
                                  (let ((_hd1523315490_ (##car _e1523215487_))
                                        (_tl1523415492_ (##cdr _e1523215487_)))
                                    (if (gx#stx-null? _tl1523415492_)
                                        (if (gx#stx-pair? _tl1523115484_)
                                            (let ((_e1523515495_
                                                   (gx#stx-e _tl1523115484_)))
                                              (let ((_hd1523615498_
                                                     (##car _e1523515495_))
                                                    (_tl1523715500_
                                                     (##cdr _e1523515495_)))
                                                (if (gx#stx-null?
                                                     _tl1523715500_)
                                                    ((lambda (_L15503_
                                                              _L15504_)
                                                       (if (if (gx#identifier?
                                                                _L15504_)
                                                               (gxc#case-lambda-expr?
                                                                _L15503_)
                                                               '#f)
                                                           (let ((_g1551915533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1552015530_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1552015530_))))
                     (let ((_g1551815568_
                            (lambda (_g1552015536_)
                              (if (gx#stx-pair? _g1552015536_)
                                  (let ((_e1552615538_
                                         (gx#stx-e _g1552015536_)))
                                    (let ((_hd1552715541_
                                           (##car _e1552615538_))
                                          (_tl1552815543_
                                           (##cdr _e1552615538_)))
                                      ((lambda (_L15546_)
                                         (let ((_g19125_
                                                (gxc#lift-case-lambda-clauses__opt-lambda16020
                                                 _stx15048_
                                                 _L15504_
                                                 _L15546_
                                                 '#t)))
                                           (begin
                                             (let ((_g19126_
                                                    (values-count _g19125_)))
                                               (if (not (fx= _g19126_ 3))
                                                   (error "Context expects 3 values"
                                                          _g19126_)))
                                             (let ((_ids15556_
                                                    (values-ref _g19125_ 0))
                                                   (_impls15557_
                                                    (values-ref _g19125_ 1))
                                                   (_clauses15558_
                                                    (values-ref _g19125_ 2)))
                                               (let ((_g19127_
                                                      (for-each
                                                       gx#core-bind-runtime!
                                                       _ids15556_)))
                                                 (let ((_xbind15561_
                                                        (map _bind-e15050_
                                                             _ids15556_
                                                             _impls15557_)))
                                                   (let ((_expr*15563_
                                                          (gxc#xform-wrap-source
                                                           (cons '%#case-lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clauses15558_)
                   (gx#datum->syntax__0 '#f 'case-lambda-expr))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_bind*15565_
                                                            (_bind-e15050_
                                                             _L15504_
                                                             _expr*15563_)))
                                                       (let ()
                                                         (begin
                                                           (gxc#verbose
                                                            '"lift case-lambda clauses "
                                                            (gxc#generate-runtime-binding-id
                                                             _L15504_)
                                                            '" => "
                                                            (map gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15556_))
                   (_lp15195_
                    _rest15220_
                    _lift115198_
                    (foldl1 cons _lift215199_ _xbind15561_)
                    (cons _bind*15565_ _bind15200_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _tl1552815543_)))
                                  (_g1551915533_ _g1552015536_)))))
                       (let ((_g1551715590_
                              (lambda (_g1552015571_)
                                (if (gx#stx-pair? _g1552015571_)
                                    (let ((_e1552215573_
                                           (gx#stx-e _g1552015571_)))
                                      (let ((_hd1552315576_
                                             (##car _e1552215573_))
                                            (_tl1552415578_
                                             (##cdr _e1552215573_)))
                                        ((lambda (_L15581_)
                                           (if (andmap1 gxc#dispatch-lambda-form?
                                                        _L15581_)
                                               (_lp15195_
                                                _rest15220_
                                                _lift115198_
                                                _lift215199_
                                                (cons (cons (cons _L15504_ '())
                                                            (cons _L15503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _bind15200_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1551815568_ _g1552015571_)))
                                         _tl1552415578_)))
                                    (_g1551815568_ _g1552015571_)))))
                         (_g1551715590_ _L15503_))))
                   (_g1522315474_ _g1522615477_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1523615498_
                                                     _hd1523315490_)
                                                    (_g1522315474_
                                                     _g1522615477_))))
                                            (_g1522315474_ _g1522615477_))
                                        (_g1522315474_ _g1522615477_))))
                                (_g1522315474_ _g1522615477_))))
                        (_g1522315474_ _g1522615477_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1522215593_
                                                      _hd15221_))))))))
                                      (if (##pair? _rest1520115209_)
                                          (let ((_hd1520615599_
                                                 (##car _rest1520115209_))
                                                (_tl1520715601_
                                                 (##cdr _rest1520115209_)))
                                            (let ((_hd15604_ _hd1520615599_))
                                              (let ((_rest15606_
                                                     _tl1520715601_))
                                                (_K1520515596_
                                                 _rest15606_
                                                 _hd15604_))))
                                          (_else1520315217_)))))))))
                    _lp15195_)
                  _rest15193_
                  '()
                  '()
                  '()))))
          (let ((_g1505415080_
                 (lambda (_g1505515077_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1505515077_))))
            (let ((_g1505315087_
                   (lambda (_g1505515083_)
                     ((lambda () (gxc#xform-let-values% _stx15048_))))))
              (let ((_g1505215190_
                     (lambda (_g1505515090_)
                       (if (gx#stx-pair? _g1505515090_)
                           (let ((_e1505815092_ (gx#stx-e _g1505515090_)))
                             (let ((_hd1505915095_ (##car _e1505815092_))
                                   (_tl1506015097_ (##cdr _e1505815092_)))
                               (if (gx#stx-pair? _tl1506015097_)
                                   (let ((_e1506115100_
                                          (gx#stx-e _tl1506015097_)))
                                     (let ((_hd1506215103_
                                            (##car _e1506115100_))
                                           (_tl1506315105_
                                            (##cdr _e1506115100_)))
                                       (if (gx#stx-pair/null? _hd1506215103_)
                                           (if (fx>= (gx#stx-length
                                                      _hd1506215103_)
                                                     '0)
                                               (let ((_g19120_
                                                      (gx#syntax-split-splice
                                                       _hd1506215103_
                                                       '0)))
                                                 (begin
                                                   (let ((_g19121_
                                                          (values-count
                                                           _g19120_)))
                                                     (if (not (fx= _g19121_ 2))
                                                         (error "Context expects 2 values"
                                                                _g19121_)))
                                                   (let ((_target1506415108_
                                                          (values-ref
                                                           _g19120_
                                                           0))
                                                         (_tl1506615110_
                                                          (values-ref
                                                           _g19120_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl1506615110_)
                                                         (letrec ((_loop1506715113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1506515116_ _bind1507115118_)
                             (if (gx#stx-pair? _hd1506515116_)
                                 (let ((_e1506815121_
                                        (gx#stx-e _hd1506515116_)))
                                   (let ((_lp-hd1506915124_
                                          (##car _e1506815121_))
                                         (_lp-tl1507015126_
                                          (##cdr _e1506815121_)))
                                     (_loop1506715113_
                                      _lp-tl1507015126_
                                      (cons _lp-hd1506915124_
                                            _bind1507115118_))))
                                 (let ((_bind1507215129_
                                        (reverse _bind1507115118_)))
                                   (if (gx#stx-pair? _tl1506315105_)
                                       (let ((_e1507315132_
                                              (gx#stx-e _tl1506315105_)))
                                         (let ((_hd1507415135_
                                                (##car _e1507315132_))
                                               (_tl1507515137_
                                                (##cdr _e1507315132_)))
                                           (if (gx#stx-null? _tl1507515137_)
                                               ((lambda (_L15140_ _L15141_)
                                                  (if (ormap1 gxc#lift-top-lambda-binding?
                                                              (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1516115164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1516215166_)
                                  (cons _g1516115164_ _g1516215166_))
                                '()
                                _L15141_)))
              (call-with-parameters
               (lambda ()
                 (let ((_g19122_
                        (_compile-bindings15051_
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1516915172_ _g1517015174_)
                                     (cons _g1516915172_ _g1517015174_))
                                   '()
                                   _L15141_)))))
                   (begin
                     (let ((_g19123_ (values-count _g19122_)))
                       (if (not (fx= _g19123_ 3))
                           (error "Context expects 3 values" _g19123_)))
                     (let ((_lift115177_ (values-ref _g19122_ 0))
                           (_lift215178_ (values-ref _g19122_ 1))
                           (_hd15179_ (values-ref _g19122_ 2)))
                       (let ((_body15181_ (gxc#compile-e _L15140_)))
                         (let ((_expr15183_
                                (gxc#xform-wrap-source
                                 (cons '%#let-values
                                       (cons _hd15179_ (cons _body15181_ '())))
                                 _stx15048_)))
                           (let ((_expr15185_
                                  (if (null? _lift215178_)
                                      _expr15183_
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons _lift215178_
                                                   (cons _expr15183_ '())))
                                       _stx15048_))))
                             (let ((_expr15187_
                                    (if (null? _lift115177_)
                                        _expr15185_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift115177_
                                                     (cons _expr15185_ '())))
                                         _stx15048_))))
                               (let () _expr15187_)))))))))
               gx#current-expander-context
               (let ((__obj19076 (make-object gx#local-context::t '5)))
                 (begin (gx#local-context:::init!__0 __obj19076) __obj19076)))
              (_g1505315087_ _g1505515090_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1507415135_
                                                _bind1507215129_)
                                               (_g1505315087_ _g1505515090_))))
                                       (_g1505315087_ _g1505515090_)))))))
                   (_loop1506715113_ _target1506415108_ '()))
                 (_g1505315087_ _g1505515090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1505315087_ _g1505515090_))
                                           (_g1505315087_ _g1505515090_))))
                                   (_g1505315087_ _g1505515090_))))
                           (_g1505315087_ _g1505515090_)))))
                (_g1505215190_ _stx15048_))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx14494_)
      (let ((_bind-e14496_
             (lambda (_id15045_ _expr15046_)
               (cons (cons _id15045_ '())
                     (cons (gxc#compile-e _expr15046_) '())))))
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
                                         (lambda () (reverse _bind14637_))))
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
                                                             _g1466314701_)
                                                            (let ((_e1468814703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _g1466314701_)))
                      (let ((_hd1468914706_ (##car _e1468814703_))
                            (_tl1469014708_ (##cdr _e1468814703_)))
                        (if (gx#stx-pair? _tl1469014708_)
                            (let ((_e1469114711_ (gx#stx-e _tl1469014708_)))
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
                                                               _g1466314742_)
                                                              (let ((_e1467714744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _g1466314742_)))
                        (let ((_hd1467814747_ (##car _e1467714744_))
                              (_tl1467914749_ (##cdr _e1467714744_)))
                          (if (gx#stx-pair? _hd1467814747_)
                              (let ((_e1468014752_ (gx#stx-e _hd1467814747_)))
                                (let ((_hd1468114755_ (##car _e1468014752_))
                                      (_tl1468214757_ (##cdr _e1468014752_)))
                                  (if (gx#stx-null? _tl1468214757_)
                                      (if (gx#stx-pair? _tl1467914749_)
                                          (let ((_e1468314760_
                                                 (gx#stx-e _tl1467914749_)))
                                            (let ((_hd1468414763_
                                                   (##car _e1468314760_))
                                                  (_tl1468514765_
                                                   (##cdr _e1468314760_)))
                                              (if (gx#stx-null? _tl1468514765_)
                                                  ((lambda (_L14768_ _L14769_)
                                                     (if (if (gx#identifier?
                                                              _L14769_)
                                                             (gxc#opt-lambda-expr?
                                                              _L14768_)
                                                             '#f)
                                                         (let ((_g1478314813_
                                                                (lambda (_g1478414810_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1478414810_))))
                   (let ((_g1478214908_
                          (lambda (_g1478414816_)
                            (if (gx#stx-pair? _g1478414816_)
                                (let ((_e1478814818_ (gx#stx-e _g1478414816_)))
                                  (let ((_hd1478914821_ (##car _e1478814818_))
                                        (_tl1479014823_ (##cdr _e1478814818_)))
                                    (if (gx#stx-pair? _tl1479014823_)
                                        (let ((_e1479114826_
                                               (gx#stx-e _tl1479014823_)))
                                          (let ((_hd1479214829_
                                                 (##car _e1479114826_))
                                                (_tl1479314831_
                                                 (##cdr _e1479114826_)))
                                            (if (gx#stx-pair? _hd1479214829_)
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
                                                               (gx#stx-e
                                                                _hd1479514837_)))
                                                          (let ((_hd1479814845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1479714842_))
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
                                            (if (gx#stx-null? _tl1479614839_)
                                                (if (gx#stx-pair?
                                                     _tl1479314831_)
                                                    (let ((_e1480614866_
                                                           (gx#stx-e
                                                            _tl1479314831_)))
                                                      (let ((_hd1480714869_
                                                             (##car _e1480614866_))
                                                            (_tl1480814871_
                                                             (##cdr _e1480614866_)))
                                                        (if (gx#stx-null?
                                                             _tl1480814871_)
                                                            ((lambda (_L14874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L14875_
                              _L14876_)
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
                           (let ((_g19130_
                                  (gx#core-bind-runtime!__0 _lambda-id14902_)))
                             (let ((_new-case-lambda-expr14905_
                                    (gxc#apply-expression-subst
                                     _L14874_
                                     _L14876_
                                     _lambda-id14902_)))
                               (let ()
                                 (begin
                                   (gxc#verbose
                                    '"lift opt-lambda dispatch "
                                    (gxc#generate-runtime-binding-id _L14769_)
                                    '" => "
                                    (gxc#generate-runtime-binding-id
                                     _lambda-id14902_))
                                   (_lp14634_
                                    (cons (_bind-e14496_
                                           _L14769_
                                           _new-case-lambda-expr14905_)
                                          _rest14657_)
                                    (cons (_bind-e14496_
                                           _lambda-id14902_
                                           (gxc#compile-e _L14875_))
                                          _bind14637_)))))))))
                     _hd1480714869_
                     _hd1480414861_
                     _hd1480114853_)
                    (_g1478314813_ _g1478414816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1478314813_
                                                     _g1478414816_))
                                                (_g1478314813_ _g1478414816_))
                                            (_g1478314813_ _g1478414816_))))
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
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd1468414763_
                                                   _hd1468114755_)
                                                  (_g1466114739_
                                                   _g1466314742_))))
                                          (_g1466114739_ _g1466314742_))
                                      (_g1466114739_ _g1466314742_))))
                              (_g1466114739_ _g1466314742_))))
                      (_g1466114739_ _g1466314742_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g1465915030_
                                                          (lambda (_g1466314914_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1466314914_)
                        (let ((_e1466614916_ (gx#stx-e _g1466314914_)))
                          (let ((_hd1466714919_ (##car _e1466614916_))
                                (_tl1466814921_ (##cdr _e1466614916_)))
                            (if (gx#stx-pair? _hd1466714919_)
                                (let ((_e1466914924_
                                       (gx#stx-e _hd1466714919_)))
                                  (let ((_hd1467014927_ (##car _e1466914924_))
                                        (_tl1467114929_ (##cdr _e1466914924_)))
                                    (if (gx#stx-null? _tl1467114929_)
                                        (if (gx#stx-pair? _tl1466814921_)
                                            (let ((_e1467214932_
                                                   (gx#stx-e _tl1466814921_)))
                                              (let ((_hd1467314935_
                                                     (##car _e1467214932_))
                                                    (_tl1467414937_
                                                     (##cdr _e1467214932_)))
                                                (if (gx#stx-null?
                                                     _tl1467414937_)
                                                    ((lambda (_L14940_
                                                              _L14941_)
                                                       (if (if (gx#identifier?
                                                                _L14941_)
                                                               (gxc#case-lambda-expr?
                                                                _L14940_)
                                                               '#f)
                                                           (let ((_g1495614970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
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
                                         (let ((_g19131_
                                                (gxc#lift-case-lambda-clauses__opt-lambda16020
                                                 _stx14494_
                                                 _L14941_
                                                 _L14983_
                                                 '#t)))
                                           (begin
                                             (let ((_g19132_
                                                    (values-count _g19131_)))
                                               (if (not (fx= _g19132_ 3))
                                                   (error "Context expects 3 values"
                                                          _g19132_)))
                                             (let ((_ids14993_
                                                    (values-ref _g19131_ 0))
                                                   (_impls14994_
                                                    (values-ref _g19131_ 1))
                                                   (_clauses14995_
                                                    (values-ref _g19131_ 2)))
                                               (let ((_g19133_
                                                      (for-each
                                                       gx#core-bind-runtime!
                                                       _ids14993_)))
                                                 (let ((_xbind14998_
                                                        (map _bind-e14496_
                                                             _ids14993_
                                                             _impls14994_)))
                                                   (let ((_expr*15000_
                                                          (gxc#xform-wrap-source
                                                           (cons '%#case-lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clauses14995_)
                   (gx#datum->syntax__0 '#f 'case-lambda-expr))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_bind*15002_
                                                            (_bind-e14496_
                                                             _L14941_
                                                             _expr*15000_)))
                                                       (let ()
                                                         (begin
                                                           (gxc#verbose
                                                            '"lift case-lambda clauses "
                                                            (gxc#generate-runtime-binding-id
                                                             _L14941_)
                                                            '" => "
                                                            (map gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids14993_))
                   (_lp14634_
                    _rest14657_
                    (cons _bind*15002_
                          (foldl1 cons _bind14637_ _xbind14998_)))))))))))))
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
                                                (cons (cons (cons _L14941_ '())
                                                            (cons _L14940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _bind14637_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1495515005_ _g1495715008_)))
                                         _tl1496115015_)))
                                    (_g1495515005_ _g1495715008_)))))
                         (_g1495415027_ _L14940_))))
                   (_g1466014911_ _g1466314914_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1467314935_
                                                     _hd1467014927_)
                                                    (_g1466014911_
                                                     _g1466314914_))))
                                            (_g1466014911_ _g1466314914_))
                                        (_g1466014911_ _g1466314914_))))
                                (_g1466014911_ _g1466314914_))))
                        (_g1466014911_ _g1466314914_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1465915030_
                                                      _hd14658_))))))))
                                      (if (##pair? _rest1463814646_)
                                          (let ((_hd1464315036_
                                                 (##car _rest1463814646_))
                                                (_tl1464415038_
                                                 (##cdr _rest1463814646_)))
                                            (let ((_hd15041_ _hd1464315036_))
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
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1450114524_))))
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
                                       (if (gx#stx-pair/null? _hd1450914550_)
                                           (if (fx>= (gx#stx-length
                                                      _hd1450914550_)
                                                     '0)
                                               (let ((_g19128_
                                                      (gx#syntax-split-splice
                                                       _hd1450914550_
                                                       '0)))
                                                 (begin
                                                   (let ((_g19129_
                                                          (values-count
                                                           _g19128_)))
                                                     (if (not (fx= _g19129_ 2))
                                                         (error "Context expects 2 values"
                                                                _g19129_)))
                                                   (let ((_target1451114555_
                                                          (values-ref
                                                           _g19128_
                                                           0))
                                                         (_tl1451314557_
                                                          (values-ref
                                                           _g19128_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl1451314557_)
                                                         (letrec ((_loop1451414560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
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
                                           (if (gx#stx-null? _tl1452214584_)
                                               ((lambda (_L14587_
                                                         _L14588_
                                                         _L14589_)
                                                  (if (ormap1 gxc#lift-top-lambda-binding?
                                                              (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1461014613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1461114615_)
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
               (let ((__obj19077 (make-object gx#local-context::t '5)))
                 (begin (gx#local-context:::init!__0 __obj19077) __obj19077)))
              (_g1449914534_ _g1450114537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1452114582_
                                                _bind1451914576_
                                                _hd1450614542_)
                                               (_g1449914534_ _g1450114537_))))
                                       (_g1449914534_ _g1450114537_)))))))
                   (_loop1451414560_ _target1451114555_ '()))
                 (_g1449914534_ _g1450114537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1449914534_ _g1450114537_))
                                           (_g1449914534_ _g1450114537_))))
                                   (_g1449914534_ _g1450114537_))))
                           (_g1449914534_ _g1450114537_)))))
                (_g1449814629_ _stx14494_))))))))
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
                     (gxc#optimizer-declare-type!__opt-lambda18871
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
                                           (let ((_g19134_
                                                  (gx#syntax-split-splice
                                                   _hd1400714049_
                                                   '0)))
                                             (begin
                                               (let ((_g19135_
                                                      (values-count _g19134_)))
                                                 (if (not (fx= _g19135_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19135_)))
                                               (let ((_target1400914054_
                                                      (values-ref _g19134_ 0))
                                                     (_tl1401114056_
                                                      (values-ref _g19134_ 1)))
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
                      (gxc#optimizer-declare-method!__opt-lambda18847
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
                    (gxc#optimizer-declare-method!__opt-lambda18847
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
                                  (let ((__obj19078
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj19078
                                       'lambda
                                       (gxc#lambda-form-arity _L13059_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13059_))
                                      __obj19078))
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
                                             (let ((_g19136_
                                                    (gx#syntax-split-splice
                                                     _hd1298113086_
                                                     '0)))
                                               (begin
                                                 (let ((_g19137_
                                                        (values-count
                                                         _g19136_)))
                                                   (if (not (fx= _g19137_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19137_)))
                                                 (let ((_target1298313091_
                                                        (values-ref
                                                         _g19136_
                                                         0))
                                                       (_tl1298513093_
                                                        (values-ref
                                                         _g19136_
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
                                                         (let ((_g19138_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1300913160_
                         '0)))
                   (begin
                     (let ((_g19139_ (values-count _g19138_)))
                       (if (not (fx= _g19139_ 2))
                           (error "Context expects 2 values" _g19139_)))
                     (let ((_target1301613179_ (values-ref _g19138_ 0))
                           (_tl1301813181_ (values-ref _g19138_ 1)))
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
               (let ((__obj19079 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj19079
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form12911_)
                    (gxc#dispatch-lambda-form-delegate _form12911_))
                   __obj19079)))))
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
                        (let ((__obj19080
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19080
                             (gx#stx-e _L12512_)
                             _super-t12558_
                             _fields12576_
                             _xfields12577_
                             _ctor12579_
                             _plist12578_)
                            __obj19080))))))))
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
                        (let ((__obj19081
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19081
                             (gx#stx-e _L12718_)
                             '#f
                             (gx#stx-e _L12717_)
                             '0
                             (gx#stx-e _L12714_)
                             (gx#stx-e _L12715_))
                            __obj19081)))
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
                                           (let ((_g19140_
                                                  (gx#syntax-split-splice
                                                   _hd1086510899_
                                                   '0)))
                                             (begin
                                               (let ((_g19141_
                                                      (values-count _g19140_)))
                                                 (if (not (fx= _g19141_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19141_)))
                                               (let ((_target1086710904_
                                                      (values-ref _g19140_ 0))
                                                     (_tl1086910906_
                                                      (values-ref _g19140_ 1)))
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
