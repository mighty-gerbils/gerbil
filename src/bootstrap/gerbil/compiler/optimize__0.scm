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
    (lambda _$args16015_
      (apply make-struct-instance gxc#optimizer-info::t _$args16015_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self16013_)
      (direct-struct-instance-init!
       _self16013_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj16017 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj16017) __obj16017))))))
  (define gxc#optimize!
    (lambda (_ctx16008_)
      (begin
        (gxc#optimizer-load-ssxi-deps _ctx16008_)
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '2
          gxc#optimizer-info::t
          '#f)
         (##structure-ref _ctx16008_ '1 gx#expander-context::t '#f)
         '#t)
        (let ((_code16010_
               (gxc#optimize-source
                (##structure-ref _ctx16008_ '11 gx#module-context::t '#f))))
          (##structure-set!
           _ctx16008_
           _code16010_
           '11
           gx#module-context::t
           '#f)))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx15969_)
      ((letrec ((_lp15971_
                 (lambda (_rest15973_)
                   (let ((_rest1597415982_ _rest15973_))
                     (let ((_E1597715986_
                            (lambda ()
                              (error '"No clause matching" _rest1597415982_))))
                       (let ((_else1597615990_ (lambda () (void))))
                         (let ((_K1597815996_
                                (lambda (_rest15993_ _hd15994_)
                                  (if (##structure-instance-of?
                                       _hd15994_
                                       'gx#module-context::t)
                                      (begin
                                        (if (hash-get
                                             (##structure-ref
                                              (gxc#current-compile-optimizer-info)
                                              '2
                                              gxc#optimizer-info::t
                                              '#f)
                                             (##structure-ref
                                              _hd15994_
                                              '1
                                              gx#expander-context::t
                                              '#f))
                                            '#!void
                                            (begin
                                              (gxc#optimizer-load-prelude-ssxi
                                               _ctx15969_)
                                              (_lp15971_
                                               (##structure-ref
                                                _hd15994_
                                                '8
                                                gx#module-context::t
                                                '#f))
                                              (gxc#optimizer-load-ssxi
                                               _hd15994_)))
                                        (_lp15971_ _rest15993_))
                                      (if (##structure-direct-instance-of?
                                           _hd15994_
                                           'gx#module-import::t)
                                          (_lp15971_
                                           (cons (##structure-ref
                                                  _hd15994_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _rest15993_))
                                          (if (##structure-direct-instance-of?
                                               _hd15994_
                                               'gx#module-export::t)
                                              (_lp15971_
                                               (cons (##structure-ref
                                                      _hd15994_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _rest15993_))
                                              (if (##structure-direct-instance-of?
                                                   _hd15994_
                                                   'gx#import-set::t)
                                                  (_lp15971_
                                                   (cons (##structure-ref
                                                          _hd15994_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _rest15993_))
                                                  (error '"Unexpected module import"
                                                         _hd15994_))))))))
                           (if (##pair? _rest1597415982_)
                               (let ((_hd1597915999_ (##car _rest1597415982_))
                                     (_tl1598016001_ (##cdr _rest1597415982_)))
                                 (let ((_hd16004_ _hd1597915999_))
                                   (let ((_rest16006_ _tl1598016001_))
                                     (_K1597815996_ _rest16006_ _hd16004_))))
                               (_else1597615990_)))))))))
         _lp15971_)
       (##structure-ref _ctx15969_ '8 gx#module-context::t '#f))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx15964_)
      (let ((_$e15966_ (gx#core-context-prelude__opt-lambda9767 _ctx15964_)))
        (if _$e15966_ (gxc#optimizer-load-ssxi _$e15966_) (void)))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx15944_)
      (if (if (##structure-instance-of? _ctx15944_ 'gx#module-context::t)
              (list? (##structure-ref _ctx15944_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht15946_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id15948_
                   (##structure-ref _ctx15944_ '1 gx#expander-context::t '#f)))
              (let ((_mod15950_ (hash-get _ht15946_ _id15948_)))
                (let ()
                  (let ((_$e15953_ _mod15950_))
                    (if _$e15953_
                        _$e15953_
                        (let ((_mod15956_
                               (gxc#optimizer-import-ssxi _ctx15944_)))
                          (let ((_val15961_
                                 (let ((_$e15958_ _mod15956_))
                                   (if _$e15958_ _$e15958_ '#!void))))
                            (let ()
                              (begin
                                (hash-put! _ht15946_ _id15948_ _val15961_)
                                _val15961_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx15921_)
      (let ((_catch-e15923_
             (lambda (_exn15942_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx15921_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn15942_))
                     '#!void)
                 '#f))))
        (let ((_import-e15924_
               (lambda ()
                 (let ((_str-id15927_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx15921_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path15935_
                          (let ((_odir1592815930_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1592815930_
                                (let ((_odir15933_ _odir1592815930_))
                                  (path-expand
                                   (string-append _str-id15927_ '".ss")
                                   _odir15933_))
                                '#f))))
                     (let ((_library-path15937_
                            (string->symbol
                             (string-append '":" _str-id15927_))))
                       (let ((_ssxi-path15939_
                              (if (if _artefact-path15935_
                                      (file-exists? _artefact-path15935_)
                                      '#f)
                                  _artefact-path15935_
                                  _library-path15937_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path15939_)
                             (gx#import-module__opt-lambda9802
                              _ssxi-path15939_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx15921_ '1 gx#expander-context::t '#f)
              (with-catch _catch-e15923_ _import-e15924_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args15918_
      (apply make-struct-instance gxc#!type::t _$args15918_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args15915_
      (apply make-struct-instance gxc#!alias::t _$args15915_)))
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
    (lambda _$args15912_
      (apply make-struct-instance gxc#!struct-type::t _$args15912_)))
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
    (lambda _$args15909_
      (apply make-struct-instance gxc#!procedure::t _$args15909_)))
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
    (lambda _$args15906_
      (apply make-struct-instance gxc#!struct-pred::t _$args15906_)))
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
    (lambda _$args15903_
      (apply make-struct-instance gxc#!struct-cons::t _$args15903_)))
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
    (lambda _$args15900_
      (apply make-struct-instance gxc#!struct-getf::t _$args15900_)))
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
    (lambda _$args15897_
      (apply make-struct-instance gxc#!struct-setf::t _$args15897_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (define gxc#!lambda::t
    (make-struct-type 'gxc#!lambda::t gxc#!procedure::t '2 '!lambda '() '#f))
  (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
  (define gxc#make-!lambda
    (lambda _$args15894_
      (apply make-struct-instance gxc#!lambda::t _$args15894_)))
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
    (lambda _$args15891_
      (apply make-struct-instance gxc#!case-lambda::t _$args15891_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self15883_
             _id15884_
             _super15885_
             _fields15886_
             _xfields15887_
             _ctor15888_
             _plist15889_)
      (direct-struct-instance-init!
       _self15883_
       _id15884_
       _super15885_
       _fields15886_
       _xfields15887_
       _ctor15888_
       _plist15889_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type15876_)
      (let ((_$e15878_
             (##structure-ref _type15876_ '7 gxc#!struct-type::t '#f)))
        (if _$e15878_
            (values _$e15878_)
            (let ((_vtab15881_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type15876_
                 _vtab15881_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab15881_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type15867_ _method15868_)
      (let ((_vtab1586915871_
             (##structure-ref _type15867_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1586915871_
            (let ((_vtab15874_ _vtab1586915871_))
              (hash-get _vtab15874_ _method15868_))
            '#f))))
  (define gxc#optimizer-declare-type!
    (lambda (_sym15864_ _type15865_)
      (begin
        (if (##structure-instance-of? _type15865_ 'gxc#!type::t)
            '#!void
            (error '"bad declaration: expected !type" _sym15864_ _type15865_))
        (gxc#verbose
         '"declare-type "
         _sym15864_
         '" "
         (##vector->list _type15865_))
        (hash-put!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '1
          gxc#optimizer-info::t
          '#f)
         _sym15864_
         _type15865_))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda15839
      (lambda (_type-t15841_ _method15842_ _sym15843_ _rebind?15844_)
        (let ((_type15846_ (gxc#optimizer-resolve-type _type-t15841_)))
          (if (##structure-instance-of? _type15846_ 'gxc#!struct-type::t)
              (let ((_vtab15848_ (gxc#!struct-type-vtab _type15846_)))
                (if _rebind?15844_
                    (if (hash-key? _vtab15848_ _method15842_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t15841_
                         '" "
                         _method15842_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t15841_
                         '" "
                         _method15842_))
                    (if (hash-key? _vtab15848_ _method15842_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t15841_
                           '" "
                           _method15842_
                           '" => "
                           _sym15843_)
                          (hash-put! _vtab15848_ _method15842_ _sym15843_)))))
              (if (not _type15846_)
                  (gxc#verbose '"declare-method: unknown type " _type-t15841_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t15841_
                         _type15846_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t15853_ _method15854_ _sym15855_)
          (let ((_rebind?15857_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda15839
             _type-t15853_
             _method15854_
             _sym15855_
             _rebind?15857_))))
      (define gxc#optimizer-declare-method!
        (lambda _g16021_
          (let ((_g16020_ (length _g16021_)))
            (cond ((fx= _g16020_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g16021_))
                  ((fx= _g16020_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda15839
                          _g16021_))
                  (else (error "No clause matching arguments" _g16021_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym15838_)
      (hash-get
       (##structure-ref
        (gxc#current-compile-optimizer-info)
        '1
        gxc#optimizer-info::t
        '#f)
       _sym15838_)))
  (define gxc#optimizer-resolve-type
    (lambda (_sym15830_)
      (let ((_type1583115833_ (gxc#optimizer-lookup-type _sym15830_)))
        (if _type1583115833_
            (let ((_type15836_ _type1583115833_))
              (if (##structure-instance-of? _type15836_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type15836_ '1 gxc#!type::t '#f))
                  _type15836_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t15825_ _method15826_)
      (let ((_type15828_ (gxc#optimizer-resolve-type _type-t15825_)))
        (if (##structure-instance-of? _type15828_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type15828_ _method15826_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx15821_)
      (let ((_stx15823_ (gxc#apply-lift-top-lambdas _stx15821_)))
        (begin
          (gxc#apply-collect-type-info _stx15823_)
          (gxc#apply-optimize-call _stx15823_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl15818_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl15818_ '%#lambda false)
           (hash-put! _tbl15818_ '%#case-lambda false)
           (hash-put! _tbl15818_ '%#let-values false)
           (hash-put! _tbl15818_ '%#letrec-values false)
           (hash-put! _tbl15818_ '%#letrec*-values false)
           (hash-put! _tbl15818_ '%#quote false)
           (hash-put! _tbl15818_ '%#quote-syntax false)
           (hash-put! _tbl15818_ '%#call false)
           (hash-put! _tbl15818_ '%#if false)
           (hash-put! _tbl15818_ '%#ref false)
           (hash-put! _tbl15818_ '%#set! false)
           (hash-put! _tbl15818_ '%#struct-instance? false)
           (hash-put! _tbl15818_ '%#struct-direct-instance? false)
           (hash-put! _tbl15818_ '%#struct-ref false)
           (hash-put! _tbl15818_ '%#struct-set! false)
           _tbl15818_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl15814_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl15814_ '%#begin false)
           (hash-put! _tbl15814_ '%#begin-syntax false)
           (hash-put! _tbl15814_ '%#begin-foreign false)
           (hash-put! _tbl15814_ '%#module false)
           (hash-put! _tbl15814_ '%#import false)
           (hash-put! _tbl15814_ '%#export false)
           (hash-put! _tbl15814_ '%#provide false)
           (hash-put! _tbl15814_ '%#extern false)
           (hash-put! _tbl15814_ '%#define-values false)
           (hash-put! _tbl15814_ '%#define-syntax false)
           (hash-put! _tbl15814_ '%#define-alias false)
           (hash-put! _tbl15814_ '%#declare false)
           _tbl15814_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl15810_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15810_ (force gxc#&false-special-form))
           (hash-copy! _tbl15810_ (force gxc#&false-expression))
           _tbl15810_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl15806_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl15806_ '%#lambda gxc#xform-identity)
           (hash-put! _tbl15806_ '%#case-lambda gxc#xform-identity)
           (hash-put! _tbl15806_ '%#let-values gxc#xform-identity)
           (hash-put! _tbl15806_ '%#letrec-values gxc#xform-identity)
           (hash-put! _tbl15806_ '%#letrec*-values gxc#xform-identity)
           (hash-put! _tbl15806_ '%#quote gxc#xform-identity)
           (hash-put! _tbl15806_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl15806_ '%#call gxc#xform-identity)
           (hash-put! _tbl15806_ '%#if gxc#xform-identity)
           (hash-put! _tbl15806_ '%#ref gxc#xform-identity)
           (hash-put! _tbl15806_ '%#set! gxc#xform-identity)
           (hash-put! _tbl15806_ '%#struct-instance? gxc#xform-identity)
           (hash-put! _tbl15806_ '%#struct-direct-instance? gxc#xform-identity)
           (hash-put! _tbl15806_ '%#struct-ref gxc#xform-identity)
           (hash-put! _tbl15806_ '%#struct-set! gxc#xform-identity)
           _tbl15806_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl15802_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl15802_ '%#begin gxc#xform-identity)
           (hash-put! _tbl15802_ '%#begin-syntax gxc#xform-identity)
           (hash-put! _tbl15802_ '%#begin-foreign gxc#xform-identity)
           (hash-put! _tbl15802_ '%#module gxc#xform-identity)
           (hash-put! _tbl15802_ '%#import gxc#xform-identity)
           (hash-put! _tbl15802_ '%#export gxc#xform-identity)
           (hash-put! _tbl15802_ '%#provide gxc#xform-identity)
           (hash-put! _tbl15802_ '%#extern gxc#xform-identity)
           (hash-put! _tbl15802_ '%#define-values gxc#xform-identity)
           (hash-put! _tbl15802_ '%#define-syntax gxc#xform-identity)
           (hash-put! _tbl15802_ '%#define-alias gxc#xform-identity)
           (hash-put! _tbl15802_ '%#declare gxc#xform-identity)
           _tbl15802_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl15798_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15798_ (force gxc#&identity-special-form))
           (hash-copy! _tbl15798_ (force gxc#&identity-expression))
           _tbl15798_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl15794_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl15794_ '%#lambda gxc#xform-lambda%)
           (hash-put! _tbl15794_ '%#case-lambda gxc#xform-case-lambda%)
           (hash-put! _tbl15794_ '%#let-values gxc#xform-let-values%)
           (hash-put! _tbl15794_ '%#letrec-values gxc#xform-let-values%)
           (hash-put! _tbl15794_ '%#letrec*-values gxc#xform-let-values%)
           (hash-put! _tbl15794_ '%#quote gxc#xform-identity)
           (hash-put! _tbl15794_ '%#quote-syntax gxc#xform-identity)
           (hash-put! _tbl15794_ '%#call gxc#xform-call%)
           (hash-put! _tbl15794_ '%#if gxc#xform-if%)
           (hash-put! _tbl15794_ '%#ref gxc#xform-identity)
           (hash-put! _tbl15794_ '%#set! gxc#xform-setq%)
           (hash-put! _tbl15794_ '%#struct-instance? gxc#xform-struct-op%)
           (hash-put!
            _tbl15794_
            '%#struct-direct-instance?
            gxc#xform-struct-op%)
           (hash-put! _tbl15794_ '%#struct-ref gxc#xform-struct-op%)
           (hash-put! _tbl15794_ '%#struct-set! gxc#xform-struct-op%)
           _tbl15794_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl15790_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15790_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl15790_ (force gxc#&identity))
           (hash-put! _tbl15790_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl15790_ '%#module gxc#xform-module%)
           (hash-put! _tbl15790_ '%#define-values gxc#xform-define-values%)
           _tbl15790_)))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl15786_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15786_ (force gxc#&identity))
           (hash-put! _tbl15786_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl15786_ '%#module gxc#xform-module%)
           (hash-put!
            _tbl15786_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           _tbl15786_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx15779_ . _args15781_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15779_ _args15781_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl15776_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15776_ (force gxc#&basic-xform-expression))
           (hash-put! _tbl15776_ '%#begin gxc#xform-begin%)
           (hash-put! _tbl15776_ '%#ref gxc#expression-subst-ref%)
           _tbl15776_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx15769_ . _args15771_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15769_ _args15771_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl15766_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15766_ (force gxc#&void-expression))
           (hash-copy! _tbl15766_ (force gxc#&void-special-form))
           (hash-put! _tbl15766_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl15766_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl15766_
            '%#define-values
            gxc#collect-type-define-values%)
           (hash-put! _tbl15766_ '%#call gxc#collect-type-call%)
           _tbl15766_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx15759_ . _args15761_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15759_ _args15761_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl15756_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15756_ (force gxc#&false))
           (hash-put! _tbl15756_ '%#begin gxc#basic-expression-type-begin%)
           (hash-put! _tbl15756_ '%#lambda gxc#basic-expression-type-lambda%)
           (hash-put!
            _tbl15756_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (hash-put! _tbl15756_ '%#call gxc#basic-expression-type-call%)
           (hash-put! _tbl15756_ '%#ref gxc#basic-expression-type-ref%)
           _tbl15756_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx15749_ . _args15751_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15749_ _args15751_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl15746_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15746_ (force gxc#&basic-xform))
           (hash-put! _tbl15746_ '%#call gxc#optimize-call%)
           _tbl15746_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx15739_ . _args15741_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15739_ _args15741_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl15736_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15736_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl15736_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl15736_ '%#module gxc#generate-ssxi-module%)
           (hash-put!
            _tbl15736_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (hash-put! _tbl15736_ '%#call gxc#generate-ssxi-call%)
           _tbl15736_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx15729_ . _args15731_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15729_ _args15731_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx15726_ . _args15727_) _stx15726_))
  (define gxc#xform-wrap-source
    (lambda (_stx15723_ _src-stx15724_)
      (gx#stx-wrap-source _stx15723_ (gx#stx-source _src-stx15724_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args15717_)
      (lambda (_g1571815720_)
        (apply gxc#compile-e _g1571815720_ _args15717_))))
  (define gxc#xform-begin%
    (lambda (_stx15676_ . _args15677_)
      (let ((_g1567915689_
             (lambda (_g1568015686_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1568015686_))))
        (let ((_g1567815714_
               (lambda (_g1568015692_)
                 (if (gx#stx-pair? _g1568015692_)
                     (let ((_e1568215694_ (gx#stx-e _g1568015692_)))
                       (let ((_hd1568315697_ (##car _e1568215694_))
                             (_tl1568415699_ (##cdr _e1568215694_)))
                         ((lambda (_L15702_)
                            (let ((_forms15712_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args15677_)
                                    _L15702_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms15712_)
                               _stx15676_)))
                          _tl1568415699_)))
                     (_g1567915689_ _g1568015692_)))))
          (_g1567815714_ _stx15676_)))))
  (define gxc#xform-module%
    (lambda (_stx15613_ . _args15614_)
      (let ((_g1561615630_
             (lambda (_g1561715627_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1561715627_))))
        (let ((_g1561515673_
               (lambda (_g1561715633_)
                 (if (gx#stx-pair? _g1561715633_)
                     (let ((_e1562015635_ (gx#stx-e _g1561715633_)))
                       (let ((_hd1562115638_ (##car _e1562015635_))
                             (_tl1562215640_ (##cdr _e1562015635_)))
                         (if (gx#stx-pair? _tl1562215640_)
                             (let ((_e1562315643_ (gx#stx-e _tl1562215640_)))
                               (let ((_hd1562415646_ (##car _e1562315643_))
                                     (_tl1562515648_ (##cdr _e1562315643_)))
                                 ((lambda (_L15651_ _L15652_)
                                    (let ((_ctx15665_
                                           (gx#syntax-local-e__0 _L15652_)))
                                      (let ((_code15667_
                                             (##structure-ref
                                              _ctx15665_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code15670_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code15667_
                                                         _args15614_))
                                                gx#current-expander-context
                                                _ctx15665_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx15665_
                                               _code15670_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L15652_
                                                           (cons _code15670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx15613_)))))))
                                  _tl1562515648_
                                  _hd1562415646_)))
                             (_g1561615630_ _g1561715633_))))
                     (_g1561615630_ _g1561715633_)))))
          (_g1561515673_ _stx15613_)))))
  (define gxc#xform-define-values%
    (lambda (_stx15543_ . _args15544_)
      (let ((_g1554615563_
             (lambda (_g1554715560_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1554715560_))))
        (let ((_g1554515610_
               (lambda (_g1554715566_)
                 (if (gx#stx-pair? _g1554715566_)
                     (let ((_e1555015568_ (gx#stx-e _g1554715566_)))
                       (let ((_hd1555115571_ (##car _e1555015568_))
                             (_tl1555215573_ (##cdr _e1555015568_)))
                         (if (gx#stx-pair? _tl1555215573_)
                             (let ((_e1555315576_ (gx#stx-e _tl1555215573_)))
                               (let ((_hd1555415579_ (##car _e1555315576_))
                                     (_tl1555515581_ (##cdr _e1555315576_)))
                                 (if (gx#stx-pair? _tl1555515581_)
                                     (let ((_e1555615584_
                                            (gx#stx-e _tl1555515581_)))
                                       (let ((_hd1555715587_
                                              (##car _e1555615584_))
                                             (_tl1555815589_
                                              (##cdr _e1555615584_)))
                                         (if (gx#stx-null? _tl1555815589_)
                                             ((lambda (_L15592_ _L15593_)
                                                (let ((_expr15608_
                                                       (apply gxc#compile-e
                                                              _L15592_
                                                              _args15544_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L15593_
                                                               (cons _expr15608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15543_)))
                                              _hd1555715587_
                                              _hd1555415579_)
                                             (_g1554615563_ _g1554715566_))))
                                     (_g1554615563_ _g1554715566_))))
                             (_g1554615563_ _g1554715566_))))
                     (_g1554615563_ _g1554715566_)))))
          (_g1554515610_ _stx15543_)))))
  (define gxc#xform-lambda%
    (lambda (_stx15486_ . _args15487_)
      (let ((_g1548915503_
             (lambda (_g1549015500_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1549015500_))))
        (let ((_g1548815540_
               (lambda (_g1549015506_)
                 (if (gx#stx-pair? _g1549015506_)
                     (let ((_e1549315508_ (gx#stx-e _g1549015506_)))
                       (let ((_hd1549415511_ (##car _e1549315508_))
                             (_tl1549515513_ (##cdr _e1549315508_)))
                         (if (gx#stx-pair? _tl1549515513_)
                             (let ((_e1549615516_ (gx#stx-e _tl1549515513_)))
                               (let ((_hd1549715519_ (##car _e1549615516_))
                                     (_tl1549815521_ (##cdr _e1549615516_)))
                                 ((lambda (_L15524_ _L15525_)
                                    (let ((_body15538_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args15487_)
                                            _L15524_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L15525_ _body15538_))
                                       _stx15486_)))
                                  _tl1549815521_
                                  _hd1549715519_)))
                             (_g1548915503_ _g1549015506_))))
                     (_g1548915503_ _g1549015506_)))))
          (_g1548815540_ _stx15486_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx15399_ . _args15400_)
      (let ((_clause-e15402_
             (lambda (_clause15443_)
               (let ((_g1544515456_
                      (lambda (_g1544615453_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1544615453_))))
                 (let ((_g1544415483_
                        (lambda (_g1544615459_)
                          (if (gx#stx-pair? _g1544615459_)
                              (let ((_e1544915461_ (gx#stx-e _g1544615459_)))
                                (let ((_hd1545015464_ (##car _e1544915461_))
                                      (_tl1545115466_ (##cdr _e1544915461_)))
                                  ((lambda (_L15469_ _L15470_)
                                     (let ((_body15481_
                                            (gx#stx-map1
                                             (gxc#xform-apply-compile-e
                                              _args15400_)
                                             _L15469_)))
                                       (cons _L15470_ _body15481_)))
                                   _tl1545115466_
                                   _hd1545015464_)))
                              (_g1544515456_ _g1544615459_)))))
                   (_g1544415483_ _clause15443_))))))
        (let ((_g1540415414_
               (lambda (_g1540515411_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1540515411_))))
          (let ((_g1540315440_
                 (lambda (_g1540515417_)
                   (if (gx#stx-pair? _g1540515417_)
                       (let ((_e1540715419_ (gx#stx-e _g1540515417_)))
                         (let ((_hd1540815422_ (##car _e1540715419_))
                               (_tl1540915424_ (##cdr _e1540715419_)))
                           ((lambda (_L15427_)
                              (let ((_clauses15438_
                                     (gx#stx-map1 _clause-e15402_ _L15427_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses15438_)
                                 _stx15399_)))
                            _tl1540915424_)))
                       (_g1540415414_ _g1540515417_)))))
            (_g1540315440_ _stx15399_))))))
  (define gxc#xform-let-values%
    (lambda (_stx15193_ . _args15194_)
      (let ((_g1519615229_
             (lambda (_g1519715226_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1519715226_))))
        (let ((_g1519515396_
               (lambda (_g1519715232_)
                 (if (gx#stx-pair? _g1519715232_)
                     (let ((_e1520215234_ (gx#stx-e _g1519715232_)))
                       (let ((_hd1520315237_ (##car _e1520215234_))
                             (_tl1520415239_ (##cdr _e1520215234_)))
                         (if (gx#stx-pair? _tl1520415239_)
                             (let ((_e1520515242_ (gx#stx-e _tl1520415239_)))
                               (let ((_hd1520615245_ (##car _e1520515242_))
                                     (_tl1520715247_ (##cdr _e1520515242_)))
                                 (if (gx#stx-pair/null? _hd1520615245_)
                                     (if (fx>= (gx#stx-length _hd1520615245_)
                                               '0)
                                         (let ((_g16022_
                                                (gx#syntax-split-splice
                                                 _hd1520615245_
                                                 '0)))
                                           (begin
                                             (let ((_g16023_
                                                    (values-count _g16022_)))
                                               (if (not (fx= _g16023_ 2))
                                                   (error "Context expects 2 values"
                                                          _g16023_)))
                                             (let ((_target1520815250_
                                                    (values-ref _g16022_ 0))
                                                   (_tl1521015252_
                                                    (values-ref _g16022_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1521015252_)
                                                   (letrec ((_loop1521115255_
                                                             (lambda (_hd1520915258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1521515260_
                              _hd1521615262_)
                       (if (gx#stx-pair? _hd1520915258_)
                           (let ((_e1521215265_ (gx#stx-e _hd1520915258_)))
                             (let ((_lp-hd1521315268_ (##car _e1521215265_))
                                   (_lp-tl1521415270_ (##cdr _e1521215265_)))
                               (if (gx#stx-pair? _lp-hd1521315268_)
                                   (let ((_e1521915273_
                                          (gx#stx-e _lp-hd1521315268_)))
                                     (let ((_hd1522015276_
                                            (##car _e1521915273_))
                                           (_tl1522115278_
                                            (##cdr _e1521915273_)))
                                       (if (gx#stx-pair? _tl1522115278_)
                                           (let ((_e1522215281_
                                                  (gx#stx-e _tl1522115278_)))
                                             (let ((_hd1522315284_
                                                    (##car _e1522215281_))
                                                   (_tl1522415286_
                                                    (##cdr _e1522215281_)))
                                               (if (gx#stx-null?
                                                    _tl1522415286_)
                                                   (_loop1521115255_
                                                    _lp-tl1521415270_
                                                    (cons _hd1522315284_
                                                          _expr1521515260_)
                                                    (cons _hd1522015276_
                                                          _hd1521615262_))
                                                   (_g1519615229_
                                                    _g1519715232_))))
                                           (_g1519615229_ _g1519715232_))))
                                   (_g1519615229_ _g1519715232_))))
                           (let ((_expr1521715289_ (reverse _expr1521515260_))
                                 (_hd1521815291_ (reverse _hd1521615262_)))
                             ((lambda (_L15294_ _L15295_ _L15296_ _L15297_)
                                (let ((_g1531615332_
                                       (lambda (_g1531715329_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1531715329_))))
                                  (let ((_g1531515386_
                                         (lambda (_g1531715335_)
                                           (if (gx#stx-pair/null?
                                                _g1531715335_)
                                               (if (fx>= (gx#stx-length
                                                          _g1531715335_)
                                                         '0)
                                                   (let ((_g16024_
                                                          (gx#syntax-split-splice
                                                           _g1531715335_
                                                           '0)))
                                                     (begin
                                                       (let ((_g16025_
                                                              (values-count
                                                               _g16024_)))
                                                         (if (not (fx= _g16025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g16025_)))
               (let ((_target1531915337_ (values-ref _g16024_ 0))
                     (_tl1532115339_ (values-ref _g16024_ 1)))
                 (if (gx#stx-null? _tl1532115339_)
                     (letrec ((_loop1532215342_
                               (lambda (_hd1532015345_ _expr1532615347_)
                                 (if (gx#stx-pair? _hd1532015345_)
                                     (let ((_e1532315350_
                                            (gx#syntax-e _hd1532015345_)))
                                       (let ((_lp-hd1532415353_
                                              (##car _e1532315350_))
                                             (_lp-tl1532515355_
                                              (##cdr _e1532315350_)))
                                         (_loop1532215342_
                                          _lp-tl1532515355_
                                          (cons _lp-hd1532415353_
                                                _expr1532615347_))))
                                     (let ((_expr1532715358_
                                            (reverse _expr1532615347_)))
                                       ((lambda (_L15361_)
                                          (let ()
                                            (let ((_body15374_
                                                   (gx#stx-map1
                                                    (gxc#xform-apply-compile-e
                                                     _args15194_)
                                                    _L15294_)))
                                              (gxc#xform-wrap-source
                                               (cons _L15297_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L15361_
                                                              _L15296_)
                                                             (foldr (lambda (_g1537515379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1537615381_
                                     _g1537715383_)
                              (cons (cons _g1537615381_
                                          (cons _g1537515379_ '()))
                                    _g1537715383_))
                            '()
                            _L15361_
                            _L15296_))
                   _body15374_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx15193_))))
                                        _expr1532715358_))))))
                       (_loop1532215342_ _target1531915337_ '()))
                     (_g1531615332_ _g1531715335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1531615332_
                                                    _g1531715335_))
                                               (_g1531615332_
                                                _g1531715335_)))))
                                    (_g1531515386_
                                     (gx#stx-map1
                                      (gxc#xform-apply-compile-e _args15194_)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1538815391_
                                                        _g1538915393_)
                                                 (cons _g1538815391_
                                                       _g1538915393_))
                                               '()
                                               _L15295_)))))))
                              _tl1520715247_
                              _expr1521715289_
                              _hd1521815291_
                              _hd1520315237_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1521115255_
                                                      _target1520815250_
                                                      '()
                                                      '()))
                                                   (_g1519615229_
                                                    _g1519715232_)))))
                                         (_g1519615229_ _g1519715232_))
                                     (_g1519615229_ _g1519715232_))))
                             (_g1519615229_ _g1519715232_))))
                     (_g1519615229_ _g1519715232_)))))
          (_g1519515396_ _stx15193_)))))
  (define gxc#xform-call%
    (lambda (_stx15135_ . _args15136_)
      (let ((_g1513815152_
             (lambda (_g1513915149_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1513915149_))))
        (let ((_g1513715190_
               (lambda (_g1513915155_)
                 (if (gx#stx-pair? _g1513915155_)
                     (let ((_e1514215157_ (gx#stx-e _g1513915155_)))
                       (let ((_hd1514315160_ (##car _e1514215157_))
                             (_tl1514415162_ (##cdr _e1514215157_)))
                         (if (gx#stx-pair? _tl1514415162_)
                             (let ((_e1514515165_ (gx#stx-e _tl1514415162_)))
                               (let ((_hd1514615168_ (##car _e1514515165_))
                                     (_tl1514715170_ (##cdr _e1514515165_)))
                                 ((lambda (_L15173_ _L15174_)
                                    (let ((_rator15187_
                                           (apply gxc#compile-e
                                                  _L15174_
                                                  _args15136_))
                                          (_rands15188_
                                           (gx#stx-map1
                                            (gxc#xform-apply-compile-e
                                             _args15136_)
                                            _L15173_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons _rator15187_ _rands15188_))
                                       _stx15135_)))
                                  _tl1514715170_
                                  _hd1514615168_)))
                             (_g1513815152_ _g1513915155_))))
                     (_g1513815152_ _g1513915155_)))))
          (_g1513715190_ _stx15135_)))))
  (define gxc#xform-if%
    (lambda (_stx15094_ . _args15095_)
      (let ((_g1509715107_
             (lambda (_g1509815104_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1509815104_))))
        (let ((_g1509615132_
               (lambda (_g1509815110_)
                 (if (gx#stx-pair? _g1509815110_)
                     (let ((_e1510015112_ (gx#stx-e _g1509815110_)))
                       (let ((_hd1510115115_ (##car _e1510015112_))
                             (_tl1510215117_ (##cdr _e1510015112_)))
                         ((lambda (_L15120_)
                            (let ((_forms15130_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args15095_)
                                    _L15120_)))
                              (gxc#xform-wrap-source
                               (cons '%#if _forms15130_)
                               _stx15094_)))
                          _tl1510215117_)))
                     (_g1509715107_ _g1509815110_)))))
          (_g1509615132_ _stx15094_)))))
  (define gxc#xform-setq%
    (lambda (_stx15024_ . _args15025_)
      (let ((_g1502715044_
             (lambda (_g1502815041_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1502815041_))))
        (let ((_g1502615091_
               (lambda (_g1502815047_)
                 (if (gx#stx-pair? _g1502815047_)
                     (let ((_e1503115049_ (gx#stx-e _g1502815047_)))
                       (let ((_hd1503215052_ (##car _e1503115049_))
                             (_tl1503315054_ (##cdr _e1503115049_)))
                         (if (gx#stx-pair? _tl1503315054_)
                             (let ((_e1503415057_ (gx#stx-e _tl1503315054_)))
                               (let ((_hd1503515060_ (##car _e1503415057_))
                                     (_tl1503615062_ (##cdr _e1503415057_)))
                                 (if (gx#stx-pair? _tl1503615062_)
                                     (let ((_e1503715065_
                                            (gx#stx-e _tl1503615062_)))
                                       (let ((_hd1503815068_
                                              (##car _e1503715065_))
                                             (_tl1503915070_
                                              (##cdr _e1503715065_)))
                                         (if (gx#stx-null? _tl1503915070_)
                                             ((lambda (_L15073_ _L15074_)
                                                (let ((_expr15089_
                                                       (apply gxc#compile-e
                                                              _L15073_
                                                              _args15025_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L15074_
                                                               (cons _expr15089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15024_)))
                                              _hd1503815068_
                                              _hd1503515060_)
                                             (_g1502715044_ _g1502815047_))))
                                     (_g1502715044_ _g1502815047_))))
                             (_g1502715044_ _g1502815047_))))
                     (_g1502715044_ _g1502815047_)))))
          (_g1502615091_ _stx15024_)))))
  (define gxc#xform-struct-op%
    (lambda (_stx14980_ . _args14981_)
      (let ((_g1498314994_
             (lambda (_g1498414991_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1498414991_))))
        (let ((_g1498215021_
               (lambda (_g1498414997_)
                 (if (gx#stx-pair? _g1498414997_)
                     (let ((_e1498714999_ (gx#stx-e _g1498414997_)))
                       (let ((_hd1498815002_ (##car _e1498714999_))
                             (_tl1498915004_ (##cdr _e1498714999_)))
                         ((lambda (_L15007_ _L15008_)
                            (let ((_op-args15019_
                                   (gx#stx-map1
                                    (gxc#xform-apply-compile-e _args14981_)
                                    _L15007_)))
                              (gxc#xform-wrap-source
                               (cons _L15008_ _op-args15019_)
                               _stx14980_)))
                          _tl1498915004_
                          _hd1498815002_)))
                     (_g1498314994_ _g1498414997_)))))
          (_g1498215021_ _stx14980_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form14214_)
      (let ((_g1421914376_
             (lambda (_g1422014373_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1422014373_))))
        (let ((_g1421814383_ (lambda (_g1422014379_) ((lambda () '#f)))))
          (let ((_g1421714523_
                 (lambda (_g1422014386_)
                   (if (gx#stx-pair? _g1422014386_)
                       (let ((_e1433614388_ (gx#stx-e _g1422014386_)))
                         (let ((_hd1433714391_ (##car _e1433614388_))
                               (_tl1433814393_ (##cdr _e1433614388_)))
                           (if (gx#stx-pair? _tl1433814393_)
                               (let ((_e1433914396_ (gx#stx-e _tl1433814393_)))
                                 (let ((_hd1434014399_ (##car _e1433914396_))
                                       (_tl1434114401_ (##cdr _e1433914396_)))
                                   (if (gx#stx-pair? _hd1434014399_)
                                       (let ((_e1434214404_
                                              (gx#stx-e _hd1434014399_)))
                                         (let ((_hd1434314407_
                                                (##car _e1434214404_))
                                               (_tl1434414409_
                                                (##cdr _e1434214404_)))
                                           (if (gx#identifier? _hd1434314407_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1434314407_)
                                                   (if (gx#stx-pair?
                                                        _tl1434414409_)
                                                       (let ((_e1434514412_
                                                              (gx#stx-e
                                                               _tl1434414409_)))
                                                         (let ((_hd1434614415_
                                                                (##car _e1434514412_))
                                                               (_tl1434714417_
                                                                (##cdr _e1434514412_)))
                                                           (if (gx#stx-pair?
                                                                _hd1434614415_)
                                                               (let ((_e1434814420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1434614415_)))
                         (let ((_hd1434914423_ (##car _e1434814420_))
                               (_tl1435014425_ (##cdr _e1434814420_)))
                           (if (gx#identifier? _hd1434914423_)
                               (if (gx#stx-eq? '%#ref _hd1434914423_)
                                   (if (gx#stx-pair? _tl1435014425_)
                                       (let ((_e1435114428_
                                              (gx#stx-e _tl1435014425_)))
                                         (let ((_hd1435214431_
                                                (##car _e1435114428_))
                                               (_tl1435314433_
                                                (##cdr _e1435114428_)))
                                           (if (gx#stx-null? _tl1435314433_)
                                               (if (gx#stx-pair?
                                                    _tl1434714417_)
                                                   (let ((_e1435414436_
                                                          (gx#stx-e
                                                           _tl1434714417_)))
                                                     (let ((_hd1435514439_
                                                            (##car _e1435414436_))
                                                           (_tl1435614441_
                                                            (##cdr _e1435414436_)))
                                                       (if (gx#stx-pair?
                                                            _hd1435514439_)
                                                           (let ((_e1435714444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1435514439_)))
                     (let ((_hd1435814447_ (##car _e1435714444_))
                           (_tl1435914449_ (##cdr _e1435714444_)))
                       (if (gx#identifier? _hd1435814447_)
                           (if (gx#stx-eq? '%#ref _hd1435814447_)
                               (if (gx#stx-pair? _tl1435914449_)
                                   (let ((_e1436014452_
                                          (gx#stx-e _tl1435914449_)))
                                     (let ((_hd1436114455_
                                            (##car _e1436014452_))
                                           (_tl1436214457_
                                            (##cdr _e1436014452_)))
                                       (if (gx#stx-null? _tl1436214457_)
                                           (if (gx#stx-pair? _tl1435614441_)
                                               (let ((_e1436314460_
                                                      (gx#stx-e
                                                       _tl1435614441_)))
                                                 (let ((_hd1436414463_
                                                        (##car _e1436314460_))
                                                       (_tl1436514465_
                                                        (##cdr _e1436314460_)))
                                                   (if (gx#stx-pair?
                                                        _hd1436414463_)
                                                       (let ((_e1436614468_
                                                              (gx#stx-e
                                                               _hd1436414463_)))
                                                         (let ((_hd1436714471_
                                                                (##car _e1436614468_))
                                                               (_tl1436814473_
                                                                (##cdr _e1436614468_)))
                                                           (if (gx#identifier?
                                                                _hd1436714471_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1436714471_)
                           (if (gx#stx-pair? _tl1436814473_)
                               (let ((_e1436914476_ (gx#stx-e _tl1436814473_)))
                                 (let ((_hd1437014479_ (##car _e1436914476_))
                                       (_tl1437114481_ (##cdr _e1436914476_)))
                                   (if (gx#stx-null? _tl1437114481_)
                                       (if (gx#stx-null? _tl1436514465_)
                                           (if (gx#stx-null? _tl1434114401_)
                                               ((lambda (_L14484_
                                                         _L14485_
                                                         _L14486_
                                                         _L14487_)
                                                  (if (if (gx#identifier?
                                                           _L14487_)
                                                          (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L14486_)
                           'apply)
                      (if (gx#free-identifier=? _L14487_ _L14484_)
                          (not (gx#free-identifier=? _L14485_ _L14487_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1421814383_ _g1422014386_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1437014479_
                                                _hd1436114455_
                                                _hd1435214431_
                                                _hd1433714391_)
                                               (_g1421814383_ _g1422014386_))
                                           (_g1421814383_ _g1422014386_))
                                       (_g1421814383_ _g1422014386_))))
                               (_g1421814383_ _g1422014386_))
                           (_g1421814383_ _g1422014386_))
                       (_g1421814383_ _g1422014386_))))
               (_g1421814383_ _g1422014386_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1421814383_ _g1422014386_))
                                           (_g1421814383_ _g1422014386_))))
                                   (_g1421814383_ _g1422014386_))
                               (_g1421814383_ _g1422014386_))
                           (_g1421814383_ _g1422014386_))))
                   (_g1421814383_ _g1422014386_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1421814383_
                                                    _g1422014386_))
                                               (_g1421814383_ _g1422014386_))))
                                       (_g1421814383_ _g1422014386_))
                                   (_g1421814383_ _g1422014386_))
                               (_g1421814383_ _g1422014386_))))
                       (_g1421814383_ _g1422014386_))))
               (_g1421814383_ _g1422014386_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1421814383_
                                                    _g1422014386_))
                                               (_g1421814383_ _g1422014386_))))
                                       (_g1421814383_ _g1422014386_))))
                               (_g1421814383_ _g1422014386_))))
                       (_g1421814383_ _g1422014386_)))))
            (let ((_g1421614783_
                   (lambda (_g1422014526_)
                     (if (gx#stx-pair? _g1422014526_)
                         (let ((_e1427214528_ (gx#stx-e _g1422014526_)))
                           (let ((_hd1427314531_ (##car _e1427214528_))
                                 (_tl1427414533_ (##cdr _e1427214528_)))
                             (if (gx#stx-pair/null? _hd1427314531_)
                                 (if (fx>= (gx#stx-length _hd1427314531_) '0)
                                     (let ((_g16026_
                                            (gx#syntax-split-splice
                                             _hd1427314531_
                                             '0)))
                                       (begin
                                         (let ((_g16027_
                                                (values-count _g16026_)))
                                           (if (not (fx= _g16027_ 2))
                                               (error "Context expects 2 values"
                                                      _g16027_)))
                                         (let ((_target1427514536_
                                                (values-ref _g16026_ 0))
                                               (_tl1427714538_
                                                (values-ref _g16026_ 1)))
                                           (letrec ((_loop1427814541_
                                                     (lambda (_hd1427614544_
                                                              _arg1428214546_)
                                                       (if (gx#stx-pair?
                                                            _hd1427614544_)
                                                           (let ((_e1427914549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1427614544_)))
                     (let ((_lp-hd1428014552_ (##car _e1427914549_))
                           (_lp-tl1428114554_ (##cdr _e1427914549_)))
                       (_loop1427814541_
                        _lp-tl1428114554_
                        (cons _lp-hd1428014552_ _arg1428214546_))))
                   (let ((_arg1428314557_ (reverse _arg1428214546_)))
                     (if (gx#stx-pair? _tl1427414533_)
                         (let ((_e1428414560_ (gx#stx-e _tl1427414533_)))
                           (let ((_hd1428514563_ (##car _e1428414560_))
                                 (_tl1428614565_ (##cdr _e1428414560_)))
                             (if (gx#stx-pair? _hd1428514563_)
                                 (let ((_e1428714568_
                                        (gx#stx-e _hd1428514563_)))
                                   (let ((_hd1428814571_ (##car _e1428714568_))
                                         (_tl1428914573_
                                          (##cdr _e1428714568_)))
                                     (if (gx#identifier? _hd1428814571_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1428814571_)
                                             (if (gx#stx-pair? _tl1428914573_)
                                                 (let ((_e1429014576_
                                                        (gx#stx-e
                                                         _tl1428914573_)))
                                                   (let ((_hd1429114579_
                                                          (##car _e1429014576_))
                                                         (_tl1429214581_
                                                          (##cdr _e1429014576_)))
                                                     (if (gx#stx-pair?
                                                          _hd1429114579_)
                                                         (let ((_e1429314584_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1429114579_)))
                   (let ((_hd1429414587_ (##car _e1429314584_))
                         (_tl1429514589_ (##cdr _e1429314584_)))
                     (if (gx#identifier? _hd1429414587_)
                         (if (gx#stx-eq? '%#ref _hd1429414587_)
                             (if (gx#stx-pair? _tl1429514589_)
                                 (let ((_e1429614592_
                                        (gx#stx-e _tl1429514589_)))
                                   (let ((_hd1429714595_ (##car _e1429614592_))
                                         (_tl1429814597_
                                          (##cdr _e1429614592_)))
                                     (if (gx#stx-null? _tl1429814597_)
                                         (if (gx#stx-pair? _tl1429214581_)
                                             (let ((_e1429914600_
                                                    (gx#stx-e _tl1429214581_)))
                                               (let ((_hd1430014603_
                                                      (##car _e1429914600_))
                                                     (_tl1430114605_
                                                      (##cdr _e1429914600_)))
                                                 (if (gx#stx-pair?
                                                      _hd1430014603_)
                                                     (let ((_e1430214608_
                                                            (gx#stx-e
                                                             _hd1430014603_)))
                                                       (let ((_hd1430314611_
                                                              (##car _e1430214608_))
                                                             (_tl1430414613_
                                                              (##cdr _e1430214608_)))
                                                         (if (gx#identifier?
                                                              _hd1430314611_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1430314611_)
                         (if (gx#stx-pair? _tl1430414613_)
                             (let ((_e1430514616_ (gx#stx-e _tl1430414613_)))
                               (let ((_hd1430614619_ (##car _e1430514616_))
                                     (_tl1430714621_ (##cdr _e1430514616_)))
                                 (if (gx#stx-null? _tl1430714621_)
                                     (if (gx#stx-pair/null? _tl1430114605_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1430114605_)
                                                   '1)
                                             (let ((_g16028_
                                                    (gx#syntax-split-splice
                                                     _tl1430114605_
                                                     '1)))
                                               (begin
                                                 (let ((_g16029_
                                                        (values-count
                                                         _g16028_)))
                                                   (if (not (fx= _g16029_ 2))
                                                       (error "Context expects 2 values"
                                                              _g16029_)))
                                                 (let ((_target1430814624_
                                                        (values-ref
                                                         _g16028_
                                                         0))
                                                       (_tl1431014626_
                                                        (values-ref
                                                         _g16028_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1431014626_)
                                                       (let ((_e1431714629_
                                                              (gx#stx-e
                                                               _tl1431014626_)))
                                                         (let ((_hd1431814632_
                                                                (##car _e1431714629_))
                                                               (_tl1431914634_
                                                                (##cdr _e1431714629_)))
                                                           (if (gx#stx-pair?
                                                                _hd1431814632_)
                                                               (let ((_e1432014637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1431814632_)))
                         (let ((_hd1432114640_ (##car _e1432014637_))
                               (_tl1432214642_ (##cdr _e1432014637_)))
                           (if (gx#identifier? _hd1432114640_)
                               (if (gx#stx-eq? '%#ref _hd1432114640_)
                                   (if (gx#stx-pair? _tl1432214642_)
                                       (let ((_e1432314645_
                                              (gx#stx-e _tl1432214642_)))
                                         (let ((_hd1432414648_
                                                (##car _e1432314645_))
                                               (_tl1432514650_
                                                (##cdr _e1432314645_)))
                                           (if (gx#stx-null? _tl1432514650_)
                                               (if (gx#stx-null?
                                                    _tl1431914634_)
                                                   (letrec ((_loop1431114653_
                                                             (lambda (_hd1430914656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1431514658_)
                       (if (gx#stx-pair? _hd1430914656_)
                           (let ((_e1431214661_ (gx#stx-e _hd1430914656_)))
                             (let ((_lp-hd1431314664_ (##car _e1431214661_))
                                   (_lp-tl1431414666_ (##cdr _e1431214661_)))
                               (if (gx#stx-pair? _lp-hd1431314664_)
                                   (let ((_e1432614669_
                                          (gx#stx-e _lp-hd1431314664_)))
                                     (let ((_hd1432714672_
                                            (##car _e1432614669_))
                                           (_tl1432814674_
                                            (##cdr _e1432614669_)))
                                       (if (gx#identifier? _hd1432714672_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1432714672_)
                                               (if (gx#stx-pair?
                                                    _tl1432814674_)
                                                   (let ((_e1432914677_
                                                          (gx#stx-e
                                                           _tl1432814674_)))
                                                     (let ((_hd1433014680_
                                                            (##car _e1432914677_))
                                                           (_tl1433114682_
                                                            (##cdr _e1432914677_)))
                                                       (if (gx#stx-null?
                                                            _tl1433114682_)
                                                           (_loop1431114653_
                                                            _lp-tl1431414666_
                                                            (cons _hd1433014680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1431514658_))
                   (_g1421714523_ _g1422014526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1421714523_
                                                    _g1422014526_))
                                               (_g1421714523_ _g1422014526_))
                                           (_g1421714523_ _g1422014526_))))
                                   (_g1421714523_ _g1422014526_))))
                           (let ((_xarg1431614685_ (reverse _xarg1431514658_)))
                             (if (gx#stx-null? _tl1428614565_)
                                 ((lambda (_L14688_
                                           _L14689_
                                           _L14690_
                                           _L14691_
                                           _L14692_
                                           _L14693_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1473614739_
                                                               _g1473714741_)
                                                        (cons _g1473614739_
                                                              _g1473714741_))
                                                      '()
                                                      _L14693_)))
                                            (if (gx#identifier? _L14692_)
                                                (if (eq? (gxc#identifier-symbol
                                                          _L14691_)
                                                         'apply)
                                                    (if (fx= (gx#stx-length
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1474314746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1474414748_)
                                 (cons _g1474314746_ _g1474414748_))
                               '()
                               _L14693_)))
                     (gx#stx-length
                      (begin
                        '#!void
                        (foldr (lambda (_g1475014753_ _g1475114755_)
                                 (cons _g1475014753_ _g1475114755_))
                               '()
                               _L14689_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr (lambda (_g1475714760_ _g1475814762_)
                                       (cons _g1475714760_ _g1475814762_))
                                     '()
                                     _L14693_))
                            (begin
                              '#!void
                              (foldr (lambda (_g1476414767_ _g1476514769_)
                                       (cons _g1476414767_ _g1476514769_))
                                     '()
                                     _L14689_)))
                    (if (gx#free-identifier=? _L14692_ _L14688_)
                        (not (find (lambda (_g1477114773_)
                                     (gx#free-identifier=?
                                      _g1477114773_
                                      _L14690_))
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1477514778_
                                                     _g1477614780_)
                                              (cons _g1477514778_
                                                    _g1477614780_))
                                            (cons _L14692_ '())
                                            _L14693_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1421714523_ _g1422014526_)))
                                  _hd1432414648_
                                  _xarg1431614685_
                                  _hd1430614619_
                                  _hd1429714595_
                                  _tl1427714538_
                                  _arg1428314557_)
                                 (_g1421714523_ _g1422014526_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1431114653_
                                                      _target1430814624_
                                                      '()))
                                                   (_g1421714523_
                                                    _g1422014526_))
                                               (_g1421714523_ _g1422014526_))))
                                       (_g1421714523_ _g1422014526_))
                                   (_g1421714523_ _g1422014526_))
                               (_g1421714523_ _g1422014526_))))
                       (_g1421714523_ _g1422014526_))))
               (_g1421714523_ _g1422014526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1421714523_ _g1422014526_))
                                         (_g1421714523_ _g1422014526_))
                                     (_g1421714523_ _g1422014526_))))
                             (_g1421714523_ _g1422014526_))
                         (_g1421714523_ _g1422014526_))
                     (_g1421714523_ _g1422014526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1421714523_
                                                      _g1422014526_))))
                                             (_g1421714523_ _g1422014526_))
                                         (_g1421714523_ _g1422014526_))))
                                 (_g1421714523_ _g1422014526_))
                             (_g1421714523_ _g1422014526_))
                         (_g1421714523_ _g1422014526_))))
                 (_g1421714523_ _g1422014526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1421714523_ _g1422014526_))
                                             (_g1421714523_ _g1422014526_))
                                         (_g1421714523_ _g1422014526_))))
                                 (_g1421714523_ _g1422014526_))))
                         (_g1421714523_ _g1422014526_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1427814541_
                                              _target1427514536_
                                              '())))))
                                     (_g1421714523_ _g1422014526_))
                                 (_g1421714523_ _g1422014526_))))
                         (_g1421714523_ _g1422014526_)))))
              (let ((_g1421514977_
                     (lambda (_g1422014786_)
                       (if (gx#stx-pair? _g1422014786_)
                           (let ((_e1422414788_ (gx#stx-e _g1422014786_)))
                             (let ((_hd1422514791_ (##car _e1422414788_))
                                   (_tl1422614793_ (##cdr _e1422414788_)))
                               (if (gx#stx-pair/null? _hd1422514791_)
                                   (if (fx>= (gx#stx-length _hd1422514791_) '0)
                                       (let ((_g16030_
                                              (gx#syntax-split-splice
                                               _hd1422514791_
                                               '0)))
                                         (begin
                                           (let ((_g16031_
                                                  (values-count _g16030_)))
                                             (if (not (fx= _g16031_ 2))
                                                 (error "Context expects 2 values"
                                                        _g16031_)))
                                           (let ((_target1422714796_
                                                  (values-ref _g16030_ 0))
                                                 (_tl1422914798_
                                                  (values-ref _g16030_ 1)))
                                             (if (gx#stx-null? _tl1422914798_)
                                                 (letrec ((_loop1423014801_
                                                           (lambda (_hd1422814804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1423414806_)
                     (if (gx#stx-pair? _hd1422814804_)
                         (let ((_e1423114809_ (gx#stx-e _hd1422814804_)))
                           (let ((_lp-hd1423214812_ (##car _e1423114809_))
                                 (_lp-tl1423314814_ (##cdr _e1423114809_)))
                             (_loop1423014801_
                              _lp-tl1423314814_
                              (cons _lp-hd1423214812_ _arg1423414806_))))
                         (let ((_arg1423514817_ (reverse _arg1423414806_)))
                           (if (gx#stx-pair? _tl1422614793_)
                               (let ((_e1423614820_ (gx#stx-e _tl1422614793_)))
                                 (let ((_hd1423714823_ (##car _e1423614820_))
                                       (_tl1423814825_ (##cdr _e1423614820_)))
                                   (if (gx#stx-pair? _hd1423714823_)
                                       (let ((_e1423914828_
                                              (gx#stx-e _hd1423714823_)))
                                         (let ((_hd1424014831_
                                                (##car _e1423914828_))
                                               (_tl1424114833_
                                                (##cdr _e1423914828_)))
                                           (if (gx#identifier? _hd1424014831_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1424014831_)
                                                   (if (gx#stx-pair?
                                                        _tl1424114833_)
                                                       (let ((_e1424214836_
                                                              (gx#stx-e
                                                               _tl1424114833_)))
                                                         (let ((_hd1424314839_
                                                                (##car _e1424214836_))
                                                               (_tl1424414841_
                                                                (##cdr _e1424214836_)))
                                                           (if (gx#stx-pair?
                                                                _hd1424314839_)
                                                               (let ((_e1424514844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1424314839_)))
                         (let ((_hd1424614847_ (##car _e1424514844_))
                               (_tl1424714849_ (##cdr _e1424514844_)))
                           (if (gx#identifier? _hd1424614847_)
                               (if (gx#stx-eq? '%#ref _hd1424614847_)
                                   (if (gx#stx-pair? _tl1424714849_)
                                       (let ((_e1424814852_
                                              (gx#stx-e _tl1424714849_)))
                                         (let ((_hd1424914855_
                                                (##car _e1424814852_))
                                               (_tl1425014857_
                                                (##cdr _e1424814852_)))
                                           (if (gx#stx-null? _tl1425014857_)
                                               (if (gx#stx-pair/null?
                                                    _tl1424414841_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1424414841_)
                                                             '0)
                                                       (let ((_g16032_
                                                              (gx#syntax-split-splice
                                                               _tl1424414841_
                                                               '0)))
                                                         (begin
                                                           (let ((_g16033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g16032_)))
                     (if (not (fx= _g16033_ 2))
                         (error "Context expects 2 values" _g16033_)))
                   (let ((_target1425114860_ (values-ref _g16032_ 0))
                         (_tl1425314862_ (values-ref _g16032_ 1)))
                     (if (gx#stx-null? _tl1425314862_)
                         (letrec ((_loop1425414865_
                                   (lambda (_hd1425214868_ _xarg1425814870_)
                                     (if (gx#stx-pair? _hd1425214868_)
                                         (let ((_e1425514873_
                                                (gx#stx-e _hd1425214868_)))
                                           (let ((_lp-hd1425614876_
                                                  (##car _e1425514873_))
                                                 (_lp-tl1425714878_
                                                  (##cdr _e1425514873_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1425614876_)
                                                 (let ((_e1426014881_
                                                        (gx#stx-e
                                                         _lp-hd1425614876_)))
                                                   (let ((_hd1426114884_
                                                          (##car _e1426014881_))
                                                         (_tl1426214886_
                                                          (##cdr _e1426014881_)))
                                                     (if (gx#identifier?
                                                          _hd1426114884_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1426114884_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1426214886_)
                         (let ((_e1426314889_ (gx#stx-e _tl1426214886_)))
                           (let ((_hd1426414892_ (##car _e1426314889_))
                                 (_tl1426514894_ (##cdr _e1426314889_)))
                             (if (gx#stx-null? _tl1426514894_)
                                 (_loop1425414865_
                                  _lp-tl1425714878_
                                  (cons _hd1426414892_ _xarg1425814870_))
                                 (_g1421614783_ _g1422014786_))))
                         (_g1421614783_ _g1422014786_))
                     (_g1421614783_ _g1422014786_))
                 (_g1421614783_ _g1422014786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1421614783_
                                                  _g1422014786_))))
                                         (let ((_xarg1425914897_
                                                (reverse _xarg1425814870_)))
                                           (if (gx#stx-null? _tl1423814825_)
                                               ((lambda (_L14900_
                                                         _L14901_
                                                         _L14902_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1493014933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1493114935_)
                              (cons _g1493014933_ _g1493114935_))
                            '()
                            _L14902_)))
                  (if (fx= (gx#stx-length
                            (begin
                              '#!void
                              (foldr (lambda (_g1493714940_ _g1493814942_)
                                       (cons _g1493714940_ _g1493814942_))
                                     '()
                                     _L14902_)))
                           (gx#stx-length
                            (begin
                              '#!void
                              (foldr (lambda (_g1494414947_ _g1494514949_)
                                       (cons _g1494414947_ _g1494514949_))
                                     '()
                                     _L14900_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1495114954_
                                                    _g1495214956_)
                                             (cons _g1495114954_
                                                   _g1495214956_))
                                           '()
                                           _L14902_))
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1495814961_
                                                    _g1495914963_)
                                             (cons _g1495814961_
                                                   _g1495914963_))
                                           '()
                                           _L14900_)))
                          (not (find (lambda (_g1496514967_)
                                       (gx#free-identifier=?
                                        _g1496514967_
                                        _L14901_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1496914972_
                                                       _g1497014974_)
                                                (cons _g1496914972_
                                                      _g1497014974_))
                                              '()
                                              _L14902_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1421614783_ _g1422014786_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1425914897_
                                                _hd1424914855_
                                                _arg1423514817_)
                                               (_g1421614783_
                                                _g1422014786_)))))))
                           (_loop1425414865_ _target1425114860_ '()))
                         (_g1421614783_ _g1422014786_)))))
               (_g1421614783_ _g1422014786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1421614783_
                                                    _g1422014786_))
                                               (_g1421614783_ _g1422014786_))))
                                       (_g1421614783_ _g1422014786_))
                                   (_g1421614783_ _g1422014786_))
                               (_g1421614783_ _g1422014786_))))
                       (_g1421614783_ _g1422014786_))))
               (_g1421614783_ _g1422014786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1421614783_
                                                    _g1422014786_))
                                               (_g1421614783_ _g1422014786_))))
                                       (_g1421614783_ _g1422014786_))))
                               (_g1421614783_ _g1422014786_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1423014801_
                                                    _target1422714796_
                                                    '()))
                                                 (_g1421614783_
                                                  _g1422014786_)))))
                                       (_g1421614783_ _g1422014786_))
                                   (_g1421614783_ _g1422014786_))))
                           (_g1421614783_ _g1422014786_)))))
                (_g1421514977_ _form14214_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form13668_)
      (let ((_g1367213796_
             (lambda (_g1367313793_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1367313793_))))
        (let ((_g1367113913_
               (lambda (_g1367313799_)
                 (if (gx#stx-pair? _g1367313799_)
                     (let ((_e1376213801_ (gx#stx-e _g1367313799_)))
                       (let ((_hd1376313804_ (##car _e1376213801_))
                             (_tl1376413806_ (##cdr _e1376213801_)))
                         (if (gx#stx-pair? _tl1376413806_)
                             (let ((_e1376513809_ (gx#stx-e _tl1376413806_)))
                               (let ((_hd1376613812_ (##car _e1376513809_))
                                     (_tl1376713814_ (##cdr _e1376513809_)))
                                 (if (gx#stx-pair? _hd1376613812_)
                                     (let ((_e1376813817_
                                            (gx#stx-e _hd1376613812_)))
                                       (let ((_hd1376913820_
                                              (##car _e1376813817_))
                                             (_tl1377013822_
                                              (##cdr _e1376813817_)))
                                         (if (gx#identifier? _hd1376913820_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1376913820_)
                                                 (if (gx#stx-pair?
                                                      _tl1377013822_)
                                                     (let ((_e1377113825_
                                                            (gx#stx-e
                                                             _tl1377013822_)))
                                                       (let ((_hd1377213828_
                                                              (##car _e1377113825_))
                                                             (_tl1377313830_
                                                              (##cdr _e1377113825_)))
                                                         (if (gx#stx-pair?
                                                              _hd1377213828_)
                                                             (let ((_e1377413833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1377213828_)))
                       (let ((_hd1377513836_ (##car _e1377413833_))
                             (_tl1377613838_ (##cdr _e1377413833_)))
                         (if (gx#identifier? _hd1377513836_)
                             (if (gx#stx-eq? '%#ref _hd1377513836_)
                                 (if (gx#stx-pair? _tl1377613838_)
                                     (let ((_e1377713841_
                                            (gx#stx-e _tl1377613838_)))
                                       (let ((_hd1377813844_
                                              (##car _e1377713841_))
                                             (_tl1377913846_
                                              (##cdr _e1377713841_)))
                                         (if (gx#stx-null? _tl1377913846_)
                                             (if (gx#stx-pair? _tl1377313830_)
                                                 (let ((_e1378013849_
                                                        (gx#stx-e
                                                         _tl1377313830_)))
                                                   (let ((_hd1378113852_
                                                          (##car _e1378013849_))
                                                         (_tl1378213854_
                                                          (##cdr _e1378013849_)))
                                                     (if (gx#stx-pair?
                                                          _hd1378113852_)
                                                         (let ((_e1378313857_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1378113852_)))
                   (let ((_hd1378413860_ (##car _e1378313857_))
                         (_tl1378513862_ (##cdr _e1378313857_)))
                     (if (gx#identifier? _hd1378413860_)
                         (if (gx#stx-eq? '%#ref _hd1378413860_)
                             (if (gx#stx-pair? _tl1378513862_)
                                 (let ((_e1378613865_
                                        (gx#stx-e _tl1378513862_)))
                                   (let ((_hd1378713868_ (##car _e1378613865_))
                                         (_tl1378813870_
                                          (##cdr _e1378613865_)))
                                     (if (gx#stx-null? _tl1378813870_)
                                         (if (gx#stx-pair? _tl1378213854_)
                                             (let ((_e1378913873_
                                                    (gx#stx-e _tl1378213854_)))
                                               (let ((_hd1379013876_
                                                      (##car _e1378913873_))
                                                     (_tl1379113878_
                                                      (##cdr _e1378913873_)))
                                                 (if (gx#stx-null?
                                                      _tl1379113878_)
                                                     (if (gx#stx-null?
                                                          _tl1376713814_)
                                                         ((lambda (_L13881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L13882_
                           _L13883_)
                    (gxc#identifier-symbol _L13881_))
                  _hd1378713868_
                  _hd1377813844_
                  _hd1376313804_)
                 (_g1367213796_ _g1367313799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1367213796_
                                                      _g1367313799_))))
                                             (_g1367213796_ _g1367313799_))
                                         (_g1367213796_ _g1367313799_))))
                                 (_g1367213796_ _g1367313799_))
                             (_g1367213796_ _g1367313799_))
                         (_g1367213796_ _g1367313799_))))
                 (_g1367213796_ _g1367313799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1367213796_ _g1367313799_))
                                             (_g1367213796_ _g1367313799_))))
                                     (_g1367213796_ _g1367313799_))
                                 (_g1367213796_ _g1367313799_))
                             (_g1367213796_ _g1367313799_))))
                     (_g1367213796_ _g1367313799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1367213796_
                                                      _g1367313799_))
                                                 (_g1367213796_ _g1367313799_))
                                             (_g1367213796_ _g1367313799_))))
                                     (_g1367213796_ _g1367313799_))))
                             (_g1367213796_ _g1367313799_))))
                     (_g1367213796_ _g1367313799_)))))
          (let ((_g1367014049_
                 (lambda (_g1367313916_)
                   (if (gx#stx-pair? _g1367313916_)
                       (let ((_e1372313918_ (gx#stx-e _g1367313916_)))
                         (let ((_hd1372413921_ (##car _e1372313918_))
                               (_tl1372513923_ (##cdr _e1372313918_)))
                           (if (gx#stx-pair/null? _hd1372413921_)
                               (if (fx>= (gx#stx-length _hd1372413921_) '0)
                                   (let ((_g16034_
                                          (gx#syntax-split-splice
                                           _hd1372413921_
                                           '0)))
                                     (begin
                                       (let ((_g16035_
                                              (values-count _g16034_)))
                                         (if (not (fx= _g16035_ 2))
                                             (error "Context expects 2 values"
                                                    _g16035_)))
                                       (let ((_target1372613926_
                                              (values-ref _g16034_ 0))
                                             (_tl1372813928_
                                              (values-ref _g16034_ 1)))
                                         (letrec ((_loop1372913931_
                                                   (lambda (_hd1372713934_
                                                            _arg1373313936_)
                                                     (if (gx#stx-pair?
                                                          _hd1372713934_)
                                                         (let ((_e1373013939_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1372713934_)))
                   (let ((_lp-hd1373113942_ (##car _e1373013939_))
                         (_lp-tl1373213944_ (##cdr _e1373013939_)))
                     (_loop1372913931_
                      _lp-tl1373213944_
                      (cons _lp-hd1373113942_ _arg1373313936_))))
                 (let ((_arg1373413947_ (reverse _arg1373313936_)))
                   (if (gx#stx-pair? _tl1372513923_)
                       (let ((_e1373513950_ (gx#stx-e _tl1372513923_)))
                         (let ((_hd1373613953_ (##car _e1373513950_))
                               (_tl1373713955_ (##cdr _e1373513950_)))
                           (if (gx#stx-pair? _hd1373613953_)
                               (let ((_e1373813958_ (gx#stx-e _hd1373613953_)))
                                 (let ((_hd1373913961_ (##car _e1373813958_))
                                       (_tl1374013963_ (##cdr _e1373813958_)))
                                   (if (gx#identifier? _hd1373913961_)
                                       (if (gx#stx-eq? '%#call _hd1373913961_)
                                           (if (gx#stx-pair? _tl1374013963_)
                                               (let ((_e1374113966_
                                                      (gx#stx-e
                                                       _tl1374013963_)))
                                                 (let ((_hd1374213969_
                                                        (##car _e1374113966_))
                                                       (_tl1374313971_
                                                        (##cdr _e1374113966_)))
                                                   (if (gx#stx-pair?
                                                        _hd1374213969_)
                                                       (let ((_e1374413974_
                                                              (gx#stx-e
                                                               _hd1374213969_)))
                                                         (let ((_hd1374513977_
                                                                (##car _e1374413974_))
                                                               (_tl1374613979_
                                                                (##cdr _e1374413974_)))
                                                           (if (gx#identifier?
                                                                _hd1374513977_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1374513977_)
                           (if (gx#stx-pair? _tl1374613979_)
                               (let ((_e1374713982_ (gx#stx-e _tl1374613979_)))
                                 (let ((_hd1374813985_ (##car _e1374713982_))
                                       (_tl1374913987_ (##cdr _e1374713982_)))
                                   (if (gx#stx-null? _tl1374913987_)
                                       (if (gx#stx-pair? _tl1374313971_)
                                           (let ((_e1375013990_
                                                  (gx#stx-e _tl1374313971_)))
                                             (let ((_hd1375113993_
                                                    (##car _e1375013990_))
                                                   (_tl1375213995_
                                                    (##cdr _e1375013990_)))
                                               (if (gx#stx-pair?
                                                    _hd1375113993_)
                                                   (let ((_e1375313998_
                                                          (gx#stx-e
                                                           _hd1375113993_)))
                                                     (let ((_hd1375414001_
                                                            (##car _e1375313998_))
                                                           (_tl1375514003_
                                                            (##cdr _e1375313998_)))
                                                       (if (gx#identifier?
                                                            _hd1375414001_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1375414001_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1375514003_)
                           (let ((_e1375614006_ (gx#stx-e _tl1375514003_)))
                             (let ((_hd1375714009_ (##car _e1375614006_))
                                   (_tl1375814011_ (##cdr _e1375614006_)))
                               (if (gx#stx-null? _tl1375814011_)
                                   (if (gx#stx-null? _tl1373713955_)
                                       ((lambda (_L14014_
                                                 _L14015_
                                                 _L14016_
                                                 _L14017_)
                                          (gxc#identifier-symbol _L14014_))
                                        _hd1375714009_
                                        _hd1374813985_
                                        _tl1372813928_
                                        _arg1373413947_)
                                       (_g1367113913_ _g1367313916_))
                                   (_g1367113913_ _g1367313916_))))
                           (_g1367113913_ _g1367313916_))
                       (_g1367113913_ _g1367313916_))
                   (_g1367113913_ _g1367313916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1367113913_
                                                    _g1367313916_))))
                                           (_g1367113913_ _g1367313916_))
                                       (_g1367113913_ _g1367313916_))))
                               (_g1367113913_ _g1367313916_))
                           (_g1367113913_ _g1367313916_))
                       (_g1367113913_ _g1367313916_))))
               (_g1367113913_ _g1367313916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1367113913_ _g1367313916_))
                                           (_g1367113913_ _g1367313916_))
                                       (_g1367113913_ _g1367313916_))))
                               (_g1367113913_ _g1367313916_))))
                       (_g1367113913_ _g1367313916_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1372913931_
                                            _target1372613926_
                                            '())))))
                                   (_g1367113913_ _g1367313916_))
                               (_g1367113913_ _g1367313916_))))
                       (_g1367113913_ _g1367313916_)))))
            (let ((_g1366914211_
                   (lambda (_g1367314052_)
                     (if (gx#stx-pair? _g1367314052_)
                         (let ((_e1367714054_ (gx#stx-e _g1367314052_)))
                           (let ((_hd1367814057_ (##car _e1367714054_))
                                 (_tl1367914059_ (##cdr _e1367714054_)))
                             (if (gx#stx-pair/null? _hd1367814057_)
                                 (if (fx>= (gx#stx-length _hd1367814057_) '0)
                                     (let ((_g16036_
                                            (gx#syntax-split-splice
                                             _hd1367814057_
                                             '0)))
                                       (begin
                                         (let ((_g16037_
                                                (values-count _g16036_)))
                                           (if (not (fx= _g16037_ 2))
                                               (error "Context expects 2 values"
                                                      _g16037_)))
                                         (let ((_target1368014062_
                                                (values-ref _g16036_ 0))
                                               (_tl1368214064_
                                                (values-ref _g16036_ 1)))
                                           (if (gx#stx-null? _tl1368214064_)
                                               (letrec ((_loop1368314067_
                                                         (lambda (_hd1368114070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1368714072_)
                   (if (gx#stx-pair? _hd1368114070_)
                       (let ((_e1368414075_ (gx#stx-e _hd1368114070_)))
                         (let ((_lp-hd1368514078_ (##car _e1368414075_))
                               (_lp-tl1368614080_ (##cdr _e1368414075_)))
                           (_loop1368314067_
                            _lp-tl1368614080_
                            (cons _lp-hd1368514078_ _arg1368714072_))))
                       (let ((_arg1368814083_ (reverse _arg1368714072_)))
                         (if (gx#stx-pair? _tl1367914059_)
                             (let ((_e1368914086_ (gx#stx-e _tl1367914059_)))
                               (let ((_hd1369014089_ (##car _e1368914086_))
                                     (_tl1369114091_ (##cdr _e1368914086_)))
                                 (if (gx#stx-pair? _hd1369014089_)
                                     (let ((_e1369214094_
                                            (gx#stx-e _hd1369014089_)))
                                       (let ((_hd1369314097_
                                              (##car _e1369214094_))
                                             (_tl1369414099_
                                              (##cdr _e1369214094_)))
                                         (if (gx#identifier? _hd1369314097_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1369314097_)
                                                 (if (gx#stx-pair?
                                                      _tl1369414099_)
                                                     (let ((_e1369514102_
                                                            (gx#stx-e
                                                             _tl1369414099_)))
                                                       (let ((_hd1369614105_
                                                              (##car _e1369514102_))
                                                             (_tl1369714107_
                                                              (##cdr _e1369514102_)))
                                                         (if (gx#stx-pair?
                                                              _hd1369614105_)
                                                             (let ((_e1369814110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1369614105_)))
                       (let ((_hd1369914113_ (##car _e1369814110_))
                             (_tl1370014115_ (##cdr _e1369814110_)))
                         (if (gx#identifier? _hd1369914113_)
                             (if (gx#stx-eq? '%#ref _hd1369914113_)
                                 (if (gx#stx-pair? _tl1370014115_)
                                     (let ((_e1370114118_
                                            (gx#stx-e _tl1370014115_)))
                                       (let ((_hd1370214121_
                                              (##car _e1370114118_))
                                             (_tl1370314123_
                                              (##cdr _e1370114118_)))
                                         (if (gx#stx-null? _tl1370314123_)
                                             (if (gx#stx-pair/null?
                                                  _tl1369714107_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1369714107_)
                                                           '0)
                                                     (let ((_g16038_
                                                            (gx#syntax-split-splice
                                                             _tl1369714107_
                                                             '0)))
                                                       (begin
                                                         (let ((_g16039_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g16038_)))
                   (if (not (fx= _g16039_ 2))
                       (error "Context expects 2 values" _g16039_)))
                 (let ((_target1370414126_ (values-ref _g16038_ 0))
                       (_tl1370614128_ (values-ref _g16038_ 1)))
                   (if (gx#stx-null? _tl1370614128_)
                       (letrec ((_loop1370714131_
                                 (lambda (_hd1370514134_ _xarg1371114136_)
                                   (if (gx#stx-pair? _hd1370514134_)
                                       (let ((_e1370814139_
                                              (gx#stx-e _hd1370514134_)))
                                         (let ((_lp-hd1370914142_
                                                (##car _e1370814139_))
                                               (_lp-tl1371014144_
                                                (##cdr _e1370814139_)))
                                           (if (gx#stx-pair? _lp-hd1370914142_)
                                               (let ((_e1371314147_
                                                      (gx#stx-e
                                                       _lp-hd1370914142_)))
                                                 (let ((_hd1371414150_
                                                        (##car _e1371314147_))
                                                       (_tl1371514152_
                                                        (##cdr _e1371314147_)))
                                                   (if (gx#identifier?
                                                        _hd1371414150_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1371414150_)
                                                           (if (gx#stx-pair?
                                                                _tl1371514152_)
                                                               (let ((_e1371614155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1371514152_)))
                         (let ((_hd1371714158_ (##car _e1371614155_))
                               (_tl1371814160_ (##cdr _e1371614155_)))
                           (if (gx#stx-null? _tl1371814160_)
                               (_loop1370714131_
                                _lp-tl1371014144_
                                (cons _hd1371714158_ _xarg1371114136_))
                               (_g1367014049_ _g1367314052_))))
                       (_g1367014049_ _g1367314052_))
                   (_g1367014049_ _g1367314052_))
               (_g1367014049_ _g1367314052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1367014049_ _g1367314052_))))
                                       (let ((_xarg1371214163_
                                              (reverse _xarg1371114136_)))
                                         (if (gx#stx-null? _tl1369114091_)
                                             ((lambda (_L14166_
                                                       _L14167_
                                                       _L14168_)
                                                (if (fx= (gx#stx-length
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g1419614199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1419714201_)
                             (cons _g1419614199_ _g1419714201_))
                           '()
                           _L14168_)))
                 (gx#stx-length
                  (begin
                    '#!void
                    (foldr (lambda (_g1420314206_ _g1420414208_)
                             (cons _g1420314206_ _g1420414208_))
                           '()
                           _L14166_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#identifier-symbol
                                                     _L14167_)
                                                    (_g1367014049_
                                                     _g1367314052_)))
                                              _xarg1371214163_
                                              _hd1370214121_
                                              _arg1368814083_)
                                             (_g1367014049_
                                              _g1367314052_)))))))
                         (_loop1370714131_ _target1370414126_ '()))
                       (_g1367014049_ _g1367314052_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1367014049_
                                                      _g1367314052_))
                                                 (_g1367014049_ _g1367314052_))
                                             (_g1367014049_ _g1367314052_))))
                                     (_g1367014049_ _g1367314052_))
                                 (_g1367014049_ _g1367314052_))
                             (_g1367014049_ _g1367314052_))))
                     (_g1367014049_ _g1367314052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1367014049_
                                                      _g1367314052_))
                                                 (_g1367014049_ _g1367314052_))
                                             (_g1367014049_ _g1367314052_))))
                                     (_g1367014049_ _g1367314052_))))
                             (_g1367014049_ _g1367314052_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1368314067_
                                                  _target1368014062_
                                                  '()))
                                               (_g1367014049_
                                                _g1367314052_)))))
                                     (_g1367014049_ _g1367314052_))
                                 (_g1367014049_ _g1367314052_))))
                         (_g1367014049_ _g1367314052_)))))
              (_g1366914211_ _form13668_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form13511_)
      (let ((_g1351513546_
             (lambda (_g1351613543_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1351613543_))))
        (let ((_g1351413559_
               (lambda (_g1351613549_)
                 ((lambda (_L13551_) (cons '0 '())) _g1351613549_))))
          (let ((_g1351313608_
                 (lambda (_g1351613562_)
                   (if (gx#stx-pair/null? _g1351613562_)
                       (if (fx>= (gx#stx-length _g1351613562_) '0)
                           (let ((_g16040_
                                  (gx#syntax-split-splice _g1351613562_ '0)))
                             (begin
                               (let ((_g16041_ (values-count _g16040_)))
                                 (if (not (fx= _g16041_ 2))
                                     (error "Context expects 2 values"
                                            _g16041_)))
                               (let ((_target1353213564_
                                      (values-ref _g16040_ 0))
                                     (_tl1353413566_ (values-ref _g16040_ 1)))
                                 (letrec ((_loop1353513569_
                                           (lambda (_hd1353313572_
                                                    _arg1353913574_)
                                             (if (gx#stx-pair? _hd1353313572_)
                                                 (let ((_e1353613577_
                                                        (gx#stx-e
                                                         _hd1353313572_)))
                                                   (let ((_lp-hd1353713580_
                                                          (##car _e1353613577_))
                                                         (_lp-tl1353813582_
                                                          (##cdr _e1353613577_)))
                                                     (_loop1353513569_
                                                      _lp-tl1353813582_
                                                      (cons _lp-hd1353713580_
                                                            _arg1353913574_))))
                                                 (let ((_arg1354013585_
                                                        (reverse _arg1353913574_)))
                                                   ((lambda (_L13588_ _L13589_)
                                                      (cons (gx#stx-length
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1360013603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1360113605_)
                                (cons _g1360013603_ _g1360113605_))
                              '()
                              _L13589_)))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1353413566_
                                                    _arg1354013585_))))))
                                   (_loop1353513569_
                                    _target1353213564_
                                    '())))))
                           (_g1351413559_ _g1351613562_))
                       (_g1351413559_ _g1351613562_)))))
            (let ((_g1351213665_
                   (lambda (_g1351613611_)
                     (if (gx#stx-pair? _g1351613611_)
                         (let ((_e1351813613_ (gx#stx-e _g1351613611_)))
                           (let ((_hd1351913616_ (##car _e1351813613_))
                                 (_tl1352013618_ (##cdr _e1351813613_)))
                             (if (gx#stx-pair/null? _hd1351913616_)
                                 (if (fx>= (gx#stx-length _hd1351913616_) '0)
                                     (let ((_g16042_
                                            (gx#syntax-split-splice
                                             _hd1351913616_
                                             '0)))
                                       (begin
                                         (let ((_g16043_
                                                (values-count _g16042_)))
                                           (if (not (fx= _g16043_ 2))
                                               (error "Context expects 2 values"
                                                      _g16043_)))
                                         (let ((_target1352113621_
                                                (values-ref _g16042_ 0))
                                               (_tl1352313623_
                                                (values-ref _g16042_ 1)))
                                           (if (gx#stx-null? _tl1352313623_)
                                               (letrec ((_loop1352413626_
                                                         (lambda (_hd1352213629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1352813631_)
                   (if (gx#stx-pair? _hd1352213629_)
                       (let ((_e1352513634_ (gx#stx-e _hd1352213629_)))
                         (let ((_lp-hd1352613637_ (##car _e1352513634_))
                               (_lp-tl1352713639_ (##cdr _e1352513634_)))
                           (_loop1352413626_
                            _lp-tl1352713639_
                            (cons _lp-hd1352613637_ _arg1352813631_))))
                       (let ((_arg1352913642_ (reverse _arg1352813631_)))
                         ((lambda (_L13645_)
                            (gx#stx-length
                             (begin
                               '#!void
                               (foldr (lambda (_g1365713660_ _g1365813662_)
                                        (cons _g1365713660_ _g1365813662_))
                                      '()
                                      _L13645_))))
                          _arg1352913642_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1352413626_
                                                  _target1352113621_
                                                  '()))
                                               (_g1351313608_
                                                _g1351613611_)))))
                                     (_g1351313608_ _g1351613611_))
                                 (_g1351313608_ _g1351613611_))))
                         (_g1351313608_ _g1351613611_)))))
              (_g1351213665_ _form13511_)))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx12784_)
      (let ((_lambda-expr?12786_
             (lambda (_expr13464_)
               (let ((_g1346713477_
                      (lambda (_g1346813474_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1346813474_))))
                 (let ((_g1346613484_
                        (lambda (_g1346813480_) ((lambda () '#f)))))
                   (let ((_g1346513508_
                          (lambda (_g1346813487_)
                            (if (gx#stx-pair? _g1346813487_)
                                (let ((_e1347013489_ (gx#stx-e _g1346813487_)))
                                  (let ((_hd1347113492_ (##car _e1347013489_))
                                        (_tl1347213494_ (##cdr _e1347013489_)))
                                    (if (gx#identifier? _hd1347113492_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd1347113492_)
                                            ((lambda (_L13497_) '#t)
                                             _tl1347213494_)
                                            (_g1346613484_ _g1346813487_))
                                        (_g1346613484_ _g1346813487_))))
                                (_g1346613484_ _g1346813487_)))))
                     (_g1346513508_ _expr13464_)))))))
        (let ((_case-lambda-expr?12787_
               (lambda (_expr13417_)
                 (let ((_g1342013430_
                        (lambda (_g1342113427_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1342113427_))))
                   (let ((_g1341913437_
                          (lambda (_g1342113433_) ((lambda () '#f)))))
                     (let ((_g1341813461_
                            (lambda (_g1342113440_)
                              (if (gx#stx-pair? _g1342113440_)
                                  (let ((_e1342313442_
                                         (gx#stx-e _g1342113440_)))
                                    (let ((_hd1342413445_
                                           (##car _e1342313442_))
                                          (_tl1342513447_
                                           (##cdr _e1342313442_)))
                                      (if (gx#identifier? _hd1342413445_)
                                          (if (gx#stx-eq?
                                               '%#case-lambda
                                               _hd1342413445_)
                                              ((lambda (_L13450_) '#t)
                                               _tl1342513447_)
                                              (_g1341913437_ _g1342113440_))
                                          (_g1341913437_ _g1342113440_))))
                                  (_g1341913437_ _g1342113440_)))))
                       (_g1341813461_ _expr13417_)))))))
          (let ((_lift-case-lambda-clauses12788_
                 (lambda (_id13178_ _clauses13179_)
                   ((letrec ((_lp13181_
                              (lambda (_rest13183_
                                       _ids13184_
                                       _impls13185_
                                       _clauses13186_)
                                (let ((_rest1318713195_ _rest13183_))
                                  (let ((_E1319013199_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest1318713195_))))
                                    (let ((_else1318913203_
                                           (lambda ()
                                             (values (reverse _ids13184_)
                                                     (reverse _impls13185_)
                                                     (reverse _clauses13186_)))))
                                      (let ((_K1319113405_
                                             (lambda (_rest13206_
                                                      _clause13207_)
                                               (if (gxc#dispatch-lambda-form?
                                                    _clause13207_)
                                                   (_lp13181_
                                                    _rest13206_
                                                    _ids13184_
                                                    _impls13185_
                                                    (cons _clause13207_
                                                          _clauses13186_))
                                                   (let ((_g1320913220_
                                                          (lambda (_g1321013217_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1321013217_))))
                                                     (let ((_g1320813402_
                                                            (lambda (_g1321013223_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1321013223_)
                          (let ((_e1321313225_ (gx#stx-e _g1321013223_)))
                            (let ((_hd1321413228_ (##car _e1321313225_))
                                  (_tl1321513230_ (##cdr _e1321313225_)))
                              ((lambda (_L13233_ _L13234_)
                                 (let ((_id13251_
                                        (make-symbol
                                         (gx#stx-e _id13178_)
                                         '"__"
                                         (length _clauses13186_))))
                                   (let ((_impl13253_
                                          (gxc#xform-wrap-source
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#lambda)
                                                 (cons _L13234_ _L13233_))
                                           _stx12784_)))
                                     (let ((_clause13399_
                                            (let ((_g1325713285_
                                                   (lambda (_g1325813282_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1325813282_))))
                                              (let ((_g1325613300_
                                                     (lambda (_g1325813288_)
                                                       ((lambda (_L13290_)
                                                          (cons _L13234_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id13251_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#ref)
                                                             (cons _L13290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx12784_)
                              '())))
                _g1325813288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1325513349_
                                                       (lambda (_g1325813303_)
                                                         (if (gx#stx-pair/null?
                                                              _g1325813303_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1325813303_)
                               '0)
                         (let ((_g16046_
                                (gx#syntax-split-splice _g1325813303_ '0)))
                           (begin
                             (let ((_g16047_ (values-count _g16046_)))
                               (if (not (fx= _g16047_ 2))
                                   (error "Context expects 2 values"
                                          _g16047_)))
                             (let ((_target1327113305_ (values-ref _g16046_ 0))
                                   (_tl1327313307_ (values-ref _g16046_ 1)))
                               (letrec ((_loop1327413310_
                                         (lambda (_hd1327213313_
                                                  _arg1327813315_)
                                           (if (gx#stx-pair? _hd1327213313_)
                                               (let ((_e1327513318_
                                                      (gx#stx-e
                                                       _hd1327213313_)))
                                                 (let ((_lp-hd1327613321_
                                                        (##car _e1327513318_))
                                                       (_lp-tl1327713323_
                                                        (##cdr _e1327513318_)))
                                                   (_loop1327413310_
                                                    _lp-tl1327713323_
                                                    (cons _lp-hd1327613321_
                                                          _arg1327813315_))))
                                               (let ((_arg1327913326_
                                                      (reverse _arg1327813315_)))
                                                 ((lambda (_L13329_ _L13330_)
                                                    (cons _L13234_
                                                          (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref (cons 'apply '()))
                                     (cons (cons '%#ref (cons _id13251_ '()))
                                           (foldr cons
                                                  (cons (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L13329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1334113344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1334213346_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g1334113344_ '()))
                           _g1334213346_))
                   '()
                   _L13330_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _stx12784_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1327313307_
                                                  _arg1327913326_))))))
                                 (_loop1327413310_ _target1327113305_ '())))))
                         (_g1325613300_ _g1325813303_))
                     (_g1325613300_ _g1325813303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1325413396_
                                                         (lambda (_g1325813352_)
                                                           (if (gx#stx-pair/null?
                                                                _g1325813352_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1325813352_)
                                 '0)
                           (let ((_g16048_
                                  (gx#syntax-split-splice _g1325813352_ '0)))
                             (begin
                               (let ((_g16049_ (values-count _g16048_)))
                                 (if (not (fx= _g16049_ 2))
                                     (error "Context expects 2 values"
                                            _g16049_)))
                               (let ((_target1326013354_
                                      (values-ref _g16048_ 0))
                                     (_tl1326213356_ (values-ref _g16048_ 1)))
                                 (if (gx#stx-null? _tl1326213356_)
                                     (letrec ((_loop1326313359_
                                               (lambda (_hd1326113362_
                                                        _arg1326713364_)
                                                 (if (gx#stx-pair?
                                                      _hd1326113362_)
                                                     (let ((_e1326413367_
                                                            (gx#stx-e
                                                             _hd1326113362_)))
                                                       (let ((_lp-hd1326513370_
                                                              (##car _e1326413367_))
                                                             (_lp-tl1326613372_
                                                              (##cdr _e1326413367_)))
                                                         (_loop1326313359_
                                                          _lp-tl1326613372_
                                                          (cons _lp-hd1326513370_
                                                                _arg1326713364_))))
                                                     (let ((_arg1326813375_
                                                            (reverse _arg1326713364_)))
                                                       ((lambda (_L13378_)
                                                          (cons _L13234_
                                                                (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '%#call
                                     (cons (cons '%#ref (cons _id13251_ '()))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1338813391_
                                                             _g1338913393_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1338813391_ '()))
                    _g1338913393_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L13378_))))
                               _stx12784_)
                              '())))
                _arg1326813375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1326313359_
                                        _target1326013354_
                                        '()))
                                     (_g1325513349_ _g1325813352_)))))
                           (_g1325513349_ _g1325813352_))
                       (_g1325513349_ _g1325813352_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1325413396_
                                                     _L13234_)))))))
                                       (let ()
                                         (_lp13181_
                                          _rest13206_
                                          (cons _id13251_ _ids13184_)
                                          (cons _impl13253_ _impls13185_)
                                          (cons _clause13399_
                                                _clauses13186_)))))))
                               _tl1321513230_
                               _hd1321413228_)))
                          (_g1320913220_ _g1321013223_)))))
               (_g1320813402_ _clause13207_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest1318713195_)
                                            (let ((_hd1319213408_
                                                   (##car _rest1318713195_))
                                                  (_tl1319313410_
                                                   (##cdr _rest1318713195_)))
                                              (let ((_clause13413_
                                                     _hd1319213408_))
                                                (let ((_rest13415_
                                                       _tl1319313410_))
                                                  (_K1319113405_
                                                   _rest13415_
                                                   _clause13413_))))
                                            (_else1318913203_)))))))))
                      _lp13181_)
                    _clauses13179_
                    '()
                    '()
                    '()))))
            (let ((_case-lambda-clause-def12789_
                   (lambda (_id13175_ _impl13176_)
                     (gxc#xform-wrap-source
                      (cons '%#define-values
                            (cons (cons _id13175_ '()) (cons _impl13176_ '())))
                      _stx12784_))))
              (let ((_g1279412868_
                     (lambda (_g1279512865_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1279512865_))))
                (let ((_g1279312875_
                       (lambda (_g1279512871_) ((lambda () _stx12784_)))))
                  (let ((_g1279213011_
                         (lambda (_g1279512878_)
                           (if (gx#stx-pair? _g1279512878_)
                               (let ((_e1283112880_ (gx#stx-e _g1279512878_)))
                                 (let ((_hd1283212883_ (##car _e1283112880_))
                                       (_tl1283312885_ (##cdr _e1283112880_)))
                                   (if (gx#stx-pair? _tl1283312885_)
                                       (let ((_e1283412888_
                                              (gx#stx-e _tl1283312885_)))
                                         (let ((_hd1283512891_
                                                (##car _e1283412888_))
                                               (_tl1283612893_
                                                (##cdr _e1283412888_)))
                                           (if (gx#stx-pair? _hd1283512891_)
                                               (let ((_e1283712896_
                                                      (gx#stx-e
                                                       _hd1283512891_)))
                                                 (let ((_hd1283812899_
                                                        (##car _e1283712896_))
                                                       (_tl1283912901_
                                                        (##cdr _e1283712896_)))
                                                   (if (gx#stx-null?
                                                        _tl1283912901_)
                                                       (if (gx#stx-pair?
                                                            _tl1283612893_)
                                                           (let ((_e1284012904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1283612893_)))
                     (let ((_hd1284112907_ (##car _e1284012904_))
                           (_tl1284212909_ (##cdr _e1284012904_)))
                       (if (gx#stx-pair? _hd1284112907_)
                           (let ((_e1284312912_ (gx#stx-e _hd1284112907_)))
                             (let ((_hd1284412915_ (##car _e1284312912_))
                                   (_tl1284512917_ (##cdr _e1284312912_)))
                               (if (gx#identifier? _hd1284412915_)
                                   (if (gx#stx-eq?
                                        '%#let-values
                                        _hd1284412915_)
                                       (if (gx#stx-pair? _tl1284512917_)
                                           (let ((_e1284612920_
                                                  (gx#stx-e _tl1284512917_)))
                                             (let ((_hd1284712923_
                                                    (##car _e1284612920_))
                                                   (_tl1284812925_
                                                    (##cdr _e1284612920_)))
                                               (if (gx#stx-pair?
                                                    _hd1284712923_)
                                                   (let ((_e1284912928_
                                                          (gx#stx-e
                                                           _hd1284712923_)))
                                                     (let ((_hd1285012931_
                                                            (##car _e1284912928_))
                                                           (_tl1285112933_
                                                            (##cdr _e1284912928_)))
                                                       (if (gx#stx-pair?
                                                            _hd1285012931_)
                                                           (let ((_e1285212936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1285012931_)))
                     (let ((_hd1285312939_ (##car _e1285212936_))
                           (_tl1285412941_ (##cdr _e1285212936_)))
                       (if (gx#stx-pair? _hd1285312939_)
                           (let ((_e1285512944_ (gx#stx-e _hd1285312939_)))
                             (let ((_hd1285612947_ (##car _e1285512944_))
                                   (_tl1285712949_ (##cdr _e1285512944_)))
                               (if (gx#stx-null? _tl1285712949_)
                                   (if (gx#stx-pair? _tl1285412941_)
                                       (let ((_e1285812952_
                                              (gx#stx-e _tl1285412941_)))
                                         (let ((_hd1285912955_
                                                (##car _e1285812952_))
                                               (_tl1286012957_
                                                (##cdr _e1285812952_)))
                                           (if (gx#stx-null? _tl1286012957_)
                                               (if (gx#stx-null?
                                                    _tl1285112933_)
                                                   (if (gx#stx-pair?
                                                        _tl1284812925_)
                                                       (let ((_e1286112960_
                                                              (gx#stx-e
                                                               _tl1284812925_)))
                                                         (let ((_hd1286212963_
                                                                (##car _e1286112960_))
                                                               (_tl1286312965_
                                                                (##cdr _e1286112960_)))
                                                           (if (gx#stx-null?
                                                                _tl1286312965_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1284212909_)
                           ((lambda (_L12968_ _L12969_ _L12970_ _L12971_)
                              (if (if (gx#identifier? _L12971_)
                                      (if (gx#identifier? _L12970_)
                                          (if (_lambda-expr?12786_ _L12969_)
                                              (_case-lambda-expr?12787_
                                               _L12968_)
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_lambda-id13006_
                                         (make-symbol
                                          (gx#stx-e _L12971_)
                                          '"__"
                                          (gx#stx-e _L12970_))))
                                    (let ((_new-case-lambda-expr13008_
                                           (gxc#apply-expression-subst
                                            _L12968_
                                            _L12970_
                                            _lambda-id13006_)))
                                      (let ()
                                        (begin
                                          (gxc#verbose
                                           '"lift opt-lambda dispatch "
                                           (gxc#identifier-symbol _L12971_)
                                           '" => "
                                           _lambda-id13006_)
                                          (gx#core-bind-runtime!__0
                                           _lambda-id13006_)
                                          (gxc#xform-wrap-source
                                           (cons '%#begin
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#define-values
                                                              (cons (cons _lambda-id13006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons _L12969_ '())))
                _stx12784_)
               (cons (gxc#lift-top-lambda-define-values%
                      (gxc#xform-wrap-source
                       (cons '%#define-values
                             (cons (cons _L12971_ '())
                                   (cons _new-case-lambda-expr13008_ '())))
                       _stx12784_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx12784_)))))
                                  (_g1279312875_ _g1279512878_)))
                            _hd1286212963_
                            _hd1285912955_
                            _hd1285612947_
                            _hd1283812899_)
                           (_g1279312875_ _g1279512878_))
                       (_g1279312875_ _g1279512878_))))
               (_g1279312875_ _g1279512878_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1279312875_
                                                    _g1279512878_))
                                               (_g1279312875_ _g1279512878_))))
                                       (_g1279312875_ _g1279512878_))
                                   (_g1279312875_ _g1279512878_))))
                           (_g1279312875_ _g1279512878_))))
                   (_g1279312875_ _g1279512878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1279312875_
                                                    _g1279512878_))))
                                           (_g1279312875_ _g1279512878_))
                                       (_g1279312875_ _g1279512878_))
                                   (_g1279312875_ _g1279512878_))))
                           (_g1279312875_ _g1279512878_))))
                   (_g1279312875_ _g1279512878_))
               (_g1279312875_ _g1279512878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1279312875_ _g1279512878_))))
                                       (_g1279312875_ _g1279512878_))))
                               (_g1279312875_ _g1279512878_)))))
                    (let ((_g1279113108_
                           (lambda (_g1279513014_)
                             (if (gx#stx-pair? _g1279513014_)
                                 (let ((_e1281513016_
                                        (gx#stx-e _g1279513014_)))
                                   (let ((_hd1281613019_ (##car _e1281513016_))
                                         (_tl1281713021_
                                          (##cdr _e1281513016_)))
                                     (if (gx#stx-pair? _tl1281713021_)
                                         (let ((_e1281813024_
                                                (gx#stx-e _tl1281713021_)))
                                           (let ((_hd1281913027_
                                                  (##car _e1281813024_))
                                                 (_tl1282013029_
                                                  (##cdr _e1281813024_)))
                                             (if (gx#stx-pair? _hd1281913027_)
                                                 (let ((_e1282113032_
                                                        (gx#stx-e
                                                         _hd1281913027_)))
                                                   (let ((_hd1282213035_
                                                          (##car _e1282113032_))
                                                         (_tl1282313037_
                                                          (##cdr _e1282113032_)))
                                                     (if (gx#stx-null?
                                                          _tl1282313037_)
                                                         (if (gx#stx-pair?
                                                              _tl1282013029_)
                                                             (let ((_e1282413040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1282013029_)))
                       (let ((_hd1282513043_ (##car _e1282413040_))
                             (_tl1282613045_ (##cdr _e1282413040_)))
                         (if (gx#stx-null? _tl1282613045_)
                             ((lambda (_L13048_ _L13049_)
                                (if (if (gx#identifier? _L13049_)
                                        (_case-lambda-expr?12787_ _L13048_)
                                        '#f)
                                    (let ((_g1306513075_
                                           (lambda (_g1306613072_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1306613072_))))
                                      (let ((_g1306413105_
                                             (lambda (_g1306613078_)
                                               (if (gx#stx-pair? _g1306613078_)
                                                   (let ((_e1306813080_
                                                          (gx#stx-e
                                                           _g1306613078_)))
                                                     (let ((_hd1306913083_
                                                            (##car _e1306813080_))
                                                           (_tl1307013085_
                                                            (##cdr _e1306813080_)))
                                                       ((lambda (_L13088_)
                                                          (let ((_g16044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_lift-case-lambda-clauses12788_ _L13049_ _L13088_)))
                    (begin
                      (let ((_g16045_ (values-count _g16044_)))
                        (if (not (fx= _g16045_ 3))
                            (error "Context expects 3 values" _g16045_)))
                      (let ((_ids13098_ (values-ref _g16044_ 0))
                            (_impls13099_ (values-ref _g16044_ 1))
                            (_clauses13100_ (values-ref _g16044_ 2)))
                        (let ((_defs13102_
                               (map _case-lambda-clause-def12789_
                                    _ids13098_
                                    _impls13099_)))
                          (let ()
                            (begin
                              (gxc#verbose
                               '"lift case-lambda clauses "
                               (gxc#identifier-symbol _L13049_)
                               '" => "
                               _ids13098_)
                              (for-each gx#core-bind-runtime! _ids13098_)
                              (gxc#xform-wrap-source
                               (cons '%#begin
                                     (foldr cons
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons (cons _L13049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (gxc#xform-wrap-source
                              (cons '%#case-lambda _clauses13100_)
                              _L13048_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx12784_)
                                                  '())
                                            _defs13102_))
                               _stx12784_))))))))
                _tl1307013085_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1306513075_
                                                    _g1306613078_)))))
                                        (_g1306413105_ _L13048_)))
                                    (_g1279213011_ _g1279513014_)))
                              _hd1282513043_
                              _hd1282213035_)
                             (_g1279213011_ _g1279513014_))))
                     (_g1279213011_ _g1279513014_))
                 (_g1279213011_ _g1279513014_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1279213011_
                                                  _g1279513014_))))
                                         (_g1279213011_ _g1279513014_))))
                                 (_g1279213011_ _g1279513014_)))))
                      (let ((_g1279013172_
                             (lambda (_g1279513111_)
                               (if (gx#stx-pair? _g1279513111_)
                                   (let ((_e1279813113_
                                          (gx#stx-e _g1279513111_)))
                                     (let ((_hd1279913116_
                                            (##car _e1279813113_))
                                           (_tl1280013118_
                                            (##cdr _e1279813113_)))
                                       (if (gx#stx-pair? _tl1280013118_)
                                           (let ((_e1280113121_
                                                  (gx#stx-e _tl1280013118_)))
                                             (let ((_hd1280213124_
                                                    (##car _e1280113121_))
                                                   (_tl1280313126_
                                                    (##cdr _e1280113121_)))
                                               (if (gx#stx-pair?
                                                    _hd1280213124_)
                                                   (let ((_e1280413129_
                                                          (gx#stx-e
                                                           _hd1280213124_)))
                                                     (let ((_hd1280513132_
                                                            (##car _e1280413129_))
                                                           (_tl1280613134_
                                                            (##cdr _e1280413129_)))
                                                       (if (gx#stx-null?
                                                            _tl1280613134_)
                                                           (if (gx#stx-pair?
                                                                _tl1280313126_)
                                                               (let ((_e1280713137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1280313126_)))
                         (let ((_hd1280813140_ (##car _e1280713137_))
                               (_tl1280913142_ (##cdr _e1280713137_)))
                           (if (gx#stx-pair? _hd1280813140_)
                               (let ((_e1281013145_ (gx#stx-e _hd1280813140_)))
                                 (let ((_hd1281113148_ (##car _e1281013145_))
                                       (_tl1281213150_ (##cdr _e1281013145_)))
                                   (if (gx#identifier? _hd1281113148_)
                                       (if (gx#stx-eq?
                                            '%#case-lambda
                                            _hd1281113148_)
                                           (if (gx#stx-null? _tl1280913142_)
                                               ((lambda (_L13153_ _L13154_)
                                                  (if (if (gx#identifier?
                                                           _L13154_)
                                                          (andmap gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13153_)
                  '#f)
              _stx12784_
              (_g1279113108_ _g1279513111_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1281213150_
                                                _hd1280513132_)
                                               (_g1279113108_ _g1279513111_))
                                           (_g1279113108_ _g1279513111_))
                                       (_g1279113108_ _g1279513111_))))
                               (_g1279113108_ _g1279513111_))))
                       (_g1279113108_ _g1279513111_))
                   (_g1279113108_ _g1279513111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1279113108_
                                                    _g1279513111_))))
                                           (_g1279113108_ _g1279513111_))))
                                   (_g1279113108_ _g1279513111_)))))
                        (_g1279013172_ _stx12784_))))))))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx12722_ _id12723_ _new-id12724_)
      (let ((_g1272712740_
             (lambda (_g1272812737_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1272812737_))))
        (let ((_g1272612747_
               (lambda (_g1272812743_) ((lambda () _stx12722_)))))
          (let ((_g1272512781_
                 (lambda (_g1272812750_)
                   (if (gx#stx-pair? _g1272812750_)
                       (let ((_e1273012752_ (gx#stx-e _g1272812750_)))
                         (let ((_hd1273112755_ (##car _e1273012752_))
                               (_tl1273212757_ (##cdr _e1273012752_)))
                           (if (gx#stx-pair? _tl1273212757_)
                               (let ((_e1273312760_ (gx#stx-e _tl1273212757_)))
                                 (let ((_hd1273412763_ (##car _e1273312760_))
                                       (_tl1273512765_ (##cdr _e1273312760_)))
                                   (if (gx#stx-null? _tl1273512765_)
                                       ((lambda (_L12768_)
                                          (if (gx#free-identifier=?
                                               _L12768_
                                               _id12723_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id12724_ '()))
                                               _stx12722_)
                                              (_g1272612747_ _g1272812750_)))
                                        _hd1273412763_)
                                       (_g1272612747_ _g1272812750_))))
                               (_g1272612747_ _g1272812750_))))
                       (_g1272612747_ _g1272812750_)))))
            (_g1272512781_ _stx12722_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx12627_)
      (let ((_g1263012650_
             (lambda (_g1263112647_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1263112647_))))
        (let ((_g1262912657_ (lambda (_g1263112653_) ((lambda () (void))))))
          (let ((_g1262812719_
                 (lambda (_g1263112660_)
                   (if (gx#stx-pair? _g1263112660_)
                       (let ((_e1263412662_ (gx#stx-e _g1263112660_)))
                         (let ((_hd1263512665_ (##car _e1263412662_))
                               (_tl1263612667_ (##cdr _e1263412662_)))
                           (if (gx#stx-pair? _tl1263612667_)
                               (let ((_e1263712670_ (gx#stx-e _tl1263612667_)))
                                 (let ((_hd1263812673_ (##car _e1263712670_))
                                       (_tl1263912675_ (##cdr _e1263712670_)))
                                   (if (gx#stx-pair? _hd1263812673_)
                                       (let ((_e1264012678_
                                              (gx#stx-e _hd1263812673_)))
                                         (let ((_hd1264112681_
                                                (##car _e1264012678_))
                                               (_tl1264212683_
                                                (##cdr _e1264012678_)))
                                           (if (gx#stx-null? _tl1264212683_)
                                               (if (gx#stx-pair?
                                                    _tl1263912675_)
                                                   (let ((_e1264312686_
                                                          (gx#stx-e
                                                           _tl1263912675_)))
                                                     (let ((_hd1264412689_
                                                            (##car _e1264312686_))
                                                           (_tl1264512691_
                                                            (##cdr _e1264312686_)))
                                                       (if (gx#stx-null?
                                                            _tl1264512691_)
                                                           ((lambda (_L12694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L12695_)
                      (let ((_type1271212714_
                             (gxc#apply-basic-expression-type _L12694_)))
                        (if _type1271212714_
                            (let ((_type12717_ _type1271212714_))
                              (gxc#optimizer-declare-type!
                               (gxc#identifier-symbol _L12695_)
                               _type12717_))
                            '#f)))
                    _hd1264412689_
                    _hd1264112681_)
                   (_g1262912657_ _g1263112660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1262912657_
                                                    _g1263112660_))
                                               (_g1262912657_ _g1263112660_))))
                                       (_g1262912657_ _g1263112660_))))
                               (_g1262912657_ _g1263112660_))))
                       (_g1262912657_ _g1263112660_)))))
            (_g1262812719_ _stx12627_))))))
  (define gxc#collect-type-call%
    (lambda (_stx12181_)
      (let ((_g1218512287_
             (lambda (_g1218612284_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1218612284_))))
        (let ((_g1218412294_ (lambda (_g1218612290_) ((lambda () (void))))))
          (let ((_g1218312444_
                 (lambda (_g1218612297_)
                   (if (gx#stx-pair? _g1218612297_)
                       (let ((_e1224412299_ (gx#stx-e _g1218612297_)))
                         (let ((_hd1224512302_ (##car _e1224412299_))
                               (_tl1224612304_ (##cdr _e1224412299_)))
                           (if (gx#stx-pair? _tl1224612304_)
                               (let ((_e1224712307_ (gx#stx-e _tl1224612304_)))
                                 (let ((_hd1224812310_ (##car _e1224712307_))
                                       (_tl1224912312_ (##cdr _e1224712307_)))
                                   (if (gx#stx-pair? _hd1224812310_)
                                       (let ((_e1225012315_
                                              (gx#stx-e _hd1224812310_)))
                                         (let ((_hd1225112318_
                                                (##car _e1225012315_))
                                               (_tl1225212320_
                                                (##cdr _e1225012315_)))
                                           (if (gx#identifier? _hd1225112318_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1225112318_)
                                                   (if (gx#stx-pair?
                                                        _tl1225212320_)
                                                       (let ((_e1225312323_
                                                              (gx#stx-e
                                                               _tl1225212320_)))
                                                         (let ((_hd1225412326_
                                                                (##car _e1225312323_))
                                                               (_tl1225512328_
                                                                (##cdr _e1225312323_)))
                                                           (if (gx#stx-null?
                                                                _tl1225512328_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1224912312_)
                           (let ((_e1225612331_ (gx#stx-e _tl1224912312_)))
                             (let ((_hd1225712334_ (##car _e1225612331_))
                                   (_tl1225812336_ (##cdr _e1225612331_)))
                               (if (gx#stx-pair? _hd1225712334_)
                                   (let ((_e1225912339_
                                          (gx#stx-e _hd1225712334_)))
                                     (let ((_hd1226012342_
                                            (##car _e1225912339_))
                                           (_tl1226112344_
                                            (##cdr _e1225912339_)))
                                       (if (gx#identifier? _hd1226012342_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1226012342_)
                                               (if (gx#stx-pair?
                                                    _tl1226112344_)
                                                   (let ((_e1226212347_
                                                          (gx#stx-e
                                                           _tl1226112344_)))
                                                     (let ((_hd1226312350_
                                                            (##car _e1226212347_))
                                                           (_tl1226412352_
                                                            (##cdr _e1226212347_)))
                                                       (if (gx#stx-null?
                                                            _tl1226412352_)
                                                           (if (gx#stx-pair?
                                                                _tl1225812336_)
                                                               (let ((_e1226512355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1225812336_)))
                         (let ((_hd1226612358_ (##car _e1226512355_))
                               (_tl1226712360_ (##cdr _e1226512355_)))
                           (if (gx#stx-pair? _hd1226612358_)
                               (let ((_e1226812363_ (gx#stx-e _hd1226612358_)))
                                 (let ((_hd1226912366_ (##car _e1226812363_))
                                       (_tl1227012368_ (##cdr _e1226812363_)))
                                   (if (gx#identifier? _hd1226912366_)
                                       (if (gx#stx-eq? '%#quote _hd1226912366_)
                                           (if (gx#stx-pair? _tl1227012368_)
                                               (let ((_e1227112371_
                                                      (gx#stx-e
                                                       _tl1227012368_)))
                                                 (let ((_hd1227212374_
                                                        (##car _e1227112371_))
                                                       (_tl1227312376_
                                                        (##cdr _e1227112371_)))
                                                   (if (gx#stx-null?
                                                        _tl1227312376_)
                                                       (if (gx#stx-pair?
                                                            _tl1226712360_)
                                                           (let ((_e1227412379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1226712360_)))
                     (let ((_hd1227512382_ (##car _e1227412379_))
                           (_tl1227612384_ (##cdr _e1227412379_)))
                       (if (gx#stx-pair? _hd1227512382_)
                           (let ((_e1227712387_ (gx#stx-e _hd1227512382_)))
                             (let ((_hd1227812390_ (##car _e1227712387_))
                                   (_tl1227912392_ (##cdr _e1227712387_)))
                               (if (gx#identifier? _hd1227812390_)
                                   (if (gx#stx-eq? '%#ref _hd1227812390_)
                                       (if (gx#stx-pair? _tl1227912392_)
                                           (let ((_e1228012395_
                                                  (gx#stx-e _tl1227912392_)))
                                             (let ((_hd1228112398_
                                                    (##car _e1228012395_))
                                                   (_tl1228212400_
                                                    (##cdr _e1228012395_)))
                                               (if (gx#stx-null?
                                                    _tl1228212400_)
                                                   (if (gx#stx-null?
                                                        _tl1227612384_)
                                                       ((lambda (_L12403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12404_
                         _L12405_
                         _L12406_)
                  (if (eq? (gxc#identifier-symbol
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda15839
                       (gxc#identifier-symbol _L12405_)
                       (gx#stx-e _L12404_)
                       (gxc#identifier-symbol _L12403_)
                       '#f)
                      (_g1218412294_ _g1218612297_)))
                _hd1228112398_
                _hd1227212374_
                _hd1226312350_
                _hd1225412326_)
               (_g1218412294_ _g1218612297_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1218412294_
                                                    _g1218612297_))))
                                           (_g1218412294_ _g1218612297_))
                                       (_g1218412294_ _g1218612297_))
                                   (_g1218412294_ _g1218612297_))))
                           (_g1218412294_ _g1218612297_))))
                   (_g1218412294_ _g1218612297_))
               (_g1218412294_ _g1218612297_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1218412294_ _g1218612297_))
                                           (_g1218412294_ _g1218612297_))
                                       (_g1218412294_ _g1218612297_))))
                               (_g1218412294_ _g1218612297_))))
                       (_g1218412294_ _g1218612297_))
                   (_g1218412294_ _g1218612297_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1218412294_
                                                    _g1218612297_))
                                               (_g1218412294_ _g1218612297_))
                                           (_g1218412294_ _g1218612297_))))
                                   (_g1218412294_ _g1218612297_))))
                           (_g1218412294_ _g1218612297_))
                       (_g1218412294_ _g1218612297_))))
               (_g1218412294_ _g1218612297_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1218412294_
                                                    _g1218612297_))
                                               (_g1218412294_ _g1218612297_))))
                                       (_g1218412294_ _g1218612297_))))
                               (_g1218412294_ _g1218612297_))))
                       (_g1218412294_ _g1218612297_)))))
            (let ((_g1218212624_
                   (lambda (_g1218612447_)
                     (if (gx#stx-pair? _g1218612447_)
                         (let ((_e1219212449_ (gx#stx-e _g1218612447_)))
                           (let ((_hd1219312452_ (##car _e1219212449_))
                                 (_tl1219412454_ (##cdr _e1219212449_)))
                             (if (gx#stx-pair? _tl1219412454_)
                                 (let ((_e1219512457_
                                        (gx#stx-e _tl1219412454_)))
                                   (let ((_hd1219612460_ (##car _e1219512457_))
                                         (_tl1219712462_
                                          (##cdr _e1219512457_)))
                                     (if (gx#stx-pair? _hd1219612460_)
                                         (let ((_e1219812465_
                                                (gx#stx-e _hd1219612460_)))
                                           (let ((_hd1219912468_
                                                  (##car _e1219812465_))
                                                 (_tl1220012470_
                                                  (##cdr _e1219812465_)))
                                             (if (gx#identifier?
                                                  _hd1219912468_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1219912468_)
                                                     (if (gx#stx-pair?
                                                          _tl1220012470_)
                                                         (let ((_e1220112473_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1220012470_)))
                   (let ((_hd1220212476_ (##car _e1220112473_))
                         (_tl1220312478_ (##cdr _e1220112473_)))
                     (if (gx#stx-null? _tl1220312478_)
                         (if (gx#stx-pair? _tl1219712462_)
                             (let ((_e1220412481_ (gx#stx-e _tl1219712462_)))
                               (let ((_hd1220512484_ (##car _e1220412481_))
                                     (_tl1220612486_ (##cdr _e1220412481_)))
                                 (if (gx#stx-pair? _hd1220512484_)
                                     (let ((_e1220712489_
                                            (gx#stx-e _hd1220512484_)))
                                       (let ((_hd1220812492_
                                              (##car _e1220712489_))
                                             (_tl1220912494_
                                              (##cdr _e1220712489_)))
                                         (if (gx#identifier? _hd1220812492_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1220812492_)
                                                 (if (gx#stx-pair?
                                                      _tl1220912494_)
                                                     (let ((_e1221012497_
                                                            (gx#stx-e
                                                             _tl1220912494_)))
                                                       (let ((_hd1221112500_
                                                              (##car _e1221012497_))
                                                             (_tl1221212502_
                                                              (##cdr _e1221012497_)))
                                                         (if (gx#stx-null?
                                                              _tl1221212502_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1220612486_)
                         (let ((_e1221312505_ (gx#stx-e _tl1220612486_)))
                           (let ((_hd1221412508_ (##car _e1221312505_))
                                 (_tl1221512510_ (##cdr _e1221312505_)))
                             (if (gx#stx-pair? _hd1221412508_)
                                 (let ((_e1221612513_
                                        (gx#stx-e _hd1221412508_)))
                                   (let ((_hd1221712516_ (##car _e1221612513_))
                                         (_tl1221812518_
                                          (##cdr _e1221612513_)))
                                     (if (gx#identifier? _hd1221712516_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1221712516_)
                                             (if (gx#stx-pair? _tl1221812518_)
                                                 (let ((_e1221912521_
                                                        (gx#stx-e
                                                         _tl1221812518_)))
                                                   (let ((_hd1222012524_
                                                          (##car _e1221912521_))
                                                         (_tl1222112526_
                                                          (##cdr _e1221912521_)))
                                                     (if (gx#stx-null?
                                                          _tl1222112526_)
                                                         (if (gx#stx-pair?
                                                              _tl1221512510_)
                                                             (let ((_e1222212529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1221512510_)))
                       (let ((_hd1222312532_ (##car _e1222212529_))
                             (_tl1222412534_ (##cdr _e1222212529_)))
                         (if (gx#stx-pair? _hd1222312532_)
                             (let ((_e1222512537_ (gx#stx-e _hd1222312532_)))
                               (let ((_hd1222612540_ (##car _e1222512537_))
                                     (_tl1222712542_ (##cdr _e1222512537_)))
                                 (if (gx#identifier? _hd1222612540_)
                                     (if (gx#stx-eq? '%#ref _hd1222612540_)
                                         (if (gx#stx-pair? _tl1222712542_)
                                             (let ((_e1222812545_
                                                    (gx#stx-e _tl1222712542_)))
                                               (let ((_hd1222912548_
                                                      (##car _e1222812545_))
                                                     (_tl1223012550_
                                                      (##cdr _e1222812545_)))
                                                 (if (gx#stx-null?
                                                      _tl1223012550_)
                                                     (if (gx#stx-pair?
                                                          _tl1222412534_)
                                                         (let ((_e1223112553_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1222412534_)))
                   (let ((_hd1223212556_ (##car _e1223112553_))
                         (_tl1223312558_ (##cdr _e1223112553_)))
                     (if (gx#stx-pair? _hd1223212556_)
                         (let ((_e1223412561_ (gx#stx-e _hd1223212556_)))
                           (let ((_hd1223512564_ (##car _e1223412561_))
                                 (_tl1223612566_ (##cdr _e1223412561_)))
                             (if (gx#identifier? _hd1223512564_)
                                 (if (gx#stx-eq? '%#quote _hd1223512564_)
                                     (if (gx#stx-pair? _tl1223612566_)
                                         (let ((_e1223712569_
                                                (gx#stx-e _tl1223612566_)))
                                           (let ((_hd1223812572_
                                                  (##car _e1223712569_))
                                                 (_tl1223912574_
                                                  (##cdr _e1223712569_)))
                                             (if (gx#stx-null? _tl1223912574_)
                                                 (if (gx#stx-null?
                                                      _tl1223312558_)
                                                     ((lambda (_L12577_
                                                               _L12578_
                                                               _L12579_
                                                               _L12580_
                                                               _L12581_)
                                                        (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12581_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda15839
                     (gxc#identifier-symbol _L12580_)
                     (gx#stx-e _L12579_)
                     (gxc#identifier-symbol _L12578_)
                     (gx#stx-e _L12577_))
                    (_g1218312444_ _g1218612447_)))
              _hd1223812572_
              _hd1222912548_
              _hd1222012524_
              _hd1221112500_
              _hd1220212476_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1218312444_
                                                      _g1218612447_))
                                                 (_g1218312444_
                                                  _g1218612447_))))
                                         (_g1218312444_ _g1218612447_))
                                     (_g1218312444_ _g1218612447_))
                                 (_g1218312444_ _g1218612447_))))
                         (_g1218312444_ _g1218612447_))))
                 (_g1218312444_ _g1218612447_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1218312444_
                                                      _g1218612447_))))
                                             (_g1218312444_ _g1218612447_))
                                         (_g1218312444_ _g1218612447_))
                                     (_g1218312444_ _g1218612447_))))
                             (_g1218312444_ _g1218612447_))))
                     (_g1218312444_ _g1218612447_))
                 (_g1218312444_ _g1218612447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1218312444_ _g1218612447_))
                                             (_g1218312444_ _g1218612447_))
                                         (_g1218312444_ _g1218612447_))))
                                 (_g1218312444_ _g1218612447_))))
                         (_g1218312444_ _g1218612447_))
                     (_g1218312444_ _g1218612447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1218312444_
                                                      _g1218612447_))
                                                 (_g1218312444_ _g1218612447_))
                                             (_g1218312444_ _g1218612447_))))
                                     (_g1218312444_ _g1218612447_))))
                             (_g1218312444_ _g1218612447_))
                         (_g1218312444_ _g1218612447_))))
                 (_g1218312444_ _g1218612447_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1218312444_
                                                      _g1218612447_))
                                                 (_g1218312444_
                                                  _g1218612447_))))
                                         (_g1218312444_ _g1218612447_))))
                                 (_g1218312444_ _g1218612447_))))
                         (_g1218312444_ _g1218612447_)))))
              (_g1218212624_ _stx12181_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx12121_)
      (let ((_g1212412137_
             (lambda (_g1212512134_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1212512134_))))
        (let ((_g1212312144_ (lambda (_g1212512140_) ((lambda () '#f)))))
          (let ((_g1212212178_
                 (lambda (_g1212512147_)
                   (if (gx#stx-pair? _g1212512147_)
                       (let ((_e1212712149_ (gx#stx-e _g1212512147_)))
                         (let ((_hd1212812152_ (##car _e1212712149_))
                               (_tl1212912154_ (##cdr _e1212712149_)))
                           (if (gx#stx-pair? _tl1212912154_)
                               (let ((_e1213012157_ (gx#stx-e _tl1212912154_)))
                                 (let ((_hd1213112160_ (##car _e1213012157_))
                                       (_tl1213212162_ (##cdr _e1213012157_)))
                                   (if (gx#stx-null? _tl1213212162_)
                                       ((lambda (_L12165_)
                                          (gxc#compile-e _L12165_))
                                        _hd1213112160_)
                                       (_g1212312144_ _g1212512147_))))
                               (_g1212312144_ _g1212512147_))))
                       (_g1212312144_ _g1212512147_)))))
            (_g1212212178_ _stx12121_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx11546_)
      (let ((_g1155111672_
             (lambda (_g1155211669_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1155211669_))))
        (let ((_g1155011679_ (lambda (_g1155211675_) ((lambda () '#f)))))
          (let ((_g1154911703_
                 (lambda (_g1155211682_)
                   (if (gx#stx-pair? _g1155211682_)
                       (let ((_e1166511684_ (gx#stx-e _g1155211682_)))
                         (let ((_hd1166611687_ (##car _e1166511684_))
                               (_tl1166711689_ (##cdr _e1166511684_)))
                           ((lambda (_L11692_)
                              (if (gxc#dispatch-lambda-form? _L11692_)
                                  (##structure
                                   gxc#!lambda::t
                                   'lambda
                                   (gxc#lambda-form-arity _L11692_)
                                   (gxc#dispatch-lambda-form-delegate
                                    _L11692_))
                                  (_g1155011679_ _g1155211682_)))
                            _tl1166711689_)))
                       (_g1155011679_ _g1155211682_)))))
            (let ((_g1154811933_
                   (lambda (_g1155211706_)
                     (if (gx#stx-pair? _g1155211706_)
                         (let ((_e1161011708_ (gx#stx-e _g1155211706_)))
                           (let ((_hd1161111711_ (##car _e1161011708_))
                                 (_tl1161211713_ (##cdr _e1161011708_)))
                             (if (gx#stx-pair? _tl1161211713_)
                                 (let ((_e1161311716_
                                        (gx#stx-e _tl1161211713_)))
                                   (let ((_hd1161411719_ (##car _e1161311716_))
                                         (_tl1161511721_
                                          (##cdr _e1161311716_)))
                                     (if (gx#stx-pair/null? _hd1161411719_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1161411719_)
                                                   '0)
                                             (let ((_g16050_
                                                    (gx#syntax-split-splice
                                                     _hd1161411719_
                                                     '0)))
                                               (begin
                                                 (let ((_g16051_
                                                        (values-count
                                                         _g16050_)))
                                                   (if (not (fx= _g16051_ 2))
                                                       (error "Context expects 2 values"
                                                              _g16051_)))
                                                 (let ((_target1161611724_
                                                        (values-ref
                                                         _g16050_
                                                         0))
                                                       (_tl1161811726_
                                                        (values-ref
                                                         _g16050_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1161811726_)
                                                       (letrec ((_loop1161911729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1161711732_ _arg1162311734_)
                           (if (gx#stx-pair? _hd1161711732_)
                               (let ((_e1162011737_ (gx#stx-e _hd1161711732_)))
                                 (let ((_lp-hd1162111740_
                                        (##car _e1162011737_))
                                       (_lp-tl1162211742_
                                        (##cdr _e1162011737_)))
                                   (_loop1161911729_
                                    _lp-tl1162211742_
                                    (cons _lp-hd1162111740_ _arg1162311734_))))
                               (let ((_arg1162411745_
                                      (reverse _arg1162311734_)))
                                 (if (gx#stx-pair? _tl1161511721_)
                                     (let ((_e1162511748_
                                            (gx#stx-e _tl1161511721_)))
                                       (let ((_hd1162611751_
                                              (##car _e1162511748_))
                                             (_tl1162711753_
                                              (##cdr _e1162511748_)))
                                         (if (gx#stx-pair? _hd1162611751_)
                                             (let ((_e1162811756_
                                                    (gx#stx-e _hd1162611751_)))
                                               (let ((_hd1162911759_
                                                      (##car _e1162811756_))
                                                     (_tl1163011761_
                                                      (##cdr _e1162811756_)))
                                                 (if (gx#identifier?
                                                      _hd1162911759_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1162911759_)
                                                         (if (gx#stx-pair?
                                                              _tl1163011761_)
                                                             (let ((_e1163111764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1163011761_)))
                       (let ((_hd1163211767_ (##car _e1163111764_))
                             (_tl1163311769_ (##cdr _e1163111764_)))
                         (if (gx#stx-pair? _hd1163211767_)
                             (let ((_e1163411772_ (gx#stx-e _hd1163211767_)))
                               (let ((_hd1163511775_ (##car _e1163411772_))
                                     (_tl1163611777_ (##cdr _e1163411772_)))
                                 (if (gx#identifier? _hd1163511775_)
                                     (if (gx#stx-eq? '%#ref _hd1163511775_)
                                         (if (gx#stx-pair? _tl1163611777_)
                                             (let ((_e1163711780_
                                                    (gx#stx-e _tl1163611777_)))
                                               (let ((_hd1163811783_
                                                      (##car _e1163711780_))
                                                     (_tl1163911785_
                                                      (##cdr _e1163711780_)))
                                                 (if (gx#stx-null?
                                                      _tl1163911785_)
                                                     (if (gx#stx-pair?
                                                          _tl1163311769_)
                                                         (let ((_e1164011788_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1163311769_)))
                   (let ((_hd1164111791_ (##car _e1164011788_))
                         (_tl1164211793_ (##cdr _e1164011788_)))
                     (if (gx#stx-pair? _hd1164111791_)
                         (let ((_e1164311796_ (gx#stx-e _hd1164111791_)))
                           (let ((_hd1164411799_ (##car _e1164311796_))
                                 (_tl1164511801_ (##cdr _e1164311796_)))
                             (if (gx#identifier? _hd1164411799_)
                                 (if (gx#stx-eq? '%#ref _hd1164411799_)
                                     (if (gx#stx-pair? _tl1164511801_)
                                         (let ((_e1164611804_
                                                (gx#stx-e _tl1164511801_)))
                                           (let ((_hd1164711807_
                                                  (##car _e1164611804_))
                                                 (_tl1164811809_
                                                  (##cdr _e1164611804_)))
                                             (if (gx#stx-null? _tl1164811809_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1164211793_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1164211793_)
                                                               '0)
                                                         (let ((_g16052_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1164211793_
                         '0)))
                   (begin
                     (let ((_g16053_ (values-count _g16052_)))
                       (if (not (fx= _g16053_ 2))
                           (error "Context expects 2 values" _g16053_)))
                     (let ((_target1164911812_ (values-ref _g16052_ 0))
                           (_tl1165111814_ (values-ref _g16052_ 1)))
                       (if (gx#stx-null? _tl1165111814_)
                           (letrec ((_loop1165211817_
                                     (lambda (_hd1165011820_ _xarg1165611822_)
                                       (if (gx#stx-pair? _hd1165011820_)
                                           (let ((_e1165311825_
                                                  (gx#stx-e _hd1165011820_)))
                                             (let ((_lp-hd1165411828_
                                                    (##car _e1165311825_))
                                                   (_lp-tl1165511830_
                                                    (##cdr _e1165311825_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1165411828_)
                                                   (let ((_e1165811833_
                                                          (gx#stx-e
                                                           _lp-hd1165411828_)))
                                                     (let ((_hd1165911836_
                                                            (##car _e1165811833_))
                                                           (_tl1166011838_
                                                            (##cdr _e1165811833_)))
                                                       (if (gx#identifier?
                                                            _hd1165911836_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1165911836_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1166011838_)
                           (let ((_e1166111841_ (gx#stx-e _tl1166011838_)))
                             (let ((_hd1166211844_ (##car _e1166111841_))
                                   (_tl1166311846_ (##cdr _e1166111841_)))
                               (if (gx#stx-null? _tl1166311846_)
                                   (_loop1165211817_
                                    _lp-tl1165511830_
                                    (cons _hd1166211844_ _xarg1165611822_))
                                   (_g1154911703_ _g1155211706_))))
                           (_g1154911703_ _g1155211706_))
                       (_g1154911703_ _g1155211706_))
                   (_g1154911703_ _g1155211706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1154911703_
                                                    _g1155211706_))))
                                           (let ((_xarg1165711849_
                                                  (reverse _xarg1165611822_)))
                                             (if (gx#stx-null? _tl1162711753_)
                                                 ((lambda (_L11852_
                                                           _L11853_
                                                           _L11854_
                                                           _L11855_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1189211895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1189311897_)
                                (cons _g1189211895_ _g1189311897_))
                              '()
                              _L11855_)))
                    (if (eq? (gxc#identifier-symbol _L11854_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr (lambda (_g1189911902_
                                                           _g1190011904_)
                                                    (cons _g1189911902_
                                                          _g1190011904_))
                                                  '()
                                                  _L11855_)))
                                 (length (begin
                                           '#!void
                                           (foldr (lambda (_g1190611909_
                                                           _g1190711911_)
                                                    (cons _g1190611909_
                                                          _g1190711911_))
                                                  '()
                                                  _L11852_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1191311916_
                                                      _g1191411918_)
                                               (cons _g1191311916_
                                                     _g1191411918_))
                                             '()
                                             _L11855_))
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1192011923_
                                                      _g1192111925_)
                                               (cons _g1192011923_
                                                     _g1192111925_))
                                             '()
                                             _L11852_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t11928_ (gxc#identifier-symbol _L11853_)))
                  (let ((_type11930_
                         (gxc#optimizer-resolve-type _type-t11928_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type11930_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t11928_)
                          '#f))))
                (_g1154911703_ _g1155211706_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1165711849_
                                                  _hd1164711807_
                                                  _hd1163811783_
                                                  _arg1162411745_)
                                                 (_g1154911703_
                                                  _g1155211706_)))))))
                             (_loop1165211817_ _target1164911812_ '()))
                           (_g1154911703_ _g1155211706_)))))
                 (_g1154911703_ _g1155211706_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1154911703_
                                                      _g1155211706_))
                                                 (_g1154911703_
                                                  _g1155211706_))))
                                         (_g1154911703_ _g1155211706_))
                                     (_g1154911703_ _g1155211706_))
                                 (_g1154911703_ _g1155211706_))))
                         (_g1154911703_ _g1155211706_))))
                 (_g1154911703_ _g1155211706_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1154911703_
                                                      _g1155211706_))))
                                             (_g1154911703_ _g1155211706_))
                                         (_g1154911703_ _g1155211706_))
                                     (_g1154911703_ _g1155211706_))))
                             (_g1154911703_ _g1155211706_))))
                     (_g1154911703_ _g1155211706_))
                 (_g1154911703_ _g1155211706_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1154911703_
                                                      _g1155211706_))))
                                             (_g1154911703_ _g1155211706_))))
                                     (_g1154911703_ _g1155211706_)))))))
                 (_loop1161911729_ _target1161611724_ '()))
               (_g1154911703_ _g1155211706_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1154911703_ _g1155211706_))
                                         (_g1154911703_ _g1155211706_))))
                                 (_g1154911703_ _g1155211706_))))
                         (_g1154911703_ _g1155211706_)))))
              (let ((_g1154712118_
                     (lambda (_g1155211936_)
                       (if (gx#stx-pair? _g1155211936_)
                           (let ((_e1155811938_ (gx#stx-e _g1155211936_)))
                             (let ((_hd1155911941_ (##car _e1155811938_))
                                   (_tl1156011943_ (##cdr _e1155811938_)))
                               (if (gx#stx-pair? _tl1156011943_)
                                   (let ((_e1156111946_
                                          (gx#stx-e _tl1156011943_)))
                                     (let ((_hd1156211949_
                                            (##car _e1156111946_))
                                           (_tl1156311951_
                                            (##cdr _e1156111946_)))
                                       (if (gx#stx-pair? _tl1156311951_)
                                           (let ((_e1156411954_
                                                  (gx#stx-e _tl1156311951_)))
                                             (let ((_hd1156511957_
                                                    (##car _e1156411954_))
                                                   (_tl1156611959_
                                                    (##cdr _e1156411954_)))
                                               (if (gx#stx-pair?
                                                    _hd1156511957_)
                                                   (let ((_e1156711962_
                                                          (gx#stx-e
                                                           _hd1156511957_)))
                                                     (let ((_hd1156811965_
                                                            (##car _e1156711962_))
                                                           (_tl1156911967_
                                                            (##cdr _e1156711962_)))
                                                       (if (gx#identifier?
                                                            _hd1156811965_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1156811965_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1156911967_)
                           (let ((_e1157011970_ (gx#stx-e _tl1156911967_)))
                             (let ((_hd1157111973_ (##car _e1157011970_))
                                   (_tl1157211975_ (##cdr _e1157011970_)))
                               (if (gx#stx-pair? _hd1157111973_)
                                   (let ((_e1157311978_
                                          (gx#stx-e _hd1157111973_)))
                                     (let ((_hd1157411981_
                                            (##car _e1157311978_))
                                           (_tl1157511983_
                                            (##cdr _e1157311978_)))
                                       (if (gx#identifier? _hd1157411981_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1157411981_)
                                               (if (gx#stx-pair?
                                                    _tl1157511983_)
                                                   (let ((_e1157611986_
                                                          (gx#stx-e
                                                           _tl1157511983_)))
                                                     (let ((_hd1157711989_
                                                            (##car _e1157611986_))
                                                           (_tl1157811991_
                                                            (##cdr _e1157611986_)))
                                                       (if (gx#stx-null?
                                                            _tl1157811991_)
                                                           (if (gx#stx-pair?
                                                                _tl1157211975_)
                                                               (let ((_e1157911994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1157211975_)))
                         (let ((_hd1158011997_ (##car _e1157911994_))
                               (_tl1158111999_ (##cdr _e1157911994_)))
                           (if (gx#stx-pair? _hd1158011997_)
                               (let ((_e1158212002_ (gx#stx-e _hd1158011997_)))
                                 (let ((_hd1158312005_ (##car _e1158212002_))
                                       (_tl1158412007_ (##cdr _e1158212002_)))
                                   (if (gx#identifier? _hd1158312005_)
                                       (if (gx#stx-eq? '%#ref _hd1158312005_)
                                           (if (gx#stx-pair? _tl1158412007_)
                                               (let ((_e1158512010_
                                                      (gx#stx-e
                                                       _tl1158412007_)))
                                                 (let ((_hd1158612013_
                                                        (##car _e1158512010_))
                                                       (_tl1158712015_
                                                        (##cdr _e1158512010_)))
                                                   (if (gx#stx-null?
                                                        _tl1158712015_)
                                                       (if (gx#stx-pair?
                                                            _tl1158111999_)
                                                           (let ((_e1158812018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1158111999_)))
                     (let ((_hd1158912021_ (##car _e1158812018_))
                           (_tl1159012023_ (##cdr _e1158812018_)))
                       (if (gx#stx-pair? _hd1158912021_)
                           (let ((_e1159112026_ (gx#stx-e _hd1158912021_)))
                             (let ((_hd1159212029_ (##car _e1159112026_))
                                   (_tl1159312031_ (##cdr _e1159112026_)))
                               (if (gx#identifier? _hd1159212029_)
                                   (if (gx#stx-eq? '%#ref _hd1159212029_)
                                       (if (gx#stx-pair? _tl1159312031_)
                                           (let ((_e1159412034_
                                                  (gx#stx-e _tl1159312031_)))
                                             (let ((_hd1159512037_
                                                    (##car _e1159412034_))
                                                   (_tl1159612039_
                                                    (##cdr _e1159412034_)))
                                               (if (gx#stx-null?
                                                    _tl1159612039_)
                                                   (if (gx#stx-pair?
                                                        _tl1159012023_)
                                                       (let ((_e1159712042_
                                                              (gx#stx-e
                                                               _tl1159012023_)))
                                                         (let ((_hd1159812045_
                                                                (##car _e1159712042_))
                                                               (_tl1159912047_
                                                                (##cdr _e1159712042_)))
                                                           (if (gx#stx-pair?
                                                                _hd1159812045_)
                                                               (let ((_e1160012050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1159812045_)))
                         (let ((_hd1160112053_ (##car _e1160012050_))
                               (_tl1160212055_ (##cdr _e1160012050_)))
                           (if (gx#identifier? _hd1160112053_)
                               (if (gx#stx-eq? '%#ref _hd1160112053_)
                                   (if (gx#stx-pair? _tl1160212055_)
                                       (let ((_e1160312058_
                                              (gx#stx-e _tl1160212055_)))
                                         (let ((_hd1160412061_
                                                (##car _e1160312058_))
                                               (_tl1160512063_
                                                (##cdr _e1160312058_)))
                                           (if (gx#stx-null? _tl1160512063_)
                                               (if (gx#stx-null?
                                                    _tl1159912047_)
                                                   (if (gx#stx-null?
                                                        _tl1156611959_)
                                                       ((lambda (_L12066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12067_
                         _L12068_
                         _L12069_
                         _L12070_)
                  (if (if (gx#identifier? _L12070_)
                          (if (eq? (gxc#identifier-symbol _L12069_) 'apply)
                              (if (eq? (gxc#identifier-symbol _L12068_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L12070_ _L12066_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t12113_ (gxc#identifier-symbol _L12067_)))
                        (let ((_type12115_
                               (gxc#optimizer-resolve-type _type-t12113_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type12115_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t12113_)
                                '#f))))
                      (_g1154811933_ _g1155211936_)))
                _hd1160412061_
                _hd1159512037_
                _hd1158612013_
                _hd1157711989_
                _hd1156211949_)
               (_g1154811933_ _g1155211936_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1154811933_
                                                    _g1155211936_))
                                               (_g1154811933_ _g1155211936_))))
                                       (_g1154811933_ _g1155211936_))
                                   (_g1154811933_ _g1155211936_))
                               (_g1154811933_ _g1155211936_))))
                       (_g1154811933_ _g1155211936_))))
               (_g1154811933_ _g1155211936_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1154811933_
                                                    _g1155211936_))))
                                           (_g1154811933_ _g1155211936_))
                                       (_g1154811933_ _g1155211936_))
                                   (_g1154811933_ _g1155211936_))))
                           (_g1154811933_ _g1155211936_))))
                   (_g1154811933_ _g1155211936_))
               (_g1154811933_ _g1155211936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1154811933_ _g1155211936_))
                                           (_g1154811933_ _g1155211936_))
                                       (_g1154811933_ _g1155211936_))))
                               (_g1154811933_ _g1155211936_))))
                       (_g1154811933_ _g1155211936_))
                   (_g1154811933_ _g1155211936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1154811933_
                                                    _g1155211936_))
                                               (_g1154811933_ _g1155211936_))
                                           (_g1154811933_ _g1155211936_))))
                                   (_g1154811933_ _g1155211936_))))
                           (_g1154811933_ _g1155211936_))
                       (_g1154811933_ _g1155211936_))
                   (_g1154811933_ _g1155211936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1154811933_
                                                    _g1155211936_))))
                                           (_g1154811933_ _g1155211936_))))
                                   (_g1154811933_ _g1155211936_))))
                           (_g1154811933_ _g1155211936_)))))
                (_g1154712118_ _stx11546_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx11492_)
      (let ((_clause-e11494_
             (lambda (_form11544_)
               (##structure
                gxc#!lambda::t
                'case-lambda-clause
                (gxc#lambda-form-arity _form11544_)
                (gxc#dispatch-lambda-form-delegate _form11544_)))))
        (let ((_g1149711507_
               (lambda (_g1149811504_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1149811504_))))
          (let ((_g1149611514_ (lambda (_g1149811510_) ((lambda () '#f)))))
            (let ((_g1149511541_
                   (lambda (_g1149811517_)
                     (if (gx#stx-pair? _g1149811517_)
                         (let ((_e1150011519_ (gx#stx-e _g1149811517_)))
                           (let ((_hd1150111522_ (##car _e1150011519_))
                                 (_tl1150211524_ (##cdr _e1150011519_)))
                             ((lambda (_L11527_)
                                (if (andmap gxc#dispatch-lambda-form? _L11527_)
                                    (let ((_clauses11539_
                                           (map _clause-e11494_ _L11527_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses11539_))
                                    (_g1149611514_ _g1149811517_)))
                              _tl1150211524_)))
                         (_g1149611514_ _g1149811517_)))))
              (_g1149511541_ _stx11492_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx11397_)
      (let ((_g1140011420_
             (lambda (_g1140111417_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1140111417_))))
        (let ((_g1139911427_ (lambda (_g1140111423_) ((lambda () '#f)))))
          (let ((_g1139811489_
                 (lambda (_g1140111430_)
                   (if (gx#stx-pair? _g1140111430_)
                       (let ((_e1140411432_ (gx#stx-e _g1140111430_)))
                         (let ((_hd1140511435_ (##car _e1140411432_))
                               (_tl1140611437_ (##cdr _e1140411432_)))
                           (if (gx#stx-pair? _tl1140611437_)
                               (let ((_e1140711440_ (gx#stx-e _tl1140611437_)))
                                 (let ((_hd1140811443_ (##car _e1140711440_))
                                       (_tl1140911445_ (##cdr _e1140711440_)))
                                   (if (gx#stx-pair? _hd1140811443_)
                                       (let ((_e1141011448_
                                              (gx#stx-e _hd1140811443_)))
                                         (let ((_hd1141111451_
                                                (##car _e1141011448_))
                                               (_tl1141211453_
                                                (##cdr _e1141011448_)))
                                           (if (gx#identifier? _hd1141111451_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1141111451_)
                                                   (if (gx#stx-pair?
                                                        _tl1141211453_)
                                                       (let ((_e1141311456_
                                                              (gx#stx-e
                                                               _tl1141211453_)))
                                                         (let ((_hd1141411459_
                                                                (##car _e1141311456_))
                                                               (_tl1141511461_
                                                                (##cdr _e1141311456_)))
                                                           (if (gx#stx-null?
                                                                _tl1141511461_)
                                                               ((lambda (_L11464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11465_)
                          (let ((_type-e1148211484_
                                 (hash-get
                                  gxc#basic-expression-type-builtin
                                  (gxc#identifier-symbol _L11465_))))
                            (if _type-e1148211484_
                                (let ((_type-e11487_ _type-e1148211484_))
                                  (_type-e11487_ _stx11397_ _L11464_))
                                '#f)))
                        _tl1140911445_
                        _hd1141411459_)
                       (_g1139911427_ _g1140111430_))))
               (_g1139911427_ _g1140111430_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1139911427_
                                                    _g1140111430_))
                                               (_g1139911427_ _g1140111430_))))
                                       (_g1139911427_ _g1140111430_))))
                               (_g1139911427_ _g1140111430_))))
                       (_g1139911427_ _g1140111430_)))))
            (_g1139811489_ _stx11397_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx10882_ _args10883_)
      (let ((_g1088711000_
             (lambda (_g1088810997_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1088810997_))))
        (let ((_g1088611007_
               (lambda (_g1088811003_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx10882_))
                      '#f))))))
          (let ((_g1088511214_
                 (lambda (_g1088811010_)
                   (if (gx#stx-pair? _g1088811010_)
                       (let ((_e1094811012_ (gx#stx-e _g1088811010_)))
                         (let ((_hd1094911015_ (##car _e1094811012_))
                               (_tl1095011017_ (##cdr _e1094811012_)))
                           (if (gx#stx-pair? _hd1094911015_)
                               (let ((_e1095111020_ (gx#stx-e _hd1094911015_)))
                                 (let ((_hd1095211023_ (##car _e1095111020_))
                                       (_tl1095311025_ (##cdr _e1095111020_)))
                                   (if (gx#identifier? _hd1095211023_)
                                       (if (gx#stx-eq? '%#quote _hd1095211023_)
                                           (if (gx#stx-pair? _tl1095311025_)
                                               (let ((_e1095411028_
                                                      (gx#stx-e
                                                       _tl1095311025_)))
                                                 (let ((_hd1095511031_
                                                        (##car _e1095411028_))
                                                       (_tl1095611033_
                                                        (##cdr _e1095411028_)))
                                                   (if (gx#stx-null?
                                                        _tl1095611033_)
                                                       (if (gx#stx-pair?
                                                            _tl1095011017_)
                                                           (let ((_e1095711036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1095011017_)))
                     (let ((_hd1095811039_ (##car _e1095711036_))
                           (_tl1095911041_ (##cdr _e1095711036_)))
                       (if (gx#stx-pair? _hd1095811039_)
                           (let ((_e1096011044_ (gx#stx-e _hd1095811039_)))
                             (let ((_hd1096111047_ (##car _e1096011044_))
                                   (_tl1096211049_ (##cdr _e1096011044_)))
                               (if (gx#identifier? _hd1096111047_)
                                   (if (gx#stx-eq? '%#ref _hd1096111047_)
                                       (if (gx#stx-pair? _tl1096211049_)
                                           (let ((_e1096311052_
                                                  (gx#stx-e _tl1096211049_)))
                                             (let ((_hd1096411055_
                                                    (##car _e1096311052_))
                                                   (_tl1096511057_
                                                    (##cdr _e1096311052_)))
                                               (if (gx#stx-null?
                                                    _tl1096511057_)
                                                   (if (gx#stx-pair?
                                                        _tl1095911041_)
                                                       (let ((_e1096611060_
                                                              (gx#stx-e
                                                               _tl1095911041_)))
                                                         (let ((_hd1096711063_
                                                                (##car _e1096611060_))
                                                               (_tl1096811065_
                                                                (##cdr _e1096611060_)))
                                                           (if (gx#stx-pair?
                                                                _hd1096711063_)
                                                               (let ((_e1096911068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1096711063_)))
                         (let ((_hd1097011071_ (##car _e1096911068_))
                               (_tl1097111073_ (##cdr _e1096911068_)))
                           (if (gx#identifier? _hd1097011071_)
                               (if (gx#stx-eq? '%#quote _hd1097011071_)
                                   (if (gx#stx-pair? _tl1097111073_)
                                       (let ((_e1097211076_
                                              (gx#stx-e _tl1097111073_)))
                                         (let ((_hd1097311079_
                                                (##car _e1097211076_))
                                               (_tl1097411081_
                                                (##cdr _e1097211076_)))
                                           (if (gx#stx-null? _tl1097411081_)
                                               (if (gx#stx-pair?
                                                    _tl1096811065_)
                                                   (let ((_e1097511084_
                                                          (gx#stx-e
                                                           _tl1096811065_)))
                                                     (let ((_hd1097611087_
                                                            (##car _e1097511084_))
                                                           (_tl1097711089_
                                                            (##cdr _e1097511084_)))
                                                       (if (gx#stx-pair?
                                                            _tl1097711089_)
                                                           (let ((_e1097811092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1097711089_)))
                     (let ((_hd1097911095_ (##car _e1097811092_))
                           (_tl1098011097_ (##cdr _e1097811092_)))
                       (if (gx#stx-pair? _hd1097911095_)
                           (let ((_e1098111100_ (gx#stx-e _hd1097911095_)))
                             (let ((_hd1098211103_ (##car _e1098111100_))
                                   (_tl1098311105_ (##cdr _e1098111100_)))
                               (if (gx#identifier? _hd1098211103_)
                                   (if (gx#stx-eq? '%#quote _hd1098211103_)
                                       (if (gx#stx-pair? _tl1098311105_)
                                           (let ((_e1098411108_
                                                  (gx#stx-e _tl1098311105_)))
                                             (let ((_hd1098511111_
                                                    (##car _e1098411108_))
                                                   (_tl1098611113_
                                                    (##cdr _e1098411108_)))
                                               (if (gx#stx-null?
                                                    _tl1098611113_)
                                                   (if (gx#stx-pair?
                                                        _tl1098011097_)
                                                       (let ((_e1098711116_
                                                              (gx#stx-e
                                                               _tl1098011097_)))
                                                         (let ((_hd1098811119_
                                                                (##car _e1098711116_))
                                                               (_tl1098911121_
                                                                (##cdr _e1098711116_)))
                                                           (if (gx#stx-pair?
                                                                _hd1098811119_)
                                                               (let ((_e1099011124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1098811119_)))
                         (let ((_hd1099111127_ (##car _e1099011124_))
                               (_tl1099211129_ (##cdr _e1099011124_)))
                           (if (gx#identifier? _hd1099111127_)
                               (if (gx#stx-eq? '%#quote _hd1099111127_)
                                   (if (gx#stx-pair? _tl1099211129_)
                                       (let ((_e1099311132_
                                              (gx#stx-e _tl1099211129_)))
                                         (let ((_hd1099411135_
                                                (##car _e1099311132_))
                                               (_tl1099511137_
                                                (##cdr _e1099311132_)))
                                           (if (gx#stx-null? _tl1099511137_)
                                               (if (gx#stx-null?
                                                    _tl1098911121_)
                                                   ((lambda (_L11140_
                                                             _L11141_
                                                             _L11142_
                                                             _L11143_
                                                             _L11144_
                                                             _L11145_)
                                                      (let ((_super-t11191_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11144_)
                         (gxc#identifier-symbol _L11144_)
                         '#f)))
                (let ((_super-type11193_
                       (if _super-t11191_
                           (gxc#optimizer-resolve-type _super-t11191_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type11193_
                              (not (##structure-instance-of?
                                    _super-type11193_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx10882_
                           _L11144_)
                          '#!void)
                      (let ((_fields11209_ (gx#stx-e _L11143_))
                            (_xfields11210_
                             (if _super-type11193_
                                 (let ((_super-fields1119511198_
                                        (##structure-ref
                                         _super-type11193_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1119611200_
                                        (##structure-ref
                                         _super-type11193_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1119511198_
                                       (if _super-xfields1119611200_
                                           (let ((_super-fields11203_
                                                  _super-fields1119511198_)
                                                 (_super-xfields11204_
                                                  _super-xfields1119611200_))
                                             (fx+ _super-fields11203_
                                                  _super-xfields11204_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist11211_ (gx#stx-e _L11141_))
                            (_ctor11212_
                             (let ((_$e11206_ (gx#stx-e _L11140_)))
                               (if _$e11206_
                                   (values _$e11206_)
                                   (if _super-type11193_
                                       (##structure-ref
                                        _super-type11193_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t11191_ '#!void '#f))))))
                        (let ((__obj16018
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj16018
                             (gx#stx-e _L11145_)
                             _super-t11191_
                             _fields11209_
                             _xfields11210_
                             _ctor11212_
                             _plist11211_)
                            __obj16018))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1099411135_
                                                    _hd1098511111_
                                                    _hd1097611087_
                                                    _hd1097311079_
                                                    _hd1096411055_
                                                    _hd1095511031_)
                                                   (_g1088611007_
                                                    _g1088811010_))
                                               (_g1088611007_ _g1088811010_))))
                                       (_g1088611007_ _g1088811010_))
                                   (_g1088611007_ _g1088811010_))
                               (_g1088611007_ _g1088811010_))))
                       (_g1088611007_ _g1088811010_))))
               (_g1088611007_ _g1088811010_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1088611007_
                                                    _g1088811010_))))
                                           (_g1088611007_ _g1088811010_))
                                       (_g1088611007_ _g1088811010_))
                                   (_g1088611007_ _g1088811010_))))
                           (_g1088611007_ _g1088811010_))))
                   (_g1088611007_ _g1088811010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1088611007_
                                                    _g1088811010_))
                                               (_g1088611007_ _g1088811010_))))
                                       (_g1088611007_ _g1088811010_))
                                   (_g1088611007_ _g1088811010_))
                               (_g1088611007_ _g1088811010_))))
                       (_g1088611007_ _g1088811010_))))
               (_g1088611007_ _g1088811010_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1088611007_
                                                    _g1088811010_))))
                                           (_g1088611007_ _g1088811010_))
                                       (_g1088611007_ _g1088811010_))
                                   (_g1088611007_ _g1088811010_))))
                           (_g1088611007_ _g1088811010_))))
                   (_g1088611007_ _g1088811010_))
               (_g1088611007_ _g1088811010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1088611007_ _g1088811010_))
                                           (_g1088611007_ _g1088811010_))
                                       (_g1088611007_ _g1088811010_))))
                               (_g1088611007_ _g1088811010_))))
                       (_g1088611007_ _g1088811010_)))))
            (let ((_g1088411394_
                   (lambda (_g1088811217_)
                     (if (gx#stx-pair? _g1088811217_)
                         (let ((_e1089411219_ (gx#stx-e _g1088811217_)))
                           (let ((_hd1089511222_ (##car _e1089411219_))
                                 (_tl1089611224_ (##cdr _e1089411219_)))
                             (if (gx#stx-pair? _hd1089511222_)
                                 (let ((_e1089711227_
                                        (gx#stx-e _hd1089511222_)))
                                   (let ((_hd1089811230_ (##car _e1089711227_))
                                         (_tl1089911232_
                                          (##cdr _e1089711227_)))
                                     (if (gx#identifier? _hd1089811230_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1089811230_)
                                             (if (gx#stx-pair? _tl1089911232_)
                                                 (let ((_e1090011235_
                                                        (gx#stx-e
                                                         _tl1089911232_)))
                                                   (let ((_hd1090111238_
                                                          (##car _e1090011235_))
                                                         (_tl1090211240_
                                                          (##cdr _e1090011235_)))
                                                     (if (gx#stx-null?
                                                          _tl1090211240_)
                                                         (if (gx#stx-pair?
                                                              _tl1089611224_)
                                                             (let ((_e1090311243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1089611224_)))
                       (let ((_hd1090411246_ (##car _e1090311243_))
                             (_tl1090511248_ (##cdr _e1090311243_)))
                         (if (gx#stx-pair? _hd1090411246_)
                             (let ((_e1090611251_ (gx#stx-e _hd1090411246_)))
                               (let ((_hd1090711254_ (##car _e1090611251_))
                                     (_tl1090811256_ (##cdr _e1090611251_)))
                                 (if (gx#identifier? _hd1090711254_)
                                     (if (gx#stx-eq? '%#quote _hd1090711254_)
                                         (if (gx#stx-pair? _tl1090811256_)
                                             (let ((_e1090911259_
                                                    (gx#stx-e _tl1090811256_)))
                                               (let ((_hd1091011262_
                                                      (##car _e1090911259_))
                                                     (_tl1091111264_
                                                      (##cdr _e1090911259_)))
                                                 (if (gx#stx-datum?
                                                      _hd1091011262_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1091011262_)
                         '#f)
                 (if (gx#stx-null? _tl1091111264_)
                     (if (gx#stx-pair? _tl1090511248_)
                         (let ((_e1091211267_ (gx#stx-e _tl1090511248_)))
                           (let ((_hd1091311270_ (##car _e1091211267_))
                                 (_tl1091411272_ (##cdr _e1091211267_)))
                             (if (gx#stx-pair? _hd1091311270_)
                                 (let ((_e1091511275_
                                        (gx#stx-e _hd1091311270_)))
                                   (let ((_hd1091611278_ (##car _e1091511275_))
                                         (_tl1091711280_
                                          (##cdr _e1091511275_)))
                                     (if (gx#identifier? _hd1091611278_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1091611278_)
                                             (if (gx#stx-pair? _tl1091711280_)
                                                 (let ((_e1091811283_
                                                        (gx#stx-e
                                                         _tl1091711280_)))
                                                   (let ((_hd1091911286_
                                                          (##car _e1091811283_))
                                                         (_tl1092011288_
                                                          (##cdr _e1091811283_)))
                                                     (if (gx#stx-null?
                                                          _tl1092011288_)
                                                         (if (gx#stx-pair?
                                                              _tl1091411272_)
                                                             (let ((_e1092111291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1091411272_)))
                       (let ((_hd1092211294_ (##car _e1092111291_))
                             (_tl1092311296_ (##cdr _e1092111291_)))
                         (if (gx#stx-pair? _tl1092311296_)
                             (let ((_e1092411299_ (gx#stx-e _tl1092311296_)))
                               (let ((_hd1092511302_ (##car _e1092411299_))
                                     (_tl1092611304_ (##cdr _e1092411299_)))
                                 (if (gx#stx-pair? _hd1092511302_)
                                     (let ((_e1092711307_
                                            (gx#stx-e _hd1092511302_)))
                                       (let ((_hd1092811310_
                                              (##car _e1092711307_))
                                             (_tl1092911312_
                                              (##cdr _e1092711307_)))
                                         (if (gx#identifier? _hd1092811310_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1092811310_)
                                                 (if (gx#stx-pair?
                                                      _tl1092911312_)
                                                     (let ((_e1093011315_
                                                            (gx#stx-e
                                                             _tl1092911312_)))
                                                       (let ((_hd1093111318_
                                                              (##car _e1093011315_))
                                                             (_tl1093211320_
                                                              (##cdr _e1093011315_)))
                                                         (if (gx#stx-null?
                                                              _tl1093211320_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1092611304_)
                         (let ((_e1093311323_ (gx#stx-e _tl1092611304_)))
                           (let ((_hd1093411326_ (##car _e1093311323_))
                                 (_tl1093511328_ (##cdr _e1093311323_)))
                             (if (gx#stx-pair? _hd1093411326_)
                                 (let ((_e1093611331_
                                        (gx#stx-e _hd1093411326_)))
                                   (let ((_hd1093711334_ (##car _e1093611331_))
                                         (_tl1093811336_
                                          (##cdr _e1093611331_)))
                                     (if (gx#identifier? _hd1093711334_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1093711334_)
                                             (if (gx#stx-pair? _tl1093811336_)
                                                 (let ((_e1093911339_
                                                        (gx#stx-e
                                                         _tl1093811336_)))
                                                   (let ((_hd1094011342_
                                                          (##car _e1093911339_))
                                                         (_tl1094111344_
                                                          (##cdr _e1093911339_)))
                                                     (if (gx#stx-null?
                                                          _tl1094111344_)
                                                         (if (gx#stx-null?
                                                              _tl1093511328_)
                                                             ((lambda (_L11347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L11348_
                               _L11349_
                               _L11350_
                               _L11351_)
                        (let ((__obj16019
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj16019
                             (gx#stx-e _L11351_)
                             '#f
                             (gx#stx-e _L11350_)
                             '0
                             (gx#stx-e _L11347_)
                             (gx#stx-e _L11348_))
                            __obj16019)))
                      _hd1094011342_
                      _hd1093111318_
                      _hd1092211294_
                      _hd1091911286_
                      _hd1090111238_)
                     (_g1088511214_ _g1088811217_))
                 (_g1088511214_ _g1088811217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1088511214_ _g1088811217_))
                                             (_g1088511214_ _g1088811217_))
                                         (_g1088511214_ _g1088811217_))))
                                 (_g1088511214_ _g1088811217_))))
                         (_g1088511214_ _g1088811217_))
                     (_g1088511214_ _g1088811217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1088511214_
                                                      _g1088811217_))
                                                 (_g1088511214_ _g1088811217_))
                                             (_g1088511214_ _g1088811217_))))
                                     (_g1088511214_ _g1088811217_))))
                             (_g1088511214_ _g1088811217_))))
                     (_g1088511214_ _g1088811217_))
                 (_g1088511214_ _g1088811217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1088511214_ _g1088811217_))
                                             (_g1088511214_ _g1088811217_))
                                         (_g1088511214_ _g1088811217_))))
                                 (_g1088511214_ _g1088811217_))))
                         (_g1088511214_ _g1088811217_))
                     (_g1088511214_ _g1088811217_))
                 (_g1088511214_ _g1088811217_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1088511214_
                                                      _g1088811217_))))
                                             (_g1088511214_ _g1088811217_))
                                         (_g1088511214_ _g1088811217_))
                                     (_g1088511214_ _g1088811217_))))
                             (_g1088511214_ _g1088811217_))))
                     (_g1088511214_ _g1088811217_))
                 (_g1088511214_ _g1088811217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1088511214_ _g1088811217_))
                                             (_g1088511214_ _g1088811217_))
                                         (_g1088511214_ _g1088811217_))))
                                 (_g1088511214_ _g1088811217_))))
                         (_g1088511214_ _g1088811217_)))))
              (_g1088411394_ _args10883_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx10808_ _args10809_)
      (let ((_g1081210828_
             (lambda (_g1081310825_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1081310825_))))
        (let ((_g1081110835_ (lambda (_g1081310831_) ((lambda () '#f)))))
          (let ((_g1081010879_
                 (lambda (_g1081310838_)
                   (if (gx#stx-pair? _g1081310838_)
                       (let ((_e1081510840_ (gx#stx-e _g1081310838_)))
                         (let ((_hd1081610843_ (##car _e1081510840_))
                               (_tl1081710845_ (##cdr _e1081510840_)))
                           (if (gx#stx-pair? _hd1081610843_)
                               (let ((_e1081810848_ (gx#stx-e _hd1081610843_)))
                                 (let ((_hd1081910851_ (##car _e1081810848_))
                                       (_tl1082010853_ (##cdr _e1081810848_)))
                                   (if (gx#identifier? _hd1081910851_)
                                       (if (gx#stx-eq? '%#ref _hd1081910851_)
                                           (if (gx#stx-pair? _tl1082010853_)
                                               (let ((_e1082110856_
                                                      (gx#stx-e
                                                       _tl1082010853_)))
                                                 (let ((_hd1082210859_
                                                        (##car _e1082110856_))
                                                       (_tl1082310861_
                                                        (##cdr _e1082110856_)))
                                                   (if (gx#stx-null?
                                                        _tl1082310861_)
                                                       (if (gx#stx-null?
                                                            _tl1081710845_)
                                                           ((lambda (_L10864_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#identifier-symbol
                                                                _L10864_)))
                                                            _hd1082210859_)
                                                           (_g1081110835_
                                                            _g1081310838_))
                                                       (_g1081110835_
                                                        _g1081310838_))))
                                               (_g1081110835_ _g1081310838_))
                                           (_g1081110835_ _g1081310838_))
                                       (_g1081110835_ _g1081310838_))))
                               (_g1081110835_ _g1081310838_))))
                       (_g1081110835_ _g1081310838_)))))
            (_g1081010879_ _args10809_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx10692_ _args10693_)
      (let ((_g1069610722_
             (lambda (_g1069710719_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1069710719_))))
        (let ((_g1069510729_ (lambda (_g1069710725_) ((lambda () '#f)))))
          (let ((_g1069410805_
                 (lambda (_g1069710732_)
                   (if (gx#stx-pair? _g1069710732_)
                       (let ((_e1070010734_ (gx#stx-e _g1069710732_)))
                         (let ((_hd1070110737_ (##car _e1070010734_))
                               (_tl1070210739_ (##cdr _e1070010734_)))
                           (if (gx#stx-pair? _hd1070110737_)
                               (let ((_e1070310742_ (gx#stx-e _hd1070110737_)))
                                 (let ((_hd1070410745_ (##car _e1070310742_))
                                       (_tl1070510747_ (##cdr _e1070310742_)))
                                   (if (gx#identifier? _hd1070410745_)
                                       (if (gx#stx-eq? '%#ref _hd1070410745_)
                                           (if (gx#stx-pair? _tl1070510747_)
                                               (let ((_e1070610750_
                                                      (gx#stx-e
                                                       _tl1070510747_)))
                                                 (let ((_hd1070710753_
                                                        (##car _e1070610750_))
                                                       (_tl1070810755_
                                                        (##cdr _e1070610750_)))
                                                   (if (gx#stx-null?
                                                        _tl1070810755_)
                                                       (if (gx#stx-pair?
                                                            _tl1070210739_)
                                                           (let ((_e1070910758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1070210739_)))
                     (let ((_hd1071010761_ (##car _e1070910758_))
                           (_tl1071110763_ (##cdr _e1070910758_)))
                       (if (gx#stx-pair? _hd1071010761_)
                           (let ((_e1071210766_ (gx#stx-e _hd1071010761_)))
                             (let ((_hd1071310769_ (##car _e1071210766_))
                                   (_tl1071410771_ (##cdr _e1071210766_)))
                               (if (gx#identifier? _hd1071310769_)
                                   (if (gx#stx-eq? '%#quote _hd1071310769_)
                                       (if (gx#stx-pair? _tl1071410771_)
                                           (let ((_e1071510774_
                                                  (gx#stx-e _tl1071410771_)))
                                             (let ((_hd1071610777_
                                                    (##car _e1071510774_))
                                                   (_tl1071710779_
                                                    (##cdr _e1071510774_)))
                                               (if (gx#stx-null?
                                                    _tl1071710779_)
                                                   (if (gx#stx-null?
                                                        _tl1071110763_)
                                                       ((lambda (_L10782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10783_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#identifier-symbol _L10783_)
                   (gx#stx-e _L10782_)))
                _hd1071610777_
                _hd1070710753_)
               (_g1069510729_ _g1069710732_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1069510729_
                                                    _g1069710732_))))
                                           (_g1069510729_ _g1069710732_))
                                       (_g1069510729_ _g1069710732_))
                                   (_g1069510729_ _g1069710732_))))
                           (_g1069510729_ _g1069710732_))))
                   (_g1069510729_ _g1069710732_))
               (_g1069510729_ _g1069710732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1069510729_ _g1069710732_))
                                           (_g1069510729_ _g1069710732_))
                                       (_g1069510729_ _g1069710732_))))
                               (_g1069510729_ _g1069710732_))))
                       (_g1069510729_ _g1069710732_)))))
            (_g1069410805_ _args10693_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx10576_ _args10577_)
      (let ((_g1058010606_
             (lambda (_g1058110603_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1058110603_))))
        (let ((_g1057910613_ (lambda (_g1058110609_) ((lambda () '#f)))))
          (let ((_g1057810689_
                 (lambda (_g1058110616_)
                   (if (gx#stx-pair? _g1058110616_)
                       (let ((_e1058410618_ (gx#stx-e _g1058110616_)))
                         (let ((_hd1058510621_ (##car _e1058410618_))
                               (_tl1058610623_ (##cdr _e1058410618_)))
                           (if (gx#stx-pair? _hd1058510621_)
                               (let ((_e1058710626_ (gx#stx-e _hd1058510621_)))
                                 (let ((_hd1058810629_ (##car _e1058710626_))
                                       (_tl1058910631_ (##cdr _e1058710626_)))
                                   (if (gx#identifier? _hd1058810629_)
                                       (if (gx#stx-eq? '%#ref _hd1058810629_)
                                           (if (gx#stx-pair? _tl1058910631_)
                                               (let ((_e1059010634_
                                                      (gx#stx-e
                                                       _tl1058910631_)))
                                                 (let ((_hd1059110637_
                                                        (##car _e1059010634_))
                                                       (_tl1059210639_
                                                        (##cdr _e1059010634_)))
                                                   (if (gx#stx-null?
                                                        _tl1059210639_)
                                                       (if (gx#stx-pair?
                                                            _tl1058610623_)
                                                           (let ((_e1059310642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1058610623_)))
                     (let ((_hd1059410645_ (##car _e1059310642_))
                           (_tl1059510647_ (##cdr _e1059310642_)))
                       (if (gx#stx-pair? _hd1059410645_)
                           (let ((_e1059610650_ (gx#stx-e _hd1059410645_)))
                             (let ((_hd1059710653_ (##car _e1059610650_))
                                   (_tl1059810655_ (##cdr _e1059610650_)))
                               (if (gx#identifier? _hd1059710653_)
                                   (if (gx#stx-eq? '%#quote _hd1059710653_)
                                       (if (gx#stx-pair? _tl1059810655_)
                                           (let ((_e1059910658_
                                                  (gx#stx-e _tl1059810655_)))
                                             (let ((_hd1060010661_
                                                    (##car _e1059910658_))
                                                   (_tl1060110663_
                                                    (##cdr _e1059910658_)))
                                               (if (gx#stx-null?
                                                    _tl1060110663_)
                                                   (if (gx#stx-null?
                                                        _tl1059510647_)
                                                       ((lambda (_L10666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10667_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#identifier-symbol _L10667_)
                   (gx#stx-e _L10666_)))
                _hd1060010661_
                _hd1059110637_)
               (_g1057910613_ _g1058110616_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1057910613_
                                                    _g1058110616_))))
                                           (_g1057910613_ _g1058110616_))
                                       (_g1057910613_ _g1058110616_))
                                   (_g1057910613_ _g1058110616_))))
                           (_g1057910613_ _g1058110616_))))
                   (_g1057910613_ _g1058110616_))
               (_g1057910613_ _g1058110616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1057910613_ _g1058110616_))
                                           (_g1057910613_ _g1058110616_))
                                       (_g1057910613_ _g1058110616_))))
                               (_g1057910613_ _g1058110616_))))
                       (_g1057910613_ _g1058110616_)))))
            (_g1057810689_ _args10577_))))))
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
    (lambda (_stx10525_)
      (let ((_g1052710540_
             (lambda (_g1052810537_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1052810537_))))
        (let ((_g1052610573_
               (lambda (_g1052810543_)
                 (if (gx#stx-pair? _g1052810543_)
                     (let ((_e1053010545_ (gx#stx-e _g1052810543_)))
                       (let ((_hd1053110548_ (##car _e1053010545_))
                             (_tl1053210550_ (##cdr _e1053010545_)))
                         (if (gx#stx-pair? _tl1053210550_)
                             (let ((_e1053310553_ (gx#stx-e _tl1053210550_)))
                               (let ((_hd1053410556_ (##car _e1053310553_))
                                     (_tl1053510558_ (##cdr _e1053310553_)))
                                 (if (gx#stx-null? _tl1053510558_)
                                     ((lambda (_L10561_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#identifier-symbol _L10561_)))
                                      _hd1053410556_)
                                     (_g1052710540_ _g1052810543_))))
                             (_g1052710540_ _g1052810543_))))
                     (_g1052710540_ _g1052810543_)))))
          (_g1052610573_ _stx10525_)))))
  (define gxc#optimize-call%
    (lambda (_stx10431_)
      (let ((_g1043410454_
             (lambda (_g1043510451_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1043510451_))))
        (let ((_g1043310461_
               (lambda (_g1043510457_)
                 ((lambda () (gxc#xform-call% _stx10431_))))))
          (let ((_g1043210522_
                 (lambda (_g1043510464_)
                   (if (gx#stx-pair? _g1043510464_)
                       (let ((_e1043810466_ (gx#stx-e _g1043510464_)))
                         (let ((_hd1043910469_ (##car _e1043810466_))
                               (_tl1044010471_ (##cdr _e1043810466_)))
                           (if (gx#stx-pair? _tl1044010471_)
                               (let ((_e1044110474_ (gx#stx-e _tl1044010471_)))
                                 (let ((_hd1044210477_ (##car _e1044110474_))
                                       (_tl1044310479_ (##cdr _e1044110474_)))
                                   (if (gx#stx-pair? _hd1044210477_)
                                       (let ((_e1044410482_
                                              (gx#stx-e _hd1044210477_)))
                                         (let ((_hd1044510485_
                                                (##car _e1044410482_))
                                               (_tl1044610487_
                                                (##cdr _e1044410482_)))
                                           (if (gx#identifier? _hd1044510485_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1044510485_)
                                                   (if (gx#stx-pair?
                                                        _tl1044610487_)
                                                       (let ((_e1044710490_
                                                              (gx#stx-e
                                                               _tl1044610487_)))
                                                         (let ((_hd1044810493_
                                                                (##car _e1044710490_))
                                                               (_tl1044910495_
                                                                (##cdr _e1044710490_)))
                                                           (if (gx#stx-null?
                                                                _tl1044910495_)
                                                               ((lambda (_L10498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L10499_)
                          (let ((_rator-id10517_
                                 (gxc#identifier-symbol _L10499_)))
                            (let ((_rator-type10519_
                                   (gxc#optimizer-lookup-type
                                    _rator-id10517_)))
                              (let ()
                                (if _rator-type10519_
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id10517_
                                       '" => "
                                       _rator-type10519_
                                       '" "
                                       (##structure-ref
                                        _rator-type10519_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type10519_
                                       'optimize-call
                                       _stx10431_
                                       _L10498_))
                                    (gxc#xform-call% _stx10431_))))))
                        _tl1044310479_
                        _hd1044810493_)
                       (_g1043310461_ _g1043510464_))))
               (_g1043310461_ _g1043510464_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1043310461_
                                                    _g1043510464_))
                                               (_g1043310461_ _g1043510464_))))
                                       (_g1043310461_ _g1043510464_))))
                               (_g1043310461_ _g1043510464_))))
                       (_g1043310461_ _g1043510464_)))))
            (_g1043210522_ _stx10431_))))))
  (define gxc#!alias::optimize-call
    (lambda (_self10401_ _stx10402_ _args10403_)
      (let ((_self1040410410_ _self10401_))
        (let ((_E1040610414_
               (lambda () (error '"No clause matching" _self1040410410_))))
          (let ((_K1040710423_
                 (lambda (_alias-id10417_)
                   (let ((_alias-type10419_
                          (gxc#optimizer-lookup-type _alias-id10417_)))
                     (if (##structure-instance-of?
                          _alias-type10419_
                          'gxc#!type::t)
                         (call-method
                          _alias-type10419_
                          'optimize-call
                          _stx10402_
                          _args10403_)
                         (let ((_args10421_
                                (gx#stx-map1 gxc#compile-e _args10403_)))
                           (gxc#xform-wrap-source
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons _alias-id10417_ '()))
                                        _args10421_))
                            _stx10402_)))))))
            (if (struct-instance? gxc#!alias::t _self1040410410_)
                (let ((_e1040810426_ (##vector-ref _self1040410410_ '1)))
                  (let ((_alias-id10429_ _e1040810426_))
                    (_K1040710423_ _alias-id10429_)))
                (_E1040610414_)))))))
  (bind-method! gxc#!alias::t 'optimize-call gxc#!alias::optimize-call '#f)
  (define gxc#!struct-pred::optimize-call
    (lambda (_self10256_ _stx10257_ _args10258_)
      (let ((_self1025910265_ _self10256_))
        (let ((_E1026110269_
               (lambda () (error '"No clause matching" _self1025910265_))))
          (let ((_K1026210393_
                 (lambda (_struct-t10272_)
                   (let ((_struct-type10274_
                          (gxc#optimizer-resolve-type _struct-t10272_)))
                     (let ((_struct-type1027510289_ _struct-type10274_))
                       (let ((_E1027910293_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1027510289_))))
                         (let ((_else1027810297_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx10257_
                                   _struct-t10272_
                                   _struct-type10274_))))
                           (let ((_try-match1027710305_
                                  (lambda ()
                                    (let ((_K1028010302_
                                           (lambda ()
                                             (gxc#xform-call% _stx10257_))))
                                      (if (##eq? _struct-type1027510289_ '#f)
                                          (_K1028010302_)
                                          (_else1027810297_))))))
                             (let ((_K1028110368_
                                    (lambda (_plist10308_
                                             _struct-type-id10309_)
                                      (let ((_g1031210322_
                                             (lambda (_g1031310319_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1031310319_))))
                                        (let ((_g1031110329_
                                               (lambda (_g1031310325_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx10257_))))))
                                          (let ((_g1031010365_
                                                 (lambda (_g1031310332_)
                                                   (if (gx#stx-pair?
                                                        _g1031310332_)
                                                       (let ((_e1031510334_
                                                              (gx#stx-e
                                                               _g1031310332_)))
                                                         (let ((_hd1031610337_
                                                                (##car _e1031510334_))
                                                               (_tl1031710339_
                                                                (##cdr _e1031510334_)))
                                                           (if (gx#stx-null?
                                                                _tl1031710339_)
                                                               ((lambda (_L10342_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr10362_ (gxc#compile-e _L10342_))
                                (_op10363_
                                 (if (if _plist10308_
                                         (assgetq 'final: _plist10308_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op10363_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id10309_
                                                     '()))
                                         (cons _expr10362_ '())))
                             _stx10257_)))
                        _hd1031610337_)
                       (_g1031110329_ _g1031310332_))))
               (_g1031110329_ _g1031310332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1031010365_ _args10258_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1027510289_)
                                   (let ((_e1028210371_
                                          (##vector-ref
                                           _struct-type1027510289_
                                           '1)))
                                     (let ((_struct-type-id10374_
                                            _e1028210371_))
                                       (let ((_e1028310376_
                                              (##vector-ref
                                               _struct-type1027510289_
                                               '2)))
                                         (let ((_e1028410379_
                                                (##vector-ref
                                                 _struct-type1027510289_
                                                 '3)))
                                           (let ((_e1028510382_
                                                  (##vector-ref
                                                   _struct-type1027510289_
                                                   '4)))
                                             (let ((_e1028610385_
                                                    (##vector-ref
                                                     _struct-type1027510289_
                                                     '5)))
                                               (let ((_e1028710388_
                                                      (##vector-ref
                                                       _struct-type1027510289_
                                                       '6)))
                                                 (let ((_plist10391_
                                                        _e1028710388_))
                                                   (_K1028110368_
                                                    _plist10391_
                                                    _struct-type-id10374_)))))))))
                                   (_try-match1027710305_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self1025910265_)
                (let ((_e1026310396_ (##vector-ref _self1025910265_ '1)))
                  (let ((_struct-t10399_ _e1026310396_))
                    (_K1026210393_ _struct-t10399_)))
                (_E1026110269_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self10152_ _stx10153_ _args10154_)
      (let ((_self1015510161_ _self10152_))
        (let ((_E1015710165_
               (lambda () (error '"No clause matching" _self1015510161_))))
          (let ((_K1015810248_
                 (lambda (_struct-t10168_)
                   (let ((_struct-type10170_
                          (gxc#optimizer-resolve-type _struct-t10168_)))
                     (let ((_struct-type1017110184_ _struct-type10170_))
                       (let ((_E1017510188_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1017110184_))))
                         (let ((_else1017410192_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx10153_
                                   _struct-t10168_
                                   _struct-type10170_))))
                           (let ((_try-match1017310200_
                                  (lambda ()
                                    (let ((_K1017610197_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t10168_)
                                               (gxc#xform-call% _stx10153_)))))
                                      (if (##eq? _struct-type1017110184_ '#f)
                                          (_K1017610197_)
                                          (_else1017410192_))))))
                             (let ((_K1017710222_
                                    (lambda (_ctor10203_
                                             _xfields10204_
                                             _fields10205_
                                             _type-id10206_)
                                      (let ((_args10208_
                                             (gx#stx-map1
                                              gxc#compile-e
                                              _args10154_)))
                                        (let ((_$e10210_
                                               (if _ctor10203_
                                                   (if _xfields10204_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type10170_
                                                        _ctor10203_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e10210_
                                              ((lambda (_kons10213_)
                                                 (let ((_$obj10215_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj10215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t10168_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields10205_ _xfields10204_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons10213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj10215_ '())) _args10208_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx10153_))
                                          (cons (cons '%#ref
                                                      (cons _$obj10215_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx10153_)))
                                               _$e10210_)
                                              (if (let ((_$e10217_
                                                         _ctor10203_))
                                                    (if _$e10217_
                                                        _$e10217_
                                                        (not _xfields10204_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t10168_ '()))
                             _args10208_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx10153_)
                                                  (let ((_arity10220_
                                                         (fx+ _fields10205_
                                                              _xfields10204_)))
                                                    (if (fx= _arity10220_
                                                             (length _args10208_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t10168_ '()))
                                   _args10208_)))
                 _stx10153_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx10153_
                 _struct-t10168_
                 _arity10220_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1017110184_)
                                   (let ((_e1017810225_
                                          (##vector-ref
                                           _struct-type1017110184_
                                           '1)))
                                     (let ((_type-id10228_ _e1017810225_))
                                       (let ((_e1017910230_
                                              (##vector-ref
                                               _struct-type1017110184_
                                               '2)))
                                         (let ((_e1018010233_
                                                (##vector-ref
                                                 _struct-type1017110184_
                                                 '3)))
                                           (let ((_fields10236_ _e1018010233_))
                                             (let ((_e1018110238_
                                                    (##vector-ref
                                                     _struct-type1017110184_
                                                     '4)))
                                               (let ((_xfields10241_
                                                      _e1018110238_))
                                                 (let ((_e1018210243_
                                                        (##vector-ref
                                                         _struct-type1017110184_
                                                         '5)))
                                                   (let ((_ctor10246_
                                                          _e1018210243_))
                                                     (_K1017710222_
                                                      _ctor10246_
                                                      _xfields10241_
                                                      _fields10236_
                                                      _type-id10228_))))))))))
                                   (_try-match1017310200_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self1015510161_)
                (let ((_e1015910251_ (##vector-ref _self1015510161_ '1)))
                  (let ((_struct-t10254_ _e1015910251_))
                    (_K1015810248_ _struct-t10254_)))
                (_E1015710165_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self10005_ _stx10006_ _args10007_)
      (let ((_self1000810015_ _self10005_))
        (let ((_E1001010019_
               (lambda () (error '"No clause matching" _self1000810015_))))
          (let ((_K1001110139_
                 (lambda (_off10022_ _struct-t10023_)
                   (let ((_struct-type10025_
                          (gxc#optimizer-resolve-type _struct-t10023_)))
                     (let ((_struct-type1002610038_ _struct-type10025_))
                       (let ((_E1003010042_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1002610038_))))
                         (let ((_else1002910046_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx10006_
                                   _struct-t10023_
                                   _struct-type10025_))))
                           (let ((_try-match1002810054_
                                  (lambda ()
                                    (let ((_K1003110051_
                                           (lambda ()
                                             (gxc#xform-call% _stx10006_))))
                                      (if (##eq? _struct-type1002610038_ '#f)
                                          (_K1003110051_)
                                          (_else1002910046_))))))
                             (let ((_K1003210118_
                                    (lambda (_xfields10057_
                                             _fields10058_
                                             _struct-type-id10059_)
                                      (if _xfields10057_
                                          (let ((_g1006210072_
                                                 (lambda (_g1006310069_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1006310069_))))
                                            (let ((_g1006110079_
                                                   (lambda (_g1006310075_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx10006_))))))
                                              (let ((_g1006010115_
                                                     (lambda (_g1006310082_)
                                                       (if (gx#stx-pair?
                                                            _g1006310082_)
                                                           (let ((_e1006510084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1006310082_)))
                     (let ((_hd1006610087_ (##car _e1006510084_))
                           (_tl1006710089_ (##cdr _e1006510084_)))
                       (if (gx#stx-null? _tl1006710089_)
                           ((lambda (_L10092_)
                              (let ((_expr10112_ (gxc#compile-e _L10092_))
                                    (_off10113_
                                     (fx+ _off10022_ _xfields10057_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t10023_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off10113_ '()))
                                                   (cons _expr10112_ '()))))
                                 _stx10006_)))
                            _hd1006610087_)
                           (_g1006110079_ _g1006310082_))))
                   (_g1006110079_ _g1006310082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1006010115_ _args10007_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id10059_)
                                            (gxc#xform-call% _stx10006_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1002610038_)
                                   (let ((_e1003310121_
                                          (##vector-ref
                                           _struct-type1002610038_
                                           '1)))
                                     (let ((_struct-type-id10124_
                                            _e1003310121_))
                                       (let ((_e1003410126_
                                              (##vector-ref
                                               _struct-type1002610038_
                                               '2)))
                                         (let ((_e1003510129_
                                                (##vector-ref
                                                 _struct-type1002610038_
                                                 '3)))
                                           (let ((_fields10132_ _e1003510129_))
                                             (let ((_e1003610134_
                                                    (##vector-ref
                                                     _struct-type1002610038_
                                                     '4)))
                                               (let ((_xfields10137_
                                                      _e1003610134_))
                                                 (_K1003210118_
                                                  _xfields10137_
                                                  _fields10132_
                                                  _struct-type-id10124_))))))))
                                   (_try-match1002810054_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self1000810015_)
                (let ((_e1001210142_ (##vector-ref _self1000810015_ '1)))
                  (let ((_struct-t10145_ _e1001210142_))
                    (let ((_e1001310147_ (##vector-ref _self1000810015_ '2)))
                      (let ((_off10150_ _e1001310147_))
                        (_K1001110139_ _off10150_ _struct-t10145_)))))
                (_E1001010019_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self9841_ _stx9842_ _args9843_)
      (let ((_self98449851_ _self9841_))
        (let ((_E98469855_
               (lambda () (error '"No clause matching" _self98449851_))))
          (let ((_K98479992_
                 (lambda (_off9858_ _struct-t9859_)
                   (let ((_struct-type9861_
                          (gxc#optimizer-resolve-type _struct-t9859_)))
                     (let ((_struct-type98629874_ _struct-type9861_))
                       (let ((_E98669878_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type98629874_))))
                         (let ((_else98659882_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx9842_
                                   _struct-t9859_
                                   _struct-type9861_))))
                           (let ((_try-match98649890_
                                  (lambda ()
                                    (let ((_K98679887_
                                           (lambda ()
                                             (gxc#xform-call% _stx9842_))))
                                      (if (##eq? _struct-type98629874_ '#f)
                                          (_K98679887_)
                                          (_else98659882_))))))
                             (let ((_K98689971_
                                    (lambda (_xfields9893_
                                             _fields9894_
                                             _struct-type-id9895_)
                                      (if _xfields9893_
                                          (let ((_g98989912_
                                                 (lambda (_g98999909_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g98999909_))))
                                            (let ((_g98979919_
                                                   (lambda (_g98999915_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx9842_))))))
                                              (let ((_g98969968_
                                                     (lambda (_g98999922_)
                                                       (if (gx#stx-pair?
                                                            _g98999922_)
                                                           (let ((_e99029924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g98999922_)))
                     (let ((_hd99039927_ (##car _e99029924_))
                           (_tl99049929_ (##cdr _e99029924_)))
                       (if (gx#stx-pair? _tl99049929_)
                           (let ((_e99059932_ (gx#stx-e _tl99049929_)))
                             (let ((_hd99069935_ (##car _e99059932_))
                                   (_tl99079937_ (##cdr _e99059932_)))
                               (if (gx#stx-null? _tl99079937_)
                                   ((lambda (_L9940_ _L9941_)
                                      (let ((_expr9964_
                                             (gxc#compile-e _L9941_))
                                            (_val9965_ (gxc#compile-e _L9940_))
                                            (_off9966_
                                             (fx+ _off9858_ _xfields9893_ '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t9859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off9966_ '()))
                   (cons _expr9964_ (cons _val9965_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx9842_)))
                                    _hd99069935_
                                    _hd99039927_)
                                   (_g98979919_ _g98999922_))))
                           (_g98979919_ _g98999922_))))
                   (_g98979919_ _g98999922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g98969968_ _args9843_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id9895_)
                                            (gxc#xform-call% _stx9842_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type98629874_)
                                   (let ((_e98699974_
                                          (##vector-ref
                                           _struct-type98629874_
                                           '1)))
                                     (let ((_struct-type-id9977_ _e98699974_))
                                       (let ((_e98709979_
                                              (##vector-ref
                                               _struct-type98629874_
                                               '2)))
                                         (let ((_e98719982_
                                                (##vector-ref
                                                 _struct-type98629874_
                                                 '3)))
                                           (let ((_fields9985_ _e98719982_))
                                             (let ((_e98729987_
                                                    (##vector-ref
                                                     _struct-type98629874_
                                                     '4)))
                                               (let ((_xfields9990_
                                                      _e98729987_))
                                                 (_K98689971_
                                                  _xfields9990_
                                                  _fields9985_
                                                  _struct-type-id9977_))))))))
                                   (_try-match98649890_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self98449851_)
                (let ((_e98489995_ (##vector-ref _self98449851_ '1)))
                  (let ((_struct-t9998_ _e98489995_))
                    (let ((_e984910000_ (##vector-ref _self98449851_ '2)))
                      (let ((_off10003_ _e984910000_))
                        (_K98479992_ _off10003_ _struct-t9998_)))))
                (_E98469855_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self9802_ _stx9803_ _args9804_)
      (let ((_self98059813_ _self9802_))
        (let ((_E98079817_
               (lambda () (error '"No clause matching" _self98059813_))))
          (let ((_K98089825_
                 (lambda (_dispatch9820_ _arity9821_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self9802_ _args9804_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx9803_
                          _arity9821_))
                     (if _dispatch9820_
                         (let ((_args9823_
                                (gx#stx-map1 gxc#compile-e _args9804_)))
                           (begin
                             (gxc#verbose
                              '"dispatch lambda => "
                              _dispatch9820_)
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch9820_ '()))
                                          _args9823_))
                              _stx9803_)))
                         (gxc#xform-call% _stx9803_))))))
            (if (struct-instance? gxc#!lambda::t _self98059813_)
                (let ((_e98099828_ (##vector-ref _self98059813_ '1)))
                  (let ((_e98109831_ (##vector-ref _self98059813_ '2)))
                    (let ((_arity9834_ _e98109831_))
                      (let ((_e98119836_ (##vector-ref _self98059813_ '3)))
                        (let ((_dispatch9839_ _e98119836_))
                          (_K98089825_ _dispatch9839_ _arity9834_))))))
                (_E98079817_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self9762_ _stx9763_ _args9764_)
      (let ((_self97659772_ _self9762_))
        (let ((_E97679776_
               (lambda () (error '"No clause matching" _self97659772_))))
          (let ((_K97689791_
                 (lambda (_clauses9779_)
                   (let ((_$e9785_
                          (find (lambda (_g97809782_)
                                  (gxc#!lambda-arity-match?
                                   _g97809782_
                                   _args9764_))
                                _clauses9779_)))
                     (if _$e9785_
                         ((lambda (_clause9788_)
                            (call-method
                             _clause9788_
                             'optimize-call
                             _stx9763_
                             _args9764_))
                          _$e9785_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx9763_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses9779_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses9779_)))))))
            (if (struct-instance? gxc#!case-lambda::t _self97659772_)
                (let ((_e97699794_ (##vector-ref _self97659772_ '1)))
                  (let ((_e97709797_ (##vector-ref _self97659772_ '2)))
                    (let ((_clauses9800_ _e97709797_))
                      (_K97689791_ _clauses9800_))))
                (_E97679776_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self9698_ _args9699_)
      (let ((_self97009707_ _self9698_))
        (let ((_E97029711_
               (lambda () (error '"No clause matching" _self97009707_))))
          (let ((_K97039751_
                 (lambda (_arity9714_)
                   (let ((_arity97159724_ _arity9714_))
                     (let ((_E97189728_
                            (lambda ()
                              (error '"No clause matching" _arity97159724_))))
                       (let ((_try-match97179744_
                              (lambda ()
                                (let ((_K97199734_
                                       (lambda (_arity9732_)
                                         (fx>= (gx#stx-length _args9699_)
                                               _arity9732_))))
                                  (if (##pair? _arity97159724_)
                                      (let ((_hd97209737_
                                             (##car _arity97159724_))
                                            (_tl97219739_
                                             (##cdr _arity97159724_)))
                                        (let ((_arity9742_ _hd97209737_))
                                          (if (##null? _tl97219739_)
                                              (_K97199734_ _arity9742_)
                                              (_E97189728_))))
                                      (_E97189728_))))))
                         (let ((_K97229748_
                                (lambda ()
                                  (fx= (gx#stx-length _args9699_)
                                       _arity9714_))))
                           (if (fixnum? _arity97159724_)
                               (_K97229748_)
                               (_try-match97179744_)))))))))
            (if (struct-instance? gxc#!lambda::t _self97009707_)
                (let ((_e97049754_ (##vector-ref _self97009707_ '1)))
                  (let ((_e97059757_ (##vector-ref _self97009707_ '2)))
                    (let ((_arity9760_ _e97059757_))
                      (_K97039751_ _arity9760_))))
                (_E97029711_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx9638_)
      (let ((_g96409654_
             (lambda (_g96419651_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96419651_))))
        (let ((_g96399695_
               (lambda (_g96419657_)
                 (if (gx#stx-pair? _g96419657_)
                     (let ((_e96449659_ (gx#stx-e _g96419657_)))
                       (let ((_hd96459662_ (##car _e96449659_))
                             (_tl96469664_ (##cdr _e96449659_)))
                         (if (gx#stx-pair? _tl96469664_)
                             (let ((_e96479667_ (gx#stx-e _tl96469664_)))
                               (let ((_hd96489670_ (##car _e96479667_))
                                     (_tl96499672_ (##cdr _e96479667_)))
                                 ((lambda (_L9675_ _L9676_)
                                    (let ((_ctx9689_
                                           (gx#syntax-local-e__0 _L9676_)))
                                      (let ((_code9691_
                                             (##structure-ref
                                              _ctx9689_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code9691_))
                                           gx#current-expander-context
                                           _ctx9689_)))))
                                  _tl96499672_
                                  _hd96489670_)))
                             (_g96409654_ _g96419657_))))
                     (_g96409654_ _g96419657_)))))
          (_g96399695_ _stx9638_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx9445_)
      (let ((_generate-e9447_
             (lambda (_id9627_)
               (let ((_sym9629_ (gxc#identifier-symbol _id9627_)))
                 (let ((_$e9631_ (gxc#optimizer-lookup-type _sym9629_)))
                   (if _$e9631_
                       ((lambda (_type9634_)
                          (let ((_typedecl9636_
                                 (call-method _type9634_ 'typedecl)))
                            (cons 'declare-type
                                  (cons _sym9629_ (cons _typedecl9636_ '())))))
                        _$e9631_)
                       '(begin)))))))
        (let ((_g94509488_
               (lambda (_g94519485_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g94519485_))))
          (let ((_g94499572_
                 (lambda (_g94519491_)
                   (if (gx#stx-pair? _g94519491_)
                       (let ((_e94669493_ (gx#stx-e _g94519491_)))
                         (let ((_hd94679496_ (##car _e94669493_))
                               (_tl94689498_ (##cdr _e94669493_)))
                           (if (gx#stx-pair? _tl94689498_)
                               (let ((_e94699501_ (gx#stx-e _tl94689498_)))
                                 (let ((_hd94709504_ (##car _e94699501_))
                                       (_tl94719506_ (##cdr _e94699501_)))
                                   (if (gx#stx-pair/null? _hd94709504_)
                                       (if (fx>= (gx#stx-length _hd94709504_)
                                                 '0)
                                           (let ((_g16054_
                                                  (gx#syntax-split-splice
                                                   _hd94709504_
                                                   '0)))
                                             (begin
                                               (let ((_g16055_
                                                      (values-count _g16054_)))
                                                 (if (not (fx= _g16055_ 2))
                                                     (error "Context expects 2 values"
                                                            _g16055_)))
                                               (let ((_target94729509_
                                                      (values-ref _g16054_ 0))
                                                     (_tl94749511_
                                                      (values-ref _g16054_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl94749511_)
                                                     (letrec ((_loop94759514_
                                                               (lambda (_hd94739517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id94799519_)
                         (if (gx#stx-pair? _hd94739517_)
                             (let ((_e94769522_ (gx#stx-e _hd94739517_)))
                               (let ((_lp-hd94779525_ (##car _e94769522_))
                                     (_lp-tl94789527_ (##cdr _e94769522_)))
                                 (_loop94759514_
                                  _lp-tl94789527_
                                  (cons _lp-hd94779525_ _id94799519_))))
                             (let ((_id94809530_ (reverse _id94799519_)))
                               (if (gx#stx-pair? _tl94719506_)
                                   (let ((_e94819533_ (gx#stx-e _tl94719506_)))
                                     (let ((_hd94829536_ (##car _e94819533_))
                                           (_tl94839538_ (##cdr _e94819533_)))
                                       (if (gx#stx-null? _tl94839538_)
                                           ((lambda (_L9541_)
                                              (let ((_ids9567_
                                                     (filter gx#stx-e
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g95599562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g95609564_)
                                (cons _g95599562_ _g95609564_))
                              '()
                              _L9541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_types9569_
                                                       (map _generate-e9447_
                                                            _ids9567_)))
                                                  (let ()
                                                    (cons 'begin
                                                          _types9569_)))))
                                            _id94809530_)
                                           (_g94509488_ _g94519491_))))
                                   (_g94509488_ _g94519491_)))))))
               (_loop94759514_ _target94729509_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94509488_
                                                      _g94519491_)))))
                                           (_g94509488_ _g94519491_))
                                       (_g94509488_ _g94519491_))))
                               (_g94509488_ _g94519491_))))
                       (_g94509488_ _g94519491_)))))
            (let ((_g94489624_
                   (lambda (_g94519575_)
                     (if (gx#stx-pair? _g94519575_)
                         (let ((_e94539577_ (gx#stx-e _g94519575_)))
                           (let ((_hd94549580_ (##car _e94539577_))
                                 (_tl94559582_ (##cdr _e94539577_)))
                             (if (gx#stx-pair? _tl94559582_)
                                 (let ((_e94569585_ (gx#stx-e _tl94559582_)))
                                   (let ((_hd94579588_ (##car _e94569585_))
                                         (_tl94589590_ (##cdr _e94569585_)))
                                     (if (gx#stx-pair? _hd94579588_)
                                         (let ((_e94599593_
                                                (gx#stx-e _hd94579588_)))
                                           (let ((_hd94609596_
                                                  (##car _e94599593_))
                                                 (_tl94619598_
                                                  (##cdr _e94599593_)))
                                             (if (gx#stx-null? _tl94619598_)
                                                 (if (gx#stx-pair?
                                                      _tl94589590_)
                                                     (let ((_e94629601_
                                                            (gx#stx-e
                                                             _tl94589590_)))
                                                       (let ((_hd94639604_
                                                              (##car _e94629601_))
                                                             (_tl94649606_
                                                              (##cdr _e94629601_)))
                                                         (if (gx#stx-null?
                                                              _tl94649606_)
                                                             ((lambda (_L9609_)
                                                                (_generate-e9447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L9609_))
                      _hd94609596_)
                     (_g94499572_ _g94519575_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94499572_ _g94519575_))
                                                 (_g94499572_ _g94519575_))))
                                         (_g94499572_ _g94519575_))))
                                 (_g94499572_ _g94519575_))))
                         (_g94499572_ _g94519575_)))))
              (_g94489624_ _stx9445_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx8999_)
      (let ((_g90039105_
             (lambda (_g90049102_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g90049102_))))
        (let ((_g90029112_ (lambda (_g90049108_) ((lambda () '(begin))))))
          (let ((_g90019262_
                 (lambda (_g90049115_)
                   (if (gx#stx-pair? _g90049115_)
                       (let ((_e90629117_ (gx#stx-e _g90049115_)))
                         (let ((_hd90639120_ (##car _e90629117_))
                               (_tl90649122_ (##cdr _e90629117_)))
                           (if (gx#stx-pair? _tl90649122_)
                               (let ((_e90659125_ (gx#stx-e _tl90649122_)))
                                 (let ((_hd90669128_ (##car _e90659125_))
                                       (_tl90679130_ (##cdr _e90659125_)))
                                   (if (gx#stx-pair? _hd90669128_)
                                       (let ((_e90689133_
                                              (gx#stx-e _hd90669128_)))
                                         (let ((_hd90699136_
                                                (##car _e90689133_))
                                               (_tl90709138_
                                                (##cdr _e90689133_)))
                                           (if (gx#identifier? _hd90699136_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd90699136_)
                                                   (if (gx#stx-pair?
                                                        _tl90709138_)
                                                       (let ((_e90719141_
                                                              (gx#stx-e
                                                               _tl90709138_)))
                                                         (let ((_hd90729144_
                                                                (##car _e90719141_))
                                                               (_tl90739146_
                                                                (##cdr _e90719141_)))
                                                           (if (gx#stx-null?
                                                                _tl90739146_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl90679130_)
                           (let ((_e90749149_ (gx#stx-e _tl90679130_)))
                             (let ((_hd90759152_ (##car _e90749149_))
                                   (_tl90769154_ (##cdr _e90749149_)))
                               (if (gx#stx-pair? _hd90759152_)
                                   (let ((_e90779157_ (gx#stx-e _hd90759152_)))
                                     (let ((_hd90789160_ (##car _e90779157_))
                                           (_tl90799162_ (##cdr _e90779157_)))
                                       (if (gx#identifier? _hd90789160_)
                                           (if (gx#stx-eq? '%#ref _hd90789160_)
                                               (if (gx#stx-pair? _tl90799162_)
                                                   (let ((_e90809165_
                                                          (gx#stx-e
                                                           _tl90799162_)))
                                                     (let ((_hd90819168_
                                                            (##car _e90809165_))
                                                           (_tl90829170_
                                                            (##cdr _e90809165_)))
                                                       (if (gx#stx-null?
                                                            _tl90829170_)
                                                           (if (gx#stx-pair?
                                                                _tl90769154_)
                                                               (let ((_e90839173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl90769154_)))
                         (let ((_hd90849176_ (##car _e90839173_))
                               (_tl90859178_ (##cdr _e90839173_)))
                           (if (gx#stx-pair? _hd90849176_)
                               (let ((_e90869181_ (gx#stx-e _hd90849176_)))
                                 (let ((_hd90879184_ (##car _e90869181_))
                                       (_tl90889186_ (##cdr _e90869181_)))
                                   (if (gx#identifier? _hd90879184_)
                                       (if (gx#stx-eq? '%#quote _hd90879184_)
                                           (if (gx#stx-pair? _tl90889186_)
                                               (let ((_e90899189_
                                                      (gx#stx-e _tl90889186_)))
                                                 (let ((_hd90909192_
                                                        (##car _e90899189_))
                                                       (_tl90919194_
                                                        (##cdr _e90899189_)))
                                                   (if (gx#stx-null?
                                                        _tl90919194_)
                                                       (if (gx#stx-pair?
                                                            _tl90859178_)
                                                           (let ((_e90929197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl90859178_)))
                     (let ((_hd90939200_ (##car _e90929197_))
                           (_tl90949202_ (##cdr _e90929197_)))
                       (if (gx#stx-pair? _hd90939200_)
                           (let ((_e90959205_ (gx#stx-e _hd90939200_)))
                             (let ((_hd90969208_ (##car _e90959205_))
                                   (_tl90979210_ (##cdr _e90959205_)))
                               (if (gx#identifier? _hd90969208_)
                                   (if (gx#stx-eq? '%#ref _hd90969208_)
                                       (if (gx#stx-pair? _tl90979210_)
                                           (let ((_e90989213_
                                                  (gx#stx-e _tl90979210_)))
                                             (let ((_hd90999216_
                                                    (##car _e90989213_))
                                                   (_tl91009218_
                                                    (##cdr _e90989213_)))
                                               (if (gx#stx-null? _tl91009218_)
                                                   (if (gx#stx-null?
                                                        _tl90949202_)
                                                       ((lambda (_L9221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L9222_
                         _L9223_
                         _L9224_)
                  (if (eq? (gxc#identifier-symbol
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#identifier-symbol _L9223_)
                                  (cons (gx#stx-e _L9222_)
                                        (cons (gxc#identifier-symbol _L9221_)
                                              (cons '#f '())))))
                      (_g90029112_ _g90049115_)))
                _hd90999216_
                _hd90909192_
                _hd90819168_
                _hd90729144_)
               (_g90029112_ _g90049115_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g90029112_ _g90049115_))))
                                           (_g90029112_ _g90049115_))
                                       (_g90029112_ _g90049115_))
                                   (_g90029112_ _g90049115_))))
                           (_g90029112_ _g90049115_))))
                   (_g90029112_ _g90049115_))
               (_g90029112_ _g90049115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g90029112_ _g90049115_))
                                           (_g90029112_ _g90049115_))
                                       (_g90029112_ _g90049115_))))
                               (_g90029112_ _g90049115_))))
                       (_g90029112_ _g90049115_))
                   (_g90029112_ _g90049115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g90029112_ _g90049115_))
                                               (_g90029112_ _g90049115_))
                                           (_g90029112_ _g90049115_))))
                                   (_g90029112_ _g90049115_))))
                           (_g90029112_ _g90049115_))
                       (_g90029112_ _g90049115_))))
               (_g90029112_ _g90049115_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g90029112_ _g90049115_))
                                               (_g90029112_ _g90049115_))))
                                       (_g90029112_ _g90049115_))))
                               (_g90029112_ _g90049115_))))
                       (_g90029112_ _g90049115_)))))
            (let ((_g90009442_
                   (lambda (_g90049265_)
                     (if (gx#stx-pair? _g90049265_)
                         (let ((_e90109267_ (gx#stx-e _g90049265_)))
                           (let ((_hd90119270_ (##car _e90109267_))
                                 (_tl90129272_ (##cdr _e90109267_)))
                             (if (gx#stx-pair? _tl90129272_)
                                 (let ((_e90139275_ (gx#stx-e _tl90129272_)))
                                   (let ((_hd90149278_ (##car _e90139275_))
                                         (_tl90159280_ (##cdr _e90139275_)))
                                     (if (gx#stx-pair? _hd90149278_)
                                         (let ((_e90169283_
                                                (gx#stx-e _hd90149278_)))
                                           (let ((_hd90179286_
                                                  (##car _e90169283_))
                                                 (_tl90189288_
                                                  (##cdr _e90169283_)))
                                             (if (gx#identifier? _hd90179286_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd90179286_)
                                                     (if (gx#stx-pair?
                                                          _tl90189288_)
                                                         (let ((_e90199291_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl90189288_)))
                   (let ((_hd90209294_ (##car _e90199291_))
                         (_tl90219296_ (##cdr _e90199291_)))
                     (if (gx#stx-null? _tl90219296_)
                         (if (gx#stx-pair? _tl90159280_)
                             (let ((_e90229299_ (gx#stx-e _tl90159280_)))
                               (let ((_hd90239302_ (##car _e90229299_))
                                     (_tl90249304_ (##cdr _e90229299_)))
                                 (if (gx#stx-pair? _hd90239302_)
                                     (let ((_e90259307_
                                            (gx#stx-e _hd90239302_)))
                                       (let ((_hd90269310_ (##car _e90259307_))
                                             (_tl90279312_
                                              (##cdr _e90259307_)))
                                         (if (gx#identifier? _hd90269310_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd90269310_)
                                                 (if (gx#stx-pair?
                                                      _tl90279312_)
                                                     (let ((_e90289315_
                                                            (gx#stx-e
                                                             _tl90279312_)))
                                                       (let ((_hd90299318_
                                                              (##car _e90289315_))
                                                             (_tl90309320_
                                                              (##cdr _e90289315_)))
                                                         (if (gx#stx-null?
                                                              _tl90309320_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl90249304_)
                         (let ((_e90319323_ (gx#stx-e _tl90249304_)))
                           (let ((_hd90329326_ (##car _e90319323_))
                                 (_tl90339328_ (##cdr _e90319323_)))
                             (if (gx#stx-pair? _hd90329326_)
                                 (let ((_e90349331_ (gx#stx-e _hd90329326_)))
                                   (let ((_hd90359334_ (##car _e90349331_))
                                         (_tl90369336_ (##cdr _e90349331_)))
                                     (if (gx#identifier? _hd90359334_)
                                         (if (gx#stx-eq? '%#quote _hd90359334_)
                                             (if (gx#stx-pair? _tl90369336_)
                                                 (let ((_e90379339_
                                                        (gx#stx-e
                                                         _tl90369336_)))
                                                   (let ((_hd90389342_
                                                          (##car _e90379339_))
                                                         (_tl90399344_
                                                          (##cdr _e90379339_)))
                                                     (if (gx#stx-null?
                                                          _tl90399344_)
                                                         (if (gx#stx-pair?
                                                              _tl90339328_)
                                                             (let ((_e90409347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl90339328_)))
                       (let ((_hd90419350_ (##car _e90409347_))
                             (_tl90429352_ (##cdr _e90409347_)))
                         (if (gx#stx-pair? _hd90419350_)
                             (let ((_e90439355_ (gx#stx-e _hd90419350_)))
                               (let ((_hd90449358_ (##car _e90439355_))
                                     (_tl90459360_ (##cdr _e90439355_)))
                                 (if (gx#identifier? _hd90449358_)
                                     (if (gx#stx-eq? '%#ref _hd90449358_)
                                         (if (gx#stx-pair? _tl90459360_)
                                             (let ((_e90469363_
                                                    (gx#stx-e _tl90459360_)))
                                               (let ((_hd90479366_
                                                      (##car _e90469363_))
                                                     (_tl90489368_
                                                      (##cdr _e90469363_)))
                                                 (if (gx#stx-null?
                                                      _tl90489368_)
                                                     (if (gx#stx-pair?
                                                          _tl90429352_)
                                                         (let ((_e90499371_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl90429352_)))
                   (let ((_hd90509374_ (##car _e90499371_))
                         (_tl90519376_ (##cdr _e90499371_)))
                     (if (gx#stx-pair? _hd90509374_)
                         (let ((_e90529379_ (gx#stx-e _hd90509374_)))
                           (let ((_hd90539382_ (##car _e90529379_))
                                 (_tl90549384_ (##cdr _e90529379_)))
                             (if (gx#identifier? _hd90539382_)
                                 (if (gx#stx-eq? '%#quote _hd90539382_)
                                     (if (gx#stx-pair? _tl90549384_)
                                         (let ((_e90559387_
                                                (gx#stx-e _tl90549384_)))
                                           (let ((_hd90569390_
                                                  (##car _e90559387_))
                                                 (_tl90579392_
                                                  (##cdr _e90559387_)))
                                             (if (gx#stx-null? _tl90579392_)
                                                 (if (gx#stx-null?
                                                      _tl90519376_)
                                                     ((lambda (_L9395_
                                                               _L9396_
                                                               _L9397_
                                                               _L9398_
                                                               _L9399_)
                                                        (if (eq? (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9399_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#identifier-symbol _L9398_)
                                (cons (gx#stx-e _L9397_)
                                      (cons (gxc#identifier-symbol _L9396_)
                                            (cons (gx#stx-e _L9395_) '())))))
                    (_g90019262_ _g90049265_)))
              _hd90569390_
              _hd90479366_
              _hd90389342_
              _hd90299318_
              _hd90209294_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g90019262_ _g90049265_))
                                                 (_g90019262_ _g90049265_))))
                                         (_g90019262_ _g90049265_))
                                     (_g90019262_ _g90049265_))
                                 (_g90019262_ _g90049265_))))
                         (_g90019262_ _g90049265_))))
                 (_g90019262_ _g90049265_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g90019262_
                                                      _g90049265_))))
                                             (_g90019262_ _g90049265_))
                                         (_g90019262_ _g90049265_))
                                     (_g90019262_ _g90049265_))))
                             (_g90019262_ _g90049265_))))
                     (_g90019262_ _g90049265_))
                 (_g90019262_ _g90049265_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g90019262_ _g90049265_))
                                             (_g90019262_ _g90049265_))
                                         (_g90019262_ _g90049265_))))
                                 (_g90019262_ _g90049265_))))
                         (_g90019262_ _g90049265_))
                     (_g90019262_ _g90049265_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g90019262_ _g90049265_))
                                                 (_g90019262_ _g90049265_))
                                             (_g90019262_ _g90049265_))))
                                     (_g90019262_ _g90049265_))))
                             (_g90019262_ _g90049265_))
                         (_g90019262_ _g90049265_))))
                 (_g90019262_ _g90049265_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g90019262_ _g90049265_))
                                                 (_g90019262_ _g90049265_))))
                                         (_g90019262_ _g90049265_))))
                                 (_g90019262_ _g90049265_))))
                         (_g90019262_ _g90049265_)))))
              (_g90009442_ _stx8999_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self8975_)
      (let ((_self89768982_ _self8975_))
        (let ((_E89788986_
               (lambda () (error '"No clause matching" _self89768982_))))
          (let ((_K89798991_
                 (lambda (_alias-id8989_)
                   (cons '@alias (cons _alias-id8989_ '())))))
            (if (struct-instance? gxc#!alias::t _self89768982_)
                (let ((_e89808994_ (##vector-ref _self89768982_ '1)))
                  (let ((_alias-id8997_ _e89808994_))
                    (_K89798991_ _alias-id8997_)))
                (_E89788986_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self8919_)
      (let ((_self89208931_ _self8919_))
        (let ((_E89228935_
               (lambda () (error '"No clause matching" _self89208931_))))
          (let ((_K89238944_
                 (lambda (_plist8938_
                          _ctor8939_
                          _fields8940_
                          _super8941_
                          _type-id8942_)
                   (cons '@struct-type
                         (cons _type-id8942_
                               (cons _super8941_
                                     (cons _fields8940_
                                           (cons _ctor8939_
                                                 (cons _plist8938_ '())))))))))
            (if (struct-instance? gxc#!struct-type::t _self89208931_)
                (let ((_e89248947_ (##vector-ref _self89208931_ '1)))
                  (let ((_type-id8950_ _e89248947_))
                    (let ((_e89258952_ (##vector-ref _self89208931_ '2)))
                      (let ((_super8955_ _e89258952_))
                        (let ((_e89268957_ (##vector-ref _self89208931_ '3)))
                          (let ((_fields8960_ _e89268957_))
                            (let ((_e89278962_
                                   (##vector-ref _self89208931_ '4)))
                              (let ((_e89288965_
                                     (##vector-ref _self89208931_ '5)))
                                (let ((_ctor8968_ _e89288965_))
                                  (let ((_e89298970_
                                         (##vector-ref _self89208931_ '6)))
                                    (let ((_plist8973_ _e89298970_))
                                      (_K89238944_
                                       _plist8973_
                                       _ctor8968_
                                       _fields8960_
                                       _super8955_
                                       _type-id8950_))))))))))))
                (_E89228935_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self8895_)
      (let ((_self88968902_ _self8895_))
        (let ((_E88988906_
               (lambda () (error '"No clause matching" _self88968902_))))
          (let ((_K88998911_
                 (lambda (_struct-t8909_)
                   (cons '@struct-pred (cons _struct-t8909_ '())))))
            (if (struct-instance? gxc#!struct-pred::t _self88968902_)
                (let ((_e89008914_ (##vector-ref _self88968902_ '1)))
                  (let ((_struct-t8917_ _e89008914_))
                    (_K88998911_ _struct-t8917_)))
                (_E88988906_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self8871_)
      (let ((_self88728878_ _self8871_))
        (let ((_E88748882_
               (lambda () (error '"No clause matching" _self88728878_))))
          (let ((_K88758887_
                 (lambda (_struct-t8885_)
                   (cons '@struct-cons (cons _struct-t8885_ '())))))
            (if (struct-instance? gxc#!struct-cons::t _self88728878_)
                (let ((_e88768890_ (##vector-ref _self88728878_ '1)))
                  (let ((_struct-t8893_ _e88768890_))
                    (_K88758887_ _struct-t8893_)))
                (_E88748882_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self8840_)
      (let ((_self88418848_ _self8840_))
        (let ((_E88438852_
               (lambda () (error '"No clause matching" _self88418848_))))
          (let ((_K88448858_
                 (lambda (_off8855_ _struct-t8856_)
                   (cons '@struct-getf
                         (cons _struct-t8856_ (cons _off8855_ '()))))))
            (if (struct-instance? gxc#!struct-getf::t _self88418848_)
                (let ((_e88458861_ (##vector-ref _self88418848_ '1)))
                  (let ((_struct-t8864_ _e88458861_))
                    (let ((_e88468866_ (##vector-ref _self88418848_ '2)))
                      (let ((_off8869_ _e88468866_))
                        (_K88448858_ _off8869_ _struct-t8864_)))))
                (_E88438852_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self8809_)
      (let ((_self88108817_ _self8809_))
        (let ((_E88128821_
               (lambda () (error '"No clause matching" _self88108817_))))
          (let ((_K88138827_
                 (lambda (_off8824_ _struct-t8825_)
                   (cons '@struct-setf
                         (cons _struct-t8825_ (cons _off8824_ '()))))))
            (if (struct-instance? gxc#!struct-setf::t _self88108817_)
                (let ((_e88148830_ (##vector-ref _self88108817_ '1)))
                  (let ((_struct-t8833_ _e88148830_))
                    (let ((_e88158835_ (##vector-ref _self88108817_ '2)))
                      (let ((_off8838_ _e88158835_))
                        (_K88138827_ _off8838_ _struct-t8833_)))))
                (_E88128821_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self8774_)
      (let ((_self87758783_ _self8774_))
        (let ((_E87778787_
               (lambda () (error '"No clause matching" _self87758783_))))
          (let ((_K87788793_
                 (lambda (_dispatch8790_ _arity8791_)
                   (cons '@lambda
                         (cons _arity8791_ (cons _dispatch8790_ '()))))))
            (if (struct-instance? gxc#!lambda::t _self87758783_)
                (let ((_e87798796_ (##vector-ref _self87758783_ '1)))
                  (let ((_e87808799_ (##vector-ref _self87758783_ '2)))
                    (let ((_arity8802_ _e87808799_))
                      (let ((_e87818804_ (##vector-ref _self87758783_ '3)))
                        (let ((_dispatch8807_ _e87818804_))
                          (_K87788793_ _dispatch8807_ _arity8802_))))))
                (_E87778787_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self8707_)
      (let ((_clause-e8709_
             (lambda (_clause8739_)
               (let ((_clause87408748_ _clause8739_))
                 (let ((_E87428752_
                        (lambda ()
                          (error '"No clause matching" _clause87408748_))))
                   (let ((_K87438758_
                          (lambda (_dispatch8755_ _arity8756_)
                            (cons _arity8756_ (cons _dispatch8755_ '())))))
                     (if (struct-instance? gxc#!lambda::t _clause87408748_)
                         (let ((_e87448761_
                                (##vector-ref _clause87408748_ '1)))
                           (let ((_e87458764_
                                  (##vector-ref _clause87408748_ '2)))
                             (let ((_arity8767_ _e87458764_))
                               (let ((_e87468769_
                                      (##vector-ref _clause87408748_ '3)))
                                 (let ((_dispatch8772_ _e87468769_))
                                   (_K87438758_
                                    _dispatch8772_
                                    _arity8767_))))))
                         (_E87428752_))))))))
        (let ((_self87108717_ _self8707_))
          (let ((_E87128721_
                 (lambda () (error '"No clause matching" _self87108717_))))
            (let ((_K87138728_
                   (lambda (_clauses8724_)
                     (let ((_clauses8726_ (map _clause-e8709_ _clauses8724_)))
                       (cons '@case-lambda _clauses8726_)))))
              (if (struct-instance? gxc#!case-lambda::t _self87108717_)
                  (let ((_e87148731_ (##vector-ref _self87108717_ '1)))
                    (let ((_e87158734_ (##vector-ref _self87108717_ '2)))
                      (let ((_clauses8737_ _e87158734_))
                        (_K87138728_ _clauses8737_))))
                  (_E87128721_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx8702_)
      (let ((_$e8704_ (gx#resolve-identifier__0 _stx8702_)))
        (if _$e8704_
            (##structure-ref _$e8704_ '1 gx#binding::t '#f)
            (gx#stx-e _stx8702_))))))
