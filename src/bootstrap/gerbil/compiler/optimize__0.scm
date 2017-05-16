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
    (lambda _$args18502_
      (apply make-struct-instance gxc#optimizer-info::t _$args18502_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self18500_)
      (direct-struct-instance-init!
       _self18500_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj18514 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj18514) __obj18514))))))
  (define gxc#optimize!
    (lambda (_ctx18494_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx18494_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (gx#expander-context-id _ctx18494_)
            '#t)
           (let ((_code18497_
                  (gxc#optimize-source (gx#module-context-code _ctx18494_))))
             (gx#module-context-code-set! _ctx18494_ _code18497_))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx18439_)
      (let ((_deps18441_
             (let ((_imports18485_ (gx#module-context-import _ctx18439_)))
               (let ((_$e18487_ (gx#core-context-prelude _ctx18439_)))
                 (if _$e18487_
                     ((lambda (_g1848918491_)
                        (cons _g1848918491_ _imports18485_))
                      _$e18487_)
                     _imports18485_)))))
        ((letrec ((_lp18443_
                   (lambda (_rest18445_)
                     (let ((_rest1844618454_ _rest18445_))
                       (let ((_E1844918458_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1844618454_))))
                         (let ((_else1844818462_ (lambda () '#!void)))
                           (let ((_K1845018473_
                                  (lambda (_rest18465_ _hd18466_)
                                    (if (gx#module-context? _hd18466_)
                                        (begin
                                          (if (table-ref
                                               (##structure-ref
                                                (gxc#current-compile-optimizer-info)
                                                '2
                                                gxc#optimizer-info::t
                                                '#f)
                                               (gx#expander-context-id
                                                _hd18466_)
                                               '#f)
                                              '#!void
                                              (begin
                                                (let ((_$e18468_
                                                       (gx#core-context-prelude
                                                        _hd18466_)))
                                                  (if _$e18468_
                                                      ((lambda (_pre18471_)
                                                         (_lp18443_
                                                          (cons _pre18471_
                                                                (gx#module-context-import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd18466_))))
               _$e18468_)
              (_lp18443_ (gx#module-context-import _hd18466_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#optimizer-load-ssxi
                                                 _hd18466_)))
                                          (_lp18443_ _rest18465_))
                                        (if (gx#prelude-context? _hd18466_)
                                            (if (table-ref
                                                 (##structure-ref
                                                  (gxc#current-compile-optimizer-info)
                                                  '2
                                                  gxc#optimizer-info::t
                                                  '#f)
                                                 (gx#expander-context-id
                                                  _hd18466_)
                                                 '#f)
                                                '#!void
                                                (begin
                                                  (_lp18443_
                                                   (gx#prelude-context-import
                                                    _hd18466_))
                                                  (gxc#optimizer-load-ssxi
                                                   _hd18466_)))
                                            (if (gx#module-import? _hd18466_)
                                                (_lp18443_
                                                 (cons (gx#module-import-source
                                                        _hd18466_)
                                                       _rest18465_))
                                                (if (gx#module-export?
                                                     _hd18466_)
                                                    (_lp18443_
                                                     (cons (gx#module-export-context
                                                            _hd18466_)
                                                           _rest18465_))
                                                    (if (gx#import-set?
                                                         _hd18466_)
                                                        (_lp18443_
                                                         (cons (gx#import-set-source
                                                                _hd18466_)
                                                               _rest18465_))
                                                        (error '"Unexpected module import"
                                                               _hd18466_)))))))))
                             (if (##pair? _rest1844618454_)
                                 (let ((_hd1845118476_
                                        (##car _rest1844618454_))
                                       (_tl1845218478_
                                        (##cdr _rest1844618454_)))
                                   (let ((_hd18481_ _hd1845118476_))
                                     (let ((_rest18483_ _tl1845218478_))
                                       (_K1845018473_ _rest18483_ _hd18481_))))
                                 (_else1844818462_)))))))))
           _lp18443_)
         _deps18441_))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx18419_)
      (if (if (gx#module-context? _ctx18419_)
              (list? (gx#module-context-path _ctx18419_))
              '#f)
          '#!void
          (let ((_ht18421_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id18423_ (gx#expander-context-id _ctx18419_)))
              (let ((_mod18425_ (table-ref _ht18421_ _id18423_ '#f)))
                (let ()
                  (let ((_$e18428_ _mod18425_))
                    (if _$e18428_
                        _$e18428_
                        (let ((_mod18431_
                               (gxc#optimizer-import-ssxi _ctx18419_)))
                          (let ((_val18436_
                                 (let ((_$e18433_ _mod18431_))
                                   (if _$e18433_ _$e18433_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht18421_ _id18423_ _val18436_)
                                _val18436_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx18396_)
      (let ((_catch-e18398_
             (lambda (_exn18417_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (gx#expander-context-id _ctx18396_))
                       (display-exception _exn18417_))
                     '#!void)
                 '#f))))
        (let ((_import-e18399_
               (lambda ()
                 (let ((_str-id18402_
                        (string-append
                         (symbol->string (gx#expander-context-id _ctx18396_))
                         '".ssxi")))
                   (let ((_artefact-path18410_
                          (let ((_odir1840318405_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1840318405_
                                (let ((_odir18408_ _odir1840318405_))
                                  (path-expand
                                   (string-append _str-id18402_ '".ss")
                                   _odir18408_))
                                '#f))))
                     (let ((_library-path18412_
                            (string->symbol
                             (string-append '":" _str-id18402_))))
                       (let ((_ssxi-path18414_
                              (if (if _artefact-path18410_
                                      (file-exists? _artefact-path18410_)
                                      '#f)
                                  _artefact-path18410_
                                  _library-path18412_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path18414_)
                             (gx#import-module
                              _ssxi-path18414_
                              '#t
                              '#t))))))))))
          (if (gx#expander-context-id _ctx18396_)
              (with-catch _catch-e18398_ _import-e18399_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args18393_
      (apply make-struct-instance gxc#!type::t _$args18393_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args18390_
      (apply make-struct-instance gxc#!alias::t _$args18390_)))
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
    (lambda _$args18387_
      (apply make-struct-instance gxc#!struct-type::t _$args18387_)))
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
    (lambda _$args18384_
      (apply make-struct-instance gxc#!procedure::t _$args18384_)))
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
    (lambda _$args18381_
      (apply make-struct-instance gxc#!struct-pred::t _$args18381_)))
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
    (lambda _$args18378_
      (apply make-struct-instance gxc#!struct-cons::t _$args18378_)))
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
    (lambda _$args18375_
      (apply make-struct-instance gxc#!struct-getf::t _$args18375_)))
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
    (lambda _$args18372_
      (apply make-struct-instance gxc#!struct-setf::t _$args18372_)))
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
    (lambda _$args18369_
      (apply make-struct-instance gxc#!lambda::t _$args18369_)))
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
    (lambda _$args18366_
      (apply make-struct-instance gxc#!case-lambda::t _$args18366_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self18358_
             _id18359_
             _super18360_
             _fields18361_
             _xfields18362_
             _ctor18363_
             _plist18364_)
      (direct-struct-instance-init!
       _self18358_
       _id18359_
       _super18360_
       _fields18361_
       _xfields18362_
       _ctor18363_
       _plist18364_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda18322
      (lambda (_self18324_
               _id18325_
               _arity18326_
               _dispatch18327_
               _inline18328_
               _typedecl18329_)
        (direct-struct-instance-init!
         _self18324_
         _id18325_
         _arity18326_
         _dispatch18327_
         _inline18328_
         _typedecl18329_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self18334_ _id18335_ _arity18336_ _dispatch18337_)
          (let ((_inline18339_ '#f))
            (let ((_typedecl18341_ '#f))
              (direct-struct-instance-init!
               _self18334_
               _id18335_
               _arity18336_
               _dispatch18337_
               _inline18339_
               _typedecl18341_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self18343_
                 _id18344_
                 _arity18345_
                 _dispatch18346_
                 _inline18347_)
          (let ((_typedecl18349_ '#f))
            (direct-struct-instance-init!
             _self18343_
             _id18344_
             _arity18345_
             _dispatch18346_
             _inline18347_
             _typedecl18349_))))
      (define gxc#!lambda:::init!
        (lambda _g18520_
          (let ((_g18519_ (length _g18520_)))
            (cond ((fx= _g18519_ 4) (apply gxc#!lambda:::init!__0 _g18520_))
                  ((fx= _g18519_ 5) (apply gxc#!lambda:::init!__1 _g18520_))
                  ((fx= _g18519_ 6)
                   (apply direct-struct-instance-init! _g18520_))
                  (else (error "No clause matching arguments" _g18520_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type18316_)
      (let ((_$e18318_
             (##structure-ref _type18316_ '7 gxc#!struct-type::t '#f)))
        (if _$e18318_
            (values _$e18318_)
            (let ((_vtab18321_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type18316_
                 _vtab18321_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab18321_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type18307_ _method18308_)
      (let ((_vtab1830918311_
             (##structure-ref _type18307_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1830918311_
            (let ((_vtab18314_ _vtab1830918311_))
              (table-ref _vtab18314_ _method18308_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda18289
      (lambda (_sym18291_ _type18292_ _local?18293_)
        (begin
          (if (##structure-instance-of? _type18292_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym18291_
                     _type18292_))
          (gxc#verbose
           '"declare-type "
           _sym18291_
           '" "
           (##vector->list _type18292_))
          (table-set!
           (if _local?18293_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym18291_
           _type18292_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym18298_ _type18299_)
          (let ((_local?18301_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda18289
             _sym18298_
             _type18299_
             _local?18301_))))
      (define gxc#optimizer-declare-type!
        (lambda _g18522_
          (let ((_g18521_ (length _g18522_)))
            (cond ((fx= _g18521_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g18522_))
                  ((fx= _g18521_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda18289
                          _g18522_))
                  (else (error "No clause matching arguments" _g18522_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda18265
      (lambda (_type-t18267_ _method18268_ _sym18269_ _rebind?18270_)
        (let ((_type18272_ (gxc#optimizer-resolve-type _type-t18267_)))
          (if (##structure-instance-of? _type18272_ 'gxc#!struct-type::t)
              (let ((_vtab18274_ (gxc#!struct-type-vtab _type18272_)))
                (if _rebind?18270_
                    (if (hash-key? _vtab18274_ _method18268_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t18267_
                         '" "
                         _method18268_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t18267_
                         '" "
                         _method18268_))
                    (if (hash-key? _vtab18274_ _method18268_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t18267_
                           '" "
                           _method18268_
                           '" => "
                           _sym18269_)
                          (table-set! _vtab18274_ _method18268_ _sym18269_)))))
              (if (not _type18272_)
                  (gxc#verbose '"declare-method: unknown type " _type-t18267_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t18267_
                         _type18272_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t18279_ _method18280_ _sym18281_)
          (let ((_rebind?18283_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda18265
             _type-t18279_
             _method18280_
             _sym18281_
             _rebind?18283_))))
      (define gxc#optimizer-declare-method!
        (lambda _g18524_
          (let ((_g18523_ (length _g18524_)))
            (cond ((fx= _g18523_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g18524_))
                  ((fx= _g18523_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda18265
                          _g18524_))
                  (else (error "No clause matching arguments" _g18524_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym18255_)
      (let ((_$e18263_
             (let ((_ht1825618258_ (gxc#current-compile-local-type)))
               (if _ht1825618258_
                   (let ((_ht18261_ _ht1825618258_))
                     (table-ref _ht18261_ _sym18255_ '#f))
                   '#f))))
        (if _$e18263_
            _$e18263_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym18255_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym18247_)
      (let ((_type1824818250_ (gxc#optimizer-lookup-type _sym18247_)))
        (if _type1824818250_
            (let ((_type18253_ _type1824818250_))
              (if (##structure-instance-of? _type18253_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type18253_ '1 gxc#!type::t '#f))
                  _type18253_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t18242_ _method18243_)
      (let ((_type18245_ (gxc#optimizer-resolve-type _type-t18242_)))
        (if (##structure-instance-of? _type18245_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type18245_ _method18243_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx18238_)
      (begin
        (gxc#apply-collect-mutators _stx18238_)
        (let ((_stx18240_ (gxc#apply-lift-top-lambdas _stx18238_)))
          (begin
            (gxc#apply-collect-type-info _stx18240_)
            (gxc#apply-optimize-call _stx18240_))))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl18235_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18235_ '%#lambda false)
           (table-set! _tbl18235_ '%#case-lambda false)
           (table-set! _tbl18235_ '%#let-values false)
           (table-set! _tbl18235_ '%#letrec-values false)
           (table-set! _tbl18235_ '%#letrec*-values false)
           (table-set! _tbl18235_ '%#quote false)
           (table-set! _tbl18235_ '%#quote-syntax false)
           (table-set! _tbl18235_ '%#call false)
           (table-set! _tbl18235_ '%#if false)
           (table-set! _tbl18235_ '%#ref false)
           (table-set! _tbl18235_ '%#set! false)
           (table-set! _tbl18235_ '%#struct-instance? false)
           (table-set! _tbl18235_ '%#struct-direct-instance? false)
           (table-set! _tbl18235_ '%#struct-ref false)
           (table-set! _tbl18235_ '%#struct-set! false)
           _tbl18235_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl18231_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18231_ '%#begin false)
           (table-set! _tbl18231_ '%#begin-syntax false)
           (table-set! _tbl18231_ '%#begin-foreign false)
           (table-set! _tbl18231_ '%#module false)
           (table-set! _tbl18231_ '%#import false)
           (table-set! _tbl18231_ '%#export false)
           (table-set! _tbl18231_ '%#provide false)
           (table-set! _tbl18231_ '%#extern false)
           (table-set! _tbl18231_ '%#define-values false)
           (table-set! _tbl18231_ '%#define-syntax false)
           (table-set! _tbl18231_ '%#define-alias false)
           (table-set! _tbl18231_ '%#declare false)
           _tbl18231_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl18227_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18227_ (force gxc#&false-special-form))
           (hash-copy! _tbl18227_ (force gxc#&false-expression))
           _tbl18227_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl18223_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18223_ '%#lambda gxc#xform-identity)
           (table-set! _tbl18223_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl18223_ '%#let-values gxc#xform-identity)
           (table-set! _tbl18223_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl18223_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl18223_ '%#quote gxc#xform-identity)
           (table-set! _tbl18223_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18223_ '%#call gxc#xform-identity)
           (table-set! _tbl18223_ '%#if gxc#xform-identity)
           (table-set! _tbl18223_ '%#ref gxc#xform-identity)
           (table-set! _tbl18223_ '%#set! gxc#xform-identity)
           (table-set! _tbl18223_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl18223_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl18223_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl18223_ '%#struct-set! gxc#xform-identity)
           _tbl18223_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl18219_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18219_ '%#begin gxc#xform-identity)
           (table-set! _tbl18219_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl18219_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl18219_ '%#module gxc#xform-identity)
           (table-set! _tbl18219_ '%#import gxc#xform-identity)
           (table-set! _tbl18219_ '%#export gxc#xform-identity)
           (table-set! _tbl18219_ '%#provide gxc#xform-identity)
           (table-set! _tbl18219_ '%#extern gxc#xform-identity)
           (table-set! _tbl18219_ '%#define-values gxc#xform-identity)
           (table-set! _tbl18219_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl18219_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl18219_ '%#declare gxc#xform-identity)
           _tbl18219_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl18215_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18215_ (force gxc#&identity-special-form))
           (hash-copy! _tbl18215_ (force gxc#&identity-expression))
           _tbl18215_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl18211_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18211_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl18211_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl18211_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl18211_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl18211_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl18211_ '%#quote gxc#xform-identity)
           (table-set! _tbl18211_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18211_ '%#call gxc#xform-operands)
           (table-set! _tbl18211_ '%#if gxc#xform-operands)
           (table-set! _tbl18211_ '%#ref gxc#xform-identity)
           (table-set! _tbl18211_ '%#set! gxc#xform-setq%)
           (table-set! _tbl18211_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl18211_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl18211_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl18211_ '%#struct-set! gxc#xform-operands)
           _tbl18211_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl18207_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18207_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl18207_ (force gxc#&identity))
           (table-set! _tbl18207_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18207_ '%#module gxc#xform-module%)
           (table-set! _tbl18207_ '%#define-values gxc#xform-define-values%)
           _tbl18207_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl18203_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18203_ (force gxc#&void))
           (table-set! _tbl18203_ '%#begin gxc#collect-begin%)
           (table-set! _tbl18203_ '%#module gxc#collect-module%)
           (table-set! _tbl18203_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl18203_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl18203_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl18203_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl18203_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl18203_ '%#call gxc#collect-operands)
           (table-set! _tbl18203_ '%#if gxc#collect-operands)
           (table-set! _tbl18203_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl18203_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl18203_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl18203_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl18203_ '%#struct-set! gxc#collect-operands)
           _tbl18203_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx18196_ . _args18198_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18196_ _args18198_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl18193_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18193_ (force gxc#&basic-xform))
           (table-set!
            _tbl18193_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl18193_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl18193_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl18193_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl18193_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx18186_ . _args18188_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18186_ _args18188_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl18183_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18183_ (force gxc#&basic-xform-expression))
           (table-set! _tbl18183_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18183_ '%#ref gxc#expression-subst-ref%)
           _tbl18183_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx18176_ . _args18178_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18176_ _args18178_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl18173_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18173_ (force gxc#&void))
           (table-set! _tbl18173_ '%#begin gxc#collect-begin%)
           (table-set! _tbl18173_ '%#module gxc#collect-module%)
           (table-set!
            _tbl18173_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl18173_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl18173_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl18173_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl18173_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl18173_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl18173_ '%#call gxc#collect-type-call%)
           (table-set! _tbl18173_ '%#if gxc#collect-operands)
           (table-set! _tbl18173_ '%#set! gxc#collect-body-setq%)
           _tbl18173_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx18166_ . _args18168_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18166_ _args18168_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl18163_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18163_ (force gxc#&false))
           (table-set! _tbl18163_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl18163_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl18163_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl18163_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl18163_ '%#ref gxc#basic-expression-type-ref%)
           _tbl18163_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx18156_ . _args18158_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18156_ _args18158_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl18153_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18153_ (force gxc#&basic-xform))
           (table-set! _tbl18153_ '%#call gxc#optimize-call%)
           _tbl18153_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx18146_ . _args18148_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18146_ _args18148_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl18143_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18143_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl18143_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl18143_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl18143_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl18143_ '%#call gxc#generate-ssxi-call%)
           _tbl18143_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx18136_ . _args18138_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18136_ _args18138_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx18133_ . _args18134_) _stx18133_))
  (define gxc#xform-wrap-source
    (lambda (_stx18130_ _src-stx18131_)
      (gx#stx-wrap-source _stx18130_ (gx#stx-source _src-stx18131_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args18124_)
      (lambda (_g1812518127_)
        (apply gxc#compile-e _g1812518127_ _args18124_))))
  (define gxc#xform-begin%
    (lambda (_stx18083_ . _args18084_)
      (let ((_g1808618096_
             (lambda (_g1808718093_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1808718093_))))
        (let ((_g1808518121_
               (lambda (_g1808718099_)
                 (if (gx#stx-pair? _g1808718099_)
                     (let ((_e1808918101_ (gx#stx-e _g1808718099_)))
                       (let ((_hd1809018104_ (##car _e1808918101_))
                             (_tl1809118106_ (##cdr _e1808918101_)))
                         ((lambda (_L18109_)
                            (let ((_forms18119_
                                   (map (gxc#xform-apply-compile-e _args18084_)
                                        _L18109_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms18119_)
                               _stx18083_)))
                          _tl1809118106_)))
                     (_g1808618096_ _g1808718099_)))))
          (_g1808518121_ _stx18083_)))))
  (define gxc#xform-module%
    (lambda (_stx18020_ . _args18021_)
      (let ((_g1802318037_
             (lambda (_g1802418034_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1802418034_))))
        (let ((_g1802218080_
               (lambda (_g1802418040_)
                 (if (gx#stx-pair? _g1802418040_)
                     (let ((_e1802718042_ (gx#stx-e _g1802418040_)))
                       (let ((_hd1802818045_ (##car _e1802718042_))
                             (_tl1802918047_ (##cdr _e1802718042_)))
                         (if (gx#stx-pair? _tl1802918047_)
                             (let ((_e1803018050_ (gx#stx-e _tl1802918047_)))
                               (let ((_hd1803118053_ (##car _e1803018050_))
                                     (_tl1803218055_ (##cdr _e1803018050_)))
                                 ((lambda (_L18058_ _L18059_)
                                    (let ((_ctx18072_
                                           (gx#syntax-local-e _L18059_)))
                                      (let ((_code18074_
                                             (gx#module-context-code
                                              _ctx18072_)))
                                        (let ((_code18077_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code18074_
                                                         _args18021_))
                                                gx#current-expander-context
                                                _ctx18072_)))
                                          (let ()
                                            (begin
                                              (gx#module-context-code-set!
                                               _ctx18072_
                                               _code18077_)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L18059_
                                                           (cons _code18077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18020_)))))))
                                  _tl1803218055_
                                  _hd1803118053_)))
                             (_g1802318037_ _g1802418040_))))
                     (_g1802318037_ _g1802418040_)))))
          (_g1802218080_ _stx18020_)))))
  (define gxc#xform-define-values%
    (lambda (_stx17950_ . _args17951_)
      (let ((_g1795317970_
             (lambda (_g1795417967_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1795417967_))))
        (let ((_g1795218017_
               (lambda (_g1795417973_)
                 (if (gx#stx-pair? _g1795417973_)
                     (let ((_e1795717975_ (gx#stx-e _g1795417973_)))
                       (let ((_hd1795817978_ (##car _e1795717975_))
                             (_tl1795917980_ (##cdr _e1795717975_)))
                         (if (gx#stx-pair? _tl1795917980_)
                             (let ((_e1796017983_ (gx#stx-e _tl1795917980_)))
                               (let ((_hd1796117986_ (##car _e1796017983_))
                                     (_tl1796217988_ (##cdr _e1796017983_)))
                                 (if (gx#stx-pair? _tl1796217988_)
                                     (let ((_e1796317991_
                                            (gx#stx-e _tl1796217988_)))
                                       (let ((_hd1796417994_
                                              (##car _e1796317991_))
                                             (_tl1796517996_
                                              (##cdr _e1796317991_)))
                                         (if (gx#stx-null? _tl1796517996_)
                                             ((lambda (_L17999_ _L18000_)
                                                (let ((_expr18015_
                                                       (apply gxc#compile-e
                                                              _L17999_
                                                              _args17951_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L18000_
                                                               (cons _expr18015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx17950_)))
                                              _hd1796417994_
                                              _hd1796117986_)
                                             (_g1795317970_ _g1795417973_))))
                                     (_g1795317970_ _g1795417973_))))
                             (_g1795317970_ _g1795417973_))))
                     (_g1795317970_ _g1795417973_)))))
          (_g1795218017_ _stx17950_)))))
  (define gxc#xform-lambda%
    (lambda (_stx17893_ . _args17894_)
      (let ((_g1789617910_
             (lambda (_g1789717907_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1789717907_))))
        (let ((_g1789517947_
               (lambda (_g1789717913_)
                 (if (gx#stx-pair? _g1789717913_)
                     (let ((_e1790017915_ (gx#stx-e _g1789717913_)))
                       (let ((_hd1790117918_ (##car _e1790017915_))
                             (_tl1790217920_ (##cdr _e1790017915_)))
                         (if (gx#stx-pair? _tl1790217920_)
                             (let ((_e1790317923_ (gx#stx-e _tl1790217920_)))
                               (let ((_hd1790417926_ (##car _e1790317923_))
                                     (_tl1790517928_ (##cdr _e1790317923_)))
                                 ((lambda (_L17931_ _L17932_)
                                    (let ((_body17945_
                                           (map (gxc#xform-apply-compile-e
                                                 _args17894_)
                                                _L17931_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L17932_ _body17945_))
                                       _stx17893_)))
                                  _tl1790517928_
                                  _hd1790417926_)))
                             (_g1789617910_ _g1789717913_))))
                     (_g1789617910_ _g1789717913_)))))
          (_g1789517947_ _stx17893_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx17806_ . _args17807_)
      (let ((_clause-e17809_
             (lambda (_clause17850_)
               (let ((_g1785217863_
                      (lambda (_g1785317860_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1785317860_))))
                 (let ((_g1785117890_
                        (lambda (_g1785317866_)
                          (if (gx#stx-pair? _g1785317866_)
                              (let ((_e1785617868_ (gx#stx-e _g1785317866_)))
                                (let ((_hd1785717871_ (##car _e1785617868_))
                                      (_tl1785817873_ (##cdr _e1785617868_)))
                                  ((lambda (_L17876_ _L17877_)
                                     (let ((_body17888_
                                            (map (gxc#xform-apply-compile-e
                                                  _args17807_)
                                                 _L17876_)))
                                       (cons _L17877_ _body17888_)))
                                   _tl1785817873_
                                   _hd1785717871_)))
                              (_g1785217863_ _g1785317866_)))))
                   (_g1785117890_ _clause17850_))))))
        (let ((_g1781117821_
               (lambda (_g1781217818_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1781217818_))))
          (let ((_g1781017847_
                 (lambda (_g1781217824_)
                   (if (gx#stx-pair? _g1781217824_)
                       (let ((_e1781417826_ (gx#stx-e _g1781217824_)))
                         (let ((_hd1781517829_ (##car _e1781417826_))
                               (_tl1781617831_ (##cdr _e1781417826_)))
                           ((lambda (_L17834_)
                              (let ((_clauses17845_
                                     (map _clause-e17809_ _L17834_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses17845_)
                                 _stx17806_)))
                            _tl1781617831_)))
                       (_g1781117821_ _g1781217824_)))))
            (_g1781017847_ _stx17806_))))))
  (define gxc#xform-let-values%
    (lambda (_stx17600_ . _args17601_)
      (let ((_g1760317636_
             (lambda (_g1760417633_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1760417633_))))
        (let ((_g1760217803_
               (lambda (_g1760417639_)
                 (if (gx#stx-pair? _g1760417639_)
                     (let ((_e1760917641_ (gx#stx-e _g1760417639_)))
                       (let ((_hd1761017644_ (##car _e1760917641_))
                             (_tl1761117646_ (##cdr _e1760917641_)))
                         (if (gx#stx-pair? _tl1761117646_)
                             (let ((_e1761217649_ (gx#stx-e _tl1761117646_)))
                               (let ((_hd1761317652_ (##car _e1761217649_))
                                     (_tl1761417654_ (##cdr _e1761217649_)))
                                 (if (gx#stx-pair/null? _hd1761317652_)
                                     (if (fx>= (gx#stx-length _hd1761317652_)
                                               '0)
                                         (let ((_g18525_
                                                (gx#syntax-split-splice
                                                 _hd1761317652_
                                                 '0)))
                                           (begin
                                             (let ((_g18526_
                                                    (values-count _g18525_)))
                                               (if (not (fx= _g18526_ 2))
                                                   (error "Context expects 2 values"
                                                          _g18526_)))
                                             (let ((_target1761517657_
                                                    (values-ref _g18525_ 0))
                                                   (_tl1761717659_
                                                    (values-ref _g18525_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1761717659_)
                                                   (letrec ((_loop1761817662_
                                                             (lambda (_hd1761617665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1762217667_
                              _hd1762317669_)
                       (if (gx#stx-pair? _hd1761617665_)
                           (let ((_e1761917672_ (gx#stx-e _hd1761617665_)))
                             (let ((_lp-hd1762017675_ (##car _e1761917672_))
                                   (_lp-tl1762117677_ (##cdr _e1761917672_)))
                               (if (gx#stx-pair? _lp-hd1762017675_)
                                   (let ((_e1762617680_
                                          (gx#stx-e _lp-hd1762017675_)))
                                     (let ((_hd1762717683_
                                            (##car _e1762617680_))
                                           (_tl1762817685_
                                            (##cdr _e1762617680_)))
                                       (if (gx#stx-pair? _tl1762817685_)
                                           (let ((_e1762917688_
                                                  (gx#stx-e _tl1762817685_)))
                                             (let ((_hd1763017691_
                                                    (##car _e1762917688_))
                                                   (_tl1763117693_
                                                    (##cdr _e1762917688_)))
                                               (if (gx#stx-null?
                                                    _tl1763117693_)
                                                   (_loop1761817662_
                                                    _lp-tl1762117677_
                                                    (cons _hd1763017691_
                                                          _expr1762217667_)
                                                    (cons _hd1762717683_
                                                          _hd1762317669_))
                                                   (_g1760317636_
                                                    _g1760417639_))))
                                           (_g1760317636_ _g1760417639_))))
                                   (_g1760317636_ _g1760417639_))))
                           (let ((_expr1762417696_ (reverse _expr1762217667_))
                                 (_hd1762517698_ (reverse _hd1762317669_)))
                             ((lambda (_L17701_ _L17702_ _L17703_ _L17704_)
                                (let ((_g1772317739_
                                       (lambda (_g1772417736_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1772417736_))))
                                  (let ((_g1772217793_
                                         (lambda (_g1772417742_)
                                           (if (gx#stx-pair/null?
                                                _g1772417742_)
                                               (if (fx>= (gx#stx-length
                                                          _g1772417742_)
                                                         '0)
                                                   (let ((_g18527_
                                                          (gx#syntax-split-splice
                                                           _g1772417742_
                                                           '0)))
                                                     (begin
                                                       (let ((_g18528_
                                                              (values-count
                                                               _g18527_)))
                                                         (if (not (fx= _g18528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g18528_)))
               (let ((_target1772617744_ (values-ref _g18527_ 0))
                     (_tl1772817746_ (values-ref _g18527_ 1)))
                 (if (gx#stx-null? _tl1772817746_)
                     (letrec ((_loop1772917749_
                               (lambda (_hd1772717752_ _expr1773317754_)
                                 (if (gx#stx-pair? _hd1772717752_)
                                     (let ((_e1773017757_
                                            (gx#syntax-e _hd1772717752_)))
                                       (let ((_lp-hd1773117760_
                                              (##car _e1773017757_))
                                             (_lp-tl1773217762_
                                              (##cdr _e1773017757_)))
                                         (_loop1772917749_
                                          _lp-tl1773217762_
                                          (cons _lp-hd1773117760_
                                                _expr1773317754_))))
                                     (let ((_expr1773417765_
                                            (reverse _expr1773317754_)))
                                       ((lambda (_L17768_)
                                          (let ()
                                            (let ((_body17781_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args17601_)
                                                        _L17701_)))
                                              (gxc#xform-wrap-source
                                               (cons _L17704_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L17768_
                                                              _L17703_)
                                                             (foldr (lambda (_g1778217786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1778317788_
                                     _g1778417790_)
                              (cons (cons _g1778317788_
                                          (cons _g1778217786_ '()))
                                    _g1778417790_))
                            '()
                            _L17768_
                            _L17703_))
                   _body17781_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx17600_))))
                                        _expr1773417765_))))))
                       (_loop1772917749_ _target1772617744_ '()))
                     (_g1772317739_ _g1772417742_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1772317739_
                                                    _g1772417742_))
                                               (_g1772317739_
                                                _g1772417742_)))))
                                    (_g1772217793_
                                     (map (gxc#xform-apply-compile-e
                                           _args17601_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1779517798_
                                                             _g1779617800_)
                                                      (cons _g1779517798_
                                                            _g1779617800_))
                                                    '()
                                                    _L17702_)))))))
                              _tl1761417654_
                              _expr1762417696_
                              _hd1762517698_
                              _hd1761017644_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1761817662_
                                                      _target1761517657_
                                                      '()
                                                      '()))
                                                   (_g1760317636_
                                                    _g1760417639_)))))
                                         (_g1760317636_ _g1760417639_))
                                     (_g1760317636_ _g1760417639_))))
                             (_g1760317636_ _g1760417639_))))
                     (_g1760317636_ _g1760417639_)))))
          (_g1760217803_ _stx17600_)))))
  (define gxc#xform-operands
    (lambda (_stx17556_ . _args17557_)
      (let ((_g1755917570_
             (lambda (_g1756017567_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1756017567_))))
        (let ((_g1755817597_
               (lambda (_g1756017573_)
                 (if (gx#stx-pair? _g1756017573_)
                     (let ((_e1756317575_ (gx#stx-e _g1756017573_)))
                       (let ((_hd1756417578_ (##car _e1756317575_))
                             (_tl1756517580_ (##cdr _e1756317575_)))
                         ((lambda (_L17583_ _L17584_)
                            (let ((_rands17595_
                                   (map (gxc#xform-apply-compile-e _args17557_)
                                        _L17583_)))
                              (gxc#xform-wrap-source
                               (cons _L17584_ _rands17595_)
                               _stx17556_)))
                          _tl1756517580_
                          _hd1756417578_)))
                     (_g1755917570_ _g1756017573_)))))
          (_g1755817597_ _stx17556_)))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx17486_ . _args17487_)
      (let ((_g1748917506_
             (lambda (_g1749017503_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1749017503_))))
        (let ((_g1748817553_
               (lambda (_g1749017509_)
                 (if (gx#stx-pair? _g1749017509_)
                     (let ((_e1749317511_ (gx#stx-e _g1749017509_)))
                       (let ((_hd1749417514_ (##car _e1749317511_))
                             (_tl1749517516_ (##cdr _e1749317511_)))
                         (if (gx#stx-pair? _tl1749517516_)
                             (let ((_e1749617519_ (gx#stx-e _tl1749517516_)))
                               (let ((_hd1749717522_ (##car _e1749617519_))
                                     (_tl1749817524_ (##cdr _e1749617519_)))
                                 (if (gx#stx-pair? _tl1749817524_)
                                     (let ((_e1749917527_
                                            (gx#stx-e _tl1749817524_)))
                                       (let ((_hd1750017530_
                                              (##car _e1749917527_))
                                             (_tl1750117532_
                                              (##cdr _e1749917527_)))
                                         (if (gx#stx-null? _tl1750117532_)
                                             ((lambda (_L17535_ _L17536_)
                                                (let ((_expr17551_
                                                       (apply gxc#compile-e
                                                              _L17535_
                                                              _args17487_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L17536_
                                                               (cons _expr17551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx17486_)))
                                              _hd1750017530_
                                              _hd1749717522_)
                                             (_g1748917506_ _g1749017509_))))
                                     (_g1748917506_ _g1749017509_))))
                             (_g1748917506_ _g1749017509_))))
                     (_g1748917506_ _g1749017509_)))))
          (_g1748817553_ _stx17486_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx17417_)
      (let ((_g1741917436_
             (lambda (_g1742017433_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1742017433_))))
        (let ((_g1741817483_
               (lambda (_g1742017439_)
                 (if (gx#stx-pair? _g1742017439_)
                     (let ((_e1742317441_ (gx#stx-e _g1742017439_)))
                       (let ((_hd1742417444_ (##car _e1742317441_))
                             (_tl1742517446_ (##cdr _e1742317441_)))
                         (if (gx#stx-pair? _tl1742517446_)
                             (let ((_e1742617449_ (gx#stx-e _tl1742517446_)))
                               (let ((_hd1742717452_ (##car _e1742617449_))
                                     (_tl1742817454_ (##cdr _e1742617449_)))
                                 (if (gx#stx-pair? _tl1742817454_)
                                     (let ((_e1742917457_
                                            (gx#stx-e _tl1742817454_)))
                                       (let ((_hd1743017460_
                                              (##car _e1742917457_))
                                             (_tl1743117462_
                                              (##cdr _e1742917457_)))
                                         (if (gx#stx-null? _tl1743117462_)
                                             ((lambda (_L17465_ _L17466_)
                                                (let ((_sym17481_
                                                       (gxc#generate-runtime-binding-id
                                                        _L17466_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym17481_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym17481_
                                                     '#t)
                                                    (gxc#compile-e _L17465_))))
                                              _hd1743017460_
                                              _hd1742717452_)
                                             (_g1741917436_ _g1742017439_))))
                                     (_g1741917436_ _g1742017439_))))
                             (_g1741917436_ _g1742017439_))))
                     (_g1741917436_ _g1742017439_)))))
          (_g1741817483_ _stx17417_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form16651_)
      (let ((_g1665616813_
             (lambda (_g1665716810_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1665716810_))))
        (let ((_g1665516820_ (lambda (_g1665716816_) ((lambda () '#f)))))
          (let ((_g1665416960_
                 (lambda (_g1665716823_)
                   (if (gx#stx-pair? _g1665716823_)
                       (let ((_e1677316825_ (gx#stx-e _g1665716823_)))
                         (let ((_hd1677416828_ (##car _e1677316825_))
                               (_tl1677516830_ (##cdr _e1677316825_)))
                           (if (gx#stx-pair? _tl1677516830_)
                               (let ((_e1677616833_ (gx#stx-e _tl1677516830_)))
                                 (let ((_hd1677716836_ (##car _e1677616833_))
                                       (_tl1677816838_ (##cdr _e1677616833_)))
                                   (if (gx#stx-pair? _hd1677716836_)
                                       (let ((_e1677916841_
                                              (gx#stx-e _hd1677716836_)))
                                         (let ((_hd1678016844_
                                                (##car _e1677916841_))
                                               (_tl1678116846_
                                                (##cdr _e1677916841_)))
                                           (if (gx#identifier? _hd1678016844_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1678016844_)
                                                   (if (gx#stx-pair?
                                                        _tl1678116846_)
                                                       (let ((_e1678216849_
                                                              (gx#stx-e
                                                               _tl1678116846_)))
                                                         (let ((_hd1678316852_
                                                                (##car _e1678216849_))
                                                               (_tl1678416854_
                                                                (##cdr _e1678216849_)))
                                                           (if (gx#stx-pair?
                                                                _hd1678316852_)
                                                               (let ((_e1678516857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1678316852_)))
                         (let ((_hd1678616860_ (##car _e1678516857_))
                               (_tl1678716862_ (##cdr _e1678516857_)))
                           (if (gx#identifier? _hd1678616860_)
                               (if (gx#stx-eq? '%#ref _hd1678616860_)
                                   (if (gx#stx-pair? _tl1678716862_)
                                       (let ((_e1678816865_
                                              (gx#stx-e _tl1678716862_)))
                                         (let ((_hd1678916868_
                                                (##car _e1678816865_))
                                               (_tl1679016870_
                                                (##cdr _e1678816865_)))
                                           (if (gx#stx-null? _tl1679016870_)
                                               (if (gx#stx-pair?
                                                    _tl1678416854_)
                                                   (let ((_e1679116873_
                                                          (gx#stx-e
                                                           _tl1678416854_)))
                                                     (let ((_hd1679216876_
                                                            (##car _e1679116873_))
                                                           (_tl1679316878_
                                                            (##cdr _e1679116873_)))
                                                       (if (gx#stx-pair?
                                                            _hd1679216876_)
                                                           (let ((_e1679416881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1679216876_)))
                     (let ((_hd1679516884_ (##car _e1679416881_))
                           (_tl1679616886_ (##cdr _e1679416881_)))
                       (if (gx#identifier? _hd1679516884_)
                           (if (gx#stx-eq? '%#ref _hd1679516884_)
                               (if (gx#stx-pair? _tl1679616886_)
                                   (let ((_e1679716889_
                                          (gx#stx-e _tl1679616886_)))
                                     (let ((_hd1679816892_
                                            (##car _e1679716889_))
                                           (_tl1679916894_
                                            (##cdr _e1679716889_)))
                                       (if (gx#stx-null? _tl1679916894_)
                                           (if (gx#stx-pair? _tl1679316878_)
                                               (let ((_e1680016897_
                                                      (gx#stx-e
                                                       _tl1679316878_)))
                                                 (let ((_hd1680116900_
                                                        (##car _e1680016897_))
                                                       (_tl1680216902_
                                                        (##cdr _e1680016897_)))
                                                   (if (gx#stx-pair?
                                                        _hd1680116900_)
                                                       (let ((_e1680316905_
                                                              (gx#stx-e
                                                               _hd1680116900_)))
                                                         (let ((_hd1680416908_
                                                                (##car _e1680316905_))
                                                               (_tl1680516910_
                                                                (##cdr _e1680316905_)))
                                                           (if (gx#identifier?
                                                                _hd1680416908_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1680416908_)
                           (if (gx#stx-pair? _tl1680516910_)
                               (let ((_e1680616913_ (gx#stx-e _tl1680516910_)))
                                 (let ((_hd1680716916_ (##car _e1680616913_))
                                       (_tl1680816918_ (##cdr _e1680616913_)))
                                   (if (gx#stx-null? _tl1680816918_)
                                       (if (gx#stx-null? _tl1680216902_)
                                           (if (gx#stx-null? _tl1677816838_)
                                               ((lambda (_L16921_
                                                         _L16922_
                                                         _L16923_
                                                         _L16924_)
                                                  (if (if (gx#identifier?
                                                           _L16924_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L16923_)
                           'apply)
                      (if (gx#free-identifier=? _L16924_ _L16921_)
                          (not (gx#free-identifier=? _L16922_ _L16924_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1665516820_ _g1665716823_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1680716916_
                                                _hd1679816892_
                                                _hd1678916868_
                                                _hd1677416828_)
                                               (_g1665516820_ _g1665716823_))
                                           (_g1665516820_ _g1665716823_))
                                       (_g1665516820_ _g1665716823_))))
                               (_g1665516820_ _g1665716823_))
                           (_g1665516820_ _g1665716823_))
                       (_g1665516820_ _g1665716823_))))
               (_g1665516820_ _g1665716823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1665516820_ _g1665716823_))
                                           (_g1665516820_ _g1665716823_))))
                                   (_g1665516820_ _g1665716823_))
                               (_g1665516820_ _g1665716823_))
                           (_g1665516820_ _g1665716823_))))
                   (_g1665516820_ _g1665716823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1665516820_
                                                    _g1665716823_))
                                               (_g1665516820_ _g1665716823_))))
                                       (_g1665516820_ _g1665716823_))
                                   (_g1665516820_ _g1665716823_))
                               (_g1665516820_ _g1665716823_))))
                       (_g1665516820_ _g1665716823_))))
               (_g1665516820_ _g1665716823_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1665516820_
                                                    _g1665716823_))
                                               (_g1665516820_ _g1665716823_))))
                                       (_g1665516820_ _g1665716823_))))
                               (_g1665516820_ _g1665716823_))))
                       (_g1665516820_ _g1665716823_)))))
            (let ((_g1665317220_
                   (lambda (_g1665716963_)
                     (if (gx#stx-pair? _g1665716963_)
                         (let ((_e1670916965_ (gx#stx-e _g1665716963_)))
                           (let ((_hd1671016968_ (##car _e1670916965_))
                                 (_tl1671116970_ (##cdr _e1670916965_)))
                             (if (gx#stx-pair/null? _hd1671016968_)
                                 (if (fx>= (gx#stx-length _hd1671016968_) '0)
                                     (let ((_g18529_
                                            (gx#syntax-split-splice
                                             _hd1671016968_
                                             '0)))
                                       (begin
                                         (let ((_g18530_
                                                (values-count _g18529_)))
                                           (if (not (fx= _g18530_ 2))
                                               (error "Context expects 2 values"
                                                      _g18530_)))
                                         (let ((_target1671216973_
                                                (values-ref _g18529_ 0))
                                               (_tl1671416975_
                                                (values-ref _g18529_ 1)))
                                           (letrec ((_loop1671516978_
                                                     (lambda (_hd1671316981_
                                                              _arg1671916983_)
                                                       (if (gx#stx-pair?
                                                            _hd1671316981_)
                                                           (let ((_e1671616986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1671316981_)))
                     (let ((_lp-hd1671716989_ (##car _e1671616986_))
                           (_lp-tl1671816991_ (##cdr _e1671616986_)))
                       (_loop1671516978_
                        _lp-tl1671816991_
                        (cons _lp-hd1671716989_ _arg1671916983_))))
                   (let ((_arg1672016994_ (reverse _arg1671916983_)))
                     (if (gx#stx-pair? _tl1671116970_)
                         (let ((_e1672116997_ (gx#stx-e _tl1671116970_)))
                           (let ((_hd1672217000_ (##car _e1672116997_))
                                 (_tl1672317002_ (##cdr _e1672116997_)))
                             (if (gx#stx-pair? _hd1672217000_)
                                 (let ((_e1672417005_
                                        (gx#stx-e _hd1672217000_)))
                                   (let ((_hd1672517008_ (##car _e1672417005_))
                                         (_tl1672617010_
                                          (##cdr _e1672417005_)))
                                     (if (gx#identifier? _hd1672517008_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1672517008_)
                                             (if (gx#stx-pair? _tl1672617010_)
                                                 (let ((_e1672717013_
                                                        (gx#stx-e
                                                         _tl1672617010_)))
                                                   (let ((_hd1672817016_
                                                          (##car _e1672717013_))
                                                         (_tl1672917018_
                                                          (##cdr _e1672717013_)))
                                                     (if (gx#stx-pair?
                                                          _hd1672817016_)
                                                         (let ((_e1673017021_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1672817016_)))
                   (let ((_hd1673117024_ (##car _e1673017021_))
                         (_tl1673217026_ (##cdr _e1673017021_)))
                     (if (gx#identifier? _hd1673117024_)
                         (if (gx#stx-eq? '%#ref _hd1673117024_)
                             (if (gx#stx-pair? _tl1673217026_)
                                 (let ((_e1673317029_
                                        (gx#stx-e _tl1673217026_)))
                                   (let ((_hd1673417032_ (##car _e1673317029_))
                                         (_tl1673517034_
                                          (##cdr _e1673317029_)))
                                     (if (gx#stx-null? _tl1673517034_)
                                         (if (gx#stx-pair? _tl1672917018_)
                                             (let ((_e1673617037_
                                                    (gx#stx-e _tl1672917018_)))
                                               (let ((_hd1673717040_
                                                      (##car _e1673617037_))
                                                     (_tl1673817042_
                                                      (##cdr _e1673617037_)))
                                                 (if (gx#stx-pair?
                                                      _hd1673717040_)
                                                     (let ((_e1673917045_
                                                            (gx#stx-e
                                                             _hd1673717040_)))
                                                       (let ((_hd1674017048_
                                                              (##car _e1673917045_))
                                                             (_tl1674117050_
                                                              (##cdr _e1673917045_)))
                                                         (if (gx#identifier?
                                                              _hd1674017048_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1674017048_)
                         (if (gx#stx-pair? _tl1674117050_)
                             (let ((_e1674217053_ (gx#stx-e _tl1674117050_)))
                               (let ((_hd1674317056_ (##car _e1674217053_))
                                     (_tl1674417058_ (##cdr _e1674217053_)))
                                 (if (gx#stx-null? _tl1674417058_)
                                     (if (gx#stx-pair/null? _tl1673817042_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1673817042_)
                                                   '1)
                                             (let ((_g18531_
                                                    (gx#syntax-split-splice
                                                     _tl1673817042_
                                                     '1)))
                                               (begin
                                                 (let ((_g18532_
                                                        (values-count
                                                         _g18531_)))
                                                   (if (not (fx= _g18532_ 2))
                                                       (error "Context expects 2 values"
                                                              _g18532_)))
                                                 (let ((_target1674517061_
                                                        (values-ref
                                                         _g18531_
                                                         0))
                                                       (_tl1674717063_
                                                        (values-ref
                                                         _g18531_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1674717063_)
                                                       (let ((_e1675417066_
                                                              (gx#stx-e
                                                               _tl1674717063_)))
                                                         (let ((_hd1675517069_
                                                                (##car _e1675417066_))
                                                               (_tl1675617071_
                                                                (##cdr _e1675417066_)))
                                                           (if (gx#stx-pair?
                                                                _hd1675517069_)
                                                               (let ((_e1675717074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1675517069_)))
                         (let ((_hd1675817077_ (##car _e1675717074_))
                               (_tl1675917079_ (##cdr _e1675717074_)))
                           (if (gx#identifier? _hd1675817077_)
                               (if (gx#stx-eq? '%#ref _hd1675817077_)
                                   (if (gx#stx-pair? _tl1675917079_)
                                       (let ((_e1676017082_
                                              (gx#stx-e _tl1675917079_)))
                                         (let ((_hd1676117085_
                                                (##car _e1676017082_))
                                               (_tl1676217087_
                                                (##cdr _e1676017082_)))
                                           (if (gx#stx-null? _tl1676217087_)
                                               (if (gx#stx-null?
                                                    _tl1675617071_)
                                                   (letrec ((_loop1674817090_
                                                             (lambda (_hd1674617093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1675217095_)
                       (if (gx#stx-pair? _hd1674617093_)
                           (let ((_e1674917098_ (gx#stx-e _hd1674617093_)))
                             (let ((_lp-hd1675017101_ (##car _e1674917098_))
                                   (_lp-tl1675117103_ (##cdr _e1674917098_)))
                               (if (gx#stx-pair? _lp-hd1675017101_)
                                   (let ((_e1676317106_
                                          (gx#stx-e _lp-hd1675017101_)))
                                     (let ((_hd1676417109_
                                            (##car _e1676317106_))
                                           (_tl1676517111_
                                            (##cdr _e1676317106_)))
                                       (if (gx#identifier? _hd1676417109_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1676417109_)
                                               (if (gx#stx-pair?
                                                    _tl1676517111_)
                                                   (let ((_e1676617114_
                                                          (gx#stx-e
                                                           _tl1676517111_)))
                                                     (let ((_hd1676717117_
                                                            (##car _e1676617114_))
                                                           (_tl1676817119_
                                                            (##cdr _e1676617114_)))
                                                       (if (gx#stx-null?
                                                            _tl1676817119_)
                                                           (_loop1674817090_
                                                            _lp-tl1675117103_
                                                            (cons _hd1676717117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1675217095_))
                   (_g1665416960_ _g1665716963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1665416960_
                                                    _g1665716963_))
                                               (_g1665416960_ _g1665716963_))
                                           (_g1665416960_ _g1665716963_))))
                                   (_g1665416960_ _g1665716963_))))
                           (let ((_xarg1675317122_ (reverse _xarg1675217095_)))
                             (if (gx#stx-null? _tl1672317002_)
                                 ((lambda (_L17125_
                                           _L17126_
                                           _L17127_
                                           _L17128_
                                           _L17129_
                                           _L17130_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1717317176_
                                                                _g1717417178_)
                                                         (cons _g1717317176_
                                                               _g1717417178_))
                                                       '()
                                                       _L17130_)))
                                            (if (gx#identifier? _L17129_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L17128_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1718017183_ _g1718117185_)
                                         (cons _g1718017183_ _g1718117185_))
                                       '()
                                       _L17130_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1718717190_ _g1718817192_)
                                         (cons _g1718717190_ _g1718817192_))
                                       '()
                                       _L17126_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1719417197_ _g1719517199_)
                                        (cons _g1719417197_ _g1719517199_))
                                      '()
                                      _L17130_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1720117204_ _g1720217206_)
                                        (cons _g1720117204_ _g1720217206_))
                                      '()
                                      _L17126_)))
                    (if (gx#free-identifier=? _L17129_ _L17125_)
                        (not (find (lambda (_g1720817210_)
                                     (gx#free-identifier=?
                                      _g1720817210_
                                      _L17127_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1721217215_
                                                      _g1721317217_)
                                               (cons _g1721217215_
                                                     _g1721317217_))
                                             (cons _L17129_ '())
                                             _L17130_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1665416960_ _g1665716963_)))
                                  _hd1676117085_
                                  _xarg1675317122_
                                  _hd1674317056_
                                  _hd1673417032_
                                  _tl1671416975_
                                  _arg1672016994_)
                                 (_g1665416960_ _g1665716963_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1674817090_
                                                      _target1674517061_
                                                      '()))
                                                   (_g1665416960_
                                                    _g1665716963_))
                                               (_g1665416960_ _g1665716963_))))
                                       (_g1665416960_ _g1665716963_))
                                   (_g1665416960_ _g1665716963_))
                               (_g1665416960_ _g1665716963_))))
                       (_g1665416960_ _g1665716963_))))
               (_g1665416960_ _g1665716963_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1665416960_ _g1665716963_))
                                         (_g1665416960_ _g1665716963_))
                                     (_g1665416960_ _g1665716963_))))
                             (_g1665416960_ _g1665716963_))
                         (_g1665416960_ _g1665716963_))
                     (_g1665416960_ _g1665716963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1665416960_
                                                      _g1665716963_))))
                                             (_g1665416960_ _g1665716963_))
                                         (_g1665416960_ _g1665716963_))))
                                 (_g1665416960_ _g1665716963_))
                             (_g1665416960_ _g1665716963_))
                         (_g1665416960_ _g1665716963_))))
                 (_g1665416960_ _g1665716963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1665416960_ _g1665716963_))
                                             (_g1665416960_ _g1665716963_))
                                         (_g1665416960_ _g1665716963_))))
                                 (_g1665416960_ _g1665716963_))))
                         (_g1665416960_ _g1665716963_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1671516978_
                                              _target1671216973_
                                              '())))))
                                     (_g1665416960_ _g1665716963_))
                                 (_g1665416960_ _g1665716963_))))
                         (_g1665416960_ _g1665716963_)))))
              (let ((_g1665217414_
                     (lambda (_g1665717223_)
                       (if (gx#stx-pair? _g1665717223_)
                           (let ((_e1666117225_ (gx#stx-e _g1665717223_)))
                             (let ((_hd1666217228_ (##car _e1666117225_))
                                   (_tl1666317230_ (##cdr _e1666117225_)))
                               (if (gx#stx-pair/null? _hd1666217228_)
                                   (if (fx>= (gx#stx-length _hd1666217228_) '0)
                                       (let ((_g18533_
                                              (gx#syntax-split-splice
                                               _hd1666217228_
                                               '0)))
                                         (begin
                                           (let ((_g18534_
                                                  (values-count _g18533_)))
                                             (if (not (fx= _g18534_ 2))
                                                 (error "Context expects 2 values"
                                                        _g18534_)))
                                           (let ((_target1666417233_
                                                  (values-ref _g18533_ 0))
                                                 (_tl1666617235_
                                                  (values-ref _g18533_ 1)))
                                             (if (gx#stx-null? _tl1666617235_)
                                                 (letrec ((_loop1666717238_
                                                           (lambda (_hd1666517241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1667117243_)
                     (if (gx#stx-pair? _hd1666517241_)
                         (let ((_e1666817246_ (gx#stx-e _hd1666517241_)))
                           (let ((_lp-hd1666917249_ (##car _e1666817246_))
                                 (_lp-tl1667017251_ (##cdr _e1666817246_)))
                             (_loop1666717238_
                              _lp-tl1667017251_
                              (cons _lp-hd1666917249_ _arg1667117243_))))
                         (let ((_arg1667217254_ (reverse _arg1667117243_)))
                           (if (gx#stx-pair? _tl1666317230_)
                               (let ((_e1667317257_ (gx#stx-e _tl1666317230_)))
                                 (let ((_hd1667417260_ (##car _e1667317257_))
                                       (_tl1667517262_ (##cdr _e1667317257_)))
                                   (if (gx#stx-pair? _hd1667417260_)
                                       (let ((_e1667617265_
                                              (gx#stx-e _hd1667417260_)))
                                         (let ((_hd1667717268_
                                                (##car _e1667617265_))
                                               (_tl1667817270_
                                                (##cdr _e1667617265_)))
                                           (if (gx#identifier? _hd1667717268_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1667717268_)
                                                   (if (gx#stx-pair?
                                                        _tl1667817270_)
                                                       (let ((_e1667917273_
                                                              (gx#stx-e
                                                               _tl1667817270_)))
                                                         (let ((_hd1668017276_
                                                                (##car _e1667917273_))
                                                               (_tl1668117278_
                                                                (##cdr _e1667917273_)))
                                                           (if (gx#stx-pair?
                                                                _hd1668017276_)
                                                               (let ((_e1668217281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1668017276_)))
                         (let ((_hd1668317284_ (##car _e1668217281_))
                               (_tl1668417286_ (##cdr _e1668217281_)))
                           (if (gx#identifier? _hd1668317284_)
                               (if (gx#stx-eq? '%#ref _hd1668317284_)
                                   (if (gx#stx-pair? _tl1668417286_)
                                       (let ((_e1668517289_
                                              (gx#stx-e _tl1668417286_)))
                                         (let ((_hd1668617292_
                                                (##car _e1668517289_))
                                               (_tl1668717294_
                                                (##cdr _e1668517289_)))
                                           (if (gx#stx-null? _tl1668717294_)
                                               (if (gx#stx-pair/null?
                                                    _tl1668117278_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1668117278_)
                                                             '0)
                                                       (let ((_g18535_
                                                              (gx#syntax-split-splice
                                                               _tl1668117278_
                                                               '0)))
                                                         (begin
                                                           (let ((_g18536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g18535_)))
                     (if (not (fx= _g18536_ 2))
                         (error "Context expects 2 values" _g18536_)))
                   (let ((_target1668817297_ (values-ref _g18535_ 0))
                         (_tl1669017299_ (values-ref _g18535_ 1)))
                     (if (gx#stx-null? _tl1669017299_)
                         (letrec ((_loop1669117302_
                                   (lambda (_hd1668917305_ _xarg1669517307_)
                                     (if (gx#stx-pair? _hd1668917305_)
                                         (let ((_e1669217310_
                                                (gx#stx-e _hd1668917305_)))
                                           (let ((_lp-hd1669317313_
                                                  (##car _e1669217310_))
                                                 (_lp-tl1669417315_
                                                  (##cdr _e1669217310_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1669317313_)
                                                 (let ((_e1669717318_
                                                        (gx#stx-e
                                                         _lp-hd1669317313_)))
                                                   (let ((_hd1669817321_
                                                          (##car _e1669717318_))
                                                         (_tl1669917323_
                                                          (##cdr _e1669717318_)))
                                                     (if (gx#identifier?
                                                          _hd1669817321_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1669817321_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1669917323_)
                         (let ((_e1670017326_ (gx#stx-e _tl1669917323_)))
                           (let ((_hd1670117329_ (##car _e1670017326_))
                                 (_tl1670217331_ (##cdr _e1670017326_)))
                             (if (gx#stx-null? _tl1670217331_)
                                 (_loop1669117302_
                                  _lp-tl1669417315_
                                  (cons _hd1670117329_ _xarg1669517307_))
                                 (_g1665317220_ _g1665717223_))))
                         (_g1665317220_ _g1665717223_))
                     (_g1665317220_ _g1665717223_))
                 (_g1665317220_ _g1665717223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1665317220_
                                                  _g1665717223_))))
                                         (let ((_xarg1669617334_
                                                (reverse _xarg1669517307_)))
                                           (if (gx#stx-null? _tl1667517262_)
                                               ((lambda (_L17337_
                                                         _L17338_
                                                         _L17339_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1736717370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1736817372_)
                               (cons _g1736717370_ _g1736817372_))
                             '()
                             _L17339_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1737417377_
                                                      _g1737517379_)
                                               (cons _g1737417377_
                                                     _g1737517379_))
                                             '()
                                             _L17339_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1738117384_
                                                      _g1738217386_)
                                               (cons _g1738117384_
                                                     _g1738217386_))
                                             '()
                                             _L17337_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1738817391_
                                                     _g1738917393_)
                                              (cons _g1738817391_
                                                    _g1738917393_))
                                            '()
                                            _L17339_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1739517398_
                                                     _g1739617400_)
                                              (cons _g1739517398_
                                                    _g1739617400_))
                                            '()
                                            _L17337_)))
                          (not (find (lambda (_g1740217404_)
                                       (gx#free-identifier=?
                                        _g1740217404_
                                        _L17338_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1740617409_
                                                        _g1740717411_)
                                                 (cons _g1740617409_
                                                       _g1740717411_))
                                               '()
                                               _L17339_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1665317220_ _g1665717223_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1669617334_
                                                _hd1668617292_
                                                _arg1667217254_)
                                               (_g1665317220_
                                                _g1665717223_)))))))
                           (_loop1669117302_ _target1668817297_ '()))
                         (_g1665317220_ _g1665717223_)))))
               (_g1665317220_ _g1665717223_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1665317220_
                                                    _g1665717223_))
                                               (_g1665317220_ _g1665717223_))))
                                       (_g1665317220_ _g1665717223_))
                                   (_g1665317220_ _g1665717223_))
                               (_g1665317220_ _g1665717223_))))
                       (_g1665317220_ _g1665717223_))))
               (_g1665317220_ _g1665717223_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1665317220_
                                                    _g1665717223_))
                                               (_g1665317220_ _g1665717223_))))
                                       (_g1665317220_ _g1665717223_))))
                               (_g1665317220_ _g1665717223_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1666717238_
                                                    _target1666417233_
                                                    '()))
                                                 (_g1665317220_
                                                  _g1665717223_)))))
                                       (_g1665317220_ _g1665717223_))
                                   (_g1665317220_ _g1665717223_))))
                           (_g1665317220_ _g1665717223_)))))
                (_g1665217414_ _form16651_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form16119_)
      (let ((_g1612316247_
             (lambda (_g1612416244_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1612416244_))))
        (let ((_g1612216364_
               (lambda (_g1612416250_)
                 (if (gx#stx-pair? _g1612416250_)
                     (let ((_e1621316252_ (gx#stx-e _g1612416250_)))
                       (let ((_hd1621416255_ (##car _e1621316252_))
                             (_tl1621516257_ (##cdr _e1621316252_)))
                         (if (gx#stx-pair? _tl1621516257_)
                             (let ((_e1621616260_ (gx#stx-e _tl1621516257_)))
                               (let ((_hd1621716263_ (##car _e1621616260_))
                                     (_tl1621816265_ (##cdr _e1621616260_)))
                                 (if (gx#stx-pair? _hd1621716263_)
                                     (let ((_e1621916268_
                                            (gx#stx-e _hd1621716263_)))
                                       (let ((_hd1622016271_
                                              (##car _e1621916268_))
                                             (_tl1622116273_
                                              (##cdr _e1621916268_)))
                                         (if (gx#identifier? _hd1622016271_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1622016271_)
                                                 (if (gx#stx-pair?
                                                      _tl1622116273_)
                                                     (let ((_e1622216276_
                                                            (gx#stx-e
                                                             _tl1622116273_)))
                                                       (let ((_hd1622316279_
                                                              (##car _e1622216276_))
                                                             (_tl1622416281_
                                                              (##cdr _e1622216276_)))
                                                         (if (gx#stx-pair?
                                                              _hd1622316279_)
                                                             (let ((_e1622516284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1622316279_)))
                       (let ((_hd1622616287_ (##car _e1622516284_))
                             (_tl1622716289_ (##cdr _e1622516284_)))
                         (if (gx#identifier? _hd1622616287_)
                             (if (gx#stx-eq? '%#ref _hd1622616287_)
                                 (if (gx#stx-pair? _tl1622716289_)
                                     (let ((_e1622816292_
                                            (gx#stx-e _tl1622716289_)))
                                       (let ((_hd1622916295_
                                              (##car _e1622816292_))
                                             (_tl1623016297_
                                              (##cdr _e1622816292_)))
                                         (if (gx#stx-null? _tl1623016297_)
                                             (if (gx#stx-pair? _tl1622416281_)
                                                 (let ((_e1623116300_
                                                        (gx#stx-e
                                                         _tl1622416281_)))
                                                   (let ((_hd1623216303_
                                                          (##car _e1623116300_))
                                                         (_tl1623316305_
                                                          (##cdr _e1623116300_)))
                                                     (if (gx#stx-pair?
                                                          _hd1623216303_)
                                                         (let ((_e1623416308_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1623216303_)))
                   (let ((_hd1623516311_ (##car _e1623416308_))
                         (_tl1623616313_ (##cdr _e1623416308_)))
                     (if (gx#identifier? _hd1623516311_)
                         (if (gx#stx-eq? '%#ref _hd1623516311_)
                             (if (gx#stx-pair? _tl1623616313_)
                                 (let ((_e1623716316_
                                        (gx#stx-e _tl1623616313_)))
                                   (let ((_hd1623816319_ (##car _e1623716316_))
                                         (_tl1623916321_
                                          (##cdr _e1623716316_)))
                                     (if (gx#stx-null? _tl1623916321_)
                                         (if (gx#stx-pair? _tl1623316305_)
                                             (let ((_e1624016324_
                                                    (gx#stx-e _tl1623316305_)))
                                               (let ((_hd1624116327_
                                                      (##car _e1624016324_))
                                                     (_tl1624216329_
                                                      (##cdr _e1624016324_)))
                                                 (if (gx#stx-null?
                                                      _tl1624216329_)
                                                     (if (gx#stx-null?
                                                          _tl1621816265_)
                                                         ((lambda (_L16332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16333_
                           _L16334_)
                    (gxc#generate-runtime-binding-id _L16332_))
                  _hd1623816319_
                  _hd1622916295_
                  _hd1621416255_)
                 (_g1612316247_ _g1612416250_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1612316247_
                                                      _g1612416250_))))
                                             (_g1612316247_ _g1612416250_))
                                         (_g1612316247_ _g1612416250_))))
                                 (_g1612316247_ _g1612416250_))
                             (_g1612316247_ _g1612416250_))
                         (_g1612316247_ _g1612416250_))))
                 (_g1612316247_ _g1612416250_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1612316247_ _g1612416250_))
                                             (_g1612316247_ _g1612416250_))))
                                     (_g1612316247_ _g1612416250_))
                                 (_g1612316247_ _g1612416250_))
                             (_g1612316247_ _g1612416250_))))
                     (_g1612316247_ _g1612416250_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1612316247_
                                                      _g1612416250_))
                                                 (_g1612316247_ _g1612416250_))
                                             (_g1612316247_ _g1612416250_))))
                                     (_g1612316247_ _g1612416250_))))
                             (_g1612316247_ _g1612416250_))))
                     (_g1612316247_ _g1612416250_)))))
          (let ((_g1612116500_
                 (lambda (_g1612416367_)
                   (if (gx#stx-pair? _g1612416367_)
                       (let ((_e1617416369_ (gx#stx-e _g1612416367_)))
                         (let ((_hd1617516372_ (##car _e1617416369_))
                               (_tl1617616374_ (##cdr _e1617416369_)))
                           (if (gx#stx-pair/null? _hd1617516372_)
                               (if (fx>= (gx#stx-length _hd1617516372_) '0)
                                   (let ((_g18537_
                                          (gx#syntax-split-splice
                                           _hd1617516372_
                                           '0)))
                                     (begin
                                       (let ((_g18538_
                                              (values-count _g18537_)))
                                         (if (not (fx= _g18538_ 2))
                                             (error "Context expects 2 values"
                                                    _g18538_)))
                                       (let ((_target1617716377_
                                              (values-ref _g18537_ 0))
                                             (_tl1617916379_
                                              (values-ref _g18537_ 1)))
                                         (letrec ((_loop1618016382_
                                                   (lambda (_hd1617816385_
                                                            _arg1618416387_)
                                                     (if (gx#stx-pair?
                                                          _hd1617816385_)
                                                         (let ((_e1618116390_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1617816385_)))
                   (let ((_lp-hd1618216393_ (##car _e1618116390_))
                         (_lp-tl1618316395_ (##cdr _e1618116390_)))
                     (_loop1618016382_
                      _lp-tl1618316395_
                      (cons _lp-hd1618216393_ _arg1618416387_))))
                 (let ((_arg1618516398_ (reverse _arg1618416387_)))
                   (if (gx#stx-pair? _tl1617616374_)
                       (let ((_e1618616401_ (gx#stx-e _tl1617616374_)))
                         (let ((_hd1618716404_ (##car _e1618616401_))
                               (_tl1618816406_ (##cdr _e1618616401_)))
                           (if (gx#stx-pair? _hd1618716404_)
                               (let ((_e1618916409_ (gx#stx-e _hd1618716404_)))
                                 (let ((_hd1619016412_ (##car _e1618916409_))
                                       (_tl1619116414_ (##cdr _e1618916409_)))
                                   (if (gx#identifier? _hd1619016412_)
                                       (if (gx#stx-eq? '%#call _hd1619016412_)
                                           (if (gx#stx-pair? _tl1619116414_)
                                               (let ((_e1619216417_
                                                      (gx#stx-e
                                                       _tl1619116414_)))
                                                 (let ((_hd1619316420_
                                                        (##car _e1619216417_))
                                                       (_tl1619416422_
                                                        (##cdr _e1619216417_)))
                                                   (if (gx#stx-pair?
                                                        _hd1619316420_)
                                                       (let ((_e1619516425_
                                                              (gx#stx-e
                                                               _hd1619316420_)))
                                                         (let ((_hd1619616428_
                                                                (##car _e1619516425_))
                                                               (_tl1619716430_
                                                                (##cdr _e1619516425_)))
                                                           (if (gx#identifier?
                                                                _hd1619616428_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1619616428_)
                           (if (gx#stx-pair? _tl1619716430_)
                               (let ((_e1619816433_ (gx#stx-e _tl1619716430_)))
                                 (let ((_hd1619916436_ (##car _e1619816433_))
                                       (_tl1620016438_ (##cdr _e1619816433_)))
                                   (if (gx#stx-null? _tl1620016438_)
                                       (if (gx#stx-pair? _tl1619416422_)
                                           (let ((_e1620116441_
                                                  (gx#stx-e _tl1619416422_)))
                                             (let ((_hd1620216444_
                                                    (##car _e1620116441_))
                                                   (_tl1620316446_
                                                    (##cdr _e1620116441_)))
                                               (if (gx#stx-pair?
                                                    _hd1620216444_)
                                                   (let ((_e1620416449_
                                                          (gx#stx-e
                                                           _hd1620216444_)))
                                                     (let ((_hd1620516452_
                                                            (##car _e1620416449_))
                                                           (_tl1620616454_
                                                            (##cdr _e1620416449_)))
                                                       (if (gx#identifier?
                                                            _hd1620516452_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1620516452_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1620616454_)
                           (let ((_e1620716457_ (gx#stx-e _tl1620616454_)))
                             (let ((_hd1620816460_ (##car _e1620716457_))
                                   (_tl1620916462_ (##cdr _e1620716457_)))
                               (if (gx#stx-null? _tl1620916462_)
                                   (if (gx#stx-null? _tl1618816406_)
                                       ((lambda (_L16465_
                                                 _L16466_
                                                 _L16467_
                                                 _L16468_)
                                          (gxc#generate-runtime-binding-id
                                           _L16465_))
                                        _hd1620816460_
                                        _hd1619916436_
                                        _tl1617916379_
                                        _arg1618516398_)
                                       (_g1612216364_ _g1612416367_))
                                   (_g1612216364_ _g1612416367_))))
                           (_g1612216364_ _g1612416367_))
                       (_g1612216364_ _g1612416367_))
                   (_g1612216364_ _g1612416367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1612216364_
                                                    _g1612416367_))))
                                           (_g1612216364_ _g1612416367_))
                                       (_g1612216364_ _g1612416367_))))
                               (_g1612216364_ _g1612416367_))
                           (_g1612216364_ _g1612416367_))
                       (_g1612216364_ _g1612416367_))))
               (_g1612216364_ _g1612416367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1612216364_ _g1612416367_))
                                           (_g1612216364_ _g1612416367_))
                                       (_g1612216364_ _g1612416367_))))
                               (_g1612216364_ _g1612416367_))))
                       (_g1612216364_ _g1612416367_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1618016382_
                                            _target1617716377_
                                            '())))))
                                   (_g1612216364_ _g1612416367_))
                               (_g1612216364_ _g1612416367_))))
                       (_g1612216364_ _g1612416367_)))))
            (let ((_g1612016648_
                   (lambda (_g1612416503_)
                     (if (gx#stx-pair? _g1612416503_)
                         (let ((_e1612816505_ (gx#stx-e _g1612416503_)))
                           (let ((_hd1612916508_ (##car _e1612816505_))
                                 (_tl1613016510_ (##cdr _e1612816505_)))
                             (if (gx#stx-pair/null? _hd1612916508_)
                                 (if (fx>= (gx#stx-length _hd1612916508_) '0)
                                     (let ((_g18539_
                                            (gx#syntax-split-splice
                                             _hd1612916508_
                                             '0)))
                                       (begin
                                         (let ((_g18540_
                                                (values-count _g18539_)))
                                           (if (not (fx= _g18540_ 2))
                                               (error "Context expects 2 values"
                                                      _g18540_)))
                                         (let ((_target1613116513_
                                                (values-ref _g18539_ 0))
                                               (_tl1613316515_
                                                (values-ref _g18539_ 1)))
                                           (if (gx#stx-null? _tl1613316515_)
                                               (letrec ((_loop1613416518_
                                                         (lambda (_hd1613216521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1613816523_)
                   (if (gx#stx-pair? _hd1613216521_)
                       (let ((_e1613516526_ (gx#stx-e _hd1613216521_)))
                         (let ((_lp-hd1613616529_ (##car _e1613516526_))
                               (_lp-tl1613716531_ (##cdr _e1613516526_)))
                           (_loop1613416518_
                            _lp-tl1613716531_
                            (cons _lp-hd1613616529_ _arg1613816523_))))
                       (let ((_arg1613916534_ (reverse _arg1613816523_)))
                         (if (gx#stx-pair? _tl1613016510_)
                             (let ((_e1614016537_ (gx#stx-e _tl1613016510_)))
                               (let ((_hd1614116540_ (##car _e1614016537_))
                                     (_tl1614216542_ (##cdr _e1614016537_)))
                                 (if (gx#stx-pair? _hd1614116540_)
                                     (let ((_e1614316545_
                                            (gx#stx-e _hd1614116540_)))
                                       (let ((_hd1614416548_
                                              (##car _e1614316545_))
                                             (_tl1614516550_
                                              (##cdr _e1614316545_)))
                                         (if (gx#identifier? _hd1614416548_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1614416548_)
                                                 (if (gx#stx-pair?
                                                      _tl1614516550_)
                                                     (let ((_e1614616553_
                                                            (gx#stx-e
                                                             _tl1614516550_)))
                                                       (let ((_hd1614716556_
                                                              (##car _e1614616553_))
                                                             (_tl1614816558_
                                                              (##cdr _e1614616553_)))
                                                         (if (gx#stx-pair?
                                                              _hd1614716556_)
                                                             (let ((_e1614916561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1614716556_)))
                       (let ((_hd1615016564_ (##car _e1614916561_))
                             (_tl1615116566_ (##cdr _e1614916561_)))
                         (if (gx#identifier? _hd1615016564_)
                             (if (gx#stx-eq? '%#ref _hd1615016564_)
                                 (if (gx#stx-pair? _tl1615116566_)
                                     (let ((_e1615216569_
                                            (gx#stx-e _tl1615116566_)))
                                       (let ((_hd1615316572_
                                              (##car _e1615216569_))
                                             (_tl1615416574_
                                              (##cdr _e1615216569_)))
                                         (if (gx#stx-null? _tl1615416574_)
                                             (if (gx#stx-pair/null?
                                                  _tl1614816558_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1614816558_)
                                                           '0)
                                                     (let ((_g18541_
                                                            (gx#syntax-split-splice
                                                             _tl1614816558_
                                                             '0)))
                                                       (begin
                                                         (let ((_g18542_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g18541_)))
                   (if (not (fx= _g18542_ 2))
                       (error "Context expects 2 values" _g18542_)))
                 (let ((_target1615516577_ (values-ref _g18541_ 0))
                       (_tl1615716579_ (values-ref _g18541_ 1)))
                   (if (gx#stx-null? _tl1615716579_)
                       (letrec ((_loop1615816582_
                                 (lambda (_hd1615616585_ _xarg1616216587_)
                                   (if (gx#stx-pair? _hd1615616585_)
                                       (let ((_e1615916590_
                                              (gx#stx-e _hd1615616585_)))
                                         (let ((_lp-hd1616016593_
                                                (##car _e1615916590_))
                                               (_lp-tl1616116595_
                                                (##cdr _e1615916590_)))
                                           (if (gx#stx-pair? _lp-hd1616016593_)
                                               (let ((_e1616416598_
                                                      (gx#stx-e
                                                       _lp-hd1616016593_)))
                                                 (let ((_hd1616516601_
                                                        (##car _e1616416598_))
                                                       (_tl1616616603_
                                                        (##cdr _e1616416598_)))
                                                   (if (gx#identifier?
                                                        _hd1616516601_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1616516601_)
                                                           (if (gx#stx-pair?
                                                                _tl1616616603_)
                                                               (let ((_e1616716606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1616616603_)))
                         (let ((_hd1616816609_ (##car _e1616716606_))
                               (_tl1616916611_ (##cdr _e1616716606_)))
                           (if (gx#stx-null? _tl1616916611_)
                               (_loop1615816582_
                                _lp-tl1616116595_
                                (cons _hd1616816609_ _xarg1616216587_))
                               (_g1612116500_ _g1612416503_))))
                       (_g1612116500_ _g1612416503_))
                   (_g1612116500_ _g1612416503_))
               (_g1612116500_ _g1612416503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1612116500_ _g1612416503_))))
                                       (let ((_xarg1616316614_
                                              (reverse _xarg1616216587_)))
                                         (if (gx#stx-null? _tl1614216542_)
                                             ((lambda (_L16617_
                                                       _L16618_
                                                       _L16619_)
                                                (gxc#generate-runtime-binding-id
                                                 _L16618_))
                                              _xarg1616316614_
                                              _hd1615316572_
                                              _arg1613916534_)
                                             (_g1612116500_
                                              _g1612416503_)))))))
                         (_loop1615816582_ _target1615516577_ '()))
                       (_g1612116500_ _g1612416503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1612116500_
                                                      _g1612416503_))
                                                 (_g1612116500_ _g1612416503_))
                                             (_g1612116500_ _g1612416503_))))
                                     (_g1612116500_ _g1612416503_))
                                 (_g1612116500_ _g1612416503_))
                             (_g1612116500_ _g1612416503_))))
                     (_g1612116500_ _g1612416503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1612116500_
                                                      _g1612416503_))
                                                 (_g1612116500_ _g1612416503_))
                                             (_g1612116500_ _g1612416503_))))
                                     (_g1612116500_ _g1612416503_))))
                             (_g1612116500_ _g1612416503_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1613416518_
                                                  _target1613116513_
                                                  '()))
                                               (_g1612116500_
                                                _g1612416503_)))))
                                     (_g1612116500_ _g1612416503_))
                                 (_g1612116500_ _g1612416503_))))
                         (_g1612116500_ _g1612416503_)))))
              (_g1612016648_ _form16119_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form15923_)
      (let ((_g1592515939_
             (lambda (_g1592615936_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1592615936_))))
        (let ((_g1592416116_
               (lambda (_g1592615942_)
                 (if (gx#stx-pair? _g1592615942_)
                     (let ((_e1592915944_ (gx#stx-e _g1592615942_)))
                       (let ((_hd1593015947_ (##car _e1592915944_))
                             (_tl1593115949_ (##cdr _e1592915944_)))
                         (if (gx#stx-pair? _tl1593115949_)
                             (let ((_e1593215952_ (gx#stx-e _tl1593115949_)))
                               (let ((_hd1593315955_ (##car _e1593215952_))
                                     (_tl1593415957_ (##cdr _e1593215952_)))
                                 (if (gx#stx-null? _tl1593415957_)
                                     ((lambda (_L15960_ _L15961_)
                                        (let ((_g1597616004_
                                               (lambda (_g1597716001_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1597716001_))))
                                          (let ((_g1597516017_
                                                 (lambda (_g1597716007_)
                                                   ((lambda (_L16009_)
                                                      (cons '0 '()))
                                                    _g1597716007_))))
                                            (let ((_g1597416066_
                                                   (lambda (_g1597716020_)
                                                     (if (gx#stx-pair/null?
                                                          _g1597716020_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1597716020_)
                           '0)
                     (let ((_g18543_
                            (gx#syntax-split-splice _g1597716020_ '0)))
                       (begin
                         (let ((_g18544_ (values-count _g18543_)))
                           (if (not (fx= _g18544_ 2))
                               (error "Context expects 2 values" _g18544_)))
                         (let ((_target1599016022_ (values-ref _g18543_ 0))
                               (_tl1599216024_ (values-ref _g18543_ 1)))
                           (letrec ((_loop1599316027_
                                     (lambda (_hd1599116030_ _arg1599716032_)
                                       (if (gx#stx-pair? _hd1599116030_)
                                           (let ((_e1599416035_
                                                  (gx#stx-e _hd1599116030_)))
                                             (let ((_lp-hd1599516038_
                                                    (##car _e1599416035_))
                                                   (_lp-tl1599616040_
                                                    (##cdr _e1599416035_)))
                                               (_loop1599316027_
                                                _lp-tl1599616040_
                                                (cons _lp-hd1599516038_
                                                      _arg1599716032_))))
                                           (let ((_arg1599816043_
                                                  (reverse _arg1599716032_)))
                                             ((lambda (_L16046_ _L16047_)
                                                (cons (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1605816061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1605916063_)
                                  (cons _g1605816061_ _g1605916063_))
                                '()
                                _L16047_)))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _tl1599216024_
                                              _arg1599816043_))))))
                             (_loop1599316027_ _target1599016022_ '())))))
                     (_g1597516017_ _g1597716020_))
                 (_g1597516017_ _g1597716020_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1597316113_
                                                     (lambda (_g1597716069_)
                                                       (if (gx#stx-pair/null?
                                                            _g1597716069_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1597716069_)
                             '0)
                       (let ((_g18545_
                              (gx#syntax-split-splice _g1597716069_ '0)))
                         (begin
                           (let ((_g18546_ (values-count _g18545_)))
                             (if (not (fx= _g18546_ 2))
                                 (error "Context expects 2 values" _g18546_)))
                           (let ((_target1597916071_ (values-ref _g18545_ 0))
                                 (_tl1598116073_ (values-ref _g18545_ 1)))
                             (if (gx#stx-null? _tl1598116073_)
                                 (letrec ((_loop1598216076_
                                           (lambda (_hd1598016079_
                                                    _arg1598616081_)
                                             (if (gx#stx-pair? _hd1598016079_)
                                                 (let ((_e1598316084_
                                                        (gx#stx-e
                                                         _hd1598016079_)))
                                                   (let ((_lp-hd1598416087_
                                                          (##car _e1598316084_))
                                                         (_lp-tl1598516089_
                                                          (##cdr _e1598316084_)))
                                                     (_loop1598216076_
                                                      _lp-tl1598516089_
                                                      (cons _lp-hd1598416087_
                                                            _arg1598616081_))))
                                                 (let ((_arg1598716092_
                                                        (reverse _arg1598616081_)))
                                                   ((lambda (_L16095_)
                                                      (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1610516108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1610616110_)
                                  (cons _g1610516108_ _g1610616110_))
                                '()
                                _L16095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg1598716092_))))))
                                   (_loop1598216076_ _target1597916071_ '()))
                                 (_g1597416066_ _g1597716069_)))))
                       (_g1597416066_ _g1597716069_))
                   (_g1597416066_ _g1597716069_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1597316113_ _L15961_))))))
                                      _hd1593315955_
                                      _hd1593015947_)
                                     (_g1592515939_ _g1592615942_))))
                             (_g1592515939_ _g1592615942_))))
                     (_g1592515939_ _g1592615942_)))))
          (_g1592416116_ _form15923_)))))
  (define gxc#lambda-expr?
    (lambda (_expr15876_)
      (let ((_g1587915889_
             (lambda (_g1588015886_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1588015886_))))
        (let ((_g1587815896_ (lambda (_g1588015892_) ((lambda () '#f)))))
          (let ((_g1587715920_
                 (lambda (_g1588015899_)
                   (if (gx#stx-pair? _g1588015899_)
                       (let ((_e1588215901_ (gx#stx-e _g1588015899_)))
                         (let ((_hd1588315904_ (##car _e1588215901_))
                               (_tl1588415906_ (##cdr _e1588215901_)))
                           (if (gx#identifier? _hd1588315904_)
                               (if (gx#stx-eq? '%#lambda _hd1588315904_)
                                   ((lambda (_L15909_) '#t) _tl1588415906_)
                                   (_g1587815896_ _g1588015899_))
                               (_g1587815896_ _g1588015899_))))
                       (_g1587815896_ _g1588015899_)))))
            (_g1587715920_ _expr15876_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr15829_)
      (let ((_g1583215842_
             (lambda (_g1583315839_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1583315839_))))
        (let ((_g1583115849_ (lambda (_g1583315845_) ((lambda () '#f)))))
          (let ((_g1583015873_
                 (lambda (_g1583315852_)
                   (if (gx#stx-pair? _g1583315852_)
                       (let ((_e1583515854_ (gx#stx-e _g1583315852_)))
                         (let ((_hd1583615857_ (##car _e1583515854_))
                               (_tl1583715859_ (##cdr _e1583515854_)))
                           (if (gx#identifier? _hd1583615857_)
                               (if (gx#stx-eq? '%#case-lambda _hd1583615857_)
                                   ((lambda (_L15862_) '#t) _tl1583715859_)
                                   (_g1583115849_ _g1583315852_))
                               (_g1583115849_ _g1583315852_))))
                       (_g1583115849_ _g1583315852_)))))
            (_g1583015873_ _expr15829_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr15698_)
      (let ((_g1570115731_
             (lambda (_g1570215728_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1570215728_))))
        (let ((_g1570015738_ (lambda (_g1570215734_) ((lambda () '#f)))))
          (let ((_g1569915826_
                 (lambda (_g1570215741_)
                   (if (gx#stx-pair? _g1570215741_)
                       (let ((_e1570615743_ (gx#stx-e _g1570215741_)))
                         (let ((_hd1570715746_ (##car _e1570615743_))
                               (_tl1570815748_ (##cdr _e1570615743_)))
                           (if (gx#identifier? _hd1570715746_)
                               (if (gx#stx-eq? '%#let-values _hd1570715746_)
                                   (if (gx#stx-pair? _tl1570815748_)
                                       (let ((_e1570915751_
                                              (gx#stx-e _tl1570815748_)))
                                         (let ((_hd1571015754_
                                                (##car _e1570915751_))
                                               (_tl1571115756_
                                                (##cdr _e1570915751_)))
                                           (if (gx#stx-pair? _hd1571015754_)
                                               (let ((_e1571215759_
                                                      (gx#stx-e
                                                       _hd1571015754_)))
                                                 (let ((_hd1571315762_
                                                        (##car _e1571215759_))
                                                       (_tl1571415764_
                                                        (##cdr _e1571215759_)))
                                                   (if (gx#stx-pair?
                                                        _hd1571315762_)
                                                       (let ((_e1571515767_
                                                              (gx#stx-e
                                                               _hd1571315762_)))
                                                         (let ((_hd1571615770_
                                                                (##car _e1571515767_))
                                                               (_tl1571715772_
                                                                (##cdr _e1571515767_)))
                                                           (if (gx#stx-pair?
                                                                _hd1571615770_)
                                                               (let ((_e1571815775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1571615770_)))
                         (let ((_hd1571915778_ (##car _e1571815775_))
                               (_tl1572015780_ (##cdr _e1571815775_)))
                           (if (gx#stx-null? _tl1572015780_)
                               (if (gx#stx-pair? _tl1571715772_)
                                   (let ((_e1572115783_
                                          (gx#stx-e _tl1571715772_)))
                                     (let ((_hd1572215786_
                                            (##car _e1572115783_))
                                           (_tl1572315788_
                                            (##cdr _e1572115783_)))
                                       (if (gx#stx-null? _tl1572315788_)
                                           (if (gx#stx-null? _tl1571415764_)
                                               (if (gx#stx-pair?
                                                    _tl1571115756_)
                                                   (let ((_e1572415791_
                                                          (gx#stx-e
                                                           _tl1571115756_)))
                                                     (let ((_hd1572515794_
                                                            (##car _e1572415791_))
                                                           (_tl1572615796_
                                                            (##cdr _e1572415791_)))
                                                       (if (gx#stx-null?
                                                            _tl1572615796_)
                                                           ((lambda (_L15799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L15800_
                             _L15801_)
                      (if (gx#identifier? _L15801_)
                          (if (gxc#lambda-expr? _L15800_)
                              (gxc#case-lambda-expr? _L15799_)
                              '#f)
                          '#f))
                    _hd1572515794_
                    _hd1572215786_
                    _hd1571915778_)
                   (_g1570015738_ _g1570215741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1570015738_
                                                    _g1570215741_))
                                               (_g1570015738_ _g1570215741_))
                                           (_g1570015738_ _g1570215741_))))
                                   (_g1570015738_ _g1570215741_))
                               (_g1570015738_ _g1570215741_))))
                       (_g1570015738_ _g1570215741_))))
               (_g1570015738_ _g1570215741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1570015738_ _g1570215741_))))
                                       (_g1570015738_ _g1570215741_))
                                   (_g1570015738_ _g1570215741_))
                               (_g1570015738_ _g1570215741_))))
                       (_g1570015738_ _g1570215741_)))))
            (_g1569915826_ _expr15698_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda15438
      (lambda (_stx15440_ _id15441_ _clauses15442_ _gensym?15443_)
        ((letrec ((_lp15445_
                   (lambda (_rest15447_ _ids15448_ _impls15449_ _clauses15450_)
                     (let ((_rest1545115459_ _rest15447_))
                       (let ((_E1545415463_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1545115459_))))
                         (let ((_else1545315467_
                                (lambda ()
                                  (values (reverse _ids15448_)
                                          (reverse _impls15449_)
                                          (reverse _clauses15450_)))))
                           (let ((_K1545515672_
                                  (lambda (_rest15470_ _clause15471_)
                                    (if (gxc#dispatch-lambda-form?
                                         _clause15471_)
                                        (_lp15445_
                                         _rest15470_
                                         _ids15448_
                                         _impls15449_
                                         (cons _clause15471_ _clauses15450_))
                                        (let ((_g1547315484_
                                               (lambda (_g1547415481_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1547415481_))))
                                          (let ((_g1547215669_
                                                 (lambda (_g1547415487_)
                                                   (if (gx#stx-pair?
                                                        _g1547415487_)
                                                       (let ((_e1547715489_
                                                              (gx#stx-e
                                                               _g1547415487_)))
                                                         (let ((_hd1547815492_
                                                                (##car _e1547715489_))
                                                               (_tl1547915494_
                                                                (##cdr _e1547715489_)))
                                                           ((lambda (_L15497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L15498_)
                      (let ((_id15515_
                             (make-symbol
                              (gx#stx-e _id15441_)
                              '"__"
                              (length _clauses15450_)
                              (if _gensym?15443_ (gensym '__) '""))))
                        (let ((_id15517_
                               (gx#core-quote-syntax
                                _id15515_
                                (gx#stx-source _stx15440_))))
                          (let ((_impl15519_
                                 (gxc#xform-wrap-source
                                  (cons (gx#datum->syntax '#f '%#lambda)
                                        (cons _L15498_ _L15497_))
                                  _stx15440_)))
                            (let ((_clause15666_
                                   (let ((_g1552315551_
                                          (lambda (_g1552415548_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1552415548_))))
                                     (let ((_g1552215567_
                                            (lambda (_g1552415554_)
                                              ((lambda (_L15556_)
                                                 (cons _L15498_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'apply '()))
                                  (cons (cons '%#ref (cons _id15517_ '()))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '%#ref)
                                                    (cons _L15556_ '()))
                                              '()))))
                      _stx15440_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g1552415554_))))
                                       (let ((_g1552115616_
                                              (lambda (_g1552415570_)
                                                (if (gx#stx-pair/null?
                                                     _g1552415570_)
                                                    (if (fx>= (gx#stx-length
                                                               _g1552415570_)
                                                              '0)
                                                        (let ((_g18547_
                                                               (gx#syntax-split-splice
                                                                _g1552415570_
                                                                '0)))
                                                          (begin
                                                            (let ((_g18548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g18547_)))
                      (if (not (fx= _g18548_ 2))
                          (error "Context expects 2 values" _g18548_)))
                    (let ((_target1553715572_ (values-ref _g18547_ 0))
                          (_tl1553915574_ (values-ref _g18547_ 1)))
                      (letrec ((_loop1554015577_
                                (lambda (_hd1553815580_ _arg1554415582_)
                                  (if (gx#stx-pair? _hd1553815580_)
                                      (let ((_e1554115585_
                                             (gx#stx-e _hd1553815580_)))
                                        (let ((_lp-hd1554215588_
                                               (##car _e1554115585_))
                                              (_lp-tl1554315590_
                                               (##cdr _e1554115585_)))
                                          (_loop1554015577_
                                           _lp-tl1554315590_
                                           (cons _lp-hd1554215588_
                                                 _arg1554415582_))))
                                      (let ((_arg1554515593_
                                             (reverse _arg1554415582_)))
                                        ((lambda (_L15596_ _L15597_)
                                           (cons _L15498_
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'apply '()))
                            (cons (cons '%#ref (cons _id15517_ '()))
                                  (foldr1 cons
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '%#ref)
                                                      (cons _L15596_ '()))
                                                '())
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1560815611_
                                                             _g1560915613_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1560815611_ '()))
                    _g1560915613_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L15597_))))))
                _stx15440_)
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl1553915574_
                                         _arg1554515593_))))))
                        (_loop1554015577_ _target1553715572_ '())))))
                (_g1552215567_ _g1552415570_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1552215567_
                                                     _g1552415570_)))))
                                         (let ((_g1552015663_
                                                (lambda (_g1552415619_)
                                                  (if (gx#stx-pair/null?
                                                       _g1552415619_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1552415619_)
                        '0)
                  (let ((_g18549_ (gx#syntax-split-splice _g1552415619_ '0)))
                    (begin
                      (let ((_g18550_ (values-count _g18549_)))
                        (if (not (fx= _g18550_ 2))
                            (error "Context expects 2 values" _g18550_)))
                      (let ((_target1552615621_ (values-ref _g18549_ 0))
                            (_tl1552815623_ (values-ref _g18549_ 1)))
                        (if (gx#stx-null? _tl1552815623_)
                            (letrec ((_loop1552915626_
                                      (lambda (_hd1552715629_ _arg1553315631_)
                                        (if (gx#stx-pair? _hd1552715629_)
                                            (let ((_e1553015634_
                                                   (gx#stx-e _hd1552715629_)))
                                              (let ((_lp-hd1553115637_
                                                     (##car _e1553015634_))
                                                    (_lp-tl1553215639_
                                                     (##cdr _e1553015634_)))
                                                (_loop1552915626_
                                                 _lp-tl1553215639_
                                                 (cons _lp-hd1553115637_
                                                       _arg1553315631_))))
                                            (let ((_arg1553415642_
                                                   (reverse _arg1553315631_)))
                                              ((lambda (_L15645_)
                                                 (cons _L15498_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _id15517_ '()))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1565515658_
                                                     _g1565615660_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '%#ref)
                                                          (cons _g1565515658_
                                                                '()))
                                                    _g1565615660_))
                                            '()
                                            _L15645_))))
                      _stx15440_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _arg1553415642_))))))
                              (_loop1552915626_ _target1552615621_ '()))
                            (_g1552115616_ _g1552415619_)))))
                  (_g1552115616_ _g1552415619_))
              (_g1552115616_ _g1552415619_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1552015663_ _L15498_)))))))
                              (let ()
                                (_lp15445_
                                 _rest15470_
                                 (cons _id15517_ _ids15448_)
                                 (cons _impl15519_ _impls15449_)
                                 (cons _clause15666_ _clauses15450_))))))))
                    _tl1547915494_
                    _hd1547815492_)))
               (_g1547315484_ _g1547415487_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1547215669_ _clause15471_)))))))
                             (if (##pair? _rest1545115459_)
                                 (let ((_hd1545615675_
                                        (##car _rest1545115459_))
                                       (_tl1545715677_
                                        (##cdr _rest1545115459_)))
                                   (let ((_clause15680_ _hd1545615675_))
                                     (let ((_rest15682_ _tl1545715677_))
                                       (_K1545515672_
                                        _rest15682_
                                        _clause15680_))))
                                 (_else1545315467_)))))))))
           _lp15445_)
         _clauses15442_
         '()
         '()
         '())))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx15687_ _id15688_ _clauses15689_)
          (let ((_gensym?15691_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda15438
             _stx15687_
             _id15688_
             _clauses15689_
             _gensym?15691_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g18552_
          (let ((_g18551_ (length _g18552_)))
            (cond ((fx= _g18551_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g18552_))
                  ((fx= _g18551_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda15438
                          _g18552_))
                  (else (error "No clause matching arguments" _g18552_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx15029_)
      (let ((_case-lambda-clause-def15031_
             (lambda (_id15436_ _impl15437_)
               (gxc#xform-wrap-source
                (cons '%#define-values
                      (cons (cons _id15436_ '())
                            (cons (gxc#compile-e _impl15437_) '())))
                _stx15029_))))
        (let ((_g1503515080_
               (lambda (_g1503615077_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1503615077_))))
          (let ((_g1503415126_
                 (lambda (_g1503615083_)
                   (if (gx#stx-pair? _g1503615083_)
                       (let ((_e1506715085_ (gx#stx-e _g1503615083_)))
                         (let ((_hd1506815088_ (##car _e1506715085_))
                               (_tl1506915090_ (##cdr _e1506715085_)))
                           (if (gx#stx-pair? _tl1506915090_)
                               (let ((_e1507015093_ (gx#stx-e _tl1506915090_)))
                                 (let ((_hd1507115096_ (##car _e1507015093_))
                                       (_tl1507215098_ (##cdr _e1507015093_)))
                                   (if (gx#stx-pair? _tl1507215098_)
                                       (let ((_e1507315101_
                                              (gx#stx-e _tl1507215098_)))
                                         (let ((_hd1507415104_
                                                (##car _e1507315101_))
                                               (_tl1507515106_
                                                (##cdr _e1507315101_)))
                                           (if (gx#stx-null? _tl1507515106_)
                                               ((lambda (_L15109_ _L15110_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L15110_
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L15109_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15029_))
                                                _hd1507415104_
                                                _hd1507115096_)
                                               (_g1503515080_ _g1503615083_))))
                                       (_g1503515080_ _g1503615083_))))
                               (_g1503515080_ _g1503615083_))))
                       (_g1503515080_ _g1503615083_)))))
            (let ((_g1503315308_
                   (lambda (_g1503615129_)
                     (if (gx#stx-pair? _g1503615129_)
                         (let ((_e1505315131_ (gx#stx-e _g1503615129_)))
                           (let ((_hd1505415134_ (##car _e1505315131_))
                                 (_tl1505515136_ (##cdr _e1505315131_)))
                             (if (gx#stx-pair? _tl1505515136_)
                                 (let ((_e1505615139_
                                        (gx#stx-e _tl1505515136_)))
                                   (let ((_hd1505715142_ (##car _e1505615139_))
                                         (_tl1505815144_
                                          (##cdr _e1505615139_)))
                                     (if (gx#stx-pair? _hd1505715142_)
                                         (let ((_e1505915147_
                                                (gx#stx-e _hd1505715142_)))
                                           (let ((_hd1506015150_
                                                  (##car _e1505915147_))
                                                 (_tl1506115152_
                                                  (##cdr _e1505915147_)))
                                             (if (gx#stx-null? _tl1506115152_)
                                                 (if (gx#stx-pair?
                                                      _tl1505815144_)
                                                     (let ((_e1506215155_
                                                            (gx#stx-e
                                                             _tl1505815144_)))
                                                       (let ((_hd1506315158_
                                                              (##car _e1506215155_))
                                                             (_tl1506415160_
                                                              (##cdr _e1506215155_)))
                                                         (if (gx#stx-null?
                                                              _tl1506415160_)
                                                             ((lambda (_L15163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L15164_)
                        (if (if (gx#identifier? _L15164_)
                                (gxc#opt-lambda-expr? _L15163_)
                                '#f)
                            (let ((_g1518015210_
                                   (lambda (_g1518115207_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1518115207_))))
                              (let ((_g1517915305_
                                     (lambda (_g1518115213_)
                                       (if (gx#stx-pair? _g1518115213_)
                                           (let ((_e1518515215_
                                                  (gx#stx-e _g1518115213_)))
                                             (let ((_hd1518615218_
                                                    (##car _e1518515215_))
                                                   (_tl1518715220_
                                                    (##cdr _e1518515215_)))
                                               (if (gx#stx-pair?
                                                    _tl1518715220_)
                                                   (let ((_e1518815223_
                                                          (gx#stx-e
                                                           _tl1518715220_)))
                                                     (let ((_hd1518915226_
                                                            (##car _e1518815223_))
                                                           (_tl1519015228_
                                                            (##cdr _e1518815223_)))
                                                       (if (gx#stx-pair?
                                                            _hd1518915226_)
                                                           (let ((_e1519115231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1518915226_)))
                     (let ((_hd1519215234_ (##car _e1519115231_))
                           (_tl1519315236_ (##cdr _e1519115231_)))
                       (if (gx#stx-pair? _hd1519215234_)
                           (let ((_e1519415239_ (gx#stx-e _hd1519215234_)))
                             (let ((_hd1519515242_ (##car _e1519415239_))
                                   (_tl1519615244_ (##cdr _e1519415239_)))
                               (if (gx#stx-pair? _hd1519515242_)
                                   (let ((_e1519715247_
                                          (gx#stx-e _hd1519515242_)))
                                     (let ((_hd1519815250_
                                            (##car _e1519715247_))
                                           (_tl1519915252_
                                            (##cdr _e1519715247_)))
                                       (if (gx#stx-null? _tl1519915252_)
                                           (if (gx#stx-pair? _tl1519615244_)
                                               (let ((_e1520015255_
                                                      (gx#stx-e
                                                       _tl1519615244_)))
                                                 (let ((_hd1520115258_
                                                        (##car _e1520015255_))
                                                       (_tl1520215260_
                                                        (##cdr _e1520015255_)))
                                                   (if (gx#stx-null?
                                                        _tl1520215260_)
                                                       (if (gx#stx-null?
                                                            _tl1519315236_)
                                                           (if (gx#stx-pair?
                                                                _tl1519015228_)
                                                               (let ((_e1520315263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1519015228_)))
                         (let ((_hd1520415266_ (##car _e1520315263_))
                               (_tl1520515268_ (##cdr _e1520315263_)))
                           (if (gx#stx-null? _tl1520515268_)
                               ((lambda (_L15271_ _L15272_ _L15273_)
                                  (let ((_lambda-id15297_
                                         (make-symbol
                                          (gx#stx-e _L15164_)
                                          '"__"
                                          (gx#stx-e _L15273_))))
                                    (let ((_lambda-id15299_
                                           (gx#core-quote-syntax
                                            _lambda-id15297_
                                            (gx#stx-source _stx15029_))))
                                      (let ((_g18553_
                                             (gx#core-bind-runtime!
                                              _lambda-id15299_)))
                                        (let ((_new-case-lambda-expr15302_
                                               (gxc#apply-expression-subst
                                                _L15271_
                                                _L15273_
                                                _lambda-id15299_)))
                                          (let ()
                                            (begin
                                              (gxc#verbose
                                               '"lift opt-lambda dispatch "
                                               (gxc#generate-runtime-binding-id
                                                _L15164_)
                                               '" => "
                                               (gxc#generate-runtime-binding-id
                                                _lambda-id15299_))
                                              (gxc#xform-wrap-source
                                               (cons '%#begin
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _lambda-id15299_ '())
                                (cons (gxc#compile-e _L15272_) '())))
                    _stx15029_)
                   (cons (gxc#lift-top-lambda-define-values%
                          (gxc#xform-wrap-source
                           (cons '%#define-values
                                 (cons (cons _L15164_ '())
                                       (cons _new-case-lambda-expr15302_ '())))
                           _stx15029_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx15029_))))))))
                                _hd1520415266_
                                _hd1520115258_
                                _hd1519815250_)
                               (_g1518015210_ _g1518115213_))))
                       (_g1518015210_ _g1518115213_))
                   (_g1518015210_ _g1518115213_))
               (_g1518015210_ _g1518115213_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1518015210_ _g1518115213_))
                                           (_g1518015210_ _g1518115213_))))
                                   (_g1518015210_ _g1518115213_))))
                           (_g1518015210_ _g1518115213_))))
                   (_g1518015210_ _g1518115213_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1518015210_
                                                    _g1518115213_))))
                                           (_g1518015210_ _g1518115213_)))))
                                (_g1517915305_ _L15163_)))
                            (_g1503415126_ _g1503615129_)))
                      _hd1506315158_
                      _hd1506015150_)
                     (_g1503415126_ _g1503615129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1503415126_
                                                      _g1503615129_))
                                                 (_g1503415126_
                                                  _g1503615129_))))
                                         (_g1503415126_ _g1503615129_))))
                                 (_g1503415126_ _g1503615129_))))
                         (_g1503415126_ _g1503615129_)))))
              (let ((_g1503215433_
                     (lambda (_g1503615311_)
                       (if (gx#stx-pair? _g1503615311_)
                           (let ((_e1503915313_ (gx#stx-e _g1503615311_)))
                             (let ((_hd1504015316_ (##car _e1503915313_))
                                   (_tl1504115318_ (##cdr _e1503915313_)))
                               (if (gx#stx-pair? _tl1504115318_)
                                   (let ((_e1504215321_
                                          (gx#stx-e _tl1504115318_)))
                                     (let ((_hd1504315324_
                                            (##car _e1504215321_))
                                           (_tl1504415326_
                                            (##cdr _e1504215321_)))
                                       (if (gx#stx-pair? _hd1504315324_)
                                           (let ((_e1504515329_
                                                  (gx#stx-e _hd1504315324_)))
                                             (let ((_hd1504615332_
                                                    (##car _e1504515329_))
                                                   (_tl1504715334_
                                                    (##cdr _e1504515329_)))
                                               (if (gx#stx-null?
                                                    _tl1504715334_)
                                                   (if (gx#stx-pair?
                                                        _tl1504415326_)
                                                       (let ((_e1504815337_
                                                              (gx#stx-e
                                                               _tl1504415326_)))
                                                         (let ((_hd1504915340_
                                                                (##car _e1504815337_))
                                                               (_tl1505015342_
                                                                (##cdr _e1504815337_)))
                                                           (if (gx#stx-null?
                                                                _tl1505015342_)
                                                               ((lambda (_L15345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L15346_)
                          (if (if (gx#identifier? _L15346_)
                                  (gxc#case-lambda-expr? _L15345_)
                                  '#f)
                              (let ((_g1536315377_
                                     (lambda (_g1536415374_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1536415374_))))
                                (let ((_g1536215408_
                                       (lambda (_g1536415380_)
                                         (if (gx#stx-pair? _g1536415380_)
                                             (let ((_e1537015382_
                                                    (gx#stx-e _g1536415380_)))
                                               (let ((_hd1537115385_
                                                      (##car _e1537015382_))
                                                     (_tl1537215387_
                                                      (##cdr _e1537015382_)))
                                                 ((lambda (_L15390_)
                                                    (let ((_g18554_
                                                           (gxc#lift-case-lambda-clauses__0
                                                            _stx15029_
                                                            _L15346_
                                                            _L15390_)))
                                                      (begin
                                                        (let ((_g18555_
                                                               (values-count
                                                                _g18554_)))
                                                          (if (not (fx= _g18555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                3))
                      (error "Context expects 3 values" _g18555_)))
                (let ((_ids15400_ (values-ref _g18554_ 0))
                      (_impls15401_ (values-ref _g18554_ 1))
                      (_clauses15402_ (values-ref _g18554_ 2)))
                  (let ((_g18556_ (for-each gx#core-bind-runtime! _ids15400_)))
                    (let ((_defs15405_
                           (map _case-lambda-clause-def15031_
                                _ids15400_
                                _impls15401_)))
                      (let ()
                        (begin
                          (gxc#verbose
                           '"lift case-lambda clauses "
                           (gxc#generate-runtime-binding-id _L15346_)
                           '" => "
                           (map gxc#identifier-symbol _ids15400_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (foldr1 cons
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _L15346_ '())
                                                            (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#case-lambda _clauses15402_)
                           (gx#datum->syntax '#f 'case-lambda-expr))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx15029_)
                                               '())
                                         _defs15405_))
                           _stx15029_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1537215387_)))
                                             (_g1536315377_ _g1536415380_)))))
                                  (let ((_g1536115430_
                                         (lambda (_g1536415411_)
                                           (if (gx#stx-pair? _g1536415411_)
                                               (let ((_e1536615413_
                                                      (gx#stx-e
                                                       _g1536415411_)))
                                                 (let ((_hd1536715416_
                                                        (##car _e1536615413_))
                                                       (_tl1536815418_
                                                        (##cdr _e1536615413_)))
                                                   ((lambda (_L15421_)
                                                      (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L15421_)
                  _stx15029_
                  (_g1536215408_ _g1536415411_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1536815418_)))
                                               (_g1536215408_
                                                _g1536415411_)))))
                                    (_g1536115430_ _L15345_))))
                              (_g1503315308_ _g1503615311_)))
                        _hd1504915340_
                        _hd1504615332_)
                       (_g1503315308_ _g1503615311_))))
               (_g1503315308_ _g1503615311_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1503315308_
                                                    _g1503615311_))))
                                           (_g1503315308_ _g1503615311_))))
                                   (_g1503315308_ _g1503615311_))))
                           (_g1503315308_ _g1503615311_)))))
                (_g1503215433_ _stx15029_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx14452_)
      (let ((_bind-e__opt-lambda15011__1850518506_
             (lambda (_id15013_ _expr15014_ _compile?15015_)
               (cons (cons _id15013_ '())
                     (cons (if _compile?15015_
                               (gxc#compile-e _expr15014_)
                               _expr15014_)
                           '())))))
        (let ((_bind-e__0__1850718508_
               (lambda (_id15020_ _expr15021_)
                 (let ((_compile?15023_ '#t))
                   (_bind-e__opt-lambda15011__1850518506_
                    _id15020_
                    _expr15021_
                    _compile?15023_)))))
          (let ((_bind-e14454_
                 (lambda _g18566_
                   (let ((_g18565_ (length _g18566_)))
                     (cond ((fx= _g18565_ 2)
                            (apply _bind-e__0__1850718508_ _g18566_))
                           ((fx= _g18565_ 3)
                            (apply _bind-e__opt-lambda15011__1850518506_
                                   _g18566_))
                           (else
                            (error "No clause matching arguments"
                                   _g18566_)))))))
            (let ((_compile-bindings14455_
                   (lambda (_rest14597_)
                     ((letrec ((_lp14599_
                                (lambda (_rest14601_
                                         _lift114602_
                                         _lift214603_
                                         _bind14604_)
                                  (let ((_rest1460514613_ _rest14601_))
                                    (let ((_E1460814617_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1460514613_))))
                                      (let ((_else1460714621_
                                             (lambda ()
                                               (values (reverse _lift114602_)
                                                       (reverse _lift214603_)
                                                       (reverse _bind14604_)))))
                                        (let ((_K1460915000_
                                               (lambda (_rest14624_ _hd14625_)
                                                 (let ((_g1462914665_
                                                        (lambda (_g1463014662_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1463014662_))))
                                                   (let ((_g1462814706_
                                                          (lambda (_g1463014668_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1463014668_)
                        (let ((_e1465514670_ (gx#stx-e _g1463014668_)))
                          (let ((_hd1465614673_ (##car _e1465514670_))
                                (_tl1465714675_ (##cdr _e1465514670_)))
                            (if (gx#stx-pair? _tl1465714675_)
                                (let ((_e1465814678_
                                       (gx#stx-e _tl1465714675_)))
                                  (let ((_hd1465914681_ (##car _e1465814678_))
                                        (_tl1466014683_ (##cdr _e1465814678_)))
                                    (if (gx#stx-null? _tl1466014683_)
                                        ((lambda (_L14686_ _L14687_)
                                           (_lp14599_
                                            _rest14624_
                                            _lift114602_
                                            _lift214603_
                                            (cons (cons _L14687_
                                                        (cons (gxc#compile-e
                                                               _L14686_)
                                                              '()))
                                                  _bind14604_)))
                                         _hd1465914681_
                                         _hd1465614673_)
                                        (_g1462914665_ _g1463014668_))))
                                (_g1462914665_ _g1463014668_))))
                        (_g1462914665_ _g1463014668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1462714878_
                                                            (lambda (_g1463014709_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1463014709_)
                          (let ((_e1464414711_ (gx#stx-e _g1463014709_)))
                            (let ((_hd1464514714_ (##car _e1464414711_))
                                  (_tl1464614716_ (##cdr _e1464414711_)))
                              (if (gx#stx-pair? _hd1464514714_)
                                  (let ((_e1464714719_
                                         (gx#stx-e _hd1464514714_)))
                                    (let ((_hd1464814722_
                                           (##car _e1464714719_))
                                          (_tl1464914724_
                                           (##cdr _e1464714719_)))
                                      (if (gx#stx-null? _tl1464914724_)
                                          (if (gx#stx-pair? _tl1464614716_)
                                              (let ((_e1465014727_
                                                     (gx#stx-e
                                                      _tl1464614716_)))
                                                (let ((_hd1465114730_
                                                       (##car _e1465014727_))
                                                      (_tl1465214732_
                                                       (##cdr _e1465014727_)))
                                                  (if (gx#stx-null?
                                                       _tl1465214732_)
                                                      ((lambda (_L14735_
                                                                _L14736_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14736_)
                         (gxc#opt-lambda-expr? _L14735_)
                         '#f)
                     (let ((_g1475014780_
                            (lambda (_g1475114777_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1475114777_))))
                       (let ((_g1474914875_
                              (lambda (_g1475114783_)
                                (if (gx#stx-pair? _g1475114783_)
                                    (let ((_e1475514785_
                                           (gx#stx-e _g1475114783_)))
                                      (let ((_hd1475614788_
                                             (##car _e1475514785_))
                                            (_tl1475714790_
                                             (##cdr _e1475514785_)))
                                        (if (gx#stx-pair? _tl1475714790_)
                                            (let ((_e1475814793_
                                                   (gx#stx-e _tl1475714790_)))
                                              (let ((_hd1475914796_
                                                     (##car _e1475814793_))
                                                    (_tl1476014798_
                                                     (##cdr _e1475814793_)))
                                                (if (gx#stx-pair?
                                                     _hd1475914796_)
                                                    (let ((_e1476114801_
                                                           (gx#stx-e
                                                            _hd1475914796_)))
                                                      (let ((_hd1476214804_
                                                             (##car _e1476114801_))
                                                            (_tl1476314806_
                                                             (##cdr _e1476114801_)))
                                                        (if (gx#stx-pair?
                                                             _hd1476214804_)
                                                            (let ((_e1476414809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1476214804_)))
                      (let ((_hd1476514812_ (##car _e1476414809_))
                            (_tl1476614814_ (##cdr _e1476414809_)))
                        (if (gx#stx-pair? _hd1476514812_)
                            (let ((_e1476714817_ (gx#stx-e _hd1476514812_)))
                              (let ((_hd1476814820_ (##car _e1476714817_))
                                    (_tl1476914822_ (##cdr _e1476714817_)))
                                (if (gx#stx-null? _tl1476914822_)
                                    (if (gx#stx-pair? _tl1476614814_)
                                        (let ((_e1477014825_
                                               (gx#stx-e _tl1476614814_)))
                                          (let ((_hd1477114828_
                                                 (##car _e1477014825_))
                                                (_tl1477214830_
                                                 (##cdr _e1477014825_)))
                                            (if (gx#stx-null? _tl1477214830_)
                                                (if (gx#stx-null?
                                                     _tl1476314806_)
                                                    (if (gx#stx-pair?
                                                         _tl1476014798_)
                                                        (let ((_e1477314833_
                                                               (gx#stx-e
                                                                _tl1476014798_)))
                                                          (let ((_hd1477414836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1477314833_))
                        (_tl1477514838_ (##cdr _e1477314833_)))
                    (if (gx#stx-null? _tl1477514838_)
                        ((lambda (_L14841_ _L14842_ _L14843_)
                           (let ((_lambda-id14867_
                                  (make-symbol
                                   (gx#stx-e _L14736_)
                                   '"__"
                                   (gx#stx-e _L14843_)
                                   (gensym '__))))
                             (let ((_lambda-id14869_
                                    (gx#core-quote-syntax
                                     _lambda-id14867_
                                     (gx#stx-source _stx14452_))))
                               (let ((_g18561_
                                      (gx#core-bind-runtime!
                                       _lambda-id14869_)))
                                 (let ((_new-case-lambda-expr14872_
                                        (gxc#apply-expression-subst
                                         _L14841_
                                         _L14843_
                                         _lambda-id14869_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L14736_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id14869_))
                                       (_lp14599_
                                        (cons (_bind-e__opt-lambda15011__1850518506_
                                               _L14736_
                                               _new-case-lambda-expr14872_
                                               '#f)
                                              _rest14624_)
                                        (cons (_bind-e__0__1850718508_
                                               _lambda-id14869_
                                               _L14842_)
                                              _lift114602_)
                                        _lift214603_
                                        _bind14604_))))))))
                         _hd1477414836_
                         _hd1477114828_
                         _hd1476814820_)
                        (_g1475014780_ _g1475114783_))))
                (_g1475014780_ _g1475114783_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1475014780_
                                                     _g1475114783_))
                                                (_g1475014780_
                                                 _g1475114783_))))
                                        (_g1475014780_ _g1475114783_))
                                    (_g1475014780_ _g1475114783_))))
                            (_g1475014780_ _g1475114783_))))
                    (_g1475014780_ _g1475114783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1475014780_
                                                     _g1475114783_))))
                                            (_g1475014780_ _g1475114783_))))
                                    (_g1475014780_ _g1475114783_)))))
                         (_g1474914875_ _L14735_)))
                     (_g1462814706_ _g1463014709_)))
               _hd1465114730_
               _hd1464814722_)
              (_g1462814706_ _g1463014709_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1462814706_ _g1463014709_))
                                          (_g1462814706_ _g1463014709_))))
                                  (_g1462814706_ _g1463014709_))))
                          (_g1462814706_ _g1463014709_)))))
               (let ((_g1462614997_
                      (lambda (_g1463014881_)
                        (if (gx#stx-pair? _g1463014881_)
                            (let ((_e1463314883_ (gx#stx-e _g1463014881_)))
                              (let ((_hd1463414886_ (##car _e1463314883_))
                                    (_tl1463514888_ (##cdr _e1463314883_)))
                                (if (gx#stx-pair? _hd1463414886_)
                                    (let ((_e1463614891_
                                           (gx#stx-e _hd1463414886_)))
                                      (let ((_hd1463714894_
                                             (##car _e1463614891_))
                                            (_tl1463814896_
                                             (##cdr _e1463614891_)))
                                        (if (gx#stx-null? _tl1463814896_)
                                            (if (gx#stx-pair? _tl1463514888_)
                                                (let ((_e1463914899_
                                                       (gx#stx-e
                                                        _tl1463514888_)))
                                                  (let ((_hd1464014902_
                                                         (##car _e1463914899_))
                                                        (_tl1464114904_
                                                         (##cdr _e1463914899_)))
                                                    (if (gx#stx-null?
                                                         _tl1464114904_)
                                                        ((lambda (_L14907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14908_)
                   (if (if (gx#identifier? _L14908_)
                           (gxc#case-lambda-expr? _L14907_)
                           '#f)
                       (let ((_g1492314937_
                              (lambda (_g1492414934_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1492414934_))))
                         (let ((_g1492214972_
                                (lambda (_g1492414940_)
                                  (if (gx#stx-pair? _g1492414940_)
                                      (let ((_e1493014942_
                                             (gx#stx-e _g1492414940_)))
                                        (let ((_hd1493114945_
                                               (##car _e1493014942_))
                                              (_tl1493214947_
                                               (##cdr _e1493014942_)))
                                          ((lambda (_L14950_)
                                             (let ((_g18562_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda15438
                                                     _stx14452_
                                                     _L14908_
                                                     _L14950_
                                                     '#t)))
                                               (begin
                                                 (let ((_g18563_
                                                        (values-count
                                                         _g18562_)))
                                                   (if (not (fx= _g18563_ 3))
                                                       (error "Context expects 3 values"
                                                              _g18563_)))
                                                 (let ((_ids14960_
                                                        (values-ref
                                                         _g18562_
                                                         0))
                                                       (_impls14961_
                                                        (values-ref
                                                         _g18562_
                                                         1))
                                                       (_clauses14962_
                                                        (values-ref
                                                         _g18562_
                                                         2)))
                                                   (let ((_g18564_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids14960_)))
                                                     (let ((_xbind14965_
                                                            (map _bind-e14454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids14960_
                         _impls14961_)))
               (let ((_expr*14967_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses14962_)
                       (gx#datum->syntax '#f 'case-lambda-expr))))
                 (let ((_bind*14969_
                        (_bind-e__opt-lambda15011__1850518506_
                         _L14908_
                         _expr*14967_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L14908_)
                        '" => "
                        (map gxc#identifier-symbol _ids14960_))
                       (_lp14599_
                        _rest14624_
                        _lift114602_
                        (foldl1 cons _lift214603_ _xbind14965_)
                        (cons _bind*14969_ _bind14604_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1493214947_)))
                                      (_g1492314937_ _g1492414940_)))))
                           (let ((_g1492114994_
                                  (lambda (_g1492414975_)
                                    (if (gx#stx-pair? _g1492414975_)
                                        (let ((_e1492614977_
                                               (gx#stx-e _g1492414975_)))
                                          (let ((_hd1492714980_
                                                 (##car _e1492614977_))
                                                (_tl1492814982_
                                                 (##cdr _e1492614977_)))
                                            ((lambda (_L14985_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L14985_)
                                                   (_lp14599_
                                                    _rest14624_
                                                    _lift114602_
                                                    _lift214603_
                                                    (cons (_bind-e__opt-lambda15011__1850518506_
                                                           _L14908_
                                                           _L14907_
                                                           '#f)
                                                          _bind14604_))
                                                   (_g1492214972_
                                                    _g1492414975_)))
                                             _tl1492814982_)))
                                        (_g1492214972_ _g1492414975_)))))
                             (_g1492114994_ _L14907_))))
                       (_g1462714878_ _g1463014881_)))
                 _hd1464014902_
                 _hd1463714894_)
                (_g1462714878_ _g1463014881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1462714878_ _g1463014881_))
                                            (_g1462714878_ _g1463014881_))))
                                    (_g1462714878_ _g1463014881_))))
                            (_g1462714878_ _g1463014881_)))))
                 (_g1462614997_ _hd14625_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1460514613_)
                                              (let ((_hd1461015003_
                                                     (##car _rest1460514613_))
                                                    (_tl1461115005_
                                                     (##cdr _rest1460514613_)))
                                                (let ((_hd15008_
                                                       _hd1461015003_))
                                                  (let ((_rest15010_
                                                         _tl1461115005_))
                                                    (_K1460915000_
                                                     _rest15010_
                                                     _hd15008_))))
                                              (_else1460714621_)))))))))
                        _lp14599_)
                      _rest14597_
                      '()
                      '()
                      '()))))
              (let ((_g1445814484_
                     (lambda (_g1445914481_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1445914481_))))
                (let ((_g1445714491_
                       (lambda (_g1445914487_)
                         ((lambda () (gxc#xform-let-values% _stx14452_))))))
                  (let ((_g1445614594_
                         (lambda (_g1445914494_)
                           (if (gx#stx-pair? _g1445914494_)
                               (let ((_e1446214496_ (gx#stx-e _g1445914494_)))
                                 (let ((_hd1446314499_ (##car _e1446214496_))
                                       (_tl1446414501_ (##cdr _e1446214496_)))
                                   (if (gx#stx-pair? _tl1446414501_)
                                       (let ((_e1446514504_
                                              (gx#stx-e _tl1446414501_)))
                                         (let ((_hd1446614507_
                                                (##car _e1446514504_))
                                               (_tl1446714509_
                                                (##cdr _e1446514504_)))
                                           (if (gx#stx-pair/null?
                                                _hd1446614507_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1446614507_)
                                                         '0)
                                                   (let ((_g18557_
                                                          (gx#syntax-split-splice
                                                           _hd1446614507_
                                                           '0)))
                                                     (begin
                                                       (let ((_g18558_
                                                              (values-count
                                                               _g18557_)))
                                                         (if (not (fx= _g18558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g18558_)))
               (let ((_target1446814512_ (values-ref _g18557_ 0))
                     (_tl1447014514_ (values-ref _g18557_ 1)))
                 (if (gx#stx-null? _tl1447014514_)
                     (letrec ((_loop1447114517_
                               (lambda (_hd1446914520_ _bind1447514522_)
                                 (if (gx#stx-pair? _hd1446914520_)
                                     (let ((_e1447214525_
                                            (gx#stx-e _hd1446914520_)))
                                       (let ((_lp-hd1447314528_
                                              (##car _e1447214525_))
                                             (_lp-tl1447414530_
                                              (##cdr _e1447214525_)))
                                         (_loop1447114517_
                                          _lp-tl1447414530_
                                          (cons _lp-hd1447314528_
                                                _bind1447514522_))))
                                     (let ((_bind1447614533_
                                            (reverse _bind1447514522_)))
                                       (if (gx#stx-pair? _tl1446714509_)
                                           (let ((_e1447714536_
                                                  (gx#stx-e _tl1446714509_)))
                                             (let ((_hd1447814539_
                                                    (##car _e1447714536_))
                                                   (_tl1447914541_
                                                    (##cdr _e1447714536_)))
                                               (if (gx#stx-null?
                                                    _tl1447914541_)
                                                   ((lambda (_L14544_ _L14545_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1456514568_ _g1456614570_)
                                      (cons _g1456514568_ _g1456614570_))
                                    '()
                                    _L14545_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_g18559_
                            (_compile-bindings14455_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1457314576_ _g1457414578_)
                                         (cons _g1457314576_ _g1457414578_))
                                       '()
                                       _L14545_)))))
                       (begin
                         (let ((_g18560_ (values-count _g18559_)))
                           (if (not (fx= _g18560_ 3))
                               (error "Context expects 3 values" _g18560_)))
                         (let ((_lift114581_ (values-ref _g18559_ 0))
                               (_lift214582_ (values-ref _g18559_ 1))
                               (_hd14583_ (values-ref _g18559_ 2)))
                           (let ((_body14585_ (gxc#compile-e _L14544_)))
                             (let ((_expr14587_
                                    (gxc#xform-wrap-source
                                     (cons '%#let-values
                                           (cons _hd14583_
                                                 (cons _body14585_ '())))
                                     _stx14452_)))
                               (let ((_expr14589_
                                      (if (null? _lift214582_)
                                          _expr14587_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift214582_
                                                       (cons _expr14587_ '())))
                                           _stx14452_))))
                                 (let ((_expr14591_
                                        (if (null? _lift114581_)
                                            _expr14589_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift114581_
                                                         (cons _expr14589_
                                                               '())))
                                             _stx14452_))))
                                   (let () _expr14591_)))))))))
                   gx#current-expander-context
                   (gx#make-local-context))
                  (_g1445714491_ _g1445914494_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1447814539_
                                                    _bind1447614533_)
                                                   (_g1445714491_
                                                    _g1445914494_))))
                                           (_g1445714491_ _g1445914494_)))))))
                       (_loop1447114517_ _target1446814512_ '()))
                     (_g1445714491_ _g1445914494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1445714491_
                                                    _g1445914494_))
                                               (_g1445714491_ _g1445914494_))))
                                       (_g1445714491_ _g1445914494_))))
                               (_g1445714491_ _g1445914494_)))))
                    (_g1445614594_ _stx14452_))))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx13884_)
      (let ((_bind-e__opt-lambda14434__1851018511_
             (lambda (_id14436_ _expr14437_ _compile?14438_)
               (cons (cons _id14436_ '())
                     (cons (if _compile?14438_
                               (gxc#compile-e _expr14437_)
                               _expr14437_)
                           '())))))
        (let ((_bind-e__0__1851218513_
               (lambda (_id14443_ _expr14444_)
                 (let ((_compile?14446_ '#t))
                   (_bind-e__opt-lambda14434__1851018511_
                    _id14443_
                    _expr14444_
                    _compile?14446_)))))
          (let ((_bind-e13886_
                 (lambda _g18574_
                   (let ((_g18573_ (length _g18574_)))
                     (cond ((fx= _g18573_ 2)
                            (apply _bind-e__0__1851218513_ _g18574_))
                           ((fx= _g18573_ 3)
                            (apply _bind-e__opt-lambda14434__1851018511_
                                   _g18574_))
                           (else
                            (error "No clause matching arguments"
                                   _g18574_)))))))
            (let ((_compile-bindings13887_
                   (lambda (_rest14022_)
                     ((letrec ((_lp14024_
                                (lambda (_rest14026_ _bind14027_)
                                  (let ((_rest1402814036_ _rest14026_))
                                    (let ((_E1403114040_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1402814036_))))
                                      (let ((_else1403014044_
                                             (lambda ()
                                               (reverse _bind14027_))))
                                        (let ((_K1403214423_
                                               (lambda (_rest14047_ _hd14048_)
                                                 (let ((_g1405214088_
                                                        (lambda (_g1405314085_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1405314085_))))
                                                   (let ((_g1405114129_
                                                          (lambda (_g1405314091_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1405314091_)
                        (let ((_e1407814093_ (gx#stx-e _g1405314091_)))
                          (let ((_hd1407914096_ (##car _e1407814093_))
                                (_tl1408014098_ (##cdr _e1407814093_)))
                            (if (gx#stx-pair? _tl1408014098_)
                                (let ((_e1408114101_
                                       (gx#stx-e _tl1408014098_)))
                                  (let ((_hd1408214104_ (##car _e1408114101_))
                                        (_tl1408314106_ (##cdr _e1408114101_)))
                                    (if (gx#stx-null? _tl1408314106_)
                                        ((lambda (_L14109_ _L14110_)
                                           (_lp14024_
                                            _rest14047_
                                            (cons (cons _L14110_
                                                        (cons (gxc#compile-e
                                                               _L14109_)
                                                              '()))
                                                  _bind14027_)))
                                         _hd1408214104_
                                         _hd1407914096_)
                                        (_g1405214088_ _g1405314091_))))
                                (_g1405214088_ _g1405314091_))))
                        (_g1405214088_ _g1405314091_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1405014301_
                                                            (lambda (_g1405314132_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1405314132_)
                          (let ((_e1406714134_ (gx#stx-e _g1405314132_)))
                            (let ((_hd1406814137_ (##car _e1406714134_))
                                  (_tl1406914139_ (##cdr _e1406714134_)))
                              (if (gx#stx-pair? _hd1406814137_)
                                  (let ((_e1407014142_
                                         (gx#stx-e _hd1406814137_)))
                                    (let ((_hd1407114145_
                                           (##car _e1407014142_))
                                          (_tl1407214147_
                                           (##cdr _e1407014142_)))
                                      (if (gx#stx-null? _tl1407214147_)
                                          (if (gx#stx-pair? _tl1406914139_)
                                              (let ((_e1407314150_
                                                     (gx#stx-e
                                                      _tl1406914139_)))
                                                (let ((_hd1407414153_
                                                       (##car _e1407314150_))
                                                      (_tl1407514155_
                                                       (##cdr _e1407314150_)))
                                                  (if (gx#stx-null?
                                                       _tl1407514155_)
                                                      ((lambda (_L14158_
                                                                _L14159_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14159_)
                         (gxc#opt-lambda-expr? _L14158_)
                         '#f)
                     (let ((_g1417314203_
                            (lambda (_g1417414200_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1417414200_))))
                       (let ((_g1417214298_
                              (lambda (_g1417414206_)
                                (if (gx#stx-pair? _g1417414206_)
                                    (let ((_e1417814208_
                                           (gx#stx-e _g1417414206_)))
                                      (let ((_hd1417914211_
                                             (##car _e1417814208_))
                                            (_tl1418014213_
                                             (##cdr _e1417814208_)))
                                        (if (gx#stx-pair? _tl1418014213_)
                                            (let ((_e1418114216_
                                                   (gx#stx-e _tl1418014213_)))
                                              (let ((_hd1418214219_
                                                     (##car _e1418114216_))
                                                    (_tl1418314221_
                                                     (##cdr _e1418114216_)))
                                                (if (gx#stx-pair?
                                                     _hd1418214219_)
                                                    (let ((_e1418414224_
                                                           (gx#stx-e
                                                            _hd1418214219_)))
                                                      (let ((_hd1418514227_
                                                             (##car _e1418414224_))
                                                            (_tl1418614229_
                                                             (##cdr _e1418414224_)))
                                                        (if (gx#stx-pair?
                                                             _hd1418514227_)
                                                            (let ((_e1418714232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1418514227_)))
                      (let ((_hd1418814235_ (##car _e1418714232_))
                            (_tl1418914237_ (##cdr _e1418714232_)))
                        (if (gx#stx-pair? _hd1418814235_)
                            (let ((_e1419014240_ (gx#stx-e _hd1418814235_)))
                              (let ((_hd1419114243_ (##car _e1419014240_))
                                    (_tl1419214245_ (##cdr _e1419014240_)))
                                (if (gx#stx-null? _tl1419214245_)
                                    (if (gx#stx-pair? _tl1418914237_)
                                        (let ((_e1419314248_
                                               (gx#stx-e _tl1418914237_)))
                                          (let ((_hd1419414251_
                                                 (##car _e1419314248_))
                                                (_tl1419514253_
                                                 (##cdr _e1419314248_)))
                                            (if (gx#stx-null? _tl1419514253_)
                                                (if (gx#stx-null?
                                                     _tl1418614229_)
                                                    (if (gx#stx-pair?
                                                         _tl1418314221_)
                                                        (let ((_e1419614256_
                                                               (gx#stx-e
                                                                _tl1418314221_)))
                                                          (let ((_hd1419714259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1419614256_))
                        (_tl1419814261_ (##cdr _e1419614256_)))
                    (if (gx#stx-null? _tl1419814261_)
                        ((lambda (_L14264_ _L14265_ _L14266_)
                           (let ((_lambda-id14290_
                                  (make-symbol
                                   (gx#stx-e _L14159_)
                                   '"__"
                                   (gx#stx-e _L14266_)
                                   (gensym '__))))
                             (let ((_lambda-id14292_
                                    (gx#core-quote-syntax
                                     _lambda-id14290_
                                     (gx#stx-source _stx13884_))))
                               (let ((_g18569_
                                      (gx#core-bind-runtime!
                                       _lambda-id14292_)))
                                 (let ((_new-case-lambda-expr14295_
                                        (gxc#apply-expression-subst
                                         _L14264_
                                         _L14266_
                                         _lambda-id14292_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L14159_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id14292_))
                                       (_lp14024_
                                        (cons (_bind-e__opt-lambda14434__1851018511_
                                               _L14159_
                                               _new-case-lambda-expr14295_
                                               '#f)
                                              _rest14047_)
                                        (cons (_bind-e__0__1851218513_
                                               _lambda-id14292_
                                               _L14265_)
                                              _bind14027_)))))))))
                         _hd1419714259_
                         _hd1419414251_
                         _hd1419114243_)
                        (_g1417314203_ _g1417414206_))))
                (_g1417314203_ _g1417414206_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1417314203_
                                                     _g1417414206_))
                                                (_g1417314203_
                                                 _g1417414206_))))
                                        (_g1417314203_ _g1417414206_))
                                    (_g1417314203_ _g1417414206_))))
                            (_g1417314203_ _g1417414206_))))
                    (_g1417314203_ _g1417414206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1417314203_
                                                     _g1417414206_))))
                                            (_g1417314203_ _g1417414206_))))
                                    (_g1417314203_ _g1417414206_)))))
                         (_g1417214298_ _L14158_)))
                     (_g1405114129_ _g1405314132_)))
               _hd1407414153_
               _hd1407114145_)
              (_g1405114129_ _g1405314132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1405114129_ _g1405314132_))
                                          (_g1405114129_ _g1405314132_))))
                                  (_g1405114129_ _g1405314132_))))
                          (_g1405114129_ _g1405314132_)))))
               (let ((_g1404914420_
                      (lambda (_g1405314304_)
                        (if (gx#stx-pair? _g1405314304_)
                            (let ((_e1405614306_ (gx#stx-e _g1405314304_)))
                              (let ((_hd1405714309_ (##car _e1405614306_))
                                    (_tl1405814311_ (##cdr _e1405614306_)))
                                (if (gx#stx-pair? _hd1405714309_)
                                    (let ((_e1405914314_
                                           (gx#stx-e _hd1405714309_)))
                                      (let ((_hd1406014317_
                                             (##car _e1405914314_))
                                            (_tl1406114319_
                                             (##cdr _e1405914314_)))
                                        (if (gx#stx-null? _tl1406114319_)
                                            (if (gx#stx-pair? _tl1405814311_)
                                                (let ((_e1406214322_
                                                       (gx#stx-e
                                                        _tl1405814311_)))
                                                  (let ((_hd1406314325_
                                                         (##car _e1406214322_))
                                                        (_tl1406414327_
                                                         (##cdr _e1406214322_)))
                                                    (if (gx#stx-null?
                                                         _tl1406414327_)
                                                        ((lambda (_L14330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14331_)
                   (if (if (gx#identifier? _L14331_)
                           (gxc#case-lambda-expr? _L14330_)
                           '#f)
                       (let ((_g1434614360_
                              (lambda (_g1434714357_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1434714357_))))
                         (let ((_g1434514395_
                                (lambda (_g1434714363_)
                                  (if (gx#stx-pair? _g1434714363_)
                                      (let ((_e1435314365_
                                             (gx#stx-e _g1434714363_)))
                                        (let ((_hd1435414368_
                                               (##car _e1435314365_))
                                              (_tl1435514370_
                                               (##cdr _e1435314365_)))
                                          ((lambda (_L14373_)
                                             (let ((_g18570_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda15438
                                                     _stx13884_
                                                     _L14331_
                                                     _L14373_
                                                     '#t)))
                                               (begin
                                                 (let ((_g18571_
                                                        (values-count
                                                         _g18570_)))
                                                   (if (not (fx= _g18571_ 3))
                                                       (error "Context expects 3 values"
                                                              _g18571_)))
                                                 (let ((_ids14383_
                                                        (values-ref
                                                         _g18570_
                                                         0))
                                                       (_impls14384_
                                                        (values-ref
                                                         _g18570_
                                                         1))
                                                       (_clauses14385_
                                                        (values-ref
                                                         _g18570_
                                                         2)))
                                                   (let ((_g18572_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids14383_)))
                                                     (let ((_xbind14388_
                                                            (map _bind-e13886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids14383_
                         _impls14384_)))
               (let ((_expr*14390_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses14385_)
                       (gx#datum->syntax '#f 'case-lambda-expr))))
                 (let ((_bind*14392_
                        (_bind-e__opt-lambda14434__1851018511_
                         _L14331_
                         _expr*14390_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L14331_)
                        '" => "
                        (map gxc#identifier-symbol _ids14383_))
                       (_lp14024_
                        _rest14047_
                        (cons _bind*14392_
                              (foldl1 cons
                                      _bind14027_
                                      _xbind14388_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1435514370_)))
                                      (_g1434614360_ _g1434714363_)))))
                           (let ((_g1434414417_
                                  (lambda (_g1434714398_)
                                    (if (gx#stx-pair? _g1434714398_)
                                        (let ((_e1434914400_
                                               (gx#stx-e _g1434714398_)))
                                          (let ((_hd1435014403_
                                                 (##car _e1434914400_))
                                                (_tl1435114405_
                                                 (##cdr _e1434914400_)))
                                            ((lambda (_L14408_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L14408_)
                                                   (_lp14024_
                                                    _rest14047_
                                                    (cons (_bind-e__opt-lambda14434__1851018511_
                                                           _L14331_
                                                           _L14330_
                                                           '#f)
                                                          _bind14027_))
                                                   (_g1434514395_
                                                    _g1434714398_)))
                                             _tl1435114405_)))
                                        (_g1434514395_ _g1434714398_)))))
                             (_g1434414417_ _L14330_))))
                       (_g1405014301_ _g1405314304_)))
                 _hd1406314325_
                 _hd1406014317_)
                (_g1405014301_ _g1405314304_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1405014301_ _g1405314304_))
                                            (_g1405014301_ _g1405314304_))))
                                    (_g1405014301_ _g1405314304_))))
                            (_g1405014301_ _g1405314304_)))))
                 (_g1404914420_ _hd14048_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1402814036_)
                                              (let ((_hd1403314426_
                                                     (##car _rest1402814036_))
                                                    (_tl1403414428_
                                                     (##cdr _rest1402814036_)))
                                                (let ((_hd14431_
                                                       _hd1403314426_))
                                                  (let ((_rest14433_
                                                         _tl1403414428_))
                                                    (_K1403214423_
                                                     _rest14433_
                                                     _hd14431_))))
                                              (_else1403014044_)))))))))
                        _lp14024_)
                      _rest14022_
                      '()))))
              (let ((_g1389013917_
                     (lambda (_g1389113914_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1389113914_))))
                (let ((_g1388913924_
                       (lambda (_g1389113920_)
                         ((lambda () (gxc#xform-let-values% _stx13884_))))))
                  (let ((_g1388814019_
                         (lambda (_g1389113927_)
                           (if (gx#stx-pair? _g1389113927_)
                               (let ((_e1389513929_ (gx#stx-e _g1389113927_)))
                                 (let ((_hd1389613932_ (##car _e1389513929_))
                                       (_tl1389713934_ (##cdr _e1389513929_)))
                                   (if (gx#stx-pair? _tl1389713934_)
                                       (let ((_e1389813937_
                                              (gx#stx-e _tl1389713934_)))
                                         (let ((_hd1389913940_
                                                (##car _e1389813937_))
                                               (_tl1390013942_
                                                (##cdr _e1389813937_)))
                                           (if (gx#stx-pair/null?
                                                _hd1389913940_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1389913940_)
                                                         '0)
                                                   (let ((_g18567_
                                                          (gx#syntax-split-splice
                                                           _hd1389913940_
                                                           '0)))
                                                     (begin
                                                       (let ((_g18568_
                                                              (values-count
                                                               _g18567_)))
                                                         (if (not (fx= _g18568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g18568_)))
               (let ((_target1390113945_ (values-ref _g18567_ 0))
                     (_tl1390313947_ (values-ref _g18567_ 1)))
                 (if (gx#stx-null? _tl1390313947_)
                     (letrec ((_loop1390413950_
                               (lambda (_hd1390213953_ _bind1390813955_)
                                 (if (gx#stx-pair? _hd1390213953_)
                                     (let ((_e1390513958_
                                            (gx#stx-e _hd1390213953_)))
                                       (let ((_lp-hd1390613961_
                                              (##car _e1390513958_))
                                             (_lp-tl1390713963_
                                              (##cdr _e1390513958_)))
                                         (_loop1390413950_
                                          _lp-tl1390713963_
                                          (cons _lp-hd1390613961_
                                                _bind1390813955_))))
                                     (let ((_bind1390913966_
                                            (reverse _bind1390813955_)))
                                       (if (gx#stx-pair? _tl1390013942_)
                                           (let ((_e1391013969_
                                                  (gx#stx-e _tl1390013942_)))
                                             (let ((_hd1391113972_
                                                    (##car _e1391013969_))
                                                   (_tl1391213974_
                                                    (##cdr _e1391013969_)))
                                               (if (gx#stx-null?
                                                    _tl1391213974_)
                                                   ((lambda (_L13977_
                                                             _L13978_
                                                             _L13979_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1400014003_ _g1400114005_)
                                      (cons _g1400014003_ _g1400114005_))
                                    '()
                                    _L13978_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_hd14016_
                            (_compile-bindings13887_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1400814011_ _g1400914013_)
                                         (cons _g1400814011_ _g1400914013_))
                                       '()
                                       _L13978_))))
                           (_body14017_ (gxc#compile-e _L13977_)))
                       (gxc#xform-wrap-source
                        (cons _L13979_ (cons _hd14016_ (cons _body14017_ '())))
                        _stx13884_)))
                   gx#current-expander-context
                   (gx#make-local-context))
                  (_g1388913924_ _g1389113927_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1391113972_
                                                    _bind1390913966_
                                                    _hd1389613932_)
                                                   (_g1388913924_
                                                    _g1389113927_))))
                                           (_g1388913924_ _g1389113927_)))))))
                       (_loop1390413950_ _target1390113945_ '()))
                     (_g1388913924_ _g1389113927_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1388913924_
                                                    _g1389113927_))
                                               (_g1388913924_ _g1389113927_))))
                                       (_g1388913924_ _g1389113927_))))
                               (_g1388913924_ _g1389113927_)))))
                    (_g1388814019_ _stx13884_))))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind13805_)
      (let ((_g1380813825_
             (lambda (_g1380913822_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1380913822_))))
        (let ((_g1380713832_ (lambda (_g1380913828_) ((lambda () '#f)))))
          (let ((_g1380613881_
                 (lambda (_g1380913835_)
                   (if (gx#stx-pair? _g1380913835_)
                       (let ((_e1381213837_ (gx#stx-e _g1380913835_)))
                         (let ((_hd1381313840_ (##car _e1381213837_))
                               (_tl1381413842_ (##cdr _e1381213837_)))
                           (if (gx#stx-pair? _hd1381313840_)
                               (let ((_e1381513845_ (gx#stx-e _hd1381313840_)))
                                 (let ((_hd1381613848_ (##car _e1381513845_))
                                       (_tl1381713850_ (##cdr _e1381513845_)))
                                   (if (gx#stx-null? _tl1381713850_)
                                       (if (gx#stx-pair? _tl1381413842_)
                                           (let ((_e1381813853_
                                                  (gx#stx-e _tl1381413842_)))
                                             (let ((_hd1381913856_
                                                    (##car _e1381813853_))
                                                   (_tl1382013858_
                                                    (##cdr _e1381813853_)))
                                               (if (gx#stx-null?
                                                    _tl1382013858_)
                                                   ((lambda (_L13861_ _L13862_)
                                                      (if (gx#identifier?
                                                           _L13862_)
                                                          (let ((_$e13878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#case-lambda-expr? _L13861_)))
                    (if _$e13878_ _$e13878_ (gxc#opt-lambda-expr? _L13861_)))
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1381913856_
                                                    _hd1381613848_)
                                                   (_g1380713832_
                                                    _g1380913835_))))
                                           (_g1380713832_ _g1380913835_))
                                       (_g1380713832_ _g1380913835_))))
                               (_g1380713832_ _g1380913835_))))
                       (_g1380713832_ _g1380913835_)))))
            (_g1380613881_ _bind13805_))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx13743_ _id13744_ _new-id13745_)
      (let ((_g1374813761_
             (lambda (_g1374913758_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1374913758_))))
        (let ((_g1374713768_
               (lambda (_g1374913764_) ((lambda () _stx13743_)))))
          (let ((_g1374613802_
                 (lambda (_g1374913771_)
                   (if (gx#stx-pair? _g1374913771_)
                       (let ((_e1375113773_ (gx#stx-e _g1374913771_)))
                         (let ((_hd1375213776_ (##car _e1375113773_))
                               (_tl1375313778_ (##cdr _e1375113773_)))
                           (if (gx#stx-pair? _tl1375313778_)
                               (let ((_e1375413781_ (gx#stx-e _tl1375313778_)))
                                 (let ((_hd1375513784_ (##car _e1375413781_))
                                       (_tl1375613786_ (##cdr _e1375413781_)))
                                   (if (gx#stx-null? _tl1375613786_)
                                       ((lambda (_L13789_)
                                          (if (gx#free-identifier=?
                                               _L13789_
                                               _id13744_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id13745_ '()))
                                               _stx13743_)
                                              (_g1374713768_ _g1374913771_)))
                                        _hd1375513784_)
                                       (_g1374713768_ _g1374913771_))))
                               (_g1374713768_ _g1374913771_))))
                       (_g1374713768_ _g1374913771_)))))
            (_g1374613802_ _stx13743_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx13599_)
      (let ((_g1360213633_
             (lambda (_g1360313630_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1360313630_))))
        (let ((_g1360113678_
               (lambda (_g1360313636_)
                 (if (gx#stx-pair? _g1360313636_)
                     (let ((_e1362013638_ (gx#stx-e _g1360313636_)))
                       (let ((_hd1362113641_ (##car _e1362013638_))
                             (_tl1362213643_ (##cdr _e1362013638_)))
                         (if (gx#stx-pair? _tl1362213643_)
                             (let ((_e1362313646_ (gx#stx-e _tl1362213643_)))
                               (let ((_hd1362413649_ (##car _e1362313646_))
                                     (_tl1362513651_ (##cdr _e1362313646_)))
                                 (if (gx#stx-pair? _tl1362513651_)
                                     (let ((_e1362613654_
                                            (gx#stx-e _tl1362513651_)))
                                       (let ((_hd1362713657_
                                              (##car _e1362613654_))
                                             (_tl1362813659_
                                              (##cdr _e1362613654_)))
                                         (if (gx#stx-null? _tl1362813659_)
                                             ((lambda (_L13662_ _L13663_)
                                                (gxc#compile-e _L13662_))
                                              _hd1362713657_
                                              _hd1362413649_)
                                             (_g1360213633_ _g1360313636_))))
                                     (_g1360213633_ _g1360313636_))))
                             (_g1360213633_ _g1360313636_))))
                     (_g1360213633_ _g1360313636_)))))
          (let ((_g1360013740_
                 (lambda (_g1360313681_)
                   (if (gx#stx-pair? _g1360313681_)
                       (let ((_e1360613683_ (gx#stx-e _g1360313681_)))
                         (let ((_hd1360713686_ (##car _e1360613683_))
                               (_tl1360813688_ (##cdr _e1360613683_)))
                           (if (gx#stx-pair? _tl1360813688_)
                               (let ((_e1360913691_ (gx#stx-e _tl1360813688_)))
                                 (let ((_hd1361013694_ (##car _e1360913691_))
                                       (_tl1361113696_ (##cdr _e1360913691_)))
                                   (if (gx#stx-pair? _hd1361013694_)
                                       (let ((_e1361213699_
                                              (gx#stx-e _hd1361013694_)))
                                         (let ((_hd1361313702_
                                                (##car _e1361213699_))
                                               (_tl1361413704_
                                                (##cdr _e1361213699_)))
                                           (if (gx#stx-null? _tl1361413704_)
                                               (if (gx#stx-pair?
                                                    _tl1361113696_)
                                                   (let ((_e1361513707_
                                                          (gx#stx-e
                                                           _tl1361113696_)))
                                                     (let ((_hd1361613710_
                                                            (##car _e1361513707_))
                                                           (_tl1361713712_
                                                            (##cdr _e1361513707_)))
                                                       (if (gx#stx-null?
                                                            _tl1361713712_)
                                                           ((lambda (_L13715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L13716_)
                      (if (gx#identifier? _L13716_)
                          (let ((_sym13732_
                                 (gxc#generate-runtime-binding-id _L13716_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym13732_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym13732_)
                                  (let ((_type1373313735_
                                         (gxc#apply-basic-expression-type
                                          _L13715_)))
                                    (if _type1373313735_
                                        (let ((_type13738_ _type1373313735_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym13732_
                                           _type13738_))
                                        '#f)))
                              (gxc#compile-e _L13715_)))
                          (_g1360113678_ _g1360313681_)))
                    _hd1361613710_
                    _hd1361313702_)
                   (_g1360113678_ _g1360313681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1360113678_
                                                    _g1360313681_))
                                               (_g1360113678_ _g1360313681_))))
                                       (_g1360113678_ _g1360313681_))))
                               (_g1360113678_ _g1360313681_))))
                       (_g1360113678_ _g1360313681_)))))
            (_g1360013740_ _stx13599_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx13384_)
      (let ((_collect-e13386_
             (lambda (_hd13543_ _expr13544_)
               (let ((_g1354713557_
                      (lambda (_g1354813554_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1354813554_))))
                 (let ((_g1354613564_
                        (lambda (_g1354813560_) ((lambda () '#!void)))))
                   (let ((_g1354513596_
                          (lambda (_g1354813567_)
                            (if (gx#stx-pair? _g1354813567_)
                                (let ((_e1355013569_ (gx#stx-e _g1354813567_)))
                                  (let ((_hd1355113572_ (##car _e1355013569_))
                                        (_tl1355213574_ (##cdr _e1355013569_)))
                                    (if (gx#stx-null? _tl1355213574_)
                                        ((lambda (_L13577_)
                                           (if (gx#identifier? _L13577_)
                                               (let ((_sym13588_
                                                      (gxc#generate-runtime-binding-id
                                                       _L13577_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym13588_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym13588_)
                                                     (let ((_type1358913591_
                                                            (gxc#apply-basic-expression-type
                                                             _expr13544_)))
                                                       (if _type1358913591_
                                                           (let ((_type13594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1358913591_))
                     (gxc#optimizer-declare-type!__opt-lambda18289
                      _sym13588_
                      _type13594_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1354613564_ _g1354813567_)))
                                         _hd1355113572_)
                                        (_g1354613564_ _g1354813567_))))
                                (_g1354613564_ _g1354813567_)))))
                     (_g1354513596_ _hd13543_)))))))
        (let ((_g1338813423_
               (lambda (_g1338913420_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1338913420_))))
          (let ((_g1338713540_
                 (lambda (_g1338913426_)
                   (if (gx#stx-pair? _g1338913426_)
                       (let ((_e1339313428_ (gx#stx-e _g1338913426_)))
                         (let ((_hd1339413431_ (##car _e1339313428_))
                               (_tl1339513433_ (##cdr _e1339313428_)))
                           (if (gx#stx-pair? _tl1339513433_)
                               (let ((_e1339613436_ (gx#stx-e _tl1339513433_)))
                                 (let ((_hd1339713439_ (##car _e1339613436_))
                                       (_tl1339813441_ (##cdr _e1339613436_)))
                                   (if (gx#stx-pair/null? _hd1339713439_)
                                       (if (fx>= (gx#stx-length _hd1339713439_)
                                                 '0)
                                           (let ((_g18575_
                                                  (gx#syntax-split-splice
                                                   _hd1339713439_
                                                   '0)))
                                             (begin
                                               (let ((_g18576_
                                                      (values-count _g18575_)))
                                                 (if (not (fx= _g18576_ 2))
                                                     (error "Context expects 2 values"
                                                            _g18576_)))
                                               (let ((_target1339913444_
                                                      (values-ref _g18575_ 0))
                                                     (_tl1340113446_
                                                      (values-ref _g18575_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1340113446_)
                                                     (letrec ((_loop1340213449_
                                                               (lambda (_hd1340013452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1340613454_
                                _hd1340713456_)
                         (if (gx#stx-pair? _hd1340013452_)
                             (let ((_e1340313459_ (gx#stx-e _hd1340013452_)))
                               (let ((_lp-hd1340413462_ (##car _e1340313459_))
                                     (_lp-tl1340513464_ (##cdr _e1340313459_)))
                                 (if (gx#stx-pair? _lp-hd1340413462_)
                                     (let ((_e1341013467_
                                            (gx#stx-e _lp-hd1340413462_)))
                                       (let ((_hd1341113470_
                                              (##car _e1341013467_))
                                             (_tl1341213472_
                                              (##cdr _e1341013467_)))
                                         (if (gx#stx-pair? _tl1341213472_)
                                             (let ((_e1341313475_
                                                    (gx#stx-e _tl1341213472_)))
                                               (let ((_hd1341413478_
                                                      (##car _e1341313475_))
                                                     (_tl1341513480_
                                                      (##cdr _e1341313475_)))
                                                 (if (gx#stx-null?
                                                      _tl1341513480_)
                                                     (_loop1340213449_
                                                      _lp-tl1340513464_
                                                      (cons _hd1341413478_
                                                            _expr1340613454_)
                                                      (cons _hd1341113470_
                                                            _hd1340713456_))
                                                     (_g1338813423_
                                                      _g1338913426_))))
                                             (_g1338813423_ _g1338913426_))))
                                     (_g1338813423_ _g1338913426_))))
                             (let ((_expr1340813483_
                                    (reverse _expr1340613454_))
                                   (_hd1340913485_ (reverse _hd1340713456_)))
                               (if (gx#stx-pair? _tl1339813441_)
                                   (let ((_e1341613488_
                                          (gx#stx-e _tl1339813441_)))
                                     (let ((_hd1341713491_
                                            (##car _e1341613488_))
                                           (_tl1341813493_
                                            (##cdr _e1341613488_)))
                                       (if (gx#stx-null? _tl1341813493_)
                                           ((lambda (_L13496_
                                                     _L13497_
                                                     _L13498_)
                                              (begin
                                                (for-each
                                                 _collect-e13386_
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1351813521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1351913523_)
                     (cons _g1351813521_ _g1351913523_))
                   '()
                   _L13498_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1352513528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1352613530_)
                     (cons _g1352513528_ _g1352613530_))
                   '()
                   _L13497_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1353213535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1353313537_)
                     (cons _g1353213535_ _g1353313537_))
                   '()
                   _L13497_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L13496_)))
                                            _hd1341713491_
                                            _expr1340813483_
                                            _hd1340913485_)
                                           (_g1338813423_ _g1338913426_))))
                                   (_g1338813423_ _g1338913426_)))))))
               (_loop1340213449_ _target1339913444_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1338813423_
                                                      _g1338913426_)))))
                                           (_g1338813423_ _g1338913426_))
                                       (_g1338813423_ _g1338913426_))))
                               (_g1338813423_ _g1338913426_))))
                       (_g1338813423_ _g1338913426_)))))
            (_g1338713540_ _stx13384_))))))
  (define gxc#collect-type-call%
    (lambda (_stx12938_)
      (let ((_g1294213044_
             (lambda (_g1294313041_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1294313041_))))
        (let ((_g1294113051_ (lambda (_g1294313047_) ((lambda () '#!void)))))
          (let ((_g1294013201_
                 (lambda (_g1294313054_)
                   (if (gx#stx-pair? _g1294313054_)
                       (let ((_e1300113056_ (gx#stx-e _g1294313054_)))
                         (let ((_hd1300213059_ (##car _e1300113056_))
                               (_tl1300313061_ (##cdr _e1300113056_)))
                           (if (gx#stx-pair? _tl1300313061_)
                               (let ((_e1300413064_ (gx#stx-e _tl1300313061_)))
                                 (let ((_hd1300513067_ (##car _e1300413064_))
                                       (_tl1300613069_ (##cdr _e1300413064_)))
                                   (if (gx#stx-pair? _hd1300513067_)
                                       (let ((_e1300713072_
                                              (gx#stx-e _hd1300513067_)))
                                         (let ((_hd1300813075_
                                                (##car _e1300713072_))
                                               (_tl1300913077_
                                                (##cdr _e1300713072_)))
                                           (if (gx#identifier? _hd1300813075_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1300813075_)
                                                   (if (gx#stx-pair?
                                                        _tl1300913077_)
                                                       (let ((_e1301013080_
                                                              (gx#stx-e
                                                               _tl1300913077_)))
                                                         (let ((_hd1301113083_
                                                                (##car _e1301013080_))
                                                               (_tl1301213085_
                                                                (##cdr _e1301013080_)))
                                                           (if (gx#stx-null?
                                                                _tl1301213085_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1300613069_)
                           (let ((_e1301313088_ (gx#stx-e _tl1300613069_)))
                             (let ((_hd1301413091_ (##car _e1301313088_))
                                   (_tl1301513093_ (##cdr _e1301313088_)))
                               (if (gx#stx-pair? _hd1301413091_)
                                   (let ((_e1301613096_
                                          (gx#stx-e _hd1301413091_)))
                                     (let ((_hd1301713099_
                                            (##car _e1301613096_))
                                           (_tl1301813101_
                                            (##cdr _e1301613096_)))
                                       (if (gx#identifier? _hd1301713099_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1301713099_)
                                               (if (gx#stx-pair?
                                                    _tl1301813101_)
                                                   (let ((_e1301913104_
                                                          (gx#stx-e
                                                           _tl1301813101_)))
                                                     (let ((_hd1302013107_
                                                            (##car _e1301913104_))
                                                           (_tl1302113109_
                                                            (##cdr _e1301913104_)))
                                                       (if (gx#stx-null?
                                                            _tl1302113109_)
                                                           (if (gx#stx-pair?
                                                                _tl1301513093_)
                                                               (let ((_e1302213112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1301513093_)))
                         (let ((_hd1302313115_ (##car _e1302213112_))
                               (_tl1302413117_ (##cdr _e1302213112_)))
                           (if (gx#stx-pair? _hd1302313115_)
                               (let ((_e1302513120_ (gx#stx-e _hd1302313115_)))
                                 (let ((_hd1302613123_ (##car _e1302513120_))
                                       (_tl1302713125_ (##cdr _e1302513120_)))
                                   (if (gx#identifier? _hd1302613123_)
                                       (if (gx#stx-eq? '%#quote _hd1302613123_)
                                           (if (gx#stx-pair? _tl1302713125_)
                                               (let ((_e1302813128_
                                                      (gx#stx-e
                                                       _tl1302713125_)))
                                                 (let ((_hd1302913131_
                                                        (##car _e1302813128_))
                                                       (_tl1303013133_
                                                        (##cdr _e1302813128_)))
                                                   (if (gx#stx-null?
                                                        _tl1303013133_)
                                                       (if (gx#stx-pair?
                                                            _tl1302413117_)
                                                           (let ((_e1303113136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1302413117_)))
                     (let ((_hd1303213139_ (##car _e1303113136_))
                           (_tl1303313141_ (##cdr _e1303113136_)))
                       (if (gx#stx-pair? _hd1303213139_)
                           (let ((_e1303413144_ (gx#stx-e _hd1303213139_)))
                             (let ((_hd1303513147_ (##car _e1303413144_))
                                   (_tl1303613149_ (##cdr _e1303413144_)))
                               (if (gx#identifier? _hd1303513147_)
                                   (if (gx#stx-eq? '%#ref _hd1303513147_)
                                       (if (gx#stx-pair? _tl1303613149_)
                                           (let ((_e1303713152_
                                                  (gx#stx-e _tl1303613149_)))
                                             (let ((_hd1303813155_
                                                    (##car _e1303713152_))
                                                   (_tl1303913157_
                                                    (##cdr _e1303713152_)))
                                               (if (gx#stx-null?
                                                    _tl1303913157_)
                                                   (if (gx#stx-null?
                                                        _tl1303313141_)
                                                       ((lambda (_L13160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13161_
                         _L13162_
                         _L13163_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda18265
                       (gxc#generate-runtime-binding-id _L13162_)
                       (gx#stx-e _L13161_)
                       (gxc#generate-runtime-binding-id _L13160_)
                       '#f)
                      (_g1294113051_ _g1294313054_)))
                _hd1303813155_
                _hd1302913131_
                _hd1302013107_
                _hd1301113083_)
               (_g1294113051_ _g1294313054_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1294113051_
                                                    _g1294313054_))))
                                           (_g1294113051_ _g1294313054_))
                                       (_g1294113051_ _g1294313054_))
                                   (_g1294113051_ _g1294313054_))))
                           (_g1294113051_ _g1294313054_))))
                   (_g1294113051_ _g1294313054_))
               (_g1294113051_ _g1294313054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1294113051_ _g1294313054_))
                                           (_g1294113051_ _g1294313054_))
                                       (_g1294113051_ _g1294313054_))))
                               (_g1294113051_ _g1294313054_))))
                       (_g1294113051_ _g1294313054_))
                   (_g1294113051_ _g1294313054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1294113051_
                                                    _g1294313054_))
                                               (_g1294113051_ _g1294313054_))
                                           (_g1294113051_ _g1294313054_))))
                                   (_g1294113051_ _g1294313054_))))
                           (_g1294113051_ _g1294313054_))
                       (_g1294113051_ _g1294313054_))))
               (_g1294113051_ _g1294313054_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1294113051_
                                                    _g1294313054_))
                                               (_g1294113051_ _g1294313054_))))
                                       (_g1294113051_ _g1294313054_))))
                               (_g1294113051_ _g1294313054_))))
                       (_g1294113051_ _g1294313054_)))))
            (let ((_g1293913381_
                   (lambda (_g1294313204_)
                     (if (gx#stx-pair? _g1294313204_)
                         (let ((_e1294913206_ (gx#stx-e _g1294313204_)))
                           (let ((_hd1295013209_ (##car _e1294913206_))
                                 (_tl1295113211_ (##cdr _e1294913206_)))
                             (if (gx#stx-pair? _tl1295113211_)
                                 (let ((_e1295213214_
                                        (gx#stx-e _tl1295113211_)))
                                   (let ((_hd1295313217_ (##car _e1295213214_))
                                         (_tl1295413219_
                                          (##cdr _e1295213214_)))
                                     (if (gx#stx-pair? _hd1295313217_)
                                         (let ((_e1295513222_
                                                (gx#stx-e _hd1295313217_)))
                                           (let ((_hd1295613225_
                                                  (##car _e1295513222_))
                                                 (_tl1295713227_
                                                  (##cdr _e1295513222_)))
                                             (if (gx#identifier?
                                                  _hd1295613225_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1295613225_)
                                                     (if (gx#stx-pair?
                                                          _tl1295713227_)
                                                         (let ((_e1295813230_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1295713227_)))
                   (let ((_hd1295913233_ (##car _e1295813230_))
                         (_tl1296013235_ (##cdr _e1295813230_)))
                     (if (gx#stx-null? _tl1296013235_)
                         (if (gx#stx-pair? _tl1295413219_)
                             (let ((_e1296113238_ (gx#stx-e _tl1295413219_)))
                               (let ((_hd1296213241_ (##car _e1296113238_))
                                     (_tl1296313243_ (##cdr _e1296113238_)))
                                 (if (gx#stx-pair? _hd1296213241_)
                                     (let ((_e1296413246_
                                            (gx#stx-e _hd1296213241_)))
                                       (let ((_hd1296513249_
                                              (##car _e1296413246_))
                                             (_tl1296613251_
                                              (##cdr _e1296413246_)))
                                         (if (gx#identifier? _hd1296513249_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1296513249_)
                                                 (if (gx#stx-pair?
                                                      _tl1296613251_)
                                                     (let ((_e1296713254_
                                                            (gx#stx-e
                                                             _tl1296613251_)))
                                                       (let ((_hd1296813257_
                                                              (##car _e1296713254_))
                                                             (_tl1296913259_
                                                              (##cdr _e1296713254_)))
                                                         (if (gx#stx-null?
                                                              _tl1296913259_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1296313243_)
                         (let ((_e1297013262_ (gx#stx-e _tl1296313243_)))
                           (let ((_hd1297113265_ (##car _e1297013262_))
                                 (_tl1297213267_ (##cdr _e1297013262_)))
                             (if (gx#stx-pair? _hd1297113265_)
                                 (let ((_e1297313270_
                                        (gx#stx-e _hd1297113265_)))
                                   (let ((_hd1297413273_ (##car _e1297313270_))
                                         (_tl1297513275_
                                          (##cdr _e1297313270_)))
                                     (if (gx#identifier? _hd1297413273_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1297413273_)
                                             (if (gx#stx-pair? _tl1297513275_)
                                                 (let ((_e1297613278_
                                                        (gx#stx-e
                                                         _tl1297513275_)))
                                                   (let ((_hd1297713281_
                                                          (##car _e1297613278_))
                                                         (_tl1297813283_
                                                          (##cdr _e1297613278_)))
                                                     (if (gx#stx-null?
                                                          _tl1297813283_)
                                                         (if (gx#stx-pair?
                                                              _tl1297213267_)
                                                             (let ((_e1297913286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1297213267_)))
                       (let ((_hd1298013289_ (##car _e1297913286_))
                             (_tl1298113291_ (##cdr _e1297913286_)))
                         (if (gx#stx-pair? _hd1298013289_)
                             (let ((_e1298213294_ (gx#stx-e _hd1298013289_)))
                               (let ((_hd1298313297_ (##car _e1298213294_))
                                     (_tl1298413299_ (##cdr _e1298213294_)))
                                 (if (gx#identifier? _hd1298313297_)
                                     (if (gx#stx-eq? '%#ref _hd1298313297_)
                                         (if (gx#stx-pair? _tl1298413299_)
                                             (let ((_e1298513302_
                                                    (gx#stx-e _tl1298413299_)))
                                               (let ((_hd1298613305_
                                                      (##car _e1298513302_))
                                                     (_tl1298713307_
                                                      (##cdr _e1298513302_)))
                                                 (if (gx#stx-null?
                                                      _tl1298713307_)
                                                     (if (gx#stx-pair?
                                                          _tl1298113291_)
                                                         (let ((_e1298813310_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1298113291_)))
                   (let ((_hd1298913313_ (##car _e1298813310_))
                         (_tl1299013315_ (##cdr _e1298813310_)))
                     (if (gx#stx-pair? _hd1298913313_)
                         (let ((_e1299113318_ (gx#stx-e _hd1298913313_)))
                           (let ((_hd1299213321_ (##car _e1299113318_))
                                 (_tl1299313323_ (##cdr _e1299113318_)))
                             (if (gx#identifier? _hd1299213321_)
                                 (if (gx#stx-eq? '%#quote _hd1299213321_)
                                     (if (gx#stx-pair? _tl1299313323_)
                                         (let ((_e1299413326_
                                                (gx#stx-e _tl1299313323_)))
                                           (let ((_hd1299513329_
                                                  (##car _e1299413326_))
                                                 (_tl1299613331_
                                                  (##cdr _e1299413326_)))
                                             (if (gx#stx-null? _tl1299613331_)
                                                 (if (gx#stx-null?
                                                      _tl1299013315_)
                                                     ((lambda (_L13334_
                                                               _L13335_
                                                               _L13336_
                                                               _L13337_
                                                               _L13338_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13338_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda18265
                     (gxc#generate-runtime-binding-id _L13337_)
                     (gx#stx-e _L13336_)
                     (gxc#generate-runtime-binding-id _L13335_)
                     (gx#stx-e _L13334_))
                    (_g1294013201_ _g1294313204_)))
              _hd1299513329_
              _hd1298613305_
              _hd1297713281_
              _hd1296813257_
              _hd1295913233_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1294013201_
                                                      _g1294313204_))
                                                 (_g1294013201_
                                                  _g1294313204_))))
                                         (_g1294013201_ _g1294313204_))
                                     (_g1294013201_ _g1294313204_))
                                 (_g1294013201_ _g1294313204_))))
                         (_g1294013201_ _g1294313204_))))
                 (_g1294013201_ _g1294313204_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1294013201_
                                                      _g1294313204_))))
                                             (_g1294013201_ _g1294313204_))
                                         (_g1294013201_ _g1294313204_))
                                     (_g1294013201_ _g1294313204_))))
                             (_g1294013201_ _g1294313204_))))
                     (_g1294013201_ _g1294313204_))
                 (_g1294013201_ _g1294313204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1294013201_ _g1294313204_))
                                             (_g1294013201_ _g1294313204_))
                                         (_g1294013201_ _g1294313204_))))
                                 (_g1294013201_ _g1294313204_))))
                         (_g1294013201_ _g1294313204_))
                     (_g1294013201_ _g1294313204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1294013201_
                                                      _g1294313204_))
                                                 (_g1294013201_ _g1294313204_))
                                             (_g1294013201_ _g1294313204_))))
                                     (_g1294013201_ _g1294313204_))))
                             (_g1294013201_ _g1294313204_))
                         (_g1294013201_ _g1294313204_))))
                 (_g1294013201_ _g1294313204_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1294013201_
                                                      _g1294313204_))
                                                 (_g1294013201_
                                                  _g1294313204_))))
                                         (_g1294013201_ _g1294313204_))))
                                 (_g1294013201_ _g1294313204_))))
                         (_g1294013201_ _g1294313204_)))))
              (_g1293913381_ _stx12938_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx12878_)
      (let ((_g1288112894_
             (lambda (_g1288212891_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1288212891_))))
        (let ((_g1288012901_ (lambda (_g1288212897_) ((lambda () '#f)))))
          (let ((_g1287912935_
                 (lambda (_g1288212904_)
                   (if (gx#stx-pair? _g1288212904_)
                       (let ((_e1288412906_ (gx#stx-e _g1288212904_)))
                         (let ((_hd1288512909_ (##car _e1288412906_))
                               (_tl1288612911_ (##cdr _e1288412906_)))
                           (if (gx#stx-pair? _tl1288612911_)
                               (let ((_e1288712914_ (gx#stx-e _tl1288612911_)))
                                 (let ((_hd1288812917_ (##car _e1288712914_))
                                       (_tl1288912919_ (##cdr _e1288712914_)))
                                   (if (gx#stx-null? _tl1288912919_)
                                       ((lambda (_L12922_)
                                          (gxc#compile-e _L12922_))
                                        _hd1288812917_)
                                       (_g1288012901_ _g1288212904_))))
                               (_g1288012901_ _g1288212904_))))
                       (_g1288012901_ _g1288212904_)))))
            (_g1287912935_ _stx12878_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx12303_)
      (let ((_g1230812429_
             (lambda (_g1230912426_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1230912426_))))
        (let ((_g1230712436_ (lambda (_g1230912432_) ((lambda () '#f)))))
          (let ((_g1230612460_
                 (lambda (_g1230912439_)
                   (if (gx#stx-pair? _g1230912439_)
                       (let ((_e1242212441_ (gx#stx-e _g1230912439_)))
                         (let ((_hd1242312444_ (##car _e1242212441_))
                               (_tl1242412446_ (##cdr _e1242212441_)))
                           ((lambda (_L12449_)
                              (if (gxc#dispatch-lambda-form? _L12449_)
                                  (let ((__obj18515
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj18515
                                       'lambda
                                       (gxc#lambda-form-arity _L12449_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L12449_))
                                      __obj18515))
                                  (_g1230712436_ _g1230912439_)))
                            _tl1242412446_)))
                       (_g1230712436_ _g1230912439_)))))
            (let ((_g1230512690_
                   (lambda (_g1230912463_)
                     (if (gx#stx-pair? _g1230912463_)
                         (let ((_e1236712465_ (gx#stx-e _g1230912463_)))
                           (let ((_hd1236812468_ (##car _e1236712465_))
                                 (_tl1236912470_ (##cdr _e1236712465_)))
                             (if (gx#stx-pair? _tl1236912470_)
                                 (let ((_e1237012473_
                                        (gx#stx-e _tl1236912470_)))
                                   (let ((_hd1237112476_ (##car _e1237012473_))
                                         (_tl1237212478_
                                          (##cdr _e1237012473_)))
                                     (if (gx#stx-pair/null? _hd1237112476_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1237112476_)
                                                   '0)
                                             (let ((_g18577_
                                                    (gx#syntax-split-splice
                                                     _hd1237112476_
                                                     '0)))
                                               (begin
                                                 (let ((_g18578_
                                                        (values-count
                                                         _g18577_)))
                                                   (if (not (fx= _g18578_ 2))
                                                       (error "Context expects 2 values"
                                                              _g18578_)))
                                                 (let ((_target1237312481_
                                                        (values-ref
                                                         _g18577_
                                                         0))
                                                       (_tl1237512483_
                                                        (values-ref
                                                         _g18577_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1237512483_)
                                                       (letrec ((_loop1237612486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1237412489_ _arg1238012491_)
                           (if (gx#stx-pair? _hd1237412489_)
                               (let ((_e1237712494_ (gx#stx-e _hd1237412489_)))
                                 (let ((_lp-hd1237812497_
                                        (##car _e1237712494_))
                                       (_lp-tl1237912499_
                                        (##cdr _e1237712494_)))
                                   (_loop1237612486_
                                    _lp-tl1237912499_
                                    (cons _lp-hd1237812497_ _arg1238012491_))))
                               (let ((_arg1238112502_
                                      (reverse _arg1238012491_)))
                                 (if (gx#stx-pair? _tl1237212478_)
                                     (let ((_e1238212505_
                                            (gx#stx-e _tl1237212478_)))
                                       (let ((_hd1238312508_
                                              (##car _e1238212505_))
                                             (_tl1238412510_
                                              (##cdr _e1238212505_)))
                                         (if (gx#stx-pair? _hd1238312508_)
                                             (let ((_e1238512513_
                                                    (gx#stx-e _hd1238312508_)))
                                               (let ((_hd1238612516_
                                                      (##car _e1238512513_))
                                                     (_tl1238712518_
                                                      (##cdr _e1238512513_)))
                                                 (if (gx#identifier?
                                                      _hd1238612516_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1238612516_)
                                                         (if (gx#stx-pair?
                                                              _tl1238712518_)
                                                             (let ((_e1238812521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1238712518_)))
                       (let ((_hd1238912524_ (##car _e1238812521_))
                             (_tl1239012526_ (##cdr _e1238812521_)))
                         (if (gx#stx-pair? _hd1238912524_)
                             (let ((_e1239112529_ (gx#stx-e _hd1238912524_)))
                               (let ((_hd1239212532_ (##car _e1239112529_))
                                     (_tl1239312534_ (##cdr _e1239112529_)))
                                 (if (gx#identifier? _hd1239212532_)
                                     (if (gx#stx-eq? '%#ref _hd1239212532_)
                                         (if (gx#stx-pair? _tl1239312534_)
                                             (let ((_e1239412537_
                                                    (gx#stx-e _tl1239312534_)))
                                               (let ((_hd1239512540_
                                                      (##car _e1239412537_))
                                                     (_tl1239612542_
                                                      (##cdr _e1239412537_)))
                                                 (if (gx#stx-null?
                                                      _tl1239612542_)
                                                     (if (gx#stx-pair?
                                                          _tl1239012526_)
                                                         (let ((_e1239712545_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1239012526_)))
                   (let ((_hd1239812548_ (##car _e1239712545_))
                         (_tl1239912550_ (##cdr _e1239712545_)))
                     (if (gx#stx-pair? _hd1239812548_)
                         (let ((_e1240012553_ (gx#stx-e _hd1239812548_)))
                           (let ((_hd1240112556_ (##car _e1240012553_))
                                 (_tl1240212558_ (##cdr _e1240012553_)))
                             (if (gx#identifier? _hd1240112556_)
                                 (if (gx#stx-eq? '%#ref _hd1240112556_)
                                     (if (gx#stx-pair? _tl1240212558_)
                                         (let ((_e1240312561_
                                                (gx#stx-e _tl1240212558_)))
                                           (let ((_hd1240412564_
                                                  (##car _e1240312561_))
                                                 (_tl1240512566_
                                                  (##cdr _e1240312561_)))
                                             (if (gx#stx-null? _tl1240512566_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1239912550_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1239912550_)
                                                               '0)
                                                         (let ((_g18579_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1239912550_
                         '0)))
                   (begin
                     (let ((_g18580_ (values-count _g18579_)))
                       (if (not (fx= _g18580_ 2))
                           (error "Context expects 2 values" _g18580_)))
                     (let ((_target1240612569_ (values-ref _g18579_ 0))
                           (_tl1240812571_ (values-ref _g18579_ 1)))
                       (if (gx#stx-null? _tl1240812571_)
                           (letrec ((_loop1240912574_
                                     (lambda (_hd1240712577_ _xarg1241312579_)
                                       (if (gx#stx-pair? _hd1240712577_)
                                           (let ((_e1241012582_
                                                  (gx#stx-e _hd1240712577_)))
                                             (let ((_lp-hd1241112585_
                                                    (##car _e1241012582_))
                                                   (_lp-tl1241212587_
                                                    (##cdr _e1241012582_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1241112585_)
                                                   (let ((_e1241512590_
                                                          (gx#stx-e
                                                           _lp-hd1241112585_)))
                                                     (let ((_hd1241612593_
                                                            (##car _e1241512590_))
                                                           (_tl1241712595_
                                                            (##cdr _e1241512590_)))
                                                       (if (gx#identifier?
                                                            _hd1241612593_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1241612593_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1241712595_)
                           (let ((_e1241812598_ (gx#stx-e _tl1241712595_)))
                             (let ((_hd1241912601_ (##car _e1241812598_))
                                   (_tl1242012603_ (##cdr _e1241812598_)))
                               (if (gx#stx-null? _tl1242012603_)
                                   (_loop1240912574_
                                    _lp-tl1241212587_
                                    (cons _hd1241912601_ _xarg1241312579_))
                                   (_g1230612460_ _g1230912463_))))
                           (_g1230612460_ _g1230912463_))
                       (_g1230612460_ _g1230912463_))
                   (_g1230612460_ _g1230912463_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1230612460_
                                                    _g1230912463_))))
                                           (let ((_xarg1241412606_
                                                  (reverse _xarg1241312579_)))
                                             (if (gx#stx-null? _tl1238412510_)
                                                 ((lambda (_L12609_
                                                           _L12610_
                                                           _L12611_
                                                           _L12612_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1264912652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1265012654_)
                                 (cons _g1264912652_ _g1265012654_))
                               '()
                               _L12612_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L12611_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1265612659_
                                                            _g1265712661_)
                                                     (cons _g1265612659_
                                                           _g1265712661_))
                                                   '()
                                                   _L12612_)))
                                 (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1266312666_
                                                            _g1266412668_)
                                                     (cons _g1266312666_
                                                           _g1266412668_))
                                                   '()
                                                   _L12609_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1267012673_
                                                       _g1267112675_)
                                                (cons _g1267012673_
                                                      _g1267112675_))
                                              '()
                                              _L12612_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1267712680_
                                                       _g1267812682_)
                                                (cons _g1267712680_
                                                      _g1267812682_))
                                              '()
                                              _L12609_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t12685_
                       (gxc#generate-runtime-binding-id _L12610_)))
                  (let ((_type12687_
                         (gxc#optimizer-resolve-type _type-t12685_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type12687_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t12685_)
                          '#f))))
                (_g1230612460_ _g1230912463_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1241412606_
                                                  _hd1240412564_
                                                  _hd1239512540_
                                                  _arg1238112502_)
                                                 (_g1230612460_
                                                  _g1230912463_)))))))
                             (_loop1240912574_ _target1240612569_ '()))
                           (_g1230612460_ _g1230912463_)))))
                 (_g1230612460_ _g1230912463_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1230612460_
                                                      _g1230912463_))
                                                 (_g1230612460_
                                                  _g1230912463_))))
                                         (_g1230612460_ _g1230912463_))
                                     (_g1230612460_ _g1230912463_))
                                 (_g1230612460_ _g1230912463_))))
                         (_g1230612460_ _g1230912463_))))
                 (_g1230612460_ _g1230912463_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1230612460_
                                                      _g1230912463_))))
                                             (_g1230612460_ _g1230912463_))
                                         (_g1230612460_ _g1230912463_))
                                     (_g1230612460_ _g1230912463_))))
                             (_g1230612460_ _g1230912463_))))
                     (_g1230612460_ _g1230912463_))
                 (_g1230612460_ _g1230912463_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1230612460_
                                                      _g1230912463_))))
                                             (_g1230612460_ _g1230912463_))))
                                     (_g1230612460_ _g1230912463_)))))))
                 (_loop1237612486_ _target1237312481_ '()))
               (_g1230612460_ _g1230912463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1230612460_ _g1230912463_))
                                         (_g1230612460_ _g1230912463_))))
                                 (_g1230612460_ _g1230912463_))))
                         (_g1230612460_ _g1230912463_)))))
              (let ((_g1230412875_
                     (lambda (_g1230912693_)
                       (if (gx#stx-pair? _g1230912693_)
                           (let ((_e1231512695_ (gx#stx-e _g1230912693_)))
                             (let ((_hd1231612698_ (##car _e1231512695_))
                                   (_tl1231712700_ (##cdr _e1231512695_)))
                               (if (gx#stx-pair? _tl1231712700_)
                                   (let ((_e1231812703_
                                          (gx#stx-e _tl1231712700_)))
                                     (let ((_hd1231912706_
                                            (##car _e1231812703_))
                                           (_tl1232012708_
                                            (##cdr _e1231812703_)))
                                       (if (gx#stx-pair? _tl1232012708_)
                                           (let ((_e1232112711_
                                                  (gx#stx-e _tl1232012708_)))
                                             (let ((_hd1232212714_
                                                    (##car _e1232112711_))
                                                   (_tl1232312716_
                                                    (##cdr _e1232112711_)))
                                               (if (gx#stx-pair?
                                                    _hd1232212714_)
                                                   (let ((_e1232412719_
                                                          (gx#stx-e
                                                           _hd1232212714_)))
                                                     (let ((_hd1232512722_
                                                            (##car _e1232412719_))
                                                           (_tl1232612724_
                                                            (##cdr _e1232412719_)))
                                                       (if (gx#identifier?
                                                            _hd1232512722_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1232512722_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1232612724_)
                           (let ((_e1232712727_ (gx#stx-e _tl1232612724_)))
                             (let ((_hd1232812730_ (##car _e1232712727_))
                                   (_tl1232912732_ (##cdr _e1232712727_)))
                               (if (gx#stx-pair? _hd1232812730_)
                                   (let ((_e1233012735_
                                          (gx#stx-e _hd1232812730_)))
                                     (let ((_hd1233112738_
                                            (##car _e1233012735_))
                                           (_tl1233212740_
                                            (##cdr _e1233012735_)))
                                       (if (gx#identifier? _hd1233112738_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1233112738_)
                                               (if (gx#stx-pair?
                                                    _tl1233212740_)
                                                   (let ((_e1233312743_
                                                          (gx#stx-e
                                                           _tl1233212740_)))
                                                     (let ((_hd1233412746_
                                                            (##car _e1233312743_))
                                                           (_tl1233512748_
                                                            (##cdr _e1233312743_)))
                                                       (if (gx#stx-null?
                                                            _tl1233512748_)
                                                           (if (gx#stx-pair?
                                                                _tl1232912732_)
                                                               (let ((_e1233612751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1232912732_)))
                         (let ((_hd1233712754_ (##car _e1233612751_))
                               (_tl1233812756_ (##cdr _e1233612751_)))
                           (if (gx#stx-pair? _hd1233712754_)
                               (let ((_e1233912759_ (gx#stx-e _hd1233712754_)))
                                 (let ((_hd1234012762_ (##car _e1233912759_))
                                       (_tl1234112764_ (##cdr _e1233912759_)))
                                   (if (gx#identifier? _hd1234012762_)
                                       (if (gx#stx-eq? '%#ref _hd1234012762_)
                                           (if (gx#stx-pair? _tl1234112764_)
                                               (let ((_e1234212767_
                                                      (gx#stx-e
                                                       _tl1234112764_)))
                                                 (let ((_hd1234312770_
                                                        (##car _e1234212767_))
                                                       (_tl1234412772_
                                                        (##cdr _e1234212767_)))
                                                   (if (gx#stx-null?
                                                        _tl1234412772_)
                                                       (if (gx#stx-pair?
                                                            _tl1233812756_)
                                                           (let ((_e1234512775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1233812756_)))
                     (let ((_hd1234612778_ (##car _e1234512775_))
                           (_tl1234712780_ (##cdr _e1234512775_)))
                       (if (gx#stx-pair? _hd1234612778_)
                           (let ((_e1234812783_ (gx#stx-e _hd1234612778_)))
                             (let ((_hd1234912786_ (##car _e1234812783_))
                                   (_tl1235012788_ (##cdr _e1234812783_)))
                               (if (gx#identifier? _hd1234912786_)
                                   (if (gx#stx-eq? '%#ref _hd1234912786_)
                                       (if (gx#stx-pair? _tl1235012788_)
                                           (let ((_e1235112791_
                                                  (gx#stx-e _tl1235012788_)))
                                             (let ((_hd1235212794_
                                                    (##car _e1235112791_))
                                                   (_tl1235312796_
                                                    (##cdr _e1235112791_)))
                                               (if (gx#stx-null?
                                                    _tl1235312796_)
                                                   (if (gx#stx-pair?
                                                        _tl1234712780_)
                                                       (let ((_e1235412799_
                                                              (gx#stx-e
                                                               _tl1234712780_)))
                                                         (let ((_hd1235512802_
                                                                (##car _e1235412799_))
                                                               (_tl1235612804_
                                                                (##cdr _e1235412799_)))
                                                           (if (gx#stx-pair?
                                                                _hd1235512802_)
                                                               (let ((_e1235712807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1235512802_)))
                         (let ((_hd1235812810_ (##car _e1235712807_))
                               (_tl1235912812_ (##cdr _e1235712807_)))
                           (if (gx#identifier? _hd1235812810_)
                               (if (gx#stx-eq? '%#ref _hd1235812810_)
                                   (if (gx#stx-pair? _tl1235912812_)
                                       (let ((_e1236012815_
                                              (gx#stx-e _tl1235912812_)))
                                         (let ((_hd1236112818_
                                                (##car _e1236012815_))
                                               (_tl1236212820_
                                                (##cdr _e1236012815_)))
                                           (if (gx#stx-null? _tl1236212820_)
                                               (if (gx#stx-null?
                                                    _tl1235612804_)
                                                   (if (gx#stx-null?
                                                        _tl1232312716_)
                                                       ((lambda (_L12823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12824_
                         _L12825_
                         _L12826_
                         _L12827_)
                  (if (if (gx#identifier? _L12827_)
                          (if (eq? (gxc#generate-runtime-binding-id _L12826_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L12825_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L12827_ _L12823_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t12870_
                             (gxc#generate-runtime-binding-id _L12824_)))
                        (let ((_type12872_
                               (gxc#optimizer-resolve-type _type-t12870_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type12872_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t12870_)
                                '#f))))
                      (_g1230512690_ _g1230912693_)))
                _hd1236112818_
                _hd1235212794_
                _hd1234312770_
                _hd1233412746_
                _hd1231912706_)
               (_g1230512690_ _g1230912693_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1230512690_
                                                    _g1230912693_))
                                               (_g1230512690_ _g1230912693_))))
                                       (_g1230512690_ _g1230912693_))
                                   (_g1230512690_ _g1230912693_))
                               (_g1230512690_ _g1230912693_))))
                       (_g1230512690_ _g1230912693_))))
               (_g1230512690_ _g1230912693_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1230512690_
                                                    _g1230912693_))))
                                           (_g1230512690_ _g1230912693_))
                                       (_g1230512690_ _g1230912693_))
                                   (_g1230512690_ _g1230912693_))))
                           (_g1230512690_ _g1230912693_))))
                   (_g1230512690_ _g1230912693_))
               (_g1230512690_ _g1230912693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1230512690_ _g1230912693_))
                                           (_g1230512690_ _g1230912693_))
                                       (_g1230512690_ _g1230912693_))))
                               (_g1230512690_ _g1230912693_))))
                       (_g1230512690_ _g1230912693_))
                   (_g1230512690_ _g1230912693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1230512690_
                                                    _g1230912693_))
                                               (_g1230512690_ _g1230912693_))
                                           (_g1230512690_ _g1230912693_))))
                                   (_g1230512690_ _g1230912693_))))
                           (_g1230512690_ _g1230912693_))
                       (_g1230512690_ _g1230912693_))
                   (_g1230512690_ _g1230912693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1230512690_
                                                    _g1230912693_))))
                                           (_g1230512690_ _g1230912693_))))
                                   (_g1230512690_ _g1230912693_))))
                           (_g1230512690_ _g1230912693_)))))
                (_g1230412875_ _stx12303_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx12249_)
      (let ((_clause-e12251_
             (lambda (_form12301_)
               (let ((__obj18516 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj18516
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form12301_)
                    (gxc#dispatch-lambda-form-delegate _form12301_))
                   __obj18516)))))
        (let ((_g1225412264_
               (lambda (_g1225512261_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1225512261_))))
          (let ((_g1225312271_ (lambda (_g1225512267_) ((lambda () '#f)))))
            (let ((_g1225212298_
                   (lambda (_g1225512274_)
                     (if (gx#stx-pair? _g1225512274_)
                         (let ((_e1225712276_ (gx#stx-e _g1225512274_)))
                           (let ((_hd1225812279_ (##car _e1225712276_))
                                 (_tl1225912281_ (##cdr _e1225712276_)))
                             ((lambda (_L12284_)
                                (if (andmap1 gxc#dispatch-lambda-form?
                                             _L12284_)
                                    (let ((_clauses12296_
                                           (map _clause-e12251_ _L12284_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses12296_))
                                    (_g1225312271_ _g1225512274_)))
                              _tl1225912281_)))
                         (_g1225312271_ _g1225512274_)))))
              (_g1225212298_ _stx12249_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx12154_)
      (let ((_g1215712177_
             (lambda (_g1215812174_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1215812174_))))
        (let ((_g1215612184_ (lambda (_g1215812180_) ((lambda () '#f)))))
          (let ((_g1215512246_
                 (lambda (_g1215812187_)
                   (if (gx#stx-pair? _g1215812187_)
                       (let ((_e1216112189_ (gx#stx-e _g1215812187_)))
                         (let ((_hd1216212192_ (##car _e1216112189_))
                               (_tl1216312194_ (##cdr _e1216112189_)))
                           (if (gx#stx-pair? _tl1216312194_)
                               (let ((_e1216412197_ (gx#stx-e _tl1216312194_)))
                                 (let ((_hd1216512200_ (##car _e1216412197_))
                                       (_tl1216612202_ (##cdr _e1216412197_)))
                                   (if (gx#stx-pair? _hd1216512200_)
                                       (let ((_e1216712205_
                                              (gx#stx-e _hd1216512200_)))
                                         (let ((_hd1216812208_
                                                (##car _e1216712205_))
                                               (_tl1216912210_
                                                (##cdr _e1216712205_)))
                                           (if (gx#identifier? _hd1216812208_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1216812208_)
                                                   (if (gx#stx-pair?
                                                        _tl1216912210_)
                                                       (let ((_e1217012213_
                                                              (gx#stx-e
                                                               _tl1216912210_)))
                                                         (let ((_hd1217112216_
                                                                (##car _e1217012213_))
                                                               (_tl1217212218_
                                                                (##cdr _e1217012213_)))
                                                           (if (gx#stx-null?
                                                                _tl1217212218_)
                                                               ((lambda (_L12221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12222_)
                          (let ((_type-e1223912241_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L12222_)
                                  '#f)))
                            (if _type-e1223912241_
                                (let ((_type-e12244_ _type-e1223912241_))
                                  (_type-e12244_ _stx12154_ _L12221_))
                                '#f)))
                        _tl1216612202_
                        _hd1217112216_)
                       (_g1215612184_ _g1215812187_))))
               (_g1215612184_ _g1215812187_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1215612184_
                                                    _g1215812187_))
                                               (_g1215612184_ _g1215812187_))))
                                       (_g1215612184_ _g1215812187_))))
                               (_g1215612184_ _g1215812187_))))
                       (_g1215612184_ _g1215812187_)))))
            (_g1215512246_ _stx12154_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx11639_ _args11640_)
      (let ((_g1164411757_
             (lambda (_g1164511754_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1164511754_))))
        (let ((_g1164311764_
               (lambda (_g1164511760_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx11639_))
                      '#f))))))
          (let ((_g1164211971_
                 (lambda (_g1164511767_)
                   (if (gx#stx-pair? _g1164511767_)
                       (let ((_e1170511769_ (gx#stx-e _g1164511767_)))
                         (let ((_hd1170611772_ (##car _e1170511769_))
                               (_tl1170711774_ (##cdr _e1170511769_)))
                           (if (gx#stx-pair? _hd1170611772_)
                               (let ((_e1170811777_ (gx#stx-e _hd1170611772_)))
                                 (let ((_hd1170911780_ (##car _e1170811777_))
                                       (_tl1171011782_ (##cdr _e1170811777_)))
                                   (if (gx#identifier? _hd1170911780_)
                                       (if (gx#stx-eq? '%#quote _hd1170911780_)
                                           (if (gx#stx-pair? _tl1171011782_)
                                               (let ((_e1171111785_
                                                      (gx#stx-e
                                                       _tl1171011782_)))
                                                 (let ((_hd1171211788_
                                                        (##car _e1171111785_))
                                                       (_tl1171311790_
                                                        (##cdr _e1171111785_)))
                                                   (if (gx#stx-null?
                                                        _tl1171311790_)
                                                       (if (gx#stx-pair?
                                                            _tl1170711774_)
                                                           (let ((_e1171411793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1170711774_)))
                     (let ((_hd1171511796_ (##car _e1171411793_))
                           (_tl1171611798_ (##cdr _e1171411793_)))
                       (if (gx#stx-pair? _hd1171511796_)
                           (let ((_e1171711801_ (gx#stx-e _hd1171511796_)))
                             (let ((_hd1171811804_ (##car _e1171711801_))
                                   (_tl1171911806_ (##cdr _e1171711801_)))
                               (if (gx#identifier? _hd1171811804_)
                                   (if (gx#stx-eq? '%#ref _hd1171811804_)
                                       (if (gx#stx-pair? _tl1171911806_)
                                           (let ((_e1172011809_
                                                  (gx#stx-e _tl1171911806_)))
                                             (let ((_hd1172111812_
                                                    (##car _e1172011809_))
                                                   (_tl1172211814_
                                                    (##cdr _e1172011809_)))
                                               (if (gx#stx-null?
                                                    _tl1172211814_)
                                                   (if (gx#stx-pair?
                                                        _tl1171611798_)
                                                       (let ((_e1172311817_
                                                              (gx#stx-e
                                                               _tl1171611798_)))
                                                         (let ((_hd1172411820_
                                                                (##car _e1172311817_))
                                                               (_tl1172511822_
                                                                (##cdr _e1172311817_)))
                                                           (if (gx#stx-pair?
                                                                _hd1172411820_)
                                                               (let ((_e1172611825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1172411820_)))
                         (let ((_hd1172711828_ (##car _e1172611825_))
                               (_tl1172811830_ (##cdr _e1172611825_)))
                           (if (gx#identifier? _hd1172711828_)
                               (if (gx#stx-eq? '%#quote _hd1172711828_)
                                   (if (gx#stx-pair? _tl1172811830_)
                                       (let ((_e1172911833_
                                              (gx#stx-e _tl1172811830_)))
                                         (let ((_hd1173011836_
                                                (##car _e1172911833_))
                                               (_tl1173111838_
                                                (##cdr _e1172911833_)))
                                           (if (gx#stx-null? _tl1173111838_)
                                               (if (gx#stx-pair?
                                                    _tl1172511822_)
                                                   (let ((_e1173211841_
                                                          (gx#stx-e
                                                           _tl1172511822_)))
                                                     (let ((_hd1173311844_
                                                            (##car _e1173211841_))
                                                           (_tl1173411846_
                                                            (##cdr _e1173211841_)))
                                                       (if (gx#stx-pair?
                                                            _tl1173411846_)
                                                           (let ((_e1173511849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1173411846_)))
                     (let ((_hd1173611852_ (##car _e1173511849_))
                           (_tl1173711854_ (##cdr _e1173511849_)))
                       (if (gx#stx-pair? _hd1173611852_)
                           (let ((_e1173811857_ (gx#stx-e _hd1173611852_)))
                             (let ((_hd1173911860_ (##car _e1173811857_))
                                   (_tl1174011862_ (##cdr _e1173811857_)))
                               (if (gx#identifier? _hd1173911860_)
                                   (if (gx#stx-eq? '%#quote _hd1173911860_)
                                       (if (gx#stx-pair? _tl1174011862_)
                                           (let ((_e1174111865_
                                                  (gx#stx-e _tl1174011862_)))
                                             (let ((_hd1174211868_
                                                    (##car _e1174111865_))
                                                   (_tl1174311870_
                                                    (##cdr _e1174111865_)))
                                               (if (gx#stx-null?
                                                    _tl1174311870_)
                                                   (if (gx#stx-pair?
                                                        _tl1173711854_)
                                                       (let ((_e1174411873_
                                                              (gx#stx-e
                                                               _tl1173711854_)))
                                                         (let ((_hd1174511876_
                                                                (##car _e1174411873_))
                                                               (_tl1174611878_
                                                                (##cdr _e1174411873_)))
                                                           (if (gx#stx-pair?
                                                                _hd1174511876_)
                                                               (let ((_e1174711881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1174511876_)))
                         (let ((_hd1174811884_ (##car _e1174711881_))
                               (_tl1174911886_ (##cdr _e1174711881_)))
                           (if (gx#identifier? _hd1174811884_)
                               (if (gx#stx-eq? '%#quote _hd1174811884_)
                                   (if (gx#stx-pair? _tl1174911886_)
                                       (let ((_e1175011889_
                                              (gx#stx-e _tl1174911886_)))
                                         (let ((_hd1175111892_
                                                (##car _e1175011889_))
                                               (_tl1175211894_
                                                (##cdr _e1175011889_)))
                                           (if (gx#stx-null? _tl1175211894_)
                                               (if (gx#stx-null?
                                                    _tl1174611878_)
                                                   ((lambda (_L11897_
                                                             _L11898_
                                                             _L11899_
                                                             _L11900_
                                                             _L11901_
                                                             _L11902_)
                                                      (let ((_super-t11948_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11901_)
                         (gxc#generate-runtime-binding-id _L11901_)
                         '#f)))
                (let ((_super-type11950_
                       (if _super-t11948_
                           (gxc#optimizer-resolve-type _super-t11948_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type11950_
                              (not (##structure-instance-of?
                                    _super-type11950_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx11639_
                           _L11901_)
                          '#!void)
                      (let ((_fields11966_ (gx#stx-e _L11900_))
                            (_xfields11967_
                             (if _super-type11950_
                                 (let ((_super-fields1195211955_
                                        (##structure-ref
                                         _super-type11950_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1195311957_
                                        (##structure-ref
                                         _super-type11950_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1195211955_
                                       (if _super-xfields1195311957_
                                           (let ((_super-fields11960_
                                                  _super-fields1195211955_)
                                                 (_super-xfields11961_
                                                  _super-xfields1195311957_))
                                             (fx+ _super-fields11960_
                                                  _super-xfields11961_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist11968_ (gx#stx-e _L11898_))
                            (_ctor11969_
                             (let ((_$e11963_ (gx#stx-e _L11897_)))
                               (if _$e11963_
                                   (values _$e11963_)
                                   (if _super-type11950_
                                       (##structure-ref
                                        _super-type11950_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t11948_ '#!void '#f))))))
                        (let ((__obj18517
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj18517
                             (gx#stx-e _L11902_)
                             _super-t11948_
                             _fields11966_
                             _xfields11967_
                             _ctor11969_
                             _plist11968_)
                            __obj18517))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1175111892_
                                                    _hd1174211868_
                                                    _hd1173311844_
                                                    _hd1173011836_
                                                    _hd1172111812_
                                                    _hd1171211788_)
                                                   (_g1164311764_
                                                    _g1164511767_))
                                               (_g1164311764_ _g1164511767_))))
                                       (_g1164311764_ _g1164511767_))
                                   (_g1164311764_ _g1164511767_))
                               (_g1164311764_ _g1164511767_))))
                       (_g1164311764_ _g1164511767_))))
               (_g1164311764_ _g1164511767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1164311764_
                                                    _g1164511767_))))
                                           (_g1164311764_ _g1164511767_))
                                       (_g1164311764_ _g1164511767_))
                                   (_g1164311764_ _g1164511767_))))
                           (_g1164311764_ _g1164511767_))))
                   (_g1164311764_ _g1164511767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1164311764_
                                                    _g1164511767_))
                                               (_g1164311764_ _g1164511767_))))
                                       (_g1164311764_ _g1164511767_))
                                   (_g1164311764_ _g1164511767_))
                               (_g1164311764_ _g1164511767_))))
                       (_g1164311764_ _g1164511767_))))
               (_g1164311764_ _g1164511767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1164311764_
                                                    _g1164511767_))))
                                           (_g1164311764_ _g1164511767_))
                                       (_g1164311764_ _g1164511767_))
                                   (_g1164311764_ _g1164511767_))))
                           (_g1164311764_ _g1164511767_))))
                   (_g1164311764_ _g1164511767_))
               (_g1164311764_ _g1164511767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1164311764_ _g1164511767_))
                                           (_g1164311764_ _g1164511767_))
                                       (_g1164311764_ _g1164511767_))))
                               (_g1164311764_ _g1164511767_))))
                       (_g1164311764_ _g1164511767_)))))
            (let ((_g1164112151_
                   (lambda (_g1164511974_)
                     (if (gx#stx-pair? _g1164511974_)
                         (let ((_e1165111976_ (gx#stx-e _g1164511974_)))
                           (let ((_hd1165211979_ (##car _e1165111976_))
                                 (_tl1165311981_ (##cdr _e1165111976_)))
                             (if (gx#stx-pair? _hd1165211979_)
                                 (let ((_e1165411984_
                                        (gx#stx-e _hd1165211979_)))
                                   (let ((_hd1165511987_ (##car _e1165411984_))
                                         (_tl1165611989_
                                          (##cdr _e1165411984_)))
                                     (if (gx#identifier? _hd1165511987_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1165511987_)
                                             (if (gx#stx-pair? _tl1165611989_)
                                                 (let ((_e1165711992_
                                                        (gx#stx-e
                                                         _tl1165611989_)))
                                                   (let ((_hd1165811995_
                                                          (##car _e1165711992_))
                                                         (_tl1165911997_
                                                          (##cdr _e1165711992_)))
                                                     (if (gx#stx-null?
                                                          _tl1165911997_)
                                                         (if (gx#stx-pair?
                                                              _tl1165311981_)
                                                             (let ((_e1166012000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1165311981_)))
                       (let ((_hd1166112003_ (##car _e1166012000_))
                             (_tl1166212005_ (##cdr _e1166012000_)))
                         (if (gx#stx-pair? _hd1166112003_)
                             (let ((_e1166312008_ (gx#stx-e _hd1166112003_)))
                               (let ((_hd1166412011_ (##car _e1166312008_))
                                     (_tl1166512013_ (##cdr _e1166312008_)))
                                 (if (gx#identifier? _hd1166412011_)
                                     (if (gx#stx-eq? '%#quote _hd1166412011_)
                                         (if (gx#stx-pair? _tl1166512013_)
                                             (let ((_e1166612016_
                                                    (gx#stx-e _tl1166512013_)))
                                               (let ((_hd1166712019_
                                                      (##car _e1166612016_))
                                                     (_tl1166812021_
                                                      (##cdr _e1166612016_)))
                                                 (if (gx#stx-datum?
                                                      _hd1166712019_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1166712019_)
                         '#f)
                 (if (gx#stx-null? _tl1166812021_)
                     (if (gx#stx-pair? _tl1166212005_)
                         (let ((_e1166912024_ (gx#stx-e _tl1166212005_)))
                           (let ((_hd1167012027_ (##car _e1166912024_))
                                 (_tl1167112029_ (##cdr _e1166912024_)))
                             (if (gx#stx-pair? _hd1167012027_)
                                 (let ((_e1167212032_
                                        (gx#stx-e _hd1167012027_)))
                                   (let ((_hd1167312035_ (##car _e1167212032_))
                                         (_tl1167412037_
                                          (##cdr _e1167212032_)))
                                     (if (gx#identifier? _hd1167312035_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1167312035_)
                                             (if (gx#stx-pair? _tl1167412037_)
                                                 (let ((_e1167512040_
                                                        (gx#stx-e
                                                         _tl1167412037_)))
                                                   (let ((_hd1167612043_
                                                          (##car _e1167512040_))
                                                         (_tl1167712045_
                                                          (##cdr _e1167512040_)))
                                                     (if (gx#stx-null?
                                                          _tl1167712045_)
                                                         (if (gx#stx-pair?
                                                              _tl1167112029_)
                                                             (let ((_e1167812048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1167112029_)))
                       (let ((_hd1167912051_ (##car _e1167812048_))
                             (_tl1168012053_ (##cdr _e1167812048_)))
                         (if (gx#stx-pair? _tl1168012053_)
                             (let ((_e1168112056_ (gx#stx-e _tl1168012053_)))
                               (let ((_hd1168212059_ (##car _e1168112056_))
                                     (_tl1168312061_ (##cdr _e1168112056_)))
                                 (if (gx#stx-pair? _hd1168212059_)
                                     (let ((_e1168412064_
                                            (gx#stx-e _hd1168212059_)))
                                       (let ((_hd1168512067_
                                              (##car _e1168412064_))
                                             (_tl1168612069_
                                              (##cdr _e1168412064_)))
                                         (if (gx#identifier? _hd1168512067_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1168512067_)
                                                 (if (gx#stx-pair?
                                                      _tl1168612069_)
                                                     (let ((_e1168712072_
                                                            (gx#stx-e
                                                             _tl1168612069_)))
                                                       (let ((_hd1168812075_
                                                              (##car _e1168712072_))
                                                             (_tl1168912077_
                                                              (##cdr _e1168712072_)))
                                                         (if (gx#stx-null?
                                                              _tl1168912077_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1168312061_)
                         (let ((_e1169012080_ (gx#stx-e _tl1168312061_)))
                           (let ((_hd1169112083_ (##car _e1169012080_))
                                 (_tl1169212085_ (##cdr _e1169012080_)))
                             (if (gx#stx-pair? _hd1169112083_)
                                 (let ((_e1169312088_
                                        (gx#stx-e _hd1169112083_)))
                                   (let ((_hd1169412091_ (##car _e1169312088_))
                                         (_tl1169512093_
                                          (##cdr _e1169312088_)))
                                     (if (gx#identifier? _hd1169412091_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1169412091_)
                                             (if (gx#stx-pair? _tl1169512093_)
                                                 (let ((_e1169612096_
                                                        (gx#stx-e
                                                         _tl1169512093_)))
                                                   (let ((_hd1169712099_
                                                          (##car _e1169612096_))
                                                         (_tl1169812101_
                                                          (##cdr _e1169612096_)))
                                                     (if (gx#stx-null?
                                                          _tl1169812101_)
                                                         (if (gx#stx-null?
                                                              _tl1169212085_)
                                                             ((lambda (_L12104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L12105_
                               _L12106_
                               _L12107_
                               _L12108_)
                        (let ((__obj18518
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj18518
                             (gx#stx-e _L12108_)
                             '#f
                             (gx#stx-e _L12107_)
                             '0
                             (gx#stx-e _L12104_)
                             (gx#stx-e _L12105_))
                            __obj18518)))
                      _hd1169712099_
                      _hd1168812075_
                      _hd1167912051_
                      _hd1167612043_
                      _hd1165811995_)
                     (_g1164211971_ _g1164511974_))
                 (_g1164211971_ _g1164511974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1164211971_ _g1164511974_))
                                             (_g1164211971_ _g1164511974_))
                                         (_g1164211971_ _g1164511974_))))
                                 (_g1164211971_ _g1164511974_))))
                         (_g1164211971_ _g1164511974_))
                     (_g1164211971_ _g1164511974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1164211971_
                                                      _g1164511974_))
                                                 (_g1164211971_ _g1164511974_))
                                             (_g1164211971_ _g1164511974_))))
                                     (_g1164211971_ _g1164511974_))))
                             (_g1164211971_ _g1164511974_))))
                     (_g1164211971_ _g1164511974_))
                 (_g1164211971_ _g1164511974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1164211971_ _g1164511974_))
                                             (_g1164211971_ _g1164511974_))
                                         (_g1164211971_ _g1164511974_))))
                                 (_g1164211971_ _g1164511974_))))
                         (_g1164211971_ _g1164511974_))
                     (_g1164211971_ _g1164511974_))
                 (_g1164211971_ _g1164511974_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1164211971_
                                                      _g1164511974_))))
                                             (_g1164211971_ _g1164511974_))
                                         (_g1164211971_ _g1164511974_))
                                     (_g1164211971_ _g1164511974_))))
                             (_g1164211971_ _g1164511974_))))
                     (_g1164211971_ _g1164511974_))
                 (_g1164211971_ _g1164511974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1164211971_ _g1164511974_))
                                             (_g1164211971_ _g1164511974_))
                                         (_g1164211971_ _g1164511974_))))
                                 (_g1164211971_ _g1164511974_))))
                         (_g1164211971_ _g1164511974_)))))
              (_g1164112151_ _args11640_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx11565_ _args11566_)
      (let ((_g1156911585_
             (lambda (_g1157011582_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1157011582_))))
        (let ((_g1156811592_ (lambda (_g1157011588_) ((lambda () '#f)))))
          (let ((_g1156711636_
                 (lambda (_g1157011595_)
                   (if (gx#stx-pair? _g1157011595_)
                       (let ((_e1157211597_ (gx#stx-e _g1157011595_)))
                         (let ((_hd1157311600_ (##car _e1157211597_))
                               (_tl1157411602_ (##cdr _e1157211597_)))
                           (if (gx#stx-pair? _hd1157311600_)
                               (let ((_e1157511605_ (gx#stx-e _hd1157311600_)))
                                 (let ((_hd1157611608_ (##car _e1157511605_))
                                       (_tl1157711610_ (##cdr _e1157511605_)))
                                   (if (gx#identifier? _hd1157611608_)
                                       (if (gx#stx-eq? '%#ref _hd1157611608_)
                                           (if (gx#stx-pair? _tl1157711610_)
                                               (let ((_e1157811613_
                                                      (gx#stx-e
                                                       _tl1157711610_)))
                                                 (let ((_hd1157911616_
                                                        (##car _e1157811613_))
                                                       (_tl1158011618_
                                                        (##cdr _e1157811613_)))
                                                   (if (gx#stx-null?
                                                        _tl1158011618_)
                                                       (if (gx#stx-null?
                                                            _tl1157411602_)
                                                           ((lambda (_L11621_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L11621_)))
                                                            _hd1157911616_)
                                                           (_g1156811592_
                                                            _g1157011595_))
                                                       (_g1156811592_
                                                        _g1157011595_))))
                                               (_g1156811592_ _g1157011595_))
                                           (_g1156811592_ _g1157011595_))
                                       (_g1156811592_ _g1157011595_))))
                               (_g1156811592_ _g1157011595_))))
                       (_g1156811592_ _g1157011595_)))))
            (_g1156711636_ _args11566_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx11449_ _args11450_)
      (let ((_g1145311479_
             (lambda (_g1145411476_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1145411476_))))
        (let ((_g1145211486_ (lambda (_g1145411482_) ((lambda () '#f)))))
          (let ((_g1145111562_
                 (lambda (_g1145411489_)
                   (if (gx#stx-pair? _g1145411489_)
                       (let ((_e1145711491_ (gx#stx-e _g1145411489_)))
                         (let ((_hd1145811494_ (##car _e1145711491_))
                               (_tl1145911496_ (##cdr _e1145711491_)))
                           (if (gx#stx-pair? _hd1145811494_)
                               (let ((_e1146011499_ (gx#stx-e _hd1145811494_)))
                                 (let ((_hd1146111502_ (##car _e1146011499_))
                                       (_tl1146211504_ (##cdr _e1146011499_)))
                                   (if (gx#identifier? _hd1146111502_)
                                       (if (gx#stx-eq? '%#ref _hd1146111502_)
                                           (if (gx#stx-pair? _tl1146211504_)
                                               (let ((_e1146311507_
                                                      (gx#stx-e
                                                       _tl1146211504_)))
                                                 (let ((_hd1146411510_
                                                        (##car _e1146311507_))
                                                       (_tl1146511512_
                                                        (##cdr _e1146311507_)))
                                                   (if (gx#stx-null?
                                                        _tl1146511512_)
                                                       (if (gx#stx-pair?
                                                            _tl1145911496_)
                                                           (let ((_e1146611515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1145911496_)))
                     (let ((_hd1146711518_ (##car _e1146611515_))
                           (_tl1146811520_ (##cdr _e1146611515_)))
                       (if (gx#stx-pair? _hd1146711518_)
                           (let ((_e1146911523_ (gx#stx-e _hd1146711518_)))
                             (let ((_hd1147011526_ (##car _e1146911523_))
                                   (_tl1147111528_ (##cdr _e1146911523_)))
                               (if (gx#identifier? _hd1147011526_)
                                   (if (gx#stx-eq? '%#quote _hd1147011526_)
                                       (if (gx#stx-pair? _tl1147111528_)
                                           (let ((_e1147211531_
                                                  (gx#stx-e _tl1147111528_)))
                                             (let ((_hd1147311534_
                                                    (##car _e1147211531_))
                                                   (_tl1147411536_
                                                    (##cdr _e1147211531_)))
                                               (if (gx#stx-null?
                                                    _tl1147411536_)
                                                   (if (gx#stx-null?
                                                        _tl1146811520_)
                                                       ((lambda (_L11539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11540_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#generate-runtime-binding-id _L11540_)
                   (gx#stx-e _L11539_)))
                _hd1147311534_
                _hd1146411510_)
               (_g1145211486_ _g1145411489_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1145211486_
                                                    _g1145411489_))))
                                           (_g1145211486_ _g1145411489_))
                                       (_g1145211486_ _g1145411489_))
                                   (_g1145211486_ _g1145411489_))))
                           (_g1145211486_ _g1145411489_))))
                   (_g1145211486_ _g1145411489_))
               (_g1145211486_ _g1145411489_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1145211486_ _g1145411489_))
                                           (_g1145211486_ _g1145411489_))
                                       (_g1145211486_ _g1145411489_))))
                               (_g1145211486_ _g1145411489_))))
                       (_g1145211486_ _g1145411489_)))))
            (_g1145111562_ _args11450_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx11333_ _args11334_)
      (let ((_g1133711363_
             (lambda (_g1133811360_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1133811360_))))
        (let ((_g1133611370_ (lambda (_g1133811366_) ((lambda () '#f)))))
          (let ((_g1133511446_
                 (lambda (_g1133811373_)
                   (if (gx#stx-pair? _g1133811373_)
                       (let ((_e1134111375_ (gx#stx-e _g1133811373_)))
                         (let ((_hd1134211378_ (##car _e1134111375_))
                               (_tl1134311380_ (##cdr _e1134111375_)))
                           (if (gx#stx-pair? _hd1134211378_)
                               (let ((_e1134411383_ (gx#stx-e _hd1134211378_)))
                                 (let ((_hd1134511386_ (##car _e1134411383_))
                                       (_tl1134611388_ (##cdr _e1134411383_)))
                                   (if (gx#identifier? _hd1134511386_)
                                       (if (gx#stx-eq? '%#ref _hd1134511386_)
                                           (if (gx#stx-pair? _tl1134611388_)
                                               (let ((_e1134711391_
                                                      (gx#stx-e
                                                       _tl1134611388_)))
                                                 (let ((_hd1134811394_
                                                        (##car _e1134711391_))
                                                       (_tl1134911396_
                                                        (##cdr _e1134711391_)))
                                                   (if (gx#stx-null?
                                                        _tl1134911396_)
                                                       (if (gx#stx-pair?
                                                            _tl1134311380_)
                                                           (let ((_e1135011399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1134311380_)))
                     (let ((_hd1135111402_ (##car _e1135011399_))
                           (_tl1135211404_ (##cdr _e1135011399_)))
                       (if (gx#stx-pair? _hd1135111402_)
                           (let ((_e1135311407_ (gx#stx-e _hd1135111402_)))
                             (let ((_hd1135411410_ (##car _e1135311407_))
                                   (_tl1135511412_ (##cdr _e1135311407_)))
                               (if (gx#identifier? _hd1135411410_)
                                   (if (gx#stx-eq? '%#quote _hd1135411410_)
                                       (if (gx#stx-pair? _tl1135511412_)
                                           (let ((_e1135611415_
                                                  (gx#stx-e _tl1135511412_)))
                                             (let ((_hd1135711418_
                                                    (##car _e1135611415_))
                                                   (_tl1135811420_
                                                    (##cdr _e1135611415_)))
                                               (if (gx#stx-null?
                                                    _tl1135811420_)
                                                   (if (gx#stx-null?
                                                        _tl1135211404_)
                                                       ((lambda (_L11423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11424_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#generate-runtime-binding-id _L11424_)
                   (gx#stx-e _L11423_)))
                _hd1135711418_
                _hd1134811394_)
               (_g1133611370_ _g1133811373_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1133611370_
                                                    _g1133811373_))))
                                           (_g1133611370_ _g1133811373_))
                                       (_g1133611370_ _g1133811373_))
                                   (_g1133611370_ _g1133811373_))))
                           (_g1133611370_ _g1133811373_))))
                   (_g1133611370_ _g1133811373_))
               (_g1133611370_ _g1133811373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1133611370_ _g1133811373_))
                                           (_g1133611370_ _g1133811373_))
                                       (_g1133611370_ _g1133811373_))))
                               (_g1133611370_ _g1133811373_))))
                       (_g1133611370_ _g1133811373_)))))
            (_g1133511446_ _args11334_))))))
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
    (lambda (_stx11282_)
      (let ((_g1128411297_
             (lambda (_g1128511294_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1128511294_))))
        (let ((_g1128311330_
               (lambda (_g1128511300_)
                 (if (gx#stx-pair? _g1128511300_)
                     (let ((_e1128711302_ (gx#stx-e _g1128511300_)))
                       (let ((_hd1128811305_ (##car _e1128711302_))
                             (_tl1128911307_ (##cdr _e1128711302_)))
                         (if (gx#stx-pair? _tl1128911307_)
                             (let ((_e1129011310_ (gx#stx-e _tl1128911307_)))
                               (let ((_hd1129111313_ (##car _e1129011310_))
                                     (_tl1129211315_ (##cdr _e1129011310_)))
                                 (if (gx#stx-null? _tl1129211315_)
                                     ((lambda (_L11318_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L11318_)))
                                      _hd1129111313_)
                                     (_g1128411297_ _g1128511300_))))
                             (_g1128411297_ _g1128511300_))))
                     (_g1128411297_ _g1128511300_)))))
          (_g1128311330_ _stx11282_)))))
  (define gxc#optimize-call%
    (lambda (_stx11188_)
      (let ((_g1119111211_
             (lambda (_g1119211208_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1119211208_))))
        (let ((_g1119011218_
               (lambda (_g1119211214_)
                 ((lambda () (gxc#xform-call% _stx11188_))))))
          (let ((_g1118911279_
                 (lambda (_g1119211221_)
                   (if (gx#stx-pair? _g1119211221_)
                       (let ((_e1119511223_ (gx#stx-e _g1119211221_)))
                         (let ((_hd1119611226_ (##car _e1119511223_))
                               (_tl1119711228_ (##cdr _e1119511223_)))
                           (if (gx#stx-pair? _tl1119711228_)
                               (let ((_e1119811231_ (gx#stx-e _tl1119711228_)))
                                 (let ((_hd1119911234_ (##car _e1119811231_))
                                       (_tl1120011236_ (##cdr _e1119811231_)))
                                   (if (gx#stx-pair? _hd1119911234_)
                                       (let ((_e1120111239_
                                              (gx#stx-e _hd1119911234_)))
                                         (let ((_hd1120211242_
                                                (##car _e1120111239_))
                                               (_tl1120311244_
                                                (##cdr _e1120111239_)))
                                           (if (gx#identifier? _hd1120211242_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1120211242_)
                                                   (if (gx#stx-pair?
                                                        _tl1120311244_)
                                                       (let ((_e1120411247_
                                                              (gx#stx-e
                                                               _tl1120311244_)))
                                                         (let ((_hd1120511250_
                                                                (##car _e1120411247_))
                                                               (_tl1120611252_
                                                                (##cdr _e1120411247_)))
                                                           (if (gx#stx-null?
                                                                _tl1120611252_)
                                                               ((lambda (_L11255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11256_)
                          (let ((_rator-id11274_
                                 (gxc#generate-runtime-binding-id _L11256_)))
                            (let ((_rator-type11276_
                                   (gxc#optimizer-resolve-type
                                    _rator-id11274_)))
                              (let ()
                                (if (##structure-instance-of?
                                     _rator-type11276_
                                     'gxc#!procedure::t)
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id11274_
                                       '" => "
                                       _rator-type11276_
                                       '" "
                                       (##structure-ref
                                        _rator-type11276_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type11276_
                                       'optimize-call
                                       _stx11188_
                                       _L11255_))
                                    (if (not _rator-type11276_)
                                        (gxc#xform-call% _stx11188_)
                                        (gxc#raise-compile-error
                                         '"Illegal application; not a procedure"
                                         _stx11188_
                                         _rator-type11276_)))))))
                        _tl1120011236_
                        _hd1120511250_)
                       (_g1119011218_ _g1119211221_))))
               (_g1119011218_ _g1119211221_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1119011218_
                                                    _g1119211221_))
                                               (_g1119011218_ _g1119211221_))))
                                       (_g1119011218_ _g1119211221_))))
                               (_g1119011218_ _g1119211221_))))
                       (_g1119011218_ _g1119211221_)))))
            (_g1118911279_ _stx11188_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self11043_ _stx11044_ _args11045_)
      (let ((_self1104611052_ _self11043_))
        (let ((_E1104811056_
               (lambda () (error '"No clause matching" _self1104611052_))))
          (let ((_K1104911180_
                 (lambda (_struct-t11059_)
                   (let ((_struct-type11061_
                          (gxc#optimizer-resolve-type _struct-t11059_)))
                     (let ((_struct-type1106211076_ _struct-type11061_))
                       (let ((_E1106611080_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1106211076_))))
                         (let ((_else1106511084_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11044_
                                   _struct-t11059_
                                   _struct-type11061_))))
                           (let ((_try-match1106411092_
                                  (lambda ()
                                    (let ((_K1106711089_
                                           (lambda ()
                                             (gxc#xform-call% _stx11044_))))
                                      (if (##eq? _struct-type1106211076_ '#f)
                                          (_K1106711089_)
                                          (_else1106511084_))))))
                             (let ((_K1106811155_
                                    (lambda (_plist11095_
                                             _struct-type-id11096_)
                                      (let ((_g1109911109_
                                             (lambda (_g1110011106_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1110011106_))))
                                        (let ((_g1109811116_
                                               (lambda (_g1110011112_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx11044_))))))
                                          (let ((_g1109711152_
                                                 (lambda (_g1110011119_)
                                                   (if (gx#stx-pair?
                                                        _g1110011119_)
                                                       (let ((_e1110211121_
                                                              (gx#stx-e
                                                               _g1110011119_)))
                                                         (let ((_hd1110311124_
                                                                (##car _e1110211121_))
                                                               (_tl1110411126_
                                                                (##cdr _e1110211121_)))
                                                           (if (gx#stx-null?
                                                                _tl1110411126_)
                                                               ((lambda (_L11129_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr11149_ (gxc#compile-e _L11129_))
                                (_op11150_
                                 (if (if _plist11095_
                                         (assgetq 'final: _plist11095_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op11150_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id11096_
                                                     '()))
                                         (cons _expr11149_ '())))
                             _stx11044_)))
                        _hd1110311124_)
                       (_g1109811116_ _g1110011119_))))
               (_g1109811116_ _g1110011119_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1109711152_ _args11045_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1106211076_)
                                   (let ((_e1106911158_
                                          (##vector-ref
                                           _struct-type1106211076_
                                           '1)))
                                     (let ((_struct-type-id11161_
                                            _e1106911158_))
                                       (let ((_e1107011163_
                                              (##vector-ref
                                               _struct-type1106211076_
                                               '2)))
                                         (let ((_e1107111166_
                                                (##vector-ref
                                                 _struct-type1106211076_
                                                 '3)))
                                           (let ((_e1107211169_
                                                  (##vector-ref
                                                   _struct-type1106211076_
                                                   '4)))
                                             (let ((_e1107311172_
                                                    (##vector-ref
                                                     _struct-type1106211076_
                                                     '5)))
                                               (let ((_e1107411175_
                                                      (##vector-ref
                                                       _struct-type1106211076_
                                                       '6)))
                                                 (let ((_plist11178_
                                                        _e1107411175_))
                                                   (_K1106811155_
                                                    _plist11178_
                                                    _struct-type-id11161_)))))))))
                                   (_try-match1106411092_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self1104611052_)
                (let ((_e1105011183_ (##vector-ref _self1104611052_ '1)))
                  (let ((_struct-t11186_ _e1105011183_))
                    (_K1104911180_ _struct-t11186_)))
                (_E1104811056_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self10939_ _stx10940_ _args10941_)
      (let ((_self1094210948_ _self10939_))
        (let ((_E1094410952_
               (lambda () (error '"No clause matching" _self1094210948_))))
          (let ((_K1094511035_
                 (lambda (_struct-t10955_)
                   (let ((_struct-type10957_
                          (gxc#optimizer-resolve-type _struct-t10955_)))
                     (let ((_struct-type1095810971_ _struct-type10957_))
                       (let ((_E1096210975_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1095810971_))))
                         (let ((_else1096110979_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx10940_
                                   _struct-t10955_
                                   _struct-type10957_))))
                           (let ((_try-match1096010987_
                                  (lambda ()
                                    (let ((_K1096310984_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t10955_)
                                               (gxc#xform-call% _stx10940_)))))
                                      (if (##eq? _struct-type1095810971_ '#f)
                                          (_K1096310984_)
                                          (_else1096110979_))))))
                             (let ((_K1096411009_
                                    (lambda (_ctor10990_
                                             _xfields10991_
                                             _fields10992_
                                             _type-id10993_)
                                      (let ((_args10995_
                                             (map gxc#compile-e _args10941_)))
                                        (let ((_$e10997_
                                               (if _ctor10990_
                                                   (if _xfields10991_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type10957_
                                                        _ctor10990_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e10997_
                                              ((lambda (_kons11000_)
                                                 (let ((_$obj11002_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj11002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t10955_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields10992_ _xfields10991_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons11000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj11002_ '())) _args10995_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx10940_))
                                          (cons (cons '%#ref
                                                      (cons _$obj11002_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx10940_)))
                                               _$e10997_)
                                              (if (let ((_$e11004_
                                                         _ctor10990_))
                                                    (if _$e11004_
                                                        _$e11004_
                                                        (not _xfields10991_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t10955_ '()))
                             _args10995_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx10940_)
                                                  (let ((_arity11007_
                                                         (fx+ _fields10992_
                                                              _xfields10991_)))
                                                    (if (fx= _arity11007_
                                                             (length _args10995_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t10955_ '()))
                                   _args10995_)))
                 _stx10940_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx10940_
                 _struct-t10955_
                 _arity11007_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1095810971_)
                                   (let ((_e1096511012_
                                          (##vector-ref
                                           _struct-type1095810971_
                                           '1)))
                                     (let ((_type-id11015_ _e1096511012_))
                                       (let ((_e1096611017_
                                              (##vector-ref
                                               _struct-type1095810971_
                                               '2)))
                                         (let ((_e1096711020_
                                                (##vector-ref
                                                 _struct-type1095810971_
                                                 '3)))
                                           (let ((_fields11023_ _e1096711020_))
                                             (let ((_e1096811025_
                                                    (##vector-ref
                                                     _struct-type1095810971_
                                                     '4)))
                                               (let ((_xfields11028_
                                                      _e1096811025_))
                                                 (let ((_e1096911030_
                                                        (##vector-ref
                                                         _struct-type1095810971_
                                                         '5)))
                                                   (let ((_ctor11033_
                                                          _e1096911030_))
                                                     (_K1096411009_
                                                      _ctor11033_
                                                      _xfields11028_
                                                      _fields11023_
                                                      _type-id11015_))))))))))
                                   (_try-match1096010987_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self1094210948_)
                (let ((_e1094611038_ (##vector-ref _self1094210948_ '1)))
                  (let ((_struct-t11041_ _e1094611038_))
                    (_K1094511035_ _struct-t11041_)))
                (_E1094410952_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self10792_ _stx10793_ _args10794_)
      (let ((_self1079510802_ _self10792_))
        (let ((_E1079710806_
               (lambda () (error '"No clause matching" _self1079510802_))))
          (let ((_K1079810926_
                 (lambda (_off10809_ _struct-t10810_)
                   (let ((_struct-type10812_
                          (gxc#optimizer-resolve-type _struct-t10810_)))
                     (let ((_struct-type1081310825_ _struct-type10812_))
                       (let ((_E1081710829_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1081310825_))))
                         (let ((_else1081610833_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx10793_
                                   _struct-t10810_
                                   _struct-type10812_))))
                           (let ((_try-match1081510841_
                                  (lambda ()
                                    (let ((_K1081810838_
                                           (lambda ()
                                             (gxc#xform-call% _stx10793_))))
                                      (if (##eq? _struct-type1081310825_ '#f)
                                          (_K1081810838_)
                                          (_else1081610833_))))))
                             (let ((_K1081910905_
                                    (lambda (_xfields10844_
                                             _fields10845_
                                             _struct-type-id10846_)
                                      (if _xfields10844_
                                          (let ((_g1084910859_
                                                 (lambda (_g1085010856_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1085010856_))))
                                            (let ((_g1084810866_
                                                   (lambda (_g1085010862_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx10793_))))))
                                              (let ((_g1084710902_
                                                     (lambda (_g1085010869_)
                                                       (if (gx#stx-pair?
                                                            _g1085010869_)
                                                           (let ((_e1085210871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1085010869_)))
                     (let ((_hd1085310874_ (##car _e1085210871_))
                           (_tl1085410876_ (##cdr _e1085210871_)))
                       (if (gx#stx-null? _tl1085410876_)
                           ((lambda (_L10879_)
                              (let ((_expr10899_ (gxc#compile-e _L10879_))
                                    (_off10900_
                                     (fx+ _off10809_ _xfields10844_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t10810_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off10900_ '()))
                                                   (cons _expr10899_ '()))))
                                 _stx10793_)))
                            _hd1085310874_)
                           (_g1084810866_ _g1085010869_))))
                   (_g1084810866_ _g1085010869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1084710902_ _args10794_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id10846_)
                                            (gxc#xform-call% _stx10793_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1081310825_)
                                   (let ((_e1082010908_
                                          (##vector-ref
                                           _struct-type1081310825_
                                           '1)))
                                     (let ((_struct-type-id10911_
                                            _e1082010908_))
                                       (let ((_e1082110913_
                                              (##vector-ref
                                               _struct-type1081310825_
                                               '2)))
                                         (let ((_e1082210916_
                                                (##vector-ref
                                                 _struct-type1081310825_
                                                 '3)))
                                           (let ((_fields10919_ _e1082210916_))
                                             (let ((_e1082310921_
                                                    (##vector-ref
                                                     _struct-type1081310825_
                                                     '4)))
                                               (let ((_xfields10924_
                                                      _e1082310921_))
                                                 (_K1081910905_
                                                  _xfields10924_
                                                  _fields10919_
                                                  _struct-type-id10911_))))))))
                                   (_try-match1081510841_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self1079510802_)
                (let ((_e1079910929_ (##vector-ref _self1079510802_ '1)))
                  (let ((_struct-t10932_ _e1079910929_))
                    (let ((_e1080010934_ (##vector-ref _self1079510802_ '2)))
                      (let ((_off10937_ _e1080010934_))
                        (_K1079810926_ _off10937_ _struct-t10932_)))))
                (_E1079710806_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self10628_ _stx10629_ _args10630_)
      (let ((_self1063110638_ _self10628_))
        (let ((_E1063310642_
               (lambda () (error '"No clause matching" _self1063110638_))))
          (let ((_K1063410779_
                 (lambda (_off10645_ _struct-t10646_)
                   (let ((_struct-type10648_
                          (gxc#optimizer-resolve-type _struct-t10646_)))
                     (let ((_struct-type1064910661_ _struct-type10648_))
                       (let ((_E1065310665_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1064910661_))))
                         (let ((_else1065210669_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx10629_
                                   _struct-t10646_
                                   _struct-type10648_))))
                           (let ((_try-match1065110677_
                                  (lambda ()
                                    (let ((_K1065410674_
                                           (lambda ()
                                             (gxc#xform-call% _stx10629_))))
                                      (if (##eq? _struct-type1064910661_ '#f)
                                          (_K1065410674_)
                                          (_else1065210669_))))))
                             (let ((_K1065510758_
                                    (lambda (_xfields10680_
                                             _fields10681_
                                             _struct-type-id10682_)
                                      (if _xfields10680_
                                          (let ((_g1068510699_
                                                 (lambda (_g1068610696_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1068610696_))))
                                            (let ((_g1068410706_
                                                   (lambda (_g1068610702_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx10629_))))))
                                              (let ((_g1068310755_
                                                     (lambda (_g1068610709_)
                                                       (if (gx#stx-pair?
                                                            _g1068610709_)
                                                           (let ((_e1068910711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1068610709_)))
                     (let ((_hd1069010714_ (##car _e1068910711_))
                           (_tl1069110716_ (##cdr _e1068910711_)))
                       (if (gx#stx-pair? _tl1069110716_)
                           (let ((_e1069210719_ (gx#stx-e _tl1069110716_)))
                             (let ((_hd1069310722_ (##car _e1069210719_))
                                   (_tl1069410724_ (##cdr _e1069210719_)))
                               (if (gx#stx-null? _tl1069410724_)
                                   ((lambda (_L10727_ _L10728_)
                                      (let ((_expr10751_
                                             (gxc#compile-e _L10728_))
                                            (_val10752_
                                             (gxc#compile-e _L10727_))
                                            (_off10753_
                                             (fx+ _off10645_
                                                  _xfields10680_
                                                  '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t10646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off10753_ '()))
                   (cons _expr10751_ (cons _val10752_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx10629_)))
                                    _hd1069310722_
                                    _hd1069010714_)
                                   (_g1068410706_ _g1068610709_))))
                           (_g1068410706_ _g1068610709_))))
                   (_g1068410706_ _g1068610709_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1068310755_ _args10630_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id10682_)
                                            (gxc#xform-call% _stx10629_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1064910661_)
                                   (let ((_e1065610761_
                                          (##vector-ref
                                           _struct-type1064910661_
                                           '1)))
                                     (let ((_struct-type-id10764_
                                            _e1065610761_))
                                       (let ((_e1065710766_
                                              (##vector-ref
                                               _struct-type1064910661_
                                               '2)))
                                         (let ((_e1065810769_
                                                (##vector-ref
                                                 _struct-type1064910661_
                                                 '3)))
                                           (let ((_fields10772_ _e1065810769_))
                                             (let ((_e1065910774_
                                                    (##vector-ref
                                                     _struct-type1064910661_
                                                     '4)))
                                               (let ((_xfields10777_
                                                      _e1065910774_))
                                                 (_K1065510758_
                                                  _xfields10777_
                                                  _fields10772_
                                                  _struct-type-id10764_))))))))
                                   (_try-match1065110677_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self1063110638_)
                (let ((_e1063510782_ (##vector-ref _self1063110638_ '1)))
                  (let ((_struct-t10785_ _e1063510782_))
                    (let ((_e1063610787_ (##vector-ref _self1063110638_ '2)))
                      (let ((_off10790_ _e1063610787_))
                        (_K1063410779_ _off10790_ _struct-t10785_)))))
                (_E1063310642_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self10584_ _stx10585_ _args10586_)
      (let ((_self1058710596_ _self10584_))
        (let ((_E1058910600_
               (lambda () (error '"No clause matching" _self1058710596_))))
          (let ((_K1059010607_
                 (lambda (_inline10603_ _dispatch10604_ _arity10605_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self10584_ _args10586_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx10585_
                          _arity10605_))
                     (if _inline10603_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline10603_ _stx10585_)
                             _stx10585_)))
                         (if _dispatch10604_
                             (begin
                               (gxc#verbose
                                '"dispatch lambda => "
                                _dispatch10604_)
                               (gxc#compile-e
                                (gxc#xform-wrap-source
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons _dispatch10604_ '()))
                                             _args10586_))
                                 _stx10585_)))
                             (gxc#xform-call% _stx10585_)))))))
            (if (struct-instance? gxc#!lambda::t _self1058710596_)
                (let ((_e1059110610_ (##vector-ref _self1058710596_ '1)))
                  (let ((_e1059210613_ (##vector-ref _self1058710596_ '2)))
                    (let ((_arity10616_ _e1059210613_))
                      (let ((_e1059310618_ (##vector-ref _self1058710596_ '3)))
                        (let ((_dispatch10621_ _e1059310618_))
                          (let ((_e1059410623_
                                 (##vector-ref _self1058710596_ '4)))
                            (let ((_inline10626_ _e1059410623_))
                              (_K1059010607_
                               _inline10626_
                               _dispatch10621_
                               _arity10616_))))))))
                (_E1058910600_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self10544_ _stx10545_ _args10546_)
      (let ((_self1054710554_ _self10544_))
        (let ((_E1054910558_
               (lambda () (error '"No clause matching" _self1054710554_))))
          (let ((_K1055010573_
                 (lambda (_clauses10561_)
                   (let ((_$e10567_
                          (find (lambda (_g1056210564_)
                                  (gxc#!lambda-arity-match?
                                   _g1056210564_
                                   _args10546_))
                                _clauses10561_)))
                     (if _$e10567_
                         ((lambda (_clause10570_)
                            (call-method
                             _clause10570_
                             'optimize-call
                             _stx10545_
                             _args10546_))
                          _$e10567_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx10545_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses10561_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses10561_)))))))
            (if (struct-instance? gxc#!case-lambda::t _self1054710554_)
                (let ((_e1055110576_ (##vector-ref _self1054710554_ '1)))
                  (let ((_e1055210579_ (##vector-ref _self1054710554_ '2)))
                    (let ((_clauses10582_ _e1055210579_))
                      (_K1055010573_ _clauses10582_))))
                (_E1054910558_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self10480_ _args10481_)
      (let ((_self1048210489_ _self10480_))
        (let ((_E1048410493_
               (lambda () (error '"No clause matching" _self1048210489_))))
          (let ((_K1048510533_
                 (lambda (_arity10496_)
                   (let ((_arity1049710506_ _arity10496_))
                     (let ((_E1050010510_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1049710506_))))
                       (let ((_try-match1049910526_
                              (lambda ()
                                (let ((_K1050110516_
                                       (lambda (_arity10514_)
                                         (fx>= (length _args10481_)
                                               _arity10514_))))
                                  (if (##pair? _arity1049710506_)
                                      (let ((_hd1050210519_
                                             (##car _arity1049710506_))
                                            (_tl1050310521_
                                             (##cdr _arity1049710506_)))
                                        (let ((_arity10524_ _hd1050210519_))
                                          (if (##null? _tl1050310521_)
                                              (_K1050110516_ _arity10524_)
                                              (_E1050010510_))))
                                      (_E1050010510_))))))
                         (let ((_K1050410530_
                                (lambda ()
                                  (fx= (length _args10481_) _arity10496_))))
                           (if (fixnum? _arity1049710506_)
                               (_K1050410530_)
                               (_try-match1049910526_)))))))))
            (if (struct-instance? gxc#!lambda::t _self1048210489_)
                (let ((_e1048610536_ (##vector-ref _self1048210489_ '1)))
                  (let ((_e1048710539_ (##vector-ref _self1048210489_ '2)))
                    (let ((_arity10542_ _e1048710539_))
                      (_K1048510533_ _arity10542_))))
                (_E1048410493_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx10420_)
      (let ((_g1042210436_
             (lambda (_g1042310433_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1042310433_))))
        (let ((_g1042110477_
               (lambda (_g1042310439_)
                 (if (gx#stx-pair? _g1042310439_)
                     (let ((_e1042610441_ (gx#stx-e _g1042310439_)))
                       (let ((_hd1042710444_ (##car _e1042610441_))
                             (_tl1042810446_ (##cdr _e1042610441_)))
                         (if (gx#stx-pair? _tl1042810446_)
                             (let ((_e1042910449_ (gx#stx-e _tl1042810446_)))
                               (let ((_hd1043010452_ (##car _e1042910449_))
                                     (_tl1043110454_ (##cdr _e1042910449_)))
                                 ((lambda (_L10457_ _L10458_)
                                    (let ((_ctx10471_
                                           (gx#syntax-local-e _L10458_)))
                                      (let ((_code10473_
                                             (gx#module-context-code
                                              _ctx10471_)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code10473_))
                                           gx#current-expander-context
                                           _ctx10471_)))))
                                  _tl1043110454_
                                  _hd1043010452_)))
                             (_g1042210436_ _g1042310439_))))
                     (_g1042210436_ _g1042310439_)))))
          (_g1042110477_ _stx10420_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx10230_)
      (let ((_generate-e10232_
             (lambda (_id10409_)
               (let ((_sym10411_
                      (if (gx#identifier? (gx#datum->syntax '#f 'id))
                          (gxc#generate-runtime-binding-id _id10409_)
                          '#f)))
                 (let ((_$e10413_
                        (if _sym10411_
                            (gxc#optimizer-lookup-type _sym10411_)
                            '#f)))
                   (if _$e10413_
                       ((lambda (_type10416_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym10411_)
                            (let ((_typedecl10418_
                                   (call-method _type10416_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym10411_
                                          (cons _typedecl10418_ '()))))))
                        _$e10413_)
                       '(begin)))))))
        (let ((_g1023510273_
               (lambda (_g1023610270_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1023610270_))))
          (let ((_g1023410354_
                 (lambda (_g1023610276_)
                   (if (gx#stx-pair? _g1023610276_)
                       (let ((_e1025110278_ (gx#stx-e _g1023610276_)))
                         (let ((_hd1025210281_ (##car _e1025110278_))
                               (_tl1025310283_ (##cdr _e1025110278_)))
                           (if (gx#stx-pair? _tl1025310283_)
                               (let ((_e1025410286_ (gx#stx-e _tl1025310283_)))
                                 (let ((_hd1025510289_ (##car _e1025410286_))
                                       (_tl1025610291_ (##cdr _e1025410286_)))
                                   (if (gx#stx-pair/null? _hd1025510289_)
                                       (if (fx>= (gx#stx-length _hd1025510289_)
                                                 '0)
                                           (let ((_g18581_
                                                  (gx#syntax-split-splice
                                                   _hd1025510289_
                                                   '0)))
                                             (begin
                                               (let ((_g18582_
                                                      (values-count _g18581_)))
                                                 (if (not (fx= _g18582_ 2))
                                                     (error "Context expects 2 values"
                                                            _g18582_)))
                                               (let ((_target1025710294_
                                                      (values-ref _g18581_ 0))
                                                     (_tl1025910296_
                                                      (values-ref _g18581_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1025910296_)
                                                     (letrec ((_loop1026010299_
                                                               (lambda (_hd1025810302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1026410304_)
                         (if (gx#stx-pair? _hd1025810302_)
                             (let ((_e1026110307_ (gx#stx-e _hd1025810302_)))
                               (let ((_lp-hd1026210310_ (##car _e1026110307_))
                                     (_lp-tl1026310312_ (##cdr _e1026110307_)))
                                 (_loop1026010299_
                                  _lp-tl1026310312_
                                  (cons _lp-hd1026210310_ _id1026410304_))))
                             (let ((_id1026510315_ (reverse _id1026410304_)))
                               (if (gx#stx-pair? _tl1025610291_)
                                   (let ((_e1026610318_
                                          (gx#stx-e _tl1025610291_)))
                                     (let ((_hd1026710321_
                                            (##car _e1026610318_))
                                           (_tl1026810323_
                                            (##cdr _e1026610318_)))
                                       (if (gx#stx-null? _tl1026810323_)
                                           ((lambda (_L10326_)
                                              (let ((_types10352_
                                                     (map _generate-e10232_
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1034410347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1034510349_)
                              (cons _g1034410347_ _g1034510349_))
                            '()
                            _L10326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'begin _types10352_)))
                                            _id1026510315_)
                                           (_g1023510273_ _g1023610276_))))
                                   (_g1023510273_ _g1023610276_)))))))
               (_loop1026010299_ _target1025710294_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1023510273_
                                                      _g1023610276_)))))
                                           (_g1023510273_ _g1023610276_))
                                       (_g1023510273_ _g1023610276_))))
                               (_g1023510273_ _g1023610276_))))
                       (_g1023510273_ _g1023610276_)))))
            (let ((_g1023310406_
                   (lambda (_g1023610357_)
                     (if (gx#stx-pair? _g1023610357_)
                         (let ((_e1023810359_ (gx#stx-e _g1023610357_)))
                           (let ((_hd1023910362_ (##car _e1023810359_))
                                 (_tl1024010364_ (##cdr _e1023810359_)))
                             (if (gx#stx-pair? _tl1024010364_)
                                 (let ((_e1024110367_
                                        (gx#stx-e _tl1024010364_)))
                                   (let ((_hd1024210370_ (##car _e1024110367_))
                                         (_tl1024310372_
                                          (##cdr _e1024110367_)))
                                     (if (gx#stx-pair? _hd1024210370_)
                                         (let ((_e1024410375_
                                                (gx#stx-e _hd1024210370_)))
                                           (let ((_hd1024510378_
                                                  (##car _e1024410375_))
                                                 (_tl1024610380_
                                                  (##cdr _e1024410375_)))
                                             (if (gx#stx-null? _tl1024610380_)
                                                 (if (gx#stx-pair?
                                                      _tl1024310372_)
                                                     (let ((_e1024710383_
                                                            (gx#stx-e
                                                             _tl1024310372_)))
                                                       (let ((_hd1024810386_
                                                              (##car _e1024710383_))
                                                             (_tl1024910388_
                                                              (##cdr _e1024710383_)))
                                                         (if (gx#stx-null?
                                                              _tl1024910388_)
                                                             ((lambda (_L10391_)
                                                                (_generate-e10232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10391_))
                      _hd1024510378_)
                     (_g1023410354_ _g1023610357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1023410354_
                                                      _g1023610357_))
                                                 (_g1023410354_
                                                  _g1023610357_))))
                                         (_g1023410354_ _g1023610357_))))
                                 (_g1023410354_ _g1023610357_))))
                         (_g1023410354_ _g1023610357_)))))
              (_g1023310406_ _stx10230_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx9784_)
      (let ((_g97889890_
             (lambda (_g97899887_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g97899887_))))
        (let ((_g97879897_ (lambda (_g97899893_) ((lambda () '(begin))))))
          (let ((_g978610047_
                 (lambda (_g97899900_)
                   (if (gx#stx-pair? _g97899900_)
                       (let ((_e98479902_ (gx#stx-e _g97899900_)))
                         (let ((_hd98489905_ (##car _e98479902_))
                               (_tl98499907_ (##cdr _e98479902_)))
                           (if (gx#stx-pair? _tl98499907_)
                               (let ((_e98509910_ (gx#stx-e _tl98499907_)))
                                 (let ((_hd98519913_ (##car _e98509910_))
                                       (_tl98529915_ (##cdr _e98509910_)))
                                   (if (gx#stx-pair? _hd98519913_)
                                       (let ((_e98539918_
                                              (gx#stx-e _hd98519913_)))
                                         (let ((_hd98549921_
                                                (##car _e98539918_))
                                               (_tl98559923_
                                                (##cdr _e98539918_)))
                                           (if (gx#identifier? _hd98549921_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd98549921_)
                                                   (if (gx#stx-pair?
                                                        _tl98559923_)
                                                       (let ((_e98569926_
                                                              (gx#stx-e
                                                               _tl98559923_)))
                                                         (let ((_hd98579929_
                                                                (##car _e98569926_))
                                                               (_tl98589931_
                                                                (##cdr _e98569926_)))
                                                           (if (gx#stx-null?
                                                                _tl98589931_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl98529915_)
                           (let ((_e98599934_ (gx#stx-e _tl98529915_)))
                             (let ((_hd98609937_ (##car _e98599934_))
                                   (_tl98619939_ (##cdr _e98599934_)))
                               (if (gx#stx-pair? _hd98609937_)
                                   (let ((_e98629942_ (gx#stx-e _hd98609937_)))
                                     (let ((_hd98639945_ (##car _e98629942_))
                                           (_tl98649947_ (##cdr _e98629942_)))
                                       (if (gx#identifier? _hd98639945_)
                                           (if (gx#stx-eq? '%#ref _hd98639945_)
                                               (if (gx#stx-pair? _tl98649947_)
                                                   (let ((_e98659950_
                                                          (gx#stx-e
                                                           _tl98649947_)))
                                                     (let ((_hd98669953_
                                                            (##car _e98659950_))
                                                           (_tl98679955_
                                                            (##cdr _e98659950_)))
                                                       (if (gx#stx-null?
                                                            _tl98679955_)
                                                           (if (gx#stx-pair?
                                                                _tl98619939_)
                                                               (let ((_e98689958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl98619939_)))
                         (let ((_hd98699961_ (##car _e98689958_))
                               (_tl98709963_ (##cdr _e98689958_)))
                           (if (gx#stx-pair? _hd98699961_)
                               (let ((_e98719966_ (gx#stx-e _hd98699961_)))
                                 (let ((_hd98729969_ (##car _e98719966_))
                                       (_tl98739971_ (##cdr _e98719966_)))
                                   (if (gx#identifier? _hd98729969_)
                                       (if (gx#stx-eq? '%#quote _hd98729969_)
                                           (if (gx#stx-pair? _tl98739971_)
                                               (let ((_e98749974_
                                                      (gx#stx-e _tl98739971_)))
                                                 (let ((_hd98759977_
                                                        (##car _e98749974_))
                                                       (_tl98769979_
                                                        (##cdr _e98749974_)))
                                                   (if (gx#stx-null?
                                                        _tl98769979_)
                                                       (if (gx#stx-pair?
                                                            _tl98709963_)
                                                           (let ((_e98779982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl98709963_)))
                     (let ((_hd98789985_ (##car _e98779982_))
                           (_tl98799987_ (##cdr _e98779982_)))
                       (if (gx#stx-pair? _hd98789985_)
                           (let ((_e98809990_ (gx#stx-e _hd98789985_)))
                             (let ((_hd98819993_ (##car _e98809990_))
                                   (_tl98829995_ (##cdr _e98809990_)))
                               (if (gx#identifier? _hd98819993_)
                                   (if (gx#stx-eq? '%#ref _hd98819993_)
                                       (if (gx#stx-pair? _tl98829995_)
                                           (let ((_e98839998_
                                                  (gx#stx-e _tl98829995_)))
                                             (let ((_hd988410001_
                                                    (##car _e98839998_))
                                                   (_tl988510003_
                                                    (##cdr _e98839998_)))
                                               (if (gx#stx-null? _tl988510003_)
                                                   (if (gx#stx-null?
                                                        _tl98799987_)
                                                       ((lambda (_L10006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10007_
                         _L10008_
                         _L10009_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#generate-runtime-binding-id _L10008_)
                                  (cons (gx#stx-e _L10007_)
                                        (cons (gxc#generate-runtime-binding-id
                                               _L10006_)
                                              (cons '#f '())))))
                      (_g97879897_ _g97899900_)))
                _hd988410001_
                _hd98759977_
                _hd98669953_
                _hd98579929_)
               (_g97879897_ _g97899900_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g97879897_ _g97899900_))))
                                           (_g97879897_ _g97899900_))
                                       (_g97879897_ _g97899900_))
                                   (_g97879897_ _g97899900_))))
                           (_g97879897_ _g97899900_))))
                   (_g97879897_ _g97899900_))
               (_g97879897_ _g97899900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g97879897_ _g97899900_))
                                           (_g97879897_ _g97899900_))
                                       (_g97879897_ _g97899900_))))
                               (_g97879897_ _g97899900_))))
                       (_g97879897_ _g97899900_))
                   (_g97879897_ _g97899900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g97879897_ _g97899900_))
                                               (_g97879897_ _g97899900_))
                                           (_g97879897_ _g97899900_))))
                                   (_g97879897_ _g97899900_))))
                           (_g97879897_ _g97899900_))
                       (_g97879897_ _g97899900_))))
               (_g97879897_ _g97899900_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g97879897_ _g97899900_))
                                               (_g97879897_ _g97899900_))))
                                       (_g97879897_ _g97899900_))))
                               (_g97879897_ _g97899900_))))
                       (_g97879897_ _g97899900_)))))
            (let ((_g978510227_
                   (lambda (_g978910050_)
                     (if (gx#stx-pair? _g978910050_)
                         (let ((_e979510052_ (gx#stx-e _g978910050_)))
                           (let ((_hd979610055_ (##car _e979510052_))
                                 (_tl979710057_ (##cdr _e979510052_)))
                             (if (gx#stx-pair? _tl979710057_)
                                 (let ((_e979810060_ (gx#stx-e _tl979710057_)))
                                   (let ((_hd979910063_ (##car _e979810060_))
                                         (_tl980010065_ (##cdr _e979810060_)))
                                     (if (gx#stx-pair? _hd979910063_)
                                         (let ((_e980110068_
                                                (gx#stx-e _hd979910063_)))
                                           (let ((_hd980210071_
                                                  (##car _e980110068_))
                                                 (_tl980310073_
                                                  (##cdr _e980110068_)))
                                             (if (gx#identifier? _hd980210071_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd980210071_)
                                                     (if (gx#stx-pair?
                                                          _tl980310073_)
                                                         (let ((_e980410076_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl980310073_)))
                   (let ((_hd980510079_ (##car _e980410076_))
                         (_tl980610081_ (##cdr _e980410076_)))
                     (if (gx#stx-null? _tl980610081_)
                         (if (gx#stx-pair? _tl980010065_)
                             (let ((_e980710084_ (gx#stx-e _tl980010065_)))
                               (let ((_hd980810087_ (##car _e980710084_))
                                     (_tl980910089_ (##cdr _e980710084_)))
                                 (if (gx#stx-pair? _hd980810087_)
                                     (let ((_e981010092_
                                            (gx#stx-e _hd980810087_)))
                                       (let ((_hd981110095_
                                              (##car _e981010092_))
                                             (_tl981210097_
                                              (##cdr _e981010092_)))
                                         (if (gx#identifier? _hd981110095_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd981110095_)
                                                 (if (gx#stx-pair?
                                                      _tl981210097_)
                                                     (let ((_e981310100_
                                                            (gx#stx-e
                                                             _tl981210097_)))
                                                       (let ((_hd981410103_
                                                              (##car _e981310100_))
                                                             (_tl981510105_
                                                              (##cdr _e981310100_)))
                                                         (if (gx#stx-null?
                                                              _tl981510105_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl980910089_)
                         (let ((_e981610108_ (gx#stx-e _tl980910089_)))
                           (let ((_hd981710111_ (##car _e981610108_))
                                 (_tl981810113_ (##cdr _e981610108_)))
                             (if (gx#stx-pair? _hd981710111_)
                                 (let ((_e981910116_ (gx#stx-e _hd981710111_)))
                                   (let ((_hd982010119_ (##car _e981910116_))
                                         (_tl982110121_ (##cdr _e981910116_)))
                                     (if (gx#identifier? _hd982010119_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd982010119_)
                                             (if (gx#stx-pair? _tl982110121_)
                                                 (let ((_e982210124_
                                                        (gx#stx-e
                                                         _tl982110121_)))
                                                   (let ((_hd982310127_
                                                          (##car _e982210124_))
                                                         (_tl982410129_
                                                          (##cdr _e982210124_)))
                                                     (if (gx#stx-null?
                                                          _tl982410129_)
                                                         (if (gx#stx-pair?
                                                              _tl981810113_)
                                                             (let ((_e982510132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl981810113_)))
                       (let ((_hd982610135_ (##car _e982510132_))
                             (_tl982710137_ (##cdr _e982510132_)))
                         (if (gx#stx-pair? _hd982610135_)
                             (let ((_e982810140_ (gx#stx-e _hd982610135_)))
                               (let ((_hd982910143_ (##car _e982810140_))
                                     (_tl983010145_ (##cdr _e982810140_)))
                                 (if (gx#identifier? _hd982910143_)
                                     (if (gx#stx-eq? '%#ref _hd982910143_)
                                         (if (gx#stx-pair? _tl983010145_)
                                             (let ((_e983110148_
                                                    (gx#stx-e _tl983010145_)))
                                               (let ((_hd983210151_
                                                      (##car _e983110148_))
                                                     (_tl983310153_
                                                      (##cdr _e983110148_)))
                                                 (if (gx#stx-null?
                                                      _tl983310153_)
                                                     (if (gx#stx-pair?
                                                          _tl982710137_)
                                                         (let ((_e983410156_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl982710137_)))
                   (let ((_hd983510159_ (##car _e983410156_))
                         (_tl983610161_ (##cdr _e983410156_)))
                     (if (gx#stx-pair? _hd983510159_)
                         (let ((_e983710164_ (gx#stx-e _hd983510159_)))
                           (let ((_hd983810167_ (##car _e983710164_))
                                 (_tl983910169_ (##cdr _e983710164_)))
                             (if (gx#identifier? _hd983810167_)
                                 (if (gx#stx-eq? '%#quote _hd983810167_)
                                     (if (gx#stx-pair? _tl983910169_)
                                         (let ((_e984010172_
                                                (gx#stx-e _tl983910169_)))
                                           (let ((_hd984110175_
                                                  (##car _e984010172_))
                                                 (_tl984210177_
                                                  (##cdr _e984010172_)))
                                             (if (gx#stx-null? _tl984210177_)
                                                 (if (gx#stx-null?
                                                      _tl983610161_)
                                                     ((lambda (_L10180_
                                                               _L10181_
                                                               _L10182_
                                                               _L10183_
                                                               _L10184_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10184_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#generate-runtime-binding-id _L10183_)
                                (cons (gx#stx-e _L10182_)
                                      (cons (gxc#generate-runtime-binding-id
                                             _L10181_)
                                            (cons (gx#stx-e _L10180_) '())))))
                    (_g978610047_ _g978910050_)))
              _hd984110175_
              _hd983210151_
              _hd982310127_
              _hd981410103_
              _hd980510079_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g978610047_
                                                      _g978910050_))
                                                 (_g978610047_ _g978910050_))))
                                         (_g978610047_ _g978910050_))
                                     (_g978610047_ _g978910050_))
                                 (_g978610047_ _g978910050_))))
                         (_g978610047_ _g978910050_))))
                 (_g978610047_ _g978910050_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g978610047_
                                                      _g978910050_))))
                                             (_g978610047_ _g978910050_))
                                         (_g978610047_ _g978910050_))
                                     (_g978610047_ _g978910050_))))
                             (_g978610047_ _g978910050_))))
                     (_g978610047_ _g978910050_))
                 (_g978610047_ _g978910050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g978610047_ _g978910050_))
                                             (_g978610047_ _g978910050_))
                                         (_g978610047_ _g978910050_))))
                                 (_g978610047_ _g978910050_))))
                         (_g978610047_ _g978910050_))
                     (_g978610047_ _g978910050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g978610047_
                                                      _g978910050_))
                                                 (_g978610047_ _g978910050_))
                                             (_g978610047_ _g978910050_))))
                                     (_g978610047_ _g978910050_))))
                             (_g978610047_ _g978910050_))
                         (_g978610047_ _g978910050_))))
                 (_g978610047_ _g978910050_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g978610047_
                                                      _g978910050_))
                                                 (_g978610047_ _g978910050_))))
                                         (_g978610047_ _g978910050_))))
                                 (_g978610047_ _g978910050_))))
                         (_g978610047_ _g978910050_)))))
              (_g978510227_ _stx9784_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self9760_)
      (let ((_self97619767_ _self9760_))
        (let ((_E97639771_
               (lambda () (error '"No clause matching" _self97619767_))))
          (let ((_K97649776_
                 (lambda (_alias-id9774_)
                   (cons '@alias (cons _alias-id9774_ '())))))
            (if (struct-instance? gxc#!alias::t _self97619767_)
                (let ((_e97659779_ (##vector-ref _self97619767_ '1)))
                  (let ((_alias-id9782_ _e97659779_))
                    (_K97649776_ _alias-id9782_)))
                (_E97639771_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self9704_)
      (let ((_self97059716_ _self9704_))
        (let ((_E97079720_
               (lambda () (error '"No clause matching" _self97059716_))))
          (let ((_K97089729_
                 (lambda (_plist9723_
                          _ctor9724_
                          _fields9725_
                          _super9726_
                          _type-id9727_)
                   (cons '@struct-type
                         (cons _type-id9727_
                               (cons _super9726_
                                     (cons _fields9725_
                                           (cons _ctor9724_
                                                 (cons _plist9723_ '())))))))))
            (if (struct-instance? gxc#!struct-type::t _self97059716_)
                (let ((_e97099732_ (##vector-ref _self97059716_ '1)))
                  (let ((_type-id9735_ _e97099732_))
                    (let ((_e97109737_ (##vector-ref _self97059716_ '2)))
                      (let ((_super9740_ _e97109737_))
                        (let ((_e97119742_ (##vector-ref _self97059716_ '3)))
                          (let ((_fields9745_ _e97119742_))
                            (let ((_e97129747_
                                   (##vector-ref _self97059716_ '4)))
                              (let ((_e97139750_
                                     (##vector-ref _self97059716_ '5)))
                                (let ((_ctor9753_ _e97139750_))
                                  (let ((_e97149755_
                                         (##vector-ref _self97059716_ '6)))
                                    (let ((_plist9758_ _e97149755_))
                                      (_K97089729_
                                       _plist9758_
                                       _ctor9753_
                                       _fields9745_
                                       _super9740_
                                       _type-id9735_))))))))))))
                (_E97079720_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self9680_)
      (let ((_self96819687_ _self9680_))
        (let ((_E96839691_
               (lambda () (error '"No clause matching" _self96819687_))))
          (let ((_K96849696_
                 (lambda (_struct-t9694_)
                   (cons '@struct-pred (cons _struct-t9694_ '())))))
            (if (struct-instance? gxc#!struct-pred::t _self96819687_)
                (let ((_e96859699_ (##vector-ref _self96819687_ '1)))
                  (let ((_struct-t9702_ _e96859699_))
                    (_K96849696_ _struct-t9702_)))
                (_E96839691_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self9656_)
      (let ((_self96579663_ _self9656_))
        (let ((_E96599667_
               (lambda () (error '"No clause matching" _self96579663_))))
          (let ((_K96609672_
                 (lambda (_struct-t9670_)
                   (cons '@struct-cons (cons _struct-t9670_ '())))))
            (if (struct-instance? gxc#!struct-cons::t _self96579663_)
                (let ((_e96619675_ (##vector-ref _self96579663_ '1)))
                  (let ((_struct-t9678_ _e96619675_))
                    (_K96609672_ _struct-t9678_)))
                (_E96599667_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self9625_)
      (let ((_self96269633_ _self9625_))
        (let ((_E96289637_
               (lambda () (error '"No clause matching" _self96269633_))))
          (let ((_K96299643_
                 (lambda (_off9640_ _struct-t9641_)
                   (cons '@struct-getf
                         (cons _struct-t9641_ (cons _off9640_ '()))))))
            (if (struct-instance? gxc#!struct-getf::t _self96269633_)
                (let ((_e96309646_ (##vector-ref _self96269633_ '1)))
                  (let ((_struct-t9649_ _e96309646_))
                    (let ((_e96319651_ (##vector-ref _self96269633_ '2)))
                      (let ((_off9654_ _e96319651_))
                        (_K96299643_ _off9654_ _struct-t9649_)))))
                (_E96289637_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self9594_)
      (let ((_self95959602_ _self9594_))
        (let ((_E95979606_
               (lambda () (error '"No clause matching" _self95959602_))))
          (let ((_K95989612_
                 (lambda (_off9609_ _struct-t9610_)
                   (cons '@struct-setf
                         (cons _struct-t9610_ (cons _off9609_ '()))))))
            (if (struct-instance? gxc#!struct-setf::t _self95959602_)
                (let ((_e95999615_ (##vector-ref _self95959602_ '1)))
                  (let ((_struct-t9618_ _e95999615_))
                    (let ((_e96009620_ (##vector-ref _self95959602_ '2)))
                      (let ((_off9623_ _e96009620_))
                        (_K95989612_ _off9623_ _struct-t9618_)))))
                (_E95979606_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self9542_)
      (let ((_self95439553_ _self9542_))
        (let ((_E95459557_
               (lambda () (error '"No clause matching" _self95439553_))))
          (let ((_K95469568_
                 (lambda (_typedecl9560_
                          _inline9561_
                          _dispatch9562_
                          _arity9563_)
                   (if _inline9561_
                       (let ((_$e9565_ _typedecl9560_))
                         (if _$e9565_
                             _$e9565_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity9563_ (cons _dispatch9562_ '())))))))
            (if (struct-instance? gxc#!lambda::t _self95439553_)
                (let ((_e95479571_ (##vector-ref _self95439553_ '1)))
                  (let ((_e95489574_ (##vector-ref _self95439553_ '2)))
                    (let ((_arity9577_ _e95489574_))
                      (let ((_e95499579_ (##vector-ref _self95439553_ '3)))
                        (let ((_dispatch9582_ _e95499579_))
                          (let ((_e95509584_ (##vector-ref _self95439553_ '4)))
                            (let ((_inline9587_ _e95509584_))
                              (let ((_e95519589_
                                     (##vector-ref _self95439553_ '5)))
                                (let ((_typedecl9592_ _e95519589_))
                                  (_K95469568_
                                   _typedecl9592_
                                   _inline9587_
                                   _dispatch9582_
                                   _arity9577_))))))))))
                (_E95459557_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self9475_)
      (let ((_clause-e9477_
             (lambda (_clause9507_)
               (let ((_clause95089516_ _clause9507_))
                 (let ((_E95109520_
                        (lambda ()
                          (error '"No clause matching" _clause95089516_))))
                   (let ((_K95119526_
                          (lambda (_dispatch9523_ _arity9524_)
                            (cons _arity9524_ (cons _dispatch9523_ '())))))
                     (if (struct-instance? gxc#!lambda::t _clause95089516_)
                         (let ((_e95129529_
                                (##vector-ref _clause95089516_ '1)))
                           (let ((_e95139532_
                                  (##vector-ref _clause95089516_ '2)))
                             (let ((_arity9535_ _e95139532_))
                               (let ((_e95149537_
                                      (##vector-ref _clause95089516_ '3)))
                                 (let ((_dispatch9540_ _e95149537_))
                                   (_K95119526_
                                    _dispatch9540_
                                    _arity9535_))))))
                         (_E95109520_))))))))
        (let ((_self94789485_ _self9475_))
          (let ((_E94809489_
                 (lambda () (error '"No clause matching" _self94789485_))))
            (let ((_K94819496_
                   (lambda (_clauses9492_)
                     (let ((_clauses9494_ (map _clause-e9477_ _clauses9492_)))
                       (cons '@case-lambda _clauses9494_)))))
              (if (struct-instance? gxc#!case-lambda::t _self94789485_)
                  (let ((_e94829499_ (##vector-ref _self94789485_ '1)))
                    (let ((_e94839502_ (##vector-ref _self94789485_ '2)))
                      (let ((_clauses9505_ _e94839502_))
                        (_K94819496_ _clauses9505_))))
                  (_E94809489_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx9473_) (gxc#generate-runtime-binding-id _stx9473_))))
