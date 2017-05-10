(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-optimizer-info (make-parameter '#f))
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
    (lambda _$args14466_
      (apply make-struct-instance gxc#optimizer-info::t _$args14466_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self14464_)
      (direct-struct-instance-init!
       _self14464_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj14468 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj14468) __obj14468))))))
  (define gxc#optimize!
    (lambda (_ctx14459_)
      (begin
        (gxc#optimizer-load-ssxi-deps _ctx14459_)
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '2
          gxc#optimizer-info::t
          '#f)
         (##structure-ref _ctx14459_ '1 gx#expander-context::t '#f)
         '#t)
        (let ((_code14461_
               (gxc#optimize-source
                (##structure-ref _ctx14459_ '11 gx#module-context::t '#f))))
          (##structure-set!
           _ctx14459_
           _code14461_
           '11
           gx#module-context::t
           '#f)))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx14420_)
      ((letrec ((_lp14422_
                 (lambda (_rest14424_)
                   (let ((_rest1442514433_ _rest14424_))
                     (let ((_E1442814437_
                            (lambda ()
                              (error '"No clause matching" _rest1442514433_))))
                       (let ((_else1442714441_ (lambda () (void))))
                         (let ((_K1442914447_
                                (lambda (_rest14444_ _hd14445_)
                                  (if (##structure-instance-of?
                                       _hd14445_
                                       'gx#module-context::t)
                                      (begin
                                        (if (hash-get
                                             (##structure-ref
                                              (gxc#current-compile-optimizer-info)
                                              '2
                                              gxc#optimizer-info::t
                                              '#f)
                                             (##structure-ref
                                              _hd14445_
                                              '1
                                              gx#expander-context::t
                                              '#f))
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx14420_)
                                              (_lp14422_
                                               (##structure-ref
                                                _hd14445_
                                                '8
                                                gx#module-context::t
                                                '#f))
                                              (gxc#optimizer-load-ssxi
                                               _hd14445_)))
                                        (_lp14422_ _rest14444_))
                                      (if (##structure-direct-instance-of?
                                           _hd14445_
                                           'gx#module-import::t)
                                          (_lp14422_
                                           (cons (##structure-ref
                                                  _hd14445_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _rest14444_))
                                          (if (##structure-direct-instance-of?
                                               _hd14445_
                                               'gx#module-export::t)
                                              (_lp14422_
                                               (cons (##structure-ref
                                                      _hd14445_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _rest14444_))
                                              (if (##structure-direct-instance-of?
                                                   _hd14445_
                                                   'gx#import-set::t)
                                                  (_lp14422_
                                                   (cons (##structure-ref
                                                          _hd14445_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _rest14444_))
                                                  (error '"Unexpected module import"
                                                         _hd14445_))))))))
                           (if (##pair? _rest1442514433_)
                               (let ((_hd1443014450_ (##car _rest1442514433_))
                                     (_tl1443114452_ (##cdr _rest1442514433_)))
                                 (let ((_hd14455_ _hd1443014450_))
                                   (let ((_rest14457_ _tl1443114452_))
                                     (_K1442914447_ _rest14457_ _hd14455_))))
                               (_else1442714441_)))))))))
         _lp14422_)
       (##structure-ref _ctx14420_ '8 gx#module-context::t '#f))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx14415_)
      (let ((_$e14417_ (gx#core-context-prelude__opt-lambda9765 _ctx14415_)))
        (if _$e14417_ (gxc#optimizer-load-ssxi _$e14417_) (void)))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx14395_)
      (if (if (##structure-instance-of? _ctx14395_ 'gx#module-context::t)
              (list? (##structure-ref _ctx14395_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht14397_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id14399_
                   (##structure-ref _ctx14395_ '1 gx#expander-context::t '#f)))
              (let ((_mod14401_ (hash-get _ht14397_ _id14399_)))
                (let ()
                  (let ((_$e14404_ _mod14401_))
                    (if _$e14404_
                        _$e14404_
                        (let ((_mod14407_
                               (gxc#optimizer-import-ssxi _ctx14395_)))
                          (let ((_val14412_
                                 (let ((_$e14409_ _mod14407_))
                                   (if _$e14409_ _$e14409_ '#!void))))
                            (let ()
                              (begin
                                (hash-put! _ht14397_ _id14399_ _val14412_)
                                _val14412_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx14372_)
      (let ((_catch-e14374_
             (lambda (_exn14393_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx14372_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn14393_))
                     '#!void)
                 '#f))))
        (let ((_import-e14375_
               (lambda ()
                 (let ((_str-id14378_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx14372_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path14386_
                          (let ((_odir1437914381_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1437914381_
                                (let ((_odir14384_ _odir1437914381_))
                                  (path-expand
                                   (string-append _str-id14378_ '".ss")
                                   _odir14384_))
                                '#f))))
                     (let ((_library-path14388_
                            (string->symbol
                             (string-append '":" _str-id14378_))))
                       (let ((_ssxi-path14390_
                              (if (if _artefact-path14386_
                                      (file-exists? _artefact-path14386_)
                                      '#f)
                                  _artefact-path14386_
                                  _library-path14388_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path14390_)
                             (gx#import-module__opt-lambda9800
                              _ssxi-path14390_
                              '#t
                              '#t))))))))))
          (with-catch _catch-e14374_ _import-e14375_)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args14369_
      (apply make-struct-instance gxc#!type::t _$args14369_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args14366_
      (apply make-struct-instance gxc#!alias::t _$args14366_)))
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
    (lambda _$args14363_
      (apply make-struct-instance gxc#!struct-type::t _$args14363_)))
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
    (lambda _$args14360_
      (apply make-struct-instance gxc#!procedure::t _$args14360_)))
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
    (lambda _$args14357_
      (apply make-struct-instance gxc#!struct-pred::t _$args14357_)))
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
    (lambda _$args14354_
      (apply make-struct-instance gxc#!struct-cons::t _$args14354_)))
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
    (lambda _$args14351_
      (apply make-struct-instance gxc#!struct-getf::t _$args14351_)))
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
    (lambda _$args14348_
      (apply make-struct-instance gxc#!struct-setf::t _$args14348_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (define gxc#!lambda::t
    (make-struct-type 'gxc#!lambda::t gxc#!procedure::t '2 '!lambda '() '#f))
  (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
  (define gxc#make-!lambda
    (lambda _$args14345_
      (apply make-struct-instance gxc#!lambda::t _$args14345_)))
  (define gxc#!lambda-arity (make-struct-field-accessor gxc#!lambda::t '0))
  (define gxc#!lambda-dispatch (make-struct-field-accessor gxc#!lambda::t '1))
  (define gxc#!lambda-arity-set! (make-struct-field-mutator gxc#!lambda::t '0))
  (define gxc#!lambda-dispatch-set!
    (make-struct-field-mutator gxc#!lambda::t '1))
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
    (lambda _$args14342_
      (apply make-struct-instance gxc#!case-lambda::t _$args14342_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self14334_
             _id14335_
             _super14336_
             _fields14337_
             _xfields14338_
             _ctor14339_
             _plist14340_)
      (direct-struct-instance-init!
       _self14334_
       _id14335_
       _super14336_
       _fields14337_
       _xfields14338_
       _ctor14339_
       _plist14340_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type14327_)
      (let ((_$e14329_
             (##structure-ref _type14327_ '7 gxc#!struct-type::t '#f)))
        (if _$e14329_
            (values _$e14329_)
            (let ((_vtab14332_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type14327_
                 _vtab14332_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab14332_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type14318_ _method14319_)
      (let ((_vtab1432014322_
             (##structure-ref _type14318_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1432014322_
            (let ((_vtab14325_ _vtab1432014322_))
              (hash-get _vtab14325_ _method14319_))
            '#f))))
  (define gxc#optimizer-declare-type!
    (lambda (_sym14315_ _type14316_)
      (begin
        (if (##structure-instance-of? _type14316_ 'gxc#!type::t)
            '#!void
            (error '"bad declaration: expected !type" _sym14315_ _type14316_))
        (gxc#verbose
         '"declare-type "
         _sym14315_
         '" "
         (##vector->list _type14316_))
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '1
          gxc#optimizer-info::t
          '#f)
         _sym14315_
         _type14316_))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda14290
      (lambda (_type-t14292_ _method14293_ _sym14294_ _rebind?14295_)
        (let ((_type14297_ (gxc#optimizer-resolve-type _type-t14292_)))
          (if (##structure-instance-of? _type14297_ 'gxc#!struct-type::t)
              (let ((_vtab14299_ (gxc#!struct-type-vtab _type14297_)))
                (if _rebind?14295_
                    (if (hash-key? _vtab14299_ _method14293_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t14292_
                         '" "
                         _method14293_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t14292_
                         '" "
                         _method14293_))
                    (if (hash-key? _vtab14299_ _method14293_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t14292_
                           '" "
                           _method14293_
                           '" => "
                           _sym14294_)
                          (hash-put! _vtab14299_ _method14293_ _sym14294_)))))
              (if (not _type14297_)
                  (gxc#verbose '"declare-method: unknown type " _type-t14292_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t14292_
                         _type14297_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t14304_ _method14305_ _sym14306_)
          (let ((_rebind?14308_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda14290
             _type-t14304_
             _method14305_
             _sym14306_
             _rebind?14308_))))
      (define gxc#optimizer-declare-method!
        (lambda _g14472_
          (let ((_g14471_ (length _g14472_)))
            (cond ((fx= _g14471_ 3)
                   (apply (lambda (_type-t14304_ _method14305_ _sym14306_)
                            (gxc#optimizer-declare-method!__0
                             _type-t14304_
                             _method14305_
                             _sym14306_))
                          _g14472_))
                  ((fx= _g14471_ 4)
                   (apply (lambda (_type-t14310_
                                   _method14311_
                                   _sym14312_
                                   _rebind?14313_)
                            (gxc#optimizer-declare-method!__opt-lambda14290
                             _type-t14310_
                             _method14311_
                             _sym14312_
                             _rebind?14313_))
                          _g14472_))
                  (else (error "No clause matching arguments" _g14472_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym14289_)
      (hash-get
       (##structure-ref
        (gxc#current-compile-optimizer-info)
        '1
        gxc#optimizer-info::t
        '#f)
       _sym14289_)))
  (define gxc#optimizer-resolve-type
    (lambda (_sym14281_)
      (let ((_type1428214284_ (gxc#optimizer-lookup-type _sym14281_)))
        (if _type1428214284_
            (let ((_type14287_ _type1428214284_))
              (if (##structure-instance-of? _type14287_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type14287_ '1 gxc#!type::t '#f))
                  _type14287_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t14276_ _method14277_)
      (let ((_type14279_ (gxc#optimizer-resolve-type _type-t14276_)))
        (if (##structure-instance-of? _type14279_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type14279_ _method14277_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx14272_)
      (let ((_stx14274_ (gxc#apply-lift-top-lambdas _stx14272_)))
        (begin
          (gxc#apply-collect-type-info _stx14274_)
          (gxc#apply-optimize-call _stx14274_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl14269_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl14269_ '%#lambda false)
           (hash-put! _tbl14269_ '%#case-lambda false)
           (hash-put! _tbl14269_ '%#let-values false)
           (hash-put! _tbl14269_ '%#letrec-values false)
           (hash-put! _tbl14269_ '%#letrec*-values false)
           (hash-put! _tbl14269_ '%#quote false)
           (hash-put! _tbl14269_ '%#quote-syntax false)
           (hash-put! _tbl14269_ '%#call false)
           (hash-put! _tbl14269_ '%#if false)
           (hash-put! _tbl14269_ '%#ref false)
           (hash-put! _tbl14269_ '%#set! false)
           (hash-put! _tbl14269_ '%#struct-instance? false)
           (hash-put! _tbl14269_ '%#struct-direct-instance? false)
           (hash-put! _tbl14269_ '%#struct-ref false)
           (hash-put! _tbl14269_ '%#struct-set! false)
           _tbl14269_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl14265_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl14265_ '%#begin false)
           (hash-put! _tbl14265_ '%#begin-syntax false)
           (hash-put! _tbl14265_ '%#begin-foreign false)
           (hash-put! _tbl14265_ '%#module false)
           (hash-put! _tbl14265_ '%#import false)
           (hash-put! _tbl14265_ '%#export false)
           (hash-put! _tbl14265_ '%#provide false)
           (hash-put! _tbl14265_ '%#extern false)
           (hash-put! _tbl14265_ '%#define-values false)
           (hash-put! _tbl14265_ '%#define-syntax false)
           (hash-put! _tbl14265_ '%#define-alias false)
           (hash-put! _tbl14265_ '%#declare false)
           _tbl14265_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl14261_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14261_ (force gxc#&false-special-form))
           (hash-copy! _tbl14261_ (force gxc#&false-expression))
           _tbl14261_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl14257_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl14257_ '%#lambda gxc#xform-identity)
           (hash-put! _tbl14257_ '%#case-lambda gxc#xform-identity)
           (hash-put! _tbl14257_ '%#let-values gxc#xform-identity)
           (hash-put! _tbl14257_ '%#letrec-values gxc#xform-identity)
           (hash-put! _tbl14257_ '%#letrec*-values gxc#xform-identity)
           (hash-put! _tbl14257_ '%#quote gxc#xform-identity)
           (hash-put! _tbl14257_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl14257_ '%#call gxc#xform-identity)
           (hash-put! _tbl14257_ '%#if gxc#xform-identity)
           (hash-put! _tbl14257_ '%#ref gxc#xform-identity)
           (hash-put! _tbl14257_ '%#set! gxc#xform-identity)
           (hash-put! _tbl14257_ '%#struct-instance? gxc#xform-identity)
           (hash-put! _tbl14257_ '%#struct-direct-instance? gxc#xform-identity)
           (hash-put! _tbl14257_ '%#struct-ref gxc#xform-identity)
           (hash-put! _tbl14257_ '%#struct-set! gxc#xform-identity)
           _tbl14257_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl14253_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl14253_ '%#begin gxc#xform-identity)
           (hash-put! _tbl14253_ '%#begin-syntax gxc#xform-identity)
           (hash-put! _tbl14253_ '%#begin-foreign gxc#xform-identity)
           (hash-put! _tbl14253_ '%#module gxc#xform-identity)
           (hash-put! _tbl14253_ '%#import gxc#xform-identity)
           (hash-put! _tbl14253_ '%#export gxc#xform-identity)
           (hash-put! _tbl14253_ '%#provide gxc#xform-identity)
           (hash-put! _tbl14253_ '%#extern gxc#xform-identity)
           (hash-put! _tbl14253_ '%#define-values gxc#xform-identity)
           (hash-put! _tbl14253_ '%#define-syntax gxc#xform-identity)
           (hash-put! _tbl14253_ '%#define-alias gxc#xform-identity)
           (hash-put! _tbl14253_ '%#declare gxc#xform-identity)
           _tbl14253_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl14249_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14249_ (force gxc#&identity-special-form))
           (hash-copy! _tbl14249_ (force gxc#&identity-expression))
           _tbl14249_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl14245_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl14245_ '%#lambda gxc#xform-lambda%)
           (hash-put! _tbl14245_ '%#case-lambda gxc#xform-case-lambda%)
           (hash-put! _tbl14245_ '%#let-values gxc#xform-let-values%)
           (hash-put! _tbl14245_ '%#letrec-values gxc#xform-let-values%)
           (hash-put! _tbl14245_ '%#letrec*-values gxc#xform-let-values%)
           (hash-put! _tbl14245_ '%#quote gxc#xform-identity)
           (hash-put! _tbl14245_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl14245_ '%#call gxc#xform-call%)
           (hash-put! _tbl14245_ '%#if gxc#xform-if%)
           (hash-put! _tbl14245_ '%#ref gxc#xform-identity)
           (hash-put! _tbl14245_ '%#set! gxc#xform-setq%)
           (hash-put! _tbl14245_ '%#struct-instance? gxc#xform-struct-op%)
           (hash-put!
            _tbl14245_
            '%#struct-direct-instance?
            gxc#xform-struct-op%)
           (hash-put! _tbl14245_ '%#struct-ref gxc#xform-struct-op%)
           (hash-put! _tbl14245_ '%#struct-set! gxc#xform-struct-op%)
           _tbl14245_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl14241_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14241_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl14241_ (force gxc#&identity))
           (hash-put! _tbl14241_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl14241_ '%#define-values gxc#xform-define-values%)
           _tbl14241_)))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl14237_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14237_ (force gxc#&identity))
           (hash-put! _tbl14237_ '%#begin gxc#xform-begin%)
           (hash-put!
            _tbl14237_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           _tbl14237_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx14230_ . _args14232_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14230_ _args14232_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl14227_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14227_ (force gxc#&basic-xform-expression))
           (hash-put! _tbl14227_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl14227_ '%#ref gxc#expression-subst-ref%)
           _tbl14227_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx14220_ . _args14222_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14220_ _args14222_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl14217_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14217_ (force gxc#&void-expression))
           (hash-copy! _tbl14217_ (force gxc#&void-special-form))
           (hash-put! _tbl14217_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl14217_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl14217_
            '%#define-values
            gxc#collect-type-define-values%)
           (hash-put! _tbl14217_ '%#call gxc#collect-type-call%)
           _tbl14217_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx14210_ . _args14212_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14210_ _args14212_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl14207_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14207_ (force gxc#&false))
           (hash-put! _tbl14207_ '%#begin gxc#basic-expression-type-begin%)
           (hash-put! _tbl14207_ '%#lambda gxc#basic-expression-type-lambda%)
           (hash-put!
            _tbl14207_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (hash-put! _tbl14207_ '%#call gxc#basic-expression-type-call%)
           (hash-put! _tbl14207_ '%#ref gxc#basic-expression-type-ref%)
           _tbl14207_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx14200_ . _args14202_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14200_ _args14202_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl14197_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14197_ (force gxc#&basic-xform))
           (hash-put! _tbl14197_ '%#call gxc#optimize-call%)
           _tbl14197_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx14190_ . _args14192_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14190_ _args14192_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl14187_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl14187_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl14187_ '%#begin gxc#generate-runtime-begin%)
           (hash-put!
            _tbl14187_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (hash-put! _tbl14187_ '%#call gxc#generate-ssxi-call%)
           _tbl14187_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx14180_ . _args14182_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14180_ _args14182_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx14177_ . _args14178_) _stx14177_))
  (define gxc#xform-wrap-source
    (lambda (_stx14174_ _src-stx14175_)
      (gx#stx-wrap-source _stx14174_ (gx#stx-source _src-stx14175_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args14168_)
      (lambda (_g1416914171_)
        (apply gxc#compile-e _g1416914171_ _args14168_))))
  (define gxc#xform-begin%
    (lambda (_stx14127_ . _args14128_)
      (let ((_g1413014140_
             (lambda (_g1413114137_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1413114137_))))
        (let ((_g1412914165_
               (lambda (_g1413114143_)
                 (if (gx#stx-pair? _g1413114143_)
                     (let ((_e1413314145_ (gx#stx-e _g1413114143_)))
                       (let ((_hd1413414148_ (##car _e1413314145_))
                             (_tl1413514150_ (##cdr _e1413314145_)))
                         ((lambda (_L14153_)
                            (let ((_forms14163_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args14128_)
                                    _L14153_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms14163_)
                               _stx14127_)))
                          _tl1413514150_)))
                     (_g1413014140_ _g1413114143_)))))
          (_g1412914165_ _stx14127_)))))
  (define gxc#xform-define-values%
    (lambda (_stx14057_ . _args14058_)
      (let ((_g1406014077_
             (lambda (_g1406114074_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1406114074_))))
        (let ((_g1405914124_
               (lambda (_g1406114080_)
                 (if (gx#stx-pair? _g1406114080_)
                     (let ((_e1406414082_ (gx#stx-e _g1406114080_)))
                       (let ((_hd1406514085_ (##car _e1406414082_))
                             (_tl1406614087_ (##cdr _e1406414082_)))
                         (if (gx#stx-pair? _tl1406614087_)
                             (let ((_e1406714090_ (gx#stx-e _tl1406614087_)))
                               (let ((_hd1406814093_ (##car _e1406714090_))
                                     (_tl1406914095_ (##cdr _e1406714090_)))
                                 (if (gx#stx-pair? _tl1406914095_)
                                     (let ((_e1407014098_
                                            (gx#stx-e _tl1406914095_)))
                                       (let ((_hd1407114101_
                                              (##car _e1407014098_))
                                             (_tl1407214103_
                                              (##cdr _e1407014098_)))
                                         (if (gx#stx-null? _tl1407214103_)
                                             ((lambda (_L14106_ _L14107_)
                                                (let ((_expr14122_
                                                       (apply gxc#compile-e
                                                              _L14106_
                                                              _args14058_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L14107_
                                                               (cons _expr14122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx14057_)))
                                              _hd1407114101_
                                              _hd1406814093_)
                                             (_g1406014077_ _g1406114080_))))
                                     (_g1406014077_ _g1406114080_))))
                             (_g1406014077_ _g1406114080_))))
                     (_g1406014077_ _g1406114080_)))))
          (_g1405914124_ _stx14057_)))))
  (define gxc#xform-lambda%
    (lambda (_stx14000_ . _args14001_)
      (let ((_g1400314017_
             (lambda (_g1400414014_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1400414014_))))
        (let ((_g1400214054_
               (lambda (_g1400414020_)
                 (if (gx#stx-pair? _g1400414020_)
                     (let ((_e1400714022_ (gx#stx-e _g1400414020_)))
                       (let ((_hd1400814025_ (##car _e1400714022_))
                             (_tl1400914027_ (##cdr _e1400714022_)))
                         (if (gx#stx-pair? _tl1400914027_)
                             (let ((_e1401014030_ (gx#stx-e _tl1400914027_)))
                               (let ((_hd1401114033_ (##car _e1401014030_))
                                     (_tl1401214035_ (##cdr _e1401014030_)))
                                 ((lambda (_L14038_ _L14039_)
                                    (let ((_body14052_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args14001_)
                                            _L14038_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L14039_ _body14052_))
                                       _stx14000_)))
                                  _tl1401214035_
                                  _hd1401114033_)))
                             (_g1400314017_ _g1400414020_))))
                     (_g1400314017_ _g1400414020_)))))
          (_g1400214054_ _stx14000_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx13913_ . _args13914_)
      (let ((_clause-e13916_
             (lambda (_clause13957_)
               (let ((_g1395913970_
                      (lambda (_g1396013967_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1396013967_))))
                 (let ((_g1395813997_
                        (lambda (_g1396013973_)
                          (if (gx#stx-pair? _g1396013973_)
                              (let ((_e1396313975_ (gx#stx-e _g1396013973_)))
                                (let ((_hd1396413978_ (##car _e1396313975_))
                                      (_tl1396513980_ (##cdr _e1396313975_)))
                                  ((lambda (_L13983_ _L13984_)
                                     (let ((_body13995_
                                            (gx#stx-map1
                                             (gxc#xform-apply-compile-e
                                              _args13914_)
                                             _L13983_)))
                                       (cons _L13984_ _body13995_)))
                                   _tl1396513980_
                                   _hd1396413978_)))
                              (_g1395913970_ _g1396013973_)))))
                   (_g1395813997_ _clause13957_))))))
        (let ((_g1391813928_
               (lambda (_g1391913925_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1391913925_))))
          (let ((_g1391713954_
                 (lambda (_g1391913931_)
                   (if (gx#stx-pair? _g1391913931_)
                       (let ((_e1392113933_ (gx#stx-e _g1391913931_)))
                         (let ((_hd1392213936_ (##car _e1392113933_))
                               (_tl1392313938_ (##cdr _e1392113933_)))
                           ((lambda (_L13941_)
                              (let ((_clauses13952_
                                     (gx#stx-map1 _clause-e13916_ _L13941_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses13952_)
                                 _stx13913_)))
                            _tl1392313938_)))
                       (_g1391813928_ _g1391913931_)))))
            (_g1391713954_ _stx13913_))))))
  (define gxc#xform-let-values%
    (lambda (_stx13707_ . _args13708_)
      (let ((_g1371013743_
             (lambda (_g1371113740_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1371113740_))))
        (let ((_g1370913910_
               (lambda (_g1371113746_)
                 (if (gx#stx-pair? _g1371113746_)
                     (let ((_e1371613748_ (gx#stx-e _g1371113746_)))
                       (let ((_hd1371713751_ (##car _e1371613748_))
                             (_tl1371813753_ (##cdr _e1371613748_)))
                         (if (gx#stx-pair? _tl1371813753_)
                             (let ((_e1371913756_ (gx#stx-e _tl1371813753_)))
                               (let ((_hd1372013759_ (##car _e1371913756_))
                                     (_tl1372113761_ (##cdr _e1371913756_)))
                                 (if (gx#stx-pair/null? _hd1372013759_)
                                     (if (fx>= (gx#stx-length _hd1372013759_)
                                               '0)
                                         (let ((_g14473_
                                                (gx#syntax-split-splice
                                                 _hd1372013759_
                                                 '0)))
                                           (begin
                                             (let ((_g14474_
                                                    (values-count _g14473_)))
                                               (if (not (fx= _g14474_ 2))
                                                   (error "Context expects 2 values"
                                                          _g14474_)))
                                             (let ((_target1372213764_
                                                    (values-ref _g14473_ 0))
                                                   (_tl1372413766_
                                                    (values-ref _g14473_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1372413766_)
                                                   (letrec ((_loop1372513769_
                                                             (lambda (_hd1372313772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1372913774_
                              _hd1373013776_)
                       (if (gx#stx-pair? _hd1372313772_)
                           (let ((_e1372613779_ (gx#stx-e _hd1372313772_)))
                             (let ((_lp-hd1372713782_ (##car _e1372613779_))
                                   (_lp-tl1372813784_ (##cdr _e1372613779_)))
                               (if (gx#stx-pair? _lp-hd1372713782_)
                                   (let ((_e1373313787_
                                          (gx#stx-e _lp-hd1372713782_)))
                                     (let ((_hd1373413790_
                                            (##car _e1373313787_))
                                           (_tl1373513792_
                                            (##cdr _e1373313787_)))
                                       (if (gx#stx-pair? _tl1373513792_)
                                           (let ((_e1373613795_
                                                  (gx#stx-e _tl1373513792_)))
                                             (let ((_hd1373713798_
                                                    (##car _e1373613795_))
                                                   (_tl1373813800_
                                                    (##cdr _e1373613795_)))
                                               (if (gx#stx-null?
                                                    _tl1373813800_)
                                                   (_loop1372513769_
                                                    _lp-tl1372813784_
                                                    (cons _hd1373713798_
                                                          _expr1372913774_)
                                                    (cons _hd1373413790_
                                                          _hd1373013776_))
                                                   (_g1371013743_
                                                    _g1371113746_))))
                                           (_g1371013743_ _g1371113746_))))
                                   (_g1371013743_ _g1371113746_))))
                           (let ((_expr1373113803_ (reverse _expr1372913774_))
                                 (_hd1373213805_ (reverse _hd1373013776_)))
                             ((lambda (_L13808_ _L13809_ _L13810_ _L13811_)
                                (let ((_g1383013846_
                                       (lambda (_g1383113843_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1383113843_))))
                                  (let ((_g1382913900_
                                         (lambda (_g1383113849_)
                                           (if (gx#stx-pair/null?
                                                _g1383113849_)
                                               (if (fx>= (gx#stx-length
                                                          _g1383113849_)
                                                         '0)
                                                   (let ((_g14475_
                                                          (gx#syntax-split-splice
                                                           _g1383113849_
                                                           '0)))
                                                     (begin
                                                       (let ((_g14476_
                                                              (values-count
                                                               _g14475_)))
                                                         (if (not (fx= _g14476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g14476_)))
               (let ((_target1383313851_ (values-ref _g14475_ 0))
                     (_tl1383513853_ (values-ref _g14475_ 1)))
                 (if (gx#stx-null? _tl1383513853_)
                     (letrec ((_loop1383613856_
                               (lambda (_hd1383413859_ _expr1384013861_)
                                 (if (gx#stx-pair? _hd1383413859_)
                                     (let ((_e1383713864_
                                            (gx#syntax-e _hd1383413859_)))
                                       (let ((_lp-hd1383813867_
                                              (##car _e1383713864_))
                                             (_lp-tl1383913869_
                                              (##cdr _e1383713864_)))
                                         (_loop1383613856_
                                          _lp-tl1383913869_
                                          (cons _lp-hd1383813867_
                                                _expr1384013861_))))
                                     (let ((_expr1384113872_
                                            (reverse _expr1384013861_)))
                                       ((lambda (_L13875_)
                                          (let ()
                                            (let ((_body13888_
                                                   (gx#stx-map1
                                                    (gxc#xform-apply-compile-e
                                                     _args13708_)
                                                    _L13808_)))
                                              (gxc#xform-wrap-source
                                               (cons _L13811_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L13875_
                                                              _L13810_)
                                                             (foldr (lambda (_g1388913893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1389013895_
                                     _g1389113897_)
                              (cons (cons _g1389013895_
                                          (cons _g1388913893_ '()))
                                    _g1389113897_))
                            '()
                            _L13875_
                            _L13810_))
                   _body13888_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx13707_))))
                                        _expr1384113872_))))))
                       (_loop1383613856_ _target1383313851_ '()))
                     (_g1383013846_ _g1383113849_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1383013846_
                                                    _g1383113849_))
                                               (_g1383013846_
                                                _g1383113849_)))))
                                    (_g1382913900_
                                     (gx#stx-map1
                                      (gxc#xform-apply-compile-e _args13708_)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1390213905_
                                                        _g1390313907_)
                                                 (cons _g1390213905_
                                                       _g1390313907_))
                                               '()
                                               _L13809_)))))))
                              _tl1372113761_
                              _expr1373113803_
                              _hd1373213805_
                              _hd1371713751_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1372513769_
                                                      _target1372213764_
                                                      '()
                                                      '()))
                                                   (_g1371013743_
                                                    _g1371113746_)))))
                                         (_g1371013743_ _g1371113746_))
                                     (_g1371013743_ _g1371113746_))))
                             (_g1371013743_ _g1371113746_))))
                     (_g1371013743_ _g1371113746_)))))
          (_g1370913910_ _stx13707_)))))
  (define gxc#xform-call%
    (lambda (_stx13649_ . _args13650_)
      (let ((_g1365213666_
             (lambda (_g1365313663_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1365313663_))))
        (let ((_g1365113704_
               (lambda (_g1365313669_)
                 (if (gx#stx-pair? _g1365313669_)
                     (let ((_e1365613671_ (gx#stx-e _g1365313669_)))
                       (let ((_hd1365713674_ (##car _e1365613671_))
                             (_tl1365813676_ (##cdr _e1365613671_)))
                         (if (gx#stx-pair? _tl1365813676_)
                             (let ((_e1365913679_ (gx#stx-e _tl1365813676_)))
                               (let ((_hd1366013682_ (##car _e1365913679_))
                                     (_tl1366113684_ (##cdr _e1365913679_)))
                                 ((lambda (_L13687_ _L13688_)
                                    (let ((_rator13701_
                                           (apply gxc#compile-e
                                                  _L13688_
                                                  _args13650_))
                                          (_rands13702_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args13650_)
                                            _L13687_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons _rator13701_ _rands13702_))
                                       _stx13649_)))
                                  _tl1366113684_
                                  _hd1366013682_)))
                             (_g1365213666_ _g1365313669_))))
                     (_g1365213666_ _g1365313669_)))))
          (_g1365113704_ _stx13649_)))))
  (define gxc#xform-if%
    (lambda (_stx13608_ . _args13609_)
      (let ((_g1361113621_
             (lambda (_g1361213618_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1361213618_))))
        (let ((_g1361013646_
               (lambda (_g1361213624_)
                 (if (gx#stx-pair? _g1361213624_)
                     (let ((_e1361413626_ (gx#stx-e _g1361213624_)))
                       (let ((_hd1361513629_ (##car _e1361413626_))
                             (_tl1361613631_ (##cdr _e1361413626_)))
                         ((lambda (_L13634_)
                            (let ((_forms13644_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args13609_)
                                    _L13634_)))
                              (gxc#xform-wrap-source
                               (cons '%#if _forms13644_)
                               _stx13608_)))
                          _tl1361613631_)))
                     (_g1361113621_ _g1361213624_)))))
          (_g1361013646_ _stx13608_)))))
  (define gxc#xform-setq%
    (lambda (_stx13538_ . _args13539_)
      (let ((_g1354113558_
             (lambda (_g1354213555_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1354213555_))))
        (let ((_g1354013605_
               (lambda (_g1354213561_)
                 (if (gx#stx-pair? _g1354213561_)
                     (let ((_e1354513563_ (gx#stx-e _g1354213561_)))
                       (let ((_hd1354613566_ (##car _e1354513563_))
                             (_tl1354713568_ (##cdr _e1354513563_)))
                         (if (gx#stx-pair? _tl1354713568_)
                             (let ((_e1354813571_ (gx#stx-e _tl1354713568_)))
                               (let ((_hd1354913574_ (##car _e1354813571_))
                                     (_tl1355013576_ (##cdr _e1354813571_)))
                                 (if (gx#stx-pair? _tl1355013576_)
                                     (let ((_e1355113579_
                                            (gx#stx-e _tl1355013576_)))
                                       (let ((_hd1355213582_
                                              (##car _e1355113579_))
                                             (_tl1355313584_
                                              (##cdr _e1355113579_)))
                                         (if (gx#stx-null? _tl1355313584_)
                                             ((lambda (_L13587_ _L13588_)
                                                (let ((_expr13603_
                                                       (apply gxc#compile-e
                                                              _L13587_
                                                              _args13539_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L13588_
                                                               (cons _expr13603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx13538_)))
                                              _hd1355213582_
                                              _hd1354913574_)
                                             (_g1354113558_ _g1354213561_))))
                                     (_g1354113558_ _g1354213561_))))
                             (_g1354113558_ _g1354213561_))))
                     (_g1354113558_ _g1354213561_)))))
          (_g1354013605_ _stx13538_)))))
  (define gxc#xform-struct-op%
    (lambda (_stx13494_ . _args13495_)
      (let ((_g1349713508_
             (lambda (_g1349813505_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1349813505_))))
        (let ((_g1349613535_
               (lambda (_g1349813511_)
                 (if (gx#stx-pair? _g1349813511_)
                     (let ((_e1350113513_ (gx#stx-e _g1349813511_)))
                       (let ((_hd1350213516_ (##car _e1350113513_))
                             (_tl1350313518_ (##cdr _e1350113513_)))
                         ((lambda (_L13521_ _L13522_)
                            (let ((_op-args13533_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args13495_)
                                    _L13521_)))
                              (gxc#xform-wrap-source
                               (cons _L13522_ _op-args13533_)
                               _stx13494_)))
                          _tl1350313518_
                          _hd1350213516_)))
                     (_g1349713508_ _g1349813511_)))))
          (_g1349613535_ _stx13494_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form12728_)
      (let ((_g1273312890_
             (lambda (_g1273412887_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1273412887_))))
        (let ((_g1273212897_ (lambda (_g1273412893_) ((lambda () '#f)))))
          (let ((_g1273113037_
                 (lambda (_g1273412900_)
                   (if (gx#stx-pair? _g1273412900_)
                       (let ((_e1285012902_ (gx#stx-e _g1273412900_)))
                         (let ((_hd1285112905_ (##car _e1285012902_))
                               (_tl1285212907_ (##cdr _e1285012902_)))
                           (if (gx#stx-pair? _tl1285212907_)
                               (let ((_e1285312910_ (gx#stx-e _tl1285212907_)))
                                 (let ((_hd1285412913_ (##car _e1285312910_))
                                       (_tl1285512915_ (##cdr _e1285312910_)))
                                   (if (gx#stx-pair? _hd1285412913_)
                                       (let ((_e1285612918_
                                              (gx#stx-e _hd1285412913_)))
                                         (let ((_hd1285712921_
                                                (##car _e1285612918_))
                                               (_tl1285812923_
                                                (##cdr _e1285612918_)))
                                           (if (gx#identifier? _hd1285712921_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1285712921_)
                                                   (if (gx#stx-pair?
                                                        _tl1285812923_)
                                                       (let ((_e1285912926_
                                                              (gx#stx-e
                                                               _tl1285812923_)))
                                                         (let ((_hd1286012929_
                                                                (##car _e1285912926_))
                                                               (_tl1286112931_
                                                                (##cdr _e1285912926_)))
                                                           (if (gx#stx-pair?
                                                                _hd1286012929_)
                                                               (let ((_e1286212934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1286012929_)))
                         (let ((_hd1286312937_ (##car _e1286212934_))
                               (_tl1286412939_ (##cdr _e1286212934_)))
                           (if (gx#identifier? _hd1286312937_)
                               (if (gx#stx-eq? '%#ref _hd1286312937_)
                                   (if (gx#stx-pair? _tl1286412939_)
                                       (let ((_e1286512942_
                                              (gx#stx-e _tl1286412939_)))
                                         (let ((_hd1286612945_
                                                (##car _e1286512942_))
                                               (_tl1286712947_
                                                (##cdr _e1286512942_)))
                                           (if (gx#stx-null? _tl1286712947_)
                                               (if (gx#stx-pair?
                                                    _tl1286112931_)
                                                   (let ((_e1286812950_
                                                          (gx#stx-e
                                                           _tl1286112931_)))
                                                     (let ((_hd1286912953_
                                                            (##car _e1286812950_))
                                                           (_tl1287012955_
                                                            (##cdr _e1286812950_)))
                                                       (if (gx#stx-pair?
                                                            _hd1286912953_)
                                                           (let ((_e1287112958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1286912953_)))
                     (let ((_hd1287212961_ (##car _e1287112958_))
                           (_tl1287312963_ (##cdr _e1287112958_)))
                       (if (gx#identifier? _hd1287212961_)
                           (if (gx#stx-eq? '%#ref _hd1287212961_)
                               (if (gx#stx-pair? _tl1287312963_)
                                   (let ((_e1287412966_
                                          (gx#stx-e _tl1287312963_)))
                                     (let ((_hd1287512969_
                                            (##car _e1287412966_))
                                           (_tl1287612971_
                                            (##cdr _e1287412966_)))
                                       (if (gx#stx-null? _tl1287612971_)
                                           (if (gx#stx-pair? _tl1287012955_)
                                               (let ((_e1287712974_
                                                      (gx#stx-e
                                                       _tl1287012955_)))
                                                 (let ((_hd1287812977_
                                                        (##car _e1287712974_))
                                                       (_tl1287912979_
                                                        (##cdr _e1287712974_)))
                                                   (if (gx#stx-pair?
                                                        _hd1287812977_)
                                                       (let ((_e1288012982_
                                                              (gx#stx-e
                                                               _hd1287812977_)))
                                                         (let ((_hd1288112985_
                                                                (##car _e1288012982_))
                                                               (_tl1288212987_
                                                                (##cdr _e1288012982_)))
                                                           (if (gx#identifier?
                                                                _hd1288112985_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1288112985_)
                           (if (gx#stx-pair? _tl1288212987_)
                               (let ((_e1288312990_ (gx#stx-e _tl1288212987_)))
                                 (let ((_hd1288412993_ (##car _e1288312990_))
                                       (_tl1288512995_ (##cdr _e1288312990_)))
                                   (if (gx#stx-null? _tl1288512995_)
                                       (if (gx#stx-null? _tl1287912979_)
                                           (if (gx#stx-null? _tl1285512915_)
                                               ((lambda (_L12998_
                                                         _L12999_
                                                         _L13000_
                                                         _L13001_)
                                                  (if (gx#identifier? _L13001_)
                                                      (if (eq? (gxc#identifier-symbol
                                                                _L13000_)
                                                               'apply)
                                                          (if (gx#free-identifier=?
                                                               _L13001_
                                                               _L12998_)
                                                              (not (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L12999_
                            _L13001_))
                      '#f)
                  '#f)
              '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1288412993_
                                                _hd1287512969_
                                                _hd1286612945_
                                                _hd1285112905_)
                                               (_g1273212897_ _g1273412900_))
                                           (_g1273212897_ _g1273412900_))
                                       (_g1273212897_ _g1273412900_))))
                               (_g1273212897_ _g1273412900_))
                           (_g1273212897_ _g1273412900_))
                       (_g1273212897_ _g1273412900_))))
               (_g1273212897_ _g1273412900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1273212897_ _g1273412900_))
                                           (_g1273212897_ _g1273412900_))))
                                   (_g1273212897_ _g1273412900_))
                               (_g1273212897_ _g1273412900_))
                           (_g1273212897_ _g1273412900_))))
                   (_g1273212897_ _g1273412900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1273212897_
                                                    _g1273412900_))
                                               (_g1273212897_ _g1273412900_))))
                                       (_g1273212897_ _g1273412900_))
                                   (_g1273212897_ _g1273412900_))
                               (_g1273212897_ _g1273412900_))))
                       (_g1273212897_ _g1273412900_))))
               (_g1273212897_ _g1273412900_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1273212897_
                                                    _g1273412900_))
                                               (_g1273212897_ _g1273412900_))))
                                       (_g1273212897_ _g1273412900_))))
                               (_g1273212897_ _g1273412900_))))
                       (_g1273212897_ _g1273412900_)))))
            (let ((_g1273013297_
                   (lambda (_g1273413040_)
                     (if (gx#stx-pair? _g1273413040_)
                         (let ((_e1278613042_ (gx#stx-e _g1273413040_)))
                           (let ((_hd1278713045_ (##car _e1278613042_))
                                 (_tl1278813047_ (##cdr _e1278613042_)))
                             (if (gx#stx-pair/null? _hd1278713045_)
                                 (if (fx>= (gx#stx-length _hd1278713045_) '0)
                                     (let ((_g14477_
                                            (gx#syntax-split-splice
                                             _hd1278713045_
                                             '0)))
                                       (begin
                                         (let ((_g14478_
                                                (values-count _g14477_)))
                                           (if (not (fx= _g14478_ 2))
                                               (error "Context expects 2 values"
                                                      _g14478_)))
                                         (let ((_target1278913050_
                                                (values-ref _g14477_ 0))
                                               (_tl1279113052_
                                                (values-ref _g14477_ 1)))
                                           (letrec ((_loop1279213055_
                                                     (lambda (_hd1279013058_
                                                              _arg1279613060_)
                                                       (if (gx#stx-pair?
                                                            _hd1279013058_)
                                                           (let ((_e1279313063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1279013058_)))
                     (let ((_lp-hd1279413066_ (##car _e1279313063_))
                           (_lp-tl1279513068_ (##cdr _e1279313063_)))
                       (_loop1279213055_
                        _lp-tl1279513068_
                        (cons _lp-hd1279413066_ _arg1279613060_))))
                   (let ((_arg1279713071_ (reverse _arg1279613060_)))
                     (if (gx#stx-pair? _tl1278813047_)
                         (let ((_e1279813074_ (gx#stx-e _tl1278813047_)))
                           (let ((_hd1279913077_ (##car _e1279813074_))
                                 (_tl1280013079_ (##cdr _e1279813074_)))
                             (if (gx#stx-pair? _hd1279913077_)
                                 (let ((_e1280113082_
                                        (gx#stx-e _hd1279913077_)))
                                   (let ((_hd1280213085_ (##car _e1280113082_))
                                         (_tl1280313087_
                                          (##cdr _e1280113082_)))
                                     (if (gx#identifier? _hd1280213085_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1280213085_)
                                             (if (gx#stx-pair? _tl1280313087_)
                                                 (let ((_e1280413090_
                                                        (gx#stx-e
                                                         _tl1280313087_)))
                                                   (let ((_hd1280513093_
                                                          (##car _e1280413090_))
                                                         (_tl1280613095_
                                                          (##cdr _e1280413090_)))
                                                     (if (gx#stx-pair?
                                                          _hd1280513093_)
                                                         (let ((_e1280713098_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1280513093_)))
                   (let ((_hd1280813101_ (##car _e1280713098_))
                         (_tl1280913103_ (##cdr _e1280713098_)))
                     (if (gx#identifier? _hd1280813101_)
                         (if (gx#stx-eq? '%#ref _hd1280813101_)
                             (if (gx#stx-pair? _tl1280913103_)
                                 (let ((_e1281013106_
                                        (gx#stx-e _tl1280913103_)))
                                   (let ((_hd1281113109_ (##car _e1281013106_))
                                         (_tl1281213111_
                                          (##cdr _e1281013106_)))
                                     (if (gx#stx-null? _tl1281213111_)
                                         (if (gx#stx-pair? _tl1280613095_)
                                             (let ((_e1281313114_
                                                    (gx#stx-e _tl1280613095_)))
                                               (let ((_hd1281413117_
                                                      (##car _e1281313114_))
                                                     (_tl1281513119_
                                                      (##cdr _e1281313114_)))
                                                 (if (gx#stx-pair?
                                                      _hd1281413117_)
                                                     (let ((_e1281613122_
                                                            (gx#stx-e
                                                             _hd1281413117_)))
                                                       (let ((_hd1281713125_
                                                              (##car _e1281613122_))
                                                             (_tl1281813127_
                                                              (##cdr _e1281613122_)))
                                                         (if (gx#identifier?
                                                              _hd1281713125_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1281713125_)
                         (if (gx#stx-pair? _tl1281813127_)
                             (let ((_e1281913130_ (gx#stx-e _tl1281813127_)))
                               (let ((_hd1282013133_ (##car _e1281913130_))
                                     (_tl1282113135_ (##cdr _e1281913130_)))
                                 (if (gx#stx-null? _tl1282113135_)
                                     (if (gx#stx-pair/null? _tl1281513119_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1281513119_)
                                                   '1)
                                             (let ((_g14479_
                                                    (gx#syntax-split-splice
                                                     _tl1281513119_
                                                     '1)))
                                               (begin
                                                 (let ((_g14480_
                                                        (values-count
                                                         _g14479_)))
                                                   (if (not (fx= _g14480_ 2))
                                                       (error "Context expects 2 values"
                                                              _g14480_)))
                                                 (let ((_target1282213138_
                                                        (values-ref
                                                         _g14479_
                                                         0))
                                                       (_tl1282413140_
                                                        (values-ref
                                                         _g14479_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1282413140_)
                                                       (let ((_e1283113143_
                                                              (gx#stx-e
                                                               _tl1282413140_)))
                                                         (let ((_hd1283213146_
                                                                (##car _e1283113143_))
                                                               (_tl1283313148_
                                                                (##cdr _e1283113143_)))
                                                           (if (gx#stx-pair?
                                                                _hd1283213146_)
                                                               (let ((_e1283413151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1283213146_)))
                         (let ((_hd1283513154_ (##car _e1283413151_))
                               (_tl1283613156_ (##cdr _e1283413151_)))
                           (if (gx#identifier? _hd1283513154_)
                               (if (gx#stx-eq? '%#ref _hd1283513154_)
                                   (if (gx#stx-pair? _tl1283613156_)
                                       (let ((_e1283713159_
                                              (gx#stx-e _tl1283613156_)))
                                         (let ((_hd1283813162_
                                                (##car _e1283713159_))
                                               (_tl1283913164_
                                                (##cdr _e1283713159_)))
                                           (if (gx#stx-null? _tl1283913164_)
                                               (if (gx#stx-null?
                                                    _tl1283313148_)
                                                   (letrec ((_loop1282513167_
                                                             (lambda (_hd1282313170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1282913172_)
                       (if (gx#stx-pair? _hd1282313170_)
                           (let ((_e1282613175_ (gx#stx-e _hd1282313170_)))
                             (let ((_lp-hd1282713178_ (##car _e1282613175_))
                                   (_lp-tl1282813180_ (##cdr _e1282613175_)))
                               (if (gx#stx-pair? _lp-hd1282713178_)
                                   (let ((_e1284013183_
                                          (gx#stx-e _lp-hd1282713178_)))
                                     (let ((_hd1284113186_
                                            (##car _e1284013183_))
                                           (_tl1284213188_
                                            (##cdr _e1284013183_)))
                                       (if (gx#identifier? _hd1284113186_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1284113186_)
                                               (if (gx#stx-pair?
                                                    _tl1284213188_)
                                                   (let ((_e1284313191_
                                                          (gx#stx-e
                                                           _tl1284213188_)))
                                                     (let ((_hd1284413194_
                                                            (##car _e1284313191_))
                                                           (_tl1284513196_
                                                            (##cdr _e1284313191_)))
                                                       (if (gx#stx-null?
                                                            _tl1284513196_)
                                                           (_loop1282513167_
                                                            _lp-tl1282813180_
                                                            (cons _hd1284413194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1282913172_))
                   (_g1273113037_ _g1273413040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1273113037_
                                                    _g1273413040_))
                                               (_g1273113037_ _g1273413040_))
                                           (_g1273113037_ _g1273413040_))))
                                   (_g1273113037_ _g1273413040_))))
                           (let ((_xarg1283013199_ (reverse _xarg1282913172_)))
                             (if (gx#stx-null? _tl1280013079_)
                                 ((lambda (_L13202_
                                           _L13203_
                                           _L13204_
                                           _L13205_
                                           _L13206_
                                           _L13207_)
                                    (if (gx#identifier-list?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1325013253_
                                                           _g1325113255_)
                                                    (cons _g1325013253_
                                                          _g1325113255_))
                                                  '()
                                                  _L13207_)))
                                        (if (gx#identifier? _L13206_)
                                            (if (eq? (gxc#identifier-symbol
                                                      _L13205_)
                                                     'apply)
                                                (if (fx= (gx#stx-length
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g1325713260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1325813262_)
                             (cons _g1325713260_ _g1325813262_))
                           '()
                           _L13207_)))
                 (gx#stx-length
                  (begin
                    '#!void
                    (foldr (lambda (_g1326413267_ _g1326513269_)
                             (cons _g1326413267_ _g1326513269_))
                           '()
                           _L13203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (andmap gx#free-identifier=?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr (lambda (_g1327113274_ _g1327213276_)
                                   (cons _g1327113274_ _g1327213276_))
                                 '()
                                 _L13207_))
                        (begin
                          '#!void
                          (foldr (lambda (_g1327813281_ _g1327913283_)
                                   (cons _g1327813281_ _g1327913283_))
                                 '()
                                 _L13203_)))
                (if (gx#free-identifier=? _L13206_ _L13202_)
                    (not (find (lambda (_g1328513287_)
                                 (gx#free-identifier=? _g1328513287_ _L13204_))
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1328913292_ _g1329013294_)
                                          (cons _g1328913292_ _g1329013294_))
                                        (cons _L13206_ '())
                                        _L13207_))))
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#f))
                                  _hd1283813162_
                                  _xarg1283013199_
                                  _hd1282013133_
                                  _hd1281113109_
                                  _tl1279113052_
                                  _arg1279713071_)
                                 (_g1273113037_ _g1273413040_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1282513167_
                                                      _target1282213138_
                                                      '()))
                                                   (_g1273113037_
                                                    _g1273413040_))
                                               (_g1273113037_ _g1273413040_))))
                                       (_g1273113037_ _g1273413040_))
                                   (_g1273113037_ _g1273413040_))
                               (_g1273113037_ _g1273413040_))))
                       (_g1273113037_ _g1273413040_))))
               (_g1273113037_ _g1273413040_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1273113037_ _g1273413040_))
                                         (_g1273113037_ _g1273413040_))
                                     (_g1273113037_ _g1273413040_))))
                             (_g1273113037_ _g1273413040_))
                         (_g1273113037_ _g1273413040_))
                     (_g1273113037_ _g1273413040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1273113037_
                                                      _g1273413040_))))
                                             (_g1273113037_ _g1273413040_))
                                         (_g1273113037_ _g1273413040_))))
                                 (_g1273113037_ _g1273413040_))
                             (_g1273113037_ _g1273413040_))
                         (_g1273113037_ _g1273413040_))))
                 (_g1273113037_ _g1273413040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1273113037_ _g1273413040_))
                                             (_g1273113037_ _g1273413040_))
                                         (_g1273113037_ _g1273413040_))))
                                 (_g1273113037_ _g1273413040_))))
                         (_g1273113037_ _g1273413040_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1279213055_
                                              _target1278913050_
                                              '())))))
                                     (_g1273113037_ _g1273413040_))
                                 (_g1273113037_ _g1273413040_))))
                         (_g1273113037_ _g1273413040_)))))
              (let ((_g1272913491_
                     (lambda (_g1273413300_)
                       (if (gx#stx-pair? _g1273413300_)
                           (let ((_e1273813302_ (gx#stx-e _g1273413300_)))
                             (let ((_hd1273913305_ (##car _e1273813302_))
                                   (_tl1274013307_ (##cdr _e1273813302_)))
                               (if (gx#stx-pair/null? _hd1273913305_)
                                   (if (fx>= (gx#stx-length _hd1273913305_) '0)
                                       (let ((_g14481_
                                              (gx#syntax-split-splice
                                               _hd1273913305_
                                               '0)))
                                         (begin
                                           (let ((_g14482_
                                                  (values-count _g14481_)))
                                             (if (not (fx= _g14482_ 2))
                                                 (error "Context expects 2 values"
                                                        _g14482_)))
                                           (let ((_target1274113310_
                                                  (values-ref _g14481_ 0))
                                                 (_tl1274313312_
                                                  (values-ref _g14481_ 1)))
                                             (if (gx#stx-null? _tl1274313312_)
                                                 (letrec ((_loop1274413315_
                                                           (lambda (_hd1274213318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1274813320_)
                     (if (gx#stx-pair? _hd1274213318_)
                         (let ((_e1274513323_ (gx#stx-e _hd1274213318_)))
                           (let ((_lp-hd1274613326_ (##car _e1274513323_))
                                 (_lp-tl1274713328_ (##cdr _e1274513323_)))
                             (_loop1274413315_
                              _lp-tl1274713328_
                              (cons _lp-hd1274613326_ _arg1274813320_))))
                         (let ((_arg1274913331_ (reverse _arg1274813320_)))
                           (if (gx#stx-pair? _tl1274013307_)
                               (let ((_e1275013334_ (gx#stx-e _tl1274013307_)))
                                 (let ((_hd1275113337_ (##car _e1275013334_))
                                       (_tl1275213339_ (##cdr _e1275013334_)))
                                   (if (gx#stx-pair? _hd1275113337_)
                                       (let ((_e1275313342_
                                              (gx#stx-e _hd1275113337_)))
                                         (let ((_hd1275413345_
                                                (##car _e1275313342_))
                                               (_tl1275513347_
                                                (##cdr _e1275313342_)))
                                           (if (gx#identifier? _hd1275413345_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1275413345_)
                                                   (if (gx#stx-pair?
                                                        _tl1275513347_)
                                                       (let ((_e1275613350_
                                                              (gx#stx-e
                                                               _tl1275513347_)))
                                                         (let ((_hd1275713353_
                                                                (##car _e1275613350_))
                                                               (_tl1275813355_
                                                                (##cdr _e1275613350_)))
                                                           (if (gx#stx-pair?
                                                                _hd1275713353_)
                                                               (let ((_e1275913358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1275713353_)))
                         (let ((_hd1276013361_ (##car _e1275913358_))
                               (_tl1276113363_ (##cdr _e1275913358_)))
                           (if (gx#identifier? _hd1276013361_)
                               (if (gx#stx-eq? '%#ref _hd1276013361_)
                                   (if (gx#stx-pair? _tl1276113363_)
                                       (let ((_e1276213366_
                                              (gx#stx-e _tl1276113363_)))
                                         (let ((_hd1276313369_
                                                (##car _e1276213366_))
                                               (_tl1276413371_
                                                (##cdr _e1276213366_)))
                                           (if (gx#stx-null? _tl1276413371_)
                                               (if (gx#stx-pair/null?
                                                    _tl1275813355_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1275813355_)
                                                             '0)
                                                       (let ((_g14483_
                                                              (gx#syntax-split-splice
                                                               _tl1275813355_
                                                               '0)))
                                                         (begin
                                                           (let ((_g14484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g14483_)))
                     (if (not (fx= _g14484_ 2))
                         (error "Context expects 2 values" _g14484_)))
                   (let ((_target1276513374_ (values-ref _g14483_ 0))
                         (_tl1276713376_ (values-ref _g14483_ 1)))
                     (if (gx#stx-null? _tl1276713376_)
                         (letrec ((_loop1276813379_
                                   (lambda (_hd1276613382_ _xarg1277213384_)
                                     (if (gx#stx-pair? _hd1276613382_)
                                         (let ((_e1276913387_
                                                (gx#stx-e _hd1276613382_)))
                                           (let ((_lp-hd1277013390_
                                                  (##car _e1276913387_))
                                                 (_lp-tl1277113392_
                                                  (##cdr _e1276913387_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1277013390_)
                                                 (let ((_e1277413395_
                                                        (gx#stx-e
                                                         _lp-hd1277013390_)))
                                                   (let ((_hd1277513398_
                                                          (##car _e1277413395_))
                                                         (_tl1277613400_
                                                          (##cdr _e1277413395_)))
                                                     (if (gx#identifier?
                                                          _hd1277513398_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1277513398_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1277613400_)
                         (let ((_e1277713403_ (gx#stx-e _tl1277613400_)))
                           (let ((_hd1277813406_ (##car _e1277713403_))
                                 (_tl1277913408_ (##cdr _e1277713403_)))
                             (if (gx#stx-null? _tl1277913408_)
                                 (_loop1276813379_
                                  _lp-tl1277113392_
                                  (cons _hd1277813406_ _xarg1277213384_))
                                 (_g1273013297_ _g1273413300_))))
                         (_g1273013297_ _g1273413300_))
                     (_g1273013297_ _g1273413300_))
                 (_g1273013297_ _g1273413300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1273013297_
                                                  _g1273413300_))))
                                         (let ((_xarg1277313411_
                                                (reverse _xarg1277213384_)))
                                           (if (gx#stx-null? _tl1275213339_)
                                               ((lambda (_L13414_
                                                         _L13415_
                                                         _L13416_)
                                                  (if (gx#identifier-list?
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1344413447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1344513449_)
                          (cons _g1344413447_ _g1344513449_))
                        '()
                        _L13416_)))
              (if (fx= (gx#stx-length
                        (begin
                          '#!void
                          (foldr (lambda (_g1345113454_ _g1345213456_)
                                   (cons _g1345113454_ _g1345213456_))
                                 '()
                                 _L13416_)))
                       (gx#stx-length
                        (begin
                          '#!void
                          (foldr (lambda (_g1345813461_ _g1345913463_)
                                   (cons _g1345813461_ _g1345913463_))
                                 '()
                                 _L13414_))))
                  (if (andmap gx#free-identifier=?
                              (begin
                                '#!void
                                (foldr (lambda (_g1346513468_ _g1346613470_)
                                         (cons _g1346513468_ _g1346613470_))
                                       '()
                                       _L13416_))
                              (begin
                                '#!void
                                (foldr (lambda (_g1347213475_ _g1347313477_)
                                         (cons _g1347213475_ _g1347313477_))
                                       '()
                                       _L13414_)))
                      (not (find (lambda (_g1347913481_)
                                   (gx#free-identifier=?
                                    _g1347913481_
                                    _L13415_))
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1348313486_ _g1348413488_)
                                            (cons _g1348313486_ _g1348413488_))
                                          '()
                                          _L13416_))))
                      '#f)
                  '#f)
              '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1277313411_
                                                _hd1276313369_
                                                _arg1274913331_)
                                               (_g1273013297_
                                                _g1273413300_)))))))
                           (_loop1276813379_ _target1276513374_ '()))
                         (_g1273013297_ _g1273413300_)))))
               (_g1273013297_ _g1273413300_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1273013297_
                                                    _g1273413300_))
                                               (_g1273013297_ _g1273413300_))))
                                       (_g1273013297_ _g1273413300_))
                                   (_g1273013297_ _g1273413300_))
                               (_g1273013297_ _g1273413300_))))
                       (_g1273013297_ _g1273413300_))))
               (_g1273013297_ _g1273413300_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1273013297_
                                                    _g1273413300_))
                                               (_g1273013297_ _g1273413300_))))
                                       (_g1273013297_ _g1273413300_))))
                               (_g1273013297_ _g1273413300_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1274413315_
                                                    _target1274113310_
                                                    '()))
                                                 (_g1273013297_
                                                  _g1273413300_)))))
                                       (_g1273013297_ _g1273413300_))
                                   (_g1273013297_ _g1273413300_))))
                           (_g1273013297_ _g1273413300_)))))
                (_g1272913491_ _form12728_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form12258_)
      (let ((_g1226212370_
             (lambda (_g1226312367_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1226312367_))))
        (let ((_g1226112487_
               (lambda (_g1226312373_)
                 (if (gx#stx-pair? _g1226312373_)
                     (let ((_e1233612375_ (gx#stx-e _g1226312373_)))
                       (let ((_hd1233712378_ (##car _e1233612375_))
                             (_tl1233812380_ (##cdr _e1233612375_)))
                         (if (gx#stx-pair? _tl1233812380_)
                             (let ((_e1233912383_ (gx#stx-e _tl1233812380_)))
                               (let ((_hd1234012386_ (##car _e1233912383_))
                                     (_tl1234112388_ (##cdr _e1233912383_)))
                                 (if (gx#stx-pair? _hd1234012386_)
                                     (let ((_e1234212391_
                                            (gx#stx-e _hd1234012386_)))
                                       (let ((_hd1234312394_
                                              (##car _e1234212391_))
                                             (_tl1234412396_
                                              (##cdr _e1234212391_)))
                                         (if (gx#identifier? _hd1234312394_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1234312394_)
                                                 (if (gx#stx-pair?
                                                      _tl1234412396_)
                                                     (let ((_e1234512399_
                                                            (gx#stx-e
                                                             _tl1234412396_)))
                                                       (let ((_hd1234612402_
                                                              (##car _e1234512399_))
                                                             (_tl1234712404_
                                                              (##cdr _e1234512399_)))
                                                         (if (gx#stx-pair?
                                                              _hd1234612402_)
                                                             (let ((_e1234812407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1234612402_)))
                       (let ((_hd1234912410_ (##car _e1234812407_))
                             (_tl1235012412_ (##cdr _e1234812407_)))
                         (if (gx#identifier? _hd1234912410_)
                             (if (gx#stx-eq? '%#ref _hd1234912410_)
                                 (if (gx#stx-pair? _tl1235012412_)
                                     (let ((_e1235112415_
                                            (gx#stx-e _tl1235012412_)))
                                       (let ((_hd1235212418_
                                              (##car _e1235112415_))
                                             (_tl1235312420_
                                              (##cdr _e1235112415_)))
                                         (if (gx#stx-null? _tl1235312420_)
                                             (if (gx#stx-pair? _tl1234712404_)
                                                 (let ((_e1235412423_
                                                        (gx#stx-e
                                                         _tl1234712404_)))
                                                   (let ((_hd1235512426_
                                                          (##car _e1235412423_))
                                                         (_tl1235612428_
                                                          (##cdr _e1235412423_)))
                                                     (if (gx#stx-pair?
                                                          _hd1235512426_)
                                                         (let ((_e1235712431_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1235512426_)))
                   (let ((_hd1235812434_ (##car _e1235712431_))
                         (_tl1235912436_ (##cdr _e1235712431_)))
                     (if (gx#identifier? _hd1235812434_)
                         (if (gx#stx-eq? '%#ref _hd1235812434_)
                             (if (gx#stx-pair? _tl1235912436_)
                                 (let ((_e1236012439_
                                        (gx#stx-e _tl1235912436_)))
                                   (let ((_hd1236112442_ (##car _e1236012439_))
                                         (_tl1236212444_
                                          (##cdr _e1236012439_)))
                                     (if (gx#stx-null? _tl1236212444_)
                                         (if (gx#stx-pair? _tl1235612428_)
                                             (let ((_e1236312447_
                                                    (gx#stx-e _tl1235612428_)))
                                               (let ((_hd1236412450_
                                                      (##car _e1236312447_))
                                                     (_tl1236512452_
                                                      (##cdr _e1236312447_)))
                                                 (if (gx#stx-null?
                                                      _tl1236512452_)
                                                     (if (gx#stx-null?
                                                          _tl1234112388_)
                                                         ((lambda (_L12455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L12456_
                           _L12457_)
                    (gxc#identifier-symbol _L12455_))
                  _hd1236112442_
                  _hd1235212418_
                  _hd1233712378_)
                 (_g1226212370_ _g1226312373_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1226212370_
                                                      _g1226312373_))))
                                             (_g1226212370_ _g1226312373_))
                                         (_g1226212370_ _g1226312373_))))
                                 (_g1226212370_ _g1226312373_))
                             (_g1226212370_ _g1226312373_))
                         (_g1226212370_ _g1226312373_))))
                 (_g1226212370_ _g1226312373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1226212370_ _g1226312373_))
                                             (_g1226212370_ _g1226312373_))))
                                     (_g1226212370_ _g1226312373_))
                                 (_g1226212370_ _g1226312373_))
                             (_g1226212370_ _g1226312373_))))
                     (_g1226212370_ _g1226312373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1226212370_
                                                      _g1226312373_))
                                                 (_g1226212370_ _g1226312373_))
                                             (_g1226212370_ _g1226312373_))))
                                     (_g1226212370_ _g1226312373_))))
                             (_g1226212370_ _g1226312373_))))
                     (_g1226212370_ _g1226312373_)))))
          (let ((_g1226012623_
                 (lambda (_g1226312490_)
                   (if (gx#stx-pair? _g1226312490_)
                       (let ((_e1229712492_ (gx#stx-e _g1226312490_)))
                         (let ((_hd1229812495_ (##car _e1229712492_))
                               (_tl1229912497_ (##cdr _e1229712492_)))
                           (if (gx#stx-pair/null? _hd1229812495_)
                               (if (fx>= (gx#stx-length _hd1229812495_) '0)
                                   (let ((_g14485_
                                          (gx#syntax-split-splice
                                           _hd1229812495_
                                           '0)))
                                     (begin
                                       (let ((_g14486_
                                              (values-count _g14485_)))
                                         (if (not (fx= _g14486_ 2))
                                             (error "Context expects 2 values"
                                                    _g14486_)))
                                       (let ((_target1230012500_
                                              (values-ref _g14485_ 0))
                                             (_tl1230212502_
                                              (values-ref _g14485_ 1)))
                                         (letrec ((_loop1230312505_
                                                   (lambda (_hd1230112508_
                                                            _arg1230712510_)
                                                     (if (gx#stx-pair?
                                                          _hd1230112508_)
                                                         (let ((_e1230412513_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1230112508_)))
                   (let ((_lp-hd1230512516_ (##car _e1230412513_))
                         (_lp-tl1230612518_ (##cdr _e1230412513_)))
                     (_loop1230312505_
                      _lp-tl1230612518_
                      (cons _lp-hd1230512516_ _arg1230712510_))))
                 (let ((_arg1230812521_ (reverse _arg1230712510_)))
                   (if (gx#stx-pair? _tl1229912497_)
                       (let ((_e1230912524_ (gx#stx-e _tl1229912497_)))
                         (let ((_hd1231012527_ (##car _e1230912524_))
                               (_tl1231112529_ (##cdr _e1230912524_)))
                           (if (gx#stx-pair? _hd1231012527_)
                               (let ((_e1231212532_ (gx#stx-e _hd1231012527_)))
                                 (let ((_hd1231312535_ (##car _e1231212532_))
                                       (_tl1231412537_ (##cdr _e1231212532_)))
                                   (if (gx#identifier? _hd1231312535_)
                                       (if (gx#stx-eq? '%#call _hd1231312535_)
                                           (if (gx#stx-pair? _tl1231412537_)
                                               (let ((_e1231512540_
                                                      (gx#stx-e
                                                       _tl1231412537_)))
                                                 (let ((_hd1231612543_
                                                        (##car _e1231512540_))
                                                       (_tl1231712545_
                                                        (##cdr _e1231512540_)))
                                                   (if (gx#stx-pair?
                                                        _hd1231612543_)
                                                       (let ((_e1231812548_
                                                              (gx#stx-e
                                                               _hd1231612543_)))
                                                         (let ((_hd1231912551_
                                                                (##car _e1231812548_))
                                                               (_tl1232012553_
                                                                (##cdr _e1231812548_)))
                                                           (if (gx#identifier?
                                                                _hd1231912551_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1231912551_)
                           (if (gx#stx-pair? _tl1232012553_)
                               (let ((_e1232112556_ (gx#stx-e _tl1232012553_)))
                                 (let ((_hd1232212559_ (##car _e1232112556_))
                                       (_tl1232312561_ (##cdr _e1232112556_)))
                                   (if (gx#stx-null? _tl1232312561_)
                                       (if (gx#stx-pair? _tl1231712545_)
                                           (let ((_e1232412564_
                                                  (gx#stx-e _tl1231712545_)))
                                             (let ((_hd1232512567_
                                                    (##car _e1232412564_))
                                                   (_tl1232612569_
                                                    (##cdr _e1232412564_)))
                                               (if (gx#stx-pair?
                                                    _hd1232512567_)
                                                   (let ((_e1232712572_
                                                          (gx#stx-e
                                                           _hd1232512567_)))
                                                     (let ((_hd1232812575_
                                                            (##car _e1232712572_))
                                                           (_tl1232912577_
                                                            (##cdr _e1232712572_)))
                                                       (if (gx#identifier?
                                                            _hd1232812575_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1232812575_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1232912577_)
                           (let ((_e1233012580_ (gx#stx-e _tl1232912577_)))
                             (let ((_hd1233112583_ (##car _e1233012580_))
                                   (_tl1233212585_ (##cdr _e1233012580_)))
                               (if (gx#stx-null? _tl1233212585_)
                                   (if (gx#stx-null? _tl1231112529_)
                                       ((lambda (_L12588_
                                                 _L12589_
                                                 _L12590_
                                                 _L12591_)
                                          (gxc#identifier-symbol _L12588_))
                                        _hd1233112583_
                                        _hd1232212559_
                                        _tl1230212502_
                                        _arg1230812521_)
                                       (_g1226112487_ _g1226312490_))
                                   (_g1226112487_ _g1226312490_))))
                           (_g1226112487_ _g1226312490_))
                       (_g1226112487_ _g1226312490_))
                   (_g1226112487_ _g1226312490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1226112487_
                                                    _g1226312490_))))
                                           (_g1226112487_ _g1226312490_))
                                       (_g1226112487_ _g1226312490_))))
                               (_g1226112487_ _g1226312490_))
                           (_g1226112487_ _g1226312490_))
                       (_g1226112487_ _g1226312490_))))
               (_g1226112487_ _g1226312490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1226112487_ _g1226312490_))
                                           (_g1226112487_ _g1226312490_))
                                       (_g1226112487_ _g1226312490_))))
                               (_g1226112487_ _g1226312490_))))
                       (_g1226112487_ _g1226312490_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1230312505_
                                            _target1230012500_
                                            '())))))
                                   (_g1226112487_ _g1226312490_))
                               (_g1226112487_ _g1226312490_))))
                       (_g1226112487_ _g1226312490_)))))
            (let ((_g1225912725_
                   (lambda (_g1226312626_)
                     (if (gx#stx-pair? _g1226312626_)
                         (let ((_e1226612628_ (gx#stx-e _g1226312626_)))
                           (let ((_hd1226712631_ (##car _e1226612628_))
                                 (_tl1226812633_ (##cdr _e1226612628_)))
                             (if (gx#stx-pair/null? _hd1226712631_)
                                 (if (fx>= (gx#stx-length _hd1226712631_) '0)
                                     (let ((_g14487_
                                            (gx#syntax-split-splice
                                             _hd1226712631_
                                             '0)))
                                       (begin
                                         (let ((_g14488_
                                                (values-count _g14487_)))
                                           (if (not (fx= _g14488_ 2))
                                               (error "Context expects 2 values"
                                                      _g14488_)))
                                         (let ((_target1226912636_
                                                (values-ref _g14487_ 0))
                                               (_tl1227112638_
                                                (values-ref _g14487_ 1)))
                                           (if (gx#stx-null? _tl1227112638_)
                                               (letrec ((_loop1227212641_
                                                         (lambda (_hd1227012644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1227612646_)
                   (if (gx#stx-pair? _hd1227012644_)
                       (let ((_e1227312649_ (gx#stx-e _hd1227012644_)))
                         (let ((_lp-hd1227412652_ (##car _e1227312649_))
                               (_lp-tl1227512654_ (##cdr _e1227312649_)))
                           (_loop1227212641_
                            _lp-tl1227512654_
                            (cons _lp-hd1227412652_ _arg1227612646_))))
                       (let ((_arg1227712657_ (reverse _arg1227612646_)))
                         (if (gx#stx-pair? _tl1226812633_)
                             (let ((_e1227812660_ (gx#stx-e _tl1226812633_)))
                               (let ((_hd1227912663_ (##car _e1227812660_))
                                     (_tl1228012665_ (##cdr _e1227812660_)))
                                 (if (gx#stx-pair? _hd1227912663_)
                                     (let ((_e1228112668_
                                            (gx#stx-e _hd1227912663_)))
                                       (let ((_hd1228212671_
                                              (##car _e1228112668_))
                                             (_tl1228312673_
                                              (##cdr _e1228112668_)))
                                         (if (gx#identifier? _hd1228212671_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1228212671_)
                                                 (if (gx#stx-pair?
                                                      _tl1228312673_)
                                                     (let ((_e1228412676_
                                                            (gx#stx-e
                                                             _tl1228312673_)))
                                                       (let ((_hd1228512679_
                                                              (##car _e1228412676_))
                                                             (_tl1228612681_
                                                              (##cdr _e1228412676_)))
                                                         (if (gx#stx-pair?
                                                              _hd1228512679_)
                                                             (let ((_e1228712684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1228512679_)))
                       (let ((_hd1228812687_ (##car _e1228712684_))
                             (_tl1228912689_ (##cdr _e1228712684_)))
                         (if (gx#identifier? _hd1228812687_)
                             (if (gx#stx-eq? '%#ref _hd1228812687_)
                                 (if (gx#stx-pair? _tl1228912689_)
                                     (let ((_e1229012692_
                                            (gx#stx-e _tl1228912689_)))
                                       (let ((_hd1229112695_
                                              (##car _e1229012692_))
                                             (_tl1229212697_
                                              (##cdr _e1229012692_)))
                                         (if (gx#stx-null? _tl1229212697_)
                                             (if (gx#stx-null? _tl1228012665_)
                                                 ((lambda (_L12700_ _L12701_)
                                                    (gxc#identifier-symbol
                                                     _L12700_))
                                                  _hd1229112695_
                                                  _arg1227712657_)
                                                 (_g1226012623_ _g1226312626_))
                                             (_g1226012623_ _g1226312626_))))
                                     (_g1226012623_ _g1226312626_))
                                 (_g1226012623_ _g1226312626_))
                             (_g1226012623_ _g1226312626_))))
                     (_g1226012623_ _g1226312626_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1226012623_
                                                      _g1226312626_))
                                                 (_g1226012623_ _g1226312626_))
                                             (_g1226012623_ _g1226312626_))))
                                     (_g1226012623_ _g1226312626_))))
                             (_g1226012623_ _g1226312626_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1227212641_
                                                  _target1226912636_
                                                  '()))
                                               (_g1226012623_
                                                _g1226312626_)))))
                                     (_g1226012623_ _g1226312626_))
                                 (_g1226012623_ _g1226312626_))))
                         (_g1226012623_ _g1226312626_)))))
              (_g1225912725_ _form12258_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form12101_)
      (let ((_g1210512136_
             (lambda (_g1210612133_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1210612133_))))
        (let ((_g1210412149_
               (lambda (_g1210612139_)
                 ((lambda (_L12141_) (cons '0 '())) _g1210612139_))))
          (let ((_g1210312198_
                 (lambda (_g1210612152_)
                   (if (gx#stx-pair/null? _g1210612152_)
                       (if (fx>= (gx#stx-length _g1210612152_) '0)
                           (let ((_g14489_
                                  (gx#syntax-split-splice _g1210612152_ '0)))
                             (begin
                               (let ((_g14490_ (values-count _g14489_)))
                                 (if (not (fx= _g14490_ 2))
                                     (error "Context expects 2 values"
                                            _g14490_)))
                               (let ((_target1212212154_
                                      (values-ref _g14489_ 0))
                                     (_tl1212412156_ (values-ref _g14489_ 1)))
                                 (letrec ((_loop1212512159_
                                           (lambda (_hd1212312162_
                                                    _arg1212912164_)
                                             (if (gx#stx-pair? _hd1212312162_)
                                                 (let ((_e1212612167_
                                                        (gx#stx-e
                                                         _hd1212312162_)))
                                                   (let ((_lp-hd1212712170_
                                                          (##car _e1212612167_))
                                                         (_lp-tl1212812172_
                                                          (##cdr _e1212612167_)))
                                                     (_loop1212512159_
                                                      _lp-tl1212812172_
                                                      (cons _lp-hd1212712170_
                                                            _arg1212912164_))))
                                                 (let ((_arg1213012175_
                                                        (reverse _arg1212912164_)))
                                                   ((lambda (_L12178_ _L12179_)
                                                      (cons (gx#stx-length
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1219012193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1219112195_)
                                (cons _g1219012193_ _g1219112195_))
                              '()
                              _L12179_)))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1212412156_
                                                    _arg1213012175_))))))
                                   (_loop1212512159_
                                    _target1212212154_
                                    '())))))
                           (_g1210412149_ _g1210612152_))
                       (_g1210412149_ _g1210612152_)))))
            (let ((_g1210212255_
                   (lambda (_g1210612201_)
                     (if (gx#stx-pair? _g1210612201_)
                         (let ((_e1210812203_ (gx#stx-e _g1210612201_)))
                           (let ((_hd1210912206_ (##car _e1210812203_))
                                 (_tl1211012208_ (##cdr _e1210812203_)))
                             (if (gx#stx-pair/null? _hd1210912206_)
                                 (if (fx>= (gx#stx-length _hd1210912206_) '0)
                                     (let ((_g14491_
                                            (gx#syntax-split-splice
                                             _hd1210912206_
                                             '0)))
                                       (begin
                                         (let ((_g14492_
                                                (values-count _g14491_)))
                                           (if (not (fx= _g14492_ 2))
                                               (error "Context expects 2 values"
                                                      _g14492_)))
                                         (let ((_target1211112211_
                                                (values-ref _g14491_ 0))
                                               (_tl1211312213_
                                                (values-ref _g14491_ 1)))
                                           (if (gx#stx-null? _tl1211312213_)
                                               (letrec ((_loop1211412216_
                                                         (lambda (_hd1211212219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1211812221_)
                   (if (gx#stx-pair? _hd1211212219_)
                       (let ((_e1211512224_ (gx#stx-e _hd1211212219_)))
                         (let ((_lp-hd1211612227_ (##car _e1211512224_))
                               (_lp-tl1211712229_ (##cdr _e1211512224_)))
                           (_loop1211412216_
                            _lp-tl1211712229_
                            (cons _lp-hd1211612227_ _arg1211812221_))))
                       (let ((_arg1211912232_ (reverse _arg1211812221_)))
                         ((lambda (_L12235_)
                            (gx#stx-length
                             (begin
                               '#!void
                               (foldr (lambda (_g1224712250_ _g1224812252_)
                                        (cons _g1224712250_ _g1224812252_))
                                      '()
                                      _L12235_))))
                          _arg1211912232_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1211412216_
                                                  _target1211112211_
                                                  '()))
                                               (_g1210312198_
                                                _g1210612201_)))))
                                     (_g1210312198_ _g1210612201_))
                                 (_g1210312198_ _g1210612201_))))
                         (_g1210312198_ _g1210612201_)))))
              (_g1210212255_ _form12101_)))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx11374_)
      (let ((_lambda-expr?11376_
             (lambda (_expr12054_)
               (let ((_g1205712067_
                      (lambda (_g1205812064_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1205812064_))))
                 (let ((_g1205612074_
                        (lambda (_g1205812070_) ((lambda () '#f)))))
                   (let ((_g1205512098_
                          (lambda (_g1205812077_)
                            (if (gx#stx-pair? _g1205812077_)
                                (let ((_e1206012079_ (gx#stx-e _g1205812077_)))
                                  (let ((_hd1206112082_ (##car _e1206012079_))
                                        (_tl1206212084_ (##cdr _e1206012079_)))
                                    (if (gx#identifier? _hd1206112082_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd1206112082_)
                                            ((lambda (_L12087_) '#t)
                                             _tl1206212084_)
                                            (_g1205612074_ _g1205812077_))
                                        (_g1205612074_ _g1205812077_))))
                                (_g1205612074_ _g1205812077_)))))
                     (_g1205512098_ _expr12054_)))))))
        (let ((_case-lambda-expr?11377_
               (lambda (_expr12007_)
                 (let ((_g1201012020_
                        (lambda (_g1201112017_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1201112017_))))
                   (let ((_g1200912027_
                          (lambda (_g1201112023_) ((lambda () '#f)))))
                     (let ((_g1200812051_
                            (lambda (_g1201112030_)
                              (if (gx#stx-pair? _g1201112030_)
                                  (let ((_e1201312032_
                                         (gx#stx-e _g1201112030_)))
                                    (let ((_hd1201412035_
                                           (##car _e1201312032_))
                                          (_tl1201512037_
                                           (##cdr _e1201312032_)))
                                      (if (gx#identifier? _hd1201412035_)
                                          (if (gx#stx-eq?
                                               '%#case-lambda
                                               _hd1201412035_)
                                              ((lambda (_L12040_) '#t)
                                               _tl1201512037_)
                                              (_g1200912027_ _g1201112030_))
                                          (_g1200912027_ _g1201112030_))))
                                  (_g1200912027_ _g1201112030_)))))
                       (_g1200812051_ _expr12007_)))))))
          (let ((_lift-case-lambda-clauses11378_
                 (lambda (_id11768_ _clauses11769_)
                   ((letrec ((_lp11771_
                              (lambda (_rest11773_
                                       _ids11774_
                                       _impls11775_
                                       _clauses11776_)
                                (let ((_rest1177711785_ _rest11773_))
                                  (let ((_E1178011789_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest1177711785_))))
                                    (let ((_else1177911793_
                                           (lambda ()
                                             (values (reverse _ids11774_)
                                                     (reverse _impls11775_)
                                                     (reverse _clauses11776_)))))
                                      (let ((_K1178111995_
                                             (lambda (_rest11796_
                                                      _clause11797_)
                                               (if (gxc#dispatch-lambda-form?
                                                    _clause11797_)
                                                   (_lp11771_
                                                    _rest11796_
                                                    _ids11774_
                                                    _impls11775_
                                                    (cons _clause11797_
                                                          _clauses11776_))
                                                   (let ((_g1179911810_
                                                          (lambda (_g1180011807_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1180011807_))))
                                                     (let ((_g1179811992_
                                                            (lambda (_g1180011813_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1180011813_)
                          (let ((_e1180311815_ (gx#stx-e _g1180011813_)))
                            (let ((_hd1180411818_ (##car _e1180311815_))
                                  (_tl1180511820_ (##cdr _e1180311815_)))
                              ((lambda (_L11823_ _L11824_)
                                 (let ((_id11841_
                                        (make-symbol
                                         (gx#stx-e _id11768_)
                                         '"__"
                                         (length _clauses11776_))))
                                   (let ((_impl11843_
                                          (gxc#xform-wrap-source
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#lambda)
                                                 (cons _L11824_ _L11823_))
                                           _stx11374_)))
                                     (let ((_clause11989_
                                            (let ((_g1184711875_
                                                   (lambda (_g1184811872_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1184811872_))))
                                              (let ((_g1184611890_
                                                     (lambda (_g1184811878_)
                                                       ((lambda (_L11880_)
                                                          (cons _L11824_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id11841_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#ref)
                                                             (cons _L11880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx11374_)
                              '())))
                _g1184811878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1184511939_
                                                       (lambda (_g1184811893_)
                                                         (if (gx#stx-pair/null?
                                                              _g1184811893_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1184811893_)
                               '0)
                         (let ((_g14495_
                                (gx#syntax-split-splice _g1184811893_ '0)))
                           (begin
                             (let ((_g14496_ (values-count _g14495_)))
                               (if (not (fx= _g14496_ 2))
                                   (error "Context expects 2 values"
                                          _g14496_)))
                             (let ((_target1186111895_ (values-ref _g14495_ 0))
                                   (_tl1186311897_ (values-ref _g14495_ 1)))
                               (letrec ((_loop1186411900_
                                         (lambda (_hd1186211903_
                                                  _arg1186811905_)
                                           (if (gx#stx-pair? _hd1186211903_)
                                               (let ((_e1186511908_
                                                      (gx#stx-e
                                                       _hd1186211903_)))
                                                 (let ((_lp-hd1186611911_
                                                        (##car _e1186511908_))
                                                       (_lp-tl1186711913_
                                                        (##cdr _e1186511908_)))
                                                   (_loop1186411900_
                                                    _lp-tl1186711913_
                                                    (cons _lp-hd1186611911_
                                                          _arg1186811905_))))
                                               (let ((_arg1186911916_
                                                      (reverse _arg1186811905_)))
                                                 ((lambda (_L11919_ _L11920_)
                                                    (cons _L11824_
                                                          (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref (cons 'apply '()))
                                     (cons (cons '%#ref (cons _id11841_ '()))
                                           (foldr cons
                                                  (cons (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L11919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1193111934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1193211936_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g1193111934_ '()))
                           _g1193211936_))
                   '()
                   _L11920_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _stx11374_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1186311897_
                                                  _arg1186911916_))))))
                                 (_loop1186411900_ _target1186111895_ '())))))
                         (_g1184611890_ _g1184811893_))
                     (_g1184611890_ _g1184811893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1184411986_
                                                         (lambda (_g1184811942_)
                                                           (if (gx#stx-pair/null?
                                                                _g1184811942_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1184811942_)
                                 '0)
                           (let ((_g14497_
                                  (gx#syntax-split-splice _g1184811942_ '0)))
                             (begin
                               (let ((_g14498_ (values-count _g14497_)))
                                 (if (not (fx= _g14498_ 2))
                                     (error "Context expects 2 values"
                                            _g14498_)))
                               (let ((_target1185011944_
                                      (values-ref _g14497_ 0))
                                     (_tl1185211946_ (values-ref _g14497_ 1)))
                                 (if (gx#stx-null? _tl1185211946_)
                                     (letrec ((_loop1185311949_
                                               (lambda (_hd1185111952_
                                                        _arg1185711954_)
                                                 (if (gx#stx-pair?
                                                      _hd1185111952_)
                                                     (let ((_e1185411957_
                                                            (gx#stx-e
                                                             _hd1185111952_)))
                                                       (let ((_lp-hd1185511960_
                                                              (##car _e1185411957_))
                                                             (_lp-tl1185611962_
                                                              (##cdr _e1185411957_)))
                                                         (_loop1185311949_
                                                          _lp-tl1185611962_
                                                          (cons _lp-hd1185511960_
                                                                _arg1185711954_))))
                                                     (let ((_arg1185811965_
                                                            (reverse _arg1185711954_)))
                                                       ((lambda (_L11968_)
                                                          (cons _L11824_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons _id11841_ '()))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1197811981_
                                                             _g1197911983_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1197811981_ '()))
                    _g1197911983_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L11968_))))
                               _stx11374_)
                              '())))
                _arg1185811965_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1185311949_
                                        _target1185011944_
                                        '()))
                                     (_g1184511939_ _g1184811942_)))))
                           (_g1184511939_ _g1184811942_))
                       (_g1184511939_ _g1184811942_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1184411986_
                                                     _L11824_)))))))
                                       (let ()
                                         (_lp11771_
                                          _rest11796_
                                          (cons _id11841_ _ids11774_)
                                          (cons _impl11843_ _impls11775_)
                                          (cons _clause11989_
                                                _clauses11776_)))))))
                               _tl1180511820_
                               _hd1180411818_)))
                          (_g1179911810_ _g1180011813_)))))
               (_g1179811992_ _clause11797_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest1177711785_)
                                            (let ((_hd1178211998_
                                                   (##car _rest1177711785_))
                                                  (_tl1178312000_
                                                   (##cdr _rest1177711785_)))
                                              (let ((_clause12003_
                                                     _hd1178211998_))
                                                (let ((_rest12005_
                                                       _tl1178312000_))
                                                  (_K1178111995_
                                                   _rest12005_
                                                   _clause12003_))))
                                            (_else1177911793_)))))))))
                      _lp11771_)
                    _clauses11769_
                    '()
                    '()
                    '()))))
            (let ((_case-lambda-clause-def11379_
                   (lambda (_id11765_ _impl11766_)
                     (gxc#xform-wrap-source
                      (cons '%#define-values
                            (cons (cons _id11765_ '()) (cons _impl11766_ '())))
                      _stx11374_))))
              (let ((_g1138411458_
                     (lambda (_g1138511455_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1138511455_))))
                (let ((_g1138311465_
                       (lambda (_g1138511461_) ((lambda () _stx11374_)))))
                  (let ((_g1138211601_
                         (lambda (_g1138511468_)
                           (if (gx#stx-pair? _g1138511468_)
                               (let ((_e1142111470_ (gx#stx-e _g1138511468_)))
                                 (let ((_hd1142211473_ (##car _e1142111470_))
                                       (_tl1142311475_ (##cdr _e1142111470_)))
                                   (if (gx#stx-pair? _tl1142311475_)
                                       (let ((_e1142411478_
                                              (gx#stx-e _tl1142311475_)))
                                         (let ((_hd1142511481_
                                                (##car _e1142411478_))
                                               (_tl1142611483_
                                                (##cdr _e1142411478_)))
                                           (if (gx#stx-pair? _hd1142511481_)
                                               (let ((_e1142711486_
                                                      (gx#stx-e
                                                       _hd1142511481_)))
                                                 (let ((_hd1142811489_
                                                        (##car _e1142711486_))
                                                       (_tl1142911491_
                                                        (##cdr _e1142711486_)))
                                                   (if (gx#stx-null?
                                                        _tl1142911491_)
                                                       (if (gx#stx-pair?
                                                            _tl1142611483_)
                                                           (let ((_e1143011494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1142611483_)))
                     (let ((_hd1143111497_ (##car _e1143011494_))
                           (_tl1143211499_ (##cdr _e1143011494_)))
                       (if (gx#stx-pair? _hd1143111497_)
                           (let ((_e1143311502_ (gx#stx-e _hd1143111497_)))
                             (let ((_hd1143411505_ (##car _e1143311502_))
                                   (_tl1143511507_ (##cdr _e1143311502_)))
                               (if (gx#identifier? _hd1143411505_)
                                   (if (gx#stx-eq?
                                        '%#let-values
                                        _hd1143411505_)
                                       (if (gx#stx-pair? _tl1143511507_)
                                           (let ((_e1143611510_
                                                  (gx#stx-e _tl1143511507_)))
                                             (let ((_hd1143711513_
                                                    (##car _e1143611510_))
                                                   (_tl1143811515_
                                                    (##cdr _e1143611510_)))
                                               (if (gx#stx-pair?
                                                    _hd1143711513_)
                                                   (let ((_e1143911518_
                                                          (gx#stx-e
                                                           _hd1143711513_)))
                                                     (let ((_hd1144011521_
                                                            (##car _e1143911518_))
                                                           (_tl1144111523_
                                                            (##cdr _e1143911518_)))
                                                       (if (gx#stx-pair?
                                                            _hd1144011521_)
                                                           (let ((_e1144211526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1144011521_)))
                     (let ((_hd1144311529_ (##car _e1144211526_))
                           (_tl1144411531_ (##cdr _e1144211526_)))
                       (if (gx#stx-pair? _hd1144311529_)
                           (let ((_e1144511534_ (gx#stx-e _hd1144311529_)))
                             (let ((_hd1144611537_ (##car _e1144511534_))
                                   (_tl1144711539_ (##cdr _e1144511534_)))
                               (if (gx#stx-null? _tl1144711539_)
                                   (if (gx#stx-pair? _tl1144411531_)
                                       (let ((_e1144811542_
                                              (gx#stx-e _tl1144411531_)))
                                         (let ((_hd1144911545_
                                                (##car _e1144811542_))
                                               (_tl1145011547_
                                                (##cdr _e1144811542_)))
                                           (if (gx#stx-null? _tl1145011547_)
                                               (if (gx#stx-null?
                                                    _tl1144111523_)
                                                   (if (gx#stx-pair?
                                                        _tl1143811515_)
                                                       (let ((_e1145111550_
                                                              (gx#stx-e
                                                               _tl1143811515_)))
                                                         (let ((_hd1145211553_
                                                                (##car _e1145111550_))
                                                               (_tl1145311555_
                                                                (##cdr _e1145111550_)))
                                                           (if (gx#stx-null?
                                                                _tl1145311555_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1143211499_)
                           ((lambda (_L11558_ _L11559_ _L11560_ _L11561_)
                              (if (if (gx#identifier? _L11561_)
                                      (if (gx#identifier? _L11560_)
                                          (if (_lambda-expr?11376_ _L11559_)
                                              (_case-lambda-expr?11377_
                                               _L11558_)
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_lambda-id11596_
                                         (make-symbol
                                          (gx#stx-e _L11561_)
                                          '"__"
                                          (gx#stx-e _L11560_))))
                                    (let ((_new-case-lambda-expr11598_
                                           (gxc#apply-expression-subst
                                            _L11558_
                                            _L11560_
                                            _lambda-id11596_)))
                                      (let ()
                                        (begin
                                          (gxc#verbose
                                           '"lift opt-lambda dispatch "
                                           (gxc#identifier-symbol _L11561_)
                                           '" => "
                                           _lambda-id11596_)
                                          (gx#core-bind-runtime!__0
                                           _lambda-id11596_)
                                          (gxc#xform-wrap-source
                                           (cons '%#begin
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#define-values
                                                              (cons (cons _lambda-id11596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons _L11559_ '())))
                _stx11374_)
               (cons (gxc#lift-top-lambda-define-values%
                      (gxc#xform-wrap-source
                       (cons '%#define-values
                             (cons (cons _L11561_ '())
                                   (cons _new-case-lambda-expr11598_ '())))
                       _stx11374_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx11374_)))))
                                  (_g1138311465_ _g1138511468_)))
                            _hd1145211553_
                            _hd1144911545_
                            _hd1144611537_
                            _hd1142811489_)
                           (_g1138311465_ _g1138511468_))
                       (_g1138311465_ _g1138511468_))))
               (_g1138311465_ _g1138511468_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1138311465_
                                                    _g1138511468_))
                                               (_g1138311465_ _g1138511468_))))
                                       (_g1138311465_ _g1138511468_))
                                   (_g1138311465_ _g1138511468_))))
                           (_g1138311465_ _g1138511468_))))
                   (_g1138311465_ _g1138511468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1138311465_
                                                    _g1138511468_))))
                                           (_g1138311465_ _g1138511468_))
                                       (_g1138311465_ _g1138511468_))
                                   (_g1138311465_ _g1138511468_))))
                           (_g1138311465_ _g1138511468_))))
                   (_g1138311465_ _g1138511468_))
               (_g1138311465_ _g1138511468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1138311465_ _g1138511468_))))
                                       (_g1138311465_ _g1138511468_))))
                               (_g1138311465_ _g1138511468_)))))
                    (let ((_g1138111698_
                           (lambda (_g1138511604_)
                             (if (gx#stx-pair? _g1138511604_)
                                 (let ((_e1140511606_
                                        (gx#stx-e _g1138511604_)))
                                   (let ((_hd1140611609_ (##car _e1140511606_))
                                         (_tl1140711611_
                                          (##cdr _e1140511606_)))
                                     (if (gx#stx-pair? _tl1140711611_)
                                         (let ((_e1140811614_
                                                (gx#stx-e _tl1140711611_)))
                                           (let ((_hd1140911617_
                                                  (##car _e1140811614_))
                                                 (_tl1141011619_
                                                  (##cdr _e1140811614_)))
                                             (if (gx#stx-pair? _hd1140911617_)
                                                 (let ((_e1141111622_
                                                        (gx#stx-e
                                                         _hd1140911617_)))
                                                   (let ((_hd1141211625_
                                                          (##car _e1141111622_))
                                                         (_tl1141311627_
                                                          (##cdr _e1141111622_)))
                                                     (if (gx#stx-null?
                                                          _tl1141311627_)
                                                         (if (gx#stx-pair?
                                                              _tl1141011619_)
                                                             (let ((_e1141411630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1141011619_)))
                       (let ((_hd1141511633_ (##car _e1141411630_))
                             (_tl1141611635_ (##cdr _e1141411630_)))
                         (if (gx#stx-null? _tl1141611635_)
                             ((lambda (_L11638_ _L11639_)
                                (if (if (gx#identifier? _L11639_)
                                        (_case-lambda-expr?11377_ _L11638_)
                                        '#f)
                                    (let ((_g1165511665_
                                           (lambda (_g1165611662_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1165611662_))))
                                      (let ((_g1165411695_
                                             (lambda (_g1165611668_)
                                               (if (gx#stx-pair? _g1165611668_)
                                                   (let ((_e1165811670_
                                                          (gx#stx-e
                                                           _g1165611668_)))
                                                     (let ((_hd1165911673_
                                                            (##car _e1165811670_))
                                                           (_tl1166011675_
                                                            (##cdr _e1165811670_)))
                                                       ((lambda (_L11678_)
                                                          (let ((_g14493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_lift-case-lambda-clauses11378_ _L11639_ _L11678_)))
                    (begin
                      (let ((_g14494_ (values-count _g14493_)))
                        (if (not (fx= _g14494_ 3))
                            (error "Context expects 3 values" _g14494_)))
                      (let ((_ids11688_ (values-ref _g14493_ 0))
                            (_impls11689_ (values-ref _g14493_ 1))
                            (_clauses11690_ (values-ref _g14493_ 2)))
                        (let ((_defs11692_
                               (map _case-lambda-clause-def11379_
                                    _ids11688_
                                    _impls11689_)))
                          (let ()
                            (begin
                              (gxc#verbose
                               '"lift case-lambda clauses "
                               (gxc#identifier-symbol _L11639_)
                               '" => "
                               _ids11688_)
                              (for-each gx#core-bind-runtime! _ids11688_)
                              (gxc#xform-wrap-source
                               (cons '%#begin
                                     (foldr cons
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons (cons _L11639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (gxc#xform-wrap-source
                              (cons '%#case-lambda _clauses11690_)
                              _L11638_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx11374_)
                                                  '())
                                            _defs11692_))
                               _stx11374_))))))))
                _tl1166011675_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1165511665_
                                                    _g1165611668_)))))
                                        (_g1165411695_ _L11638_)))
                                    (_g1138211601_ _g1138511604_)))
                              _hd1141511633_
                              _hd1141211625_)
                             (_g1138211601_ _g1138511604_))))
                     (_g1138211601_ _g1138511604_))
                 (_g1138211601_ _g1138511604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1138211601_
                                                  _g1138511604_))))
                                         (_g1138211601_ _g1138511604_))))
                                 (_g1138211601_ _g1138511604_)))))
                      (let ((_g1138011762_
                             (lambda (_g1138511701_)
                               (if (gx#stx-pair? _g1138511701_)
                                   (let ((_e1138811703_
                                          (gx#stx-e _g1138511701_)))
                                     (let ((_hd1138911706_
                                            (##car _e1138811703_))
                                           (_tl1139011708_
                                            (##cdr _e1138811703_)))
                                       (if (gx#stx-pair? _tl1139011708_)
                                           (let ((_e1139111711_
                                                  (gx#stx-e _tl1139011708_)))
                                             (let ((_hd1139211714_
                                                    (##car _e1139111711_))
                                                   (_tl1139311716_
                                                    (##cdr _e1139111711_)))
                                               (if (gx#stx-pair?
                                                    _hd1139211714_)
                                                   (let ((_e1139411719_
                                                          (gx#stx-e
                                                           _hd1139211714_)))
                                                     (let ((_hd1139511722_
                                                            (##car _e1139411719_))
                                                           (_tl1139611724_
                                                            (##cdr _e1139411719_)))
                                                       (if (gx#stx-null?
                                                            _tl1139611724_)
                                                           (if (gx#stx-pair?
                                                                _tl1139311716_)
                                                               (let ((_e1139711727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1139311716_)))
                         (let ((_hd1139811730_ (##car _e1139711727_))
                               (_tl1139911732_ (##cdr _e1139711727_)))
                           (if (gx#stx-pair? _hd1139811730_)
                               (let ((_e1140011735_ (gx#stx-e _hd1139811730_)))
                                 (let ((_hd1140111738_ (##car _e1140011735_))
                                       (_tl1140211740_ (##cdr _e1140011735_)))
                                   (if (gx#identifier? _hd1140111738_)
                                       (if (gx#stx-eq?
                                            '%#case-lambda
                                            _hd1140111738_)
                                           (if (gx#stx-null? _tl1139911732_)
                                               ((lambda (_L11743_ _L11744_)
                                                  (if (if (gx#identifier?
                                                           _L11744_)
                                                          (andmap gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11743_)
                  '#f)
              _stx11374_
              (_g1138111698_ _g1138511701_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1140211740_
                                                _hd1139511722_)
                                               (_g1138111698_ _g1138511701_))
                                           (_g1138111698_ _g1138511701_))
                                       (_g1138111698_ _g1138511701_))))
                               (_g1138111698_ _g1138511701_))))
                       (_g1138111698_ _g1138511701_))
                   (_g1138111698_ _g1138511701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1138111698_
                                                    _g1138511701_))))
                                           (_g1138111698_ _g1138511701_))))
                                   (_g1138111698_ _g1138511701_)))))
                        (_g1138011762_ _stx11374_))))))))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx11312_ _id11313_ _new-id11314_)
      (let ((_g1131711330_
             (lambda (_g1131811327_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1131811327_))))
        (let ((_g1131611337_
               (lambda (_g1131811333_) ((lambda () _stx11312_)))))
          (let ((_g1131511371_
                 (lambda (_g1131811340_)
                   (if (gx#stx-pair? _g1131811340_)
                       (let ((_e1132011342_ (gx#stx-e _g1131811340_)))
                         (let ((_hd1132111345_ (##car _e1132011342_))
                               (_tl1132211347_ (##cdr _e1132011342_)))
                           (if (gx#stx-pair? _tl1132211347_)
                               (let ((_e1132311350_ (gx#stx-e _tl1132211347_)))
                                 (let ((_hd1132411353_ (##car _e1132311350_))
                                       (_tl1132511355_ (##cdr _e1132311350_)))
                                   (if (gx#stx-null? _tl1132511355_)
                                       ((lambda (_L11358_)
                                          (if (gx#free-identifier=?
                                               _L11358_
                                               _id11313_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id11314_ '()))
                                               _stx11312_)
                                              (_g1131611337_ _g1131811340_)))
                                        _hd1132411353_)
                                       (_g1131611337_ _g1131811340_))))
                               (_g1131611337_ _g1131811340_))))
                       (_g1131611337_ _g1131811340_)))))
            (_g1131511371_ _stx11312_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx11217_)
      (let ((_g1122011240_
             (lambda (_g1122111237_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1122111237_))))
        (let ((_g1121911247_ (lambda (_g1122111243_) ((lambda () (void))))))
          (let ((_g1121811309_
                 (lambda (_g1122111250_)
                   (if (gx#stx-pair? _g1122111250_)
                       (let ((_e1122411252_ (gx#stx-e _g1122111250_)))
                         (let ((_hd1122511255_ (##car _e1122411252_))
                               (_tl1122611257_ (##cdr _e1122411252_)))
                           (if (gx#stx-pair? _tl1122611257_)
                               (let ((_e1122711260_ (gx#stx-e _tl1122611257_)))
                                 (let ((_hd1122811263_ (##car _e1122711260_))
                                       (_tl1122911265_ (##cdr _e1122711260_)))
                                   (if (gx#stx-pair? _hd1122811263_)
                                       (let ((_e1123011268_
                                              (gx#stx-e _hd1122811263_)))
                                         (let ((_hd1123111271_
                                                (##car _e1123011268_))
                                               (_tl1123211273_
                                                (##cdr _e1123011268_)))
                                           (if (gx#stx-null? _tl1123211273_)
                                               (if (gx#stx-pair?
                                                    _tl1122911265_)
                                                   (let ((_e1123311276_
                                                          (gx#stx-e
                                                           _tl1122911265_)))
                                                     (let ((_hd1123411279_
                                                            (##car _e1123311276_))
                                                           (_tl1123511281_
                                                            (##cdr _e1123311276_)))
                                                       (if (gx#stx-null?
                                                            _tl1123511281_)
                                                           ((lambda (_L11284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L11285_)
                      (let ((_type1130211304_
                             (gxc#apply-basic-expression-type _L11284_)))
                        (if _type1130211304_
                            (let ((_type11307_ _type1130211304_))
                              (gxc#optimizer-declare-type!
                               (gxc#identifier-symbol _L11285_)
                               _type11307_))
                            '#f)))
                    _hd1123411279_
                    _hd1123111271_)
                   (_g1121911247_ _g1122111250_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1121911247_
                                                    _g1122111250_))
                                               (_g1121911247_ _g1122111250_))))
                                       (_g1121911247_ _g1122111250_))))
                               (_g1121911247_ _g1122111250_))))
                       (_g1121911247_ _g1122111250_)))))
            (_g1121811309_ _stx11217_))))))
  (define gxc#collect-type-call%
    (lambda (_stx10771_)
      (let ((_g1077510877_
             (lambda (_g1077610874_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1077610874_))))
        (let ((_g1077410884_ (lambda (_g1077610880_) ((lambda () (void))))))
          (let ((_g1077311034_
                 (lambda (_g1077610887_)
                   (if (gx#stx-pair? _g1077610887_)
                       (let ((_e1083410889_ (gx#stx-e _g1077610887_)))
                         (let ((_hd1083510892_ (##car _e1083410889_))
                               (_tl1083610894_ (##cdr _e1083410889_)))
                           (if (gx#stx-pair? _tl1083610894_)
                               (let ((_e1083710897_ (gx#stx-e _tl1083610894_)))
                                 (let ((_hd1083810900_ (##car _e1083710897_))
                                       (_tl1083910902_ (##cdr _e1083710897_)))
                                   (if (gx#stx-pair? _hd1083810900_)
                                       (let ((_e1084010905_
                                              (gx#stx-e _hd1083810900_)))
                                         (let ((_hd1084110908_
                                                (##car _e1084010905_))
                                               (_tl1084210910_
                                                (##cdr _e1084010905_)))
                                           (if (gx#identifier? _hd1084110908_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1084110908_)
                                                   (if (gx#stx-pair?
                                                        _tl1084210910_)
                                                       (let ((_e1084310913_
                                                              (gx#stx-e
                                                               _tl1084210910_)))
                                                         (let ((_hd1084410916_
                                                                (##car _e1084310913_))
                                                               (_tl1084510918_
                                                                (##cdr _e1084310913_)))
                                                           (if (gx#stx-null?
                                                                _tl1084510918_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1083910902_)
                           (let ((_e1084610921_ (gx#stx-e _tl1083910902_)))
                             (let ((_hd1084710924_ (##car _e1084610921_))
                                   (_tl1084810926_ (##cdr _e1084610921_)))
                               (if (gx#stx-pair? _hd1084710924_)
                                   (let ((_e1084910929_
                                          (gx#stx-e _hd1084710924_)))
                                     (let ((_hd1085010932_
                                            (##car _e1084910929_))
                                           (_tl1085110934_
                                            (##cdr _e1084910929_)))
                                       (if (gx#identifier? _hd1085010932_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1085010932_)
                                               (if (gx#stx-pair?
                                                    _tl1085110934_)
                                                   (let ((_e1085210937_
                                                          (gx#stx-e
                                                           _tl1085110934_)))
                                                     (let ((_hd1085310940_
                                                            (##car _e1085210937_))
                                                           (_tl1085410942_
                                                            (##cdr _e1085210937_)))
                                                       (if (gx#stx-null?
                                                            _tl1085410942_)
                                                           (if (gx#stx-pair?
                                                                _tl1084810926_)
                                                               (let ((_e1085510945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1084810926_)))
                         (let ((_hd1085610948_ (##car _e1085510945_))
                               (_tl1085710950_ (##cdr _e1085510945_)))
                           (if (gx#stx-pair? _hd1085610948_)
                               (let ((_e1085810953_ (gx#stx-e _hd1085610948_)))
                                 (let ((_hd1085910956_ (##car _e1085810953_))
                                       (_tl1086010958_ (##cdr _e1085810953_)))
                                   (if (gx#identifier? _hd1085910956_)
                                       (if (gx#stx-eq? '%#quote _hd1085910956_)
                                           (if (gx#stx-pair? _tl1086010958_)
                                               (let ((_e1086110961_
                                                      (gx#stx-e
                                                       _tl1086010958_)))
                                                 (let ((_hd1086210964_
                                                        (##car _e1086110961_))
                                                       (_tl1086310966_
                                                        (##cdr _e1086110961_)))
                                                   (if (gx#stx-null?
                                                        _tl1086310966_)
                                                       (if (gx#stx-pair?
                                                            _tl1085710950_)
                                                           (let ((_e1086410969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1085710950_)))
                     (let ((_hd1086510972_ (##car _e1086410969_))
                           (_tl1086610974_ (##cdr _e1086410969_)))
                       (if (gx#stx-pair? _hd1086510972_)
                           (let ((_e1086710977_ (gx#stx-e _hd1086510972_)))
                             (let ((_hd1086810980_ (##car _e1086710977_))
                                   (_tl1086910982_ (##cdr _e1086710977_)))
                               (if (gx#identifier? _hd1086810980_)
                                   (if (gx#stx-eq? '%#ref _hd1086810980_)
                                       (if (gx#stx-pair? _tl1086910982_)
                                           (let ((_e1087010985_
                                                  (gx#stx-e _tl1086910982_)))
                                             (let ((_hd1087110988_
                                                    (##car _e1087010985_))
                                                   (_tl1087210990_
                                                    (##cdr _e1087010985_)))
                                               (if (gx#stx-null?
                                                    _tl1087210990_)
                                                   (if (gx#stx-null?
                                                        _tl1086610974_)
                                                       ((lambda (_L10993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10994_
                         _L10995_
                         _L10996_)
                  (if (eq? (gxc#identifier-symbol
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda14290
                       (gxc#identifier-symbol _L10995_)
                       (gx#stx-e _L10994_)
                       (gxc#identifier-symbol _L10993_)
                       '#f)
                      (_g1077410884_ _g1077610887_)))
                _hd1087110988_
                _hd1086210964_
                _hd1085310940_
                _hd1084410916_)
               (_g1077410884_ _g1077610887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1077410884_
                                                    _g1077610887_))))
                                           (_g1077410884_ _g1077610887_))
                                       (_g1077410884_ _g1077610887_))
                                   (_g1077410884_ _g1077610887_))))
                           (_g1077410884_ _g1077610887_))))
                   (_g1077410884_ _g1077610887_))
               (_g1077410884_ _g1077610887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1077410884_ _g1077610887_))
                                           (_g1077410884_ _g1077610887_))
                                       (_g1077410884_ _g1077610887_))))
                               (_g1077410884_ _g1077610887_))))
                       (_g1077410884_ _g1077610887_))
                   (_g1077410884_ _g1077610887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1077410884_
                                                    _g1077610887_))
                                               (_g1077410884_ _g1077610887_))
                                           (_g1077410884_ _g1077610887_))))
                                   (_g1077410884_ _g1077610887_))))
                           (_g1077410884_ _g1077610887_))
                       (_g1077410884_ _g1077610887_))))
               (_g1077410884_ _g1077610887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1077410884_
                                                    _g1077610887_))
                                               (_g1077410884_ _g1077610887_))))
                                       (_g1077410884_ _g1077610887_))))
                               (_g1077410884_ _g1077610887_))))
                       (_g1077410884_ _g1077610887_)))))
            (let ((_g1077211214_
                   (lambda (_g1077611037_)
                     (if (gx#stx-pair? _g1077611037_)
                         (let ((_e1078211039_ (gx#stx-e _g1077611037_)))
                           (let ((_hd1078311042_ (##car _e1078211039_))
                                 (_tl1078411044_ (##cdr _e1078211039_)))
                             (if (gx#stx-pair? _tl1078411044_)
                                 (let ((_e1078511047_
                                        (gx#stx-e _tl1078411044_)))
                                   (let ((_hd1078611050_ (##car _e1078511047_))
                                         (_tl1078711052_
                                          (##cdr _e1078511047_)))
                                     (if (gx#stx-pair? _hd1078611050_)
                                         (let ((_e1078811055_
                                                (gx#stx-e _hd1078611050_)))
                                           (let ((_hd1078911058_
                                                  (##car _e1078811055_))
                                                 (_tl1079011060_
                                                  (##cdr _e1078811055_)))
                                             (if (gx#identifier?
                                                  _hd1078911058_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1078911058_)
                                                     (if (gx#stx-pair?
                                                          _tl1079011060_)
                                                         (let ((_e1079111063_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1079011060_)))
                   (let ((_hd1079211066_ (##car _e1079111063_))
                         (_tl1079311068_ (##cdr _e1079111063_)))
                     (if (gx#stx-null? _tl1079311068_)
                         (if (gx#stx-pair? _tl1078711052_)
                             (let ((_e1079411071_ (gx#stx-e _tl1078711052_)))
                               (let ((_hd1079511074_ (##car _e1079411071_))
                                     (_tl1079611076_ (##cdr _e1079411071_)))
                                 (if (gx#stx-pair? _hd1079511074_)
                                     (let ((_e1079711079_
                                            (gx#stx-e _hd1079511074_)))
                                       (let ((_hd1079811082_
                                              (##car _e1079711079_))
                                             (_tl1079911084_
                                              (##cdr _e1079711079_)))
                                         (if (gx#identifier? _hd1079811082_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1079811082_)
                                                 (if (gx#stx-pair?
                                                      _tl1079911084_)
                                                     (let ((_e1080011087_
                                                            (gx#stx-e
                                                             _tl1079911084_)))
                                                       (let ((_hd1080111090_
                                                              (##car _e1080011087_))
                                                             (_tl1080211092_
                                                              (##cdr _e1080011087_)))
                                                         (if (gx#stx-null?
                                                              _tl1080211092_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1079611076_)
                         (let ((_e1080311095_ (gx#stx-e _tl1079611076_)))
                           (let ((_hd1080411098_ (##car _e1080311095_))
                                 (_tl1080511100_ (##cdr _e1080311095_)))
                             (if (gx#stx-pair? _hd1080411098_)
                                 (let ((_e1080611103_
                                        (gx#stx-e _hd1080411098_)))
                                   (let ((_hd1080711106_ (##car _e1080611103_))
                                         (_tl1080811108_
                                          (##cdr _e1080611103_)))
                                     (if (gx#identifier? _hd1080711106_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1080711106_)
                                             (if (gx#stx-pair? _tl1080811108_)
                                                 (let ((_e1080911111_
                                                        (gx#stx-e
                                                         _tl1080811108_)))
                                                   (let ((_hd1081011114_
                                                          (##car _e1080911111_))
                                                         (_tl1081111116_
                                                          (##cdr _e1080911111_)))
                                                     (if (gx#stx-null?
                                                          _tl1081111116_)
                                                         (if (gx#stx-pair?
                                                              _tl1080511100_)
                                                             (let ((_e1081211119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1080511100_)))
                       (let ((_hd1081311122_ (##car _e1081211119_))
                             (_tl1081411124_ (##cdr _e1081211119_)))
                         (if (gx#stx-pair? _hd1081311122_)
                             (let ((_e1081511127_ (gx#stx-e _hd1081311122_)))
                               (let ((_hd1081611130_ (##car _e1081511127_))
                                     (_tl1081711132_ (##cdr _e1081511127_)))
                                 (if (gx#identifier? _hd1081611130_)
                                     (if (gx#stx-eq? '%#ref _hd1081611130_)
                                         (if (gx#stx-pair? _tl1081711132_)
                                             (let ((_e1081811135_
                                                    (gx#stx-e _tl1081711132_)))
                                               (let ((_hd1081911138_
                                                      (##car _e1081811135_))
                                                     (_tl1082011140_
                                                      (##cdr _e1081811135_)))
                                                 (if (gx#stx-null?
                                                      _tl1082011140_)
                                                     (if (gx#stx-pair?
                                                          _tl1081411124_)
                                                         (let ((_e1082111143_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1081411124_)))
                   (let ((_hd1082211146_ (##car _e1082111143_))
                         (_tl1082311148_ (##cdr _e1082111143_)))
                     (if (gx#stx-pair? _hd1082211146_)
                         (let ((_e1082411151_ (gx#stx-e _hd1082211146_)))
                           (let ((_hd1082511154_ (##car _e1082411151_))
                                 (_tl1082611156_ (##cdr _e1082411151_)))
                             (if (gx#identifier? _hd1082511154_)
                                 (if (gx#stx-eq? '%#quote _hd1082511154_)
                                     (if (gx#stx-pair? _tl1082611156_)
                                         (let ((_e1082711159_
                                                (gx#stx-e _tl1082611156_)))
                                           (let ((_hd1082811162_
                                                  (##car _e1082711159_))
                                                 (_tl1082911164_
                                                  (##cdr _e1082711159_)))
                                             (if (gx#stx-null? _tl1082911164_)
                                                 (if (gx#stx-null?
                                                      _tl1082311148_)
                                                     ((lambda (_L11167_
                                                               _L11168_
                                                               _L11169_
                                                               _L11170_
                                                               _L11171_)
                                                        (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11171_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda14290
                     (gxc#identifier-symbol _L11170_)
                     (gx#stx-e _L11169_)
                     (gxc#identifier-symbol _L11168_)
                     (gx#stx-e _L11167_))
                    (_g1077311034_ _g1077611037_)))
              _hd1082811162_
              _hd1081911138_
              _hd1081011114_
              _hd1080111090_
              _hd1079211066_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1077311034_
                                                      _g1077611037_))
                                                 (_g1077311034_
                                                  _g1077611037_))))
                                         (_g1077311034_ _g1077611037_))
                                     (_g1077311034_ _g1077611037_))
                                 (_g1077311034_ _g1077611037_))))
                         (_g1077311034_ _g1077611037_))))
                 (_g1077311034_ _g1077611037_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1077311034_
                                                      _g1077611037_))))
                                             (_g1077311034_ _g1077611037_))
                                         (_g1077311034_ _g1077611037_))
                                     (_g1077311034_ _g1077611037_))))
                             (_g1077311034_ _g1077611037_))))
                     (_g1077311034_ _g1077611037_))
                 (_g1077311034_ _g1077611037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1077311034_ _g1077611037_))
                                             (_g1077311034_ _g1077611037_))
                                         (_g1077311034_ _g1077611037_))))
                                 (_g1077311034_ _g1077611037_))))
                         (_g1077311034_ _g1077611037_))
                     (_g1077311034_ _g1077611037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1077311034_
                                                      _g1077611037_))
                                                 (_g1077311034_ _g1077611037_))
                                             (_g1077311034_ _g1077611037_))))
                                     (_g1077311034_ _g1077611037_))))
                             (_g1077311034_ _g1077611037_))
                         (_g1077311034_ _g1077611037_))))
                 (_g1077311034_ _g1077611037_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1077311034_
                                                      _g1077611037_))
                                                 (_g1077311034_
                                                  _g1077611037_))))
                                         (_g1077311034_ _g1077611037_))))
                                 (_g1077311034_ _g1077611037_))))
                         (_g1077311034_ _g1077611037_)))))
              (_g1077211214_ _stx10771_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx10711_)
      (let ((_g1071410727_
             (lambda (_g1071510724_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1071510724_))))
        (let ((_g1071310734_ (lambda (_g1071510730_) ((lambda () '#f)))))
          (let ((_g1071210768_
                 (lambda (_g1071510737_)
                   (if (gx#stx-pair? _g1071510737_)
                       (let ((_e1071710739_ (gx#stx-e _g1071510737_)))
                         (let ((_hd1071810742_ (##car _e1071710739_))
                               (_tl1071910744_ (##cdr _e1071710739_)))
                           (if (gx#stx-pair? _tl1071910744_)
                               (let ((_e1072010747_ (gx#stx-e _tl1071910744_)))
                                 (let ((_hd1072110750_ (##car _e1072010747_))
                                       (_tl1072210752_ (##cdr _e1072010747_)))
                                   (if (gx#stx-null? _tl1072210752_)
                                       ((lambda (_L10755_)
                                          (gxc#compile-e _L10755_))
                                        _hd1072110750_)
                                       (_g1071310734_ _g1071510737_))))
                               (_g1071310734_ _g1071510737_))))
                       (_g1071310734_ _g1071510737_)))))
            (_g1071210768_ _stx10711_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx10136_)
      (let ((_g1014110262_
             (lambda (_g1014210259_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1014210259_))))
        (let ((_g1014010269_ (lambda (_g1014210265_) ((lambda () '#f)))))
          (let ((_g1013910293_
                 (lambda (_g1014210272_)
                   (if (gx#stx-pair? _g1014210272_)
                       (let ((_e1025510274_ (gx#stx-e _g1014210272_)))
                         (let ((_hd1025610277_ (##car _e1025510274_))
                               (_tl1025710279_ (##cdr _e1025510274_)))
                           ((lambda (_L10282_)
                              (if (gxc#dispatch-lambda-form? _L10282_)
                                  (##structure
                                   gxc#!lambda::t
                                   'lambda
                                   (gxc#lambda-form-arity _L10282_)
                                   (gxc#dispatch-lambda-form-delegate
                                    _L10282_))
                                  (_g1014010269_ _g1014210272_)))
                            _tl1025710279_)))
                       (_g1014010269_ _g1014210272_)))))
            (let ((_g1013810523_
                   (lambda (_g1014210296_)
                     (if (gx#stx-pair? _g1014210296_)
                         (let ((_e1020010298_ (gx#stx-e _g1014210296_)))
                           (let ((_hd1020110301_ (##car _e1020010298_))
                                 (_tl1020210303_ (##cdr _e1020010298_)))
                             (if (gx#stx-pair? _tl1020210303_)
                                 (let ((_e1020310306_
                                        (gx#stx-e _tl1020210303_)))
                                   (let ((_hd1020410309_ (##car _e1020310306_))
                                         (_tl1020510311_
                                          (##cdr _e1020310306_)))
                                     (if (gx#stx-pair/null? _hd1020410309_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1020410309_)
                                                   '0)
                                             (let ((_g14499_
                                                    (gx#syntax-split-splice
                                                     _hd1020410309_
                                                     '0)))
                                               (begin
                                                 (let ((_g14500_
                                                        (values-count
                                                         _g14499_)))
                                                   (if (not (fx= _g14500_ 2))
                                                       (error "Context expects 2 values"
                                                              _g14500_)))
                                                 (let ((_target1020610314_
                                                        (values-ref
                                                         _g14499_
                                                         0))
                                                       (_tl1020810316_
                                                        (values-ref
                                                         _g14499_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1020810316_)
                                                       (letrec ((_loop1020910319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1020710322_ _arg1021310324_)
                           (if (gx#stx-pair? _hd1020710322_)
                               (let ((_e1021010327_ (gx#stx-e _hd1020710322_)))
                                 (let ((_lp-hd1021110330_
                                        (##car _e1021010327_))
                                       (_lp-tl1021210332_
                                        (##cdr _e1021010327_)))
                                   (_loop1020910319_
                                    _lp-tl1021210332_
                                    (cons _lp-hd1021110330_ _arg1021310324_))))
                               (let ((_arg1021410335_
                                      (reverse _arg1021310324_)))
                                 (if (gx#stx-pair? _tl1020510311_)
                                     (let ((_e1021510338_
                                            (gx#stx-e _tl1020510311_)))
                                       (let ((_hd1021610341_
                                              (##car _e1021510338_))
                                             (_tl1021710343_
                                              (##cdr _e1021510338_)))
                                         (if (gx#stx-pair? _hd1021610341_)
                                             (let ((_e1021810346_
                                                    (gx#stx-e _hd1021610341_)))
                                               (let ((_hd1021910349_
                                                      (##car _e1021810346_))
                                                     (_tl1022010351_
                                                      (##cdr _e1021810346_)))
                                                 (if (gx#identifier?
                                                      _hd1021910349_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1021910349_)
                                                         (if (gx#stx-pair?
                                                              _tl1022010351_)
                                                             (let ((_e1022110354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1022010351_)))
                       (let ((_hd1022210357_ (##car _e1022110354_))
                             (_tl1022310359_ (##cdr _e1022110354_)))
                         (if (gx#stx-pair? _hd1022210357_)
                             (let ((_e1022410362_ (gx#stx-e _hd1022210357_)))
                               (let ((_hd1022510365_ (##car _e1022410362_))
                                     (_tl1022610367_ (##cdr _e1022410362_)))
                                 (if (gx#identifier? _hd1022510365_)
                                     (if (gx#stx-eq? '%#ref _hd1022510365_)
                                         (if (gx#stx-pair? _tl1022610367_)
                                             (let ((_e1022710370_
                                                    (gx#stx-e _tl1022610367_)))
                                               (let ((_hd1022810373_
                                                      (##car _e1022710370_))
                                                     (_tl1022910375_
                                                      (##cdr _e1022710370_)))
                                                 (if (gx#stx-null?
                                                      _tl1022910375_)
                                                     (if (gx#stx-pair?
                                                          _tl1022310359_)
                                                         (let ((_e1023010378_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1022310359_)))
                   (let ((_hd1023110381_ (##car _e1023010378_))
                         (_tl1023210383_ (##cdr _e1023010378_)))
                     (if (gx#stx-pair? _hd1023110381_)
                         (let ((_e1023310386_ (gx#stx-e _hd1023110381_)))
                           (let ((_hd1023410389_ (##car _e1023310386_))
                                 (_tl1023510391_ (##cdr _e1023310386_)))
                             (if (gx#identifier? _hd1023410389_)
                                 (if (gx#stx-eq? '%#ref _hd1023410389_)
                                     (if (gx#stx-pair? _tl1023510391_)
                                         (let ((_e1023610394_
                                                (gx#stx-e _tl1023510391_)))
                                           (let ((_hd1023710397_
                                                  (##car _e1023610394_))
                                                 (_tl1023810399_
                                                  (##cdr _e1023610394_)))
                                             (if (gx#stx-null? _tl1023810399_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1023210383_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1023210383_)
                                                               '0)
                                                         (let ((_g14501_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1023210383_
                         '0)))
                   (begin
                     (let ((_g14502_ (values-count _g14501_)))
                       (if (not (fx= _g14502_ 2))
                           (error "Context expects 2 values" _g14502_)))
                     (let ((_target1023910402_ (values-ref _g14501_ 0))
                           (_tl1024110404_ (values-ref _g14501_ 1)))
                       (if (gx#stx-null? _tl1024110404_)
                           (letrec ((_loop1024210407_
                                     (lambda (_hd1024010410_ _xarg1024610412_)
                                       (if (gx#stx-pair? _hd1024010410_)
                                           (let ((_e1024310415_
                                                  (gx#stx-e _hd1024010410_)))
                                             (let ((_lp-hd1024410418_
                                                    (##car _e1024310415_))
                                                   (_lp-tl1024510420_
                                                    (##cdr _e1024310415_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1024410418_)
                                                   (let ((_e1024810423_
                                                          (gx#stx-e
                                                           _lp-hd1024410418_)))
                                                     (let ((_hd1024910426_
                                                            (##car _e1024810423_))
                                                           (_tl1025010428_
                                                            (##cdr _e1024810423_)))
                                                       (if (gx#identifier?
                                                            _hd1024910426_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1024910426_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1025010428_)
                           (let ((_e1025110431_ (gx#stx-e _tl1025010428_)))
                             (let ((_hd1025210434_ (##car _e1025110431_))
                                   (_tl1025310436_ (##cdr _e1025110431_)))
                               (if (gx#stx-null? _tl1025310436_)
                                   (_loop1024210407_
                                    _lp-tl1024510420_
                                    (cons _hd1025210434_ _xarg1024610412_))
                                   (_g1013910293_ _g1014210296_))))
                           (_g1013910293_ _g1014210296_))
                       (_g1013910293_ _g1014210296_))
                   (_g1013910293_ _g1014210296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1013910293_
                                                    _g1014210296_))))
                                           (let ((_xarg1024710439_
                                                  (reverse _xarg1024610412_)))
                                             (if (gx#stx-null? _tl1021710343_)
                                                 ((lambda (_L10442_
                                                           _L10443_
                                                           _L10444_
                                                           _L10445_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1048210485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1048310487_)
                                (cons _g1048210485_ _g1048310487_))
                              '()
                              _L10445_)))
                    (if (eq? (gxc#identifier-symbol _L10444_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr (lambda (_g1048910492_
                                                           _g1049010494_)
                                                    (cons _g1048910492_
                                                          _g1049010494_))
                                                  '()
                                                  _L10445_)))
                                 (length (begin
                                           '#!void
                                           (foldr (lambda (_g1049610499_
                                                           _g1049710501_)
                                                    (cons _g1049610499_
                                                          _g1049710501_))
                                                  '()
                                                  _L10442_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1050310506_
                                                      _g1050410508_)
                                               (cons _g1050310506_
                                                     _g1050410508_))
                                             '()
                                             _L10445_))
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1051010513_
                                                      _g1051110515_)
                                               (cons _g1051010513_
                                                     _g1051110515_))
                                             '()
                                             _L10442_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t10518_ (gxc#identifier-symbol _L10443_)))
                  (let ((_type10520_
                         (gxc#optimizer-resolve-type _type-t10518_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type10520_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t10518_)
                          '#f))))
                (_g1013910293_ _g1014210296_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1024710439_
                                                  _hd1023710397_
                                                  _hd1022810373_
                                                  _arg1021410335_)
                                                 (_g1013910293_
                                                  _g1014210296_)))))))
                             (_loop1024210407_ _target1023910402_ '()))
                           (_g1013910293_ _g1014210296_)))))
                 (_g1013910293_ _g1014210296_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1013910293_
                                                      _g1014210296_))
                                                 (_g1013910293_
                                                  _g1014210296_))))
                                         (_g1013910293_ _g1014210296_))
                                     (_g1013910293_ _g1014210296_))
                                 (_g1013910293_ _g1014210296_))))
                         (_g1013910293_ _g1014210296_))))
                 (_g1013910293_ _g1014210296_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1013910293_
                                                      _g1014210296_))))
                                             (_g1013910293_ _g1014210296_))
                                         (_g1013910293_ _g1014210296_))
                                     (_g1013910293_ _g1014210296_))))
                             (_g1013910293_ _g1014210296_))))
                     (_g1013910293_ _g1014210296_))
                 (_g1013910293_ _g1014210296_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1013910293_
                                                      _g1014210296_))))
                                             (_g1013910293_ _g1014210296_))))
                                     (_g1013910293_ _g1014210296_)))))))
                 (_loop1020910319_ _target1020610314_ '()))
               (_g1013910293_ _g1014210296_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1013910293_ _g1014210296_))
                                         (_g1013910293_ _g1014210296_))))
                                 (_g1013910293_ _g1014210296_))))
                         (_g1013910293_ _g1014210296_)))))
              (let ((_g1013710708_
                     (lambda (_g1014210526_)
                       (if (gx#stx-pair? _g1014210526_)
                           (let ((_e1014810528_ (gx#stx-e _g1014210526_)))
                             (let ((_hd1014910531_ (##car _e1014810528_))
                                   (_tl1015010533_ (##cdr _e1014810528_)))
                               (if (gx#stx-pair? _tl1015010533_)
                                   (let ((_e1015110536_
                                          (gx#stx-e _tl1015010533_)))
                                     (let ((_hd1015210539_
                                            (##car _e1015110536_))
                                           (_tl1015310541_
                                            (##cdr _e1015110536_)))
                                       (if (gx#stx-pair? _tl1015310541_)
                                           (let ((_e1015410544_
                                                  (gx#stx-e _tl1015310541_)))
                                             (let ((_hd1015510547_
                                                    (##car _e1015410544_))
                                                   (_tl1015610549_
                                                    (##cdr _e1015410544_)))
                                               (if (gx#stx-pair?
                                                    _hd1015510547_)
                                                   (let ((_e1015710552_
                                                          (gx#stx-e
                                                           _hd1015510547_)))
                                                     (let ((_hd1015810555_
                                                            (##car _e1015710552_))
                                                           (_tl1015910557_
                                                            (##cdr _e1015710552_)))
                                                       (if (gx#identifier?
                                                            _hd1015810555_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1015810555_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1015910557_)
                           (let ((_e1016010560_ (gx#stx-e _tl1015910557_)))
                             (let ((_hd1016110563_ (##car _e1016010560_))
                                   (_tl1016210565_ (##cdr _e1016010560_)))
                               (if (gx#stx-pair? _hd1016110563_)
                                   (let ((_e1016310568_
                                          (gx#stx-e _hd1016110563_)))
                                     (let ((_hd1016410571_
                                            (##car _e1016310568_))
                                           (_tl1016510573_
                                            (##cdr _e1016310568_)))
                                       (if (gx#identifier? _hd1016410571_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1016410571_)
                                               (if (gx#stx-pair?
                                                    _tl1016510573_)
                                                   (let ((_e1016610576_
                                                          (gx#stx-e
                                                           _tl1016510573_)))
                                                     (let ((_hd1016710579_
                                                            (##car _e1016610576_))
                                                           (_tl1016810581_
                                                            (##cdr _e1016610576_)))
                                                       (if (gx#stx-null?
                                                            _tl1016810581_)
                                                           (if (gx#stx-pair?
                                                                _tl1016210565_)
                                                               (let ((_e1016910584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1016210565_)))
                         (let ((_hd1017010587_ (##car _e1016910584_))
                               (_tl1017110589_ (##cdr _e1016910584_)))
                           (if (gx#stx-pair? _hd1017010587_)
                               (let ((_e1017210592_ (gx#stx-e _hd1017010587_)))
                                 (let ((_hd1017310595_ (##car _e1017210592_))
                                       (_tl1017410597_ (##cdr _e1017210592_)))
                                   (if (gx#identifier? _hd1017310595_)
                                       (if (gx#stx-eq? '%#ref _hd1017310595_)
                                           (if (gx#stx-pair? _tl1017410597_)
                                               (let ((_e1017510600_
                                                      (gx#stx-e
                                                       _tl1017410597_)))
                                                 (let ((_hd1017610603_
                                                        (##car _e1017510600_))
                                                       (_tl1017710605_
                                                        (##cdr _e1017510600_)))
                                                   (if (gx#stx-null?
                                                        _tl1017710605_)
                                                       (if (gx#stx-pair?
                                                            _tl1017110589_)
                                                           (let ((_e1017810608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1017110589_)))
                     (let ((_hd1017910611_ (##car _e1017810608_))
                           (_tl1018010613_ (##cdr _e1017810608_)))
                       (if (gx#stx-pair? _hd1017910611_)
                           (let ((_e1018110616_ (gx#stx-e _hd1017910611_)))
                             (let ((_hd1018210619_ (##car _e1018110616_))
                                   (_tl1018310621_ (##cdr _e1018110616_)))
                               (if (gx#identifier? _hd1018210619_)
                                   (if (gx#stx-eq? '%#ref _hd1018210619_)
                                       (if (gx#stx-pair? _tl1018310621_)
                                           (let ((_e1018410624_
                                                  (gx#stx-e _tl1018310621_)))
                                             (let ((_hd1018510627_
                                                    (##car _e1018410624_))
                                                   (_tl1018610629_
                                                    (##cdr _e1018410624_)))
                                               (if (gx#stx-null?
                                                    _tl1018610629_)
                                                   (if (gx#stx-pair?
                                                        _tl1018010613_)
                                                       (let ((_e1018710632_
                                                              (gx#stx-e
                                                               _tl1018010613_)))
                                                         (let ((_hd1018810635_
                                                                (##car _e1018710632_))
                                                               (_tl1018910637_
                                                                (##cdr _e1018710632_)))
                                                           (if (gx#stx-pair?
                                                                _hd1018810635_)
                                                               (let ((_e1019010640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1018810635_)))
                         (let ((_hd1019110643_ (##car _e1019010640_))
                               (_tl1019210645_ (##cdr _e1019010640_)))
                           (if (gx#identifier? _hd1019110643_)
                               (if (gx#stx-eq? '%#ref _hd1019110643_)
                                   (if (gx#stx-pair? _tl1019210645_)
                                       (let ((_e1019310648_
                                              (gx#stx-e _tl1019210645_)))
                                         (let ((_hd1019410651_
                                                (##car _e1019310648_))
                                               (_tl1019510653_
                                                (##cdr _e1019310648_)))
                                           (if (gx#stx-null? _tl1019510653_)
                                               (if (gx#stx-null?
                                                    _tl1018910637_)
                                                   (if (gx#stx-null?
                                                        _tl1015610549_)
                                                       ((lambda (_L10656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10657_
                         _L10658_
                         _L10659_
                         _L10660_)
                  (if (if (gx#identifier? _L10660_)
                          (if (eq? (gxc#identifier-symbol _L10659_) 'apply)
                              (if (eq? (gxc#identifier-symbol _L10658_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L10660_ _L10656_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t10703_ (gxc#identifier-symbol _L10657_)))
                        (let ((_type10705_
                               (gxc#optimizer-resolve-type _type-t10703_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type10705_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t10703_)
                                '#f))))
                      (_g1013810523_ _g1014210526_)))
                _hd1019410651_
                _hd1018510627_
                _hd1017610603_
                _hd1016710579_
                _hd1015210539_)
               (_g1013810523_ _g1014210526_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1013810523_
                                                    _g1014210526_))
                                               (_g1013810523_ _g1014210526_))))
                                       (_g1013810523_ _g1014210526_))
                                   (_g1013810523_ _g1014210526_))
                               (_g1013810523_ _g1014210526_))))
                       (_g1013810523_ _g1014210526_))))
               (_g1013810523_ _g1014210526_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1013810523_
                                                    _g1014210526_))))
                                           (_g1013810523_ _g1014210526_))
                                       (_g1013810523_ _g1014210526_))
                                   (_g1013810523_ _g1014210526_))))
                           (_g1013810523_ _g1014210526_))))
                   (_g1013810523_ _g1014210526_))
               (_g1013810523_ _g1014210526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1013810523_ _g1014210526_))
                                           (_g1013810523_ _g1014210526_))
                                       (_g1013810523_ _g1014210526_))))
                               (_g1013810523_ _g1014210526_))))
                       (_g1013810523_ _g1014210526_))
                   (_g1013810523_ _g1014210526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1013810523_
                                                    _g1014210526_))
                                               (_g1013810523_ _g1014210526_))
                                           (_g1013810523_ _g1014210526_))))
                                   (_g1013810523_ _g1014210526_))))
                           (_g1013810523_ _g1014210526_))
                       (_g1013810523_ _g1014210526_))
                   (_g1013810523_ _g1014210526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1013810523_
                                                    _g1014210526_))))
                                           (_g1013810523_ _g1014210526_))))
                                   (_g1013810523_ _g1014210526_))))
                           (_g1013810523_ _g1014210526_)))))
                (_g1013710708_ _stx10136_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx10082_)
      (let ((_clause-e10084_
             (lambda (_form10134_)
               (##structure
                gxc#!lambda::t
                'case-lambda-clause
                (gxc#lambda-form-arity _form10134_)
                (gxc#dispatch-lambda-form-delegate _form10134_)))))
        (let ((_g1008710097_
               (lambda (_g1008810094_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1008810094_))))
          (let ((_g1008610104_ (lambda (_g1008810100_) ((lambda () '#f)))))
            (let ((_g1008510131_
                   (lambda (_g1008810107_)
                     (if (gx#stx-pair? _g1008810107_)
                         (let ((_e1009010109_ (gx#stx-e _g1008810107_)))
                           (let ((_hd1009110112_ (##car _e1009010109_))
                                 (_tl1009210114_ (##cdr _e1009010109_)))
                             ((lambda (_L10117_)
                                (if (andmap gxc#dispatch-lambda-form? _L10117_)
                                    (let ((_clauses10129_
                                           (map _clause-e10084_ _L10117_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses10129_))
                                    (_g1008610104_ _g1008810107_)))
                              _tl1009210114_)))
                         (_g1008610104_ _g1008810107_)))))
              (_g1008510131_ _stx10082_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx9987_)
      (let ((_g999010010_
             (lambda (_g999110007_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g999110007_))))
        (let ((_g998910017_ (lambda (_g999110013_) ((lambda () '#f)))))
          (let ((_g998810079_
                 (lambda (_g999110020_)
                   (if (gx#stx-pair? _g999110020_)
                       (let ((_e999410022_ (gx#stx-e _g999110020_)))
                         (let ((_hd999510025_ (##car _e999410022_))
                               (_tl999610027_ (##cdr _e999410022_)))
                           (if (gx#stx-pair? _tl999610027_)
                               (let ((_e999710030_ (gx#stx-e _tl999610027_)))
                                 (let ((_hd999810033_ (##car _e999710030_))
                                       (_tl999910035_ (##cdr _e999710030_)))
                                   (if (gx#stx-pair? _hd999810033_)
                                       (let ((_e1000010038_
                                              (gx#stx-e _hd999810033_)))
                                         (let ((_hd1000110041_
                                                (##car _e1000010038_))
                                               (_tl1000210043_
                                                (##cdr _e1000010038_)))
                                           (if (gx#identifier? _hd1000110041_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1000110041_)
                                                   (if (gx#stx-pair?
                                                        _tl1000210043_)
                                                       (let ((_e1000310046_
                                                              (gx#stx-e
                                                               _tl1000210043_)))
                                                         (let ((_hd1000410049_
                                                                (##car _e1000310046_))
                                                               (_tl1000510051_
                                                                (##cdr _e1000310046_)))
                                                           (if (gx#stx-null?
                                                                _tl1000510051_)
                                                               ((lambda (_L10054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L10055_)
                          (let ((_type-e1007210074_
                                 (hash-get
                                  gxc#basic-expression-type-builtin
                                  (gxc#identifier-symbol _L10055_))))
                            (if _type-e1007210074_
                                (let ((_type-e10077_ _type-e1007210074_))
                                  (_type-e10077_ _stx9987_ _L10054_))
                                '#f)))
                        _tl999910035_
                        _hd1000410049_)
                       (_g998910017_ _g999110020_))))
               (_g998910017_ _g999110020_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g998910017_ _g999110020_))
                                               (_g998910017_ _g999110020_))))
                                       (_g998910017_ _g999110020_))))
                               (_g998910017_ _g999110020_))))
                       (_g998910017_ _g999110020_)))))
            (_g998810079_ _stx9987_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx9472_ _args9473_)
      (let ((_g94779590_
             (lambda (_g94789587_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94789587_))))
        (let ((_g94769597_
               (lambda (_g94789593_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx9472_))
                      '#f))))))
          (let ((_g94759804_
                 (lambda (_g94789600_)
                   (if (gx#stx-pair? _g94789600_)
                       (let ((_e95389602_ (gx#stx-e _g94789600_)))
                         (let ((_hd95399605_ (##car _e95389602_))
                               (_tl95409607_ (##cdr _e95389602_)))
                           (if (gx#stx-pair? _hd95399605_)
                               (let ((_e95419610_ (gx#stx-e _hd95399605_)))
                                 (let ((_hd95429613_ (##car _e95419610_))
                                       (_tl95439615_ (##cdr _e95419610_)))
                                   (if (gx#identifier? _hd95429613_)
                                       (if (gx#stx-eq? '%#quote _hd95429613_)
                                           (if (gx#stx-pair? _tl95439615_)
                                               (let ((_e95449618_
                                                      (gx#stx-e _tl95439615_)))
                                                 (let ((_hd95459621_
                                                        (##car _e95449618_))
                                                       (_tl95469623_
                                                        (##cdr _e95449618_)))
                                                   (if (gx#stx-null?
                                                        _tl95469623_)
                                                       (if (gx#stx-pair?
                                                            _tl95409607_)
                                                           (let ((_e95479626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl95409607_)))
                     (let ((_hd95489629_ (##car _e95479626_))
                           (_tl95499631_ (##cdr _e95479626_)))
                       (if (gx#stx-pair? _hd95489629_)
                           (let ((_e95509634_ (gx#stx-e _hd95489629_)))
                             (let ((_hd95519637_ (##car _e95509634_))
                                   (_tl95529639_ (##cdr _e95509634_)))
                               (if (gx#identifier? _hd95519637_)
                                   (if (gx#stx-eq? '%#ref _hd95519637_)
                                       (if (gx#stx-pair? _tl95529639_)
                                           (let ((_e95539642_
                                                  (gx#stx-e _tl95529639_)))
                                             (let ((_hd95549645_
                                                    (##car _e95539642_))
                                                   (_tl95559647_
                                                    (##cdr _e95539642_)))
                                               (if (gx#stx-null? _tl95559647_)
                                                   (if (gx#stx-pair?
                                                        _tl95499631_)
                                                       (let ((_e95569650_
                                                              (gx#stx-e
                                                               _tl95499631_)))
                                                         (let ((_hd95579653_
                                                                (##car _e95569650_))
                                                               (_tl95589655_
                                                                (##cdr _e95569650_)))
                                                           (if (gx#stx-pair?
                                                                _hd95579653_)
                                                               (let ((_e95599658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd95579653_)))
                         (let ((_hd95609661_ (##car _e95599658_))
                               (_tl95619663_ (##cdr _e95599658_)))
                           (if (gx#identifier? _hd95609661_)
                               (if (gx#stx-eq? '%#quote _hd95609661_)
                                   (if (gx#stx-pair? _tl95619663_)
                                       (let ((_e95629666_
                                              (gx#stx-e _tl95619663_)))
                                         (let ((_hd95639669_
                                                (##car _e95629666_))
                                               (_tl95649671_
                                                (##cdr _e95629666_)))
                                           (if (gx#stx-null? _tl95649671_)
                                               (if (gx#stx-pair? _tl95589655_)
                                                   (let ((_e95659674_
                                                          (gx#stx-e
                                                           _tl95589655_)))
                                                     (let ((_hd95669677_
                                                            (##car _e95659674_))
                                                           (_tl95679679_
                                                            (##cdr _e95659674_)))
                                                       (if (gx#stx-pair?
                                                            _tl95679679_)
                                                           (let ((_e95689682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl95679679_)))
                     (let ((_hd95699685_ (##car _e95689682_))
                           (_tl95709687_ (##cdr _e95689682_)))
                       (if (gx#stx-pair? _hd95699685_)
                           (let ((_e95719690_ (gx#stx-e _hd95699685_)))
                             (let ((_hd95729693_ (##car _e95719690_))
                                   (_tl95739695_ (##cdr _e95719690_)))
                               (if (gx#identifier? _hd95729693_)
                                   (if (gx#stx-eq? '%#quote _hd95729693_)
                                       (if (gx#stx-pair? _tl95739695_)
                                           (let ((_e95749698_
                                                  (gx#stx-e _tl95739695_)))
                                             (let ((_hd95759701_
                                                    (##car _e95749698_))
                                                   (_tl95769703_
                                                    (##cdr _e95749698_)))
                                               (if (gx#stx-null? _tl95769703_)
                                                   (if (gx#stx-pair?
                                                        _tl95709687_)
                                                       (let ((_e95779706_
                                                              (gx#stx-e
                                                               _tl95709687_)))
                                                         (let ((_hd95789709_
                                                                (##car _e95779706_))
                                                               (_tl95799711_
                                                                (##cdr _e95779706_)))
                                                           (if (gx#stx-pair?
                                                                _hd95789709_)
                                                               (let ((_e95809714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd95789709_)))
                         (let ((_hd95819717_ (##car _e95809714_))
                               (_tl95829719_ (##cdr _e95809714_)))
                           (if (gx#identifier? _hd95819717_)
                               (if (gx#stx-eq? '%#quote _hd95819717_)
                                   (if (gx#stx-pair? _tl95829719_)
                                       (let ((_e95839722_
                                              (gx#stx-e _tl95829719_)))
                                         (let ((_hd95849725_
                                                (##car _e95839722_))
                                               (_tl95859727_
                                                (##cdr _e95839722_)))
                                           (if (gx#stx-null? _tl95859727_)
                                               (if (gx#stx-null? _tl95799711_)
                                                   ((lambda (_L9730_
                                                             _L9731_
                                                             _L9732_
                                                             _L9733_
                                                             _L9734_
                                                             _L9735_)
                                                      (let ((_super-t9781_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9734_)
                         (gxc#identifier-symbol _L9734_)
                         '#f)))
                (let ((_super-type9783_
                       (if _super-t9781_
                           (gxc#optimizer-resolve-type _super-t9781_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type9783_
                              (not (##structure-instance-of?
                                    _super-type9783_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx9472_
                           _L9734_)
                          '#!void)
                      (let ((_fields9799_ (gx#stx-e _L9733_))
                            (_xfields9800_
                             (if _super-type9783_
                                 (let ((_super-fields97859788_
                                        (##structure-ref
                                         _super-type9783_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields97869790_
                                        (##structure-ref
                                         _super-type9783_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields97859788_
                                       (if _super-xfields97869790_
                                           (let ((_super-fields9793_
                                                  _super-fields97859788_)
                                                 (_super-xfields9794_
                                                  _super-xfields97869790_))
                                             (fx+ _super-fields9793_
                                                  _super-xfields9794_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist9801_ (gx#stx-e _L9731_))
                            (_ctor9802_
                             (let ((_$e9796_ (gx#stx-e _L9730_)))
                               (if _$e9796_
                                   (values _$e9796_)
                                   (if _super-type9783_
                                       (##structure-ref
                                        _super-type9783_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t9781_ '#!void '#f))))))
                        (let ((__obj14469
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj14469
                             (gx#stx-e _L9735_)
                             _super-t9781_
                             _fields9799_
                             _xfields9800_
                             _ctor9802_
                             _plist9801_)
                            __obj14469))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd95849725_
                                                    _hd95759701_
                                                    _hd95669677_
                                                    _hd95639669_
                                                    _hd95549645_
                                                    _hd95459621_)
                                                   (_g94769597_ _g94789600_))
                                               (_g94769597_ _g94789600_))))
                                       (_g94769597_ _g94789600_))
                                   (_g94769597_ _g94789600_))
                               (_g94769597_ _g94789600_))))
                       (_g94769597_ _g94789600_))))
               (_g94769597_ _g94789600_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g94769597_ _g94789600_))))
                                           (_g94769597_ _g94789600_))
                                       (_g94769597_ _g94789600_))
                                   (_g94769597_ _g94789600_))))
                           (_g94769597_ _g94789600_))))
                   (_g94769597_ _g94789600_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g94769597_ _g94789600_))
                                               (_g94769597_ _g94789600_))))
                                       (_g94769597_ _g94789600_))
                                   (_g94769597_ _g94789600_))
                               (_g94769597_ _g94789600_))))
                       (_g94769597_ _g94789600_))))
               (_g94769597_ _g94789600_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g94769597_ _g94789600_))))
                                           (_g94769597_ _g94789600_))
                                       (_g94769597_ _g94789600_))
                                   (_g94769597_ _g94789600_))))
                           (_g94769597_ _g94789600_))))
                   (_g94769597_ _g94789600_))
               (_g94769597_ _g94789600_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g94769597_ _g94789600_))
                                           (_g94769597_ _g94789600_))
                                       (_g94769597_ _g94789600_))))
                               (_g94769597_ _g94789600_))))
                       (_g94769597_ _g94789600_)))))
            (let ((_g94749984_
                   (lambda (_g94789807_)
                     (if (gx#stx-pair? _g94789807_)
                         (let ((_e94849809_ (gx#stx-e _g94789807_)))
                           (let ((_hd94859812_ (##car _e94849809_))
                                 (_tl94869814_ (##cdr _e94849809_)))
                             (if (gx#stx-pair? _hd94859812_)
                                 (let ((_e94879817_ (gx#stx-e _hd94859812_)))
                                   (let ((_hd94889820_ (##car _e94879817_))
                                         (_tl94899822_ (##cdr _e94879817_)))
                                     (if (gx#identifier? _hd94889820_)
                                         (if (gx#stx-eq? '%#quote _hd94889820_)
                                             (if (gx#stx-pair? _tl94899822_)
                                                 (let ((_e94909825_
                                                        (gx#stx-e
                                                         _tl94899822_)))
                                                   (let ((_hd94919828_
                                                          (##car _e94909825_))
                                                         (_tl94929830_
                                                          (##cdr _e94909825_)))
                                                     (if (gx#stx-null?
                                                          _tl94929830_)
                                                         (if (gx#stx-pair?
                                                              _tl94869814_)
                                                             (let ((_e94939833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl94869814_)))
                       (let ((_hd94949836_ (##car _e94939833_))
                             (_tl94959838_ (##cdr _e94939833_)))
                         (if (gx#stx-pair? _hd94949836_)
                             (let ((_e94969841_ (gx#stx-e _hd94949836_)))
                               (let ((_hd94979844_ (##car _e94969841_))
                                     (_tl94989846_ (##cdr _e94969841_)))
                                 (if (gx#identifier? _hd94979844_)
                                     (if (gx#stx-eq? '%#quote _hd94979844_)
                                         (if (gx#stx-pair? _tl94989846_)
                                             (let ((_e94999849_
                                                    (gx#stx-e _tl94989846_)))
                                               (let ((_hd95009852_
                                                      (##car _e94999849_))
                                                     (_tl95019854_
                                                      (##cdr _e94999849_)))
                                                 (if (gx#stx-datum?
                                                      _hd95009852_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd95009852_)
                         '#f)
                 (if (gx#stx-null? _tl95019854_)
                     (if (gx#stx-pair? _tl94959838_)
                         (let ((_e95029857_ (gx#stx-e _tl94959838_)))
                           (let ((_hd95039860_ (##car _e95029857_))
                                 (_tl95049862_ (##cdr _e95029857_)))
                             (if (gx#stx-pair? _hd95039860_)
                                 (let ((_e95059865_ (gx#stx-e _hd95039860_)))
                                   (let ((_hd95069868_ (##car _e95059865_))
                                         (_tl95079870_ (##cdr _e95059865_)))
                                     (if (gx#identifier? _hd95069868_)
                                         (if (gx#stx-eq? '%#quote _hd95069868_)
                                             (if (gx#stx-pair? _tl95079870_)
                                                 (let ((_e95089873_
                                                        (gx#stx-e
                                                         _tl95079870_)))
                                                   (let ((_hd95099876_
                                                          (##car _e95089873_))
                                                         (_tl95109878_
                                                          (##cdr _e95089873_)))
                                                     (if (gx#stx-null?
                                                          _tl95109878_)
                                                         (if (gx#stx-pair?
                                                              _tl95049862_)
                                                             (let ((_e95119881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl95049862_)))
                       (let ((_hd95129884_ (##car _e95119881_))
                             (_tl95139886_ (##cdr _e95119881_)))
                         (if (gx#stx-pair? _tl95139886_)
                             (let ((_e95149889_ (gx#stx-e _tl95139886_)))
                               (let ((_hd95159892_ (##car _e95149889_))
                                     (_tl95169894_ (##cdr _e95149889_)))
                                 (if (gx#stx-pair? _hd95159892_)
                                     (let ((_e95179897_
                                            (gx#stx-e _hd95159892_)))
                                       (let ((_hd95189900_ (##car _e95179897_))
                                             (_tl95199902_
                                              (##cdr _e95179897_)))
                                         (if (gx#identifier? _hd95189900_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd95189900_)
                                                 (if (gx#stx-pair?
                                                      _tl95199902_)
                                                     (let ((_e95209905_
                                                            (gx#stx-e
                                                             _tl95199902_)))
                                                       (let ((_hd95219908_
                                                              (##car _e95209905_))
                                                             (_tl95229910_
                                                              (##cdr _e95209905_)))
                                                         (if (gx#stx-null?
                                                              _tl95229910_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl95169894_)
                         (let ((_e95239913_ (gx#stx-e _tl95169894_)))
                           (let ((_hd95249916_ (##car _e95239913_))
                                 (_tl95259918_ (##cdr _e95239913_)))
                             (if (gx#stx-pair? _hd95249916_)
                                 (let ((_e95269921_ (gx#stx-e _hd95249916_)))
                                   (let ((_hd95279924_ (##car _e95269921_))
                                         (_tl95289926_ (##cdr _e95269921_)))
                                     (if (gx#identifier? _hd95279924_)
                                         (if (gx#stx-eq? '%#quote _hd95279924_)
                                             (if (gx#stx-pair? _tl95289926_)
                                                 (let ((_e95299929_
                                                        (gx#stx-e
                                                         _tl95289926_)))
                                                   (let ((_hd95309932_
                                                          (##car _e95299929_))
                                                         (_tl95319934_
                                                          (##cdr _e95299929_)))
                                                     (if (gx#stx-null?
                                                          _tl95319934_)
                                                         (if (gx#stx-null?
                                                              _tl95259918_)
                                                             ((lambda (_L9937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L9938_
                               _L9939_
                               _L9940_
                               _L9941_)
                        (let ((__obj14470
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj14470
                             (gx#stx-e _L9941_)
                             '#f
                             (gx#stx-e _L9940_)
                             '0
                             (gx#stx-e _L9937_)
                             (gx#stx-e _L9938_))
                            __obj14470)))
                      _hd95309932_
                      _hd95219908_
                      _hd95129884_
                      _hd95099876_
                      _hd94919828_)
                     (_g94759804_ _g94789807_))
                 (_g94759804_ _g94789807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g94759804_ _g94789807_))
                                             (_g94759804_ _g94789807_))
                                         (_g94759804_ _g94789807_))))
                                 (_g94759804_ _g94789807_))))
                         (_g94759804_ _g94789807_))
                     (_g94759804_ _g94789807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94759804_ _g94789807_))
                                                 (_g94759804_ _g94789807_))
                                             (_g94759804_ _g94789807_))))
                                     (_g94759804_ _g94789807_))))
                             (_g94759804_ _g94789807_))))
                     (_g94759804_ _g94789807_))
                 (_g94759804_ _g94789807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g94759804_ _g94789807_))
                                             (_g94759804_ _g94789807_))
                                         (_g94759804_ _g94789807_))))
                                 (_g94759804_ _g94789807_))))
                         (_g94759804_ _g94789807_))
                     (_g94759804_ _g94789807_))
                 (_g94759804_ _g94789807_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94759804_
                                                      _g94789807_))))
                                             (_g94759804_ _g94789807_))
                                         (_g94759804_ _g94789807_))
                                     (_g94759804_ _g94789807_))))
                             (_g94759804_ _g94789807_))))
                     (_g94759804_ _g94789807_))
                 (_g94759804_ _g94789807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g94759804_ _g94789807_))
                                             (_g94759804_ _g94789807_))
                                         (_g94759804_ _g94789807_))))
                                 (_g94759804_ _g94789807_))))
                         (_g94759804_ _g94789807_)))))
              (_g94749984_ _args9473_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx9398_ _args9399_)
      (let ((_g94029418_
             (lambda (_g94039415_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94039415_))))
        (let ((_g94019425_ (lambda (_g94039421_) ((lambda () '#f)))))
          (let ((_g94009469_
                 (lambda (_g94039428_)
                   (if (gx#stx-pair? _g94039428_)
                       (let ((_e94059430_ (gx#stx-e _g94039428_)))
                         (let ((_hd94069433_ (##car _e94059430_))
                               (_tl94079435_ (##cdr _e94059430_)))
                           (if (gx#stx-pair? _hd94069433_)
                               (let ((_e94089438_ (gx#stx-e _hd94069433_)))
                                 (let ((_hd94099441_ (##car _e94089438_))
                                       (_tl94109443_ (##cdr _e94089438_)))
                                   (if (gx#identifier? _hd94099441_)
                                       (if (gx#stx-eq? '%#ref _hd94099441_)
                                           (if (gx#stx-pair? _tl94109443_)
                                               (let ((_e94119446_
                                                      (gx#stx-e _tl94109443_)))
                                                 (let ((_hd94129449_
                                                        (##car _e94119446_))
                                                       (_tl94139451_
                                                        (##cdr _e94119446_)))
                                                   (if (gx#stx-null?
                                                        _tl94139451_)
                                                       (if (gx#stx-null?
                                                            _tl94079435_)
                                                           ((lambda (_L9454_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#identifier-symbol
                                                                _L9454_)))
                                                            _hd94129449_)
                                                           (_g94019425_
                                                            _g94039428_))
                                                       (_g94019425_
                                                        _g94039428_))))
                                               (_g94019425_ _g94039428_))
                                           (_g94019425_ _g94039428_))
                                       (_g94019425_ _g94039428_))))
                               (_g94019425_ _g94039428_))))
                       (_g94019425_ _g94039428_)))))
            (_g94009469_ _args9399_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx9282_ _args9283_)
      (let ((_g92869312_
             (lambda (_g92879309_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92879309_))))
        (let ((_g92859319_ (lambda (_g92879315_) ((lambda () '#f)))))
          (let ((_g92849395_
                 (lambda (_g92879322_)
                   (if (gx#stx-pair? _g92879322_)
                       (let ((_e92909324_ (gx#stx-e _g92879322_)))
                         (let ((_hd92919327_ (##car _e92909324_))
                               (_tl92929329_ (##cdr _e92909324_)))
                           (if (gx#stx-pair? _hd92919327_)
                               (let ((_e92939332_ (gx#stx-e _hd92919327_)))
                                 (let ((_hd92949335_ (##car _e92939332_))
                                       (_tl92959337_ (##cdr _e92939332_)))
                                   (if (gx#identifier? _hd92949335_)
                                       (if (gx#stx-eq? '%#ref _hd92949335_)
                                           (if (gx#stx-pair? _tl92959337_)
                                               (let ((_e92969340_
                                                      (gx#stx-e _tl92959337_)))
                                                 (let ((_hd92979343_
                                                        (##car _e92969340_))
                                                       (_tl92989345_
                                                        (##cdr _e92969340_)))
                                                   (if (gx#stx-null?
                                                        _tl92989345_)
                                                       (if (gx#stx-pair?
                                                            _tl92929329_)
                                                           (let ((_e92999348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl92929329_)))
                     (let ((_hd93009351_ (##car _e92999348_))
                           (_tl93019353_ (##cdr _e92999348_)))
                       (if (gx#stx-pair? _hd93009351_)
                           (let ((_e93029356_ (gx#stx-e _hd93009351_)))
                             (let ((_hd93039359_ (##car _e93029356_))
                                   (_tl93049361_ (##cdr _e93029356_)))
                               (if (gx#identifier? _hd93039359_)
                                   (if (gx#stx-eq? '%#quote _hd93039359_)
                                       (if (gx#stx-pair? _tl93049361_)
                                           (let ((_e93059364_
                                                  (gx#stx-e _tl93049361_)))
                                             (let ((_hd93069367_
                                                    (##car _e93059364_))
                                                   (_tl93079369_
                                                    (##cdr _e93059364_)))
                                               (if (gx#stx-null? _tl93079369_)
                                                   (if (gx#stx-null?
                                                        _tl93019353_)
                                                       ((lambda (_L9372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L9373_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#identifier-symbol _L9373_)
                   (gx#stx-e _L9372_)))
                _hd93069367_
                _hd92979343_)
               (_g92859319_ _g92879322_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g92859319_ _g92879322_))))
                                           (_g92859319_ _g92879322_))
                                       (_g92859319_ _g92879322_))
                                   (_g92859319_ _g92879322_))))
                           (_g92859319_ _g92879322_))))
                   (_g92859319_ _g92879322_))
               (_g92859319_ _g92879322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g92859319_ _g92879322_))
                                           (_g92859319_ _g92879322_))
                                       (_g92859319_ _g92879322_))))
                               (_g92859319_ _g92879322_))))
                       (_g92859319_ _g92879322_)))))
            (_g92849395_ _args9283_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx9166_ _args9167_)
      (let ((_g91709196_
             (lambda (_g91719193_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91719193_))))
        (let ((_g91699203_ (lambda (_g91719199_) ((lambda () '#f)))))
          (let ((_g91689279_
                 (lambda (_g91719206_)
                   (if (gx#stx-pair? _g91719206_)
                       (let ((_e91749208_ (gx#stx-e _g91719206_)))
                         (let ((_hd91759211_ (##car _e91749208_))
                               (_tl91769213_ (##cdr _e91749208_)))
                           (if (gx#stx-pair? _hd91759211_)
                               (let ((_e91779216_ (gx#stx-e _hd91759211_)))
                                 (let ((_hd91789219_ (##car _e91779216_))
                                       (_tl91799221_ (##cdr _e91779216_)))
                                   (if (gx#identifier? _hd91789219_)
                                       (if (gx#stx-eq? '%#ref _hd91789219_)
                                           (if (gx#stx-pair? _tl91799221_)
                                               (let ((_e91809224_
                                                      (gx#stx-e _tl91799221_)))
                                                 (let ((_hd91819227_
                                                        (##car _e91809224_))
                                                       (_tl91829229_
                                                        (##cdr _e91809224_)))
                                                   (if (gx#stx-null?
                                                        _tl91829229_)
                                                       (if (gx#stx-pair?
                                                            _tl91769213_)
                                                           (let ((_e91839232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl91769213_)))
                     (let ((_hd91849235_ (##car _e91839232_))
                           (_tl91859237_ (##cdr _e91839232_)))
                       (if (gx#stx-pair? _hd91849235_)
                           (let ((_e91869240_ (gx#stx-e _hd91849235_)))
                             (let ((_hd91879243_ (##car _e91869240_))
                                   (_tl91889245_ (##cdr _e91869240_)))
                               (if (gx#identifier? _hd91879243_)
                                   (if (gx#stx-eq? '%#quote _hd91879243_)
                                       (if (gx#stx-pair? _tl91889245_)
                                           (let ((_e91899248_
                                                  (gx#stx-e _tl91889245_)))
                                             (let ((_hd91909251_
                                                    (##car _e91899248_))
                                                   (_tl91919253_
                                                    (##cdr _e91899248_)))
                                               (if (gx#stx-null? _tl91919253_)
                                                   (if (gx#stx-null?
                                                        _tl91859237_)
                                                       ((lambda (_L9256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L9257_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#identifier-symbol _L9257_)
                   (gx#stx-e _L9256_)))
                _hd91909251_
                _hd91819227_)
               (_g91699203_ _g91719206_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g91699203_ _g91719206_))))
                                           (_g91699203_ _g91719206_))
                                       (_g91699203_ _g91719206_))
                                   (_g91699203_ _g91719206_))))
                           (_g91699203_ _g91719206_))))
                   (_g91699203_ _g91719206_))
               (_g91699203_ _g91719206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g91699203_ _g91719206_))
                                           (_g91699203_ _g91719206_))
                                       (_g91699203_ _g91719206_))))
                               (_g91699203_ _g91719206_))))
                       (_g91699203_ _g91719206_)))))
            (_g91689279_ _args9167_))))))
  (hash-put!
   gxc#basic-expression-type-builtin
   'make-struct-type
   gxc#basic-expression-type-make-struct-type)
  (hash-put!
   gxc#basic-expression-type-builtin
   'make-struct-predicate
   gxc#basic-expression-type-make-struct-predicate)
  (hash-put!
   gxc#basic-expression-type-builtin
   'make-struct-field-accessor
   gxc#basic-expression-type-make-struct-field-accessor)
  (hash-put!
   gxc#basic-expression-type-builtin
   'make-struct-field-mutator
   gxc#basic-expression-type-make-struct-field-mutator)
  (define gxc#basic-expression-type-ref%
    (lambda (_stx9115_)
      (let ((_g91179130_
             (lambda (_g91189127_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91189127_))))
        (let ((_g91169163_
               (lambda (_g91189133_)
                 (if (gx#stx-pair? _g91189133_)
                     (let ((_e91209135_ (gx#stx-e _g91189133_)))
                       (let ((_hd91219138_ (##car _e91209135_))
                             (_tl91229140_ (##cdr _e91209135_)))
                         (if (gx#stx-pair? _tl91229140_)
                             (let ((_e91239143_ (gx#stx-e _tl91229140_)))
                               (let ((_hd91249146_ (##car _e91239143_))
                                     (_tl91259148_ (##cdr _e91239143_)))
                                 (if (gx#stx-null? _tl91259148_)
                                     ((lambda (_L9151_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#identifier-symbol _L9151_)))
                                      _hd91249146_)
                                     (_g91179130_ _g91189133_))))
                             (_g91179130_ _g91189133_))))
                     (_g91179130_ _g91189133_)))))
          (_g91169163_ _stx9115_)))))
  (define gxc#optimize-call%
    (lambda (_stx9021_)
      (let ((_g90249044_
             (lambda (_g90259041_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g90259041_))))
        (let ((_g90239051_
               (lambda (_g90259047_)
                 ((lambda () (gxc#xform-call% _stx9021_))))))
          (let ((_g90229112_
                 (lambda (_g90259054_)
                   (if (gx#stx-pair? _g90259054_)
                       (let ((_e90289056_ (gx#stx-e _g90259054_)))
                         (let ((_hd90299059_ (##car _e90289056_))
                               (_tl90309061_ (##cdr _e90289056_)))
                           (if (gx#stx-pair? _tl90309061_)
                               (let ((_e90319064_ (gx#stx-e _tl90309061_)))
                                 (let ((_hd90329067_ (##car _e90319064_))
                                       (_tl90339069_ (##cdr _e90319064_)))
                                   (if (gx#stx-pair? _hd90329067_)
                                       (let ((_e90349072_
                                              (gx#stx-e _hd90329067_)))
                                         (let ((_hd90359075_
                                                (##car _e90349072_))
                                               (_tl90369077_
                                                (##cdr _e90349072_)))
                                           (if (gx#identifier? _hd90359075_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd90359075_)
                                                   (if (gx#stx-pair?
                                                        _tl90369077_)
                                                       (let ((_e90379080_
                                                              (gx#stx-e
                                                               _tl90369077_)))
                                                         (let ((_hd90389083_
                                                                (##car _e90379080_))
                                                               (_tl90399085_
                                                                (##cdr _e90379080_)))
                                                           (if (gx#stx-null?
                                                                _tl90399085_)
                                                               ((lambda (_L9088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L9089_)
                          (let ((_rator-id9107_
                                 (gxc#identifier-symbol _L9089_)))
                            (let ((_rator-type9109_
                                   (gxc#optimizer-lookup-type _rator-id9107_)))
                              (let ()
                                (if _rator-type9109_
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id9107_
                                       '" => "
                                       _rator-type9109_
                                       '" "
                                       (##structure-ref
                                        _rator-type9109_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type9109_
                                       'optimize-call
                                       _stx9021_
                                       _L9088_))
                                    (gxc#xform-call% _stx9021_))))))
                        _tl90339069_
                        _hd90389083_)
                       (_g90239051_ _g90259054_))))
               (_g90239051_ _g90259054_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g90239051_ _g90259054_))
                                               (_g90239051_ _g90259054_))))
                                       (_g90239051_ _g90259054_))))
                               (_g90239051_ _g90259054_))))
                       (_g90239051_ _g90259054_)))))
            (_g90229112_ _stx9021_))))))
  (define gxc#!alias::optimize-call
    (lambda (_self8991_ _stx8992_ _args8993_)
      (let ((_self89949000_ _self8991_))
        (let ((_E89969004_
               (lambda () (error '"No clause matching" _self89949000_))))
          (let ((_K89979013_
                 (lambda (_alias-id9007_)
                   (let ((_alias-type9009_
                          (gxc#optimizer-lookup-type _alias-id9007_)))
                     (if (##structure-instance-of?
                          _alias-type9009_
                          'gxc#!type::t)
                         (call-method
                          _alias-type9009_
                          'optimize-call
                          _stx8992_
                          _args8993_)
                         (let ((_args9011_
                                (gx#stx-map1 gxc#compile-e _args8993_)))
                           (gxc#xform-wrap-source
                            (cons '%#call
                                  (cons (cons '%#ref (cons _alias-id9007_ '()))
                                        _args9011_))
                            _stx8992_)))))))
            (if (struct-instance? gxc#!alias::t _self89949000_)
                (let ((_e89989016_ (##vector-ref _self89949000_ '1)))
                  (let ((_alias-id9019_ _e89989016_))
                    (_K89979013_ _alias-id9019_)))
                (_E89969004_)))))))
  (bind-method! gxc#!alias::t 'optimize-call gxc#!alias::optimize-call '#f)
  (define gxc#!struct-pred::optimize-call
    (lambda (_self8846_ _stx8847_ _args8848_)
      (let ((_self88498855_ _self8846_))
        (let ((_E88518859_
               (lambda () (error '"No clause matching" _self88498855_))))
          (let ((_K88528983_
                 (lambda (_struct-t8862_)
                   (let ((_struct-type8864_
                          (gxc#optimizer-resolve-type _struct-t8862_)))
                     (let ((_struct-type88658879_ _struct-type8864_))
                       (let ((_E88698883_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type88658879_))))
                         (let ((_else88688887_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx8847_
                                   _struct-t8862_
                                   _struct-type8864_))))
                           (let ((_try-match88678895_
                                  (lambda ()
                                    (let ((_K88708892_
                                           (lambda ()
                                             (gxc#xform-call% _stx8847_))))
                                      (if (##eq? _struct-type88658879_ '#f)
                                          (_K88708892_)
                                          (_else88688887_))))))
                             (let ((_K88718958_
                                    (lambda (_plist8898_ _struct-type-id8899_)
                                      (let ((_g89028912_
                                             (lambda (_g89038909_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g89038909_))))
                                        (let ((_g89018919_
                                               (lambda (_g89038915_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx8847_))))))
                                          (let ((_g89008955_
                                                 (lambda (_g89038922_)
                                                   (if (gx#stx-pair?
                                                        _g89038922_)
                                                       (let ((_e89058924_
                                                              (gx#stx-e
                                                               _g89038922_)))
                                                         (let ((_hd89068927_
                                                                (##car _e89058924_))
                                                               (_tl89078929_
                                                                (##cdr _e89058924_)))
                                                           (if (gx#stx-null?
                                                                _tl89078929_)
                                                               ((lambda (_L8932_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr8952_ (gxc#compile-e _L8932_))
                                (_op8953_
                                 (if (if _plist8898_
                                         (assgetq 'final: _plist8898_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op8953_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id8899_ '()))
                                         (cons _expr8952_ '())))
                             _stx8847_)))
                        _hd89068927_)
                       (_g89018919_ _g89038922_))))
               (_g89018919_ _g89038922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g89008955_ _args8848_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type88658879_)
                                   (let ((_e88728961_
                                          (##vector-ref
                                           _struct-type88658879_
                                           '1)))
                                     (let ((_struct-type-id8964_ _e88728961_))
                                       (let ((_e88738966_
                                              (##vector-ref
                                               _struct-type88658879_
                                               '2)))
                                         (let ((_e88748969_
                                                (##vector-ref
                                                 _struct-type88658879_
                                                 '3)))
                                           (let ((_e88758972_
                                                  (##vector-ref
                                                   _struct-type88658879_
                                                   '4)))
                                             (let ((_e88768975_
                                                    (##vector-ref
                                                     _struct-type88658879_
                                                     '5)))
                                               (let ((_e88778978_
                                                      (##vector-ref
                                                       _struct-type88658879_
                                                       '6)))
                                                 (let ((_plist8981_
                                                        _e88778978_))
                                                   (_K88718958_
                                                    _plist8981_
                                                    _struct-type-id8964_)))))))))
                                   (_try-match88678895_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self88498855_)
                (let ((_e88538986_ (##vector-ref _self88498855_ '1)))
                  (let ((_struct-t8989_ _e88538986_))
                    (_K88528983_ _struct-t8989_)))
                (_E88518859_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self8742_ _stx8743_ _args8744_)
      (let ((_self87458751_ _self8742_))
        (let ((_E87478755_
               (lambda () (error '"No clause matching" _self87458751_))))
          (let ((_K87488838_
                 (lambda (_struct-t8758_)
                   (let ((_struct-type8760_
                          (gxc#optimizer-resolve-type _struct-t8758_)))
                     (let ((_struct-type87618774_ _struct-type8760_))
                       (let ((_E87658778_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type87618774_))))
                         (let ((_else87648782_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx8743_
                                   _struct-t8758_
                                   _struct-type8760_))))
                           (let ((_try-match87638790_
                                  (lambda ()
                                    (let ((_K87668787_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t8758_)
                                               (gxc#xform-call% _stx8743_)))))
                                      (if (##eq? _struct-type87618774_ '#f)
                                          (_K87668787_)
                                          (_else87648782_))))))
                             (let ((_K87678812_
                                    (lambda (_ctor8793_
                                             _xfields8794_
                                             _fields8795_
                                             _type-id8796_)
                                      (let ((_args8798_
                                             (gx#stx-map1
                                              gxc#compile-e
                                              _args8744_)))
                                        (let ((_$e8800_
                                               (if _ctor8793_
                                                   (if _xfields8794_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type8760_
                                                        _ctor8793_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e8800_
                                              ((lambda (_kons8803_)
                                                 (let ((_$obj8805_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj8805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t8758_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields8795_ _xfields8794_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons8803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj8805_ '())) _args8798_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx8743_))
                                          (cons (cons '%#ref
                                                      (cons _$obj8805_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx8743_)))
                                               _$e8800_)
                                              (if (let ((_$e8807_ _ctor8793_))
                                                    (if _$e8807_
                                                        _$e8807_
                                                        (not _xfields8794_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t8758_ '()))
                             _args8798_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx8743_)
                                                  (let ((_arity8810_
                                                         (fx+ _fields8795_
                                                              _xfields8794_)))
                                                    (if (fx= _arity8810_
                                                             (length _args8798_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t8758_ '()))
                                   _args8798_)))
                 _stx8743_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx8743_
                 _struct-t8758_
                 _arity8810_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type87618774_)
                                   (let ((_e87688815_
                                          (##vector-ref
                                           _struct-type87618774_
                                           '1)))
                                     (let ((_type-id8818_ _e87688815_))
                                       (let ((_e87698820_
                                              (##vector-ref
                                               _struct-type87618774_
                                               '2)))
                                         (let ((_e87708823_
                                                (##vector-ref
                                                 _struct-type87618774_
                                                 '3)))
                                           (let ((_fields8826_ _e87708823_))
                                             (let ((_e87718828_
                                                    (##vector-ref
                                                     _struct-type87618774_
                                                     '4)))
                                               (let ((_xfields8831_
                                                      _e87718828_))
                                                 (let ((_e87728833_
                                                        (##vector-ref
                                                         _struct-type87618774_
                                                         '5)))
                                                   (let ((_ctor8836_
                                                          _e87728833_))
                                                     (_K87678812_
                                                      _ctor8836_
                                                      _xfields8831_
                                                      _fields8826_
                                                      _type-id8818_))))))))))
                                   (_try-match87638790_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self87458751_)
                (let ((_e87498841_ (##vector-ref _self87458751_ '1)))
                  (let ((_struct-t8844_ _e87498841_))
                    (_K87488838_ _struct-t8844_)))
                (_E87478755_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self8595_ _stx8596_ _args8597_)
      (let ((_self85988605_ _self8595_))
        (let ((_E86008609_
               (lambda () (error '"No clause matching" _self85988605_))))
          (let ((_K86018729_
                 (lambda (_off8612_ _struct-t8613_)
                   (let ((_struct-type8615_
                          (gxc#optimizer-resolve-type _struct-t8613_)))
                     (let ((_struct-type86168628_ _struct-type8615_))
                       (let ((_E86208632_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type86168628_))))
                         (let ((_else86198636_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx8596_
                                   _struct-t8613_
                                   _struct-type8615_))))
                           (let ((_try-match86188644_
                                  (lambda ()
                                    (let ((_K86218641_
                                           (lambda ()
                                             (gxc#xform-call% _stx8596_))))
                                      (if (##eq? _struct-type86168628_ '#f)
                                          (_K86218641_)
                                          (_else86198636_))))))
                             (let ((_K86228708_
                                    (lambda (_xfields8647_
                                             _fields8648_
                                             _struct-type-id8649_)
                                      (if _xfields8647_
                                          (let ((_g86528662_
                                                 (lambda (_g86538659_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g86538659_))))
                                            (let ((_g86518669_
                                                   (lambda (_g86538665_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx8596_))))))
                                              (let ((_g86508705_
                                                     (lambda (_g86538672_)
                                                       (if (gx#stx-pair?
                                                            _g86538672_)
                                                           (let ((_e86558674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g86538672_)))
                     (let ((_hd86568677_ (##car _e86558674_))
                           (_tl86578679_ (##cdr _e86558674_)))
                       (if (gx#stx-null? _tl86578679_)
                           ((lambda (_L8682_)
                              (let ((_expr8702_ (gxc#compile-e _L8682_))
                                    (_off8703_
                                     (fx+ _off8612_ _xfields8647_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t8613_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off8703_ '()))
                                                   (cons _expr8702_ '()))))
                                 _stx8596_)))
                            _hd86568677_)
                           (_g86518669_ _g86538672_))))
                   (_g86518669_ _g86538672_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g86508705_ _args8597_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id8649_)
                                            (gxc#xform-call% _stx8596_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type86168628_)
                                   (let ((_e86238711_
                                          (##vector-ref
                                           _struct-type86168628_
                                           '1)))
                                     (let ((_struct-type-id8714_ _e86238711_))
                                       (let ((_e86248716_
                                              (##vector-ref
                                               _struct-type86168628_
                                               '2)))
                                         (let ((_e86258719_
                                                (##vector-ref
                                                 _struct-type86168628_
                                                 '3)))
                                           (let ((_fields8722_ _e86258719_))
                                             (let ((_e86268724_
                                                    (##vector-ref
                                                     _struct-type86168628_
                                                     '4)))
                                               (let ((_xfields8727_
                                                      _e86268724_))
                                                 (_K86228708_
                                                  _xfields8727_
                                                  _fields8722_
                                                  _struct-type-id8714_))))))))
                                   (_try-match86188644_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self85988605_)
                (let ((_e86028732_ (##vector-ref _self85988605_ '1)))
                  (let ((_struct-t8735_ _e86028732_))
                    (let ((_e86038737_ (##vector-ref _self85988605_ '2)))
                      (let ((_off8740_ _e86038737_))
                        (_K86018729_ _off8740_ _struct-t8735_)))))
                (_E86008609_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self8431_ _stx8432_ _args8433_)
      (let ((_self84348441_ _self8431_))
        (let ((_E84368445_
               (lambda () (error '"No clause matching" _self84348441_))))
          (let ((_K84378582_
                 (lambda (_off8448_ _struct-t8449_)
                   (let ((_struct-type8451_
                          (gxc#optimizer-resolve-type _struct-t8449_)))
                     (let ((_struct-type84528464_ _struct-type8451_))
                       (let ((_E84568468_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type84528464_))))
                         (let ((_else84558472_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx8432_
                                   _struct-t8449_
                                   _struct-type8451_))))
                           (let ((_try-match84548480_
                                  (lambda ()
                                    (let ((_K84578477_
                                           (lambda ()
                                             (gxc#xform-call% _stx8432_))))
                                      (if (##eq? _struct-type84528464_ '#f)
                                          (_K84578477_)
                                          (_else84558472_))))))
                             (let ((_K84588561_
                                    (lambda (_xfields8483_
                                             _fields8484_
                                             _struct-type-id8485_)
                                      (if _xfields8483_
                                          (let ((_g84888502_
                                                 (lambda (_g84898499_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g84898499_))))
                                            (let ((_g84878509_
                                                   (lambda (_g84898505_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx8432_))))))
                                              (let ((_g84868558_
                                                     (lambda (_g84898512_)
                                                       (if (gx#stx-pair?
                                                            _g84898512_)
                                                           (let ((_e84928514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g84898512_)))
                     (let ((_hd84938517_ (##car _e84928514_))
                           (_tl84948519_ (##cdr _e84928514_)))
                       (if (gx#stx-pair? _tl84948519_)
                           (let ((_e84958522_ (gx#stx-e _tl84948519_)))
                             (let ((_hd84968525_ (##car _e84958522_))
                                   (_tl84978527_ (##cdr _e84958522_)))
                               (if (gx#stx-null? _tl84978527_)
                                   ((lambda (_L8530_ _L8531_)
                                      (let ((_expr8554_
                                             (gxc#compile-e _L8531_))
                                            (_val8555_ (gxc#compile-e _L8530_))
                                            (_off8556_
                                             (fx+ _off8448_ _xfields8483_ '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t8449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off8556_ '()))
                   (cons _expr8554_ (cons _val8555_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx8432_)))
                                    _hd84968525_
                                    _hd84938517_)
                                   (_g84878509_ _g84898512_))))
                           (_g84878509_ _g84898512_))))
                   (_g84878509_ _g84898512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g84868558_ _args8433_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id8485_)
                                            (gxc#xform-call% _stx8432_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type84528464_)
                                   (let ((_e84598564_
                                          (##vector-ref
                                           _struct-type84528464_
                                           '1)))
                                     (let ((_struct-type-id8567_ _e84598564_))
                                       (let ((_e84608569_
                                              (##vector-ref
                                               _struct-type84528464_
                                               '2)))
                                         (let ((_e84618572_
                                                (##vector-ref
                                                 _struct-type84528464_
                                                 '3)))
                                           (let ((_fields8575_ _e84618572_))
                                             (let ((_e84628577_
                                                    (##vector-ref
                                                     _struct-type84528464_
                                                     '4)))
                                               (let ((_xfields8580_
                                                      _e84628577_))
                                                 (_K84588561_
                                                  _xfields8580_
                                                  _fields8575_
                                                  _struct-type-id8567_))))))))
                                   (_try-match84548480_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self84348441_)
                (let ((_e84388585_ (##vector-ref _self84348441_ '1)))
                  (let ((_struct-t8588_ _e84388585_))
                    (let ((_e84398590_ (##vector-ref _self84348441_ '2)))
                      (let ((_off8593_ _e84398590_))
                        (_K84378582_ _off8593_ _struct-t8588_)))))
                (_E84368445_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self8392_ _stx8393_ _args8394_)
      (let ((_self83958403_ _self8392_))
        (let ((_E83978407_
               (lambda () (error '"No clause matching" _self83958403_))))
          (let ((_K83988415_
                 (lambda (_dispatch8410_ _arity8411_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self8392_ _args8394_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx8393_
                          _arity8411_))
                     (if _dispatch8410_
                         (let ((_args8413_
                                (gx#stx-map1 gxc#compile-e _args8394_)))
                           (begin
                             (gxc#verbose
                              '"dispatch lambda => "
                              _dispatch8410_)
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch8410_ '()))
                                          _args8413_))
                              _stx8393_)))
                         (gxc#xform-call% _stx8393_))))))
            (if (struct-instance? gxc#!lambda::t _self83958403_)
                (let ((_e83998418_ (##vector-ref _self83958403_ '1)))
                  (let ((_e84008421_ (##vector-ref _self83958403_ '2)))
                    (let ((_arity8424_ _e84008421_))
                      (let ((_e84018426_ (##vector-ref _self83958403_ '3)))
                        (let ((_dispatch8429_ _e84018426_))
                          (_K83988415_ _dispatch8429_ _arity8424_))))))
                (_E83978407_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self8352_ _stx8353_ _args8354_)
      (let ((_self83558362_ _self8352_))
        (let ((_E83578366_
               (lambda () (error '"No clause matching" _self83558362_))))
          (let ((_K83588381_
                 (lambda (_clauses8369_)
                   (let ((_$e8375_
                          (find (lambda (_g83708372_)
                                  (gxc#!lambda-arity-match?
                                   _g83708372_
                                   _args8354_))
                                _clauses8369_)))
                     (if _$e8375_
                         ((lambda (_clause8378_)
                            (call-method
                             _clause8378_
                             'optimize-call
                             _stx8353_
                             _args8354_))
                          _$e8375_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx8353_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses8369_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses8369_)))))))
            (if (struct-instance? gxc#!case-lambda::t _self83558362_)
                (let ((_e83598384_ (##vector-ref _self83558362_ '1)))
                  (let ((_e83608387_ (##vector-ref _self83558362_ '2)))
                    (let ((_clauses8390_ _e83608387_))
                      (_K83588381_ _clauses8390_))))
                (_E83578366_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self8288_ _args8289_)
      (let ((_self82908297_ _self8288_))
        (let ((_E82928301_
               (lambda () (error '"No clause matching" _self82908297_))))
          (let ((_K82938341_
                 (lambda (_arity8304_)
                   (let ((_arity83058314_ _arity8304_))
                     (let ((_E83088318_
                            (lambda ()
                              (error '"No clause matching" _arity83058314_))))
                       (let ((_try-match83078334_
                              (lambda ()
                                (let ((_K83098324_
                                       (lambda (_arity8322_)
                                         (fx>= (gx#stx-length _args8289_)
                                               _arity8322_))))
                                  (if (##pair? _arity83058314_)
                                      (let ((_hd83108327_
                                             (##car _arity83058314_))
                                            (_tl83118329_
                                             (##cdr _arity83058314_)))
                                        (let ((_arity8332_ _hd83108327_))
                                          (if (##null? _tl83118329_)
                                              (_K83098324_ _arity8332_)
                                              (_E83088318_))))
                                      (_E83088318_))))))
                         (let ((_K83128338_
                                (lambda ()
                                  (fx= (gx#stx-length _args8289_)
                                       _arity8304_))))
                           (if (fixnum? _arity83058314_)
                               (_K83128338_)
                               (_try-match83078334_)))))))))
            (if (struct-instance? gxc#!lambda::t _self82908297_)
                (let ((_e82948344_ (##vector-ref _self82908297_ '1)))
                  (let ((_e82958347_ (##vector-ref _self82908297_ '2)))
                    (let ((_arity8350_ _e82958347_))
                      (_K82938341_ _arity8350_))))
                (_E82928301_)))))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx8095_)
      (let ((_generate-e8097_
             (lambda (_id8277_)
               (let ((_sym8279_ (gxc#identifier-symbol _id8277_)))
                 (let ((_$e8281_ (gxc#optimizer-lookup-type _sym8279_)))
                   (if _$e8281_
                       ((lambda (_type8284_)
                          (let ((_typedecl8286_
                                 (call-method _type8284_ 'typedecl)))
                            (cons 'declare-type
                                  (cons _sym8279_ (cons _typedecl8286_ '())))))
                        _$e8281_)
                       '(begin)))))))
        (let ((_g81008138_
               (lambda (_g81018135_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g81018135_))))
          (let ((_g80998222_
                 (lambda (_g81018141_)
                   (if (gx#stx-pair? _g81018141_)
                       (let ((_e81168143_ (gx#stx-e _g81018141_)))
                         (let ((_hd81178146_ (##car _e81168143_))
                               (_tl81188148_ (##cdr _e81168143_)))
                           (if (gx#stx-pair? _tl81188148_)
                               (let ((_e81198151_ (gx#stx-e _tl81188148_)))
                                 (let ((_hd81208154_ (##car _e81198151_))
                                       (_tl81218156_ (##cdr _e81198151_)))
                                   (if (gx#stx-pair/null? _hd81208154_)
                                       (if (fx>= (gx#stx-length _hd81208154_)
                                                 '0)
                                           (let ((_g14503_
                                                  (gx#syntax-split-splice
                                                   _hd81208154_
                                                   '0)))
                                             (begin
                                               (let ((_g14504_
                                                      (values-count _g14503_)))
                                                 (if (not (fx= _g14504_ 2))
                                                     (error "Context expects 2 values"
                                                            _g14504_)))
                                               (let ((_target81228159_
                                                      (values-ref _g14503_ 0))
                                                     (_tl81248161_
                                                      (values-ref _g14503_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl81248161_)
                                                     (letrec ((_loop81258164_
                                                               (lambda (_hd81238167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id81298169_)
                         (if (gx#stx-pair? _hd81238167_)
                             (let ((_e81268172_ (gx#stx-e _hd81238167_)))
                               (let ((_lp-hd81278175_ (##car _e81268172_))
                                     (_lp-tl81288177_ (##cdr _e81268172_)))
                                 (_loop81258164_
                                  _lp-tl81288177_
                                  (cons _lp-hd81278175_ _id81298169_))))
                             (let ((_id81308180_ (reverse _id81298169_)))
                               (if (gx#stx-pair? _tl81218156_)
                                   (let ((_e81318183_ (gx#stx-e _tl81218156_)))
                                     (let ((_hd81328186_ (##car _e81318183_))
                                           (_tl81338188_ (##cdr _e81318183_)))
                                       (if (gx#stx-null? _tl81338188_)
                                           ((lambda (_L8191_)
                                              (let ((_ids8217_
                                                     (filter gx#stx-e
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g82098212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g82108214_)
                                (cons _g82098212_ _g82108214_))
                              '()
                              _L8191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_types8219_
                                                       (map _generate-e8097_
                                                            _ids8217_)))
                                                  (let ()
                                                    (cons 'begin
                                                          _types8219_)))))
                                            _id81308180_)
                                           (_g81008138_ _g81018141_))))
                                   (_g81008138_ _g81018141_)))))))
               (_loop81258164_ _target81228159_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g81008138_
                                                      _g81018141_)))))
                                           (_g81008138_ _g81018141_))
                                       (_g81008138_ _g81018141_))))
                               (_g81008138_ _g81018141_))))
                       (_g81008138_ _g81018141_)))))
            (let ((_g80988274_
                   (lambda (_g81018225_)
                     (if (gx#stx-pair? _g81018225_)
                         (let ((_e81038227_ (gx#stx-e _g81018225_)))
                           (let ((_hd81048230_ (##car _e81038227_))
                                 (_tl81058232_ (##cdr _e81038227_)))
                             (if (gx#stx-pair? _tl81058232_)
                                 (let ((_e81068235_ (gx#stx-e _tl81058232_)))
                                   (let ((_hd81078238_ (##car _e81068235_))
                                         (_tl81088240_ (##cdr _e81068235_)))
                                     (if (gx#stx-pair? _hd81078238_)
                                         (let ((_e81098243_
                                                (gx#stx-e _hd81078238_)))
                                           (let ((_hd81108246_
                                                  (##car _e81098243_))
                                                 (_tl81118248_
                                                  (##cdr _e81098243_)))
                                             (if (gx#stx-null? _tl81118248_)
                                                 (if (gx#stx-pair?
                                                      _tl81088240_)
                                                     (let ((_e81128251_
                                                            (gx#stx-e
                                                             _tl81088240_)))
                                                       (let ((_hd81138254_
                                                              (##car _e81128251_))
                                                             (_tl81148256_
                                                              (##cdr _e81128251_)))
                                                         (if (gx#stx-null?
                                                              _tl81148256_)
                                                             ((lambda (_L8259_)
                                                                (_generate-e8097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8259_))
                      _hd81108246_)
                     (_g80998222_ _g81018225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g80998222_ _g81018225_))
                                                 (_g80998222_ _g81018225_))))
                                         (_g80998222_ _g81018225_))))
                                 (_g80998222_ _g81018225_))))
                         (_g80998222_ _g81018225_)))))
              (_g80988274_ _stx8095_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx7649_)
      (let ((_g76537755_
             (lambda (_g76547752_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g76547752_))))
        (let ((_g76527762_ (lambda (_g76547758_) ((lambda () '(begin))))))
          (let ((_g76517912_
                 (lambda (_g76547765_)
                   (if (gx#stx-pair? _g76547765_)
                       (let ((_e77127767_ (gx#stx-e _g76547765_)))
                         (let ((_hd77137770_ (##car _e77127767_))
                               (_tl77147772_ (##cdr _e77127767_)))
                           (if (gx#stx-pair? _tl77147772_)
                               (let ((_e77157775_ (gx#stx-e _tl77147772_)))
                                 (let ((_hd77167778_ (##car _e77157775_))
                                       (_tl77177780_ (##cdr _e77157775_)))
                                   (if (gx#stx-pair? _hd77167778_)
                                       (let ((_e77187783_
                                              (gx#stx-e _hd77167778_)))
                                         (let ((_hd77197786_
                                                (##car _e77187783_))
                                               (_tl77207788_
                                                (##cdr _e77187783_)))
                                           (if (gx#identifier? _hd77197786_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd77197786_)
                                                   (if (gx#stx-pair?
                                                        _tl77207788_)
                                                       (let ((_e77217791_
                                                              (gx#stx-e
                                                               _tl77207788_)))
                                                         (let ((_hd77227794_
                                                                (##car _e77217791_))
                                                               (_tl77237796_
                                                                (##cdr _e77217791_)))
                                                           (if (gx#stx-null?
                                                                _tl77237796_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl77177780_)
                           (let ((_e77247799_ (gx#stx-e _tl77177780_)))
                             (let ((_hd77257802_ (##car _e77247799_))
                                   (_tl77267804_ (##cdr _e77247799_)))
                               (if (gx#stx-pair? _hd77257802_)
                                   (let ((_e77277807_ (gx#stx-e _hd77257802_)))
                                     (let ((_hd77287810_ (##car _e77277807_))
                                           (_tl77297812_ (##cdr _e77277807_)))
                                       (if (gx#identifier? _hd77287810_)
                                           (if (gx#stx-eq? '%#ref _hd77287810_)
                                               (if (gx#stx-pair? _tl77297812_)
                                                   (let ((_e77307815_
                                                          (gx#stx-e
                                                           _tl77297812_)))
                                                     (let ((_hd77317818_
                                                            (##car _e77307815_))
                                                           (_tl77327820_
                                                            (##cdr _e77307815_)))
                                                       (if (gx#stx-null?
                                                            _tl77327820_)
                                                           (if (gx#stx-pair?
                                                                _tl77267804_)
                                                               (let ((_e77337823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl77267804_)))
                         (let ((_hd77347826_ (##car _e77337823_))
                               (_tl77357828_ (##cdr _e77337823_)))
                           (if (gx#stx-pair? _hd77347826_)
                               (let ((_e77367831_ (gx#stx-e _hd77347826_)))
                                 (let ((_hd77377834_ (##car _e77367831_))
                                       (_tl77387836_ (##cdr _e77367831_)))
                                   (if (gx#identifier? _hd77377834_)
                                       (if (gx#stx-eq? '%#quote _hd77377834_)
                                           (if (gx#stx-pair? _tl77387836_)
                                               (let ((_e77397839_
                                                      (gx#stx-e _tl77387836_)))
                                                 (let ((_hd77407842_
                                                        (##car _e77397839_))
                                                       (_tl77417844_
                                                        (##cdr _e77397839_)))
                                                   (if (gx#stx-null?
                                                        _tl77417844_)
                                                       (if (gx#stx-pair?
                                                            _tl77357828_)
                                                           (let ((_e77427847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl77357828_)))
                     (let ((_hd77437850_ (##car _e77427847_))
                           (_tl77447852_ (##cdr _e77427847_)))
                       (if (gx#stx-pair? _hd77437850_)
                           (let ((_e77457855_ (gx#stx-e _hd77437850_)))
                             (let ((_hd77467858_ (##car _e77457855_))
                                   (_tl77477860_ (##cdr _e77457855_)))
                               (if (gx#identifier? _hd77467858_)
                                   (if (gx#stx-eq? '%#ref _hd77467858_)
                                       (if (gx#stx-pair? _tl77477860_)
                                           (let ((_e77487863_
                                                  (gx#stx-e _tl77477860_)))
                                             (let ((_hd77497866_
                                                    (##car _e77487863_))
                                                   (_tl77507868_
                                                    (##cdr _e77487863_)))
                                               (if (gx#stx-null? _tl77507868_)
                                                   (if (gx#stx-null?
                                                        _tl77447852_)
                                                       ((lambda (_L7871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7872_
                         _L7873_
                         _L7874_)
                  (if (eq? (gxc#identifier-symbol
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#identifier-symbol _L7873_)
                                  (cons (gx#stx-e _L7872_)
                                        (cons (gxc#identifier-symbol _L7871_)
                                              (cons '#f '())))))
                      (_g76527762_ _g76547765_)))
                _hd77497866_
                _hd77407842_
                _hd77317818_
                _hd77227794_)
               (_g76527762_ _g76547765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g76527762_ _g76547765_))))
                                           (_g76527762_ _g76547765_))
                                       (_g76527762_ _g76547765_))
                                   (_g76527762_ _g76547765_))))
                           (_g76527762_ _g76547765_))))
                   (_g76527762_ _g76547765_))
               (_g76527762_ _g76547765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g76527762_ _g76547765_))
                                           (_g76527762_ _g76547765_))
                                       (_g76527762_ _g76547765_))))
                               (_g76527762_ _g76547765_))))
                       (_g76527762_ _g76547765_))
                   (_g76527762_ _g76547765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g76527762_ _g76547765_))
                                               (_g76527762_ _g76547765_))
                                           (_g76527762_ _g76547765_))))
                                   (_g76527762_ _g76547765_))))
                           (_g76527762_ _g76547765_))
                       (_g76527762_ _g76547765_))))
               (_g76527762_ _g76547765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g76527762_ _g76547765_))
                                               (_g76527762_ _g76547765_))))
                                       (_g76527762_ _g76547765_))))
                               (_g76527762_ _g76547765_))))
                       (_g76527762_ _g76547765_)))))
            (let ((_g76508092_
                   (lambda (_g76547915_)
                     (if (gx#stx-pair? _g76547915_)
                         (let ((_e76607917_ (gx#stx-e _g76547915_)))
                           (let ((_hd76617920_ (##car _e76607917_))
                                 (_tl76627922_ (##cdr _e76607917_)))
                             (if (gx#stx-pair? _tl76627922_)
                                 (let ((_e76637925_ (gx#stx-e _tl76627922_)))
                                   (let ((_hd76647928_ (##car _e76637925_))
                                         (_tl76657930_ (##cdr _e76637925_)))
                                     (if (gx#stx-pair? _hd76647928_)
                                         (let ((_e76667933_
                                                (gx#stx-e _hd76647928_)))
                                           (let ((_hd76677936_
                                                  (##car _e76667933_))
                                                 (_tl76687938_
                                                  (##cdr _e76667933_)))
                                             (if (gx#identifier? _hd76677936_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd76677936_)
                                                     (if (gx#stx-pair?
                                                          _tl76687938_)
                                                         (let ((_e76697941_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl76687938_)))
                   (let ((_hd76707944_ (##car _e76697941_))
                         (_tl76717946_ (##cdr _e76697941_)))
                     (if (gx#stx-null? _tl76717946_)
                         (if (gx#stx-pair? _tl76657930_)
                             (let ((_e76727949_ (gx#stx-e _tl76657930_)))
                               (let ((_hd76737952_ (##car _e76727949_))
                                     (_tl76747954_ (##cdr _e76727949_)))
                                 (if (gx#stx-pair? _hd76737952_)
                                     (let ((_e76757957_
                                            (gx#stx-e _hd76737952_)))
                                       (let ((_hd76767960_ (##car _e76757957_))
                                             (_tl76777962_
                                              (##cdr _e76757957_)))
                                         (if (gx#identifier? _hd76767960_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd76767960_)
                                                 (if (gx#stx-pair?
                                                      _tl76777962_)
                                                     (let ((_e76787965_
                                                            (gx#stx-e
                                                             _tl76777962_)))
                                                       (let ((_hd76797968_
                                                              (##car _e76787965_))
                                                             (_tl76807970_
                                                              (##cdr _e76787965_)))
                                                         (if (gx#stx-null?
                                                              _tl76807970_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl76747954_)
                         (let ((_e76817973_ (gx#stx-e _tl76747954_)))
                           (let ((_hd76827976_ (##car _e76817973_))
                                 (_tl76837978_ (##cdr _e76817973_)))
                             (if (gx#stx-pair? _hd76827976_)
                                 (let ((_e76847981_ (gx#stx-e _hd76827976_)))
                                   (let ((_hd76857984_ (##car _e76847981_))
                                         (_tl76867986_ (##cdr _e76847981_)))
                                     (if (gx#identifier? _hd76857984_)
                                         (if (gx#stx-eq? '%#quote _hd76857984_)
                                             (if (gx#stx-pair? _tl76867986_)
                                                 (let ((_e76877989_
                                                        (gx#stx-e
                                                         _tl76867986_)))
                                                   (let ((_hd76887992_
                                                          (##car _e76877989_))
                                                         (_tl76897994_
                                                          (##cdr _e76877989_)))
                                                     (if (gx#stx-null?
                                                          _tl76897994_)
                                                         (if (gx#stx-pair?
                                                              _tl76837978_)
                                                             (let ((_e76907997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl76837978_)))
                       (let ((_hd76918000_ (##car _e76907997_))
                             (_tl76928002_ (##cdr _e76907997_)))
                         (if (gx#stx-pair? _hd76918000_)
                             (let ((_e76938005_ (gx#stx-e _hd76918000_)))
                               (let ((_hd76948008_ (##car _e76938005_))
                                     (_tl76958010_ (##cdr _e76938005_)))
                                 (if (gx#identifier? _hd76948008_)
                                     (if (gx#stx-eq? '%#ref _hd76948008_)
                                         (if (gx#stx-pair? _tl76958010_)
                                             (let ((_e76968013_
                                                    (gx#stx-e _tl76958010_)))
                                               (let ((_hd76978016_
                                                      (##car _e76968013_))
                                                     (_tl76988018_
                                                      (##cdr _e76968013_)))
                                                 (if (gx#stx-null?
                                                      _tl76988018_)
                                                     (if (gx#stx-pair?
                                                          _tl76928002_)
                                                         (let ((_e76998021_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl76928002_)))
                   (let ((_hd77008024_ (##car _e76998021_))
                         (_tl77018026_ (##cdr _e76998021_)))
                     (if (gx#stx-pair? _hd77008024_)
                         (let ((_e77028029_ (gx#stx-e _hd77008024_)))
                           (let ((_hd77038032_ (##car _e77028029_))
                                 (_tl77048034_ (##cdr _e77028029_)))
                             (if (gx#identifier? _hd77038032_)
                                 (if (gx#stx-eq? '%#quote _hd77038032_)
                                     (if (gx#stx-pair? _tl77048034_)
                                         (let ((_e77058037_
                                                (gx#stx-e _tl77048034_)))
                                           (let ((_hd77068040_
                                                  (##car _e77058037_))
                                                 (_tl77078042_
                                                  (##cdr _e77058037_)))
                                             (if (gx#stx-null? _tl77078042_)
                                                 (if (gx#stx-null?
                                                      _tl77018026_)
                                                     ((lambda (_L8045_
                                                               _L8046_
                                                               _L8047_
                                                               _L8048_
                                                               _L8049_)
                                                        (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8049_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#identifier-symbol _L8048_)
                                (cons (gx#stx-e _L8047_)
                                      (cons (gxc#identifier-symbol _L8046_)
                                            (cons (gx#stx-e _L8045_) '())))))
                    (_g76517912_ _g76547915_)))
              _hd77068040_
              _hd76978016_
              _hd76887992_
              _hd76797968_
              _hd76707944_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g76517912_ _g76547915_))
                                                 (_g76517912_ _g76547915_))))
                                         (_g76517912_ _g76547915_))
                                     (_g76517912_ _g76547915_))
                                 (_g76517912_ _g76547915_))))
                         (_g76517912_ _g76547915_))))
                 (_g76517912_ _g76547915_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g76517912_
                                                      _g76547915_))))
                                             (_g76517912_ _g76547915_))
                                         (_g76517912_ _g76547915_))
                                     (_g76517912_ _g76547915_))))
                             (_g76517912_ _g76547915_))))
                     (_g76517912_ _g76547915_))
                 (_g76517912_ _g76547915_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g76517912_ _g76547915_))
                                             (_g76517912_ _g76547915_))
                                         (_g76517912_ _g76547915_))))
                                 (_g76517912_ _g76547915_))))
                         (_g76517912_ _g76547915_))
                     (_g76517912_ _g76547915_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g76517912_ _g76547915_))
                                                 (_g76517912_ _g76547915_))
                                             (_g76517912_ _g76547915_))))
                                     (_g76517912_ _g76547915_))))
                             (_g76517912_ _g76547915_))
                         (_g76517912_ _g76547915_))))
                 (_g76517912_ _g76547915_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g76517912_ _g76547915_))
                                                 (_g76517912_ _g76547915_))))
                                         (_g76517912_ _g76547915_))))
                                 (_g76517912_ _g76547915_))))
                         (_g76517912_ _g76547915_)))))
              (_g76508092_ _stx7649_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self7625_)
      (let ((_self76267632_ _self7625_))
        (let ((_E76287636_
               (lambda () (error '"No clause matching" _self76267632_))))
          (let ((_K76297641_
                 (lambda (_alias-id7639_)
                   (cons '@alias (cons _alias-id7639_ '())))))
            (if (struct-instance? gxc#!alias::t _self76267632_)
                (let ((_e76307644_ (##vector-ref _self76267632_ '1)))
                  (let ((_alias-id7647_ _e76307644_))
                    (_K76297641_ _alias-id7647_)))
                (_E76287636_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self7569_)
      (let ((_self75707581_ _self7569_))
        (let ((_E75727585_
               (lambda () (error '"No clause matching" _self75707581_))))
          (let ((_K75737594_
                 (lambda (_plist7588_
                          _ctor7589_
                          _fields7590_
                          _super7591_
                          _type-id7592_)
                   (cons '@struct-type
                         (cons _type-id7592_
                               (cons _super7591_
                                     (cons _fields7590_
                                           (cons _ctor7589_
                                                 (cons _plist7588_ '())))))))))
            (if (struct-instance? gxc#!struct-type::t _self75707581_)
                (let ((_e75747597_ (##vector-ref _self75707581_ '1)))
                  (let ((_type-id7600_ _e75747597_))
                    (let ((_e75757602_ (##vector-ref _self75707581_ '2)))
                      (let ((_super7605_ _e75757602_))
                        (let ((_e75767607_ (##vector-ref _self75707581_ '3)))
                          (let ((_fields7610_ _e75767607_))
                            (let ((_e75777612_
                                   (##vector-ref _self75707581_ '4)))
                              (let ((_e75787615_
                                     (##vector-ref _self75707581_ '5)))
                                (let ((_ctor7618_ _e75787615_))
                                  (let ((_e75797620_
                                         (##vector-ref _self75707581_ '6)))
                                    (let ((_plist7623_ _e75797620_))
                                      (_K75737594_
                                       _plist7623_
                                       _ctor7618_
                                       _fields7610_
                                       _super7605_
                                       _type-id7600_))))))))))))
                (_E75727585_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self7545_)
      (let ((_self75467552_ _self7545_))
        (let ((_E75487556_
               (lambda () (error '"No clause matching" _self75467552_))))
          (let ((_K75497561_
                 (lambda (_struct-t7559_)
                   (cons '@struct-pred (cons _struct-t7559_ '())))))
            (if (struct-instance? gxc#!struct-pred::t _self75467552_)
                (let ((_e75507564_ (##vector-ref _self75467552_ '1)))
                  (let ((_struct-t7567_ _e75507564_))
                    (_K75497561_ _struct-t7567_)))
                (_E75487556_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self7521_)
      (let ((_self75227528_ _self7521_))
        (let ((_E75247532_
               (lambda () (error '"No clause matching" _self75227528_))))
          (let ((_K75257537_
                 (lambda (_struct-t7535_)
                   (cons '@struct-cons (cons _struct-t7535_ '())))))
            (if (struct-instance? gxc#!struct-cons::t _self75227528_)
                (let ((_e75267540_ (##vector-ref _self75227528_ '1)))
                  (let ((_struct-t7543_ _e75267540_))
                    (_K75257537_ _struct-t7543_)))
                (_E75247532_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self7490_)
      (let ((_self74917498_ _self7490_))
        (let ((_E74937502_
               (lambda () (error '"No clause matching" _self74917498_))))
          (let ((_K74947508_
                 (lambda (_off7505_ _struct-t7506_)
                   (cons '@struct-getf
                         (cons _struct-t7506_ (cons _off7505_ '()))))))
            (if (struct-instance? gxc#!struct-getf::t _self74917498_)
                (let ((_e74957511_ (##vector-ref _self74917498_ '1)))
                  (let ((_struct-t7514_ _e74957511_))
                    (let ((_e74967516_ (##vector-ref _self74917498_ '2)))
                      (let ((_off7519_ _e74967516_))
                        (_K74947508_ _off7519_ _struct-t7514_)))))
                (_E74937502_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self7459_)
      (let ((_self74607467_ _self7459_))
        (let ((_E74627471_
               (lambda () (error '"No clause matching" _self74607467_))))
          (let ((_K74637477_
                 (lambda (_off7474_ _struct-t7475_)
                   (cons '@struct-setf
                         (cons _struct-t7475_ (cons _off7474_ '()))))))
            (if (struct-instance? gxc#!struct-setf::t _self74607467_)
                (let ((_e74647480_ (##vector-ref _self74607467_ '1)))
                  (let ((_struct-t7483_ _e74647480_))
                    (let ((_e74657485_ (##vector-ref _self74607467_ '2)))
                      (let ((_off7488_ _e74657485_))
                        (_K74637477_ _off7488_ _struct-t7483_)))))
                (_E74627471_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self7424_)
      (let ((_self74257433_ _self7424_))
        (let ((_E74277437_
               (lambda () (error '"No clause matching" _self74257433_))))
          (let ((_K74287443_
                 (lambda (_dispatch7440_ _arity7441_)
                   (cons '@lambda
                         (cons _arity7441_ (cons _dispatch7440_ '()))))))
            (if (struct-instance? gxc#!lambda::t _self74257433_)
                (let ((_e74297446_ (##vector-ref _self74257433_ '1)))
                  (let ((_e74307449_ (##vector-ref _self74257433_ '2)))
                    (let ((_arity7452_ _e74307449_))
                      (let ((_e74317454_ (##vector-ref _self74257433_ '3)))
                        (let ((_dispatch7457_ _e74317454_))
                          (_K74287443_ _dispatch7457_ _arity7452_))))))
                (_E74277437_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self7357_)
      (let ((_clause-e7359_
             (lambda (_clause7389_)
               (let ((_clause73907398_ _clause7389_))
                 (let ((_E73927402_
                        (lambda ()
                          (error '"No clause matching" _clause73907398_))))
                   (let ((_K73937408_
                          (lambda (_dispatch7405_ _arity7406_)
                            (cons _arity7406_ (cons _dispatch7405_ '())))))
                     (if (struct-instance? gxc#!lambda::t _clause73907398_)
                         (let ((_e73947411_
                                (##vector-ref _clause73907398_ '1)))
                           (let ((_e73957414_
                                  (##vector-ref _clause73907398_ '2)))
                             (let ((_arity7417_ _e73957414_))
                               (let ((_e73967419_
                                      (##vector-ref _clause73907398_ '3)))
                                 (let ((_dispatch7422_ _e73967419_))
                                   (_K73937408_
                                    _dispatch7422_
                                    _arity7417_))))))
                         (_E73927402_))))))))
        (let ((_self73607367_ _self7357_))
          (let ((_E73627371_
                 (lambda () (error '"No clause matching" _self73607367_))))
            (let ((_K73637378_
                   (lambda (_clauses7374_)
                     (let ((_clauses7376_ (map _clause-e7359_ _clauses7374_)))
                       (cons '@case-lambda _clauses7376_)))))
              (if (struct-instance? gxc#!case-lambda::t _self73607367_)
                  (let ((_e73647381_ (##vector-ref _self73607367_ '1)))
                    (let ((_e73657384_ (##vector-ref _self73607367_ '2)))
                      (let ((_clauses7387_ _e73657384_))
                        (_K73637378_ _clauses7387_))))
                  (_E73627371_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx7352_)
      (let ((_$e7354_ (gx#resolve-identifier__0 _stx7352_)))
        (if _$e7354_
            (##structure-ref _$e7354_ '1 gx#binding::t '#f)
            (gx#stx-e _stx7352_))))))
