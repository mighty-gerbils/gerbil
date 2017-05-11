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
    (lambda _$args15987_
      (apply make-struct-instance gxc#optimizer-info::t _$args15987_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self15985_)
      (direct-struct-instance-init!
       _self15985_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj15989 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj15989) __obj15989))))))
  (define gxc#optimize!
    (lambda (_ctx15980_)
      (begin
        (gxc#optimizer-load-ssxi-deps _ctx15980_)
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '2
          gxc#optimizer-info::t
          '#f)
         (##structure-ref _ctx15980_ '1 gx#expander-context::t '#f)
         '#t)
        (let ((_code15982_
               (gxc#optimize-source
                (##structure-ref _ctx15980_ '11 gx#module-context::t '#f))))
          (##structure-set!
           _ctx15980_
           _code15982_
           '11
           gx#module-context::t
           '#f)))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx15941_)
      ((letrec ((_lp15943_
                 (lambda (_rest15945_)
                   (let ((_rest1594615954_ _rest15945_))
                     (let ((_E1594915958_
                            (lambda ()
                              (error '"No clause matching" _rest1594615954_))))
                       (let ((_else1594815962_ (lambda () (void))))
                         (let ((_K1595015968_
                                (lambda (_rest15965_ _hd15966_)
                                  (if (##structure-instance-of?
                                       _hd15966_
                                       'gx#module-context::t)
                                      (begin
                                        (if (hash-get
                                             (##structure-ref
                                              (gxc#current-compile-optimizer-info)
                                              '2
                                              gxc#optimizer-info::t
                                              '#f)
                                             (##structure-ref
                                              _hd15966_
                                              '1
                                              gx#expander-context::t
                                              '#f))
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx15941_)
                                              (_lp15943_
                                               (##structure-ref
                                                _hd15966_
                                                '8
                                                gx#module-context::t
                                                '#f))
                                              (gxc#optimizer-load-ssxi
                                               _hd15966_)))
                                        (_lp15943_ _rest15965_))
                                      (if (##structure-direct-instance-of?
                                           _hd15966_
                                           'gx#module-import::t)
                                          (_lp15943_
                                           (cons (##structure-ref
                                                  _hd15966_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _rest15965_))
                                          (if (##structure-direct-instance-of?
                                               _hd15966_
                                               'gx#module-export::t)
                                              (_lp15943_
                                               (cons (##structure-ref
                                                      _hd15966_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _rest15965_))
                                              (if (##structure-direct-instance-of?
                                                   _hd15966_
                                                   'gx#import-set::t)
                                                  (_lp15943_
                                                   (cons (##structure-ref
                                                          _hd15966_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _rest15965_))
                                                  (error '"Unexpected module import"
                                                         _hd15966_))))))))
                           (if (##pair? _rest1594615954_)
                               (let ((_hd1595115971_ (##car _rest1594615954_))
                                     (_tl1595215973_ (##cdr _rest1594615954_)))
                                 (let ((_hd15976_ _hd1595115971_))
                                   (let ((_rest15978_ _tl1595215973_))
                                     (_K1595015968_ _rest15978_ _hd15976_))))
                               (_else1594815962_)))))))))
         _lp15943_)
       (##structure-ref _ctx15941_ '8 gx#module-context::t '#f))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx15936_)
      (let ((_$e15938_ (gx#core-context-prelude__opt-lambda9767 _ctx15936_)))
        (if _$e15938_ (gxc#optimizer-load-ssxi _$e15938_) (void)))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx15916_)
      (if (if (##structure-instance-of? _ctx15916_ 'gx#module-context::t)
              (list? (##structure-ref _ctx15916_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht15918_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id15920_
                   (##structure-ref _ctx15916_ '1 gx#expander-context::t '#f)))
              (let ((_mod15922_ (hash-get _ht15918_ _id15920_)))
                (let ()
                  (let ((_$e15925_ _mod15922_))
                    (if _$e15925_
                        _$e15925_
                        (let ((_mod15928_
                               (gxc#optimizer-import-ssxi _ctx15916_)))
                          (let ((_val15933_
                                 (let ((_$e15930_ _mod15928_))
                                   (if _$e15930_ _$e15930_ '#!void))))
                            (let ()
                              (begin
                                (hash-put! _ht15918_ _id15920_ _val15933_)
                                _val15933_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx15893_)
      (let ((_catch-e15895_
             (lambda (_exn15914_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx15893_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn15914_))
                     '#!void)
                 '#f))))
        (let ((_import-e15896_
               (lambda ()
                 (let ((_str-id15899_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx15893_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path15907_
                          (let ((_odir1590015902_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1590015902_
                                (let ((_odir15905_ _odir1590015902_))
                                  (path-expand
                                   (string-append _str-id15899_ '".ss")
                                   _odir15905_))
                                '#f))))
                     (let ((_library-path15909_
                            (string->symbol
                             (string-append '":" _str-id15899_))))
                       (let ((_ssxi-path15911_
                              (if (if _artefact-path15907_
                                      (file-exists? _artefact-path15907_)
                                      '#f)
                                  _artefact-path15907_
                                  _library-path15909_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path15911_)
                             (gx#import-module__opt-lambda9802
                              _ssxi-path15911_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx15893_ '1 gx#expander-context::t '#f)
              (with-catch _catch-e15895_ _import-e15896_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args15890_
      (apply make-struct-instance gxc#!type::t _$args15890_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args15887_
      (apply make-struct-instance gxc#!alias::t _$args15887_)))
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
    (lambda _$args15884_
      (apply make-struct-instance gxc#!struct-type::t _$args15884_)))
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
    (lambda _$args15881_
      (apply make-struct-instance gxc#!procedure::t _$args15881_)))
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
    (lambda _$args15878_
      (apply make-struct-instance gxc#!struct-pred::t _$args15878_)))
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
    (lambda _$args15875_
      (apply make-struct-instance gxc#!struct-cons::t _$args15875_)))
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
    (lambda _$args15872_
      (apply make-struct-instance gxc#!struct-getf::t _$args15872_)))
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
    (lambda _$args15869_
      (apply make-struct-instance gxc#!struct-setf::t _$args15869_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (define gxc#!lambda::t
    (make-struct-type 'gxc#!lambda::t gxc#!procedure::t '2 '!lambda '() '#f))
  (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
  (define gxc#make-!lambda
    (lambda _$args15866_
      (apply make-struct-instance gxc#!lambda::t _$args15866_)))
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
    (lambda _$args15863_
      (apply make-struct-instance gxc#!case-lambda::t _$args15863_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self15855_
             _id15856_
             _super15857_
             _fields15858_
             _xfields15859_
             _ctor15860_
             _plist15861_)
      (direct-struct-instance-init!
       _self15855_
       _id15856_
       _super15857_
       _fields15858_
       _xfields15859_
       _ctor15860_
       _plist15861_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type15848_)
      (let ((_$e15850_
             (##structure-ref _type15848_ '7 gxc#!struct-type::t '#f)))
        (if _$e15850_
            (values _$e15850_)
            (let ((_vtab15853_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type15848_
                 _vtab15853_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab15853_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type15839_ _method15840_)
      (let ((_vtab1584115843_
             (##structure-ref _type15839_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1584115843_
            (let ((_vtab15846_ _vtab1584115843_))
              (hash-get _vtab15846_ _method15840_))
            '#f))))
  (define gxc#optimizer-declare-type!
    (lambda (_sym15836_ _type15837_)
      (begin
        (if (##structure-instance-of? _type15837_ 'gxc#!type::t)
            '#!void
            (error '"bad declaration: expected !type" _sym15836_ _type15837_))
        (gxc#verbose
         '"declare-type "
         _sym15836_
         '" "
         (##vector->list _type15837_))
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '1
          gxc#optimizer-info::t
          '#f)
         _sym15836_
         _type15837_))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda15811
      (lambda (_type-t15813_ _method15814_ _sym15815_ _rebind?15816_)
        (let ((_type15818_ (gxc#optimizer-resolve-type _type-t15813_)))
          (if (##structure-instance-of? _type15818_ 'gxc#!struct-type::t)
              (let ((_vtab15820_ (gxc#!struct-type-vtab _type15818_)))
                (if _rebind?15816_
                    (if (hash-key? _vtab15820_ _method15814_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t15813_
                         '" "
                         _method15814_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t15813_
                         '" "
                         _method15814_))
                    (if (hash-key? _vtab15820_ _method15814_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t15813_
                           '" "
                           _method15814_
                           '" => "
                           _sym15815_)
                          (hash-put! _vtab15820_ _method15814_ _sym15815_)))))
              (if (not _type15818_)
                  (gxc#verbose '"declare-method: unknown type " _type-t15813_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t15813_
                         _type15818_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t15825_ _method15826_ _sym15827_)
          (let ((_rebind?15829_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda15811
             _type-t15825_
             _method15826_
             _sym15827_
             _rebind?15829_))))
      (define gxc#optimizer-declare-method!
        (lambda _g15993_
          (let ((_g15992_ (length _g15993_)))
            (cond ((fx= _g15992_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g15993_))
                  ((fx= _g15992_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda15811
                          _g15993_))
                  (else (error "No clause matching arguments" _g15993_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym15810_)
      (hash-get
       (##structure-ref
        (gxc#current-compile-optimizer-info)
        '1
        gxc#optimizer-info::t
        '#f)
       _sym15810_)))
  (define gxc#optimizer-resolve-type
    (lambda (_sym15802_)
      (let ((_type1580315805_ (gxc#optimizer-lookup-type _sym15802_)))
        (if _type1580315805_
            (let ((_type15808_ _type1580315805_))
              (if (##structure-instance-of? _type15808_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type15808_ '1 gxc#!type::t '#f))
                  _type15808_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t15797_ _method15798_)
      (let ((_type15800_ (gxc#optimizer-resolve-type _type-t15797_)))
        (if (##structure-instance-of? _type15800_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type15800_ _method15798_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx15793_)
      (let ((_stx15795_ (gxc#apply-lift-top-lambdas _stx15793_)))
        (begin
          (gxc#apply-collect-type-info _stx15795_)
          (gxc#apply-optimize-call _stx15795_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl15790_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl15790_ '%#lambda false)
           (hash-put! _tbl15790_ '%#case-lambda false)
           (hash-put! _tbl15790_ '%#let-values false)
           (hash-put! _tbl15790_ '%#letrec-values false)
           (hash-put! _tbl15790_ '%#letrec*-values false)
           (hash-put! _tbl15790_ '%#quote false)
           (hash-put! _tbl15790_ '%#quote-syntax false)
           (hash-put! _tbl15790_ '%#call false)
           (hash-put! _tbl15790_ '%#if false)
           (hash-put! _tbl15790_ '%#ref false)
           (hash-put! _tbl15790_ '%#set! false)
           (hash-put! _tbl15790_ '%#struct-instance? false)
           (hash-put! _tbl15790_ '%#struct-direct-instance? false)
           (hash-put! _tbl15790_ '%#struct-ref false)
           (hash-put! _tbl15790_ '%#struct-set! false)
           _tbl15790_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl15786_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl15786_ '%#begin false)
           (hash-put! _tbl15786_ '%#begin-syntax false)
           (hash-put! _tbl15786_ '%#begin-foreign false)
           (hash-put! _tbl15786_ '%#module false)
           (hash-put! _tbl15786_ '%#import false)
           (hash-put! _tbl15786_ '%#export false)
           (hash-put! _tbl15786_ '%#provide false)
           (hash-put! _tbl15786_ '%#extern false)
           (hash-put! _tbl15786_ '%#define-values false)
           (hash-put! _tbl15786_ '%#define-syntax false)
           (hash-put! _tbl15786_ '%#define-alias false)
           (hash-put! _tbl15786_ '%#declare false)
           _tbl15786_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl15782_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15782_ (force gxc#&false-special-form))
           (hash-copy! _tbl15782_ (force gxc#&false-expression))
           _tbl15782_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl15778_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl15778_ '%#lambda gxc#xform-identity)
           (hash-put! _tbl15778_ '%#case-lambda gxc#xform-identity)
           (hash-put! _tbl15778_ '%#let-values gxc#xform-identity)
           (hash-put! _tbl15778_ '%#letrec-values gxc#xform-identity)
           (hash-put! _tbl15778_ '%#letrec*-values gxc#xform-identity)
           (hash-put! _tbl15778_ '%#quote gxc#xform-identity)
           (hash-put! _tbl15778_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl15778_ '%#call gxc#xform-identity)
           (hash-put! _tbl15778_ '%#if gxc#xform-identity)
           (hash-put! _tbl15778_ '%#ref gxc#xform-identity)
           (hash-put! _tbl15778_ '%#set! gxc#xform-identity)
           (hash-put! _tbl15778_ '%#struct-instance? gxc#xform-identity)
           (hash-put! _tbl15778_ '%#struct-direct-instance? gxc#xform-identity)
           (hash-put! _tbl15778_ '%#struct-ref gxc#xform-identity)
           (hash-put! _tbl15778_ '%#struct-set! gxc#xform-identity)
           _tbl15778_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl15774_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl15774_ '%#begin gxc#xform-identity)
           (hash-put! _tbl15774_ '%#begin-syntax gxc#xform-identity)
           (hash-put! _tbl15774_ '%#begin-foreign gxc#xform-identity)
           (hash-put! _tbl15774_ '%#module gxc#xform-identity)
           (hash-put! _tbl15774_ '%#import gxc#xform-identity)
           (hash-put! _tbl15774_ '%#export gxc#xform-identity)
           (hash-put! _tbl15774_ '%#provide gxc#xform-identity)
           (hash-put! _tbl15774_ '%#extern gxc#xform-identity)
           (hash-put! _tbl15774_ '%#define-values gxc#xform-identity)
           (hash-put! _tbl15774_ '%#define-syntax gxc#xform-identity)
           (hash-put! _tbl15774_ '%#define-alias gxc#xform-identity)
           (hash-put! _tbl15774_ '%#declare gxc#xform-identity)
           _tbl15774_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl15770_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15770_ (force gxc#&identity-special-form))
           (hash-copy! _tbl15770_ (force gxc#&identity-expression))
           _tbl15770_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl15766_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl15766_ '%#lambda gxc#xform-lambda%)
           (hash-put! _tbl15766_ '%#case-lambda gxc#xform-case-lambda%)
           (hash-put! _tbl15766_ '%#let-values gxc#xform-let-values%)
           (hash-put! _tbl15766_ '%#letrec-values gxc#xform-let-values%)
           (hash-put! _tbl15766_ '%#letrec*-values gxc#xform-let-values%)
           (hash-put! _tbl15766_ '%#quote gxc#xform-identity)
           (hash-put! _tbl15766_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl15766_ '%#call gxc#xform-call%)
           (hash-put! _tbl15766_ '%#if gxc#xform-if%)
           (hash-put! _tbl15766_ '%#ref gxc#xform-identity)
           (hash-put! _tbl15766_ '%#set! gxc#xform-setq%)
           (hash-put! _tbl15766_ '%#struct-instance? gxc#xform-struct-op%)
           (hash-put!
            _tbl15766_
            '%#struct-direct-instance?
            gxc#xform-struct-op%)
           (hash-put! _tbl15766_ '%#struct-ref gxc#xform-struct-op%)
           (hash-put! _tbl15766_ '%#struct-set! gxc#xform-struct-op%)
           _tbl15766_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl15762_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15762_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl15762_ (force gxc#&identity))
           (hash-put! _tbl15762_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl15762_ '%#module gxc#xform-module%)
           (hash-put! _tbl15762_ '%#define-values gxc#xform-define-values%)
           _tbl15762_)))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl15758_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15758_ (force gxc#&identity))
           (hash-put! _tbl15758_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl15758_ '%#module gxc#xform-module%)
           (hash-put!
            _tbl15758_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           _tbl15758_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx15751_ . _args15753_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15751_ _args15753_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl15748_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15748_ (force gxc#&basic-xform-expression))
           (hash-put! _tbl15748_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl15748_ '%#ref gxc#expression-subst-ref%)
           _tbl15748_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx15741_ . _args15743_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15741_ _args15743_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl15738_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15738_ (force gxc#&void-expression))
           (hash-copy! _tbl15738_ (force gxc#&void-special-form))
           (hash-put! _tbl15738_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl15738_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl15738_
            '%#define-values
            gxc#collect-type-define-values%)
           (hash-put! _tbl15738_ '%#call gxc#collect-type-call%)
           _tbl15738_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx15731_ . _args15733_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15731_ _args15733_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl15728_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15728_ (force gxc#&false))
           (hash-put! _tbl15728_ '%#begin gxc#basic-expression-type-begin%)
           (hash-put! _tbl15728_ '%#lambda gxc#basic-expression-type-lambda%)
           (hash-put!
            _tbl15728_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (hash-put! _tbl15728_ '%#call gxc#basic-expression-type-call%)
           (hash-put! _tbl15728_ '%#ref gxc#basic-expression-type-ref%)
           _tbl15728_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx15721_ . _args15723_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15721_ _args15723_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl15718_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15718_ (force gxc#&basic-xform))
           (hash-put! _tbl15718_ '%#call gxc#optimize-call%)
           _tbl15718_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx15711_ . _args15713_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15711_ _args15713_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl15708_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15708_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl15708_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl15708_ '%#module gxc#generate-ssxi-module%)
           (hash-put!
            _tbl15708_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (hash-put! _tbl15708_ '%#call gxc#generate-ssxi-call%)
           _tbl15708_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx15701_ . _args15703_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15701_ _args15703_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx15698_ . _args15699_) _stx15698_))
  (define gxc#xform-wrap-source
    (lambda (_stx15695_ _src-stx15696_)
      (gx#stx-wrap-source _stx15695_ (gx#stx-source _src-stx15696_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args15689_)
      (lambda (_g1569015692_)
        (apply gxc#compile-e _g1569015692_ _args15689_))))
  (define gxc#xform-begin%
    (lambda (_stx15648_ . _args15649_)
      (let ((_g1565115661_
             (lambda (_g1565215658_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1565215658_))))
        (let ((_g1565015686_
               (lambda (_g1565215664_)
                 (if (gx#stx-pair? _g1565215664_)
                     (let ((_e1565415666_ (gx#stx-e _g1565215664_)))
                       (let ((_hd1565515669_ (##car _e1565415666_))
                             (_tl1565615671_ (##cdr _e1565415666_)))
                         ((lambda (_L15674_)
                            (let ((_forms15684_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args15649_)
                                    _L15674_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms15684_)
                               _stx15648_)))
                          _tl1565615671_)))
                     (_g1565115661_ _g1565215664_)))))
          (_g1565015686_ _stx15648_)))))
  (define gxc#xform-module%
    (lambda (_stx15585_ . _args15586_)
      (let ((_g1558815602_
             (lambda (_g1558915599_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1558915599_))))
        (let ((_g1558715645_
               (lambda (_g1558915605_)
                 (if (gx#stx-pair? _g1558915605_)
                     (let ((_e1559215607_ (gx#stx-e _g1558915605_)))
                       (let ((_hd1559315610_ (##car _e1559215607_))
                             (_tl1559415612_ (##cdr _e1559215607_)))
                         (if (gx#stx-pair? _tl1559415612_)
                             (let ((_e1559515615_ (gx#stx-e _tl1559415612_)))
                               (let ((_hd1559615618_ (##car _e1559515615_))
                                     (_tl1559715620_ (##cdr _e1559515615_)))
                                 ((lambda (_L15623_ _L15624_)
                                    (let ((_ctx15637_
                                           (gx#syntax-local-e__0 _L15624_)))
                                      (let ((_code15639_
                                             (##structure-ref
                                              _ctx15637_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code15642_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code15639_
                                                         _args15586_))
                                                gx#current-expander-context
                                                _ctx15637_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx15637_
                                               _code15642_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L15624_
                                                           (cons _code15642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx15585_)))))))
                                  _tl1559715620_
                                  _hd1559615618_)))
                             (_g1558815602_ _g1558915605_))))
                     (_g1558815602_ _g1558915605_)))))
          (_g1558715645_ _stx15585_)))))
  (define gxc#xform-define-values%
    (lambda (_stx15515_ . _args15516_)
      (let ((_g1551815535_
             (lambda (_g1551915532_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1551915532_))))
        (let ((_g1551715582_
               (lambda (_g1551915538_)
                 (if (gx#stx-pair? _g1551915538_)
                     (let ((_e1552215540_ (gx#stx-e _g1551915538_)))
                       (let ((_hd1552315543_ (##car _e1552215540_))
                             (_tl1552415545_ (##cdr _e1552215540_)))
                         (if (gx#stx-pair? _tl1552415545_)
                             (let ((_e1552515548_ (gx#stx-e _tl1552415545_)))
                               (let ((_hd1552615551_ (##car _e1552515548_))
                                     (_tl1552715553_ (##cdr _e1552515548_)))
                                 (if (gx#stx-pair? _tl1552715553_)
                                     (let ((_e1552815556_
                                            (gx#stx-e _tl1552715553_)))
                                       (let ((_hd1552915559_
                                              (##car _e1552815556_))
                                             (_tl1553015561_
                                              (##cdr _e1552815556_)))
                                         (if (gx#stx-null? _tl1553015561_)
                                             ((lambda (_L15564_ _L15565_)
                                                (let ((_expr15580_
                                                       (apply gxc#compile-e
                                                              _L15564_
                                                              _args15516_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L15565_
                                                               (cons _expr15580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15515_)))
                                              _hd1552915559_
                                              _hd1552615551_)
                                             (_g1551815535_ _g1551915538_))))
                                     (_g1551815535_ _g1551915538_))))
                             (_g1551815535_ _g1551915538_))))
                     (_g1551815535_ _g1551915538_)))))
          (_g1551715582_ _stx15515_)))))
  (define gxc#xform-lambda%
    (lambda (_stx15458_ . _args15459_)
      (let ((_g1546115475_
             (lambda (_g1546215472_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1546215472_))))
        (let ((_g1546015512_
               (lambda (_g1546215478_)
                 (if (gx#stx-pair? _g1546215478_)
                     (let ((_e1546515480_ (gx#stx-e _g1546215478_)))
                       (let ((_hd1546615483_ (##car _e1546515480_))
                             (_tl1546715485_ (##cdr _e1546515480_)))
                         (if (gx#stx-pair? _tl1546715485_)
                             (let ((_e1546815488_ (gx#stx-e _tl1546715485_)))
                               (let ((_hd1546915491_ (##car _e1546815488_))
                                     (_tl1547015493_ (##cdr _e1546815488_)))
                                 ((lambda (_L15496_ _L15497_)
                                    (let ((_body15510_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args15459_)
                                            _L15496_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L15497_ _body15510_))
                                       _stx15458_)))
                                  _tl1547015493_
                                  _hd1546915491_)))
                             (_g1546115475_ _g1546215478_))))
                     (_g1546115475_ _g1546215478_)))))
          (_g1546015512_ _stx15458_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx15371_ . _args15372_)
      (let ((_clause-e15374_
             (lambda (_clause15415_)
               (let ((_g1541715428_
                      (lambda (_g1541815425_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1541815425_))))
                 (let ((_g1541615455_
                        (lambda (_g1541815431_)
                          (if (gx#stx-pair? _g1541815431_)
                              (let ((_e1542115433_ (gx#stx-e _g1541815431_)))
                                (let ((_hd1542215436_ (##car _e1542115433_))
                                      (_tl1542315438_ (##cdr _e1542115433_)))
                                  ((lambda (_L15441_ _L15442_)
                                     (let ((_body15453_
                                            (gx#stx-map1
                                             (gxc#xform-apply-compile-e
                                              _args15372_)
                                             _L15441_)))
                                       (cons _L15442_ _body15453_)))
                                   _tl1542315438_
                                   _hd1542215436_)))
                              (_g1541715428_ _g1541815431_)))))
                   (_g1541615455_ _clause15415_))))))
        (let ((_g1537615386_
               (lambda (_g1537715383_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1537715383_))))
          (let ((_g1537515412_
                 (lambda (_g1537715389_)
                   (if (gx#stx-pair? _g1537715389_)
                       (let ((_e1537915391_ (gx#stx-e _g1537715389_)))
                         (let ((_hd1538015394_ (##car _e1537915391_))
                               (_tl1538115396_ (##cdr _e1537915391_)))
                           ((lambda (_L15399_)
                              (let ((_clauses15410_
                                     (gx#stx-map1 _clause-e15374_ _L15399_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses15410_)
                                 _stx15371_)))
                            _tl1538115396_)))
                       (_g1537615386_ _g1537715389_)))))
            (_g1537515412_ _stx15371_))))))
  (define gxc#xform-let-values%
    (lambda (_stx15165_ . _args15166_)
      (let ((_g1516815201_
             (lambda (_g1516915198_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1516915198_))))
        (let ((_g1516715368_
               (lambda (_g1516915204_)
                 (if (gx#stx-pair? _g1516915204_)
                     (let ((_e1517415206_ (gx#stx-e _g1516915204_)))
                       (let ((_hd1517515209_ (##car _e1517415206_))
                             (_tl1517615211_ (##cdr _e1517415206_)))
                         (if (gx#stx-pair? _tl1517615211_)
                             (let ((_e1517715214_ (gx#stx-e _tl1517615211_)))
                               (let ((_hd1517815217_ (##car _e1517715214_))
                                     (_tl1517915219_ (##cdr _e1517715214_)))
                                 (if (gx#stx-pair/null? _hd1517815217_)
                                     (if (fx>= (gx#stx-length _hd1517815217_)
                                               '0)
                                         (let ((_g15994_
                                                (gx#syntax-split-splice
                                                 _hd1517815217_
                                                 '0)))
                                           (begin
                                             (let ((_g15995_
                                                    (values-count _g15994_)))
                                               (if (not (fx= _g15995_ 2))
                                                   (error "Context expects 2 values"
                                                          _g15995_)))
                                             (let ((_target1518015222_
                                                    (values-ref _g15994_ 0))
                                                   (_tl1518215224_
                                                    (values-ref _g15994_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1518215224_)
                                                   (letrec ((_loop1518315227_
                                                             (lambda (_hd1518115230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1518715232_
                              _hd1518815234_)
                       (if (gx#stx-pair? _hd1518115230_)
                           (let ((_e1518415237_ (gx#stx-e _hd1518115230_)))
                             (let ((_lp-hd1518515240_ (##car _e1518415237_))
                                   (_lp-tl1518615242_ (##cdr _e1518415237_)))
                               (if (gx#stx-pair? _lp-hd1518515240_)
                                   (let ((_e1519115245_
                                          (gx#stx-e _lp-hd1518515240_)))
                                     (let ((_hd1519215248_
                                            (##car _e1519115245_))
                                           (_tl1519315250_
                                            (##cdr _e1519115245_)))
                                       (if (gx#stx-pair? _tl1519315250_)
                                           (let ((_e1519415253_
                                                  (gx#stx-e _tl1519315250_)))
                                             (let ((_hd1519515256_
                                                    (##car _e1519415253_))
                                                   (_tl1519615258_
                                                    (##cdr _e1519415253_)))
                                               (if (gx#stx-null?
                                                    _tl1519615258_)
                                                   (_loop1518315227_
                                                    _lp-tl1518615242_
                                                    (cons _hd1519515256_
                                                          _expr1518715232_)
                                                    (cons _hd1519215248_
                                                          _hd1518815234_))
                                                   (_g1516815201_
                                                    _g1516915204_))))
                                           (_g1516815201_ _g1516915204_))))
                                   (_g1516815201_ _g1516915204_))))
                           (let ((_expr1518915261_ (reverse _expr1518715232_))
                                 (_hd1519015263_ (reverse _hd1518815234_)))
                             ((lambda (_L15266_ _L15267_ _L15268_ _L15269_)
                                (let ((_g1528815304_
                                       (lambda (_g1528915301_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1528915301_))))
                                  (let ((_g1528715358_
                                         (lambda (_g1528915307_)
                                           (if (gx#stx-pair/null?
                                                _g1528915307_)
                                               (if (fx>= (gx#stx-length
                                                          _g1528915307_)
                                                         '0)
                                                   (let ((_g15996_
                                                          (gx#syntax-split-splice
                                                           _g1528915307_
                                                           '0)))
                                                     (begin
                                                       (let ((_g15997_
                                                              (values-count
                                                               _g15996_)))
                                                         (if (not (fx= _g15997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g15997_)))
               (let ((_target1529115309_ (values-ref _g15996_ 0))
                     (_tl1529315311_ (values-ref _g15996_ 1)))
                 (if (gx#stx-null? _tl1529315311_)
                     (letrec ((_loop1529415314_
                               (lambda (_hd1529215317_ _expr1529815319_)
                                 (if (gx#stx-pair? _hd1529215317_)
                                     (let ((_e1529515322_
                                            (gx#syntax-e _hd1529215317_)))
                                       (let ((_lp-hd1529615325_
                                              (##car _e1529515322_))
                                             (_lp-tl1529715327_
                                              (##cdr _e1529515322_)))
                                         (_loop1529415314_
                                          _lp-tl1529715327_
                                          (cons _lp-hd1529615325_
                                                _expr1529815319_))))
                                     (let ((_expr1529915330_
                                            (reverse _expr1529815319_)))
                                       ((lambda (_L15333_)
                                          (let ()
                                            (let ((_body15346_
                                                   (gx#stx-map1
                                                    (gxc#xform-apply-compile-e
                                                     _args15166_)
                                                    _L15266_)))
                                              (gxc#xform-wrap-source
                                               (cons _L15269_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L15333_
                                                              _L15268_)
                                                             (foldr (lambda (_g1534715351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1534815353_
                                     _g1534915355_)
                              (cons (cons _g1534815353_
                                          (cons _g1534715351_ '()))
                                    _g1534915355_))
                            '()
                            _L15333_
                            _L15268_))
                   _body15346_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx15165_))))
                                        _expr1529915330_))))))
                       (_loop1529415314_ _target1529115309_ '()))
                     (_g1528815304_ _g1528915307_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1528815304_
                                                    _g1528915307_))
                                               (_g1528815304_
                                                _g1528915307_)))))
                                    (_g1528715358_
                                     (gx#stx-map1
                                      (gxc#xform-apply-compile-e _args15166_)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1536015363_
                                                        _g1536115365_)
                                                 (cons _g1536015363_
                                                       _g1536115365_))
                                               '()
                                               _L15267_)))))))
                              _tl1517915219_
                              _expr1518915261_
                              _hd1519015263_
                              _hd1517515209_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1518315227_
                                                      _target1518015222_
                                                      '()
                                                      '()))
                                                   (_g1516815201_
                                                    _g1516915204_)))))
                                         (_g1516815201_ _g1516915204_))
                                     (_g1516815201_ _g1516915204_))))
                             (_g1516815201_ _g1516915204_))))
                     (_g1516815201_ _g1516915204_)))))
          (_g1516715368_ _stx15165_)))))
  (define gxc#xform-call%
    (lambda (_stx15107_ . _args15108_)
      (let ((_g1511015124_
             (lambda (_g1511115121_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1511115121_))))
        (let ((_g1510915162_
               (lambda (_g1511115127_)
                 (if (gx#stx-pair? _g1511115127_)
                     (let ((_e1511415129_ (gx#stx-e _g1511115127_)))
                       (let ((_hd1511515132_ (##car _e1511415129_))
                             (_tl1511615134_ (##cdr _e1511415129_)))
                         (if (gx#stx-pair? _tl1511615134_)
                             (let ((_e1511715137_ (gx#stx-e _tl1511615134_)))
                               (let ((_hd1511815140_ (##car _e1511715137_))
                                     (_tl1511915142_ (##cdr _e1511715137_)))
                                 ((lambda (_L15145_ _L15146_)
                                    (let ((_rator15159_
                                           (apply gxc#compile-e
                                                  _L15146_
                                                  _args15108_))
                                          (_rands15160_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args15108_)
                                            _L15145_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons _rator15159_ _rands15160_))
                                       _stx15107_)))
                                  _tl1511915142_
                                  _hd1511815140_)))
                             (_g1511015124_ _g1511115127_))))
                     (_g1511015124_ _g1511115127_)))))
          (_g1510915162_ _stx15107_)))))
  (define gxc#xform-if%
    (lambda (_stx15066_ . _args15067_)
      (let ((_g1506915079_
             (lambda (_g1507015076_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1507015076_))))
        (let ((_g1506815104_
               (lambda (_g1507015082_)
                 (if (gx#stx-pair? _g1507015082_)
                     (let ((_e1507215084_ (gx#stx-e _g1507015082_)))
                       (let ((_hd1507315087_ (##car _e1507215084_))
                             (_tl1507415089_ (##cdr _e1507215084_)))
                         ((lambda (_L15092_)
                            (let ((_forms15102_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args15067_)
                                    _L15092_)))
                              (gxc#xform-wrap-source
                               (cons '%#if _forms15102_)
                               _stx15066_)))
                          _tl1507415089_)))
                     (_g1506915079_ _g1507015082_)))))
          (_g1506815104_ _stx15066_)))))
  (define gxc#xform-setq%
    (lambda (_stx14996_ . _args14997_)
      (let ((_g1499915016_
             (lambda (_g1500015013_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1500015013_))))
        (let ((_g1499815063_
               (lambda (_g1500015019_)
                 (if (gx#stx-pair? _g1500015019_)
                     (let ((_e1500315021_ (gx#stx-e _g1500015019_)))
                       (let ((_hd1500415024_ (##car _e1500315021_))
                             (_tl1500515026_ (##cdr _e1500315021_)))
                         (if (gx#stx-pair? _tl1500515026_)
                             (let ((_e1500615029_ (gx#stx-e _tl1500515026_)))
                               (let ((_hd1500715032_ (##car _e1500615029_))
                                     (_tl1500815034_ (##cdr _e1500615029_)))
                                 (if (gx#stx-pair? _tl1500815034_)
                                     (let ((_e1500915037_
                                            (gx#stx-e _tl1500815034_)))
                                       (let ((_hd1501015040_
                                              (##car _e1500915037_))
                                             (_tl1501115042_
                                              (##cdr _e1500915037_)))
                                         (if (gx#stx-null? _tl1501115042_)
                                             ((lambda (_L15045_ _L15046_)
                                                (let ((_expr15061_
                                                       (apply gxc#compile-e
                                                              _L15045_
                                                              _args14997_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L15046_
                                                               (cons _expr15061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx14996_)))
                                              _hd1501015040_
                                              _hd1500715032_)
                                             (_g1499915016_ _g1500015019_))))
                                     (_g1499915016_ _g1500015019_))))
                             (_g1499915016_ _g1500015019_))))
                     (_g1499915016_ _g1500015019_)))))
          (_g1499815063_ _stx14996_)))))
  (define gxc#xform-struct-op%
    (lambda (_stx14952_ . _args14953_)
      (let ((_g1495514966_
             (lambda (_g1495614963_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1495614963_))))
        (let ((_g1495414993_
               (lambda (_g1495614969_)
                 (if (gx#stx-pair? _g1495614969_)
                     (let ((_e1495914971_ (gx#stx-e _g1495614969_)))
                       (let ((_hd1496014974_ (##car _e1495914971_))
                             (_tl1496114976_ (##cdr _e1495914971_)))
                         ((lambda (_L14979_ _L14980_)
                            (let ((_op-args14991_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args14953_)
                                    _L14979_)))
                              (gxc#xform-wrap-source
                               (cons _L14980_ _op-args14991_)
                               _stx14952_)))
                          _tl1496114976_
                          _hd1496014974_)))
                     (_g1495514966_ _g1495614969_)))))
          (_g1495414993_ _stx14952_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form14186_)
      (let ((_g1419114348_
             (lambda (_g1419214345_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1419214345_))))
        (let ((_g1419014355_ (lambda (_g1419214351_) ((lambda () '#f)))))
          (let ((_g1418914495_
                 (lambda (_g1419214358_)
                   (if (gx#stx-pair? _g1419214358_)
                       (let ((_e1430814360_ (gx#stx-e _g1419214358_)))
                         (let ((_hd1430914363_ (##car _e1430814360_))
                               (_tl1431014365_ (##cdr _e1430814360_)))
                           (if (gx#stx-pair? _tl1431014365_)
                               (let ((_e1431114368_ (gx#stx-e _tl1431014365_)))
                                 (let ((_hd1431214371_ (##car _e1431114368_))
                                       (_tl1431314373_ (##cdr _e1431114368_)))
                                   (if (gx#stx-pair? _hd1431214371_)
                                       (let ((_e1431414376_
                                              (gx#stx-e _hd1431214371_)))
                                         (let ((_hd1431514379_
                                                (##car _e1431414376_))
                                               (_tl1431614381_
                                                (##cdr _e1431414376_)))
                                           (if (gx#identifier? _hd1431514379_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1431514379_)
                                                   (if (gx#stx-pair?
                                                        _tl1431614381_)
                                                       (let ((_e1431714384_
                                                              (gx#stx-e
                                                               _tl1431614381_)))
                                                         (let ((_hd1431814387_
                                                                (##car _e1431714384_))
                                                               (_tl1431914389_
                                                                (##cdr _e1431714384_)))
                                                           (if (gx#stx-pair?
                                                                _hd1431814387_)
                                                               (let ((_e1432014392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1431814387_)))
                         (let ((_hd1432114395_ (##car _e1432014392_))
                               (_tl1432214397_ (##cdr _e1432014392_)))
                           (if (gx#identifier? _hd1432114395_)
                               (if (gx#stx-eq? '%#ref _hd1432114395_)
                                   (if (gx#stx-pair? _tl1432214397_)
                                       (let ((_e1432314400_
                                              (gx#stx-e _tl1432214397_)))
                                         (let ((_hd1432414403_
                                                (##car _e1432314400_))
                                               (_tl1432514405_
                                                (##cdr _e1432314400_)))
                                           (if (gx#stx-null? _tl1432514405_)
                                               (if (gx#stx-pair?
                                                    _tl1431914389_)
                                                   (let ((_e1432614408_
                                                          (gx#stx-e
                                                           _tl1431914389_)))
                                                     (let ((_hd1432714411_
                                                            (##car _e1432614408_))
                                                           (_tl1432814413_
                                                            (##cdr _e1432614408_)))
                                                       (if (gx#stx-pair?
                                                            _hd1432714411_)
                                                           (let ((_e1432914416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1432714411_)))
                     (let ((_hd1433014419_ (##car _e1432914416_))
                           (_tl1433114421_ (##cdr _e1432914416_)))
                       (if (gx#identifier? _hd1433014419_)
                           (if (gx#stx-eq? '%#ref _hd1433014419_)
                               (if (gx#stx-pair? _tl1433114421_)
                                   (let ((_e1433214424_
                                          (gx#stx-e _tl1433114421_)))
                                     (let ((_hd1433314427_
                                            (##car _e1433214424_))
                                           (_tl1433414429_
                                            (##cdr _e1433214424_)))
                                       (if (gx#stx-null? _tl1433414429_)
                                           (if (gx#stx-pair? _tl1432814413_)
                                               (let ((_e1433514432_
                                                      (gx#stx-e
                                                       _tl1432814413_)))
                                                 (let ((_hd1433614435_
                                                        (##car _e1433514432_))
                                                       (_tl1433714437_
                                                        (##cdr _e1433514432_)))
                                                   (if (gx#stx-pair?
                                                        _hd1433614435_)
                                                       (let ((_e1433814440_
                                                              (gx#stx-e
                                                               _hd1433614435_)))
                                                         (let ((_hd1433914443_
                                                                (##car _e1433814440_))
                                                               (_tl1434014445_
                                                                (##cdr _e1433814440_)))
                                                           (if (gx#identifier?
                                                                _hd1433914443_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1433914443_)
                           (if (gx#stx-pair? _tl1434014445_)
                               (let ((_e1434114448_ (gx#stx-e _tl1434014445_)))
                                 (let ((_hd1434214451_ (##car _e1434114448_))
                                       (_tl1434314453_ (##cdr _e1434114448_)))
                                   (if (gx#stx-null? _tl1434314453_)
                                       (if (gx#stx-null? _tl1433714437_)
                                           (if (gx#stx-null? _tl1431314373_)
                                               ((lambda (_L14456_
                                                         _L14457_
                                                         _L14458_
                                                         _L14459_)
                                                  (if (if (gx#identifier?
                                                           _L14459_)
                                                          (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L14458_)
                           'apply)
                      (if (gx#free-identifier=? _L14459_ _L14456_)
                          (not (gx#free-identifier=? _L14457_ _L14459_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1419014355_ _g1419214358_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1434214451_
                                                _hd1433314427_
                                                _hd1432414403_
                                                _hd1430914363_)
                                               (_g1419014355_ _g1419214358_))
                                           (_g1419014355_ _g1419214358_))
                                       (_g1419014355_ _g1419214358_))))
                               (_g1419014355_ _g1419214358_))
                           (_g1419014355_ _g1419214358_))
                       (_g1419014355_ _g1419214358_))))
               (_g1419014355_ _g1419214358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1419014355_ _g1419214358_))
                                           (_g1419014355_ _g1419214358_))))
                                   (_g1419014355_ _g1419214358_))
                               (_g1419014355_ _g1419214358_))
                           (_g1419014355_ _g1419214358_))))
                   (_g1419014355_ _g1419214358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1419014355_
                                                    _g1419214358_))
                                               (_g1419014355_ _g1419214358_))))
                                       (_g1419014355_ _g1419214358_))
                                   (_g1419014355_ _g1419214358_))
                               (_g1419014355_ _g1419214358_))))
                       (_g1419014355_ _g1419214358_))))
               (_g1419014355_ _g1419214358_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1419014355_
                                                    _g1419214358_))
                                               (_g1419014355_ _g1419214358_))))
                                       (_g1419014355_ _g1419214358_))))
                               (_g1419014355_ _g1419214358_))))
                       (_g1419014355_ _g1419214358_)))))
            (let ((_g1418814755_
                   (lambda (_g1419214498_)
                     (if (gx#stx-pair? _g1419214498_)
                         (let ((_e1424414500_ (gx#stx-e _g1419214498_)))
                           (let ((_hd1424514503_ (##car _e1424414500_))
                                 (_tl1424614505_ (##cdr _e1424414500_)))
                             (if (gx#stx-pair/null? _hd1424514503_)
                                 (if (fx>= (gx#stx-length _hd1424514503_) '0)
                                     (let ((_g15998_
                                            (gx#syntax-split-splice
                                             _hd1424514503_
                                             '0)))
                                       (begin
                                         (let ((_g15999_
                                                (values-count _g15998_)))
                                           (if (not (fx= _g15999_ 2))
                                               (error "Context expects 2 values"
                                                      _g15999_)))
                                         (let ((_target1424714508_
                                                (values-ref _g15998_ 0))
                                               (_tl1424914510_
                                                (values-ref _g15998_ 1)))
                                           (letrec ((_loop1425014513_
                                                     (lambda (_hd1424814516_
                                                              _arg1425414518_)
                                                       (if (gx#stx-pair?
                                                            _hd1424814516_)
                                                           (let ((_e1425114521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1424814516_)))
                     (let ((_lp-hd1425214524_ (##car _e1425114521_))
                           (_lp-tl1425314526_ (##cdr _e1425114521_)))
                       (_loop1425014513_
                        _lp-tl1425314526_
                        (cons _lp-hd1425214524_ _arg1425414518_))))
                   (let ((_arg1425514529_ (reverse _arg1425414518_)))
                     (if (gx#stx-pair? _tl1424614505_)
                         (let ((_e1425614532_ (gx#stx-e _tl1424614505_)))
                           (let ((_hd1425714535_ (##car _e1425614532_))
                                 (_tl1425814537_ (##cdr _e1425614532_)))
                             (if (gx#stx-pair? _hd1425714535_)
                                 (let ((_e1425914540_
                                        (gx#stx-e _hd1425714535_)))
                                   (let ((_hd1426014543_ (##car _e1425914540_))
                                         (_tl1426114545_
                                          (##cdr _e1425914540_)))
                                     (if (gx#identifier? _hd1426014543_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1426014543_)
                                             (if (gx#stx-pair? _tl1426114545_)
                                                 (let ((_e1426214548_
                                                        (gx#stx-e
                                                         _tl1426114545_)))
                                                   (let ((_hd1426314551_
                                                          (##car _e1426214548_))
                                                         (_tl1426414553_
                                                          (##cdr _e1426214548_)))
                                                     (if (gx#stx-pair?
                                                          _hd1426314551_)
                                                         (let ((_e1426514556_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1426314551_)))
                   (let ((_hd1426614559_ (##car _e1426514556_))
                         (_tl1426714561_ (##cdr _e1426514556_)))
                     (if (gx#identifier? _hd1426614559_)
                         (if (gx#stx-eq? '%#ref _hd1426614559_)
                             (if (gx#stx-pair? _tl1426714561_)
                                 (let ((_e1426814564_
                                        (gx#stx-e _tl1426714561_)))
                                   (let ((_hd1426914567_ (##car _e1426814564_))
                                         (_tl1427014569_
                                          (##cdr _e1426814564_)))
                                     (if (gx#stx-null? _tl1427014569_)
                                         (if (gx#stx-pair? _tl1426414553_)
                                             (let ((_e1427114572_
                                                    (gx#stx-e _tl1426414553_)))
                                               (let ((_hd1427214575_
                                                      (##car _e1427114572_))
                                                     (_tl1427314577_
                                                      (##cdr _e1427114572_)))
                                                 (if (gx#stx-pair?
                                                      _hd1427214575_)
                                                     (let ((_e1427414580_
                                                            (gx#stx-e
                                                             _hd1427214575_)))
                                                       (let ((_hd1427514583_
                                                              (##car _e1427414580_))
                                                             (_tl1427614585_
                                                              (##cdr _e1427414580_)))
                                                         (if (gx#identifier?
                                                              _hd1427514583_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1427514583_)
                         (if (gx#stx-pair? _tl1427614585_)
                             (let ((_e1427714588_ (gx#stx-e _tl1427614585_)))
                               (let ((_hd1427814591_ (##car _e1427714588_))
                                     (_tl1427914593_ (##cdr _e1427714588_)))
                                 (if (gx#stx-null? _tl1427914593_)
                                     (if (gx#stx-pair/null? _tl1427314577_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1427314577_)
                                                   '1)
                                             (let ((_g16000_
                                                    (gx#syntax-split-splice
                                                     _tl1427314577_
                                                     '1)))
                                               (begin
                                                 (let ((_g16001_
                                                        (values-count
                                                         _g16000_)))
                                                   (if (not (fx= _g16001_ 2))
                                                       (error "Context expects 2 values"
                                                              _g16001_)))
                                                 (let ((_target1428014596_
                                                        (values-ref
                                                         _g16000_
                                                         0))
                                                       (_tl1428214598_
                                                        (values-ref
                                                         _g16000_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1428214598_)
                                                       (let ((_e1428914601_
                                                              (gx#stx-e
                                                               _tl1428214598_)))
                                                         (let ((_hd1429014604_
                                                                (##car _e1428914601_))
                                                               (_tl1429114606_
                                                                (##cdr _e1428914601_)))
                                                           (if (gx#stx-pair?
                                                                _hd1429014604_)
                                                               (let ((_e1429214609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1429014604_)))
                         (let ((_hd1429314612_ (##car _e1429214609_))
                               (_tl1429414614_ (##cdr _e1429214609_)))
                           (if (gx#identifier? _hd1429314612_)
                               (if (gx#stx-eq? '%#ref _hd1429314612_)
                                   (if (gx#stx-pair? _tl1429414614_)
                                       (let ((_e1429514617_
                                              (gx#stx-e _tl1429414614_)))
                                         (let ((_hd1429614620_
                                                (##car _e1429514617_))
                                               (_tl1429714622_
                                                (##cdr _e1429514617_)))
                                           (if (gx#stx-null? _tl1429714622_)
                                               (if (gx#stx-null?
                                                    _tl1429114606_)
                                                   (letrec ((_loop1428314625_
                                                             (lambda (_hd1428114628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1428714630_)
                       (if (gx#stx-pair? _hd1428114628_)
                           (let ((_e1428414633_ (gx#stx-e _hd1428114628_)))
                             (let ((_lp-hd1428514636_ (##car _e1428414633_))
                                   (_lp-tl1428614638_ (##cdr _e1428414633_)))
                               (if (gx#stx-pair? _lp-hd1428514636_)
                                   (let ((_e1429814641_
                                          (gx#stx-e _lp-hd1428514636_)))
                                     (let ((_hd1429914644_
                                            (##car _e1429814641_))
                                           (_tl1430014646_
                                            (##cdr _e1429814641_)))
                                       (if (gx#identifier? _hd1429914644_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1429914644_)
                                               (if (gx#stx-pair?
                                                    _tl1430014646_)
                                                   (let ((_e1430114649_
                                                          (gx#stx-e
                                                           _tl1430014646_)))
                                                     (let ((_hd1430214652_
                                                            (##car _e1430114649_))
                                                           (_tl1430314654_
                                                            (##cdr _e1430114649_)))
                                                       (if (gx#stx-null?
                                                            _tl1430314654_)
                                                           (_loop1428314625_
                                                            _lp-tl1428614638_
                                                            (cons _hd1430214652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1428714630_))
                   (_g1418914495_ _g1419214498_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1418914495_
                                                    _g1419214498_))
                                               (_g1418914495_ _g1419214498_))
                                           (_g1418914495_ _g1419214498_))))
                                   (_g1418914495_ _g1419214498_))))
                           (let ((_xarg1428814657_ (reverse _xarg1428714630_)))
                             (if (gx#stx-null? _tl1425814537_)
                                 ((lambda (_L14660_
                                           _L14661_
                                           _L14662_
                                           _L14663_
                                           _L14664_
                                           _L14665_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1470814711_
                                                               _g1470914713_)
                                                        (cons _g1470814711_
                                                              _g1470914713_))
                                                      '()
                                                      _L14665_)))
                                            (if (gx#identifier? _L14664_)
                                                (if (eq? (gxc#identifier-symbol
                                                          _L14663_)
                                                         'apply)
                                                    (if (fx= (gx#stx-length
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1471514718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1471614720_)
                                 (cons _g1471514718_ _g1471614720_))
                               '()
                               _L14665_)))
                     (gx#stx-length
                      (begin
                        '#!void
                        (foldr (lambda (_g1472214725_ _g1472314727_)
                                 (cons _g1472214725_ _g1472314727_))
                               '()
                               _L14661_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr (lambda (_g1472914732_ _g1473014734_)
                                       (cons _g1472914732_ _g1473014734_))
                                     '()
                                     _L14665_))
                            (begin
                              '#!void
                              (foldr (lambda (_g1473614739_ _g1473714741_)
                                       (cons _g1473614739_ _g1473714741_))
                                     '()
                                     _L14661_)))
                    (if (gx#free-identifier=? _L14664_ _L14660_)
                        (not (find (lambda (_g1474314745_)
                                     (gx#free-identifier=?
                                      _g1474314745_
                                      _L14662_))
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1474714750_
                                                     _g1474814752_)
                                              (cons _g1474714750_
                                                    _g1474814752_))
                                            (cons _L14664_ '())
                                            _L14665_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1418914495_ _g1419214498_)))
                                  _hd1429614620_
                                  _xarg1428814657_
                                  _hd1427814591_
                                  _hd1426914567_
                                  _tl1424914510_
                                  _arg1425514529_)
                                 (_g1418914495_ _g1419214498_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1428314625_
                                                      _target1428014596_
                                                      '()))
                                                   (_g1418914495_
                                                    _g1419214498_))
                                               (_g1418914495_ _g1419214498_))))
                                       (_g1418914495_ _g1419214498_))
                                   (_g1418914495_ _g1419214498_))
                               (_g1418914495_ _g1419214498_))))
                       (_g1418914495_ _g1419214498_))))
               (_g1418914495_ _g1419214498_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1418914495_ _g1419214498_))
                                         (_g1418914495_ _g1419214498_))
                                     (_g1418914495_ _g1419214498_))))
                             (_g1418914495_ _g1419214498_))
                         (_g1418914495_ _g1419214498_))
                     (_g1418914495_ _g1419214498_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1418914495_
                                                      _g1419214498_))))
                                             (_g1418914495_ _g1419214498_))
                                         (_g1418914495_ _g1419214498_))))
                                 (_g1418914495_ _g1419214498_))
                             (_g1418914495_ _g1419214498_))
                         (_g1418914495_ _g1419214498_))))
                 (_g1418914495_ _g1419214498_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1418914495_ _g1419214498_))
                                             (_g1418914495_ _g1419214498_))
                                         (_g1418914495_ _g1419214498_))))
                                 (_g1418914495_ _g1419214498_))))
                         (_g1418914495_ _g1419214498_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1425014513_
                                              _target1424714508_
                                              '())))))
                                     (_g1418914495_ _g1419214498_))
                                 (_g1418914495_ _g1419214498_))))
                         (_g1418914495_ _g1419214498_)))))
              (let ((_g1418714949_
                     (lambda (_g1419214758_)
                       (if (gx#stx-pair? _g1419214758_)
                           (let ((_e1419614760_ (gx#stx-e _g1419214758_)))
                             (let ((_hd1419714763_ (##car _e1419614760_))
                                   (_tl1419814765_ (##cdr _e1419614760_)))
                               (if (gx#stx-pair/null? _hd1419714763_)
                                   (if (fx>= (gx#stx-length _hd1419714763_) '0)
                                       (let ((_g16002_
                                              (gx#syntax-split-splice
                                               _hd1419714763_
                                               '0)))
                                         (begin
                                           (let ((_g16003_
                                                  (values-count _g16002_)))
                                             (if (not (fx= _g16003_ 2))
                                                 (error "Context expects 2 values"
                                                        _g16003_)))
                                           (let ((_target1419914768_
                                                  (values-ref _g16002_ 0))
                                                 (_tl1420114770_
                                                  (values-ref _g16002_ 1)))
                                             (if (gx#stx-null? _tl1420114770_)
                                                 (letrec ((_loop1420214773_
                                                           (lambda (_hd1420014776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1420614778_)
                     (if (gx#stx-pair? _hd1420014776_)
                         (let ((_e1420314781_ (gx#stx-e _hd1420014776_)))
                           (let ((_lp-hd1420414784_ (##car _e1420314781_))
                                 (_lp-tl1420514786_ (##cdr _e1420314781_)))
                             (_loop1420214773_
                              _lp-tl1420514786_
                              (cons _lp-hd1420414784_ _arg1420614778_))))
                         (let ((_arg1420714789_ (reverse _arg1420614778_)))
                           (if (gx#stx-pair? _tl1419814765_)
                               (let ((_e1420814792_ (gx#stx-e _tl1419814765_)))
                                 (let ((_hd1420914795_ (##car _e1420814792_))
                                       (_tl1421014797_ (##cdr _e1420814792_)))
                                   (if (gx#stx-pair? _hd1420914795_)
                                       (let ((_e1421114800_
                                              (gx#stx-e _hd1420914795_)))
                                         (let ((_hd1421214803_
                                                (##car _e1421114800_))
                                               (_tl1421314805_
                                                (##cdr _e1421114800_)))
                                           (if (gx#identifier? _hd1421214803_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1421214803_)
                                                   (if (gx#stx-pair?
                                                        _tl1421314805_)
                                                       (let ((_e1421414808_
                                                              (gx#stx-e
                                                               _tl1421314805_)))
                                                         (let ((_hd1421514811_
                                                                (##car _e1421414808_))
                                                               (_tl1421614813_
                                                                (##cdr _e1421414808_)))
                                                           (if (gx#stx-pair?
                                                                _hd1421514811_)
                                                               (let ((_e1421714816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1421514811_)))
                         (let ((_hd1421814819_ (##car _e1421714816_))
                               (_tl1421914821_ (##cdr _e1421714816_)))
                           (if (gx#identifier? _hd1421814819_)
                               (if (gx#stx-eq? '%#ref _hd1421814819_)
                                   (if (gx#stx-pair? _tl1421914821_)
                                       (let ((_e1422014824_
                                              (gx#stx-e _tl1421914821_)))
                                         (let ((_hd1422114827_
                                                (##car _e1422014824_))
                                               (_tl1422214829_
                                                (##cdr _e1422014824_)))
                                           (if (gx#stx-null? _tl1422214829_)
                                               (if (gx#stx-pair/null?
                                                    _tl1421614813_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1421614813_)
                                                             '0)
                                                       (let ((_g16004_
                                                              (gx#syntax-split-splice
                                                               _tl1421614813_
                                                               '0)))
                                                         (begin
                                                           (let ((_g16005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g16004_)))
                     (if (not (fx= _g16005_ 2))
                         (error "Context expects 2 values" _g16005_)))
                   (let ((_target1422314832_ (values-ref _g16004_ 0))
                         (_tl1422514834_ (values-ref _g16004_ 1)))
                     (if (gx#stx-null? _tl1422514834_)
                         (letrec ((_loop1422614837_
                                   (lambda (_hd1422414840_ _xarg1423014842_)
                                     (if (gx#stx-pair? _hd1422414840_)
                                         (let ((_e1422714845_
                                                (gx#stx-e _hd1422414840_)))
                                           (let ((_lp-hd1422814848_
                                                  (##car _e1422714845_))
                                                 (_lp-tl1422914850_
                                                  (##cdr _e1422714845_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1422814848_)
                                                 (let ((_e1423214853_
                                                        (gx#stx-e
                                                         _lp-hd1422814848_)))
                                                   (let ((_hd1423314856_
                                                          (##car _e1423214853_))
                                                         (_tl1423414858_
                                                          (##cdr _e1423214853_)))
                                                     (if (gx#identifier?
                                                          _hd1423314856_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1423314856_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1423414858_)
                         (let ((_e1423514861_ (gx#stx-e _tl1423414858_)))
                           (let ((_hd1423614864_ (##car _e1423514861_))
                                 (_tl1423714866_ (##cdr _e1423514861_)))
                             (if (gx#stx-null? _tl1423714866_)
                                 (_loop1422614837_
                                  _lp-tl1422914850_
                                  (cons _hd1423614864_ _xarg1423014842_))
                                 (_g1418814755_ _g1419214758_))))
                         (_g1418814755_ _g1419214758_))
                     (_g1418814755_ _g1419214758_))
                 (_g1418814755_ _g1419214758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1418814755_
                                                  _g1419214758_))))
                                         (let ((_xarg1423114869_
                                                (reverse _xarg1423014842_)))
                                           (if (gx#stx-null? _tl1421014797_)
                                               ((lambda (_L14872_
                                                         _L14873_
                                                         _L14874_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1490214905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1490314907_)
                              (cons _g1490214905_ _g1490314907_))
                            '()
                            _L14874_)))
                  (if (fx= (gx#stx-length
                            (begin
                              '#!void
                              (foldr (lambda (_g1490914912_ _g1491014914_)
                                       (cons _g1490914912_ _g1491014914_))
                                     '()
                                     _L14874_)))
                           (gx#stx-length
                            (begin
                              '#!void
                              (foldr (lambda (_g1491614919_ _g1491714921_)
                                       (cons _g1491614919_ _g1491714921_))
                                     '()
                                     _L14872_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1492314926_
                                                    _g1492414928_)
                                             (cons _g1492314926_
                                                   _g1492414928_))
                                           '()
                                           _L14874_))
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1493014933_
                                                    _g1493114935_)
                                             (cons _g1493014933_
                                                   _g1493114935_))
                                           '()
                                           _L14872_)))
                          (not (find (lambda (_g1493714939_)
                                       (gx#free-identifier=?
                                        _g1493714939_
                                        _L14873_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1494114944_
                                                       _g1494214946_)
                                                (cons _g1494114944_
                                                      _g1494214946_))
                                              '()
                                              _L14874_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1418814755_ _g1419214758_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1423114869_
                                                _hd1422114827_
                                                _arg1420714789_)
                                               (_g1418814755_
                                                _g1419214758_)))))))
                           (_loop1422614837_ _target1422314832_ '()))
                         (_g1418814755_ _g1419214758_)))))
               (_g1418814755_ _g1419214758_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1418814755_
                                                    _g1419214758_))
                                               (_g1418814755_ _g1419214758_))))
                                       (_g1418814755_ _g1419214758_))
                                   (_g1418814755_ _g1419214758_))
                               (_g1418814755_ _g1419214758_))))
                       (_g1418814755_ _g1419214758_))))
               (_g1418814755_ _g1419214758_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1418814755_
                                                    _g1419214758_))
                                               (_g1418814755_ _g1419214758_))))
                                       (_g1418814755_ _g1419214758_))))
                               (_g1418814755_ _g1419214758_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1420214773_
                                                    _target1419914768_
                                                    '()))
                                                 (_g1418814755_
                                                  _g1419214758_)))))
                                       (_g1418814755_ _g1419214758_))
                                   (_g1418814755_ _g1419214758_))))
                           (_g1418814755_ _g1419214758_)))))
                (_g1418714949_ _form14186_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form13654_)
      (let ((_g1365813782_
             (lambda (_g1365913779_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1365913779_))))
        (let ((_g1365713899_
               (lambda (_g1365913785_)
                 (if (gx#stx-pair? _g1365913785_)
                     (let ((_e1374813787_ (gx#stx-e _g1365913785_)))
                       (let ((_hd1374913790_ (##car _e1374813787_))
                             (_tl1375013792_ (##cdr _e1374813787_)))
                         (if (gx#stx-pair? _tl1375013792_)
                             (let ((_e1375113795_ (gx#stx-e _tl1375013792_)))
                               (let ((_hd1375213798_ (##car _e1375113795_))
                                     (_tl1375313800_ (##cdr _e1375113795_)))
                                 (if (gx#stx-pair? _hd1375213798_)
                                     (let ((_e1375413803_
                                            (gx#stx-e _hd1375213798_)))
                                       (let ((_hd1375513806_
                                              (##car _e1375413803_))
                                             (_tl1375613808_
                                              (##cdr _e1375413803_)))
                                         (if (gx#identifier? _hd1375513806_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1375513806_)
                                                 (if (gx#stx-pair?
                                                      _tl1375613808_)
                                                     (let ((_e1375713811_
                                                            (gx#stx-e
                                                             _tl1375613808_)))
                                                       (let ((_hd1375813814_
                                                              (##car _e1375713811_))
                                                             (_tl1375913816_
                                                              (##cdr _e1375713811_)))
                                                         (if (gx#stx-pair?
                                                              _hd1375813814_)
                                                             (let ((_e1376013819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1375813814_)))
                       (let ((_hd1376113822_ (##car _e1376013819_))
                             (_tl1376213824_ (##cdr _e1376013819_)))
                         (if (gx#identifier? _hd1376113822_)
                             (if (gx#stx-eq? '%#ref _hd1376113822_)
                                 (if (gx#stx-pair? _tl1376213824_)
                                     (let ((_e1376313827_
                                            (gx#stx-e _tl1376213824_)))
                                       (let ((_hd1376413830_
                                              (##car _e1376313827_))
                                             (_tl1376513832_
                                              (##cdr _e1376313827_)))
                                         (if (gx#stx-null? _tl1376513832_)
                                             (if (gx#stx-pair? _tl1375913816_)
                                                 (let ((_e1376613835_
                                                        (gx#stx-e
                                                         _tl1375913816_)))
                                                   (let ((_hd1376713838_
                                                          (##car _e1376613835_))
                                                         (_tl1376813840_
                                                          (##cdr _e1376613835_)))
                                                     (if (gx#stx-pair?
                                                          _hd1376713838_)
                                                         (let ((_e1376913843_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1376713838_)))
                   (let ((_hd1377013846_ (##car _e1376913843_))
                         (_tl1377113848_ (##cdr _e1376913843_)))
                     (if (gx#identifier? _hd1377013846_)
                         (if (gx#stx-eq? '%#ref _hd1377013846_)
                             (if (gx#stx-pair? _tl1377113848_)
                                 (let ((_e1377213851_
                                        (gx#stx-e _tl1377113848_)))
                                   (let ((_hd1377313854_ (##car _e1377213851_))
                                         (_tl1377413856_
                                          (##cdr _e1377213851_)))
                                     (if (gx#stx-null? _tl1377413856_)
                                         (if (gx#stx-pair? _tl1376813840_)
                                             (let ((_e1377513859_
                                                    (gx#stx-e _tl1376813840_)))
                                               (let ((_hd1377613862_
                                                      (##car _e1377513859_))
                                                     (_tl1377713864_
                                                      (##cdr _e1377513859_)))
                                                 (if (gx#stx-null?
                                                      _tl1377713864_)
                                                     (if (gx#stx-null?
                                                          _tl1375313800_)
                                                         ((lambda (_L13867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L13868_
                           _L13869_)
                    (gxc#identifier-symbol _L13867_))
                  _hd1377313854_
                  _hd1376413830_
                  _hd1374913790_)
                 (_g1365813782_ _g1365913785_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1365813782_
                                                      _g1365913785_))))
                                             (_g1365813782_ _g1365913785_))
                                         (_g1365813782_ _g1365913785_))))
                                 (_g1365813782_ _g1365913785_))
                             (_g1365813782_ _g1365913785_))
                         (_g1365813782_ _g1365913785_))))
                 (_g1365813782_ _g1365913785_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1365813782_ _g1365913785_))
                                             (_g1365813782_ _g1365913785_))))
                                     (_g1365813782_ _g1365913785_))
                                 (_g1365813782_ _g1365913785_))
                             (_g1365813782_ _g1365913785_))))
                     (_g1365813782_ _g1365913785_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1365813782_
                                                      _g1365913785_))
                                                 (_g1365813782_ _g1365913785_))
                                             (_g1365813782_ _g1365913785_))))
                                     (_g1365813782_ _g1365913785_))))
                             (_g1365813782_ _g1365913785_))))
                     (_g1365813782_ _g1365913785_)))))
          (let ((_g1365614035_
                 (lambda (_g1365913902_)
                   (if (gx#stx-pair? _g1365913902_)
                       (let ((_e1370913904_ (gx#stx-e _g1365913902_)))
                         (let ((_hd1371013907_ (##car _e1370913904_))
                               (_tl1371113909_ (##cdr _e1370913904_)))
                           (if (gx#stx-pair/null? _hd1371013907_)
                               (if (fx>= (gx#stx-length _hd1371013907_) '0)
                                   (let ((_g16006_
                                          (gx#syntax-split-splice
                                           _hd1371013907_
                                           '0)))
                                     (begin
                                       (let ((_g16007_
                                              (values-count _g16006_)))
                                         (if (not (fx= _g16007_ 2))
                                             (error "Context expects 2 values"
                                                    _g16007_)))
                                       (let ((_target1371213912_
                                              (values-ref _g16006_ 0))
                                             (_tl1371413914_
                                              (values-ref _g16006_ 1)))
                                         (letrec ((_loop1371513917_
                                                   (lambda (_hd1371313920_
                                                            _arg1371913922_)
                                                     (if (gx#stx-pair?
                                                          _hd1371313920_)
                                                         (let ((_e1371613925_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1371313920_)))
                   (let ((_lp-hd1371713928_ (##car _e1371613925_))
                         (_lp-tl1371813930_ (##cdr _e1371613925_)))
                     (_loop1371513917_
                      _lp-tl1371813930_
                      (cons _lp-hd1371713928_ _arg1371913922_))))
                 (let ((_arg1372013933_ (reverse _arg1371913922_)))
                   (if (gx#stx-pair? _tl1371113909_)
                       (let ((_e1372113936_ (gx#stx-e _tl1371113909_)))
                         (let ((_hd1372213939_ (##car _e1372113936_))
                               (_tl1372313941_ (##cdr _e1372113936_)))
                           (if (gx#stx-pair? _hd1372213939_)
                               (let ((_e1372413944_ (gx#stx-e _hd1372213939_)))
                                 (let ((_hd1372513947_ (##car _e1372413944_))
                                       (_tl1372613949_ (##cdr _e1372413944_)))
                                   (if (gx#identifier? _hd1372513947_)
                                       (if (gx#stx-eq? '%#call _hd1372513947_)
                                           (if (gx#stx-pair? _tl1372613949_)
                                               (let ((_e1372713952_
                                                      (gx#stx-e
                                                       _tl1372613949_)))
                                                 (let ((_hd1372813955_
                                                        (##car _e1372713952_))
                                                       (_tl1372913957_
                                                        (##cdr _e1372713952_)))
                                                   (if (gx#stx-pair?
                                                        _hd1372813955_)
                                                       (let ((_e1373013960_
                                                              (gx#stx-e
                                                               _hd1372813955_)))
                                                         (let ((_hd1373113963_
                                                                (##car _e1373013960_))
                                                               (_tl1373213965_
                                                                (##cdr _e1373013960_)))
                                                           (if (gx#identifier?
                                                                _hd1373113963_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1373113963_)
                           (if (gx#stx-pair? _tl1373213965_)
                               (let ((_e1373313968_ (gx#stx-e _tl1373213965_)))
                                 (let ((_hd1373413971_ (##car _e1373313968_))
                                       (_tl1373513973_ (##cdr _e1373313968_)))
                                   (if (gx#stx-null? _tl1373513973_)
                                       (if (gx#stx-pair? _tl1372913957_)
                                           (let ((_e1373613976_
                                                  (gx#stx-e _tl1372913957_)))
                                             (let ((_hd1373713979_
                                                    (##car _e1373613976_))
                                                   (_tl1373813981_
                                                    (##cdr _e1373613976_)))
                                               (if (gx#stx-pair?
                                                    _hd1373713979_)
                                                   (let ((_e1373913984_
                                                          (gx#stx-e
                                                           _hd1373713979_)))
                                                     (let ((_hd1374013987_
                                                            (##car _e1373913984_))
                                                           (_tl1374113989_
                                                            (##cdr _e1373913984_)))
                                                       (if (gx#identifier?
                                                            _hd1374013987_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1374013987_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1374113989_)
                           (let ((_e1374213992_ (gx#stx-e _tl1374113989_)))
                             (let ((_hd1374313995_ (##car _e1374213992_))
                                   (_tl1374413997_ (##cdr _e1374213992_)))
                               (if (gx#stx-null? _tl1374413997_)
                                   (if (gx#stx-null? _tl1372313941_)
                                       ((lambda (_L14000_
                                                 _L14001_
                                                 _L14002_
                                                 _L14003_)
                                          (gxc#identifier-symbol _L14000_))
                                        _hd1374313995_
                                        _hd1373413971_
                                        _tl1371413914_
                                        _arg1372013933_)
                                       (_g1365713899_ _g1365913902_))
                                   (_g1365713899_ _g1365913902_))))
                           (_g1365713899_ _g1365913902_))
                       (_g1365713899_ _g1365913902_))
                   (_g1365713899_ _g1365913902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1365713899_
                                                    _g1365913902_))))
                                           (_g1365713899_ _g1365913902_))
                                       (_g1365713899_ _g1365913902_))))
                               (_g1365713899_ _g1365913902_))
                           (_g1365713899_ _g1365913902_))
                       (_g1365713899_ _g1365913902_))))
               (_g1365713899_ _g1365913902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1365713899_ _g1365913902_))
                                           (_g1365713899_ _g1365913902_))
                                       (_g1365713899_ _g1365913902_))))
                               (_g1365713899_ _g1365913902_))))
                       (_g1365713899_ _g1365913902_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1371513917_
                                            _target1371213912_
                                            '())))))
                                   (_g1365713899_ _g1365913902_))
                               (_g1365713899_ _g1365913902_))))
                       (_g1365713899_ _g1365913902_)))))
            (let ((_g1365514183_
                   (lambda (_g1365914038_)
                     (if (gx#stx-pair? _g1365914038_)
                         (let ((_e1366314040_ (gx#stx-e _g1365914038_)))
                           (let ((_hd1366414043_ (##car _e1366314040_))
                                 (_tl1366514045_ (##cdr _e1366314040_)))
                             (if (gx#stx-pair/null? _hd1366414043_)
                                 (if (fx>= (gx#stx-length _hd1366414043_) '0)
                                     (let ((_g16008_
                                            (gx#syntax-split-splice
                                             _hd1366414043_
                                             '0)))
                                       (begin
                                         (let ((_g16009_
                                                (values-count _g16008_)))
                                           (if (not (fx= _g16009_ 2))
                                               (error "Context expects 2 values"
                                                      _g16009_)))
                                         (let ((_target1366614048_
                                                (values-ref _g16008_ 0))
                                               (_tl1366814050_
                                                (values-ref _g16008_ 1)))
                                           (if (gx#stx-null? _tl1366814050_)
                                               (letrec ((_loop1366914053_
                                                         (lambda (_hd1366714056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1367314058_)
                   (if (gx#stx-pair? _hd1366714056_)
                       (let ((_e1367014061_ (gx#stx-e _hd1366714056_)))
                         (let ((_lp-hd1367114064_ (##car _e1367014061_))
                               (_lp-tl1367214066_ (##cdr _e1367014061_)))
                           (_loop1366914053_
                            _lp-tl1367214066_
                            (cons _lp-hd1367114064_ _arg1367314058_))))
                       (let ((_arg1367414069_ (reverse _arg1367314058_)))
                         (if (gx#stx-pair? _tl1366514045_)
                             (let ((_e1367514072_ (gx#stx-e _tl1366514045_)))
                               (let ((_hd1367614075_ (##car _e1367514072_))
                                     (_tl1367714077_ (##cdr _e1367514072_)))
                                 (if (gx#stx-pair? _hd1367614075_)
                                     (let ((_e1367814080_
                                            (gx#stx-e _hd1367614075_)))
                                       (let ((_hd1367914083_
                                              (##car _e1367814080_))
                                             (_tl1368014085_
                                              (##cdr _e1367814080_)))
                                         (if (gx#identifier? _hd1367914083_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1367914083_)
                                                 (if (gx#stx-pair?
                                                      _tl1368014085_)
                                                     (let ((_e1368114088_
                                                            (gx#stx-e
                                                             _tl1368014085_)))
                                                       (let ((_hd1368214091_
                                                              (##car _e1368114088_))
                                                             (_tl1368314093_
                                                              (##cdr _e1368114088_)))
                                                         (if (gx#stx-pair?
                                                              _hd1368214091_)
                                                             (let ((_e1368414096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1368214091_)))
                       (let ((_hd1368514099_ (##car _e1368414096_))
                             (_tl1368614101_ (##cdr _e1368414096_)))
                         (if (gx#identifier? _hd1368514099_)
                             (if (gx#stx-eq? '%#ref _hd1368514099_)
                                 (if (gx#stx-pair? _tl1368614101_)
                                     (let ((_e1368714104_
                                            (gx#stx-e _tl1368614101_)))
                                       (let ((_hd1368814107_
                                              (##car _e1368714104_))
                                             (_tl1368914109_
                                              (##cdr _e1368714104_)))
                                         (if (gx#stx-null? _tl1368914109_)
                                             (if (gx#stx-pair/null?
                                                  _tl1368314093_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1368314093_)
                                                           '0)
                                                     (let ((_g16010_
                                                            (gx#syntax-split-splice
                                                             _tl1368314093_
                                                             '0)))
                                                       (begin
                                                         (let ((_g16011_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g16010_)))
                   (if (not (fx= _g16011_ 2))
                       (error "Context expects 2 values" _g16011_)))
                 (let ((_target1369014112_ (values-ref _g16010_ 0))
                       (_tl1369214114_ (values-ref _g16010_ 1)))
                   (if (gx#stx-null? _tl1369214114_)
                       (letrec ((_loop1369314117_
                                 (lambda (_hd1369114120_ _xarg1369714122_)
                                   (if (gx#stx-pair? _hd1369114120_)
                                       (let ((_e1369414125_
                                              (gx#stx-e _hd1369114120_)))
                                         (let ((_lp-hd1369514128_
                                                (##car _e1369414125_))
                                               (_lp-tl1369614130_
                                                (##cdr _e1369414125_)))
                                           (if (gx#stx-pair? _lp-hd1369514128_)
                                               (let ((_e1369914133_
                                                      (gx#stx-e
                                                       _lp-hd1369514128_)))
                                                 (let ((_hd1370014136_
                                                        (##car _e1369914133_))
                                                       (_tl1370114138_
                                                        (##cdr _e1369914133_)))
                                                   (if (gx#identifier?
                                                        _hd1370014136_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1370014136_)
                                                           (if (gx#stx-pair?
                                                                _tl1370114138_)
                                                               (let ((_e1370214141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1370114138_)))
                         (let ((_hd1370314144_ (##car _e1370214141_))
                               (_tl1370414146_ (##cdr _e1370214141_)))
                           (if (gx#stx-null? _tl1370414146_)
                               (_loop1369314117_
                                _lp-tl1369614130_
                                (cons _hd1370314144_ _xarg1369714122_))
                               (_g1365614035_ _g1365914038_))))
                       (_g1365614035_ _g1365914038_))
                   (_g1365614035_ _g1365914038_))
               (_g1365614035_ _g1365914038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1365614035_ _g1365914038_))))
                                       (let ((_xarg1369814149_
                                              (reverse _xarg1369714122_)))
                                         (if (gx#stx-null? _tl1367714077_)
                                             ((lambda (_L14152_
                                                       _L14153_
                                                       _L14154_)
                                                (gxc#identifier-symbol
                                                 _L14153_))
                                              _xarg1369814149_
                                              _hd1368814107_
                                              _arg1367414069_)
                                             (_g1365614035_
                                              _g1365914038_)))))))
                         (_loop1369314117_ _target1369014112_ '()))
                       (_g1365614035_ _g1365914038_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1365614035_
                                                      _g1365914038_))
                                                 (_g1365614035_ _g1365914038_))
                                             (_g1365614035_ _g1365914038_))))
                                     (_g1365614035_ _g1365914038_))
                                 (_g1365614035_ _g1365914038_))
                             (_g1365614035_ _g1365914038_))))
                     (_g1365614035_ _g1365914038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1365614035_
                                                      _g1365914038_))
                                                 (_g1365614035_ _g1365914038_))
                                             (_g1365614035_ _g1365914038_))))
                                     (_g1365614035_ _g1365914038_))))
                             (_g1365614035_ _g1365914038_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1366914053_
                                                  _target1366614048_
                                                  '()))
                                               (_g1365614035_
                                                _g1365914038_)))))
                                     (_g1365614035_ _g1365914038_))
                                 (_g1365614035_ _g1365914038_))))
                         (_g1365614035_ _g1365914038_)))))
              (_g1365514183_ _form13654_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form13497_)
      (let ((_g1350113532_
             (lambda (_g1350213529_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1350213529_))))
        (let ((_g1350013545_
               (lambda (_g1350213535_)
                 ((lambda (_L13537_) (cons '0 '())) _g1350213535_))))
          (let ((_g1349913594_
                 (lambda (_g1350213548_)
                   (if (gx#stx-pair/null? _g1350213548_)
                       (if (fx>= (gx#stx-length _g1350213548_) '0)
                           (let ((_g16012_
                                  (gx#syntax-split-splice _g1350213548_ '0)))
                             (begin
                               (let ((_g16013_ (values-count _g16012_)))
                                 (if (not (fx= _g16013_ 2))
                                     (error "Context expects 2 values"
                                            _g16013_)))
                               (let ((_target1351813550_
                                      (values-ref _g16012_ 0))
                                     (_tl1352013552_ (values-ref _g16012_ 1)))
                                 (letrec ((_loop1352113555_
                                           (lambda (_hd1351913558_
                                                    _arg1352513560_)
                                             (if (gx#stx-pair? _hd1351913558_)
                                                 (let ((_e1352213563_
                                                        (gx#stx-e
                                                         _hd1351913558_)))
                                                   (let ((_lp-hd1352313566_
                                                          (##car _e1352213563_))
                                                         (_lp-tl1352413568_
                                                          (##cdr _e1352213563_)))
                                                     (_loop1352113555_
                                                      _lp-tl1352413568_
                                                      (cons _lp-hd1352313566_
                                                            _arg1352513560_))))
                                                 (let ((_arg1352613571_
                                                        (reverse _arg1352513560_)))
                                                   ((lambda (_L13574_ _L13575_)
                                                      (cons (gx#stx-length
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1358613589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1358713591_)
                                (cons _g1358613589_ _g1358713591_))
                              '()
                              _L13575_)))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1352013552_
                                                    _arg1352613571_))))))
                                   (_loop1352113555_
                                    _target1351813550_
                                    '())))))
                           (_g1350013545_ _g1350213548_))
                       (_g1350013545_ _g1350213548_)))))
            (let ((_g1349813651_
                   (lambda (_g1350213597_)
                     (if (gx#stx-pair? _g1350213597_)
                         (let ((_e1350413599_ (gx#stx-e _g1350213597_)))
                           (let ((_hd1350513602_ (##car _e1350413599_))
                                 (_tl1350613604_ (##cdr _e1350413599_)))
                             (if (gx#stx-pair/null? _hd1350513602_)
                                 (if (fx>= (gx#stx-length _hd1350513602_) '0)
                                     (let ((_g16014_
                                            (gx#syntax-split-splice
                                             _hd1350513602_
                                             '0)))
                                       (begin
                                         (let ((_g16015_
                                                (values-count _g16014_)))
                                           (if (not (fx= _g16015_ 2))
                                               (error "Context expects 2 values"
                                                      _g16015_)))
                                         (let ((_target1350713607_
                                                (values-ref _g16014_ 0))
                                               (_tl1350913609_
                                                (values-ref _g16014_ 1)))
                                           (if (gx#stx-null? _tl1350913609_)
                                               (letrec ((_loop1351013612_
                                                         (lambda (_hd1350813615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1351413617_)
                   (if (gx#stx-pair? _hd1350813615_)
                       (let ((_e1351113620_ (gx#stx-e _hd1350813615_)))
                         (let ((_lp-hd1351213623_ (##car _e1351113620_))
                               (_lp-tl1351313625_ (##cdr _e1351113620_)))
                           (_loop1351013612_
                            _lp-tl1351313625_
                            (cons _lp-hd1351213623_ _arg1351413617_))))
                       (let ((_arg1351513628_ (reverse _arg1351413617_)))
                         ((lambda (_L13631_)
                            (gx#stx-length
                             (begin
                               '#!void
                               (foldr (lambda (_g1364313646_ _g1364413648_)
                                        (cons _g1364313646_ _g1364413648_))
                                      '()
                                      _L13631_))))
                          _arg1351513628_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1351013612_
                                                  _target1350713607_
                                                  '()))
                                               (_g1349913594_
                                                _g1350213597_)))))
                                     (_g1349913594_ _g1350213597_))
                                 (_g1349913594_ _g1350213597_))))
                         (_g1349913594_ _g1350213597_)))))
              (_g1349813651_ _form13497_)))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx12770_)
      (let ((_lambda-expr?12772_
             (lambda (_expr13450_)
               (let ((_g1345313463_
                      (lambda (_g1345413460_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1345413460_))))
                 (let ((_g1345213470_
                        (lambda (_g1345413466_) ((lambda () '#f)))))
                   (let ((_g1345113494_
                          (lambda (_g1345413473_)
                            (if (gx#stx-pair? _g1345413473_)
                                (let ((_e1345613475_ (gx#stx-e _g1345413473_)))
                                  (let ((_hd1345713478_ (##car _e1345613475_))
                                        (_tl1345813480_ (##cdr _e1345613475_)))
                                    (if (gx#identifier? _hd1345713478_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd1345713478_)
                                            ((lambda (_L13483_) '#t)
                                             _tl1345813480_)
                                            (_g1345213470_ _g1345413473_))
                                        (_g1345213470_ _g1345413473_))))
                                (_g1345213470_ _g1345413473_)))))
                     (_g1345113494_ _expr13450_)))))))
        (let ((_case-lambda-expr?12773_
               (lambda (_expr13403_)
                 (let ((_g1340613416_
                        (lambda (_g1340713413_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1340713413_))))
                   (let ((_g1340513423_
                          (lambda (_g1340713419_) ((lambda () '#f)))))
                     (let ((_g1340413447_
                            (lambda (_g1340713426_)
                              (if (gx#stx-pair? _g1340713426_)
                                  (let ((_e1340913428_
                                         (gx#stx-e _g1340713426_)))
                                    (let ((_hd1341013431_
                                           (##car _e1340913428_))
                                          (_tl1341113433_
                                           (##cdr _e1340913428_)))
                                      (if (gx#identifier? _hd1341013431_)
                                          (if (gx#stx-eq?
                                               '%#case-lambda
                                               _hd1341013431_)
                                              ((lambda (_L13436_) '#t)
                                               _tl1341113433_)
                                              (_g1340513423_ _g1340713426_))
                                          (_g1340513423_ _g1340713426_))))
                                  (_g1340513423_ _g1340713426_)))))
                       (_g1340413447_ _expr13403_)))))))
          (let ((_lift-case-lambda-clauses12774_
                 (lambda (_id13164_ _clauses13165_)
                   ((letrec ((_lp13167_
                              (lambda (_rest13169_
                                       _ids13170_
                                       _impls13171_
                                       _clauses13172_)
                                (let ((_rest1317313181_ _rest13169_))
                                  (let ((_E1317613185_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest1317313181_))))
                                    (let ((_else1317513189_
                                           (lambda ()
                                             (values (reverse _ids13170_)
                                                     (reverse _impls13171_)
                                                     (reverse _clauses13172_)))))
                                      (let ((_K1317713391_
                                             (lambda (_rest13192_
                                                      _clause13193_)
                                               (if (gxc#dispatch-lambda-form?
                                                    _clause13193_)
                                                   (_lp13167_
                                                    _rest13192_
                                                    _ids13170_
                                                    _impls13171_
                                                    (cons _clause13193_
                                                          _clauses13172_))
                                                   (let ((_g1319513206_
                                                          (lambda (_g1319613203_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1319613203_))))
                                                     (let ((_g1319413388_
                                                            (lambda (_g1319613209_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1319613209_)
                          (let ((_e1319913211_ (gx#stx-e _g1319613209_)))
                            (let ((_hd1320013214_ (##car _e1319913211_))
                                  (_tl1320113216_ (##cdr _e1319913211_)))
                              ((lambda (_L13219_ _L13220_)
                                 (let ((_id13237_
                                        (make-symbol
                                         (gx#stx-e _id13164_)
                                         '"__"
                                         (length _clauses13172_))))
                                   (let ((_impl13239_
                                          (gxc#xform-wrap-source
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#lambda)
                                                 (cons _L13220_ _L13219_))
                                           _stx12770_)))
                                     (let ((_clause13385_
                                            (let ((_g1324313271_
                                                   (lambda (_g1324413268_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1324413268_))))
                                              (let ((_g1324213286_
                                                     (lambda (_g1324413274_)
                                                       ((lambda (_L13276_)
                                                          (cons _L13220_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id13237_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#ref)
                                                             (cons _L13276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx12770_)
                              '())))
                _g1324413274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1324113335_
                                                       (lambda (_g1324413289_)
                                                         (if (gx#stx-pair/null?
                                                              _g1324413289_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1324413289_)
                               '0)
                         (let ((_g16018_
                                (gx#syntax-split-splice _g1324413289_ '0)))
                           (begin
                             (let ((_g16019_ (values-count _g16018_)))
                               (if (not (fx= _g16019_ 2))
                                   (error "Context expects 2 values"
                                          _g16019_)))
                             (let ((_target1325713291_ (values-ref _g16018_ 0))
                                   (_tl1325913293_ (values-ref _g16018_ 1)))
                               (letrec ((_loop1326013296_
                                         (lambda (_hd1325813299_
                                                  _arg1326413301_)
                                           (if (gx#stx-pair? _hd1325813299_)
                                               (let ((_e1326113304_
                                                      (gx#stx-e
                                                       _hd1325813299_)))
                                                 (let ((_lp-hd1326213307_
                                                        (##car _e1326113304_))
                                                       (_lp-tl1326313309_
                                                        (##cdr _e1326113304_)))
                                                   (_loop1326013296_
                                                    _lp-tl1326313309_
                                                    (cons _lp-hd1326213307_
                                                          _arg1326413301_))))
                                               (let ((_arg1326513312_
                                                      (reverse _arg1326413301_)))
                                                 ((lambda (_L13315_ _L13316_)
                                                    (cons _L13220_
                                                          (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref (cons 'apply '()))
                                     (cons (cons '%#ref (cons _id13237_ '()))
                                           (foldr cons
                                                  (cons (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L13315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1332713330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1332813332_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g1332713330_ '()))
                           _g1332813332_))
                   '()
                   _L13316_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _stx12770_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1325913293_
                                                  _arg1326513312_))))))
                                 (_loop1326013296_ _target1325713291_ '())))))
                         (_g1324213286_ _g1324413289_))
                     (_g1324213286_ _g1324413289_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1324013382_
                                                         (lambda (_g1324413338_)
                                                           (if (gx#stx-pair/null?
                                                                _g1324413338_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1324413338_)
                                 '0)
                           (let ((_g16020_
                                  (gx#syntax-split-splice _g1324413338_ '0)))
                             (begin
                               (let ((_g16021_ (values-count _g16020_)))
                                 (if (not (fx= _g16021_ 2))
                                     (error "Context expects 2 values"
                                            _g16021_)))
                               (let ((_target1324613340_
                                      (values-ref _g16020_ 0))
                                     (_tl1324813342_ (values-ref _g16020_ 1)))
                                 (if (gx#stx-null? _tl1324813342_)
                                     (letrec ((_loop1324913345_
                                               (lambda (_hd1324713348_
                                                        _arg1325313350_)
                                                 (if (gx#stx-pair?
                                                      _hd1324713348_)
                                                     (let ((_e1325013353_
                                                            (gx#stx-e
                                                             _hd1324713348_)))
                                                       (let ((_lp-hd1325113356_
                                                              (##car _e1325013353_))
                                                             (_lp-tl1325213358_
                                                              (##cdr _e1325013353_)))
                                                         (_loop1324913345_
                                                          _lp-tl1325213358_
                                                          (cons _lp-hd1325113356_
                                                                _arg1325313350_))))
                                                     (let ((_arg1325413361_
                                                            (reverse _arg1325313350_)))
                                                       ((lambda (_L13364_)
                                                          (cons _L13220_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons _id13237_ '()))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1337413377_
                                                             _g1337513379_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1337413377_ '()))
                    _g1337513379_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L13364_))))
                               _stx12770_)
                              '())))
                _arg1325413361_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1324913345_
                                        _target1324613340_
                                        '()))
                                     (_g1324113335_ _g1324413338_)))))
                           (_g1324113335_ _g1324413338_))
                       (_g1324113335_ _g1324413338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1324013382_
                                                     _L13220_)))))))
                                       (let ()
                                         (_lp13167_
                                          _rest13192_
                                          (cons _id13237_ _ids13170_)
                                          (cons _impl13239_ _impls13171_)
                                          (cons _clause13385_
                                                _clauses13172_)))))))
                               _tl1320113216_
                               _hd1320013214_)))
                          (_g1319513206_ _g1319613209_)))))
               (_g1319413388_ _clause13193_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest1317313181_)
                                            (let ((_hd1317813394_
                                                   (##car _rest1317313181_))
                                                  (_tl1317913396_
                                                   (##cdr _rest1317313181_)))
                                              (let ((_clause13399_
                                                     _hd1317813394_))
                                                (let ((_rest13401_
                                                       _tl1317913396_))
                                                  (_K1317713391_
                                                   _rest13401_
                                                   _clause13399_))))
                                            (_else1317513189_)))))))))
                      _lp13167_)
                    _clauses13165_
                    '()
                    '()
                    '()))))
            (let ((_case-lambda-clause-def12775_
                   (lambda (_id13161_ _impl13162_)
                     (gxc#xform-wrap-source
                      (cons '%#define-values
                            (cons (cons _id13161_ '()) (cons _impl13162_ '())))
                      _stx12770_))))
              (let ((_g1278012854_
                     (lambda (_g1278112851_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1278112851_))))
                (let ((_g1277912861_
                       (lambda (_g1278112857_) ((lambda () _stx12770_)))))
                  (let ((_g1277812997_
                         (lambda (_g1278112864_)
                           (if (gx#stx-pair? _g1278112864_)
                               (let ((_e1281712866_ (gx#stx-e _g1278112864_)))
                                 (let ((_hd1281812869_ (##car _e1281712866_))
                                       (_tl1281912871_ (##cdr _e1281712866_)))
                                   (if (gx#stx-pair? _tl1281912871_)
                                       (let ((_e1282012874_
                                              (gx#stx-e _tl1281912871_)))
                                         (let ((_hd1282112877_
                                                (##car _e1282012874_))
                                               (_tl1282212879_
                                                (##cdr _e1282012874_)))
                                           (if (gx#stx-pair? _hd1282112877_)
                                               (let ((_e1282312882_
                                                      (gx#stx-e
                                                       _hd1282112877_)))
                                                 (let ((_hd1282412885_
                                                        (##car _e1282312882_))
                                                       (_tl1282512887_
                                                        (##cdr _e1282312882_)))
                                                   (if (gx#stx-null?
                                                        _tl1282512887_)
                                                       (if (gx#stx-pair?
                                                            _tl1282212879_)
                                                           (let ((_e1282612890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1282212879_)))
                     (let ((_hd1282712893_ (##car _e1282612890_))
                           (_tl1282812895_ (##cdr _e1282612890_)))
                       (if (gx#stx-pair? _hd1282712893_)
                           (let ((_e1282912898_ (gx#stx-e _hd1282712893_)))
                             (let ((_hd1283012901_ (##car _e1282912898_))
                                   (_tl1283112903_ (##cdr _e1282912898_)))
                               (if (gx#identifier? _hd1283012901_)
                                   (if (gx#stx-eq?
                                        '%#let-values
                                        _hd1283012901_)
                                       (if (gx#stx-pair? _tl1283112903_)
                                           (let ((_e1283212906_
                                                  (gx#stx-e _tl1283112903_)))
                                             (let ((_hd1283312909_
                                                    (##car _e1283212906_))
                                                   (_tl1283412911_
                                                    (##cdr _e1283212906_)))
                                               (if (gx#stx-pair?
                                                    _hd1283312909_)
                                                   (let ((_e1283512914_
                                                          (gx#stx-e
                                                           _hd1283312909_)))
                                                     (let ((_hd1283612917_
                                                            (##car _e1283512914_))
                                                           (_tl1283712919_
                                                            (##cdr _e1283512914_)))
                                                       (if (gx#stx-pair?
                                                            _hd1283612917_)
                                                           (let ((_e1283812922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1283612917_)))
                     (let ((_hd1283912925_ (##car _e1283812922_))
                           (_tl1284012927_ (##cdr _e1283812922_)))
                       (if (gx#stx-pair? _hd1283912925_)
                           (let ((_e1284112930_ (gx#stx-e _hd1283912925_)))
                             (let ((_hd1284212933_ (##car _e1284112930_))
                                   (_tl1284312935_ (##cdr _e1284112930_)))
                               (if (gx#stx-null? _tl1284312935_)
                                   (if (gx#stx-pair? _tl1284012927_)
                                       (let ((_e1284412938_
                                              (gx#stx-e _tl1284012927_)))
                                         (let ((_hd1284512941_
                                                (##car _e1284412938_))
                                               (_tl1284612943_
                                                (##cdr _e1284412938_)))
                                           (if (gx#stx-null? _tl1284612943_)
                                               (if (gx#stx-null?
                                                    _tl1283712919_)
                                                   (if (gx#stx-pair?
                                                        _tl1283412911_)
                                                       (let ((_e1284712946_
                                                              (gx#stx-e
                                                               _tl1283412911_)))
                                                         (let ((_hd1284812949_
                                                                (##car _e1284712946_))
                                                               (_tl1284912951_
                                                                (##cdr _e1284712946_)))
                                                           (if (gx#stx-null?
                                                                _tl1284912951_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1282812895_)
                           ((lambda (_L12954_ _L12955_ _L12956_ _L12957_)
                              (if (if (gx#identifier? _L12957_)
                                      (if (gx#identifier? _L12956_)
                                          (if (_lambda-expr?12772_ _L12955_)
                                              (_case-lambda-expr?12773_
                                               _L12954_)
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_lambda-id12992_
                                         (make-symbol
                                          (gx#stx-e _L12957_)
                                          '"__"
                                          (gx#stx-e _L12956_))))
                                    (let ((_new-case-lambda-expr12994_
                                           (gxc#apply-expression-subst
                                            _L12954_
                                            _L12956_
                                            _lambda-id12992_)))
                                      (let ()
                                        (begin
                                          (gxc#verbose
                                           '"lift opt-lambda dispatch "
                                           (gxc#identifier-symbol _L12957_)
                                           '" => "
                                           _lambda-id12992_)
                                          (gx#core-bind-runtime!__0
                                           _lambda-id12992_)
                                          (gxc#xform-wrap-source
                                           (cons '%#begin
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#define-values
                                                              (cons (cons _lambda-id12992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons _L12955_ '())))
                _stx12770_)
               (cons (gxc#lift-top-lambda-define-values%
                      (gxc#xform-wrap-source
                       (cons '%#define-values
                             (cons (cons _L12957_ '())
                                   (cons _new-case-lambda-expr12994_ '())))
                       _stx12770_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx12770_)))))
                                  (_g1277912861_ _g1278112864_)))
                            _hd1284812949_
                            _hd1284512941_
                            _hd1284212933_
                            _hd1282412885_)
                           (_g1277912861_ _g1278112864_))
                       (_g1277912861_ _g1278112864_))))
               (_g1277912861_ _g1278112864_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1277912861_
                                                    _g1278112864_))
                                               (_g1277912861_ _g1278112864_))))
                                       (_g1277912861_ _g1278112864_))
                                   (_g1277912861_ _g1278112864_))))
                           (_g1277912861_ _g1278112864_))))
                   (_g1277912861_ _g1278112864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1277912861_
                                                    _g1278112864_))))
                                           (_g1277912861_ _g1278112864_))
                                       (_g1277912861_ _g1278112864_))
                                   (_g1277912861_ _g1278112864_))))
                           (_g1277912861_ _g1278112864_))))
                   (_g1277912861_ _g1278112864_))
               (_g1277912861_ _g1278112864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1277912861_ _g1278112864_))))
                                       (_g1277912861_ _g1278112864_))))
                               (_g1277912861_ _g1278112864_)))))
                    (let ((_g1277713094_
                           (lambda (_g1278113000_)
                             (if (gx#stx-pair? _g1278113000_)
                                 (let ((_e1280113002_
                                        (gx#stx-e _g1278113000_)))
                                   (let ((_hd1280213005_ (##car _e1280113002_))
                                         (_tl1280313007_
                                          (##cdr _e1280113002_)))
                                     (if (gx#stx-pair? _tl1280313007_)
                                         (let ((_e1280413010_
                                                (gx#stx-e _tl1280313007_)))
                                           (let ((_hd1280513013_
                                                  (##car _e1280413010_))
                                                 (_tl1280613015_
                                                  (##cdr _e1280413010_)))
                                             (if (gx#stx-pair? _hd1280513013_)
                                                 (let ((_e1280713018_
                                                        (gx#stx-e
                                                         _hd1280513013_)))
                                                   (let ((_hd1280813021_
                                                          (##car _e1280713018_))
                                                         (_tl1280913023_
                                                          (##cdr _e1280713018_)))
                                                     (if (gx#stx-null?
                                                          _tl1280913023_)
                                                         (if (gx#stx-pair?
                                                              _tl1280613015_)
                                                             (let ((_e1281013026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1280613015_)))
                       (let ((_hd1281113029_ (##car _e1281013026_))
                             (_tl1281213031_ (##cdr _e1281013026_)))
                         (if (gx#stx-null? _tl1281213031_)
                             ((lambda (_L13034_ _L13035_)
                                (if (if (gx#identifier? _L13035_)
                                        (_case-lambda-expr?12773_ _L13034_)
                                        '#f)
                                    (let ((_g1305113061_
                                           (lambda (_g1305213058_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1305213058_))))
                                      (let ((_g1305013091_
                                             (lambda (_g1305213064_)
                                               (if (gx#stx-pair? _g1305213064_)
                                                   (let ((_e1305413066_
                                                          (gx#stx-e
                                                           _g1305213064_)))
                                                     (let ((_hd1305513069_
                                                            (##car _e1305413066_))
                                                           (_tl1305613071_
                                                            (##cdr _e1305413066_)))
                                                       ((lambda (_L13074_)
                                                          (let ((_g16016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_lift-case-lambda-clauses12774_ _L13035_ _L13074_)))
                    (begin
                      (let ((_g16017_ (values-count _g16016_)))
                        (if (not (fx= _g16017_ 3))
                            (error "Context expects 3 values" _g16017_)))
                      (let ((_ids13084_ (values-ref _g16016_ 0))
                            (_impls13085_ (values-ref _g16016_ 1))
                            (_clauses13086_ (values-ref _g16016_ 2)))
                        (let ((_defs13088_
                               (map _case-lambda-clause-def12775_
                                    _ids13084_
                                    _impls13085_)))
                          (let ()
                            (begin
                              (gxc#verbose
                               '"lift case-lambda clauses "
                               (gxc#identifier-symbol _L13035_)
                               '" => "
                               _ids13084_)
                              (for-each gx#core-bind-runtime! _ids13084_)
                              (gxc#xform-wrap-source
                               (cons '%#begin
                                     (foldr cons
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons (cons _L13035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (gxc#xform-wrap-source
                              (cons '%#case-lambda _clauses13086_)
                              _L13034_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx12770_)
                                                  '())
                                            _defs13088_))
                               _stx12770_))))))))
                _tl1305613071_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1305113061_
                                                    _g1305213064_)))))
                                        (_g1305013091_ _L13034_)))
                                    (_g1277812997_ _g1278113000_)))
                              _hd1281113029_
                              _hd1280813021_)
                             (_g1277812997_ _g1278113000_))))
                     (_g1277812997_ _g1278113000_))
                 (_g1277812997_ _g1278113000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1277812997_
                                                  _g1278113000_))))
                                         (_g1277812997_ _g1278113000_))))
                                 (_g1277812997_ _g1278113000_)))))
                      (let ((_g1277613158_
                             (lambda (_g1278113097_)
                               (if (gx#stx-pair? _g1278113097_)
                                   (let ((_e1278413099_
                                          (gx#stx-e _g1278113097_)))
                                     (let ((_hd1278513102_
                                            (##car _e1278413099_))
                                           (_tl1278613104_
                                            (##cdr _e1278413099_)))
                                       (if (gx#stx-pair? _tl1278613104_)
                                           (let ((_e1278713107_
                                                  (gx#stx-e _tl1278613104_)))
                                             (let ((_hd1278813110_
                                                    (##car _e1278713107_))
                                                   (_tl1278913112_
                                                    (##cdr _e1278713107_)))
                                               (if (gx#stx-pair?
                                                    _hd1278813110_)
                                                   (let ((_e1279013115_
                                                          (gx#stx-e
                                                           _hd1278813110_)))
                                                     (let ((_hd1279113118_
                                                            (##car _e1279013115_))
                                                           (_tl1279213120_
                                                            (##cdr _e1279013115_)))
                                                       (if (gx#stx-null?
                                                            _tl1279213120_)
                                                           (if (gx#stx-pair?
                                                                _tl1278913112_)
                                                               (let ((_e1279313123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1278913112_)))
                         (let ((_hd1279413126_ (##car _e1279313123_))
                               (_tl1279513128_ (##cdr _e1279313123_)))
                           (if (gx#stx-pair? _hd1279413126_)
                               (let ((_e1279613131_ (gx#stx-e _hd1279413126_)))
                                 (let ((_hd1279713134_ (##car _e1279613131_))
                                       (_tl1279813136_ (##cdr _e1279613131_)))
                                   (if (gx#identifier? _hd1279713134_)
                                       (if (gx#stx-eq?
                                            '%#case-lambda
                                            _hd1279713134_)
                                           (if (gx#stx-null? _tl1279513128_)
                                               ((lambda (_L13139_ _L13140_)
                                                  (if (if (gx#identifier?
                                                           _L13140_)
                                                          (andmap gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13139_)
                  '#f)
              _stx12770_
              (_g1277713094_ _g1278113097_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1279813136_
                                                _hd1279113118_)
                                               (_g1277713094_ _g1278113097_))
                                           (_g1277713094_ _g1278113097_))
                                       (_g1277713094_ _g1278113097_))))
                               (_g1277713094_ _g1278113097_))))
                       (_g1277713094_ _g1278113097_))
                   (_g1277713094_ _g1278113097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1277713094_
                                                    _g1278113097_))))
                                           (_g1277713094_ _g1278113097_))))
                                   (_g1277713094_ _g1278113097_)))))
                        (_g1277613158_ _stx12770_))))))))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx12708_ _id12709_ _new-id12710_)
      (let ((_g1271312726_
             (lambda (_g1271412723_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1271412723_))))
        (let ((_g1271212733_
               (lambda (_g1271412729_) ((lambda () _stx12708_)))))
          (let ((_g1271112767_
                 (lambda (_g1271412736_)
                   (if (gx#stx-pair? _g1271412736_)
                       (let ((_e1271612738_ (gx#stx-e _g1271412736_)))
                         (let ((_hd1271712741_ (##car _e1271612738_))
                               (_tl1271812743_ (##cdr _e1271612738_)))
                           (if (gx#stx-pair? _tl1271812743_)
                               (let ((_e1271912746_ (gx#stx-e _tl1271812743_)))
                                 (let ((_hd1272012749_ (##car _e1271912746_))
                                       (_tl1272112751_ (##cdr _e1271912746_)))
                                   (if (gx#stx-null? _tl1272112751_)
                                       ((lambda (_L12754_)
                                          (if (gx#free-identifier=?
                                               _L12754_
                                               _id12709_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id12710_ '()))
                                               _stx12708_)
                                              (_g1271212733_ _g1271412736_)))
                                        _hd1272012749_)
                                       (_g1271212733_ _g1271412736_))))
                               (_g1271212733_ _g1271412736_))))
                       (_g1271212733_ _g1271412736_)))))
            (_g1271112767_ _stx12708_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx12613_)
      (let ((_g1261612636_
             (lambda (_g1261712633_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1261712633_))))
        (let ((_g1261512643_ (lambda (_g1261712639_) ((lambda () (void))))))
          (let ((_g1261412705_
                 (lambda (_g1261712646_)
                   (if (gx#stx-pair? _g1261712646_)
                       (let ((_e1262012648_ (gx#stx-e _g1261712646_)))
                         (let ((_hd1262112651_ (##car _e1262012648_))
                               (_tl1262212653_ (##cdr _e1262012648_)))
                           (if (gx#stx-pair? _tl1262212653_)
                               (let ((_e1262312656_ (gx#stx-e _tl1262212653_)))
                                 (let ((_hd1262412659_ (##car _e1262312656_))
                                       (_tl1262512661_ (##cdr _e1262312656_)))
                                   (if (gx#stx-pair? _hd1262412659_)
                                       (let ((_e1262612664_
                                              (gx#stx-e _hd1262412659_)))
                                         (let ((_hd1262712667_
                                                (##car _e1262612664_))
                                               (_tl1262812669_
                                                (##cdr _e1262612664_)))
                                           (if (gx#stx-null? _tl1262812669_)
                                               (if (gx#stx-pair?
                                                    _tl1262512661_)
                                                   (let ((_e1262912672_
                                                          (gx#stx-e
                                                           _tl1262512661_)))
                                                     (let ((_hd1263012675_
                                                            (##car _e1262912672_))
                                                           (_tl1263112677_
                                                            (##cdr _e1262912672_)))
                                                       (if (gx#stx-null?
                                                            _tl1263112677_)
                                                           ((lambda (_L12680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L12681_)
                      (let ((_type1269812700_
                             (gxc#apply-basic-expression-type _L12680_)))
                        (if _type1269812700_
                            (let ((_type12703_ _type1269812700_))
                              (gxc#optimizer-declare-type!
                               (gxc#identifier-symbol _L12681_)
                               _type12703_))
                            '#f)))
                    _hd1263012675_
                    _hd1262712667_)
                   (_g1261512643_ _g1261712646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1261512643_
                                                    _g1261712646_))
                                               (_g1261512643_ _g1261712646_))))
                                       (_g1261512643_ _g1261712646_))))
                               (_g1261512643_ _g1261712646_))))
                       (_g1261512643_ _g1261712646_)))))
            (_g1261412705_ _stx12613_))))))
  (define gxc#collect-type-call%
    (lambda (_stx12167_)
      (let ((_g1217112273_
             (lambda (_g1217212270_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1217212270_))))
        (let ((_g1217012280_ (lambda (_g1217212276_) ((lambda () (void))))))
          (let ((_g1216912430_
                 (lambda (_g1217212283_)
                   (if (gx#stx-pair? _g1217212283_)
                       (let ((_e1223012285_ (gx#stx-e _g1217212283_)))
                         (let ((_hd1223112288_ (##car _e1223012285_))
                               (_tl1223212290_ (##cdr _e1223012285_)))
                           (if (gx#stx-pair? _tl1223212290_)
                               (let ((_e1223312293_ (gx#stx-e _tl1223212290_)))
                                 (let ((_hd1223412296_ (##car _e1223312293_))
                                       (_tl1223512298_ (##cdr _e1223312293_)))
                                   (if (gx#stx-pair? _hd1223412296_)
                                       (let ((_e1223612301_
                                              (gx#stx-e _hd1223412296_)))
                                         (let ((_hd1223712304_
                                                (##car _e1223612301_))
                                               (_tl1223812306_
                                                (##cdr _e1223612301_)))
                                           (if (gx#identifier? _hd1223712304_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1223712304_)
                                                   (if (gx#stx-pair?
                                                        _tl1223812306_)
                                                       (let ((_e1223912309_
                                                              (gx#stx-e
                                                               _tl1223812306_)))
                                                         (let ((_hd1224012312_
                                                                (##car _e1223912309_))
                                                               (_tl1224112314_
                                                                (##cdr _e1223912309_)))
                                                           (if (gx#stx-null?
                                                                _tl1224112314_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1223512298_)
                           (let ((_e1224212317_ (gx#stx-e _tl1223512298_)))
                             (let ((_hd1224312320_ (##car _e1224212317_))
                                   (_tl1224412322_ (##cdr _e1224212317_)))
                               (if (gx#stx-pair? _hd1224312320_)
                                   (let ((_e1224512325_
                                          (gx#stx-e _hd1224312320_)))
                                     (let ((_hd1224612328_
                                            (##car _e1224512325_))
                                           (_tl1224712330_
                                            (##cdr _e1224512325_)))
                                       (if (gx#identifier? _hd1224612328_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1224612328_)
                                               (if (gx#stx-pair?
                                                    _tl1224712330_)
                                                   (let ((_e1224812333_
                                                          (gx#stx-e
                                                           _tl1224712330_)))
                                                     (let ((_hd1224912336_
                                                            (##car _e1224812333_))
                                                           (_tl1225012338_
                                                            (##cdr _e1224812333_)))
                                                       (if (gx#stx-null?
                                                            _tl1225012338_)
                                                           (if (gx#stx-pair?
                                                                _tl1224412322_)
                                                               (let ((_e1225112341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1224412322_)))
                         (let ((_hd1225212344_ (##car _e1225112341_))
                               (_tl1225312346_ (##cdr _e1225112341_)))
                           (if (gx#stx-pair? _hd1225212344_)
                               (let ((_e1225412349_ (gx#stx-e _hd1225212344_)))
                                 (let ((_hd1225512352_ (##car _e1225412349_))
                                       (_tl1225612354_ (##cdr _e1225412349_)))
                                   (if (gx#identifier? _hd1225512352_)
                                       (if (gx#stx-eq? '%#quote _hd1225512352_)
                                           (if (gx#stx-pair? _tl1225612354_)
                                               (let ((_e1225712357_
                                                      (gx#stx-e
                                                       _tl1225612354_)))
                                                 (let ((_hd1225812360_
                                                        (##car _e1225712357_))
                                                       (_tl1225912362_
                                                        (##cdr _e1225712357_)))
                                                   (if (gx#stx-null?
                                                        _tl1225912362_)
                                                       (if (gx#stx-pair?
                                                            _tl1225312346_)
                                                           (let ((_e1226012365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1225312346_)))
                     (let ((_hd1226112368_ (##car _e1226012365_))
                           (_tl1226212370_ (##cdr _e1226012365_)))
                       (if (gx#stx-pair? _hd1226112368_)
                           (let ((_e1226312373_ (gx#stx-e _hd1226112368_)))
                             (let ((_hd1226412376_ (##car _e1226312373_))
                                   (_tl1226512378_ (##cdr _e1226312373_)))
                               (if (gx#identifier? _hd1226412376_)
                                   (if (gx#stx-eq? '%#ref _hd1226412376_)
                                       (if (gx#stx-pair? _tl1226512378_)
                                           (let ((_e1226612381_
                                                  (gx#stx-e _tl1226512378_)))
                                             (let ((_hd1226712384_
                                                    (##car _e1226612381_))
                                                   (_tl1226812386_
                                                    (##cdr _e1226612381_)))
                                               (if (gx#stx-null?
                                                    _tl1226812386_)
                                                   (if (gx#stx-null?
                                                        _tl1226212370_)
                                                       ((lambda (_L12389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12390_
                         _L12391_
                         _L12392_)
                  (if (eq? (gxc#identifier-symbol
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda15811
                       (gxc#identifier-symbol _L12391_)
                       (gx#stx-e _L12390_)
                       (gxc#identifier-symbol _L12389_)
                       '#f)
                      (_g1217012280_ _g1217212283_)))
                _hd1226712384_
                _hd1225812360_
                _hd1224912336_
                _hd1224012312_)
               (_g1217012280_ _g1217212283_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1217012280_
                                                    _g1217212283_))))
                                           (_g1217012280_ _g1217212283_))
                                       (_g1217012280_ _g1217212283_))
                                   (_g1217012280_ _g1217212283_))))
                           (_g1217012280_ _g1217212283_))))
                   (_g1217012280_ _g1217212283_))
               (_g1217012280_ _g1217212283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1217012280_ _g1217212283_))
                                           (_g1217012280_ _g1217212283_))
                                       (_g1217012280_ _g1217212283_))))
                               (_g1217012280_ _g1217212283_))))
                       (_g1217012280_ _g1217212283_))
                   (_g1217012280_ _g1217212283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1217012280_
                                                    _g1217212283_))
                                               (_g1217012280_ _g1217212283_))
                                           (_g1217012280_ _g1217212283_))))
                                   (_g1217012280_ _g1217212283_))))
                           (_g1217012280_ _g1217212283_))
                       (_g1217012280_ _g1217212283_))))
               (_g1217012280_ _g1217212283_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1217012280_
                                                    _g1217212283_))
                                               (_g1217012280_ _g1217212283_))))
                                       (_g1217012280_ _g1217212283_))))
                               (_g1217012280_ _g1217212283_))))
                       (_g1217012280_ _g1217212283_)))))
            (let ((_g1216812610_
                   (lambda (_g1217212433_)
                     (if (gx#stx-pair? _g1217212433_)
                         (let ((_e1217812435_ (gx#stx-e _g1217212433_)))
                           (let ((_hd1217912438_ (##car _e1217812435_))
                                 (_tl1218012440_ (##cdr _e1217812435_)))
                             (if (gx#stx-pair? _tl1218012440_)
                                 (let ((_e1218112443_
                                        (gx#stx-e _tl1218012440_)))
                                   (let ((_hd1218212446_ (##car _e1218112443_))
                                         (_tl1218312448_
                                          (##cdr _e1218112443_)))
                                     (if (gx#stx-pair? _hd1218212446_)
                                         (let ((_e1218412451_
                                                (gx#stx-e _hd1218212446_)))
                                           (let ((_hd1218512454_
                                                  (##car _e1218412451_))
                                                 (_tl1218612456_
                                                  (##cdr _e1218412451_)))
                                             (if (gx#identifier?
                                                  _hd1218512454_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1218512454_)
                                                     (if (gx#stx-pair?
                                                          _tl1218612456_)
                                                         (let ((_e1218712459_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1218612456_)))
                   (let ((_hd1218812462_ (##car _e1218712459_))
                         (_tl1218912464_ (##cdr _e1218712459_)))
                     (if (gx#stx-null? _tl1218912464_)
                         (if (gx#stx-pair? _tl1218312448_)
                             (let ((_e1219012467_ (gx#stx-e _tl1218312448_)))
                               (let ((_hd1219112470_ (##car _e1219012467_))
                                     (_tl1219212472_ (##cdr _e1219012467_)))
                                 (if (gx#stx-pair? _hd1219112470_)
                                     (let ((_e1219312475_
                                            (gx#stx-e _hd1219112470_)))
                                       (let ((_hd1219412478_
                                              (##car _e1219312475_))
                                             (_tl1219512480_
                                              (##cdr _e1219312475_)))
                                         (if (gx#identifier? _hd1219412478_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1219412478_)
                                                 (if (gx#stx-pair?
                                                      _tl1219512480_)
                                                     (let ((_e1219612483_
                                                            (gx#stx-e
                                                             _tl1219512480_)))
                                                       (let ((_hd1219712486_
                                                              (##car _e1219612483_))
                                                             (_tl1219812488_
                                                              (##cdr _e1219612483_)))
                                                         (if (gx#stx-null?
                                                              _tl1219812488_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1219212472_)
                         (let ((_e1219912491_ (gx#stx-e _tl1219212472_)))
                           (let ((_hd1220012494_ (##car _e1219912491_))
                                 (_tl1220112496_ (##cdr _e1219912491_)))
                             (if (gx#stx-pair? _hd1220012494_)
                                 (let ((_e1220212499_
                                        (gx#stx-e _hd1220012494_)))
                                   (let ((_hd1220312502_ (##car _e1220212499_))
                                         (_tl1220412504_
                                          (##cdr _e1220212499_)))
                                     (if (gx#identifier? _hd1220312502_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1220312502_)
                                             (if (gx#stx-pair? _tl1220412504_)
                                                 (let ((_e1220512507_
                                                        (gx#stx-e
                                                         _tl1220412504_)))
                                                   (let ((_hd1220612510_
                                                          (##car _e1220512507_))
                                                         (_tl1220712512_
                                                          (##cdr _e1220512507_)))
                                                     (if (gx#stx-null?
                                                          _tl1220712512_)
                                                         (if (gx#stx-pair?
                                                              _tl1220112496_)
                                                             (let ((_e1220812515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1220112496_)))
                       (let ((_hd1220912518_ (##car _e1220812515_))
                             (_tl1221012520_ (##cdr _e1220812515_)))
                         (if (gx#stx-pair? _hd1220912518_)
                             (let ((_e1221112523_ (gx#stx-e _hd1220912518_)))
                               (let ((_hd1221212526_ (##car _e1221112523_))
                                     (_tl1221312528_ (##cdr _e1221112523_)))
                                 (if (gx#identifier? _hd1221212526_)
                                     (if (gx#stx-eq? '%#ref _hd1221212526_)
                                         (if (gx#stx-pair? _tl1221312528_)
                                             (let ((_e1221412531_
                                                    (gx#stx-e _tl1221312528_)))
                                               (let ((_hd1221512534_
                                                      (##car _e1221412531_))
                                                     (_tl1221612536_
                                                      (##cdr _e1221412531_)))
                                                 (if (gx#stx-null?
                                                      _tl1221612536_)
                                                     (if (gx#stx-pair?
                                                          _tl1221012520_)
                                                         (let ((_e1221712539_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1221012520_)))
                   (let ((_hd1221812542_ (##car _e1221712539_))
                         (_tl1221912544_ (##cdr _e1221712539_)))
                     (if (gx#stx-pair? _hd1221812542_)
                         (let ((_e1222012547_ (gx#stx-e _hd1221812542_)))
                           (let ((_hd1222112550_ (##car _e1222012547_))
                                 (_tl1222212552_ (##cdr _e1222012547_)))
                             (if (gx#identifier? _hd1222112550_)
                                 (if (gx#stx-eq? '%#quote _hd1222112550_)
                                     (if (gx#stx-pair? _tl1222212552_)
                                         (let ((_e1222312555_
                                                (gx#stx-e _tl1222212552_)))
                                           (let ((_hd1222412558_
                                                  (##car _e1222312555_))
                                                 (_tl1222512560_
                                                  (##cdr _e1222312555_)))
                                             (if (gx#stx-null? _tl1222512560_)
                                                 (if (gx#stx-null?
                                                      _tl1221912544_)
                                                     ((lambda (_L12563_
                                                               _L12564_
                                                               _L12565_
                                                               _L12566_
                                                               _L12567_)
                                                        (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12567_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda15811
                     (gxc#identifier-symbol _L12566_)
                     (gx#stx-e _L12565_)
                     (gxc#identifier-symbol _L12564_)
                     (gx#stx-e _L12563_))
                    (_g1216912430_ _g1217212433_)))
              _hd1222412558_
              _hd1221512534_
              _hd1220612510_
              _hd1219712486_
              _hd1218812462_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1216912430_
                                                      _g1217212433_))
                                                 (_g1216912430_
                                                  _g1217212433_))))
                                         (_g1216912430_ _g1217212433_))
                                     (_g1216912430_ _g1217212433_))
                                 (_g1216912430_ _g1217212433_))))
                         (_g1216912430_ _g1217212433_))))
                 (_g1216912430_ _g1217212433_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1216912430_
                                                      _g1217212433_))))
                                             (_g1216912430_ _g1217212433_))
                                         (_g1216912430_ _g1217212433_))
                                     (_g1216912430_ _g1217212433_))))
                             (_g1216912430_ _g1217212433_))))
                     (_g1216912430_ _g1217212433_))
                 (_g1216912430_ _g1217212433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1216912430_ _g1217212433_))
                                             (_g1216912430_ _g1217212433_))
                                         (_g1216912430_ _g1217212433_))))
                                 (_g1216912430_ _g1217212433_))))
                         (_g1216912430_ _g1217212433_))
                     (_g1216912430_ _g1217212433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1216912430_
                                                      _g1217212433_))
                                                 (_g1216912430_ _g1217212433_))
                                             (_g1216912430_ _g1217212433_))))
                                     (_g1216912430_ _g1217212433_))))
                             (_g1216912430_ _g1217212433_))
                         (_g1216912430_ _g1217212433_))))
                 (_g1216912430_ _g1217212433_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1216912430_
                                                      _g1217212433_))
                                                 (_g1216912430_
                                                  _g1217212433_))))
                                         (_g1216912430_ _g1217212433_))))
                                 (_g1216912430_ _g1217212433_))))
                         (_g1216912430_ _g1217212433_)))))
              (_g1216812610_ _stx12167_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx12107_)
      (let ((_g1211012123_
             (lambda (_g1211112120_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1211112120_))))
        (let ((_g1210912130_ (lambda (_g1211112126_) ((lambda () '#f)))))
          (let ((_g1210812164_
                 (lambda (_g1211112133_)
                   (if (gx#stx-pair? _g1211112133_)
                       (let ((_e1211312135_ (gx#stx-e _g1211112133_)))
                         (let ((_hd1211412138_ (##car _e1211312135_))
                               (_tl1211512140_ (##cdr _e1211312135_)))
                           (if (gx#stx-pair? _tl1211512140_)
                               (let ((_e1211612143_ (gx#stx-e _tl1211512140_)))
                                 (let ((_hd1211712146_ (##car _e1211612143_))
                                       (_tl1211812148_ (##cdr _e1211612143_)))
                                   (if (gx#stx-null? _tl1211812148_)
                                       ((lambda (_L12151_)
                                          (gxc#compile-e _L12151_))
                                        _hd1211712146_)
                                       (_g1210912130_ _g1211112133_))))
                               (_g1210912130_ _g1211112133_))))
                       (_g1210912130_ _g1211112133_)))))
            (_g1210812164_ _stx12107_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx11532_)
      (let ((_g1153711658_
             (lambda (_g1153811655_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1153811655_))))
        (let ((_g1153611665_ (lambda (_g1153811661_) ((lambda () '#f)))))
          (let ((_g1153511689_
                 (lambda (_g1153811668_)
                   (if (gx#stx-pair? _g1153811668_)
                       (let ((_e1165111670_ (gx#stx-e _g1153811668_)))
                         (let ((_hd1165211673_ (##car _e1165111670_))
                               (_tl1165311675_ (##cdr _e1165111670_)))
                           ((lambda (_L11678_)
                              (if (gxc#dispatch-lambda-form? _L11678_)
                                  (##structure
                                   gxc#!lambda::t
                                   'lambda
                                   (gxc#lambda-form-arity _L11678_)
                                   (gxc#dispatch-lambda-form-delegate
                                    _L11678_))
                                  (_g1153611665_ _g1153811668_)))
                            _tl1165311675_)))
                       (_g1153611665_ _g1153811668_)))))
            (let ((_g1153411919_
                   (lambda (_g1153811692_)
                     (if (gx#stx-pair? _g1153811692_)
                         (let ((_e1159611694_ (gx#stx-e _g1153811692_)))
                           (let ((_hd1159711697_ (##car _e1159611694_))
                                 (_tl1159811699_ (##cdr _e1159611694_)))
                             (if (gx#stx-pair? _tl1159811699_)
                                 (let ((_e1159911702_
                                        (gx#stx-e _tl1159811699_)))
                                   (let ((_hd1160011705_ (##car _e1159911702_))
                                         (_tl1160111707_
                                          (##cdr _e1159911702_)))
                                     (if (gx#stx-pair/null? _hd1160011705_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1160011705_)
                                                   '0)
                                             (let ((_g16022_
                                                    (gx#syntax-split-splice
                                                     _hd1160011705_
                                                     '0)))
                                               (begin
                                                 (let ((_g16023_
                                                        (values-count
                                                         _g16022_)))
                                                   (if (not (fx= _g16023_ 2))
                                                       (error "Context expects 2 values"
                                                              _g16023_)))
                                                 (let ((_target1160211710_
                                                        (values-ref
                                                         _g16022_
                                                         0))
                                                       (_tl1160411712_
                                                        (values-ref
                                                         _g16022_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1160411712_)
                                                       (letrec ((_loop1160511715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1160311718_ _arg1160911720_)
                           (if (gx#stx-pair? _hd1160311718_)
                               (let ((_e1160611723_ (gx#stx-e _hd1160311718_)))
                                 (let ((_lp-hd1160711726_
                                        (##car _e1160611723_))
                                       (_lp-tl1160811728_
                                        (##cdr _e1160611723_)))
                                   (_loop1160511715_
                                    _lp-tl1160811728_
                                    (cons _lp-hd1160711726_ _arg1160911720_))))
                               (let ((_arg1161011731_
                                      (reverse _arg1160911720_)))
                                 (if (gx#stx-pair? _tl1160111707_)
                                     (let ((_e1161111734_
                                            (gx#stx-e _tl1160111707_)))
                                       (let ((_hd1161211737_
                                              (##car _e1161111734_))
                                             (_tl1161311739_
                                              (##cdr _e1161111734_)))
                                         (if (gx#stx-pair? _hd1161211737_)
                                             (let ((_e1161411742_
                                                    (gx#stx-e _hd1161211737_)))
                                               (let ((_hd1161511745_
                                                      (##car _e1161411742_))
                                                     (_tl1161611747_
                                                      (##cdr _e1161411742_)))
                                                 (if (gx#identifier?
                                                      _hd1161511745_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1161511745_)
                                                         (if (gx#stx-pair?
                                                              _tl1161611747_)
                                                             (let ((_e1161711750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1161611747_)))
                       (let ((_hd1161811753_ (##car _e1161711750_))
                             (_tl1161911755_ (##cdr _e1161711750_)))
                         (if (gx#stx-pair? _hd1161811753_)
                             (let ((_e1162011758_ (gx#stx-e _hd1161811753_)))
                               (let ((_hd1162111761_ (##car _e1162011758_))
                                     (_tl1162211763_ (##cdr _e1162011758_)))
                                 (if (gx#identifier? _hd1162111761_)
                                     (if (gx#stx-eq? '%#ref _hd1162111761_)
                                         (if (gx#stx-pair? _tl1162211763_)
                                             (let ((_e1162311766_
                                                    (gx#stx-e _tl1162211763_)))
                                               (let ((_hd1162411769_
                                                      (##car _e1162311766_))
                                                     (_tl1162511771_
                                                      (##cdr _e1162311766_)))
                                                 (if (gx#stx-null?
                                                      _tl1162511771_)
                                                     (if (gx#stx-pair?
                                                          _tl1161911755_)
                                                         (let ((_e1162611774_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1161911755_)))
                   (let ((_hd1162711777_ (##car _e1162611774_))
                         (_tl1162811779_ (##cdr _e1162611774_)))
                     (if (gx#stx-pair? _hd1162711777_)
                         (let ((_e1162911782_ (gx#stx-e _hd1162711777_)))
                           (let ((_hd1163011785_ (##car _e1162911782_))
                                 (_tl1163111787_ (##cdr _e1162911782_)))
                             (if (gx#identifier? _hd1163011785_)
                                 (if (gx#stx-eq? '%#ref _hd1163011785_)
                                     (if (gx#stx-pair? _tl1163111787_)
                                         (let ((_e1163211790_
                                                (gx#stx-e _tl1163111787_)))
                                           (let ((_hd1163311793_
                                                  (##car _e1163211790_))
                                                 (_tl1163411795_
                                                  (##cdr _e1163211790_)))
                                             (if (gx#stx-null? _tl1163411795_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1162811779_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1162811779_)
                                                               '0)
                                                         (let ((_g16024_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1162811779_
                         '0)))
                   (begin
                     (let ((_g16025_ (values-count _g16024_)))
                       (if (not (fx= _g16025_ 2))
                           (error "Context expects 2 values" _g16025_)))
                     (let ((_target1163511798_ (values-ref _g16024_ 0))
                           (_tl1163711800_ (values-ref _g16024_ 1)))
                       (if (gx#stx-null? _tl1163711800_)
                           (letrec ((_loop1163811803_
                                     (lambda (_hd1163611806_ _xarg1164211808_)
                                       (if (gx#stx-pair? _hd1163611806_)
                                           (let ((_e1163911811_
                                                  (gx#stx-e _hd1163611806_)))
                                             (let ((_lp-hd1164011814_
                                                    (##car _e1163911811_))
                                                   (_lp-tl1164111816_
                                                    (##cdr _e1163911811_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1164011814_)
                                                   (let ((_e1164411819_
                                                          (gx#stx-e
                                                           _lp-hd1164011814_)))
                                                     (let ((_hd1164511822_
                                                            (##car _e1164411819_))
                                                           (_tl1164611824_
                                                            (##cdr _e1164411819_)))
                                                       (if (gx#identifier?
                                                            _hd1164511822_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1164511822_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1164611824_)
                           (let ((_e1164711827_ (gx#stx-e _tl1164611824_)))
                             (let ((_hd1164811830_ (##car _e1164711827_))
                                   (_tl1164911832_ (##cdr _e1164711827_)))
                               (if (gx#stx-null? _tl1164911832_)
                                   (_loop1163811803_
                                    _lp-tl1164111816_
                                    (cons _hd1164811830_ _xarg1164211808_))
                                   (_g1153511689_ _g1153811692_))))
                           (_g1153511689_ _g1153811692_))
                       (_g1153511689_ _g1153811692_))
                   (_g1153511689_ _g1153811692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1153511689_
                                                    _g1153811692_))))
                                           (let ((_xarg1164311835_
                                                  (reverse _xarg1164211808_)))
                                             (if (gx#stx-null? _tl1161311739_)
                                                 ((lambda (_L11838_
                                                           _L11839_
                                                           _L11840_
                                                           _L11841_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1187811881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1187911883_)
                                (cons _g1187811881_ _g1187911883_))
                              '()
                              _L11841_)))
                    (if (eq? (gxc#identifier-symbol _L11840_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr (lambda (_g1188511888_
                                                           _g1188611890_)
                                                    (cons _g1188511888_
                                                          _g1188611890_))
                                                  '()
                                                  _L11841_)))
                                 (length (begin
                                           '#!void
                                           (foldr (lambda (_g1189211895_
                                                           _g1189311897_)
                                                    (cons _g1189211895_
                                                          _g1189311897_))
                                                  '()
                                                  _L11838_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1189911902_
                                                      _g1190011904_)
                                               (cons _g1189911902_
                                                     _g1190011904_))
                                             '()
                                             _L11841_))
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1190611909_
                                                      _g1190711911_)
                                               (cons _g1190611909_
                                                     _g1190711911_))
                                             '()
                                             _L11838_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t11914_ (gxc#identifier-symbol _L11839_)))
                  (let ((_type11916_
                         (gxc#optimizer-resolve-type _type-t11914_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type11916_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t11914_)
                          '#f))))
                (_g1153511689_ _g1153811692_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1164311835_
                                                  _hd1163311793_
                                                  _hd1162411769_
                                                  _arg1161011731_)
                                                 (_g1153511689_
                                                  _g1153811692_)))))))
                             (_loop1163811803_ _target1163511798_ '()))
                           (_g1153511689_ _g1153811692_)))))
                 (_g1153511689_ _g1153811692_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1153511689_
                                                      _g1153811692_))
                                                 (_g1153511689_
                                                  _g1153811692_))))
                                         (_g1153511689_ _g1153811692_))
                                     (_g1153511689_ _g1153811692_))
                                 (_g1153511689_ _g1153811692_))))
                         (_g1153511689_ _g1153811692_))))
                 (_g1153511689_ _g1153811692_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1153511689_
                                                      _g1153811692_))))
                                             (_g1153511689_ _g1153811692_))
                                         (_g1153511689_ _g1153811692_))
                                     (_g1153511689_ _g1153811692_))))
                             (_g1153511689_ _g1153811692_))))
                     (_g1153511689_ _g1153811692_))
                 (_g1153511689_ _g1153811692_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1153511689_
                                                      _g1153811692_))))
                                             (_g1153511689_ _g1153811692_))))
                                     (_g1153511689_ _g1153811692_)))))))
                 (_loop1160511715_ _target1160211710_ '()))
               (_g1153511689_ _g1153811692_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1153511689_ _g1153811692_))
                                         (_g1153511689_ _g1153811692_))))
                                 (_g1153511689_ _g1153811692_))))
                         (_g1153511689_ _g1153811692_)))))
              (let ((_g1153312104_
                     (lambda (_g1153811922_)
                       (if (gx#stx-pair? _g1153811922_)
                           (let ((_e1154411924_ (gx#stx-e _g1153811922_)))
                             (let ((_hd1154511927_ (##car _e1154411924_))
                                   (_tl1154611929_ (##cdr _e1154411924_)))
                               (if (gx#stx-pair? _tl1154611929_)
                                   (let ((_e1154711932_
                                          (gx#stx-e _tl1154611929_)))
                                     (let ((_hd1154811935_
                                            (##car _e1154711932_))
                                           (_tl1154911937_
                                            (##cdr _e1154711932_)))
                                       (if (gx#stx-pair? _tl1154911937_)
                                           (let ((_e1155011940_
                                                  (gx#stx-e _tl1154911937_)))
                                             (let ((_hd1155111943_
                                                    (##car _e1155011940_))
                                                   (_tl1155211945_
                                                    (##cdr _e1155011940_)))
                                               (if (gx#stx-pair?
                                                    _hd1155111943_)
                                                   (let ((_e1155311948_
                                                          (gx#stx-e
                                                           _hd1155111943_)))
                                                     (let ((_hd1155411951_
                                                            (##car _e1155311948_))
                                                           (_tl1155511953_
                                                            (##cdr _e1155311948_)))
                                                       (if (gx#identifier?
                                                            _hd1155411951_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1155411951_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1155511953_)
                           (let ((_e1155611956_ (gx#stx-e _tl1155511953_)))
                             (let ((_hd1155711959_ (##car _e1155611956_))
                                   (_tl1155811961_ (##cdr _e1155611956_)))
                               (if (gx#stx-pair? _hd1155711959_)
                                   (let ((_e1155911964_
                                          (gx#stx-e _hd1155711959_)))
                                     (let ((_hd1156011967_
                                            (##car _e1155911964_))
                                           (_tl1156111969_
                                            (##cdr _e1155911964_)))
                                       (if (gx#identifier? _hd1156011967_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1156011967_)
                                               (if (gx#stx-pair?
                                                    _tl1156111969_)
                                                   (let ((_e1156211972_
                                                          (gx#stx-e
                                                           _tl1156111969_)))
                                                     (let ((_hd1156311975_
                                                            (##car _e1156211972_))
                                                           (_tl1156411977_
                                                            (##cdr _e1156211972_)))
                                                       (if (gx#stx-null?
                                                            _tl1156411977_)
                                                           (if (gx#stx-pair?
                                                                _tl1155811961_)
                                                               (let ((_e1156511980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1155811961_)))
                         (let ((_hd1156611983_ (##car _e1156511980_))
                               (_tl1156711985_ (##cdr _e1156511980_)))
                           (if (gx#stx-pair? _hd1156611983_)
                               (let ((_e1156811988_ (gx#stx-e _hd1156611983_)))
                                 (let ((_hd1156911991_ (##car _e1156811988_))
                                       (_tl1157011993_ (##cdr _e1156811988_)))
                                   (if (gx#identifier? _hd1156911991_)
                                       (if (gx#stx-eq? '%#ref _hd1156911991_)
                                           (if (gx#stx-pair? _tl1157011993_)
                                               (let ((_e1157111996_
                                                      (gx#stx-e
                                                       _tl1157011993_)))
                                                 (let ((_hd1157211999_
                                                        (##car _e1157111996_))
                                                       (_tl1157312001_
                                                        (##cdr _e1157111996_)))
                                                   (if (gx#stx-null?
                                                        _tl1157312001_)
                                                       (if (gx#stx-pair?
                                                            _tl1156711985_)
                                                           (let ((_e1157412004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1156711985_)))
                     (let ((_hd1157512007_ (##car _e1157412004_))
                           (_tl1157612009_ (##cdr _e1157412004_)))
                       (if (gx#stx-pair? _hd1157512007_)
                           (let ((_e1157712012_ (gx#stx-e _hd1157512007_)))
                             (let ((_hd1157812015_ (##car _e1157712012_))
                                   (_tl1157912017_ (##cdr _e1157712012_)))
                               (if (gx#identifier? _hd1157812015_)
                                   (if (gx#stx-eq? '%#ref _hd1157812015_)
                                       (if (gx#stx-pair? _tl1157912017_)
                                           (let ((_e1158012020_
                                                  (gx#stx-e _tl1157912017_)))
                                             (let ((_hd1158112023_
                                                    (##car _e1158012020_))
                                                   (_tl1158212025_
                                                    (##cdr _e1158012020_)))
                                               (if (gx#stx-null?
                                                    _tl1158212025_)
                                                   (if (gx#stx-pair?
                                                        _tl1157612009_)
                                                       (let ((_e1158312028_
                                                              (gx#stx-e
                                                               _tl1157612009_)))
                                                         (let ((_hd1158412031_
                                                                (##car _e1158312028_))
                                                               (_tl1158512033_
                                                                (##cdr _e1158312028_)))
                                                           (if (gx#stx-pair?
                                                                _hd1158412031_)
                                                               (let ((_e1158612036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1158412031_)))
                         (let ((_hd1158712039_ (##car _e1158612036_))
                               (_tl1158812041_ (##cdr _e1158612036_)))
                           (if (gx#identifier? _hd1158712039_)
                               (if (gx#stx-eq? '%#ref _hd1158712039_)
                                   (if (gx#stx-pair? _tl1158812041_)
                                       (let ((_e1158912044_
                                              (gx#stx-e _tl1158812041_)))
                                         (let ((_hd1159012047_
                                                (##car _e1158912044_))
                                               (_tl1159112049_
                                                (##cdr _e1158912044_)))
                                           (if (gx#stx-null? _tl1159112049_)
                                               (if (gx#stx-null?
                                                    _tl1158512033_)
                                                   (if (gx#stx-null?
                                                        _tl1155211945_)
                                                       ((lambda (_L12052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12053_
                         _L12054_
                         _L12055_
                         _L12056_)
                  (if (if (gx#identifier? _L12056_)
                          (if (eq? (gxc#identifier-symbol _L12055_) 'apply)
                              (if (eq? (gxc#identifier-symbol _L12054_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L12056_ _L12052_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t12099_ (gxc#identifier-symbol _L12053_)))
                        (let ((_type12101_
                               (gxc#optimizer-resolve-type _type-t12099_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type12101_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t12099_)
                                '#f))))
                      (_g1153411919_ _g1153811922_)))
                _hd1159012047_
                _hd1158112023_
                _hd1157211999_
                _hd1156311975_
                _hd1154811935_)
               (_g1153411919_ _g1153811922_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1153411919_
                                                    _g1153811922_))
                                               (_g1153411919_ _g1153811922_))))
                                       (_g1153411919_ _g1153811922_))
                                   (_g1153411919_ _g1153811922_))
                               (_g1153411919_ _g1153811922_))))
                       (_g1153411919_ _g1153811922_))))
               (_g1153411919_ _g1153811922_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1153411919_
                                                    _g1153811922_))))
                                           (_g1153411919_ _g1153811922_))
                                       (_g1153411919_ _g1153811922_))
                                   (_g1153411919_ _g1153811922_))))
                           (_g1153411919_ _g1153811922_))))
                   (_g1153411919_ _g1153811922_))
               (_g1153411919_ _g1153811922_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1153411919_ _g1153811922_))
                                           (_g1153411919_ _g1153811922_))
                                       (_g1153411919_ _g1153811922_))))
                               (_g1153411919_ _g1153811922_))))
                       (_g1153411919_ _g1153811922_))
                   (_g1153411919_ _g1153811922_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1153411919_
                                                    _g1153811922_))
                                               (_g1153411919_ _g1153811922_))
                                           (_g1153411919_ _g1153811922_))))
                                   (_g1153411919_ _g1153811922_))))
                           (_g1153411919_ _g1153811922_))
                       (_g1153411919_ _g1153811922_))
                   (_g1153411919_ _g1153811922_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1153411919_
                                                    _g1153811922_))))
                                           (_g1153411919_ _g1153811922_))))
                                   (_g1153411919_ _g1153811922_))))
                           (_g1153411919_ _g1153811922_)))))
                (_g1153312104_ _stx11532_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx11478_)
      (let ((_clause-e11480_
             (lambda (_form11530_)
               (##structure
                gxc#!lambda::t
                'case-lambda-clause
                (gxc#lambda-form-arity _form11530_)
                (gxc#dispatch-lambda-form-delegate _form11530_)))))
        (let ((_g1148311493_
               (lambda (_g1148411490_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1148411490_))))
          (let ((_g1148211500_ (lambda (_g1148411496_) ((lambda () '#f)))))
            (let ((_g1148111527_
                   (lambda (_g1148411503_)
                     (if (gx#stx-pair? _g1148411503_)
                         (let ((_e1148611505_ (gx#stx-e _g1148411503_)))
                           (let ((_hd1148711508_ (##car _e1148611505_))
                                 (_tl1148811510_ (##cdr _e1148611505_)))
                             ((lambda (_L11513_)
                                (if (andmap gxc#dispatch-lambda-form? _L11513_)
                                    (let ((_clauses11525_
                                           (map _clause-e11480_ _L11513_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses11525_))
                                    (_g1148211500_ _g1148411503_)))
                              _tl1148811510_)))
                         (_g1148211500_ _g1148411503_)))))
              (_g1148111527_ _stx11478_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx11383_)
      (let ((_g1138611406_
             (lambda (_g1138711403_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1138711403_))))
        (let ((_g1138511413_ (lambda (_g1138711409_) ((lambda () '#f)))))
          (let ((_g1138411475_
                 (lambda (_g1138711416_)
                   (if (gx#stx-pair? _g1138711416_)
                       (let ((_e1139011418_ (gx#stx-e _g1138711416_)))
                         (let ((_hd1139111421_ (##car _e1139011418_))
                               (_tl1139211423_ (##cdr _e1139011418_)))
                           (if (gx#stx-pair? _tl1139211423_)
                               (let ((_e1139311426_ (gx#stx-e _tl1139211423_)))
                                 (let ((_hd1139411429_ (##car _e1139311426_))
                                       (_tl1139511431_ (##cdr _e1139311426_)))
                                   (if (gx#stx-pair? _hd1139411429_)
                                       (let ((_e1139611434_
                                              (gx#stx-e _hd1139411429_)))
                                         (let ((_hd1139711437_
                                                (##car _e1139611434_))
                                               (_tl1139811439_
                                                (##cdr _e1139611434_)))
                                           (if (gx#identifier? _hd1139711437_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1139711437_)
                                                   (if (gx#stx-pair?
                                                        _tl1139811439_)
                                                       (let ((_e1139911442_
                                                              (gx#stx-e
                                                               _tl1139811439_)))
                                                         (let ((_hd1140011445_
                                                                (##car _e1139911442_))
                                                               (_tl1140111447_
                                                                (##cdr _e1139911442_)))
                                                           (if (gx#stx-null?
                                                                _tl1140111447_)
                                                               ((lambda (_L11450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11451_)
                          (let ((_type-e1146811470_
                                 (hash-get
                                  gxc#basic-expression-type-builtin
                                  (gxc#identifier-symbol _L11451_))))
                            (if _type-e1146811470_
                                (let ((_type-e11473_ _type-e1146811470_))
                                  (_type-e11473_ _stx11383_ _L11450_))
                                '#f)))
                        _tl1139511431_
                        _hd1140011445_)
                       (_g1138511413_ _g1138711416_))))
               (_g1138511413_ _g1138711416_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1138511413_
                                                    _g1138711416_))
                                               (_g1138511413_ _g1138711416_))))
                                       (_g1138511413_ _g1138711416_))))
                               (_g1138511413_ _g1138711416_))))
                       (_g1138511413_ _g1138711416_)))))
            (_g1138411475_ _stx11383_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx10868_ _args10869_)
      (let ((_g1087310986_
             (lambda (_g1087410983_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1087410983_))))
        (let ((_g1087210993_
               (lambda (_g1087410989_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx10868_))
                      '#f))))))
          (let ((_g1087111200_
                 (lambda (_g1087410996_)
                   (if (gx#stx-pair? _g1087410996_)
                       (let ((_e1093410998_ (gx#stx-e _g1087410996_)))
                         (let ((_hd1093511001_ (##car _e1093410998_))
                               (_tl1093611003_ (##cdr _e1093410998_)))
                           (if (gx#stx-pair? _hd1093511001_)
                               (let ((_e1093711006_ (gx#stx-e _hd1093511001_)))
                                 (let ((_hd1093811009_ (##car _e1093711006_))
                                       (_tl1093911011_ (##cdr _e1093711006_)))
                                   (if (gx#identifier? _hd1093811009_)
                                       (if (gx#stx-eq? '%#quote _hd1093811009_)
                                           (if (gx#stx-pair? _tl1093911011_)
                                               (let ((_e1094011014_
                                                      (gx#stx-e
                                                       _tl1093911011_)))
                                                 (let ((_hd1094111017_
                                                        (##car _e1094011014_))
                                                       (_tl1094211019_
                                                        (##cdr _e1094011014_)))
                                                   (if (gx#stx-null?
                                                        _tl1094211019_)
                                                       (if (gx#stx-pair?
                                                            _tl1093611003_)
                                                           (let ((_e1094311022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1093611003_)))
                     (let ((_hd1094411025_ (##car _e1094311022_))
                           (_tl1094511027_ (##cdr _e1094311022_)))
                       (if (gx#stx-pair? _hd1094411025_)
                           (let ((_e1094611030_ (gx#stx-e _hd1094411025_)))
                             (let ((_hd1094711033_ (##car _e1094611030_))
                                   (_tl1094811035_ (##cdr _e1094611030_)))
                               (if (gx#identifier? _hd1094711033_)
                                   (if (gx#stx-eq? '%#ref _hd1094711033_)
                                       (if (gx#stx-pair? _tl1094811035_)
                                           (let ((_e1094911038_
                                                  (gx#stx-e _tl1094811035_)))
                                             (let ((_hd1095011041_
                                                    (##car _e1094911038_))
                                                   (_tl1095111043_
                                                    (##cdr _e1094911038_)))
                                               (if (gx#stx-null?
                                                    _tl1095111043_)
                                                   (if (gx#stx-pair?
                                                        _tl1094511027_)
                                                       (let ((_e1095211046_
                                                              (gx#stx-e
                                                               _tl1094511027_)))
                                                         (let ((_hd1095311049_
                                                                (##car _e1095211046_))
                                                               (_tl1095411051_
                                                                (##cdr _e1095211046_)))
                                                           (if (gx#stx-pair?
                                                                _hd1095311049_)
                                                               (let ((_e1095511054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1095311049_)))
                         (let ((_hd1095611057_ (##car _e1095511054_))
                               (_tl1095711059_ (##cdr _e1095511054_)))
                           (if (gx#identifier? _hd1095611057_)
                               (if (gx#stx-eq? '%#quote _hd1095611057_)
                                   (if (gx#stx-pair? _tl1095711059_)
                                       (let ((_e1095811062_
                                              (gx#stx-e _tl1095711059_)))
                                         (let ((_hd1095911065_
                                                (##car _e1095811062_))
                                               (_tl1096011067_
                                                (##cdr _e1095811062_)))
                                           (if (gx#stx-null? _tl1096011067_)
                                               (if (gx#stx-pair?
                                                    _tl1095411051_)
                                                   (let ((_e1096111070_
                                                          (gx#stx-e
                                                           _tl1095411051_)))
                                                     (let ((_hd1096211073_
                                                            (##car _e1096111070_))
                                                           (_tl1096311075_
                                                            (##cdr _e1096111070_)))
                                                       (if (gx#stx-pair?
                                                            _tl1096311075_)
                                                           (let ((_e1096411078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1096311075_)))
                     (let ((_hd1096511081_ (##car _e1096411078_))
                           (_tl1096611083_ (##cdr _e1096411078_)))
                       (if (gx#stx-pair? _hd1096511081_)
                           (let ((_e1096711086_ (gx#stx-e _hd1096511081_)))
                             (let ((_hd1096811089_ (##car _e1096711086_))
                                   (_tl1096911091_ (##cdr _e1096711086_)))
                               (if (gx#identifier? _hd1096811089_)
                                   (if (gx#stx-eq? '%#quote _hd1096811089_)
                                       (if (gx#stx-pair? _tl1096911091_)
                                           (let ((_e1097011094_
                                                  (gx#stx-e _tl1096911091_)))
                                             (let ((_hd1097111097_
                                                    (##car _e1097011094_))
                                                   (_tl1097211099_
                                                    (##cdr _e1097011094_)))
                                               (if (gx#stx-null?
                                                    _tl1097211099_)
                                                   (if (gx#stx-pair?
                                                        _tl1096611083_)
                                                       (let ((_e1097311102_
                                                              (gx#stx-e
                                                               _tl1096611083_)))
                                                         (let ((_hd1097411105_
                                                                (##car _e1097311102_))
                                                               (_tl1097511107_
                                                                (##cdr _e1097311102_)))
                                                           (if (gx#stx-pair?
                                                                _hd1097411105_)
                                                               (let ((_e1097611110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1097411105_)))
                         (let ((_hd1097711113_ (##car _e1097611110_))
                               (_tl1097811115_ (##cdr _e1097611110_)))
                           (if (gx#identifier? _hd1097711113_)
                               (if (gx#stx-eq? '%#quote _hd1097711113_)
                                   (if (gx#stx-pair? _tl1097811115_)
                                       (let ((_e1097911118_
                                              (gx#stx-e _tl1097811115_)))
                                         (let ((_hd1098011121_
                                                (##car _e1097911118_))
                                               (_tl1098111123_
                                                (##cdr _e1097911118_)))
                                           (if (gx#stx-null? _tl1098111123_)
                                               (if (gx#stx-null?
                                                    _tl1097511107_)
                                                   ((lambda (_L11126_
                                                             _L11127_
                                                             _L11128_
                                                             _L11129_
                                                             _L11130_
                                                             _L11131_)
                                                      (let ((_super-t11177_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11130_)
                         (gxc#identifier-symbol _L11130_)
                         '#f)))
                (let ((_super-type11179_
                       (if _super-t11177_
                           (gxc#optimizer-resolve-type _super-t11177_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type11179_
                              (not (##structure-instance-of?
                                    _super-type11179_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx10868_
                           _L11130_)
                          '#!void)
                      (let ((_fields11195_ (gx#stx-e _L11129_))
                            (_xfields11196_
                             (if _super-type11179_
                                 (let ((_super-fields1118111184_
                                        (##structure-ref
                                         _super-type11179_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1118211186_
                                        (##structure-ref
                                         _super-type11179_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1118111184_
                                       (if _super-xfields1118211186_
                                           (let ((_super-fields11189_
                                                  _super-fields1118111184_)
                                                 (_super-xfields11190_
                                                  _super-xfields1118211186_))
                                             (fx+ _super-fields11189_
                                                  _super-xfields11190_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist11197_ (gx#stx-e _L11127_))
                            (_ctor11198_
                             (let ((_$e11192_ (gx#stx-e _L11126_)))
                               (if _$e11192_
                                   (values _$e11192_)
                                   (if _super-type11179_
                                       (##structure-ref
                                        _super-type11179_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t11177_ '#!void '#f))))))
                        (let ((__obj15990
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj15990
                             (gx#stx-e _L11131_)
                             _super-t11177_
                             _fields11195_
                             _xfields11196_
                             _ctor11198_
                             _plist11197_)
                            __obj15990))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1098011121_
                                                    _hd1097111097_
                                                    _hd1096211073_
                                                    _hd1095911065_
                                                    _hd1095011041_
                                                    _hd1094111017_)
                                                   (_g1087210993_
                                                    _g1087410996_))
                                               (_g1087210993_ _g1087410996_))))
                                       (_g1087210993_ _g1087410996_))
                                   (_g1087210993_ _g1087410996_))
                               (_g1087210993_ _g1087410996_))))
                       (_g1087210993_ _g1087410996_))))
               (_g1087210993_ _g1087410996_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1087210993_
                                                    _g1087410996_))))
                                           (_g1087210993_ _g1087410996_))
                                       (_g1087210993_ _g1087410996_))
                                   (_g1087210993_ _g1087410996_))))
                           (_g1087210993_ _g1087410996_))))
                   (_g1087210993_ _g1087410996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1087210993_
                                                    _g1087410996_))
                                               (_g1087210993_ _g1087410996_))))
                                       (_g1087210993_ _g1087410996_))
                                   (_g1087210993_ _g1087410996_))
                               (_g1087210993_ _g1087410996_))))
                       (_g1087210993_ _g1087410996_))))
               (_g1087210993_ _g1087410996_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1087210993_
                                                    _g1087410996_))))
                                           (_g1087210993_ _g1087410996_))
                                       (_g1087210993_ _g1087410996_))
                                   (_g1087210993_ _g1087410996_))))
                           (_g1087210993_ _g1087410996_))))
                   (_g1087210993_ _g1087410996_))
               (_g1087210993_ _g1087410996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1087210993_ _g1087410996_))
                                           (_g1087210993_ _g1087410996_))
                                       (_g1087210993_ _g1087410996_))))
                               (_g1087210993_ _g1087410996_))))
                       (_g1087210993_ _g1087410996_)))))
            (let ((_g1087011380_
                   (lambda (_g1087411203_)
                     (if (gx#stx-pair? _g1087411203_)
                         (let ((_e1088011205_ (gx#stx-e _g1087411203_)))
                           (let ((_hd1088111208_ (##car _e1088011205_))
                                 (_tl1088211210_ (##cdr _e1088011205_)))
                             (if (gx#stx-pair? _hd1088111208_)
                                 (let ((_e1088311213_
                                        (gx#stx-e _hd1088111208_)))
                                   (let ((_hd1088411216_ (##car _e1088311213_))
                                         (_tl1088511218_
                                          (##cdr _e1088311213_)))
                                     (if (gx#identifier? _hd1088411216_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1088411216_)
                                             (if (gx#stx-pair? _tl1088511218_)
                                                 (let ((_e1088611221_
                                                        (gx#stx-e
                                                         _tl1088511218_)))
                                                   (let ((_hd1088711224_
                                                          (##car _e1088611221_))
                                                         (_tl1088811226_
                                                          (##cdr _e1088611221_)))
                                                     (if (gx#stx-null?
                                                          _tl1088811226_)
                                                         (if (gx#stx-pair?
                                                              _tl1088211210_)
                                                             (let ((_e1088911229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1088211210_)))
                       (let ((_hd1089011232_ (##car _e1088911229_))
                             (_tl1089111234_ (##cdr _e1088911229_)))
                         (if (gx#stx-pair? _hd1089011232_)
                             (let ((_e1089211237_ (gx#stx-e _hd1089011232_)))
                               (let ((_hd1089311240_ (##car _e1089211237_))
                                     (_tl1089411242_ (##cdr _e1089211237_)))
                                 (if (gx#identifier? _hd1089311240_)
                                     (if (gx#stx-eq? '%#quote _hd1089311240_)
                                         (if (gx#stx-pair? _tl1089411242_)
                                             (let ((_e1089511245_
                                                    (gx#stx-e _tl1089411242_)))
                                               (let ((_hd1089611248_
                                                      (##car _e1089511245_))
                                                     (_tl1089711250_
                                                      (##cdr _e1089511245_)))
                                                 (if (gx#stx-datum?
                                                      _hd1089611248_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1089611248_)
                         '#f)
                 (if (gx#stx-null? _tl1089711250_)
                     (if (gx#stx-pair? _tl1089111234_)
                         (let ((_e1089811253_ (gx#stx-e _tl1089111234_)))
                           (let ((_hd1089911256_ (##car _e1089811253_))
                                 (_tl1090011258_ (##cdr _e1089811253_)))
                             (if (gx#stx-pair? _hd1089911256_)
                                 (let ((_e1090111261_
                                        (gx#stx-e _hd1089911256_)))
                                   (let ((_hd1090211264_ (##car _e1090111261_))
                                         (_tl1090311266_
                                          (##cdr _e1090111261_)))
                                     (if (gx#identifier? _hd1090211264_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1090211264_)
                                             (if (gx#stx-pair? _tl1090311266_)
                                                 (let ((_e1090411269_
                                                        (gx#stx-e
                                                         _tl1090311266_)))
                                                   (let ((_hd1090511272_
                                                          (##car _e1090411269_))
                                                         (_tl1090611274_
                                                          (##cdr _e1090411269_)))
                                                     (if (gx#stx-null?
                                                          _tl1090611274_)
                                                         (if (gx#stx-pair?
                                                              _tl1090011258_)
                                                             (let ((_e1090711277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1090011258_)))
                       (let ((_hd1090811280_ (##car _e1090711277_))
                             (_tl1090911282_ (##cdr _e1090711277_)))
                         (if (gx#stx-pair? _tl1090911282_)
                             (let ((_e1091011285_ (gx#stx-e _tl1090911282_)))
                               (let ((_hd1091111288_ (##car _e1091011285_))
                                     (_tl1091211290_ (##cdr _e1091011285_)))
                                 (if (gx#stx-pair? _hd1091111288_)
                                     (let ((_e1091311293_
                                            (gx#stx-e _hd1091111288_)))
                                       (let ((_hd1091411296_
                                              (##car _e1091311293_))
                                             (_tl1091511298_
                                              (##cdr _e1091311293_)))
                                         (if (gx#identifier? _hd1091411296_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1091411296_)
                                                 (if (gx#stx-pair?
                                                      _tl1091511298_)
                                                     (let ((_e1091611301_
                                                            (gx#stx-e
                                                             _tl1091511298_)))
                                                       (let ((_hd1091711304_
                                                              (##car _e1091611301_))
                                                             (_tl1091811306_
                                                              (##cdr _e1091611301_)))
                                                         (if (gx#stx-null?
                                                              _tl1091811306_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1091211290_)
                         (let ((_e1091911309_ (gx#stx-e _tl1091211290_)))
                           (let ((_hd1092011312_ (##car _e1091911309_))
                                 (_tl1092111314_ (##cdr _e1091911309_)))
                             (if (gx#stx-pair? _hd1092011312_)
                                 (let ((_e1092211317_
                                        (gx#stx-e _hd1092011312_)))
                                   (let ((_hd1092311320_ (##car _e1092211317_))
                                         (_tl1092411322_
                                          (##cdr _e1092211317_)))
                                     (if (gx#identifier? _hd1092311320_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1092311320_)
                                             (if (gx#stx-pair? _tl1092411322_)
                                                 (let ((_e1092511325_
                                                        (gx#stx-e
                                                         _tl1092411322_)))
                                                   (let ((_hd1092611328_
                                                          (##car _e1092511325_))
                                                         (_tl1092711330_
                                                          (##cdr _e1092511325_)))
                                                     (if (gx#stx-null?
                                                          _tl1092711330_)
                                                         (if (gx#stx-null?
                                                              _tl1092111314_)
                                                             ((lambda (_L11333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L11334_
                               _L11335_
                               _L11336_
                               _L11337_)
                        (let ((__obj15991
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj15991
                             (gx#stx-e _L11337_)
                             '#f
                             (gx#stx-e _L11336_)
                             '0
                             (gx#stx-e _L11333_)
                             (gx#stx-e _L11334_))
                            __obj15991)))
                      _hd1092611328_
                      _hd1091711304_
                      _hd1090811280_
                      _hd1090511272_
                      _hd1088711224_)
                     (_g1087111200_ _g1087411203_))
                 (_g1087111200_ _g1087411203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1087111200_ _g1087411203_))
                                             (_g1087111200_ _g1087411203_))
                                         (_g1087111200_ _g1087411203_))))
                                 (_g1087111200_ _g1087411203_))))
                         (_g1087111200_ _g1087411203_))
                     (_g1087111200_ _g1087411203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1087111200_
                                                      _g1087411203_))
                                                 (_g1087111200_ _g1087411203_))
                                             (_g1087111200_ _g1087411203_))))
                                     (_g1087111200_ _g1087411203_))))
                             (_g1087111200_ _g1087411203_))))
                     (_g1087111200_ _g1087411203_))
                 (_g1087111200_ _g1087411203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1087111200_ _g1087411203_))
                                             (_g1087111200_ _g1087411203_))
                                         (_g1087111200_ _g1087411203_))))
                                 (_g1087111200_ _g1087411203_))))
                         (_g1087111200_ _g1087411203_))
                     (_g1087111200_ _g1087411203_))
                 (_g1087111200_ _g1087411203_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1087111200_
                                                      _g1087411203_))))
                                             (_g1087111200_ _g1087411203_))
                                         (_g1087111200_ _g1087411203_))
                                     (_g1087111200_ _g1087411203_))))
                             (_g1087111200_ _g1087411203_))))
                     (_g1087111200_ _g1087411203_))
                 (_g1087111200_ _g1087411203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1087111200_ _g1087411203_))
                                             (_g1087111200_ _g1087411203_))
                                         (_g1087111200_ _g1087411203_))))
                                 (_g1087111200_ _g1087411203_))))
                         (_g1087111200_ _g1087411203_)))))
              (_g1087011380_ _args10869_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx10794_ _args10795_)
      (let ((_g1079810814_
             (lambda (_g1079910811_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1079910811_))))
        (let ((_g1079710821_ (lambda (_g1079910817_) ((lambda () '#f)))))
          (let ((_g1079610865_
                 (lambda (_g1079910824_)
                   (if (gx#stx-pair? _g1079910824_)
                       (let ((_e1080110826_ (gx#stx-e _g1079910824_)))
                         (let ((_hd1080210829_ (##car _e1080110826_))
                               (_tl1080310831_ (##cdr _e1080110826_)))
                           (if (gx#stx-pair? _hd1080210829_)
                               (let ((_e1080410834_ (gx#stx-e _hd1080210829_)))
                                 (let ((_hd1080510837_ (##car _e1080410834_))
                                       (_tl1080610839_ (##cdr _e1080410834_)))
                                   (if (gx#identifier? _hd1080510837_)
                                       (if (gx#stx-eq? '%#ref _hd1080510837_)
                                           (if (gx#stx-pair? _tl1080610839_)
                                               (let ((_e1080710842_
                                                      (gx#stx-e
                                                       _tl1080610839_)))
                                                 (let ((_hd1080810845_
                                                        (##car _e1080710842_))
                                                       (_tl1080910847_
                                                        (##cdr _e1080710842_)))
                                                   (if (gx#stx-null?
                                                        _tl1080910847_)
                                                       (if (gx#stx-null?
                                                            _tl1080310831_)
                                                           ((lambda (_L10850_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#identifier-symbol
                                                                _L10850_)))
                                                            _hd1080810845_)
                                                           (_g1079710821_
                                                            _g1079910824_))
                                                       (_g1079710821_
                                                        _g1079910824_))))
                                               (_g1079710821_ _g1079910824_))
                                           (_g1079710821_ _g1079910824_))
                                       (_g1079710821_ _g1079910824_))))
                               (_g1079710821_ _g1079910824_))))
                       (_g1079710821_ _g1079910824_)))))
            (_g1079610865_ _args10795_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx10678_ _args10679_)
      (let ((_g1068210708_
             (lambda (_g1068310705_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1068310705_))))
        (let ((_g1068110715_ (lambda (_g1068310711_) ((lambda () '#f)))))
          (let ((_g1068010791_
                 (lambda (_g1068310718_)
                   (if (gx#stx-pair? _g1068310718_)
                       (let ((_e1068610720_ (gx#stx-e _g1068310718_)))
                         (let ((_hd1068710723_ (##car _e1068610720_))
                               (_tl1068810725_ (##cdr _e1068610720_)))
                           (if (gx#stx-pair? _hd1068710723_)
                               (let ((_e1068910728_ (gx#stx-e _hd1068710723_)))
                                 (let ((_hd1069010731_ (##car _e1068910728_))
                                       (_tl1069110733_ (##cdr _e1068910728_)))
                                   (if (gx#identifier? _hd1069010731_)
                                       (if (gx#stx-eq? '%#ref _hd1069010731_)
                                           (if (gx#stx-pair? _tl1069110733_)
                                               (let ((_e1069210736_
                                                      (gx#stx-e
                                                       _tl1069110733_)))
                                                 (let ((_hd1069310739_
                                                        (##car _e1069210736_))
                                                       (_tl1069410741_
                                                        (##cdr _e1069210736_)))
                                                   (if (gx#stx-null?
                                                        _tl1069410741_)
                                                       (if (gx#stx-pair?
                                                            _tl1068810725_)
                                                           (let ((_e1069510744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1068810725_)))
                     (let ((_hd1069610747_ (##car _e1069510744_))
                           (_tl1069710749_ (##cdr _e1069510744_)))
                       (if (gx#stx-pair? _hd1069610747_)
                           (let ((_e1069810752_ (gx#stx-e _hd1069610747_)))
                             (let ((_hd1069910755_ (##car _e1069810752_))
                                   (_tl1070010757_ (##cdr _e1069810752_)))
                               (if (gx#identifier? _hd1069910755_)
                                   (if (gx#stx-eq? '%#quote _hd1069910755_)
                                       (if (gx#stx-pair? _tl1070010757_)
                                           (let ((_e1070110760_
                                                  (gx#stx-e _tl1070010757_)))
                                             (let ((_hd1070210763_
                                                    (##car _e1070110760_))
                                                   (_tl1070310765_
                                                    (##cdr _e1070110760_)))
                                               (if (gx#stx-null?
                                                    _tl1070310765_)
                                                   (if (gx#stx-null?
                                                        _tl1069710749_)
                                                       ((lambda (_L10768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10769_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#identifier-symbol _L10769_)
                   (gx#stx-e _L10768_)))
                _hd1070210763_
                _hd1069310739_)
               (_g1068110715_ _g1068310718_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1068110715_
                                                    _g1068310718_))))
                                           (_g1068110715_ _g1068310718_))
                                       (_g1068110715_ _g1068310718_))
                                   (_g1068110715_ _g1068310718_))))
                           (_g1068110715_ _g1068310718_))))
                   (_g1068110715_ _g1068310718_))
               (_g1068110715_ _g1068310718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1068110715_ _g1068310718_))
                                           (_g1068110715_ _g1068310718_))
                                       (_g1068110715_ _g1068310718_))))
                               (_g1068110715_ _g1068310718_))))
                       (_g1068110715_ _g1068310718_)))))
            (_g1068010791_ _args10679_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx10562_ _args10563_)
      (let ((_g1056610592_
             (lambda (_g1056710589_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1056710589_))))
        (let ((_g1056510599_ (lambda (_g1056710595_) ((lambda () '#f)))))
          (let ((_g1056410675_
                 (lambda (_g1056710602_)
                   (if (gx#stx-pair? _g1056710602_)
                       (let ((_e1057010604_ (gx#stx-e _g1056710602_)))
                         (let ((_hd1057110607_ (##car _e1057010604_))
                               (_tl1057210609_ (##cdr _e1057010604_)))
                           (if (gx#stx-pair? _hd1057110607_)
                               (let ((_e1057310612_ (gx#stx-e _hd1057110607_)))
                                 (let ((_hd1057410615_ (##car _e1057310612_))
                                       (_tl1057510617_ (##cdr _e1057310612_)))
                                   (if (gx#identifier? _hd1057410615_)
                                       (if (gx#stx-eq? '%#ref _hd1057410615_)
                                           (if (gx#stx-pair? _tl1057510617_)
                                               (let ((_e1057610620_
                                                      (gx#stx-e
                                                       _tl1057510617_)))
                                                 (let ((_hd1057710623_
                                                        (##car _e1057610620_))
                                                       (_tl1057810625_
                                                        (##cdr _e1057610620_)))
                                                   (if (gx#stx-null?
                                                        _tl1057810625_)
                                                       (if (gx#stx-pair?
                                                            _tl1057210609_)
                                                           (let ((_e1057910628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1057210609_)))
                     (let ((_hd1058010631_ (##car _e1057910628_))
                           (_tl1058110633_ (##cdr _e1057910628_)))
                       (if (gx#stx-pair? _hd1058010631_)
                           (let ((_e1058210636_ (gx#stx-e _hd1058010631_)))
                             (let ((_hd1058310639_ (##car _e1058210636_))
                                   (_tl1058410641_ (##cdr _e1058210636_)))
                               (if (gx#identifier? _hd1058310639_)
                                   (if (gx#stx-eq? '%#quote _hd1058310639_)
                                       (if (gx#stx-pair? _tl1058410641_)
                                           (let ((_e1058510644_
                                                  (gx#stx-e _tl1058410641_)))
                                             (let ((_hd1058610647_
                                                    (##car _e1058510644_))
                                                   (_tl1058710649_
                                                    (##cdr _e1058510644_)))
                                               (if (gx#stx-null?
                                                    _tl1058710649_)
                                                   (if (gx#stx-null?
                                                        _tl1058110633_)
                                                       ((lambda (_L10652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10653_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#identifier-symbol _L10653_)
                   (gx#stx-e _L10652_)))
                _hd1058610647_
                _hd1057710623_)
               (_g1056510599_ _g1056710602_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1056510599_
                                                    _g1056710602_))))
                                           (_g1056510599_ _g1056710602_))
                                       (_g1056510599_ _g1056710602_))
                                   (_g1056510599_ _g1056710602_))))
                           (_g1056510599_ _g1056710602_))))
                   (_g1056510599_ _g1056710602_))
               (_g1056510599_ _g1056710602_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1056510599_ _g1056710602_))
                                           (_g1056510599_ _g1056710602_))
                                       (_g1056510599_ _g1056710602_))))
                               (_g1056510599_ _g1056710602_))))
                       (_g1056510599_ _g1056710602_)))))
            (_g1056410675_ _args10563_))))))
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
    (lambda (_stx10511_)
      (let ((_g1051310526_
             (lambda (_g1051410523_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1051410523_))))
        (let ((_g1051210559_
               (lambda (_g1051410529_)
                 (if (gx#stx-pair? _g1051410529_)
                     (let ((_e1051610531_ (gx#stx-e _g1051410529_)))
                       (let ((_hd1051710534_ (##car _e1051610531_))
                             (_tl1051810536_ (##cdr _e1051610531_)))
                         (if (gx#stx-pair? _tl1051810536_)
                             (let ((_e1051910539_ (gx#stx-e _tl1051810536_)))
                               (let ((_hd1052010542_ (##car _e1051910539_))
                                     (_tl1052110544_ (##cdr _e1051910539_)))
                                 (if (gx#stx-null? _tl1052110544_)
                                     ((lambda (_L10547_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#identifier-symbol _L10547_)))
                                      _hd1052010542_)
                                     (_g1051310526_ _g1051410529_))))
                             (_g1051310526_ _g1051410529_))))
                     (_g1051310526_ _g1051410529_)))))
          (_g1051210559_ _stx10511_)))))
  (define gxc#optimize-call%
    (lambda (_stx10417_)
      (let ((_g1042010440_
             (lambda (_g1042110437_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1042110437_))))
        (let ((_g1041910447_
               (lambda (_g1042110443_)
                 ((lambda () (gxc#xform-call% _stx10417_))))))
          (let ((_g1041810508_
                 (lambda (_g1042110450_)
                   (if (gx#stx-pair? _g1042110450_)
                       (let ((_e1042410452_ (gx#stx-e _g1042110450_)))
                         (let ((_hd1042510455_ (##car _e1042410452_))
                               (_tl1042610457_ (##cdr _e1042410452_)))
                           (if (gx#stx-pair? _tl1042610457_)
                               (let ((_e1042710460_ (gx#stx-e _tl1042610457_)))
                                 (let ((_hd1042810463_ (##car _e1042710460_))
                                       (_tl1042910465_ (##cdr _e1042710460_)))
                                   (if (gx#stx-pair? _hd1042810463_)
                                       (let ((_e1043010468_
                                              (gx#stx-e _hd1042810463_)))
                                         (let ((_hd1043110471_
                                                (##car _e1043010468_))
                                               (_tl1043210473_
                                                (##cdr _e1043010468_)))
                                           (if (gx#identifier? _hd1043110471_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1043110471_)
                                                   (if (gx#stx-pair?
                                                        _tl1043210473_)
                                                       (let ((_e1043310476_
                                                              (gx#stx-e
                                                               _tl1043210473_)))
                                                         (let ((_hd1043410479_
                                                                (##car _e1043310476_))
                                                               (_tl1043510481_
                                                                (##cdr _e1043310476_)))
                                                           (if (gx#stx-null?
                                                                _tl1043510481_)
                                                               ((lambda (_L10484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L10485_)
                          (let ((_rator-id10503_
                                 (gxc#identifier-symbol _L10485_)))
                            (let ((_rator-type10505_
                                   (gxc#optimizer-lookup-type
                                    _rator-id10503_)))
                              (let ()
                                (if _rator-type10505_
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id10503_
                                       '" => "
                                       _rator-type10505_
                                       '" "
                                       (##structure-ref
                                        _rator-type10505_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type10505_
                                       'optimize-call
                                       _stx10417_
                                       _L10484_))
                                    (gxc#xform-call% _stx10417_))))))
                        _tl1042910465_
                        _hd1043410479_)
                       (_g1041910447_ _g1042110450_))))
               (_g1041910447_ _g1042110450_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1041910447_
                                                    _g1042110450_))
                                               (_g1041910447_ _g1042110450_))))
                                       (_g1041910447_ _g1042110450_))))
                               (_g1041910447_ _g1042110450_))))
                       (_g1041910447_ _g1042110450_)))))
            (_g1041810508_ _stx10417_))))))
  (define gxc#!alias::optimize-call
    (lambda (_self10387_ _stx10388_ _args10389_)
      (let ((_self1039010396_ _self10387_))
        (let ((_E1039210400_
               (lambda () (error '"No clause matching" _self1039010396_))))
          (let ((_K1039310409_
                 (lambda (_alias-id10403_)
                   (let ((_alias-type10405_
                          (gxc#optimizer-lookup-type _alias-id10403_)))
                     (if (##structure-instance-of?
                          _alias-type10405_
                          'gxc#!type::t)
                         (call-method
                          _alias-type10405_
                          'optimize-call
                          _stx10388_
                          _args10389_)
                         (let ((_args10407_
                                (gx#stx-map1 gxc#compile-e _args10389_)))
                           (gxc#xform-wrap-source
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons _alias-id10403_ '()))
                                        _args10407_))
                            _stx10388_)))))))
            (if (struct-instance? gxc#!alias::t _self1039010396_)
                (let ((_e1039410412_ (##vector-ref _self1039010396_ '1)))
                  (let ((_alias-id10415_ _e1039410412_))
                    (_K1039310409_ _alias-id10415_)))
                (_E1039210400_)))))))
  (bind-method! gxc#!alias::t 'optimize-call gxc#!alias::optimize-call '#f)
  (define gxc#!struct-pred::optimize-call
    (lambda (_self10242_ _stx10243_ _args10244_)
      (let ((_self1024510251_ _self10242_))
        (let ((_E1024710255_
               (lambda () (error '"No clause matching" _self1024510251_))))
          (let ((_K1024810379_
                 (lambda (_struct-t10258_)
                   (let ((_struct-type10260_
                          (gxc#optimizer-resolve-type _struct-t10258_)))
                     (let ((_struct-type1026110275_ _struct-type10260_))
                       (let ((_E1026510279_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1026110275_))))
                         (let ((_else1026410283_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx10243_
                                   _struct-t10258_
                                   _struct-type10260_))))
                           (let ((_try-match1026310291_
                                  (lambda ()
                                    (let ((_K1026610288_
                                           (lambda ()
                                             (gxc#xform-call% _stx10243_))))
                                      (if (##eq? _struct-type1026110275_ '#f)
                                          (_K1026610288_)
                                          (_else1026410283_))))))
                             (let ((_K1026710354_
                                    (lambda (_plist10294_
                                             _struct-type-id10295_)
                                      (let ((_g1029810308_
                                             (lambda (_g1029910305_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1029910305_))))
                                        (let ((_g1029710315_
                                               (lambda (_g1029910311_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx10243_))))))
                                          (let ((_g1029610351_
                                                 (lambda (_g1029910318_)
                                                   (if (gx#stx-pair?
                                                        _g1029910318_)
                                                       (let ((_e1030110320_
                                                              (gx#stx-e
                                                               _g1029910318_)))
                                                         (let ((_hd1030210323_
                                                                (##car _e1030110320_))
                                                               (_tl1030310325_
                                                                (##cdr _e1030110320_)))
                                                           (if (gx#stx-null?
                                                                _tl1030310325_)
                                                               ((lambda (_L10328_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr10348_ (gxc#compile-e _L10328_))
                                (_op10349_
                                 (if (if _plist10294_
                                         (assgetq 'final: _plist10294_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op10349_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id10295_
                                                     '()))
                                         (cons _expr10348_ '())))
                             _stx10243_)))
                        _hd1030210323_)
                       (_g1029710315_ _g1029910318_))))
               (_g1029710315_ _g1029910318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1029610351_ _args10244_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1026110275_)
                                   (let ((_e1026810357_
                                          (##vector-ref
                                           _struct-type1026110275_
                                           '1)))
                                     (let ((_struct-type-id10360_
                                            _e1026810357_))
                                       (let ((_e1026910362_
                                              (##vector-ref
                                               _struct-type1026110275_
                                               '2)))
                                         (let ((_e1027010365_
                                                (##vector-ref
                                                 _struct-type1026110275_
                                                 '3)))
                                           (let ((_e1027110368_
                                                  (##vector-ref
                                                   _struct-type1026110275_
                                                   '4)))
                                             (let ((_e1027210371_
                                                    (##vector-ref
                                                     _struct-type1026110275_
                                                     '5)))
                                               (let ((_e1027310374_
                                                      (##vector-ref
                                                       _struct-type1026110275_
                                                       '6)))
                                                 (let ((_plist10377_
                                                        _e1027310374_))
                                                   (_K1026710354_
                                                    _plist10377_
                                                    _struct-type-id10360_)))))))))
                                   (_try-match1026310291_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self1024510251_)
                (let ((_e1024910382_ (##vector-ref _self1024510251_ '1)))
                  (let ((_struct-t10385_ _e1024910382_))
                    (_K1024810379_ _struct-t10385_)))
                (_E1024710255_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self10138_ _stx10139_ _args10140_)
      (let ((_self1014110147_ _self10138_))
        (let ((_E1014310151_
               (lambda () (error '"No clause matching" _self1014110147_))))
          (let ((_K1014410234_
                 (lambda (_struct-t10154_)
                   (let ((_struct-type10156_
                          (gxc#optimizer-resolve-type _struct-t10154_)))
                     (let ((_struct-type1015710170_ _struct-type10156_))
                       (let ((_E1016110174_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1015710170_))))
                         (let ((_else1016010178_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx10139_
                                   _struct-t10154_
                                   _struct-type10156_))))
                           (let ((_try-match1015910186_
                                  (lambda ()
                                    (let ((_K1016210183_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t10154_)
                                               (gxc#xform-call% _stx10139_)))))
                                      (if (##eq? _struct-type1015710170_ '#f)
                                          (_K1016210183_)
                                          (_else1016010178_))))))
                             (let ((_K1016310208_
                                    (lambda (_ctor10189_
                                             _xfields10190_
                                             _fields10191_
                                             _type-id10192_)
                                      (let ((_args10194_
                                             (gx#stx-map1
                                              gxc#compile-e
                                              _args10140_)))
                                        (let ((_$e10196_
                                               (if _ctor10189_
                                                   (if _xfields10190_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type10156_
                                                        _ctor10189_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e10196_
                                              ((lambda (_kons10199_)
                                                 (let ((_$obj10201_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj10201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t10154_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields10191_ _xfields10190_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons10199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj10201_ '())) _args10194_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx10139_))
                                          (cons (cons '%#ref
                                                      (cons _$obj10201_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx10139_)))
                                               _$e10196_)
                                              (if (let ((_$e10203_
                                                         _ctor10189_))
                                                    (if _$e10203_
                                                        _$e10203_
                                                        (not _xfields10190_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t10154_ '()))
                             _args10194_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx10139_)
                                                  (let ((_arity10206_
                                                         (fx+ _fields10191_
                                                              _xfields10190_)))
                                                    (if (fx= _arity10206_
                                                             (length _args10194_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t10154_ '()))
                                   _args10194_)))
                 _stx10139_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx10139_
                 _struct-t10154_
                 _arity10206_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1015710170_)
                                   (let ((_e1016410211_
                                          (##vector-ref
                                           _struct-type1015710170_
                                           '1)))
                                     (let ((_type-id10214_ _e1016410211_))
                                       (let ((_e1016510216_
                                              (##vector-ref
                                               _struct-type1015710170_
                                               '2)))
                                         (let ((_e1016610219_
                                                (##vector-ref
                                                 _struct-type1015710170_
                                                 '3)))
                                           (let ((_fields10222_ _e1016610219_))
                                             (let ((_e1016710224_
                                                    (##vector-ref
                                                     _struct-type1015710170_
                                                     '4)))
                                               (let ((_xfields10227_
                                                      _e1016710224_))
                                                 (let ((_e1016810229_
                                                        (##vector-ref
                                                         _struct-type1015710170_
                                                         '5)))
                                                   (let ((_ctor10232_
                                                          _e1016810229_))
                                                     (_K1016310208_
                                                      _ctor10232_
                                                      _xfields10227_
                                                      _fields10222_
                                                      _type-id10214_))))))))))
                                   (_try-match1015910186_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self1014110147_)
                (let ((_e1014510237_ (##vector-ref _self1014110147_ '1)))
                  (let ((_struct-t10240_ _e1014510237_))
                    (_K1014410234_ _struct-t10240_)))
                (_E1014310151_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self9991_ _stx9992_ _args9993_)
      (let ((_self999410001_ _self9991_))
        (let ((_E999610005_
               (lambda () (error '"No clause matching" _self999410001_))))
          (let ((_K999710125_
                 (lambda (_off10008_ _struct-t10009_)
                   (let ((_struct-type10011_
                          (gxc#optimizer-resolve-type _struct-t10009_)))
                     (let ((_struct-type1001210024_ _struct-type10011_))
                       (let ((_E1001610028_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1001210024_))))
                         (let ((_else1001510032_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx9992_
                                   _struct-t10009_
                                   _struct-type10011_))))
                           (let ((_try-match1001410040_
                                  (lambda ()
                                    (let ((_K1001710037_
                                           (lambda ()
                                             (gxc#xform-call% _stx9992_))))
                                      (if (##eq? _struct-type1001210024_ '#f)
                                          (_K1001710037_)
                                          (_else1001510032_))))))
                             (let ((_K1001810104_
                                    (lambda (_xfields10043_
                                             _fields10044_
                                             _struct-type-id10045_)
                                      (if _xfields10043_
                                          (let ((_g1004810058_
                                                 (lambda (_g1004910055_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1004910055_))))
                                            (let ((_g1004710065_
                                                   (lambda (_g1004910061_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx9992_))))))
                                              (let ((_g1004610101_
                                                     (lambda (_g1004910068_)
                                                       (if (gx#stx-pair?
                                                            _g1004910068_)
                                                           (let ((_e1005110070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1004910068_)))
                     (let ((_hd1005210073_ (##car _e1005110070_))
                           (_tl1005310075_ (##cdr _e1005110070_)))
                       (if (gx#stx-null? _tl1005310075_)
                           ((lambda (_L10078_)
                              (let ((_expr10098_ (gxc#compile-e _L10078_))
                                    (_off10099_
                                     (fx+ _off10008_ _xfields10043_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t10009_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off10099_ '()))
                                                   (cons _expr10098_ '()))))
                                 _stx9992_)))
                            _hd1005210073_)
                           (_g1004710065_ _g1004910068_))))
                   (_g1004710065_ _g1004910068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1004610101_ _args9993_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id10045_)
                                            (gxc#xform-call% _stx9992_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1001210024_)
                                   (let ((_e1001910107_
                                          (##vector-ref
                                           _struct-type1001210024_
                                           '1)))
                                     (let ((_struct-type-id10110_
                                            _e1001910107_))
                                       (let ((_e1002010112_
                                              (##vector-ref
                                               _struct-type1001210024_
                                               '2)))
                                         (let ((_e1002110115_
                                                (##vector-ref
                                                 _struct-type1001210024_
                                                 '3)))
                                           (let ((_fields10118_ _e1002110115_))
                                             (let ((_e1002210120_
                                                    (##vector-ref
                                                     _struct-type1001210024_
                                                     '4)))
                                               (let ((_xfields10123_
                                                      _e1002210120_))
                                                 (_K1001810104_
                                                  _xfields10123_
                                                  _fields10118_
                                                  _struct-type-id10110_))))))))
                                   (_try-match1001410040_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self999410001_)
                (let ((_e999810128_ (##vector-ref _self999410001_ '1)))
                  (let ((_struct-t10131_ _e999810128_))
                    (let ((_e999910133_ (##vector-ref _self999410001_ '2)))
                      (let ((_off10136_ _e999910133_))
                        (_K999710125_ _off10136_ _struct-t10131_)))))
                (_E999610005_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self9827_ _stx9828_ _args9829_)
      (let ((_self98309837_ _self9827_))
        (let ((_E98329841_
               (lambda () (error '"No clause matching" _self98309837_))))
          (let ((_K98339978_
                 (lambda (_off9844_ _struct-t9845_)
                   (let ((_struct-type9847_
                          (gxc#optimizer-resolve-type _struct-t9845_)))
                     (let ((_struct-type98489860_ _struct-type9847_))
                       (let ((_E98529864_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type98489860_))))
                         (let ((_else98519868_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx9828_
                                   _struct-t9845_
                                   _struct-type9847_))))
                           (let ((_try-match98509876_
                                  (lambda ()
                                    (let ((_K98539873_
                                           (lambda ()
                                             (gxc#xform-call% _stx9828_))))
                                      (if (##eq? _struct-type98489860_ '#f)
                                          (_K98539873_)
                                          (_else98519868_))))))
                             (let ((_K98549957_
                                    (lambda (_xfields9879_
                                             _fields9880_
                                             _struct-type-id9881_)
                                      (if _xfields9879_
                                          (let ((_g98849898_
                                                 (lambda (_g98859895_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g98859895_))))
                                            (let ((_g98839905_
                                                   (lambda (_g98859901_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx9828_))))))
                                              (let ((_g98829954_
                                                     (lambda (_g98859908_)
                                                       (if (gx#stx-pair?
                                                            _g98859908_)
                                                           (let ((_e98889910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g98859908_)))
                     (let ((_hd98899913_ (##car _e98889910_))
                           (_tl98909915_ (##cdr _e98889910_)))
                       (if (gx#stx-pair? _tl98909915_)
                           (let ((_e98919918_ (gx#stx-e _tl98909915_)))
                             (let ((_hd98929921_ (##car _e98919918_))
                                   (_tl98939923_ (##cdr _e98919918_)))
                               (if (gx#stx-null? _tl98939923_)
                                   ((lambda (_L9926_ _L9927_)
                                      (let ((_expr9950_
                                             (gxc#compile-e _L9927_))
                                            (_val9951_ (gxc#compile-e _L9926_))
                                            (_off9952_
                                             (fx+ _off9844_ _xfields9879_ '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t9845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off9952_ '()))
                   (cons _expr9950_ (cons _val9951_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx9828_)))
                                    _hd98929921_
                                    _hd98899913_)
                                   (_g98839905_ _g98859908_))))
                           (_g98839905_ _g98859908_))))
                   (_g98839905_ _g98859908_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g98829954_ _args9829_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id9881_)
                                            (gxc#xform-call% _stx9828_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type98489860_)
                                   (let ((_e98559960_
                                          (##vector-ref
                                           _struct-type98489860_
                                           '1)))
                                     (let ((_struct-type-id9963_ _e98559960_))
                                       (let ((_e98569965_
                                              (##vector-ref
                                               _struct-type98489860_
                                               '2)))
                                         (let ((_e98579968_
                                                (##vector-ref
                                                 _struct-type98489860_
                                                 '3)))
                                           (let ((_fields9971_ _e98579968_))
                                             (let ((_e98589973_
                                                    (##vector-ref
                                                     _struct-type98489860_
                                                     '4)))
                                               (let ((_xfields9976_
                                                      _e98589973_))
                                                 (_K98549957_
                                                  _xfields9976_
                                                  _fields9971_
                                                  _struct-type-id9963_))))))))
                                   (_try-match98509876_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self98309837_)
                (let ((_e98349981_ (##vector-ref _self98309837_ '1)))
                  (let ((_struct-t9984_ _e98349981_))
                    (let ((_e98359986_ (##vector-ref _self98309837_ '2)))
                      (let ((_off9989_ _e98359986_))
                        (_K98339978_ _off9989_ _struct-t9984_)))))
                (_E98329841_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self9788_ _stx9789_ _args9790_)
      (let ((_self97919799_ _self9788_))
        (let ((_E97939803_
               (lambda () (error '"No clause matching" _self97919799_))))
          (let ((_K97949811_
                 (lambda (_dispatch9806_ _arity9807_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self9788_ _args9790_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx9789_
                          _arity9807_))
                     (if _dispatch9806_
                         (let ((_args9809_
                                (gx#stx-map1 gxc#compile-e _args9790_)))
                           (begin
                             (gxc#verbose
                              '"dispatch lambda => "
                              _dispatch9806_)
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch9806_ '()))
                                          _args9809_))
                              _stx9789_)))
                         (gxc#xform-call% _stx9789_))))))
            (if (struct-instance? gxc#!lambda::t _self97919799_)
                (let ((_e97959814_ (##vector-ref _self97919799_ '1)))
                  (let ((_e97969817_ (##vector-ref _self97919799_ '2)))
                    (let ((_arity9820_ _e97969817_))
                      (let ((_e97979822_ (##vector-ref _self97919799_ '3)))
                        (let ((_dispatch9825_ _e97979822_))
                          (_K97949811_ _dispatch9825_ _arity9820_))))))
                (_E97939803_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self9748_ _stx9749_ _args9750_)
      (let ((_self97519758_ _self9748_))
        (let ((_E97539762_
               (lambda () (error '"No clause matching" _self97519758_))))
          (let ((_K97549777_
                 (lambda (_clauses9765_)
                   (let ((_$e9771_
                          (find (lambda (_g97669768_)
                                  (gxc#!lambda-arity-match?
                                   _g97669768_
                                   _args9750_))
                                _clauses9765_)))
                     (if _$e9771_
                         ((lambda (_clause9774_)
                            (call-method
                             _clause9774_
                             'optimize-call
                             _stx9749_
                             _args9750_))
                          _$e9771_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx9749_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses9765_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses9765_)))))))
            (if (struct-instance? gxc#!case-lambda::t _self97519758_)
                (let ((_e97559780_ (##vector-ref _self97519758_ '1)))
                  (let ((_e97569783_ (##vector-ref _self97519758_ '2)))
                    (let ((_clauses9786_ _e97569783_))
                      (_K97549777_ _clauses9786_))))
                (_E97539762_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self9684_ _args9685_)
      (let ((_self96869693_ _self9684_))
        (let ((_E96889697_
               (lambda () (error '"No clause matching" _self96869693_))))
          (let ((_K96899737_
                 (lambda (_arity9700_)
                   (let ((_arity97019710_ _arity9700_))
                     (let ((_E97049714_
                            (lambda ()
                              (error '"No clause matching" _arity97019710_))))
                       (let ((_try-match97039730_
                              (lambda ()
                                (let ((_K97059720_
                                       (lambda (_arity9718_)
                                         (fx>= (gx#stx-length _args9685_)
                                               _arity9718_))))
                                  (if (##pair? _arity97019710_)
                                      (let ((_hd97069723_
                                             (##car _arity97019710_))
                                            (_tl97079725_
                                             (##cdr _arity97019710_)))
                                        (let ((_arity9728_ _hd97069723_))
                                          (if (##null? _tl97079725_)
                                              (_K97059720_ _arity9728_)
                                              (_E97049714_))))
                                      (_E97049714_))))))
                         (let ((_K97089734_
                                (lambda ()
                                  (fx= (gx#stx-length _args9685_)
                                       _arity9700_))))
                           (if (fixnum? _arity97019710_)
                               (_K97089734_)
                               (_try-match97039730_)))))))))
            (if (struct-instance? gxc#!lambda::t _self96869693_)
                (let ((_e96909740_ (##vector-ref _self96869693_ '1)))
                  (let ((_e96919743_ (##vector-ref _self96869693_ '2)))
                    (let ((_arity9746_ _e96919743_))
                      (_K96899737_ _arity9746_))))
                (_E96889697_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx9624_)
      (let ((_g96269640_
             (lambda (_g96279637_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96279637_))))
        (let ((_g96259681_
               (lambda (_g96279643_)
                 (if (gx#stx-pair? _g96279643_)
                     (let ((_e96309645_ (gx#stx-e _g96279643_)))
                       (let ((_hd96319648_ (##car _e96309645_))
                             (_tl96329650_ (##cdr _e96309645_)))
                         (if (gx#stx-pair? _tl96329650_)
                             (let ((_e96339653_ (gx#stx-e _tl96329650_)))
                               (let ((_hd96349656_ (##car _e96339653_))
                                     (_tl96359658_ (##cdr _e96339653_)))
                                 ((lambda (_L9661_ _L9662_)
                                    (let ((_ctx9675_
                                           (gx#syntax-local-e__0 _L9662_)))
                                      (let ((_code9677_
                                             (##structure-ref
                                              _ctx9675_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code9677_))
                                           gx#current-expander-context
                                           _ctx9675_)))))
                                  _tl96359658_
                                  _hd96349656_)))
                             (_g96269640_ _g96279643_))))
                     (_g96269640_ _g96279643_)))))
          (_g96259681_ _stx9624_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx9431_)
      (let ((_generate-e9433_
             (lambda (_id9613_)
               (let ((_sym9615_ (gxc#identifier-symbol _id9613_)))
                 (let ((_$e9617_ (gxc#optimizer-lookup-type _sym9615_)))
                   (if _$e9617_
                       ((lambda (_type9620_)
                          (let ((_typedecl9622_
                                 (call-method _type9620_ 'typedecl)))
                            (cons 'declare-type
                                  (cons _sym9615_ (cons _typedecl9622_ '())))))
                        _$e9617_)
                       '(begin)))))))
        (let ((_g94369474_
               (lambda (_g94379471_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g94379471_))))
          (let ((_g94359558_
                 (lambda (_g94379477_)
                   (if (gx#stx-pair? _g94379477_)
                       (let ((_e94529479_ (gx#stx-e _g94379477_)))
                         (let ((_hd94539482_ (##car _e94529479_))
                               (_tl94549484_ (##cdr _e94529479_)))
                           (if (gx#stx-pair? _tl94549484_)
                               (let ((_e94559487_ (gx#stx-e _tl94549484_)))
                                 (let ((_hd94569490_ (##car _e94559487_))
                                       (_tl94579492_ (##cdr _e94559487_)))
                                   (if (gx#stx-pair/null? _hd94569490_)
                                       (if (fx>= (gx#stx-length _hd94569490_)
                                                 '0)
                                           (let ((_g16026_
                                                  (gx#syntax-split-splice
                                                   _hd94569490_
                                                   '0)))
                                             (begin
                                               (let ((_g16027_
                                                      (values-count _g16026_)))
                                                 (if (not (fx= _g16027_ 2))
                                                     (error "Context expects 2 values"
                                                            _g16027_)))
                                               (let ((_target94589495_
                                                      (values-ref _g16026_ 0))
                                                     (_tl94609497_
                                                      (values-ref _g16026_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl94609497_)
                                                     (letrec ((_loop94619500_
                                                               (lambda (_hd94599503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id94659505_)
                         (if (gx#stx-pair? _hd94599503_)
                             (let ((_e94629508_ (gx#stx-e _hd94599503_)))
                               (let ((_lp-hd94639511_ (##car _e94629508_))
                                     (_lp-tl94649513_ (##cdr _e94629508_)))
                                 (_loop94619500_
                                  _lp-tl94649513_
                                  (cons _lp-hd94639511_ _id94659505_))))
                             (let ((_id94669516_ (reverse _id94659505_)))
                               (if (gx#stx-pair? _tl94579492_)
                                   (let ((_e94679519_ (gx#stx-e _tl94579492_)))
                                     (let ((_hd94689522_ (##car _e94679519_))
                                           (_tl94699524_ (##cdr _e94679519_)))
                                       (if (gx#stx-null? _tl94699524_)
                                           ((lambda (_L9527_)
                                              (let ((_ids9553_
                                                     (filter gx#stx-e
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g95459548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g95469550_)
                                (cons _g95459548_ _g95469550_))
                              '()
                              _L9527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_types9555_
                                                       (map _generate-e9433_
                                                            _ids9553_)))
                                                  (let ()
                                                    (cons 'begin
                                                          _types9555_)))))
                                            _id94669516_)
                                           (_g94369474_ _g94379477_))))
                                   (_g94369474_ _g94379477_)))))))
               (_loop94619500_ _target94589495_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94369474_
                                                      _g94379477_)))))
                                           (_g94369474_ _g94379477_))
                                       (_g94369474_ _g94379477_))))
                               (_g94369474_ _g94379477_))))
                       (_g94369474_ _g94379477_)))))
            (let ((_g94349610_
                   (lambda (_g94379561_)
                     (if (gx#stx-pair? _g94379561_)
                         (let ((_e94399563_ (gx#stx-e _g94379561_)))
                           (let ((_hd94409566_ (##car _e94399563_))
                                 (_tl94419568_ (##cdr _e94399563_)))
                             (if (gx#stx-pair? _tl94419568_)
                                 (let ((_e94429571_ (gx#stx-e _tl94419568_)))
                                   (let ((_hd94439574_ (##car _e94429571_))
                                         (_tl94449576_ (##cdr _e94429571_)))
                                     (if (gx#stx-pair? _hd94439574_)
                                         (let ((_e94459579_
                                                (gx#stx-e _hd94439574_)))
                                           (let ((_hd94469582_
                                                  (##car _e94459579_))
                                                 (_tl94479584_
                                                  (##cdr _e94459579_)))
                                             (if (gx#stx-null? _tl94479584_)
                                                 (if (gx#stx-pair?
                                                      _tl94449576_)
                                                     (let ((_e94489587_
                                                            (gx#stx-e
                                                             _tl94449576_)))
                                                       (let ((_hd94499590_
                                                              (##car _e94489587_))
                                                             (_tl94509592_
                                                              (##cdr _e94489587_)))
                                                         (if (gx#stx-null?
                                                              _tl94509592_)
                                                             ((lambda (_L9595_)
                                                                (_generate-e9433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L9595_))
                      _hd94469582_)
                     (_g94359558_ _g94379561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94359558_ _g94379561_))
                                                 (_g94359558_ _g94379561_))))
                                         (_g94359558_ _g94379561_))))
                                 (_g94359558_ _g94379561_))))
                         (_g94359558_ _g94379561_)))))
              (_g94349610_ _stx9431_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx8985_)
      (let ((_g89899091_
             (lambda (_g89909088_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89909088_))))
        (let ((_g89889098_ (lambda (_g89909094_) ((lambda () '(begin))))))
          (let ((_g89879248_
                 (lambda (_g89909101_)
                   (if (gx#stx-pair? _g89909101_)
                       (let ((_e90489103_ (gx#stx-e _g89909101_)))
                         (let ((_hd90499106_ (##car _e90489103_))
                               (_tl90509108_ (##cdr _e90489103_)))
                           (if (gx#stx-pair? _tl90509108_)
                               (let ((_e90519111_ (gx#stx-e _tl90509108_)))
                                 (let ((_hd90529114_ (##car _e90519111_))
                                       (_tl90539116_ (##cdr _e90519111_)))
                                   (if (gx#stx-pair? _hd90529114_)
                                       (let ((_e90549119_
                                              (gx#stx-e _hd90529114_)))
                                         (let ((_hd90559122_
                                                (##car _e90549119_))
                                               (_tl90569124_
                                                (##cdr _e90549119_)))
                                           (if (gx#identifier? _hd90559122_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd90559122_)
                                                   (if (gx#stx-pair?
                                                        _tl90569124_)
                                                       (let ((_e90579127_
                                                              (gx#stx-e
                                                               _tl90569124_)))
                                                         (let ((_hd90589130_
                                                                (##car _e90579127_))
                                                               (_tl90599132_
                                                                (##cdr _e90579127_)))
                                                           (if (gx#stx-null?
                                                                _tl90599132_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl90539116_)
                           (let ((_e90609135_ (gx#stx-e _tl90539116_)))
                             (let ((_hd90619138_ (##car _e90609135_))
                                   (_tl90629140_ (##cdr _e90609135_)))
                               (if (gx#stx-pair? _hd90619138_)
                                   (let ((_e90639143_ (gx#stx-e _hd90619138_)))
                                     (let ((_hd90649146_ (##car _e90639143_))
                                           (_tl90659148_ (##cdr _e90639143_)))
                                       (if (gx#identifier? _hd90649146_)
                                           (if (gx#stx-eq? '%#ref _hd90649146_)
                                               (if (gx#stx-pair? _tl90659148_)
                                                   (let ((_e90669151_
                                                          (gx#stx-e
                                                           _tl90659148_)))
                                                     (let ((_hd90679154_
                                                            (##car _e90669151_))
                                                           (_tl90689156_
                                                            (##cdr _e90669151_)))
                                                       (if (gx#stx-null?
                                                            _tl90689156_)
                                                           (if (gx#stx-pair?
                                                                _tl90629140_)
                                                               (let ((_e90699159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl90629140_)))
                         (let ((_hd90709162_ (##car _e90699159_))
                               (_tl90719164_ (##cdr _e90699159_)))
                           (if (gx#stx-pair? _hd90709162_)
                               (let ((_e90729167_ (gx#stx-e _hd90709162_)))
                                 (let ((_hd90739170_ (##car _e90729167_))
                                       (_tl90749172_ (##cdr _e90729167_)))
                                   (if (gx#identifier? _hd90739170_)
                                       (if (gx#stx-eq? '%#quote _hd90739170_)
                                           (if (gx#stx-pair? _tl90749172_)
                                               (let ((_e90759175_
                                                      (gx#stx-e _tl90749172_)))
                                                 (let ((_hd90769178_
                                                        (##car _e90759175_))
                                                       (_tl90779180_
                                                        (##cdr _e90759175_)))
                                                   (if (gx#stx-null?
                                                        _tl90779180_)
                                                       (if (gx#stx-pair?
                                                            _tl90719164_)
                                                           (let ((_e90789183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl90719164_)))
                     (let ((_hd90799186_ (##car _e90789183_))
                           (_tl90809188_ (##cdr _e90789183_)))
                       (if (gx#stx-pair? _hd90799186_)
                           (let ((_e90819191_ (gx#stx-e _hd90799186_)))
                             (let ((_hd90829194_ (##car _e90819191_))
                                   (_tl90839196_ (##cdr _e90819191_)))
                               (if (gx#identifier? _hd90829194_)
                                   (if (gx#stx-eq? '%#ref _hd90829194_)
                                       (if (gx#stx-pair? _tl90839196_)
                                           (let ((_e90849199_
                                                  (gx#stx-e _tl90839196_)))
                                             (let ((_hd90859202_
                                                    (##car _e90849199_))
                                                   (_tl90869204_
                                                    (##cdr _e90849199_)))
                                               (if (gx#stx-null? _tl90869204_)
                                                   (if (gx#stx-null?
                                                        _tl90809188_)
                                                       ((lambda (_L9207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L9208_
                         _L9209_
                         _L9210_)
                  (if (eq? (gxc#identifier-symbol
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#identifier-symbol _L9209_)
                                  (cons (gx#stx-e _L9208_)
                                        (cons (gxc#identifier-symbol _L9207_)
                                              (cons '#f '())))))
                      (_g89889098_ _g89909101_)))
                _hd90859202_
                _hd90769178_
                _hd90679154_
                _hd90589130_)
               (_g89889098_ _g89909101_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g89889098_ _g89909101_))))
                                           (_g89889098_ _g89909101_))
                                       (_g89889098_ _g89909101_))
                                   (_g89889098_ _g89909101_))))
                           (_g89889098_ _g89909101_))))
                   (_g89889098_ _g89909101_))
               (_g89889098_ _g89909101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g89889098_ _g89909101_))
                                           (_g89889098_ _g89909101_))
                                       (_g89889098_ _g89909101_))))
                               (_g89889098_ _g89909101_))))
                       (_g89889098_ _g89909101_))
                   (_g89889098_ _g89909101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g89889098_ _g89909101_))
                                               (_g89889098_ _g89909101_))
                                           (_g89889098_ _g89909101_))))
                                   (_g89889098_ _g89909101_))))
                           (_g89889098_ _g89909101_))
                       (_g89889098_ _g89909101_))))
               (_g89889098_ _g89909101_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g89889098_ _g89909101_))
                                               (_g89889098_ _g89909101_))))
                                       (_g89889098_ _g89909101_))))
                               (_g89889098_ _g89909101_))))
                       (_g89889098_ _g89909101_)))))
            (let ((_g89869428_
                   (lambda (_g89909251_)
                     (if (gx#stx-pair? _g89909251_)
                         (let ((_e89969253_ (gx#stx-e _g89909251_)))
                           (let ((_hd89979256_ (##car _e89969253_))
                                 (_tl89989258_ (##cdr _e89969253_)))
                             (if (gx#stx-pair? _tl89989258_)
                                 (let ((_e89999261_ (gx#stx-e _tl89989258_)))
                                   (let ((_hd90009264_ (##car _e89999261_))
                                         (_tl90019266_ (##cdr _e89999261_)))
                                     (if (gx#stx-pair? _hd90009264_)
                                         (let ((_e90029269_
                                                (gx#stx-e _hd90009264_)))
                                           (let ((_hd90039272_
                                                  (##car _e90029269_))
                                                 (_tl90049274_
                                                  (##cdr _e90029269_)))
                                             (if (gx#identifier? _hd90039272_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd90039272_)
                                                     (if (gx#stx-pair?
                                                          _tl90049274_)
                                                         (let ((_e90059277_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl90049274_)))
                   (let ((_hd90069280_ (##car _e90059277_))
                         (_tl90079282_ (##cdr _e90059277_)))
                     (if (gx#stx-null? _tl90079282_)
                         (if (gx#stx-pair? _tl90019266_)
                             (let ((_e90089285_ (gx#stx-e _tl90019266_)))
                               (let ((_hd90099288_ (##car _e90089285_))
                                     (_tl90109290_ (##cdr _e90089285_)))
                                 (if (gx#stx-pair? _hd90099288_)
                                     (let ((_e90119293_
                                            (gx#stx-e _hd90099288_)))
                                       (let ((_hd90129296_ (##car _e90119293_))
                                             (_tl90139298_
                                              (##cdr _e90119293_)))
                                         (if (gx#identifier? _hd90129296_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd90129296_)
                                                 (if (gx#stx-pair?
                                                      _tl90139298_)
                                                     (let ((_e90149301_
                                                            (gx#stx-e
                                                             _tl90139298_)))
                                                       (let ((_hd90159304_
                                                              (##car _e90149301_))
                                                             (_tl90169306_
                                                              (##cdr _e90149301_)))
                                                         (if (gx#stx-null?
                                                              _tl90169306_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl90109290_)
                         (let ((_e90179309_ (gx#stx-e _tl90109290_)))
                           (let ((_hd90189312_ (##car _e90179309_))
                                 (_tl90199314_ (##cdr _e90179309_)))
                             (if (gx#stx-pair? _hd90189312_)
                                 (let ((_e90209317_ (gx#stx-e _hd90189312_)))
                                   (let ((_hd90219320_ (##car _e90209317_))
                                         (_tl90229322_ (##cdr _e90209317_)))
                                     (if (gx#identifier? _hd90219320_)
                                         (if (gx#stx-eq? '%#quote _hd90219320_)
                                             (if (gx#stx-pair? _tl90229322_)
                                                 (let ((_e90239325_
                                                        (gx#stx-e
                                                         _tl90229322_)))
                                                   (let ((_hd90249328_
                                                          (##car _e90239325_))
                                                         (_tl90259330_
                                                          (##cdr _e90239325_)))
                                                     (if (gx#stx-null?
                                                          _tl90259330_)
                                                         (if (gx#stx-pair?
                                                              _tl90199314_)
                                                             (let ((_e90269333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl90199314_)))
                       (let ((_hd90279336_ (##car _e90269333_))
                             (_tl90289338_ (##cdr _e90269333_)))
                         (if (gx#stx-pair? _hd90279336_)
                             (let ((_e90299341_ (gx#stx-e _hd90279336_)))
                               (let ((_hd90309344_ (##car _e90299341_))
                                     (_tl90319346_ (##cdr _e90299341_)))
                                 (if (gx#identifier? _hd90309344_)
                                     (if (gx#stx-eq? '%#ref _hd90309344_)
                                         (if (gx#stx-pair? _tl90319346_)
                                             (let ((_e90329349_
                                                    (gx#stx-e _tl90319346_)))
                                               (let ((_hd90339352_
                                                      (##car _e90329349_))
                                                     (_tl90349354_
                                                      (##cdr _e90329349_)))
                                                 (if (gx#stx-null?
                                                      _tl90349354_)
                                                     (if (gx#stx-pair?
                                                          _tl90289338_)
                                                         (let ((_e90359357_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl90289338_)))
                   (let ((_hd90369360_ (##car _e90359357_))
                         (_tl90379362_ (##cdr _e90359357_)))
                     (if (gx#stx-pair? _hd90369360_)
                         (let ((_e90389365_ (gx#stx-e _hd90369360_)))
                           (let ((_hd90399368_ (##car _e90389365_))
                                 (_tl90409370_ (##cdr _e90389365_)))
                             (if (gx#identifier? _hd90399368_)
                                 (if (gx#stx-eq? '%#quote _hd90399368_)
                                     (if (gx#stx-pair? _tl90409370_)
                                         (let ((_e90419373_
                                                (gx#stx-e _tl90409370_)))
                                           (let ((_hd90429376_
                                                  (##car _e90419373_))
                                                 (_tl90439378_
                                                  (##cdr _e90419373_)))
                                             (if (gx#stx-null? _tl90439378_)
                                                 (if (gx#stx-null?
                                                      _tl90379362_)
                                                     ((lambda (_L9381_
                                                               _L9382_
                                                               _L9383_
                                                               _L9384_
                                                               _L9385_)
                                                        (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9385_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#identifier-symbol _L9384_)
                                (cons (gx#stx-e _L9383_)
                                      (cons (gxc#identifier-symbol _L9382_)
                                            (cons (gx#stx-e _L9381_) '())))))
                    (_g89879248_ _g89909251_)))
              _hd90429376_
              _hd90339352_
              _hd90249328_
              _hd90159304_
              _hd90069280_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g89879248_ _g89909251_))
                                                 (_g89879248_ _g89909251_))))
                                         (_g89879248_ _g89909251_))
                                     (_g89879248_ _g89909251_))
                                 (_g89879248_ _g89909251_))))
                         (_g89879248_ _g89909251_))))
                 (_g89879248_ _g89909251_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g89879248_
                                                      _g89909251_))))
                                             (_g89879248_ _g89909251_))
                                         (_g89879248_ _g89909251_))
                                     (_g89879248_ _g89909251_))))
                             (_g89879248_ _g89909251_))))
                     (_g89879248_ _g89909251_))
                 (_g89879248_ _g89909251_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g89879248_ _g89909251_))
                                             (_g89879248_ _g89909251_))
                                         (_g89879248_ _g89909251_))))
                                 (_g89879248_ _g89909251_))))
                         (_g89879248_ _g89909251_))
                     (_g89879248_ _g89909251_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g89879248_ _g89909251_))
                                                 (_g89879248_ _g89909251_))
                                             (_g89879248_ _g89909251_))))
                                     (_g89879248_ _g89909251_))))
                             (_g89879248_ _g89909251_))
                         (_g89879248_ _g89909251_))))
                 (_g89879248_ _g89909251_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g89879248_ _g89909251_))
                                                 (_g89879248_ _g89909251_))))
                                         (_g89879248_ _g89909251_))))
                                 (_g89879248_ _g89909251_))))
                         (_g89879248_ _g89909251_)))))
              (_g89869428_ _stx8985_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self8961_)
      (let ((_self89628968_ _self8961_))
        (let ((_E89648972_
               (lambda () (error '"No clause matching" _self89628968_))))
          (let ((_K89658977_
                 (lambda (_alias-id8975_)
                   (cons '@alias (cons _alias-id8975_ '())))))
            (if (struct-instance? gxc#!alias::t _self89628968_)
                (let ((_e89668980_ (##vector-ref _self89628968_ '1)))
                  (let ((_alias-id8983_ _e89668980_))
                    (_K89658977_ _alias-id8983_)))
                (_E89648972_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self8905_)
      (let ((_self89068917_ _self8905_))
        (let ((_E89088921_
               (lambda () (error '"No clause matching" _self89068917_))))
          (let ((_K89098930_
                 (lambda (_plist8924_
                          _ctor8925_
                          _fields8926_
                          _super8927_
                          _type-id8928_)
                   (cons '@struct-type
                         (cons _type-id8928_
                               (cons _super8927_
                                     (cons _fields8926_
                                           (cons _ctor8925_
                                                 (cons _plist8924_ '())))))))))
            (if (struct-instance? gxc#!struct-type::t _self89068917_)
                (let ((_e89108933_ (##vector-ref _self89068917_ '1)))
                  (let ((_type-id8936_ _e89108933_))
                    (let ((_e89118938_ (##vector-ref _self89068917_ '2)))
                      (let ((_super8941_ _e89118938_))
                        (let ((_e89128943_ (##vector-ref _self89068917_ '3)))
                          (let ((_fields8946_ _e89128943_))
                            (let ((_e89138948_
                                   (##vector-ref _self89068917_ '4)))
                              (let ((_e89148951_
                                     (##vector-ref _self89068917_ '5)))
                                (let ((_ctor8954_ _e89148951_))
                                  (let ((_e89158956_
                                         (##vector-ref _self89068917_ '6)))
                                    (let ((_plist8959_ _e89158956_))
                                      (_K89098930_
                                       _plist8959_
                                       _ctor8954_
                                       _fields8946_
                                       _super8941_
                                       _type-id8936_))))))))))))
                (_E89088921_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self8881_)
      (let ((_self88828888_ _self8881_))
        (let ((_E88848892_
               (lambda () (error '"No clause matching" _self88828888_))))
          (let ((_K88858897_
                 (lambda (_struct-t8895_)
                   (cons '@struct-pred (cons _struct-t8895_ '())))))
            (if (struct-instance? gxc#!struct-pred::t _self88828888_)
                (let ((_e88868900_ (##vector-ref _self88828888_ '1)))
                  (let ((_struct-t8903_ _e88868900_))
                    (_K88858897_ _struct-t8903_)))
                (_E88848892_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self8857_)
      (let ((_self88588864_ _self8857_))
        (let ((_E88608868_
               (lambda () (error '"No clause matching" _self88588864_))))
          (let ((_K88618873_
                 (lambda (_struct-t8871_)
                   (cons '@struct-cons (cons _struct-t8871_ '())))))
            (if (struct-instance? gxc#!struct-cons::t _self88588864_)
                (let ((_e88628876_ (##vector-ref _self88588864_ '1)))
                  (let ((_struct-t8879_ _e88628876_))
                    (_K88618873_ _struct-t8879_)))
                (_E88608868_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self8826_)
      (let ((_self88278834_ _self8826_))
        (let ((_E88298838_
               (lambda () (error '"No clause matching" _self88278834_))))
          (let ((_K88308844_
                 (lambda (_off8841_ _struct-t8842_)
                   (cons '@struct-getf
                         (cons _struct-t8842_ (cons _off8841_ '()))))))
            (if (struct-instance? gxc#!struct-getf::t _self88278834_)
                (let ((_e88318847_ (##vector-ref _self88278834_ '1)))
                  (let ((_struct-t8850_ _e88318847_))
                    (let ((_e88328852_ (##vector-ref _self88278834_ '2)))
                      (let ((_off8855_ _e88328852_))
                        (_K88308844_ _off8855_ _struct-t8850_)))))
                (_E88298838_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self8795_)
      (let ((_self87968803_ _self8795_))
        (let ((_E87988807_
               (lambda () (error '"No clause matching" _self87968803_))))
          (let ((_K87998813_
                 (lambda (_off8810_ _struct-t8811_)
                   (cons '@struct-setf
                         (cons _struct-t8811_ (cons _off8810_ '()))))))
            (if (struct-instance? gxc#!struct-setf::t _self87968803_)
                (let ((_e88008816_ (##vector-ref _self87968803_ '1)))
                  (let ((_struct-t8819_ _e88008816_))
                    (let ((_e88018821_ (##vector-ref _self87968803_ '2)))
                      (let ((_off8824_ _e88018821_))
                        (_K87998813_ _off8824_ _struct-t8819_)))))
                (_E87988807_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self8760_)
      (let ((_self87618769_ _self8760_))
        (let ((_E87638773_
               (lambda () (error '"No clause matching" _self87618769_))))
          (let ((_K87648779_
                 (lambda (_dispatch8776_ _arity8777_)
                   (cons '@lambda
                         (cons _arity8777_ (cons _dispatch8776_ '()))))))
            (if (struct-instance? gxc#!lambda::t _self87618769_)
                (let ((_e87658782_ (##vector-ref _self87618769_ '1)))
                  (let ((_e87668785_ (##vector-ref _self87618769_ '2)))
                    (let ((_arity8788_ _e87668785_))
                      (let ((_e87678790_ (##vector-ref _self87618769_ '3)))
                        (let ((_dispatch8793_ _e87678790_))
                          (_K87648779_ _dispatch8793_ _arity8788_))))))
                (_E87638773_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self8693_)
      (let ((_clause-e8695_
             (lambda (_clause8725_)
               (let ((_clause87268734_ _clause8725_))
                 (let ((_E87288738_
                        (lambda ()
                          (error '"No clause matching" _clause87268734_))))
                   (let ((_K87298744_
                          (lambda (_dispatch8741_ _arity8742_)
                            (cons _arity8742_ (cons _dispatch8741_ '())))))
                     (if (struct-instance? gxc#!lambda::t _clause87268734_)
                         (let ((_e87308747_
                                (##vector-ref _clause87268734_ '1)))
                           (let ((_e87318750_
                                  (##vector-ref _clause87268734_ '2)))
                             (let ((_arity8753_ _e87318750_))
                               (let ((_e87328755_
                                      (##vector-ref _clause87268734_ '3)))
                                 (let ((_dispatch8758_ _e87328755_))
                                   (_K87298744_
                                    _dispatch8758_
                                    _arity8753_))))))
                         (_E87288738_))))))))
        (let ((_self86968703_ _self8693_))
          (let ((_E86988707_
                 (lambda () (error '"No clause matching" _self86968703_))))
            (let ((_K86998714_
                   (lambda (_clauses8710_)
                     (let ((_clauses8712_ (map _clause-e8695_ _clauses8710_)))
                       (cons '@case-lambda _clauses8712_)))))
              (if (struct-instance? gxc#!case-lambda::t _self86968703_)
                  (let ((_e87008717_ (##vector-ref _self86968703_ '1)))
                    (let ((_e87018720_ (##vector-ref _self86968703_ '2)))
                      (let ((_clauses8723_ _e87018720_))
                        (_K86998714_ _clauses8723_))))
                  (_E86988707_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx8688_)
      (let ((_$e8690_ (gx#resolve-identifier__0 _stx8688_)))
        (if _$e8690_
            (##structure-ref _$e8690_ '1 gx#binding::t '#f)
            (gx#stx-e _stx8688_))))))
