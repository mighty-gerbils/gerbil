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
    (lambda _$args23600_
      (apply make-struct-instance gxc#optimizer-info::t _$args23600_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self23598_)
      (if (##fx< '2 (##vector-length _self23598_))
          (begin
            (##vector-set! _self23598_ '1 (make-hash-table-eq))
            (##vector-set! _self23598_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self23598_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj23612 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj23612) __obj23612))))))
  (define gxc#optimize!
    (lambda (_ctx23470_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx23470_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx23470_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code23473_
                  (gxc#optimize-source
                   (##structure-ref _ctx23470_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx23470_
              _code23473_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx23415_)
      (letrec* ((_deps23417_
                 (let* ((_imports23461_
                         (##structure-ref
                          _ctx23415_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e23463_
                         (gx#core-context-prelude__opt-lambda13205
                          _ctx23415_)))
                   (if _$e23463_
                       ((lambda (_g2346523467_)
                          (cons _g2346523467_ _imports23461_))
                        _$e23463_)
                       _imports23461_))))
        (let _lp23419_ ((_rest23421_ _deps23417_))
          (let* ((_rest2342223430_ _rest23421_)
                 (_E2342523434_
                  (lambda () (error '"No clause matching" _rest2342223430_)))
                 (_else2342423438_ (lambda () '#!void))
                 (_K2342623449_
                  (lambda (_rest23441_ _hd23442_)
                    (if (##structure-instance-of?
                         _hd23442_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd23442_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e23444_
                                       (gx#core-context-prelude__opt-lambda13205
                                        _hd23442_)))
                                  (if _$e23444_
                                      ((lambda (_pre23447_)
                                         (_lp23419_
                                          (cons _pre23447_
                                                (##structure-ref
                                                 _hd23442_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e23444_)
                                      (_lp23419_
                                       (##structure-ref
                                        _hd23442_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd23442_)))
                          (_lp23419_ _rest23441_))
                        (if (##structure-instance-of?
                             _hd23442_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd23442_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp23419_
                                     (##structure-ref
                                      _hd23442_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd23442_)))
                              (_lp23419_ _rest23441_))
                            (if (##structure-direct-instance-of?
                                 _hd23442_
                                 'gx#module-import::t)
                                (_lp23419_
                                 (cons (##direct-structure-ref
                                        _hd23442_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest23441_))
                                (if (##structure-direct-instance-of?
                                     _hd23442_
                                     'gx#module-export::t)
                                    (_lp23419_
                                     (cons (##direct-structure-ref
                                            _hd23442_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest23441_))
                                    (if (##structure-direct-instance-of?
                                         _hd23442_
                                         'gx#import-set::t)
                                        (_lp23419_
                                         (cons (##direct-structure-ref
                                                _hd23442_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest23441_))
                                        (error '"Unexpected module import"
                                               _hd23442_)))))))))
            (if (##pair? _rest2342223430_)
                (let ((_hd2342723452_ (##car _rest2342223430_))
                      (_tl2342823454_ (##cdr _rest2342223430_)))
                  (let* ((_hd23457_ _hd2342723452_)
                         (_rest23459_ _tl2342823454_))
                    (_K2342623449_ _rest23459_ _hd23457_)))
                (_else2342423438_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx23395_)
      (if (if (##structure-instance-of? _ctx23395_ 'gx#module-context::t)
              (list? (##structure-ref _ctx23395_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht23397_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id23399_
                  (##structure-ref _ctx23395_ '1 gx#expander-context::t '#f))
                 (_mod23401_ (table-ref _ht23397_ _id23399_ '#f)))
            (let ((_$e23404_ _mod23401_))
              (if _$e23404_
                  _$e23404_
                  (let* ((_mod23407_ (gxc#optimizer-import-ssxi _ctx23395_))
                         (_val23412_
                          (let ((_$e23409_ _mod23407_))
                            (if _$e23409_ _$e23409_ '#!void))))
                    (begin
                      (table-set! _ht23397_ _id23399_ _val23412_)
                      _val23412_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx23372_)
      (letrec ((_catch-e23374_
                (lambda (_exn23393_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx23372_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn23393_))
                        '#!void)
                    '#f)))
               (_import-e23375_
                (lambda ()
                  (let* ((_str-id23378_
                          (string-append
                           (symbol->string
                            (##structure-ref
                             _ctx23372_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path23386_
                          (let ((_odir2337923381_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2337923381_
                                (let ((_odir23384_ _odir2337923381_))
                                  (path-expand
                                   (string-append _str-id23378_ '".ss")
                                   _odir23384_))
                                '#f)))
                         (_library-path23388_
                          (string->symbol
                           (string-append '":" _str-id23378_ '".ss")))
                         (_ssxi-path23390_
                          (if (if _artefact-path23386_
                                  (file-exists? _artefact-path23386_)
                                  '#f)
                              _artefact-path23386_
                              _library-path23388_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path23390_)
                      (gx#import-module__opt-lambda13240
                       _ssxi-path23390_
                       '#t
                       '#t))))))
        (if (##structure-ref _ctx23372_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e23374_ _import-e23375_)
            '#f))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args23369_
      (apply make-struct-instance gxc#!type::t _$args23369_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args23366_
      (apply make-struct-instance gxc#!alias::t _$args23366_)))
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
    (lambda _$args23363_
      (apply make-struct-instance gxc#!struct-type::t _$args23363_)))
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
    (lambda _$args23360_
      (apply make-struct-instance gxc#!procedure::t _$args23360_)))
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
    (lambda _$args23357_
      (apply make-struct-instance gxc#!struct-pred::t _$args23357_)))
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
    (lambda _$args23354_
      (apply make-struct-instance gxc#!struct-cons::t _$args23354_)))
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
    (lambda _$args23351_
      (apply make-struct-instance gxc#!struct-getf::t _$args23351_)))
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
    (lambda _$args23348_
      (apply make-struct-instance gxc#!struct-setf::t _$args23348_)))
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
    (lambda _$args23345_
      (apply make-struct-instance gxc#!lambda::t _$args23345_)))
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
    (lambda _$args23342_
      (apply make-struct-instance gxc#!case-lambda::t _$args23342_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self23334_
             _id23335_
             _super23336_
             _fields23337_
             _xfields23338_
             _ctor23339_
             _plist23340_)
      (if (##fx< '7 (##vector-length _self23334_))
          (begin
            (##vector-set! _self23334_ '1 _id23335_)
            (##vector-set! _self23334_ '2 _super23336_)
            (##vector-set! _self23334_ '3 _fields23337_)
            (##vector-set! _self23334_ '4 _xfields23338_)
            (##vector-set! _self23334_ '5 _ctor23339_)
            (##vector-set! _self23334_ '6 _plist23340_)
            (##vector-set! _self23334_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self23334_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda23176
      (lambda (_self23178_
               _id23179_
               _arity23180_
               _dispatch23181_
               _inline23182_
               _typedecl23183_)
        (if (##fx< '5 (##vector-length _self23178_))
            (begin
              (##vector-set! _self23178_ '1 _id23179_)
              (##vector-set! _self23178_ '2 _arity23180_)
              (##vector-set! _self23178_ '3 _dispatch23181_)
              (##vector-set! _self23178_ '4 _inline23182_)
              (##vector-set! _self23178_ '5 _typedecl23183_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self23178_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self23188_ _id23189_ _arity23190_ _dispatch23191_)
          (let* ((_inline23193_ '#f) (_typedecl23195_ '#f))
            (if (##fx< '5 (##vector-length _self23188_))
                (begin
                  (##vector-set! _self23188_ '1 _id23189_)
                  (##vector-set! _self23188_ '2 _arity23190_)
                  (##vector-set! _self23188_ '3 _dispatch23191_)
                  (##vector-set! _self23188_ '4 _inline23193_)
                  (##vector-set! _self23188_ '5 _typedecl23195_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self23188_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self23197_
                 _id23198_
                 _arity23199_
                 _dispatch23200_
                 _inline23201_)
          (let ((_typedecl23203_ '#f))
            (if (##fx< '5 (##vector-length _self23197_))
                (begin
                  (##vector-set! _self23197_ '1 _id23198_)
                  (##vector-set! _self23197_ '2 _arity23199_)
                  (##vector-set! _self23197_ '3 _dispatch23200_)
                  (##vector-set! _self23197_ '4 _inline23201_)
                  (##vector-set! _self23197_ '5 _typedecl23203_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self23197_)))))
      (define gxc#!lambda:::init!
        (lambda _g23620_
          (let ((_g23619_ (length _g23620_)))
            (cond ((fx= _g23619_ 4) (apply gxc#!lambda:::init!__0 _g23620_))
                  ((fx= _g23619_ 5) (apply gxc#!lambda:::init!__1 _g23620_))
                  ((fx= _g23619_ 6)
                   (apply (lambda (_self23205_
                                   _id23206_
                                   _arity23207_
                                   _dispatch23208_
                                   _inline23209_
                                   _typedecl23210_)
                            (if (##fx< '5 (##vector-length _self23205_))
                                (begin
                                  (##vector-set! _self23205_ '1 _id23206_)
                                  (##vector-set! _self23205_ '2 _arity23207_)
                                  (##vector-set!
                                   _self23205_
                                   '3
                                   _dispatch23208_)
                                  (##vector-set! _self23205_ '4 _inline23209_)
                                  (##vector-set!
                                   _self23205_
                                   '5
                                   _typedecl23210_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self23205_)))
                          _g23620_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g23620_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type23048_)
      (let ((_$e23050_
             (##structure-ref _type23048_ '7 gxc#!struct-type::t '#f)))
        (if _$e23050_
            (values _$e23050_)
            (let ((_vtab23053_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type23048_
                 _vtab23053_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab23053_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type23039_ _method23040_)
      (let ((_vtab2304123043_
             (##structure-ref _type23039_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2304123043_
            (let ((_vtab23046_ _vtab2304123043_))
              (table-ref _vtab23046_ _method23040_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda23021
      (lambda (_sym23023_ _type23024_ _local?23025_)
        (begin
          (if (##structure-instance-of? _type23024_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym23023_
                     _type23024_))
          (gxc#verbose
           '"declare-type "
           _sym23023_
           '" "
           (struct->list _type23024_))
          (table-set!
           (if _local?23025_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym23023_
           _type23024_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym23030_ _type23031_)
          (let ((_local?23033_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda23021
             _sym23030_
             _type23031_
             _local?23033_))))
      (define gxc#optimizer-declare-type!
        (lambda _g23622_
          (let ((_g23621_ (length _g23622_)))
            (cond ((fx= _g23621_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g23622_))
                  ((fx= _g23621_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda23021
                          _g23622_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g23622_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda22997
      (lambda (_type-t22999_ _method23000_ _sym23001_ _rebind?23002_)
        (let ((_type23004_ (gxc#optimizer-resolve-type _type-t22999_)))
          (if (##structure-instance-of? _type23004_ 'gxc#!struct-type::t)
              (let ((_vtab23006_ (gxc#!struct-type-vtab _type23004_)))
                (if _rebind?23002_
                    (if (hash-key? _vtab23006_ _method23000_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t22999_
                         '" "
                         _method23000_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t22999_
                         '" "
                         _method23000_))
                    (if (hash-key? _vtab23006_ _method23000_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t22999_
                           '" "
                           _method23000_
                           '" => "
                           _sym23001_)
                          (table-set! _vtab23006_ _method23000_ _sym23001_)))))
              (if (not _type23004_)
                  (gxc#verbose '"declare-method: unknown type " _type-t22999_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t22999_
                         _type23004_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t23011_ _method23012_ _sym23013_)
          (let ((_rebind?23015_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda22997
             _type-t23011_
             _method23012_
             _sym23013_
             _rebind?23015_))))
      (define gxc#optimizer-declare-method!
        (lambda _g23624_
          (let ((_g23623_ (length _g23624_)))
            (cond ((fx= _g23623_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g23624_))
                  ((fx= _g23623_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda22997
                          _g23624_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g23624_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym22987_)
      (let ((_$e22995_
             (let ((_ht2298822990_ (gxc#current-compile-local-type)))
               (if _ht2298822990_
                   (let ((_ht22993_ _ht2298822990_))
                     (table-ref _ht22993_ _sym22987_ '#f))
                   '#f))))
        (if _$e22995_
            _$e22995_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym22987_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym22979_)
      (let ((_type2298022982_ (gxc#optimizer-lookup-type _sym22979_)))
        (if _type2298022982_
            (let ((_type22985_ _type2298022982_))
              (if (##structure-instance-of? _type22985_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type22985_ '1 gxc#!type::t '#f))
                  _type22985_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t22974_ _method22975_)
      (let ((_type22977_ (gxc#optimizer-resolve-type _type-t22974_)))
        (if (##structure-instance-of? _type22977_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type22977_ _method22975_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx22970_)
      (begin
        (gxc#apply-collect-mutators _stx22970_)
        (let ((_stx22972_ (gxc#apply-lift-top-lambdas _stx22970_)))
          (begin
            (gxc#apply-collect-type-info _stx22972_)
            (gxc#apply-optimize-call _stx22972_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl22967_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl22967_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl22967_ '%#lambda gxc#xform-identity)
           (table-set! _tbl22967_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl22967_ '%#let-values gxc#xform-identity)
           (table-set! _tbl22967_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl22967_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl22967_ '%#quote gxc#xform-identity)
           (table-set! _tbl22967_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl22967_ '%#call gxc#xform-identity)
           (table-set! _tbl22967_ '%#if gxc#xform-identity)
           (table-set! _tbl22967_ '%#ref gxc#xform-identity)
           (table-set! _tbl22967_ '%#set! gxc#xform-identity)
           (table-set! _tbl22967_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl22967_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl22967_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl22967_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl22967_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl22967_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl22967_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl22967_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl22967_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl22963_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl22963_ '%#begin gxc#xform-identity)
           (table-set! _tbl22963_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl22963_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl22963_ '%#module gxc#xform-identity)
           (table-set! _tbl22963_ '%#import gxc#xform-identity)
           (table-set! _tbl22963_ '%#export gxc#xform-identity)
           (table-set! _tbl22963_ '%#provide gxc#xform-identity)
           (table-set! _tbl22963_ '%#extern gxc#xform-identity)
           (table-set! _tbl22963_ '%#define-values gxc#xform-identity)
           (table-set! _tbl22963_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl22963_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl22963_ '%#declare gxc#xform-identity)
           _tbl22963_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl22959_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22959_ (force gxc#&identity-special-form))
           (hash-copy! _tbl22959_ (force gxc#&identity-expression))
           _tbl22959_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl22955_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl22955_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl22955_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl22955_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl22955_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl22955_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl22955_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl22955_ '%#quote gxc#xform-identity)
           (table-set! _tbl22955_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl22955_ '%#call gxc#xform-operands)
           (table-set! _tbl22955_ '%#if gxc#xform-operands)
           (table-set! _tbl22955_ '%#ref gxc#xform-identity)
           (table-set! _tbl22955_ '%#set! gxc#xform-setq%)
           (table-set! _tbl22955_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl22955_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl22955_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl22955_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl22955_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl22955_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl22955_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl22955_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl22955_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl22951_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22951_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl22951_ (force gxc#&identity))
           (table-set! _tbl22951_ '%#begin gxc#xform-begin%)
           (table-set! _tbl22951_ '%#module gxc#xform-module%)
           (table-set! _tbl22951_ '%#define-values gxc#xform-define-values%)
           _tbl22951_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl22947_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22947_ (force gxc#&void))
           (table-set! _tbl22947_ '%#begin gxc#collect-begin%)
           (table-set! _tbl22947_ '%#module gxc#collect-module%)
           (table-set!
            _tbl22947_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl22947_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl22947_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl22947_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl22947_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl22947_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl22947_ '%#call gxc#collect-operands)
           (table-set! _tbl22947_ '%#if gxc#collect-operands)
           (table-set! _tbl22947_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl22947_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl22947_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl22947_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl22947_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl22947_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl22947_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl22947_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl22947_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl22947_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx22940_ . _args22942_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22940_ _args22942_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl22937_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22937_ (force gxc#&basic-xform))
           (table-set!
            _tbl22937_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl22937_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl22937_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl22937_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl22937_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx22930_ . _args22932_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22930_ _args22932_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl22927_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22927_ (force gxc#&basic-xform-expression))
           (table-set! _tbl22927_ '%#begin gxc#xform-begin%)
           (table-set! _tbl22927_ '%#ref gxc#expression-subst-ref%)
           _tbl22927_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx22920_ . _args22922_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22920_ _args22922_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl22917_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22917_ (force gxc#&void))
           (table-set! _tbl22917_ '%#begin gxc#collect-begin%)
           (table-set! _tbl22917_ '%#module gxc#collect-module%)
           (table-set!
            _tbl22917_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl22917_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl22917_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl22917_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl22917_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl22917_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl22917_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl22917_ '%#call gxc#collect-type-call%)
           (table-set! _tbl22917_ '%#if gxc#collect-operands)
           (table-set! _tbl22917_ '%#set! gxc#collect-body-setq%)
           _tbl22917_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx22910_ . _args22912_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22910_ _args22912_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl22907_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22907_ (force gxc#&false))
           (table-set! _tbl22907_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl22907_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl22907_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl22907_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl22907_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl22907_ '%#ref gxc#basic-expression-type-ref%)
           _tbl22907_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx22900_ . _args22902_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22900_ _args22902_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl22897_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22897_ (force gxc#&basic-xform))
           (table-set! _tbl22897_ '%#call gxc#optimize-call%)
           _tbl22897_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx22890_ . _args22892_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22890_ _args22892_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl22887_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl22887_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl22887_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl22887_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl22887_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl22887_ '%#call gxc#generate-ssxi-call%)
           _tbl22887_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx22880_ . _args22882_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx22880_ _args22882_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx22877_ . _args22878_) _stx22877_))
  (define gxc#xform-wrap-source
    (lambda (_stx22874_ _src-stx22875_)
      (gx#stx-wrap-source _stx22874_ (gx#stx-source _src-stx22875_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args22868_)
      (lambda (_g2286922871_)
        (apply gxc#compile-e _g2286922871_ _args22868_))))
  (define gxc#xform-begin%
    (lambda (_stx22827_ . _args22828_)
      (let* ((_g2283022840_
              (lambda (_g2283122837_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2283122837_)))
             (_g2282922865_
              (lambda (_g2283122843_)
                (if (gx#stx-pair? _g2283122843_)
                    (let ((_e2283322845_ (gx#stx-e _g2283122843_)))
                      (let ((_hd2283422848_ (##car _e2283322845_))
                            (_tl2283522850_ (##cdr _e2283322845_)))
                        ((lambda (_L22853_)
                           (let ((_forms22863_
                                  (map (gxc#xform-apply-compile-e _args22828_)
                                       _L22853_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms22863_)
                              _stx22827_)))
                         _tl2283522850_)))
                    (_g2283022840_ _g2283122843_)))))
        (_g2282922865_ _stx22827_))))
  (define gxc#xform-module%
    (lambda (_stx22764_ . _args22765_)
      (let* ((_g2276722781_
              (lambda (_g2276822778_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2276822778_)))
             (_g2276622824_
              (lambda (_g2276822784_)
                (if (gx#stx-pair? _g2276822784_)
                    (let ((_e2277122786_ (gx#stx-e _g2276822784_)))
                      (let ((_hd2277222789_ (##car _e2277122786_))
                            (_tl2277322791_ (##cdr _e2277122786_)))
                        (if (gx#stx-pair? _tl2277322791_)
                            (let ((_e2277422794_ (gx#stx-e _tl2277322791_)))
                              (let ((_hd2277522797_ (##car _e2277422794_))
                                    (_tl2277622799_ (##cdr _e2277422794_)))
                                ((lambda (_L22802_ _L22803_)
                                   (let* ((_ctx22816_
                                           (gx#syntax-local-e__0 _L22803_))
                                          (_code22818_
                                           (##structure-ref
                                            _ctx22816_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code22821_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code22818_
                                                     _args22765_))
                                            gx#current-expander-context
                                            _ctx22816_)))
                                     (begin
                                       (##structure-set!
                                        _ctx22816_
                                        _code22821_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L22803_
                                                    (cons _code22821_ '())))
                                        _stx22764_))))
                                 _tl2277622799_
                                 _hd2277522797_)))
                            (_g2276722781_ _g2276822784_))))
                    (_g2276722781_ _g2276822784_)))))
        (_g2276622824_ _stx22764_))))
  (define gxc#xform-define-values%
    (lambda (_stx22694_ . _args22695_)
      (let* ((_g2269722714_
              (lambda (_g2269822711_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2269822711_)))
             (_g2269622761_
              (lambda (_g2269822717_)
                (if (gx#stx-pair? _g2269822717_)
                    (let ((_e2270122719_ (gx#stx-e _g2269822717_)))
                      (let ((_hd2270222722_ (##car _e2270122719_))
                            (_tl2270322724_ (##cdr _e2270122719_)))
                        (if (gx#stx-pair? _tl2270322724_)
                            (let ((_e2270422727_ (gx#stx-e _tl2270322724_)))
                              (let ((_hd2270522730_ (##car _e2270422727_))
                                    (_tl2270622732_ (##cdr _e2270422727_)))
                                (if (gx#stx-pair? _tl2270622732_)
                                    (let ((_e2270722735_
                                           (gx#stx-e _tl2270622732_)))
                                      (let ((_hd2270822738_
                                             (##car _e2270722735_))
                                            (_tl2270922740_
                                             (##cdr _e2270722735_)))
                                        (if (gx#stx-null? _tl2270922740_)
                                            ((lambda (_L22743_ _L22744_)
                                               (let ((_expr22759_
                                                      (apply gxc#compile-e
                                                             _L22743_
                                                             _args22695_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L22744_
                                                              (cons _expr22759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22694_)))
                                             _hd2270822738_
                                             _hd2270522730_)
                                            (_g2269722714_ _g2269822717_))))
                                    (_g2269722714_ _g2269822717_))))
                            (_g2269722714_ _g2269822717_))))
                    (_g2269722714_ _g2269822717_)))))
        (_g2269622761_ _stx22694_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx22624_ . _args22625_)
      (let* ((_g2262722644_
              (lambda (_g2262822641_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2262822641_)))
             (_g2262622691_
              (lambda (_g2262822647_)
                (if (gx#stx-pair? _g2262822647_)
                    (let ((_e2263122649_ (gx#stx-e _g2262822647_)))
                      (let ((_hd2263222652_ (##car _e2263122649_))
                            (_tl2263322654_ (##cdr _e2263122649_)))
                        (if (gx#stx-pair? _tl2263322654_)
                            (let ((_e2263422657_ (gx#stx-e _tl2263322654_)))
                              (let ((_hd2263522660_ (##car _e2263422657_))
                                    (_tl2263622662_ (##cdr _e2263422657_)))
                                (if (gx#stx-pair? _tl2263622662_)
                                    (let ((_e2263722665_
                                           (gx#stx-e _tl2263622662_)))
                                      (let ((_hd2263822668_
                                             (##car _e2263722665_))
                                            (_tl2263922670_
                                             (##cdr _e2263722665_)))
                                        (if (gx#stx-null? _tl2263922670_)
                                            ((lambda (_L22673_ _L22674_)
                                               (let ((_expr22689_
                                                      (apply gxc#compile-e
                                                             _L22673_
                                                             _args22625_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L22674_
                                                              (cons _expr22689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22624_)))
                                             _hd2263822668_
                                             _hd2263522660_)
                                            (_g2262722644_ _g2262822647_))))
                                    (_g2262722644_ _g2262822647_))))
                            (_g2262722644_ _g2262822647_))))
                    (_g2262722644_ _g2262822647_)))))
        (_g2262622691_ _stx22624_))))
  (define gxc#xform-lambda%
    (lambda (_stx22567_ . _args22568_)
      (let* ((_g2257022584_
              (lambda (_g2257122581_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2257122581_)))
             (_g2256922621_
              (lambda (_g2257122587_)
                (if (gx#stx-pair? _g2257122587_)
                    (let ((_e2257422589_ (gx#stx-e _g2257122587_)))
                      (let ((_hd2257522592_ (##car _e2257422589_))
                            (_tl2257622594_ (##cdr _e2257422589_)))
                        (if (gx#stx-pair? _tl2257622594_)
                            (let ((_e2257722597_ (gx#stx-e _tl2257622594_)))
                              (let ((_hd2257822600_ (##car _e2257722597_))
                                    (_tl2257922602_ (##cdr _e2257722597_)))
                                ((lambda (_L22605_ _L22606_)
                                   (let ((_body22619_
                                          (map (gxc#xform-apply-compile-e
                                                _args22568_)
                                               _L22605_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L22606_ _body22619_))
                                      _stx22567_)))
                                 _tl2257922602_
                                 _hd2257822600_)))
                            (_g2257022584_ _g2257122587_))))
                    (_g2257022584_ _g2257122587_)))))
        (_g2256922621_ _stx22567_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx22480_ . _args22481_)
      (letrec ((_clause-e22483_
                (lambda (_clause22524_)
                  (let* ((_g2252622537_
                          (lambda (_g2252722534_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2252722534_)))
                         (_g2252522564_
                          (lambda (_g2252722540_)
                            (if (gx#stx-pair? _g2252722540_)
                                (let ((_e2253022542_ (gx#stx-e _g2252722540_)))
                                  (let ((_hd2253122545_ (##car _e2253022542_))
                                        (_tl2253222547_ (##cdr _e2253022542_)))
                                    ((lambda (_L22550_ _L22551_)
                                       (let ((_body22562_
                                              (map (gxc#xform-apply-compile-e
                                                    _args22481_)
                                                   _L22550_)))
                                         (cons _L22551_ _body22562_)))
                                     _tl2253222547_
                                     _hd2253122545_)))
                                (_g2252622537_ _g2252722540_)))))
                    (_g2252522564_ _clause22524_)))))
        (let* ((_g2248522495_
                (lambda (_g2248622492_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2248622492_)))
               (_g2248422521_
                (lambda (_g2248622498_)
                  (if (gx#stx-pair? _g2248622498_)
                      (let ((_e2248822500_ (gx#stx-e _g2248622498_)))
                        (let ((_hd2248922503_ (##car _e2248822500_))
                              (_tl2249022505_ (##cdr _e2248822500_)))
                          ((lambda (_L22508_)
                             (let ((_clauses22519_
                                    (map _clause-e22483_ _L22508_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses22519_)
                                _stx22480_)))
                           _tl2249022505_)))
                      (_g2248522495_ _g2248622498_)))))
          (_g2248422521_ _stx22480_)))))
  (define gxc#xform-let-values%
    (lambda (_stx22274_ . _args22275_)
      (let* ((_g2227722310_
              (lambda (_g2227822307_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2227822307_)))
             (_g2227622477_
              (lambda (_g2227822313_)
                (if (gx#stx-pair? _g2227822313_)
                    (let ((_e2228322315_ (gx#stx-e _g2227822313_)))
                      (let ((_hd2228422318_ (##car _e2228322315_))
                            (_tl2228522320_ (##cdr _e2228322315_)))
                        (if (gx#stx-pair? _tl2228522320_)
                            (let ((_e2228622323_ (gx#stx-e _tl2228522320_)))
                              (let ((_hd2228722326_ (##car _e2228622323_))
                                    (_tl2228822328_ (##cdr _e2228622323_)))
                                (if (gx#stx-pair/null? _hd2228722326_)
                                    (if (fx>= (gx#stx-length _hd2228722326_)
                                              '0)
                                        (let ((_g23625_
                                               (gx#syntax-split-splice
                                                _hd2228722326_
                                                '0)))
                                          (begin
                                            (let ((_g23626_
                                                   (values-count _g23625_)))
                                              (if (not (fx= _g23626_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23626_)))
                                            (let ((_target2228922331_
                                                   (values-ref _g23625_ 0))
                                                  (_tl2229122333_
                                                   (values-ref _g23625_ 1)))
                                              (if (gx#stx-null? _tl2229122333_)
                                                  (letrec ((_loop2229222336_
                                                            (lambda (_hd2229022339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2229622341_
                             _hd2229722343_)
                      (if (gx#stx-pair? _hd2229022339_)
                          (let ((_e2229322346_ (gx#stx-e _hd2229022339_)))
                            (let ((_lp-hd2229422349_ (##car _e2229322346_))
                                  (_lp-tl2229522351_ (##cdr _e2229322346_)))
                              (if (gx#stx-pair? _lp-hd2229422349_)
                                  (let ((_e2230022354_
                                         (gx#stx-e _lp-hd2229422349_)))
                                    (let ((_hd2230122357_
                                           (##car _e2230022354_))
                                          (_tl2230222359_
                                           (##cdr _e2230022354_)))
                                      (if (gx#stx-pair? _tl2230222359_)
                                          (let ((_e2230322362_
                                                 (gx#stx-e _tl2230222359_)))
                                            (let ((_hd2230422365_
                                                   (##car _e2230322362_))
                                                  (_tl2230522367_
                                                   (##cdr _e2230322362_)))
                                              (if (gx#stx-null? _tl2230522367_)
                                                  (_loop2229222336_
                                                   _lp-tl2229522351_
                                                   (cons _hd2230422365_
                                                         _expr2229622341_)
                                                   (cons _hd2230122357_
                                                         _hd2229722343_))
                                                  (_g2227722310_
                                                   _g2227822313_))))
                                          (_g2227722310_ _g2227822313_))))
                                  (_g2227722310_ _g2227822313_))))
                          (let ((_expr2229822370_ (reverse _expr2229622341_))
                                (_hd2229922372_ (reverse _hd2229722343_)))
                            ((lambda (_L22375_ _L22376_ _L22377_ _L22378_)
                               (let* ((_g2239722413_
                                       (lambda (_g2239822410_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2239822410_)))
                                      (_g2239622467_
                                       (lambda (_g2239822416_)
                                         (if (gx#stx-pair/null? _g2239822416_)
                                             (if (fx>= (gx#stx-length
                                                        _g2239822416_)
                                                       '0)
                                                 (let ((_g23627_
                                                        (gx#syntax-split-splice
                                                         _g2239822416_
                                                         '0)))
                                                   (begin
                                                     (let ((_g23628_
                                                            (values-count
                                                             _g23627_)))
                                                       (if (not (fx= _g23628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g23628_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2240022418_
                                                            (values-ref
                                                             _g23627_
                                                             0))
                                                           (_tl2240222420_
                                                            (values-ref
                                                             _g23627_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2240222420_)
                                                           (letrec ((_loop2240322423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2240122426_ _expr2240722428_)
                               (if (gx#stx-pair? _hd2240122426_)
                                   (let ((_e2240422431_
                                          (gx#syntax-e _hd2240122426_)))
                                     (let ((_lp-hd2240522434_
                                            (##car _e2240422431_))
                                           (_lp-tl2240622436_
                                            (##cdr _e2240422431_)))
                                       (_loop2240322423_
                                        _lp-tl2240622436_
                                        (cons _lp-hd2240522434_
                                              _expr2240722428_))))
                                   (let ((_expr2240822439_
                                          (reverse _expr2240722428_)))
                                     ((lambda (_L22442_)
                                        (let ()
                                          (let ((_body22455_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args22275_)
                                                      _L22375_)))
                                            (gxc#xform-wrap-source
                                             (cons _L22378_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L22442_
                                                            _L22377_)
                                                           (foldr (lambda (_g2245622460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2245722462_
                                   _g2245822464_)
                            (cons (cons _g2245722462_ (cons _g2245622460_ '()))
                                  _g2245822464_))
                          '()
                          _L22442_
                          _L22377_))
                 _body22455_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx22274_))))
                                      _expr2240822439_))))))
                     (_loop2240322423_ _target2240022418_ '()))
                   (_g2239722413_ _g2239822416_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2239722413_ _g2239822416_))
                                             (_g2239722413_ _g2239822416_)))))
                                 (_g2239622467_
                                  (map (gxc#xform-apply-compile-e _args22275_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2246922472_
                                                          _g2247022474_)
                                                   (cons _g2246922472_
                                                         _g2247022474_))
                                                 '()
                                                 _L22376_))))))
                             _tl2228822328_
                             _expr2229822370_
                             _hd2229922372_
                             _hd2228422318_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2229222336_
                                                     _target2228922331_
                                                     '()
                                                     '()))
                                                  (_g2227722310_
                                                   _g2227822313_)))))
                                        (_g2227722310_ _g2227822313_))
                                    (_g2227722310_ _g2227822313_))))
                            (_g2227722310_ _g2227822313_))))
                    (_g2227722310_ _g2227822313_)))))
        (_g2227622477_ _stx22274_))))
  (define gxc#xform-operands
    (lambda (_stx22230_ . _args22231_)
      (let* ((_g2223322244_
              (lambda (_g2223422241_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2223422241_)))
             (_g2223222271_
              (lambda (_g2223422247_)
                (if (gx#stx-pair? _g2223422247_)
                    (let ((_e2223722249_ (gx#stx-e _g2223422247_)))
                      (let ((_hd2223822252_ (##car _e2223722249_))
                            (_tl2223922254_ (##cdr _e2223722249_)))
                        ((lambda (_L22257_ _L22258_)
                           (let ((_rands22269_
                                  (map (gxc#xform-apply-compile-e _args22231_)
                                       _L22257_)))
                             (gxc#xform-wrap-source
                              (cons _L22258_ _rands22269_)
                              _stx22230_)))
                         _tl2223922254_
                         _hd2223822252_)))
                    (_g2223322244_ _g2223422247_)))))
        (_g2223222271_ _stx22230_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx22160_ . _args22161_)
      (let* ((_g2216322180_
              (lambda (_g2216422177_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2216422177_)))
             (_g2216222227_
              (lambda (_g2216422183_)
                (if (gx#stx-pair? _g2216422183_)
                    (let ((_e2216722185_ (gx#stx-e _g2216422183_)))
                      (let ((_hd2216822188_ (##car _e2216722185_))
                            (_tl2216922190_ (##cdr _e2216722185_)))
                        (if (gx#stx-pair? _tl2216922190_)
                            (let ((_e2217022193_ (gx#stx-e _tl2216922190_)))
                              (let ((_hd2217122196_ (##car _e2217022193_))
                                    (_tl2217222198_ (##cdr _e2217022193_)))
                                (if (gx#stx-pair? _tl2217222198_)
                                    (let ((_e2217322201_
                                           (gx#stx-e _tl2217222198_)))
                                      (let ((_hd2217422204_
                                             (##car _e2217322201_))
                                            (_tl2217522206_
                                             (##cdr _e2217322201_)))
                                        (if (gx#stx-null? _tl2217522206_)
                                            ((lambda (_L22209_ _L22210_)
                                               (let ((_expr22225_
                                                      (apply gxc#compile-e
                                                             _L22209_
                                                             _args22161_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L22210_
                                                              (cons _expr22225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22160_)))
                                             _hd2217422204_
                                             _hd2217122196_)
                                            (_g2216322180_ _g2216422183_))))
                                    (_g2216322180_ _g2216422183_))))
                            (_g2216322180_ _g2216422183_))))
                    (_g2216322180_ _g2216422183_)))))
        (_g2216222227_ _stx22160_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx22091_)
      (let* ((_g2209322110_
              (lambda (_g2209422107_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2209422107_)))
             (_g2209222157_
              (lambda (_g2209422113_)
                (if (gx#stx-pair? _g2209422113_)
                    (let ((_e2209722115_ (gx#stx-e _g2209422113_)))
                      (let ((_hd2209822118_ (##car _e2209722115_))
                            (_tl2209922120_ (##cdr _e2209722115_)))
                        (if (gx#stx-pair? _tl2209922120_)
                            (let ((_e2210022123_ (gx#stx-e _tl2209922120_)))
                              (let ((_hd2210122126_ (##car _e2210022123_))
                                    (_tl2210222128_ (##cdr _e2210022123_)))
                                (if (gx#stx-pair? _tl2210222128_)
                                    (let ((_e2210322131_
                                           (gx#stx-e _tl2210222128_)))
                                      (let ((_hd2210422134_
                                             (##car _e2210322131_))
                                            (_tl2210522136_
                                             (##cdr _e2210322131_)))
                                        (if (gx#stx-null? _tl2210522136_)
                                            ((lambda (_L22139_ _L22140_)
                                               (let ((_sym22155_
                                                      (gxc#generate-runtime-binding-id
                                                       _L22140_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym22155_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym22155_
                                                    '#t)
                                                   (gxc#compile-e _L22139_))))
                                             _hd2210422134_
                                             _hd2210122126_)
                                            (_g2209322110_ _g2209422113_))))
                                    (_g2209322110_ _g2209422113_))))
                            (_g2209322110_ _g2209422113_))))
                    (_g2209322110_ _g2209422113_)))))
        (_g2209222157_ _stx22091_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form21325_)
      (let* ((_g2133021487_
              (lambda (_g2133121484_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2133121484_)))
             (_g2132921494_ (lambda (_g2133121490_) ((lambda () '#f))))
             (_g2132821634_
              (lambda (_g2133121497_)
                (if (gx#stx-pair? _g2133121497_)
                    (let ((_e2144721499_ (gx#stx-e _g2133121497_)))
                      (let ((_hd2144821502_ (##car _e2144721499_))
                            (_tl2144921504_ (##cdr _e2144721499_)))
                        (if (gx#stx-pair? _tl2144921504_)
                            (let ((_e2145021507_ (gx#stx-e _tl2144921504_)))
                              (let ((_hd2145121510_ (##car _e2145021507_))
                                    (_tl2145221512_ (##cdr _e2145021507_)))
                                (if (gx#stx-pair? _hd2145121510_)
                                    (let ((_e2145321515_
                                           (gx#stx-e _hd2145121510_)))
                                      (let ((_hd2145421518_
                                             (##car _e2145321515_))
                                            (_tl2145521520_
                                             (##cdr _e2145321515_)))
                                        (if (gx#identifier? _hd2145421518_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2145421518_)
                                                (if (gx#stx-pair?
                                                     _tl2145521520_)
                                                    (let ((_e2145621523_
                                                           (gx#stx-e
                                                            _tl2145521520_)))
                                                      (let ((_hd2145721526_
                                                             (##car _e2145621523_))
                                                            (_tl2145821528_
                                                             (##cdr _e2145621523_)))
                                                        (if (gx#stx-pair?
                                                             _hd2145721526_)
                                                            (let ((_e2145921531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2145721526_)))
                      (let ((_hd2146021534_ (##car _e2145921531_))
                            (_tl2146121536_ (##cdr _e2145921531_)))
                        (if (gx#identifier? _hd2146021534_)
                            (if (gx#stx-eq? '%#ref _hd2146021534_)
                                (if (gx#stx-pair? _tl2146121536_)
                                    (let ((_e2146221539_
                                           (gx#stx-e _tl2146121536_)))
                                      (let ((_hd2146321542_
                                             (##car _e2146221539_))
                                            (_tl2146421544_
                                             (##cdr _e2146221539_)))
                                        (if (gx#stx-null? _tl2146421544_)
                                            (if (gx#stx-pair? _tl2145821528_)
                                                (let ((_e2146521547_
                                                       (gx#stx-e
                                                        _tl2145821528_)))
                                                  (let ((_hd2146621550_
                                                         (##car _e2146521547_))
                                                        (_tl2146721552_
                                                         (##cdr _e2146521547_)))
                                                    (if (gx#stx-pair?
                                                         _hd2146621550_)
                                                        (let ((_e2146821555_
                                                               (gx#stx-e
                                                                _hd2146621550_)))
                                                          (let ((_hd2146921558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2146821555_))
                        (_tl2147021560_ (##cdr _e2146821555_)))
                    (if (gx#identifier? _hd2146921558_)
                        (if (gx#stx-eq? '%#ref _hd2146921558_)
                            (if (gx#stx-pair? _tl2147021560_)
                                (let ((_e2147121563_
                                       (gx#stx-e _tl2147021560_)))
                                  (let ((_hd2147221566_ (##car _e2147121563_))
                                        (_tl2147321568_ (##cdr _e2147121563_)))
                                    (if (gx#stx-null? _tl2147321568_)
                                        (if (gx#stx-pair? _tl2146721552_)
                                            (let ((_e2147421571_
                                                   (gx#stx-e _tl2146721552_)))
                                              (let ((_hd2147521574_
                                                     (##car _e2147421571_))
                                                    (_tl2147621576_
                                                     (##cdr _e2147421571_)))
                                                (if (gx#stx-pair?
                                                     _hd2147521574_)
                                                    (let ((_e2147721579_
                                                           (gx#stx-e
                                                            _hd2147521574_)))
                                                      (let ((_hd2147821582_
                                                             (##car _e2147721579_))
                                                            (_tl2147921584_
                                                             (##cdr _e2147721579_)))
                                                        (if (gx#identifier?
                                                             _hd2147821582_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2147821582_)
                        (if (gx#stx-pair? _tl2147921584_)
                            (let ((_e2148021587_ (gx#stx-e _tl2147921584_)))
                              (let ((_hd2148121590_ (##car _e2148021587_))
                                    (_tl2148221592_ (##cdr _e2148021587_)))
                                (if (gx#stx-null? _tl2148221592_)
                                    (if (gx#stx-null? _tl2147621576_)
                                        (if (gx#stx-null? _tl2145221512_)
                                            ((lambda (_L21595_
                                                      _L21596_
                                                      _L21597_
                                                      _L21598_)
                                               (if (if (gx#identifier?
                                                        _L21598_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21597_)
                        'apply)
                   (if (gx#free-identifier=? _L21598_ _L21595_)
                       (not (gx#free-identifier=? _L21596_ _L21598_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g2132921494_
                                                    _g2133121497_)))
                                             _hd2148121590_
                                             _hd2147221566_
                                             _hd2146321542_
                                             _hd2144821502_)
                                            (_g2132921494_ _g2133121497_))
                                        (_g2132921494_ _g2133121497_))
                                    (_g2132921494_ _g2133121497_))))
                            (_g2132921494_ _g2133121497_))
                        (_g2132921494_ _g2133121497_))
                    (_g2132921494_ _g2133121497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2132921494_
                                                     _g2133121497_))))
                                            (_g2132921494_ _g2133121497_))
                                        (_g2132921494_ _g2133121497_))))
                                (_g2132921494_ _g2133121497_))
                            (_g2132921494_ _g2133121497_))
                        (_g2132921494_ _g2133121497_))))
                (_g2132921494_ _g2133121497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2132921494_ _g2133121497_))
                                            (_g2132921494_ _g2133121497_))))
                                    (_g2132921494_ _g2133121497_))
                                (_g2132921494_ _g2133121497_))
                            (_g2132921494_ _g2133121497_))))
                    (_g2132921494_ _g2133121497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2132921494_
                                                     _g2133121497_))
                                                (_g2132921494_ _g2133121497_))
                                            (_g2132921494_ _g2133121497_))))
                                    (_g2132921494_ _g2133121497_))))
                            (_g2132921494_ _g2133121497_))))
                    (_g2132921494_ _g2133121497_))))
             (_g2132721894_
              (lambda (_g2133121637_)
                (if (gx#stx-pair? _g2133121637_)
                    (let ((_e2138321639_ (gx#stx-e _g2133121637_)))
                      (let ((_hd2138421642_ (##car _e2138321639_))
                            (_tl2138521644_ (##cdr _e2138321639_)))
                        (if (gx#stx-pair/null? _hd2138421642_)
                            (if (fx>= (gx#stx-length _hd2138421642_) '0)
                                (let ((_g23629_
                                       (gx#syntax-split-splice
                                        _hd2138421642_
                                        '0)))
                                  (begin
                                    (let ((_g23630_ (values-count _g23629_)))
                                      (if (not (fx= _g23630_ 2))
                                          (error "Context expects 2 values"
                                                 _g23630_)))
                                    (let ((_target2138621647_
                                           (values-ref _g23629_ 0))
                                          (_tl2138821649_
                                           (values-ref _g23629_ 1)))
                                      (letrec ((_loop2138921652_
                                                (lambda (_hd2138721655_
                                                         _arg2139321657_)
                                                  (if (gx#stx-pair?
                                                       _hd2138721655_)
                                                      (let ((_e2139021660_
                                                             (gx#stx-e
                                                              _hd2138721655_)))
                                                        (let ((_lp-hd2139121663_
                                                               (##car _e2139021660_))
                                                              (_lp-tl2139221665_
                                                               (##cdr _e2139021660_)))
                                                          (_loop2138921652_
                                                           _lp-tl2139221665_
                                                           (cons _lp-hd2139121663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2139321657_))))
              (let ((_arg2139421668_ (reverse _arg2139321657_)))
                (if (gx#stx-pair? _tl2138521644_)
                    (let ((_e2139521671_ (gx#stx-e _tl2138521644_)))
                      (let ((_hd2139621674_ (##car _e2139521671_))
                            (_tl2139721676_ (##cdr _e2139521671_)))
                        (if (gx#stx-pair? _hd2139621674_)
                            (let ((_e2139821679_ (gx#stx-e _hd2139621674_)))
                              (let ((_hd2139921682_ (##car _e2139821679_))
                                    (_tl2140021684_ (##cdr _e2139821679_)))
                                (if (gx#identifier? _hd2139921682_)
                                    (if (gx#stx-eq? '%#call _hd2139921682_)
                                        (if (gx#stx-pair? _tl2140021684_)
                                            (let ((_e2140121687_
                                                   (gx#stx-e _tl2140021684_)))
                                              (let ((_hd2140221690_
                                                     (##car _e2140121687_))
                                                    (_tl2140321692_
                                                     (##cdr _e2140121687_)))
                                                (if (gx#stx-pair?
                                                     _hd2140221690_)
                                                    (let ((_e2140421695_
                                                           (gx#stx-e
                                                            _hd2140221690_)))
                                                      (let ((_hd2140521698_
                                                             (##car _e2140421695_))
                                                            (_tl2140621700_
                                                             (##cdr _e2140421695_)))
                                                        (if (gx#identifier?
                                                             _hd2140521698_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2140521698_)
                        (if (gx#stx-pair? _tl2140621700_)
                            (let ((_e2140721703_ (gx#stx-e _tl2140621700_)))
                              (let ((_hd2140821706_ (##car _e2140721703_))
                                    (_tl2140921708_ (##cdr _e2140721703_)))
                                (if (gx#stx-null? _tl2140921708_)
                                    (if (gx#stx-pair? _tl2140321692_)
                                        (let ((_e2141021711_
                                               (gx#stx-e _tl2140321692_)))
                                          (let ((_hd2141121714_
                                                 (##car _e2141021711_))
                                                (_tl2141221716_
                                                 (##cdr _e2141021711_)))
                                            (if (gx#stx-pair? _hd2141121714_)
                                                (let ((_e2141321719_
                                                       (gx#stx-e
                                                        _hd2141121714_)))
                                                  (let ((_hd2141421722_
                                                         (##car _e2141321719_))
                                                        (_tl2141521724_
                                                         (##cdr _e2141321719_)))
                                                    (if (gx#identifier?
                                                         _hd2141421722_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2141421722_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2141521724_)
                        (let ((_e2141621727_ (gx#stx-e _tl2141521724_)))
                          (let ((_hd2141721730_ (##car _e2141621727_))
                                (_tl2141821732_ (##cdr _e2141621727_)))
                            (if (gx#stx-null? _tl2141821732_)
                                (if (gx#stx-pair/null? _tl2141221716_)
                                    (if (fx>= (gx#stx-length _tl2141221716_)
                                              '1)
                                        (let ((_g23631_
                                               (gx#syntax-split-splice
                                                _tl2141221716_
                                                '1)))
                                          (begin
                                            (let ((_g23632_
                                                   (values-count _g23631_)))
                                              (if (not (fx= _g23632_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23632_)))
                                            (let ((_target2141921735_
                                                   (values-ref _g23631_ 0))
                                                  (_tl2142121737_
                                                   (values-ref _g23631_ 1)))
                                              (if (gx#stx-pair? _tl2142121737_)
                                                  (let ((_e2142821740_
                                                         (gx#stx-e
                                                          _tl2142121737_)))
                                                    (let ((_hd2142921743_
                                                           (##car _e2142821740_))
                                                          (_tl2143021745_
                                                           (##cdr _e2142821740_)))
                                                      (if (gx#stx-pair?
                                                           _hd2142921743_)
                                                          (let ((_e2143121748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2142921743_)))
                    (let ((_hd2143221751_ (##car _e2143121748_))
                          (_tl2143321753_ (##cdr _e2143121748_)))
                      (if (gx#identifier? _hd2143221751_)
                          (if (gx#stx-eq? '%#ref _hd2143221751_)
                              (if (gx#stx-pair? _tl2143321753_)
                                  (let ((_e2143421756_
                                         (gx#stx-e _tl2143321753_)))
                                    (let ((_hd2143521759_
                                           (##car _e2143421756_))
                                          (_tl2143621761_
                                           (##cdr _e2143421756_)))
                                      (if (gx#stx-null? _tl2143621761_)
                                          (if (gx#stx-null? _tl2143021745_)
                                              (letrec ((_loop2142221764_
                                                        (lambda (_hd2142021767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg2142621769_)
                  (if (gx#stx-pair? _hd2142021767_)
                      (let ((_e2142321772_ (gx#stx-e _hd2142021767_)))
                        (let ((_lp-hd2142421775_ (##car _e2142321772_))
                              (_lp-tl2142521777_ (##cdr _e2142321772_)))
                          (if (gx#stx-pair? _lp-hd2142421775_)
                              (let ((_e2143721780_
                                     (gx#stx-e _lp-hd2142421775_)))
                                (let ((_hd2143821783_ (##car _e2143721780_))
                                      (_tl2143921785_ (##cdr _e2143721780_)))
                                  (if (gx#identifier? _hd2143821783_)
                                      (if (gx#stx-eq? '%#ref _hd2143821783_)
                                          (if (gx#stx-pair? _tl2143921785_)
                                              (let ((_e2144021788_
                                                     (gx#stx-e
                                                      _tl2143921785_)))
                                                (let ((_hd2144121791_
                                                       (##car _e2144021788_))
                                                      (_tl2144221793_
                                                       (##cdr _e2144021788_)))
                                                  (if (gx#stx-null?
                                                       _tl2144221793_)
                                                      (_loop2142221764_
                                                       _lp-tl2142521777_
                                                       (cons _hd2144121791_
                                                             _xarg2142621769_))
                                                      (_g2132821634_
                                                       _g2133121637_))))
                                              (_g2132821634_ _g2133121637_))
                                          (_g2132821634_ _g2133121637_))
                                      (_g2132821634_ _g2133121637_))))
                              (_g2132821634_ _g2133121637_))))
                      (let ((_xarg2142721796_ (reverse _xarg2142621769_)))
                        (if (gx#stx-null? _tl2139721676_)
                            ((lambda (_L21799_
                                      _L21800_
                                      _L21801_
                                      _L21802_
                                      _L21803_
                                      _L21804_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g2184721850_
                                                           _g2184821852_)
                                                    (cons _g2184721850_
                                                          _g2184821852_))
                                                  '()
                                                  _L21804_)))
                                       (if (gx#identifier? _L21803_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L21802_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2185421857_ _g2185521859_)
                                    (cons _g2185421857_ _g2185521859_))
                                  '()
                                  _L21804_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g2186121864_ _g2186221866_)
                                    (cons _g2186121864_ _g2186221866_))
                                  '()
                                  _L21800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap gx#free-identifier=?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g2186821871_ _g2186921873_)
                                   (cons _g2186821871_ _g2186921873_))
                                 '()
                                 _L21804_))
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2187521878_ _g2187621880_)
                                   (cons _g2187521878_ _g2187621880_))
                                 '()
                                 _L21800_)))
               (if (gx#free-identifier=? _L21803_ _L21799_)
                   (not (find (lambda (_g2188221884_)
                                (gx#free-identifier=? _g2188221884_ _L21801_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2188621889_ _g2188721891_)
                                          (cons _g2188621889_ _g2188721891_))
                                        (cons _L21803_ '())
                                        _L21804_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g2132821634_ _g2133121637_)))
                             _hd2143521759_
                             _xarg2142721796_
                             _hd2141721730_
                             _hd2140821706_
                             _tl2138821649_
                             _arg2139421668_)
                            (_g2132821634_ _g2133121637_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2142221764_
                                                 _target2141921735_
                                                 '()))
                                              (_g2132821634_ _g2133121637_))
                                          (_g2132821634_ _g2133121637_))))
                                  (_g2132821634_ _g2133121637_))
                              (_g2132821634_ _g2133121637_))
                          (_g2132821634_ _g2133121637_))))
                  (_g2132821634_ _g2133121637_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2132821634_
                                                   _g2133121637_)))))
                                        (_g2132821634_ _g2133121637_))
                                    (_g2132821634_ _g2133121637_))
                                (_g2132821634_ _g2133121637_))))
                        (_g2132821634_ _g2133121637_))
                    (_g2132821634_ _g2133121637_))
                (_g2132821634_ _g2133121637_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2132821634_
                                                 _g2133121637_))))
                                        (_g2132821634_ _g2133121637_))
                                    (_g2132821634_ _g2133121637_))))
                            (_g2132821634_ _g2133121637_))
                        (_g2132821634_ _g2133121637_))
                    (_g2132821634_ _g2133121637_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2132821634_
                                                     _g2133121637_))))
                                            (_g2132821634_ _g2133121637_))
                                        (_g2132821634_ _g2133121637_))
                                    (_g2132821634_ _g2133121637_))))
                            (_g2132821634_ _g2133121637_))))
                    (_g2132821634_ _g2133121637_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2138921652_
                                         _target2138621647_
                                         '())))))
                                (_g2132821634_ _g2133121637_))
                            (_g2132821634_ _g2133121637_))))
                    (_g2132821634_ _g2133121637_))))
             (_g2132622088_
              (lambda (_g2133121897_)
                (if (gx#stx-pair? _g2133121897_)
                    (let ((_e2133521899_ (gx#stx-e _g2133121897_)))
                      (let ((_hd2133621902_ (##car _e2133521899_))
                            (_tl2133721904_ (##cdr _e2133521899_)))
                        (if (gx#stx-pair/null? _hd2133621902_)
                            (if (fx>= (gx#stx-length _hd2133621902_) '0)
                                (let ((_g23633_
                                       (gx#syntax-split-splice
                                        _hd2133621902_
                                        '0)))
                                  (begin
                                    (let ((_g23634_ (values-count _g23633_)))
                                      (if (not (fx= _g23634_ 2))
                                          (error "Context expects 2 values"
                                                 _g23634_)))
                                    (let ((_target2133821907_
                                           (values-ref _g23633_ 0))
                                          (_tl2134021909_
                                           (values-ref _g23633_ 1)))
                                      (if (gx#stx-null? _tl2134021909_)
                                          (letrec ((_loop2134121912_
                                                    (lambda (_hd2133921915_
                                                             _arg2134521917_)
                                                      (if (gx#stx-pair?
                                                           _hd2133921915_)
                                                          (let ((_e2134221920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2133921915_)))
                    (let ((_lp-hd2134321923_ (##car _e2134221920_))
                          (_lp-tl2134421925_ (##cdr _e2134221920_)))
                      (_loop2134121912_
                       _lp-tl2134421925_
                       (cons _lp-hd2134321923_ _arg2134521917_))))
                  (let ((_arg2134621928_ (reverse _arg2134521917_)))
                    (if (gx#stx-pair? _tl2133721904_)
                        (let ((_e2134721931_ (gx#stx-e _tl2133721904_)))
                          (let ((_hd2134821934_ (##car _e2134721931_))
                                (_tl2134921936_ (##cdr _e2134721931_)))
                            (if (gx#stx-pair? _hd2134821934_)
                                (let ((_e2135021939_
                                       (gx#stx-e _hd2134821934_)))
                                  (let ((_hd2135121942_ (##car _e2135021939_))
                                        (_tl2135221944_ (##cdr _e2135021939_)))
                                    (if (gx#identifier? _hd2135121942_)
                                        (if (gx#stx-eq? '%#call _hd2135121942_)
                                            (if (gx#stx-pair? _tl2135221944_)
                                                (let ((_e2135321947_
                                                       (gx#stx-e
                                                        _tl2135221944_)))
                                                  (let ((_hd2135421950_
                                                         (##car _e2135321947_))
                                                        (_tl2135521952_
                                                         (##cdr _e2135321947_)))
                                                    (if (gx#stx-pair?
                                                         _hd2135421950_)
                                                        (let ((_e2135621955_
                                                               (gx#stx-e
                                                                _hd2135421950_)))
                                                          (let ((_hd2135721958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2135621955_))
                        (_tl2135821960_ (##cdr _e2135621955_)))
                    (if (gx#identifier? _hd2135721958_)
                        (if (gx#stx-eq? '%#ref _hd2135721958_)
                            (if (gx#stx-pair? _tl2135821960_)
                                (let ((_e2135921963_
                                       (gx#stx-e _tl2135821960_)))
                                  (let ((_hd2136021966_ (##car _e2135921963_))
                                        (_tl2136121968_ (##cdr _e2135921963_)))
                                    (if (gx#stx-null? _tl2136121968_)
                                        (if (gx#stx-pair/null? _tl2135521952_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2135521952_)
                                                      '0)
                                                (let ((_g23635_
                                                       (gx#syntax-split-splice
                                                        _tl2135521952_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23636_
                                                           (values-count
                                                            _g23635_)))
                                                      (if (not (fx= _g23636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g23636_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2136221971_
                                                           (values-ref
                                                            _g23635_
                                                            0))
                                                          (_tl2136421973_
                                                           (values-ref
                                                            _g23635_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2136421973_)
                                                          (letrec ((_loop2136521976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2136321979_ _xarg2136921981_)
                              (if (gx#stx-pair? _hd2136321979_)
                                  (let ((_e2136621984_
                                         (gx#stx-e _hd2136321979_)))
                                    (let ((_lp-hd2136721987_
                                           (##car _e2136621984_))
                                          (_lp-tl2136821989_
                                           (##cdr _e2136621984_)))
                                      (if (gx#stx-pair? _lp-hd2136721987_)
                                          (let ((_e2137121992_
                                                 (gx#stx-e _lp-hd2136721987_)))
                                            (let ((_hd2137221995_
                                                   (##car _e2137121992_))
                                                  (_tl2137321997_
                                                   (##cdr _e2137121992_)))
                                              (if (gx#identifier?
                                                   _hd2137221995_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2137221995_)
                                                      (if (gx#stx-pair?
                                                           _tl2137321997_)
                                                          (let ((_e2137422000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2137321997_)))
                    (let ((_hd2137522003_ (##car _e2137422000_))
                          (_tl2137622005_ (##cdr _e2137422000_)))
                      (if (gx#stx-null? _tl2137622005_)
                          (_loop2136521976_
                           _lp-tl2136821989_
                           (cons _hd2137522003_ _xarg2136921981_))
                          (_g2132721894_ _g2133121897_))))
                  (_g2132721894_ _g2133121897_))
              (_g2132721894_ _g2133121897_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2132721894_
                                                   _g2133121897_))))
                                          (_g2132721894_ _g2133121897_))))
                                  (let ((_xarg2137022008_
                                         (reverse _xarg2136921981_)))
                                    (if (gx#stx-null? _tl2134921936_)
                                        ((lambda (_L22011_ _L22012_ _L22013_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2204122044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2204222046_)
                        (cons _g2204122044_ _g2204222046_))
                      '()
                      _L22013_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2204822051_ _g2204922053_)
                                        (cons _g2204822051_ _g2204922053_))
                                      '()
                                      _L22013_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2205522058_ _g2205622060_)
                                        (cons _g2205522058_ _g2205622060_))
                                      '()
                                      _L22011_))))
               (if (andmap gx#free-identifier=?
                           (begin
                             '#!void
                             (foldr1 (lambda (_g2206222065_ _g2206322067_)
                                       (cons _g2206222065_ _g2206322067_))
                                     '()
                                     _L22013_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g2206922072_ _g2207022074_)
                                       (cons _g2206922072_ _g2207022074_))
                                     '()
                                     _L22011_)))
                   (not (find (lambda (_g2207622078_)
                                (gx#free-identifier=? _g2207622078_ _L22012_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2208022083_ _g2208122085_)
                                          (cons _g2208022083_ _g2208122085_))
                                        '()
                                        _L22013_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g2132721894_ _g2133121897_)))
                                         _xarg2137022008_
                                         _hd2136021966_
                                         _arg2134621928_)
                                        (_g2132721894_ _g2133121897_)))))))
                    (_loop2136521976_ _target2136221971_ '()))
                  (_g2132721894_ _g2133121897_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2132721894_ _g2133121897_))
                                            (_g2132721894_ _g2133121897_))
                                        (_g2132721894_ _g2133121897_))))
                                (_g2132721894_ _g2133121897_))
                            (_g2132721894_ _g2133121897_))
                        (_g2132721894_ _g2133121897_))))
                (_g2132721894_ _g2133121897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2132721894_ _g2133121897_))
                                            (_g2132721894_ _g2133121897_))
                                        (_g2132721894_ _g2133121897_))))
                                (_g2132721894_ _g2133121897_))))
                        (_g2132721894_ _g2133121897_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2134121912_
                                             _target2133821907_
                                             '()))
                                          (_g2132721894_ _g2133121897_)))))
                                (_g2132721894_ _g2133121897_))
                            (_g2132721894_ _g2133121897_))))
                    (_g2132721894_ _g2133121897_)))))
        (_g2132622088_ _form21325_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form20793_)
      (let* ((_g2079720921_
              (lambda (_g2079820918_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2079820918_)))
             (_g2079621038_
              (lambda (_g2079820924_)
                (if (gx#stx-pair? _g2079820924_)
                    (let ((_e2088720926_ (gx#stx-e _g2079820924_)))
                      (let ((_hd2088820929_ (##car _e2088720926_))
                            (_tl2088920931_ (##cdr _e2088720926_)))
                        (if (gx#stx-pair? _tl2088920931_)
                            (let ((_e2089020934_ (gx#stx-e _tl2088920931_)))
                              (let ((_hd2089120937_ (##car _e2089020934_))
                                    (_tl2089220939_ (##cdr _e2089020934_)))
                                (if (gx#stx-pair? _hd2089120937_)
                                    (let ((_e2089320942_
                                           (gx#stx-e _hd2089120937_)))
                                      (let ((_hd2089420945_
                                             (##car _e2089320942_))
                                            (_tl2089520947_
                                             (##cdr _e2089320942_)))
                                        (if (gx#identifier? _hd2089420945_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2089420945_)
                                                (if (gx#stx-pair?
                                                     _tl2089520947_)
                                                    (let ((_e2089620950_
                                                           (gx#stx-e
                                                            _tl2089520947_)))
                                                      (let ((_hd2089720953_
                                                             (##car _e2089620950_))
                                                            (_tl2089820955_
                                                             (##cdr _e2089620950_)))
                                                        (if (gx#stx-pair?
                                                             _hd2089720953_)
                                                            (let ((_e2089920958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2089720953_)))
                      (let ((_hd2090020961_ (##car _e2089920958_))
                            (_tl2090120963_ (##cdr _e2089920958_)))
                        (if (gx#identifier? _hd2090020961_)
                            (if (gx#stx-eq? '%#ref _hd2090020961_)
                                (if (gx#stx-pair? _tl2090120963_)
                                    (let ((_e2090220966_
                                           (gx#stx-e _tl2090120963_)))
                                      (let ((_hd2090320969_
                                             (##car _e2090220966_))
                                            (_tl2090420971_
                                             (##cdr _e2090220966_)))
                                        (if (gx#stx-null? _tl2090420971_)
                                            (if (gx#stx-pair? _tl2089820955_)
                                                (let ((_e2090520974_
                                                       (gx#stx-e
                                                        _tl2089820955_)))
                                                  (let ((_hd2090620977_
                                                         (##car _e2090520974_))
                                                        (_tl2090720979_
                                                         (##cdr _e2090520974_)))
                                                    (if (gx#stx-pair?
                                                         _hd2090620977_)
                                                        (let ((_e2090820982_
                                                               (gx#stx-e
                                                                _hd2090620977_)))
                                                          (let ((_hd2090920985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2090820982_))
                        (_tl2091020987_ (##cdr _e2090820982_)))
                    (if (gx#identifier? _hd2090920985_)
                        (if (gx#stx-eq? '%#ref _hd2090920985_)
                            (if (gx#stx-pair? _tl2091020987_)
                                (let ((_e2091120990_
                                       (gx#stx-e _tl2091020987_)))
                                  (let ((_hd2091220993_ (##car _e2091120990_))
                                        (_tl2091320995_ (##cdr _e2091120990_)))
                                    (if (gx#stx-null? _tl2091320995_)
                                        (if (gx#stx-pair? _tl2090720979_)
                                            (let ((_e2091420998_
                                                   (gx#stx-e _tl2090720979_)))
                                              (let ((_hd2091521001_
                                                     (##car _e2091420998_))
                                                    (_tl2091621003_
                                                     (##cdr _e2091420998_)))
                                                (if (gx#stx-null?
                                                     _tl2091621003_)
                                                    (if (gx#stx-null?
                                                         _tl2089220939_)
                                                        ((lambda (_L21006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L21007_
                          _L21008_)
                   (gxc#generate-runtime-binding-id _L21006_))
                 _hd2091220993_
                 _hd2090320969_
                 _hd2088820929_)
                (_g2079720921_ _g2079820924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2079720921_
                                                     _g2079820924_))))
                                            (_g2079720921_ _g2079820924_))
                                        (_g2079720921_ _g2079820924_))))
                                (_g2079720921_ _g2079820924_))
                            (_g2079720921_ _g2079820924_))
                        (_g2079720921_ _g2079820924_))))
                (_g2079720921_ _g2079820924_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2079720921_ _g2079820924_))
                                            (_g2079720921_ _g2079820924_))))
                                    (_g2079720921_ _g2079820924_))
                                (_g2079720921_ _g2079820924_))
                            (_g2079720921_ _g2079820924_))))
                    (_g2079720921_ _g2079820924_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2079720921_
                                                     _g2079820924_))
                                                (_g2079720921_ _g2079820924_))
                                            (_g2079720921_ _g2079820924_))))
                                    (_g2079720921_ _g2079820924_))))
                            (_g2079720921_ _g2079820924_))))
                    (_g2079720921_ _g2079820924_))))
             (_g2079521174_
              (lambda (_g2079821041_)
                (if (gx#stx-pair? _g2079821041_)
                    (let ((_e2084821043_ (gx#stx-e _g2079821041_)))
                      (let ((_hd2084921046_ (##car _e2084821043_))
                            (_tl2085021048_ (##cdr _e2084821043_)))
                        (if (gx#stx-pair/null? _hd2084921046_)
                            (if (fx>= (gx#stx-length _hd2084921046_) '0)
                                (let ((_g23637_
                                       (gx#syntax-split-splice
                                        _hd2084921046_
                                        '0)))
                                  (begin
                                    (let ((_g23638_ (values-count _g23637_)))
                                      (if (not (fx= _g23638_ 2))
                                          (error "Context expects 2 values"
                                                 _g23638_)))
                                    (let ((_target2085121051_
                                           (values-ref _g23637_ 0))
                                          (_tl2085321053_
                                           (values-ref _g23637_ 1)))
                                      (letrec ((_loop2085421056_
                                                (lambda (_hd2085221059_
                                                         _arg2085821061_)
                                                  (if (gx#stx-pair?
                                                       _hd2085221059_)
                                                      (let ((_e2085521064_
                                                             (gx#stx-e
                                                              _hd2085221059_)))
                                                        (let ((_lp-hd2085621067_
                                                               (##car _e2085521064_))
                                                              (_lp-tl2085721069_
                                                               (##cdr _e2085521064_)))
                                                          (_loop2085421056_
                                                           _lp-tl2085721069_
                                                           (cons _lp-hd2085621067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2085821061_))))
              (let ((_arg2085921072_ (reverse _arg2085821061_)))
                (if (gx#stx-pair? _tl2085021048_)
                    (let ((_e2086021075_ (gx#stx-e _tl2085021048_)))
                      (let ((_hd2086121078_ (##car _e2086021075_))
                            (_tl2086221080_ (##cdr _e2086021075_)))
                        (if (gx#stx-pair? _hd2086121078_)
                            (let ((_e2086321083_ (gx#stx-e _hd2086121078_)))
                              (let ((_hd2086421086_ (##car _e2086321083_))
                                    (_tl2086521088_ (##cdr _e2086321083_)))
                                (if (gx#identifier? _hd2086421086_)
                                    (if (gx#stx-eq? '%#call _hd2086421086_)
                                        (if (gx#stx-pair? _tl2086521088_)
                                            (let ((_e2086621091_
                                                   (gx#stx-e _tl2086521088_)))
                                              (let ((_hd2086721094_
                                                     (##car _e2086621091_))
                                                    (_tl2086821096_
                                                     (##cdr _e2086621091_)))
                                                (if (gx#stx-pair?
                                                     _hd2086721094_)
                                                    (let ((_e2086921099_
                                                           (gx#stx-e
                                                            _hd2086721094_)))
                                                      (let ((_hd2087021102_
                                                             (##car _e2086921099_))
                                                            (_tl2087121104_
                                                             (##cdr _e2086921099_)))
                                                        (if (gx#identifier?
                                                             _hd2087021102_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2087021102_)
                        (if (gx#stx-pair? _tl2087121104_)
                            (let ((_e2087221107_ (gx#stx-e _tl2087121104_)))
                              (let ((_hd2087321110_ (##car _e2087221107_))
                                    (_tl2087421112_ (##cdr _e2087221107_)))
                                (if (gx#stx-null? _tl2087421112_)
                                    (if (gx#stx-pair? _tl2086821096_)
                                        (let ((_e2087521115_
                                               (gx#stx-e _tl2086821096_)))
                                          (let ((_hd2087621118_
                                                 (##car _e2087521115_))
                                                (_tl2087721120_
                                                 (##cdr _e2087521115_)))
                                            (if (gx#stx-pair? _hd2087621118_)
                                                (let ((_e2087821123_
                                                       (gx#stx-e
                                                        _hd2087621118_)))
                                                  (let ((_hd2087921126_
                                                         (##car _e2087821123_))
                                                        (_tl2088021128_
                                                         (##cdr _e2087821123_)))
                                                    (if (gx#identifier?
                                                         _hd2087921126_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2087921126_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2088021128_)
                        (let ((_e2088121131_ (gx#stx-e _tl2088021128_)))
                          (let ((_hd2088221134_ (##car _e2088121131_))
                                (_tl2088321136_ (##cdr _e2088121131_)))
                            (if (gx#stx-null? _tl2088321136_)
                                (if (gx#stx-null? _tl2086221080_)
                                    ((lambda (_L21139_
                                              _L21140_
                                              _L21141_
                                              _L21142_)
                                       (gxc#generate-runtime-binding-id
                                        _L21139_))
                                     _hd2088221134_
                                     _hd2087321110_
                                     _tl2085321053_
                                     _arg2085921072_)
                                    (_g2079621038_ _g2079821041_))
                                (_g2079621038_ _g2079821041_))))
                        (_g2079621038_ _g2079821041_))
                    (_g2079621038_ _g2079821041_))
                (_g2079621038_ _g2079821041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2079621038_
                                                 _g2079821041_))))
                                        (_g2079621038_ _g2079821041_))
                                    (_g2079621038_ _g2079821041_))))
                            (_g2079621038_ _g2079821041_))
                        (_g2079621038_ _g2079821041_))
                    (_g2079621038_ _g2079821041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2079621038_
                                                     _g2079821041_))))
                                            (_g2079621038_ _g2079821041_))
                                        (_g2079621038_ _g2079821041_))
                                    (_g2079621038_ _g2079821041_))))
                            (_g2079621038_ _g2079821041_))))
                    (_g2079621038_ _g2079821041_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2085421056_
                                         _target2085121051_
                                         '())))))
                                (_g2079621038_ _g2079821041_))
                            (_g2079621038_ _g2079821041_))))
                    (_g2079621038_ _g2079821041_))))
             (_g2079421322_
              (lambda (_g2079821177_)
                (if (gx#stx-pair? _g2079821177_)
                    (let ((_e2080221179_ (gx#stx-e _g2079821177_)))
                      (let ((_hd2080321182_ (##car _e2080221179_))
                            (_tl2080421184_ (##cdr _e2080221179_)))
                        (if (gx#stx-pair/null? _hd2080321182_)
                            (if (fx>= (gx#stx-length _hd2080321182_) '0)
                                (let ((_g23639_
                                       (gx#syntax-split-splice
                                        _hd2080321182_
                                        '0)))
                                  (begin
                                    (let ((_g23640_ (values-count _g23639_)))
                                      (if (not (fx= _g23640_ 2))
                                          (error "Context expects 2 values"
                                                 _g23640_)))
                                    (let ((_target2080521187_
                                           (values-ref _g23639_ 0))
                                          (_tl2080721189_
                                           (values-ref _g23639_ 1)))
                                      (if (gx#stx-null? _tl2080721189_)
                                          (letrec ((_loop2080821192_
                                                    (lambda (_hd2080621195_
                                                             _arg2081221197_)
                                                      (if (gx#stx-pair?
                                                           _hd2080621195_)
                                                          (let ((_e2080921200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2080621195_)))
                    (let ((_lp-hd2081021203_ (##car _e2080921200_))
                          (_lp-tl2081121205_ (##cdr _e2080921200_)))
                      (_loop2080821192_
                       _lp-tl2081121205_
                       (cons _lp-hd2081021203_ _arg2081221197_))))
                  (let ((_arg2081321208_ (reverse _arg2081221197_)))
                    (if (gx#stx-pair? _tl2080421184_)
                        (let ((_e2081421211_ (gx#stx-e _tl2080421184_)))
                          (let ((_hd2081521214_ (##car _e2081421211_))
                                (_tl2081621216_ (##cdr _e2081421211_)))
                            (if (gx#stx-pair? _hd2081521214_)
                                (let ((_e2081721219_
                                       (gx#stx-e _hd2081521214_)))
                                  (let ((_hd2081821222_ (##car _e2081721219_))
                                        (_tl2081921224_ (##cdr _e2081721219_)))
                                    (if (gx#identifier? _hd2081821222_)
                                        (if (gx#stx-eq? '%#call _hd2081821222_)
                                            (if (gx#stx-pair? _tl2081921224_)
                                                (let ((_e2082021227_
                                                       (gx#stx-e
                                                        _tl2081921224_)))
                                                  (let ((_hd2082121230_
                                                         (##car _e2082021227_))
                                                        (_tl2082221232_
                                                         (##cdr _e2082021227_)))
                                                    (if (gx#stx-pair?
                                                         _hd2082121230_)
                                                        (let ((_e2082321235_
                                                               (gx#stx-e
                                                                _hd2082121230_)))
                                                          (let ((_hd2082421238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2082321235_))
                        (_tl2082521240_ (##cdr _e2082321235_)))
                    (if (gx#identifier? _hd2082421238_)
                        (if (gx#stx-eq? '%#ref _hd2082421238_)
                            (if (gx#stx-pair? _tl2082521240_)
                                (let ((_e2082621243_
                                       (gx#stx-e _tl2082521240_)))
                                  (let ((_hd2082721246_ (##car _e2082621243_))
                                        (_tl2082821248_ (##cdr _e2082621243_)))
                                    (if (gx#stx-null? _tl2082821248_)
                                        (if (gx#stx-pair/null? _tl2082221232_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2082221232_)
                                                      '0)
                                                (let ((_g23641_
                                                       (gx#syntax-split-splice
                                                        _tl2082221232_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23642_
                                                           (values-count
                                                            _g23641_)))
                                                      (if (not (fx= _g23642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g23642_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2082921251_
                                                           (values-ref
                                                            _g23641_
                                                            0))
                                                          (_tl2083121253_
                                                           (values-ref
                                                            _g23641_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2083121253_)
                                                          (letrec ((_loop2083221256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2083021259_ _xarg2083621261_)
                              (if (gx#stx-pair? _hd2083021259_)
                                  (let ((_e2083321264_
                                         (gx#stx-e _hd2083021259_)))
                                    (let ((_lp-hd2083421267_
                                           (##car _e2083321264_))
                                          (_lp-tl2083521269_
                                           (##cdr _e2083321264_)))
                                      (if (gx#stx-pair? _lp-hd2083421267_)
                                          (let ((_e2083821272_
                                                 (gx#stx-e _lp-hd2083421267_)))
                                            (let ((_hd2083921275_
                                                   (##car _e2083821272_))
                                                  (_tl2084021277_
                                                   (##cdr _e2083821272_)))
                                              (if (gx#identifier?
                                                   _hd2083921275_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2083921275_)
                                                      (if (gx#stx-pair?
                                                           _tl2084021277_)
                                                          (let ((_e2084121280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2084021277_)))
                    (let ((_hd2084221283_ (##car _e2084121280_))
                          (_tl2084321285_ (##cdr _e2084121280_)))
                      (if (gx#stx-null? _tl2084321285_)
                          (_loop2083221256_
                           _lp-tl2083521269_
                           (cons _hd2084221283_ _xarg2083621261_))
                          (_g2079521174_ _g2079821177_))))
                  (_g2079521174_ _g2079821177_))
              (_g2079521174_ _g2079821177_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2079521174_
                                                   _g2079821177_))))
                                          (_g2079521174_ _g2079821177_))))
                                  (let ((_xarg2083721288_
                                         (reverse _xarg2083621261_)))
                                    (if (gx#stx-null? _tl2081621216_)
                                        ((lambda (_L21291_ _L21292_ _L21293_)
                                           (gxc#generate-runtime-binding-id
                                            _L21292_))
                                         _xarg2083721288_
                                         _hd2082721246_
                                         _arg2081321208_)
                                        (_g2079521174_ _g2079821177_)))))))
                    (_loop2083221256_ _target2082921251_ '()))
                  (_g2079521174_ _g2079821177_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2079521174_ _g2079821177_))
                                            (_g2079521174_ _g2079821177_))
                                        (_g2079521174_ _g2079821177_))))
                                (_g2079521174_ _g2079821177_))
                            (_g2079521174_ _g2079821177_))
                        (_g2079521174_ _g2079821177_))))
                (_g2079521174_ _g2079821177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2079521174_ _g2079821177_))
                                            (_g2079521174_ _g2079821177_))
                                        (_g2079521174_ _g2079821177_))))
                                (_g2079521174_ _g2079821177_))))
                        (_g2079521174_ _g2079821177_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2080821192_
                                             _target2080521187_
                                             '()))
                                          (_g2079521174_ _g2079821177_)))))
                                (_g2079521174_ _g2079821177_))
                            (_g2079521174_ _g2079821177_))))
                    (_g2079521174_ _g2079821177_)))))
        (_g2079421322_ _form20793_))))
  (define gxc#lambda-form-arity
    (lambda (_form20597_)
      (let* ((_g2059920613_
              (lambda (_g2060020610_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2060020610_)))
             (_g2059820790_
              (lambda (_g2060020616_)
                (if (gx#stx-pair? _g2060020616_)
                    (let ((_e2060320618_ (gx#stx-e _g2060020616_)))
                      (let ((_hd2060420621_ (##car _e2060320618_))
                            (_tl2060520623_ (##cdr _e2060320618_)))
                        (if (gx#stx-pair? _tl2060520623_)
                            (let ((_e2060620626_ (gx#stx-e _tl2060520623_)))
                              (let ((_hd2060720629_ (##car _e2060620626_))
                                    (_tl2060820631_ (##cdr _e2060620626_)))
                                (if (gx#stx-null? _tl2060820631_)
                                    ((lambda (_L20634_ _L20635_)
                                       (let* ((_g2065020678_
                                               (lambda (_g2065120675_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2065120675_)))
                                              (_g2064920691_
                                               (lambda (_g2065120681_)
                                                 ((lambda (_L20683_)
                                                    (cons '0 '()))
                                                  _g2065120681_)))
                                              (_g2064820740_
                                               (lambda (_g2065120694_)
                                                 (if (gx#stx-pair/null?
                                                      _g2065120694_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2065120694_)
                                                               '0)
                                                         (let ((_g23643_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2065120694_
                         '0)))
                   (begin
                     (let ((_g23644_ (values-count _g23643_)))
                       (if (not (fx= _g23644_ 2))
                           (error "Context expects 2 values" _g23644_)))
                     (let ((_target2066420696_ (values-ref _g23643_ 0))
                           (_tl2066620698_ (values-ref _g23643_ 1)))
                       (letrec ((_loop2066720701_
                                 (lambda (_hd2066520704_ _arg2067120706_)
                                   (if (gx#stx-pair? _hd2066520704_)
                                       (let ((_e2066820709_
                                              (gx#stx-e _hd2066520704_)))
                                         (let ((_lp-hd2066920712_
                                                (##car _e2066820709_))
                                               (_lp-tl2067020714_
                                                (##cdr _e2066820709_)))
                                           (_loop2066720701_
                                            _lp-tl2067020714_
                                            (cons _lp-hd2066920712_
                                                  _arg2067120706_))))
                                       (let ((_arg2067220717_
                                              (reverse _arg2067120706_)))
                                         ((lambda (_L20720_ _L20721_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2073220735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2073320737_)
                              (cons _g2073220735_ _g2073320737_))
                            '()
                            _L20721_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl2066620698_
                                          _arg2067220717_))))))
                         (_loop2066720701_ _target2066420696_ '())))))
                 (_g2064920691_ _g2065120694_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2064920691_
                                                      _g2065120694_))))
                                              (_g2064720787_
                                               (lambda (_g2065120743_)
                                                 (if (gx#stx-pair/null?
                                                      _g2065120743_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2065120743_)
                                                               '0)
                                                         (let ((_g23645_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2065120743_
                         '0)))
                   (begin
                     (let ((_g23646_ (values-count _g23645_)))
                       (if (not (fx= _g23646_ 2))
                           (error "Context expects 2 values" _g23646_)))
                     (let ((_target2065320745_ (values-ref _g23645_ 0))
                           (_tl2065520747_ (values-ref _g23645_ 1)))
                       (if (gx#stx-null? _tl2065520747_)
                           (letrec ((_loop2065620750_
                                     (lambda (_hd2065420753_ _arg2066020755_)
                                       (if (gx#stx-pair? _hd2065420753_)
                                           (let ((_e2065720758_
                                                  (gx#stx-e _hd2065420753_)))
                                             (let ((_lp-hd2065820761_
                                                    (##car _e2065720758_))
                                                   (_lp-tl2065920763_
                                                    (##cdr _e2065720758_)))
                                               (_loop2065620750_
                                                _lp-tl2065920763_
                                                (cons _lp-hd2065820761_
                                                      _arg2066020755_))))
                                           (let ((_arg2066120766_
                                                  (reverse _arg2066020755_)))
                                             ((lambda (_L20769_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2077920782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2078020784_)
                            (cons _g2077920782_ _g2078020784_))
                          '()
                          _L20769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg2066120766_))))))
                             (_loop2065620750_ _target2065320745_ '()))
                           (_g2064820740_ _g2065120743_)))))
                 (_g2064820740_ _g2065120743_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2064820740_
                                                      _g2065120743_)))))
                                         (_g2064720787_ _L20635_)))
                                     _hd2060720629_
                                     _hd2060420621_)
                                    (_g2059920613_ _g2060020616_))))
                            (_g2059920613_ _g2060020616_))))
                    (_g2059920613_ _g2060020616_)))))
        (_g2059820790_ _form20597_))))
  (define gxc#lambda-expr?
    (lambda (_expr20550_)
      (let* ((_g2055320563_
              (lambda (_g2055420560_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2055420560_)))
             (_g2055220570_ (lambda (_g2055420566_) ((lambda () '#f))))
             (_g2055120594_
              (lambda (_g2055420573_)
                (if (gx#stx-pair? _g2055420573_)
                    (let ((_e2055620575_ (gx#stx-e _g2055420573_)))
                      (let ((_hd2055720578_ (##car _e2055620575_))
                            (_tl2055820580_ (##cdr _e2055620575_)))
                        (if (gx#identifier? _hd2055720578_)
                            (if (gx#stx-eq? '%#lambda _hd2055720578_)
                                ((lambda (_L20583_) '#t) _tl2055820580_)
                                (_g2055220570_ _g2055420573_))
                            (_g2055220570_ _g2055420573_))))
                    (_g2055220570_ _g2055420573_)))))
        (_g2055120594_ _expr20550_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr20503_)
      (let* ((_g2050620516_
              (lambda (_g2050720513_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2050720513_)))
             (_g2050520523_ (lambda (_g2050720519_) ((lambda () '#f))))
             (_g2050420547_
              (lambda (_g2050720526_)
                (if (gx#stx-pair? _g2050720526_)
                    (let ((_e2050920528_ (gx#stx-e _g2050720526_)))
                      (let ((_hd2051020531_ (##car _e2050920528_))
                            (_tl2051120533_ (##cdr _e2050920528_)))
                        (if (gx#identifier? _hd2051020531_)
                            (if (gx#stx-eq? '%#case-lambda _hd2051020531_)
                                ((lambda (_L20536_) '#t) _tl2051120533_)
                                (_g2050520523_ _g2050720526_))
                            (_g2050520523_ _g2050720526_))))
                    (_g2050520523_ _g2050720526_)))))
        (_g2050420547_ _expr20503_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr20372_)
      (let* ((_g2037520405_
              (lambda (_g2037620402_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2037620402_)))
             (_g2037420412_ (lambda (_g2037620408_) ((lambda () '#f))))
             (_g2037320500_
              (lambda (_g2037620415_)
                (if (gx#stx-pair? _g2037620415_)
                    (let ((_e2038020417_ (gx#stx-e _g2037620415_)))
                      (let ((_hd2038120420_ (##car _e2038020417_))
                            (_tl2038220422_ (##cdr _e2038020417_)))
                        (if (gx#identifier? _hd2038120420_)
                            (if (gx#stx-eq? '%#let-values _hd2038120420_)
                                (if (gx#stx-pair? _tl2038220422_)
                                    (let ((_e2038320425_
                                           (gx#stx-e _tl2038220422_)))
                                      (let ((_hd2038420428_
                                             (##car _e2038320425_))
                                            (_tl2038520430_
                                             (##cdr _e2038320425_)))
                                        (if (gx#stx-pair? _hd2038420428_)
                                            (let ((_e2038620433_
                                                   (gx#stx-e _hd2038420428_)))
                                              (let ((_hd2038720436_
                                                     (##car _e2038620433_))
                                                    (_tl2038820438_
                                                     (##cdr _e2038620433_)))
                                                (if (gx#stx-pair?
                                                     _hd2038720436_)
                                                    (let ((_e2038920441_
                                                           (gx#stx-e
                                                            _hd2038720436_)))
                                                      (let ((_hd2039020444_
                                                             (##car _e2038920441_))
                                                            (_tl2039120446_
                                                             (##cdr _e2038920441_)))
                                                        (if (gx#stx-pair?
                                                             _hd2039020444_)
                                                            (let ((_e2039220449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2039020444_)))
                      (let ((_hd2039320452_ (##car _e2039220449_))
                            (_tl2039420454_ (##cdr _e2039220449_)))
                        (if (gx#stx-null? _tl2039420454_)
                            (if (gx#stx-pair? _tl2039120446_)
                                (let ((_e2039520457_
                                       (gx#stx-e _tl2039120446_)))
                                  (let ((_hd2039620460_ (##car _e2039520457_))
                                        (_tl2039720462_ (##cdr _e2039520457_)))
                                    (if (gx#stx-null? _tl2039720462_)
                                        (if (gx#stx-null? _tl2038820438_)
                                            (if (gx#stx-pair? _tl2038520430_)
                                                (let ((_e2039820465_
                                                       (gx#stx-e
                                                        _tl2038520430_)))
                                                  (let ((_hd2039920468_
                                                         (##car _e2039820465_))
                                                        (_tl2040020470_
                                                         (##cdr _e2039820465_)))
                                                    (if (gx#stx-null?
                                                         _tl2040020470_)
                                                        ((lambda (_L20473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20474_
                          _L20475_)
                   (if (gx#identifier? _L20475_)
                       (if (gxc#lambda-expr? _L20474_)
                           (gxc#case-lambda-expr? _L20473_)
                           '#f)
                       '#f))
                 _hd2039920468_
                 _hd2039620460_
                 _hd2039320452_)
                (_g2037420412_ _g2037620415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2037420412_ _g2037620415_))
                                            (_g2037420412_ _g2037620415_))
                                        (_g2037420412_ _g2037620415_))))
                                (_g2037420412_ _g2037620415_))
                            (_g2037420412_ _g2037620415_))))
                    (_g2037420412_ _g2037620415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2037420412_
                                                     _g2037620415_))))
                                            (_g2037420412_ _g2037620415_))))
                                    (_g2037420412_ _g2037620415_))
                                (_g2037420412_ _g2037620415_))
                            (_g2037420412_ _g2037620415_))))
                    (_g2037420412_ _g2037620415_)))))
        (_g2037320500_ _expr20372_))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda20112
      (lambda (_stx20114_ _id20115_ _clauses20116_ _gensym?20117_)
        (let _lp20119_ ((_rest20121_ _clauses20116_)
                        (_ids20122_ '())
                        (_impls20123_ '())
                        (_clauses20124_ '()))
          (let* ((_rest2012520133_ _rest20121_)
                 (_E2012820137_
                  (lambda () (error '"No clause matching" _rest2012520133_)))
                 (_else2012720141_
                  (lambda ()
                    (values (reverse _ids20122_)
                            (reverse _impls20123_)
                            (reverse _clauses20124_))))
                 (_K2012920346_
                  (lambda (_rest20144_ _clause20145_)
                    (if (gxc#dispatch-lambda-form? _clause20145_)
                        (_lp20119_
                         _rest20144_
                         _ids20122_
                         _impls20123_
                         (cons _clause20145_ _clauses20124_))
                        (let* ((_g2014720158_
                                (lambda (_g2014820155_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2014820155_)))
                               (_g2014620343_
                                (lambda (_g2014820161_)
                                  (if (gx#stx-pair? _g2014820161_)
                                      (let ((_e2015120163_
                                             (gx#stx-e _g2014820161_)))
                                        (let ((_hd2015220166_
                                               (##car _e2015120163_))
                                              (_tl2015320168_
                                               (##cdr _e2015120163_)))
                                          ((lambda (_L20171_ _L20172_)
                                             (let* ((_id20189_
                                                     (make-symbol
                                                      (gx#stx-e _id20115_)
                                                      '"__"
                                                      (length _clauses20124_)
                                                      (if _gensym?20117_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id20191_
                                                     (gx#core-quote-syntax__1
                                                      _id20189_
                                                      (gx#stx-source
                                                       _stx20114_)))
                                                    (_impl20193_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L20172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20171_))
              _stx20114_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause20340_
                                                     (let* ((_g2019720225_
                                                             (lambda (_g2019820222_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2019820222_)))
                                                            (_g2019620241_
                                                             (lambda (_g2019820228_)
                                                               ((lambda (_L20230_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L20172_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id20191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L20230_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx20114_)
                                      '())))
                        _g2019820228_)))
                    (_g2019520290_
                     (lambda (_g2019820244_)
                       (if (gx#stx-pair/null? _g2019820244_)
                           (if (fx>= (gx#stx-length _g2019820244_) '0)
                               (let ((_g23647_
                                      (gx#syntax-split-splice
                                       _g2019820244_
                                       '0)))
                                 (begin
                                   (let ((_g23648_ (values-count _g23647_)))
                                     (if (not (fx= _g23648_ 2))
                                         (error "Context expects 2 values"
                                                _g23648_)))
                                   (let ((_target2021120246_
                                          (values-ref _g23647_ 0))
                                         (_tl2021320248_
                                          (values-ref _g23647_ 1)))
                                     (letrec ((_loop2021420251_
                                               (lambda (_hd2021220254_
                                                        _arg2021820256_)
                                                 (if (gx#stx-pair?
                                                      _hd2021220254_)
                                                     (let ((_e2021520259_
                                                            (gx#stx-e
                                                             _hd2021220254_)))
                                                       (let ((_lp-hd2021620262_
                                                              (##car _e2021520259_))
                                                             (_lp-tl2021720264_
                                                              (##cdr _e2021520259_)))
                                                         (_loop2021420251_
                                                          _lp-tl2021720264_
                                                          (cons _lp-hd2021620262_
                                                                _arg2021820256_))))
                                                     (let ((_arg2021920267_
                                                            (reverse _arg2021820256_)))
                                                       ((lambda (_L20270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L20271_)
                  (cons _L20172_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id20191_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L20270_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g2028220285_ _g2028320287_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g2028220285_ '()))
                                   _g2028320287_))
                           '()
                           _L20271_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx20114_)
                              '())))
                _tl2021320248_
                _arg2021920267_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop2021420251_
                                        _target2021120246_
                                        '())))))
                               (_g2019620241_ _g2019820244_))
                           (_g2019620241_ _g2019820244_))))
                    (_g2019420337_
                     (lambda (_g2019820293_)
                       (if (gx#stx-pair/null? _g2019820293_)
                           (if (fx>= (gx#stx-length _g2019820293_) '0)
                               (let ((_g23649_
                                      (gx#syntax-split-splice
                                       _g2019820293_
                                       '0)))
                                 (begin
                                   (let ((_g23650_ (values-count _g23649_)))
                                     (if (not (fx= _g23650_ 2))
                                         (error "Context expects 2 values"
                                                _g23650_)))
                                   (let ((_target2020020295_
                                          (values-ref _g23649_ 0))
                                         (_tl2020220297_
                                          (values-ref _g23649_ 1)))
                                     (if (gx#stx-null? _tl2020220297_)
                                         (letrec ((_loop2020320300_
                                                   (lambda (_hd2020120303_
                                                            _arg2020720305_)
                                                     (if (gx#stx-pair?
                                                          _hd2020120303_)
                                                         (let ((_e2020420308_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2020120303_)))
                   (let ((_lp-hd2020520311_ (##car _e2020420308_))
                         (_lp-tl2020620313_ (##cdr _e2020420308_)))
                     (_loop2020320300_
                      _lp-tl2020620313_
                      (cons _lp-hd2020520311_ _arg2020720305_))))
                 (let ((_arg2020820316_ (reverse _arg2020720305_)))
                   ((lambda (_L20319_)
                      (cons _L20172_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id20191_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g2032920332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2033020334_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2032920332_ '()))
                         _g2033020334_))
                 '()
                 _L20319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx20114_)
                                  '())))
                    _arg2020820316_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2020320300_
                                            _target2020020295_
                                            '()))
                                         (_g2019520290_ _g2019820293_)))))
                               (_g2019520290_ _g2019820293_))
                           (_g2019520290_ _g2019820293_)))))
               (_g2019420337_ _L20172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp20119_
                                                _rest20144_
                                                (cons _id20191_ _ids20122_)
                                                (cons _impl20193_ _impls20123_)
                                                (cons _clause20340_
                                                      _clauses20124_))))
                                           _tl2015320168_
                                           _hd2015220166_)))
                                      (_g2014720158_ _g2014820161_)))))
                          (_g2014620343_ _clause20145_))))))
            (if (##pair? _rest2012520133_)
                (let ((_hd2013020349_ (##car _rest2012520133_))
                      (_tl2013120351_ (##cdr _rest2012520133_)))
                  (let* ((_clause20354_ _hd2013020349_)
                         (_rest20356_ _tl2013120351_))
                    (_K2012920346_ _rest20356_ _clause20354_)))
                (_else2012720141_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx20361_ _id20362_ _clauses20363_)
          (let ((_gensym?20365_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda20112
             _stx20361_
             _id20362_
             _clauses20363_
             _gensym?20365_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g23652_
          (let ((_g23651_ (length _g23652_)))
            (cond ((fx= _g23651_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g23652_))
                  ((fx= _g23651_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda20112
                          _g23652_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g23652_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx19703_)
      (letrec ((_case-lambda-clause-def19705_
                (lambda (_id20110_ _impl20111_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id20110_ '())
                               (cons (gxc#compile-e _impl20111_) '())))
                   _stx19703_))))
        (let* ((_g1970919754_
                (lambda (_g1971019751_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1971019751_)))
               (_g1970819800_
                (lambda (_g1971019757_)
                  (if (gx#stx-pair? _g1971019757_)
                      (let ((_e1974119759_ (gx#stx-e _g1971019757_)))
                        (let ((_hd1974219762_ (##car _e1974119759_))
                              (_tl1974319764_ (##cdr _e1974119759_)))
                          (if (gx#stx-pair? _tl1974319764_)
                              (let ((_e1974419767_ (gx#stx-e _tl1974319764_)))
                                (let ((_hd1974519770_ (##car _e1974419767_))
                                      (_tl1974619772_ (##cdr _e1974419767_)))
                                  (if (gx#stx-pair? _tl1974619772_)
                                      (let ((_e1974719775_
                                             (gx#stx-e _tl1974619772_)))
                                        (let ((_hd1974819778_
                                               (##car _e1974719775_))
                                              (_tl1974919780_
                                               (##cdr _e1974719775_)))
                                          (if (gx#stx-null? _tl1974919780_)
                                              ((lambda (_L19783_ _L19784_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L19784_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19783_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx19703_))
                                               _hd1974819778_
                                               _hd1974519770_)
                                              (_g1970919754_ _g1971019757_))))
                                      (_g1970919754_ _g1971019757_))))
                              (_g1970919754_ _g1971019757_))))
                      (_g1970919754_ _g1971019757_))))
               (_g1970719982_
                (lambda (_g1971019803_)
                  (if (gx#stx-pair? _g1971019803_)
                      (let ((_e1972719805_ (gx#stx-e _g1971019803_)))
                        (let ((_hd1972819808_ (##car _e1972719805_))
                              (_tl1972919810_ (##cdr _e1972719805_)))
                          (if (gx#stx-pair? _tl1972919810_)
                              (let ((_e1973019813_ (gx#stx-e _tl1972919810_)))
                                (let ((_hd1973119816_ (##car _e1973019813_))
                                      (_tl1973219818_ (##cdr _e1973019813_)))
                                  (if (gx#stx-pair? _hd1973119816_)
                                      (let ((_e1973319821_
                                             (gx#stx-e _hd1973119816_)))
                                        (let ((_hd1973419824_
                                               (##car _e1973319821_))
                                              (_tl1973519826_
                                               (##cdr _e1973319821_)))
                                          (if (gx#stx-null? _tl1973519826_)
                                              (if (gx#stx-pair? _tl1973219818_)
                                                  (let ((_e1973619829_
                                                         (gx#stx-e
                                                          _tl1973219818_)))
                                                    (let ((_hd1973719832_
                                                           (##car _e1973619829_))
                                                          (_tl1973819834_
                                                           (##cdr _e1973619829_)))
                                                      (if (gx#stx-null?
                                                           _tl1973819834_)
                                                          ((lambda (_L19837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19838_)
                     (if (if (gx#identifier? _L19838_)
                             (gxc#opt-lambda-expr? _L19837_)
                             '#f)
                         (let* ((_g1985419884_
                                 (lambda (_g1985519881_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1985519881_)))
                                (_g1985319979_
                                 (lambda (_g1985519887_)
                                   (if (gx#stx-pair? _g1985519887_)
                                       (let ((_e1985919889_
                                              (gx#stx-e _g1985519887_)))
                                         (let ((_hd1986019892_
                                                (##car _e1985919889_))
                                               (_tl1986119894_
                                                (##cdr _e1985919889_)))
                                           (if (gx#stx-pair? _tl1986119894_)
                                               (let ((_e1986219897_
                                                      (gx#stx-e
                                                       _tl1986119894_)))
                                                 (let ((_hd1986319900_
                                                        (##car _e1986219897_))
                                                       (_tl1986419902_
                                                        (##cdr _e1986219897_)))
                                                   (if (gx#stx-pair?
                                                        _hd1986319900_)
                                                       (let ((_e1986519905_
                                                              (gx#stx-e
                                                               _hd1986319900_)))
                                                         (let ((_hd1986619908_
                                                                (##car _e1986519905_))
                                                               (_tl1986719910_
                                                                (##cdr _e1986519905_)))
                                                           (if (gx#stx-pair?
                                                                _hd1986619908_)
                                                               (let ((_e1986819913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1986619908_)))
                         (let ((_hd1986919916_ (##car _e1986819913_))
                               (_tl1987019918_ (##cdr _e1986819913_)))
                           (if (gx#stx-pair? _hd1986919916_)
                               (let ((_e1987119921_ (gx#stx-e _hd1986919916_)))
                                 (let ((_hd1987219924_ (##car _e1987119921_))
                                       (_tl1987319926_ (##cdr _e1987119921_)))
                                   (if (gx#stx-null? _tl1987319926_)
                                       (if (gx#stx-pair? _tl1987019918_)
                                           (let ((_e1987419929_
                                                  (gx#stx-e _tl1987019918_)))
                                             (let ((_hd1987519932_
                                                    (##car _e1987419929_))
                                                   (_tl1987619934_
                                                    (##cdr _e1987419929_)))
                                               (if (gx#stx-null?
                                                    _tl1987619934_)
                                                   (if (gx#stx-null?
                                                        _tl1986719910_)
                                                       (if (gx#stx-pair?
                                                            _tl1986419902_)
                                                           (let ((_e1987719937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1986419902_)))
                     (let ((_hd1987819940_ (##car _e1987719937_))
                           (_tl1987919942_ (##cdr _e1987719937_)))
                       (if (gx#stx-null? _tl1987919942_)
                           ((lambda (_L19945_ _L19946_ _L19947_)
                              (let* ((_lambda-id19971_
                                      (make-symbol
                                       (gx#stx-e _L19838_)
                                       '"__"
                                       (gx#stx-e _L19947_)))
                                     (_lambda-id19973_
                                      (gx#core-quote-syntax__1
                                       _lambda-id19971_
                                       (gx#stx-source _stx19703_)))
                                     (_g23653_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id19973_))
                                     (_new-case-lambda-expr19976_
                                      (gxc#apply-expression-subst
                                       _L19945_
                                       _L19947_
                                       _lambda-id19973_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L19838_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id19973_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id19973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L19946_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx19703_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L19838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr19976_ '())))
               _stx19703_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx19703_))))
                            _hd1987819940_
                            _hd1987519932_
                            _hd1987219924_)
                           (_g1985419884_ _g1985519887_))))
                   (_g1985419884_ _g1985519887_))
               (_g1985419884_ _g1985519887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1985419884_
                                                    _g1985519887_))))
                                           (_g1985419884_ _g1985519887_))
                                       (_g1985419884_ _g1985519887_))))
                               (_g1985419884_ _g1985519887_))))
                       (_g1985419884_ _g1985519887_))))
               (_g1985419884_ _g1985519887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1985419884_ _g1985519887_))))
                                       (_g1985419884_ _g1985519887_)))))
                           (_g1985319979_ _L19837_))
                         (_g1970819800_ _g1971019803_)))
                   _hd1973719832_
                   _hd1973419824_)
                  (_g1970819800_ _g1971019803_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1970819800_
                                                   _g1971019803_))
                                              (_g1970819800_ _g1971019803_))))
                                      (_g1970819800_ _g1971019803_))))
                              (_g1970819800_ _g1971019803_))))
                      (_g1970819800_ _g1971019803_))))
               (_g1970620107_
                (lambda (_g1971019985_)
                  (if (gx#stx-pair? _g1971019985_)
                      (let ((_e1971319987_ (gx#stx-e _g1971019985_)))
                        (let ((_hd1971419990_ (##car _e1971319987_))
                              (_tl1971519992_ (##cdr _e1971319987_)))
                          (if (gx#stx-pair? _tl1971519992_)
                              (let ((_e1971619995_ (gx#stx-e _tl1971519992_)))
                                (let ((_hd1971719998_ (##car _e1971619995_))
                                      (_tl1971820000_ (##cdr _e1971619995_)))
                                  (if (gx#stx-pair? _hd1971719998_)
                                      (let ((_e1971920003_
                                             (gx#stx-e _hd1971719998_)))
                                        (let ((_hd1972020006_
                                               (##car _e1971920003_))
                                              (_tl1972120008_
                                               (##cdr _e1971920003_)))
                                          (if (gx#stx-null? _tl1972120008_)
                                              (if (gx#stx-pair? _tl1971820000_)
                                                  (let ((_e1972220011_
                                                         (gx#stx-e
                                                          _tl1971820000_)))
                                                    (let ((_hd1972320014_
                                                           (##car _e1972220011_))
                                                          (_tl1972420016_
                                                           (##cdr _e1972220011_)))
                                                      (if (gx#stx-null?
                                                           _tl1972420016_)
                                                          ((lambda (_L20019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L20020_)
                     (if (if (gx#identifier? _L20020_)
                             (gxc#case-lambda-expr? _L20019_)
                             '#f)
                         (let* ((_g2003720051_
                                 (lambda (_g2003820048_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2003820048_)))
                                (_g2003620082_
                                 (lambda (_g2003820054_)
                                   (if (gx#stx-pair? _g2003820054_)
                                       (let ((_e2004420056_
                                              (gx#stx-e _g2003820054_)))
                                         (let ((_hd2004520059_
                                                (##car _e2004420056_))
                                               (_tl2004620061_
                                                (##cdr _e2004420056_)))
                                           ((lambda (_L20064_)
                                              (let ((_g23654_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx19703_
                                                      _L20020_
                                                      _L20064_)))
                                                (begin
                                                  (let ((_g23655_
                                                         (values-count
                                                          _g23654_)))
                                                    (if (not (fx= _g23655_ 3))
                                                        (error "Context expects 3 values"
                                                               _g23655_)))
                                                  (let ((_ids20074_
                                                         (values-ref
                                                          _g23654_
                                                          0))
                                                        (_impls20075_
                                                         (values-ref
                                                          _g23654_
                                                          1))
                                                        (_clauses20076_
                                                         (values-ref
                                                          _g23654_
                                                          2)))
                                                    (let* ((_g23656_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids20074_))
                                                           (_defs20079_
                                                            (map _case-lambda-clause-def19705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids20074_
                         _impls20075_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L20020_)
                 '" => "
                 (map gxc#identifier-symbol _ids20074_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L20020_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses20076_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx19703_)
                                     '())
                               _defs20079_))
                 _stx19703_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl2004620061_)))
                                       (_g2003720051_ _g2003820054_))))
                                (_g2003520104_
                                 (lambda (_g2003820085_)
                                   (if (gx#stx-pair? _g2003820085_)
                                       (let ((_e2004020087_
                                              (gx#stx-e _g2003820085_)))
                                         (let ((_hd2004120090_
                                                (##car _e2004020087_))
                                               (_tl2004220092_
                                                (##cdr _e2004020087_)))
                                           ((lambda (_L20095_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L20095_)
                                                  _stx19703_
                                                  (_g2003620082_
                                                   _g2003820085_)))
                                            _tl2004220092_)))
                                       (_g2003620082_ _g2003820085_)))))
                           (_g2003520104_ _L20019_))
                         (_g1970719982_ _g1971019985_)))
                   _hd1972320014_
                   _hd1972020006_)
                  (_g1970719982_ _g1971019985_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1970719982_
                                                   _g1971019985_))
                                              (_g1970719982_ _g1971019985_))))
                                      (_g1970719982_ _g1971019985_))))
                              (_g1970719982_ _g1971019985_))))
                      (_g1970719982_ _g1971019985_)))))
          (_g1970620107_ _stx19703_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx19126_)
      (letrec* ((_bind-e__opt-lambda19685__2360323604_
                 (lambda (_id19687_ _expr19688_ _compile?19689_)
                   (cons (cons _id19687_ '())
                         (cons (if _compile?19689_
                                   (gxc#compile-e _expr19688_)
                                   _expr19688_)
                               '()))))
                (_bind-e__0__2360523606_
                 (lambda (_id19694_ _expr19695_)
                   (let ((_compile?19697_ '#t))
                     (_bind-e__opt-lambda19685__2360323604_
                      _id19694_
                      _expr19695_
                      _compile?19697_))))
                (_bind-e19128_
                 (lambda _g23658_
                   (let ((_g23657_ (length _g23658_)))
                     (cond ((fx= _g23657_ 2)
                            (apply _bind-e__0__2360523606_ _g23658_))
                           ((fx= _g23657_ 3)
                            (apply _bind-e__opt-lambda19685__2360323604_
                                   _g23658_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g23658_))))))
                (_compile-bindings19129_
                 (lambda (_rest19271_)
                   (let _lp19273_ ((_rest19275_ _rest19271_)
                                   (_lift119276_ '())
                                   (_lift219277_ '())
                                   (_bind19278_ '()))
                     (let* ((_rest1927919287_ _rest19275_)
                            (_E1928219291_
                             (lambda ()
                               (error '"No clause matching" _rest1927919287_)))
                            (_else1928119295_
                             (lambda ()
                               (values (reverse _lift119276_)
                                       (reverse _lift219277_)
                                       (reverse _bind19278_))))
                            (_K1928319674_
                             (lambda (_rest19298_ _hd19299_)
                               (let* ((_g1930319339_
                                       (lambda (_g1930419336_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1930419336_)))
                                      (_g1930219380_
                                       (lambda (_g1930419342_)
                                         (if (gx#stx-pair? _g1930419342_)
                                             (let ((_e1932919344_
                                                    (gx#stx-e _g1930419342_)))
                                               (let ((_hd1933019347_
                                                      (##car _e1932919344_))
                                                     (_tl1933119349_
                                                      (##cdr _e1932919344_)))
                                                 (if (gx#stx-pair?
                                                      _tl1933119349_)
                                                     (let ((_e1933219352_
                                                            (gx#stx-e
                                                             _tl1933119349_)))
                                                       (let ((_hd1933319355_
                                                              (##car _e1933219352_))
                                                             (_tl1933419357_
                                                              (##cdr _e1933219352_)))
                                                         (if (gx#stx-null?
                                                              _tl1933419357_)
                                                             ((lambda (_L19360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L19361_)
                        (_lp19273_
                         _rest19298_
                         _lift119276_
                         _lift219277_
                         (cons (cons _L19361_
                                     (cons (gxc#compile-e _L19360_) '()))
                               _bind19278_)))
                      _hd1933319355_
                      _hd1933019347_)
                     (_g1930319339_ _g1930419342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1930319339_
                                                      _g1930419342_))))
                                             (_g1930319339_ _g1930419342_))))
                                      (_g1930119552_
                                       (lambda (_g1930419383_)
                                         (if (gx#stx-pair? _g1930419383_)
                                             (let ((_e1931819385_
                                                    (gx#stx-e _g1930419383_)))
                                               (let ((_hd1931919388_
                                                      (##car _e1931819385_))
                                                     (_tl1932019390_
                                                      (##cdr _e1931819385_)))
                                                 (if (gx#stx-pair?
                                                      _hd1931919388_)
                                                     (let ((_e1932119393_
                                                            (gx#stx-e
                                                             _hd1931919388_)))
                                                       (let ((_hd1932219396_
                                                              (##car _e1932119393_))
                                                             (_tl1932319398_
                                                              (##cdr _e1932119393_)))
                                                         (if (gx#stx-null?
                                                              _tl1932319398_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1932019390_)
                         (let ((_e1932419401_ (gx#stx-e _tl1932019390_)))
                           (let ((_hd1932519404_ (##car _e1932419401_))
                                 (_tl1932619406_ (##cdr _e1932419401_)))
                             (if (gx#stx-null? _tl1932619406_)
                                 ((lambda (_L19409_ _L19410_)
                                    (if (if (gx#identifier? _L19410_)
                                            (gxc#opt-lambda-expr? _L19409_)
                                            '#f)
                                        (let* ((_g1942419454_
                                                (lambda (_g1942519451_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1942519451_)))
                                               (_g1942319549_
                                                (lambda (_g1942519457_)
                                                  (if (gx#stx-pair?
                                                       _g1942519457_)
                                                      (let ((_e1942919459_
                                                             (gx#stx-e
                                                              _g1942519457_)))
                                                        (let ((_hd1943019462_
                                                               (##car _e1942919459_))
                                                              (_tl1943119464_
                                                               (##cdr _e1942919459_)))
                                                          (if (gx#stx-pair?
                                                               _tl1943119464_)
                                                              (let ((_e1943219467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1943119464_)))
                        (let ((_hd1943319470_ (##car _e1943219467_))
                              (_tl1943419472_ (##cdr _e1943219467_)))
                          (if (gx#stx-pair? _hd1943319470_)
                              (let ((_e1943519475_ (gx#stx-e _hd1943319470_)))
                                (let ((_hd1943619478_ (##car _e1943519475_))
                                      (_tl1943719480_ (##cdr _e1943519475_)))
                                  (if (gx#stx-pair? _hd1943619478_)
                                      (let ((_e1943819483_
                                             (gx#stx-e _hd1943619478_)))
                                        (let ((_hd1943919486_
                                               (##car _e1943819483_))
                                              (_tl1944019488_
                                               (##cdr _e1943819483_)))
                                          (if (gx#stx-pair? _hd1943919486_)
                                              (let ((_e1944119491_
                                                     (gx#stx-e
                                                      _hd1943919486_)))
                                                (let ((_hd1944219494_
                                                       (##car _e1944119491_))
                                                      (_tl1944319496_
                                                       (##cdr _e1944119491_)))
                                                  (if (gx#stx-null?
                                                       _tl1944319496_)
                                                      (if (gx#stx-pair?
                                                           _tl1944019488_)
                                                          (let ((_e1944419499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1944019488_)))
                    (let ((_hd1944519502_ (##car _e1944419499_))
                          (_tl1944619504_ (##cdr _e1944419499_)))
                      (if (gx#stx-null? _tl1944619504_)
                          (if (gx#stx-null? _tl1943719480_)
                              (if (gx#stx-pair? _tl1943419472_)
                                  (let ((_e1944719507_
                                         (gx#stx-e _tl1943419472_)))
                                    (let ((_hd1944819510_
                                           (##car _e1944719507_))
                                          (_tl1944919512_
                                           (##cdr _e1944719507_)))
                                      (if (gx#stx-null? _tl1944919512_)
                                          ((lambda (_L19515_ _L19516_ _L19517_)
                                             (let* ((_lambda-id19541_
                                                     (make-symbol
                                                      (gx#stx-e _L19410_)
                                                      '"__"
                                                      (gx#stx-e _L19517_)
                                                      (gensym '__)))
                                                    (_lambda-id19543_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id19541_
                                                      (gx#stx-source
                                                       _stx19126_)))
                                                    (_g23659_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id19543_))
                                                    (_new-case-lambda-expr19546_
                                                     (gxc#apply-expression-subst
                                                      _L19515_
                                                      _L19517_
                                                      _lambda-id19543_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L19410_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id19543_))
                                                 (_lp19273_
                                                  (cons (_bind-e__opt-lambda19685__2360323604_
                                                         _L19410_
                                                         _new-case-lambda-expr19546_
                                                         '#f)
                                                        _rest19298_)
                                                  (cons (_bind-e__0__2360523606_
                                                         _lambda-id19543_
                                                         _L19516_)
                                                        _lift119276_)
                                                  _lift219277_
                                                  _bind19278_))))
                                           _hd1944819510_
                                           _hd1944519502_
                                           _hd1944219494_)
                                          (_g1942419454_ _g1942519457_))))
                                  (_g1942419454_ _g1942519457_))
                              (_g1942419454_ _g1942519457_))
                          (_g1942419454_ _g1942519457_))))
                  (_g1942419454_ _g1942519457_))
              (_g1942419454_ _g1942519457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1942419454_ _g1942519457_))))
                                      (_g1942419454_ _g1942519457_))))
                              (_g1942419454_ _g1942519457_))))
                      (_g1942419454_ _g1942519457_))))
              (_g1942419454_ _g1942519457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1942319549_ _L19409_))
                                        (_g1930219380_ _g1930419383_)))
                                  _hd1932519404_
                                  _hd1932219396_)
                                 (_g1930219380_ _g1930419383_))))
                         (_g1930219380_ _g1930419383_))
                     (_g1930219380_ _g1930419383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1930219380_
                                                      _g1930419383_))))
                                             (_g1930219380_ _g1930419383_))))
                                      (_g1930019671_
                                       (lambda (_g1930419555_)
                                         (if (gx#stx-pair? _g1930419555_)
                                             (let ((_e1930719557_
                                                    (gx#stx-e _g1930419555_)))
                                               (let ((_hd1930819560_
                                                      (##car _e1930719557_))
                                                     (_tl1930919562_
                                                      (##cdr _e1930719557_)))
                                                 (if (gx#stx-pair?
                                                      _hd1930819560_)
                                                     (let ((_e1931019565_
                                                            (gx#stx-e
                                                             _hd1930819560_)))
                                                       (let ((_hd1931119568_
                                                              (##car _e1931019565_))
                                                             (_tl1931219570_
                                                              (##cdr _e1931019565_)))
                                                         (if (gx#stx-null?
                                                              _tl1931219570_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1930919562_)
                         (let ((_e1931319573_ (gx#stx-e _tl1930919562_)))
                           (let ((_hd1931419576_ (##car _e1931319573_))
                                 (_tl1931519578_ (##cdr _e1931319573_)))
                             (if (gx#stx-null? _tl1931519578_)
                                 ((lambda (_L19581_ _L19582_)
                                    (if (if (gx#identifier? _L19582_)
                                            (gxc#case-lambda-expr? _L19581_)
                                            '#f)
                                        (let* ((_g1959719611_
                                                (lambda (_g1959819608_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1959819608_)))
                                               (_g1959619646_
                                                (lambda (_g1959819614_)
                                                  (if (gx#stx-pair?
                                                       _g1959819614_)
                                                      (let ((_e1960419616_
                                                             (gx#stx-e
                                                              _g1959819614_)))
                                                        (let ((_hd1960519619_
                                                               (##car _e1960419616_))
                                                              (_tl1960619621_
                                                               (##cdr _e1960419616_)))
                                                          ((lambda (_L19624_)
                                                             (let ((_g23660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda20112
                             _stx19126_
                             _L19582_
                             _L19624_
                             '#t)))
                       (begin
                         (let ((_g23661_ (values-count _g23660_)))
                           (if (not (fx= _g23661_ 3))
                               (error "Context expects 3 values" _g23661_)))
                         (let ((_ids19634_ (values-ref _g23660_ 0))
                               (_impls19635_ (values-ref _g23660_ 1))
                               (_clauses19636_ (values-ref _g23660_ 2)))
                           (let* ((_g23662_
                                   (for-each gx#core-bind-runtime! _ids19634_))
                                  (_xbind19639_
                                   (map _bind-e19128_ _ids19634_ _impls19635_))
                                  (_expr*19641_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses19636_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*19643_
                                   (_bind-e__opt-lambda19685__2360323604_
                                    _L19582_
                                    _expr*19641_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L19582_)
                                '" => "
                                (map gxc#identifier-symbol _ids19634_))
                               (_lp19273_
                                _rest19298_
                                _lift119276_
                                (foldl1 cons _lift219277_ _xbind19639_)
                                (cons _bind*19643_ _bind19278_))))))))
                   _tl1960619621_)))
              (_g1959719611_ _g1959819614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1959519668_
                                                (lambda (_g1959819649_)
                                                  (if (gx#stx-pair?
                                                       _g1959819649_)
                                                      (let ((_e1960019651_
                                                             (gx#stx-e
                                                              _g1959819649_)))
                                                        (let ((_hd1960119654_
                                                               (##car _e1960019651_))
                                                              (_tl1960219656_
                                                               (##cdr _e1960019651_)))
                                                          ((lambda (_L19659_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L19659_)
                         (_lp19273_
                          _rest19298_
                          _lift119276_
                          _lift219277_
                          (cons (_bind-e__opt-lambda19685__2360323604_
                                 _L19582_
                                 _L19581_
                                 '#f)
                                _bind19278_))
                         (_g1959619646_ _g1959819649_)))
                   _tl1960219656_)))
              (_g1959619646_ _g1959819649_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1959519668_ _L19581_))
                                        (_g1930119552_ _g1930419555_)))
                                  _hd1931419576_
                                  _hd1931119568_)
                                 (_g1930119552_ _g1930419555_))))
                         (_g1930119552_ _g1930419555_))
                     (_g1930119552_ _g1930419555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1930119552_
                                                      _g1930419555_))))
                                             (_g1930119552_ _g1930419555_)))))
                                 (_g1930019671_ _hd19299_)))))
                       (if (##pair? _rest1927919287_)
                           (let ((_hd1928419677_ (##car _rest1927919287_))
                                 (_tl1928519679_ (##cdr _rest1927919287_)))
                             (let* ((_hd19682_ _hd1928419677_)
                                    (_rest19684_ _tl1928519679_))
                               (_K1928319674_ _rest19684_ _hd19682_)))
                           (_else1928119295_)))))))
        (let* ((_g1913219158_
                (lambda (_g1913319155_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1913319155_)))
               (_g1913119165_
                (lambda (_g1913319161_)
                  ((lambda () (gxc#xform-let-values% _stx19126_)))))
               (_g1913019268_
                (lambda (_g1913319168_)
                  (if (gx#stx-pair? _g1913319168_)
                      (let ((_e1913619170_ (gx#stx-e _g1913319168_)))
                        (let ((_hd1913719173_ (##car _e1913619170_))
                              (_tl1913819175_ (##cdr _e1913619170_)))
                          (if (gx#stx-pair? _tl1913819175_)
                              (let ((_e1913919178_ (gx#stx-e _tl1913819175_)))
                                (let ((_hd1914019181_ (##car _e1913919178_))
                                      (_tl1914119183_ (##cdr _e1913919178_)))
                                  (if (gx#stx-pair/null? _hd1914019181_)
                                      (if (fx>= (gx#stx-length _hd1914019181_)
                                                '0)
                                          (let ((_g23663_
                                                 (gx#syntax-split-splice
                                                  _hd1914019181_
                                                  '0)))
                                            (begin
                                              (let ((_g23664_
                                                     (values-count _g23663_)))
                                                (if (not (fx= _g23664_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23664_)))
                                              (let ((_target1914219186_
                                                     (values-ref _g23663_ 0))
                                                    (_tl1914419188_
                                                     (values-ref _g23663_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1914419188_)
                                                    (letrec ((_loop1914519191_
                                                              (lambda (_hd1914319194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1914919196_)
                        (if (gx#stx-pair? _hd1914319194_)
                            (let ((_e1914619199_ (gx#stx-e _hd1914319194_)))
                              (let ((_lp-hd1914719202_ (##car _e1914619199_))
                                    (_lp-tl1914819204_ (##cdr _e1914619199_)))
                                (_loop1914519191_
                                 _lp-tl1914819204_
                                 (cons _lp-hd1914719202_ _bind1914919196_))))
                            (let ((_bind1915019207_
                                   (reverse _bind1914919196_)))
                              (if (gx#stx-pair? _tl1914119183_)
                                  (let ((_e1915119210_
                                         (gx#stx-e _tl1914119183_)))
                                    (let ((_hd1915219213_
                                           (##car _e1915119210_))
                                          (_tl1915319215_
                                           (##cdr _e1915119210_)))
                                      (if (gx#stx-null? _tl1915319215_)
                                          ((lambda (_L19218_ _L19219_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1923919242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1924019244_)
                             (cons _g1923919242_ _g1924019244_))
                           '()
                           _L19219_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_g23665_
                                                           (_compile-bindings19129_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1924719250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1924819252_)
                                (cons _g1924719250_ _g1924819252_))
                              '()
                              _L19219_)))))
              (begin
                (let ((_g23666_ (values-count _g23665_)))
                  (if (not (fx= _g23666_ 3))
                      (error "Context expects 3 values" _g23666_)))
                (let ((_lift119255_ (values-ref _g23665_ 0))
                      (_lift219256_ (values-ref _g23665_ 1))
                      (_hd19257_ (values-ref _g23665_ 2)))
                  (let* ((_body19259_ (gxc#compile-e _L19218_))
                         (_expr19261_
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons _hd19257_ (cons _body19259_ '())))
                           _stx19126_))
                         (_expr19263_
                          (if (null? _lift219256_)
                              _expr19261_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift219256_
                                           (cons _expr19261_ '())))
                               _stx19126_)))
                         (_expr19265_
                          (if (null? _lift119255_)
                              _expr19263_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift119255_
                                           (cons _expr19263_ '())))
                               _stx19126_))))
                    _expr19265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj23613
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj23613)
                                                      __obj23613)))
                                                 (_g1913119165_
                                                  _g1913319168_)))
                                           _hd1915219213_
                                           _bind1915019207_)
                                          (_g1913119165_ _g1913319168_))))
                                  (_g1913119165_ _g1913319168_)))))))
              (_loop1914519191_ _target1914219186_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1913119165_
                                                     _g1913319168_)))))
                                          (_g1913119165_ _g1913319168_))
                                      (_g1913119165_ _g1913319168_))))
                              (_g1913119165_ _g1913319168_))))
                      (_g1913119165_ _g1913319168_)))))
          (_g1913019268_ _stx19126_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx18558_)
      (letrec* ((_bind-e__opt-lambda19108__2360823609_
                 (lambda (_id19110_ _expr19111_ _compile?19112_)
                   (cons (cons _id19110_ '())
                         (cons (if _compile?19112_
                                   (gxc#compile-e _expr19111_)
                                   _expr19111_)
                               '()))))
                (_bind-e__0__2361023611_
                 (lambda (_id19117_ _expr19118_)
                   (let ((_compile?19120_ '#t))
                     (_bind-e__opt-lambda19108__2360823609_
                      _id19117_
                      _expr19118_
                      _compile?19120_))))
                (_bind-e18560_
                 (lambda _g23668_
                   (let ((_g23667_ (length _g23668_)))
                     (cond ((fx= _g23667_ 2)
                            (apply _bind-e__0__2361023611_ _g23668_))
                           ((fx= _g23667_ 3)
                            (apply _bind-e__opt-lambda19108__2360823609_
                                   _g23668_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g23668_))))))
                (_compile-bindings18561_
                 (lambda (_rest18696_)
                   (let _lp18698_ ((_rest18700_ _rest18696_) (_bind18701_ '()))
                     (let* ((_rest1870218710_ _rest18700_)
                            (_E1870518714_
                             (lambda ()
                               (error '"No clause matching" _rest1870218710_)))
                            (_else1870418718_
                             (lambda () (reverse _bind18701_)))
                            (_K1870619097_
                             (lambda (_rest18721_ _hd18722_)
                               (let* ((_g1872618762_
                                       (lambda (_g1872718759_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1872718759_)))
                                      (_g1872518803_
                                       (lambda (_g1872718765_)
                                         (if (gx#stx-pair? _g1872718765_)
                                             (let ((_e1875218767_
                                                    (gx#stx-e _g1872718765_)))
                                               (let ((_hd1875318770_
                                                      (##car _e1875218767_))
                                                     (_tl1875418772_
                                                      (##cdr _e1875218767_)))
                                                 (if (gx#stx-pair?
                                                      _tl1875418772_)
                                                     (let ((_e1875518775_
                                                            (gx#stx-e
                                                             _tl1875418772_)))
                                                       (let ((_hd1875618778_
                                                              (##car _e1875518775_))
                                                             (_tl1875718780_
                                                              (##cdr _e1875518775_)))
                                                         (if (gx#stx-null?
                                                              _tl1875718780_)
                                                             ((lambda (_L18783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L18784_)
                        (_lp18698_
                         _rest18721_
                         (cons (cons _L18784_
                                     (cons (gxc#compile-e _L18783_) '()))
                               _bind18701_)))
                      _hd1875618778_
                      _hd1875318770_)
                     (_g1872618762_ _g1872718765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1872618762_
                                                      _g1872718765_))))
                                             (_g1872618762_ _g1872718765_))))
                                      (_g1872418975_
                                       (lambda (_g1872718806_)
                                         (if (gx#stx-pair? _g1872718806_)
                                             (let ((_e1874118808_
                                                    (gx#stx-e _g1872718806_)))
                                               (let ((_hd1874218811_
                                                      (##car _e1874118808_))
                                                     (_tl1874318813_
                                                      (##cdr _e1874118808_)))
                                                 (if (gx#stx-pair?
                                                      _hd1874218811_)
                                                     (let ((_e1874418816_
                                                            (gx#stx-e
                                                             _hd1874218811_)))
                                                       (let ((_hd1874518819_
                                                              (##car _e1874418816_))
                                                             (_tl1874618821_
                                                              (##cdr _e1874418816_)))
                                                         (if (gx#stx-null?
                                                              _tl1874618821_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1874318813_)
                         (let ((_e1874718824_ (gx#stx-e _tl1874318813_)))
                           (let ((_hd1874818827_ (##car _e1874718824_))
                                 (_tl1874918829_ (##cdr _e1874718824_)))
                             (if (gx#stx-null? _tl1874918829_)
                                 ((lambda (_L18832_ _L18833_)
                                    (if (if (gx#identifier? _L18833_)
                                            (gxc#opt-lambda-expr? _L18832_)
                                            '#f)
                                        (let* ((_g1884718877_
                                                (lambda (_g1884818874_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1884818874_)))
                                               (_g1884618972_
                                                (lambda (_g1884818880_)
                                                  (if (gx#stx-pair?
                                                       _g1884818880_)
                                                      (let ((_e1885218882_
                                                             (gx#stx-e
                                                              _g1884818880_)))
                                                        (let ((_hd1885318885_
                                                               (##car _e1885218882_))
                                                              (_tl1885418887_
                                                               (##cdr _e1885218882_)))
                                                          (if (gx#stx-pair?
                                                               _tl1885418887_)
                                                              (let ((_e1885518890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1885418887_)))
                        (let ((_hd1885618893_ (##car _e1885518890_))
                              (_tl1885718895_ (##cdr _e1885518890_)))
                          (if (gx#stx-pair? _hd1885618893_)
                              (let ((_e1885818898_ (gx#stx-e _hd1885618893_)))
                                (let ((_hd1885918901_ (##car _e1885818898_))
                                      (_tl1886018903_ (##cdr _e1885818898_)))
                                  (if (gx#stx-pair? _hd1885918901_)
                                      (let ((_e1886118906_
                                             (gx#stx-e _hd1885918901_)))
                                        (let ((_hd1886218909_
                                               (##car _e1886118906_))
                                              (_tl1886318911_
                                               (##cdr _e1886118906_)))
                                          (if (gx#stx-pair? _hd1886218909_)
                                              (let ((_e1886418914_
                                                     (gx#stx-e
                                                      _hd1886218909_)))
                                                (let ((_hd1886518917_
                                                       (##car _e1886418914_))
                                                      (_tl1886618919_
                                                       (##cdr _e1886418914_)))
                                                  (if (gx#stx-null?
                                                       _tl1886618919_)
                                                      (if (gx#stx-pair?
                                                           _tl1886318911_)
                                                          (let ((_e1886718922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1886318911_)))
                    (let ((_hd1886818925_ (##car _e1886718922_))
                          (_tl1886918927_ (##cdr _e1886718922_)))
                      (if (gx#stx-null? _tl1886918927_)
                          (if (gx#stx-null? _tl1886018903_)
                              (if (gx#stx-pair? _tl1885718895_)
                                  (let ((_e1887018930_
                                         (gx#stx-e _tl1885718895_)))
                                    (let ((_hd1887118933_
                                           (##car _e1887018930_))
                                          (_tl1887218935_
                                           (##cdr _e1887018930_)))
                                      (if (gx#stx-null? _tl1887218935_)
                                          ((lambda (_L18938_ _L18939_ _L18940_)
                                             (let* ((_lambda-id18964_
                                                     (make-symbol
                                                      (gx#stx-e _L18833_)
                                                      '"__"
                                                      (gx#stx-e _L18940_)
                                                      (gensym '__)))
                                                    (_lambda-id18966_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id18964_
                                                      (gx#stx-source
                                                       _stx18558_)))
                                                    (_g23669_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id18966_))
                                                    (_new-case-lambda-expr18969_
                                                     (gxc#apply-expression-subst
                                                      _L18938_
                                                      _L18940_
                                                      _lambda-id18966_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L18833_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id18966_))
                                                 (_lp18698_
                                                  (cons (_bind-e__opt-lambda19108__2360823609_
                                                         _L18833_
                                                         _new-case-lambda-expr18969_
                                                         '#f)
                                                        _rest18721_)
                                                  (cons (_bind-e__0__2361023611_
                                                         _lambda-id18966_
                                                         _L18939_)
                                                        _bind18701_)))))
                                           _hd1887118933_
                                           _hd1886818925_
                                           _hd1886518917_)
                                          (_g1884718877_ _g1884818880_))))
                                  (_g1884718877_ _g1884818880_))
                              (_g1884718877_ _g1884818880_))
                          (_g1884718877_ _g1884818880_))))
                  (_g1884718877_ _g1884818880_))
              (_g1884718877_ _g1884818880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1884718877_ _g1884818880_))))
                                      (_g1884718877_ _g1884818880_))))
                              (_g1884718877_ _g1884818880_))))
                      (_g1884718877_ _g1884818880_))))
              (_g1884718877_ _g1884818880_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1884618972_ _L18832_))
                                        (_g1872518803_ _g1872718806_)))
                                  _hd1874818827_
                                  _hd1874518819_)
                                 (_g1872518803_ _g1872718806_))))
                         (_g1872518803_ _g1872718806_))
                     (_g1872518803_ _g1872718806_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1872518803_
                                                      _g1872718806_))))
                                             (_g1872518803_ _g1872718806_))))
                                      (_g1872319094_
                                       (lambda (_g1872718978_)
                                         (if (gx#stx-pair? _g1872718978_)
                                             (let ((_e1873018980_
                                                    (gx#stx-e _g1872718978_)))
                                               (let ((_hd1873118983_
                                                      (##car _e1873018980_))
                                                     (_tl1873218985_
                                                      (##cdr _e1873018980_)))
                                                 (if (gx#stx-pair?
                                                      _hd1873118983_)
                                                     (let ((_e1873318988_
                                                            (gx#stx-e
                                                             _hd1873118983_)))
                                                       (let ((_hd1873418991_
                                                              (##car _e1873318988_))
                                                             (_tl1873518993_
                                                              (##cdr _e1873318988_)))
                                                         (if (gx#stx-null?
                                                              _tl1873518993_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1873218985_)
                         (let ((_e1873618996_ (gx#stx-e _tl1873218985_)))
                           (let ((_hd1873718999_ (##car _e1873618996_))
                                 (_tl1873819001_ (##cdr _e1873618996_)))
                             (if (gx#stx-null? _tl1873819001_)
                                 ((lambda (_L19004_ _L19005_)
                                    (if (if (gx#identifier? _L19005_)
                                            (gxc#case-lambda-expr? _L19004_)
                                            '#f)
                                        (let* ((_g1902019034_
                                                (lambda (_g1902119031_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1902119031_)))
                                               (_g1901919069_
                                                (lambda (_g1902119037_)
                                                  (if (gx#stx-pair?
                                                       _g1902119037_)
                                                      (let ((_e1902719039_
                                                             (gx#stx-e
                                                              _g1902119037_)))
                                                        (let ((_hd1902819042_
                                                               (##car _e1902719039_))
                                                              (_tl1902919044_
                                                               (##cdr _e1902719039_)))
                                                          ((lambda (_L19047_)
                                                             (let ((_g23670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda20112
                             _stx18558_
                             _L19005_
                             _L19047_
                             '#t)))
                       (begin
                         (let ((_g23671_ (values-count _g23670_)))
                           (if (not (fx= _g23671_ 3))
                               (error "Context expects 3 values" _g23671_)))
                         (let ((_ids19057_ (values-ref _g23670_ 0))
                               (_impls19058_ (values-ref _g23670_ 1))
                               (_clauses19059_ (values-ref _g23670_ 2)))
                           (let* ((_g23672_
                                   (for-each gx#core-bind-runtime! _ids19057_))
                                  (_xbind19062_
                                   (map _bind-e18560_ _ids19057_ _impls19058_))
                                  (_expr*19064_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses19059_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*19066_
                                   (_bind-e__opt-lambda19108__2360823609_
                                    _L19005_
                                    _expr*19064_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L19005_)
                                '" => "
                                (map gxc#identifier-symbol _ids19057_))
                               (_lp18698_
                                _rest18721_
                                (cons _bind*19066_
                                      (foldl1 cons
                                              _bind18701_
                                              _xbind19062_)))))))))
                   _tl1902919044_)))
              (_g1902019034_ _g1902119037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1901819091_
                                                (lambda (_g1902119072_)
                                                  (if (gx#stx-pair?
                                                       _g1902119072_)
                                                      (let ((_e1902319074_
                                                             (gx#stx-e
                                                              _g1902119072_)))
                                                        (let ((_hd1902419077_
                                                               (##car _e1902319074_))
                                                              (_tl1902519079_
                                                               (##cdr _e1902319074_)))
                                                          ((lambda (_L19082_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L19082_)
                         (_lp18698_
                          _rest18721_
                          (cons (_bind-e__opt-lambda19108__2360823609_
                                 _L19005_
                                 _L19004_
                                 '#f)
                                _bind18701_))
                         (_g1901919069_ _g1902119072_)))
                   _tl1902519079_)))
              (_g1901919069_ _g1902119072_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1901819091_ _L19004_))
                                        (_g1872418975_ _g1872718978_)))
                                  _hd1873718999_
                                  _hd1873418991_)
                                 (_g1872418975_ _g1872718978_))))
                         (_g1872418975_ _g1872718978_))
                     (_g1872418975_ _g1872718978_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1872418975_
                                                      _g1872718978_))))
                                             (_g1872418975_ _g1872718978_)))))
                                 (_g1872319094_ _hd18722_)))))
                       (if (##pair? _rest1870218710_)
                           (let ((_hd1870719100_ (##car _rest1870218710_))
                                 (_tl1870819102_ (##cdr _rest1870218710_)))
                             (let* ((_hd19105_ _hd1870719100_)
                                    (_rest19107_ _tl1870819102_))
                               (_K1870619097_ _rest19107_ _hd19105_)))
                           (_else1870418718_)))))))
        (let* ((_g1856418591_
                (lambda (_g1856518588_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1856518588_)))
               (_g1856318598_
                (lambda (_g1856518594_)
                  ((lambda () (gxc#xform-let-values% _stx18558_)))))
               (_g1856218693_
                (lambda (_g1856518601_)
                  (if (gx#stx-pair? _g1856518601_)
                      (let ((_e1856918603_ (gx#stx-e _g1856518601_)))
                        (let ((_hd1857018606_ (##car _e1856918603_))
                              (_tl1857118608_ (##cdr _e1856918603_)))
                          (if (gx#stx-pair? _tl1857118608_)
                              (let ((_e1857218611_ (gx#stx-e _tl1857118608_)))
                                (let ((_hd1857318614_ (##car _e1857218611_))
                                      (_tl1857418616_ (##cdr _e1857218611_)))
                                  (if (gx#stx-pair/null? _hd1857318614_)
                                      (if (fx>= (gx#stx-length _hd1857318614_)
                                                '0)
                                          (let ((_g23673_
                                                 (gx#syntax-split-splice
                                                  _hd1857318614_
                                                  '0)))
                                            (begin
                                              (let ((_g23674_
                                                     (values-count _g23673_)))
                                                (if (not (fx= _g23674_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23674_)))
                                              (let ((_target1857518619_
                                                     (values-ref _g23673_ 0))
                                                    (_tl1857718621_
                                                     (values-ref _g23673_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1857718621_)
                                                    (letrec ((_loop1857818624_
                                                              (lambda (_hd1857618627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1858218629_)
                        (if (gx#stx-pair? _hd1857618627_)
                            (let ((_e1857918632_ (gx#stx-e _hd1857618627_)))
                              (let ((_lp-hd1858018635_ (##car _e1857918632_))
                                    (_lp-tl1858118637_ (##cdr _e1857918632_)))
                                (_loop1857818624_
                                 _lp-tl1858118637_
                                 (cons _lp-hd1858018635_ _bind1858218629_))))
                            (let ((_bind1858318640_
                                   (reverse _bind1858218629_)))
                              (if (gx#stx-pair? _tl1857418616_)
                                  (let ((_e1858418643_
                                         (gx#stx-e _tl1857418616_)))
                                    (let ((_hd1858518646_
                                           (##car _e1858418643_))
                                          (_tl1858618648_
                                           (##cdr _e1858418643_)))
                                      (if (gx#stx-null? _tl1858618648_)
                                          ((lambda (_L18651_ _L18652_ _L18653_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1867418677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1867518679_)
                             (cons _g1867418677_ _g1867518679_))
                           '()
                           _L18652_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd18690_
                                                           (_compile-bindings18561_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1868218685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1868318687_)
                                (cons _g1868218685_ _g1868318687_))
                              '()
                              _L18652_))))
                  (_body18691_ (gxc#compile-e _L18651_)))
              (gxc#xform-wrap-source
               (cons _L18653_ (cons _hd18690_ (cons _body18691_ '())))
               _stx18558_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj23614
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj23614)
                                                      __obj23614)))
                                                 (_g1856318598_
                                                  _g1856518601_)))
                                           _hd1858518646_
                                           _bind1858318640_
                                           _hd1857018606_)
                                          (_g1856318598_ _g1856518601_))))
                                  (_g1856318598_ _g1856518601_)))))))
              (_loop1857818624_ _target1857518619_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1856318598_
                                                     _g1856518601_)))))
                                          (_g1856318598_ _g1856518601_))
                                      (_g1856318598_ _g1856518601_))))
                              (_g1856318598_ _g1856518601_))))
                      (_g1856318598_ _g1856518601_)))))
          (_g1856218693_ _stx18558_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind18479_)
      (let* ((_g1848218499_
              (lambda (_g1848318496_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1848318496_)))
             (_g1848118506_ (lambda (_g1848318502_) ((lambda () '#f))))
             (_g1848018555_
              (lambda (_g1848318509_)
                (if (gx#stx-pair? _g1848318509_)
                    (let ((_e1848618511_ (gx#stx-e _g1848318509_)))
                      (let ((_hd1848718514_ (##car _e1848618511_))
                            (_tl1848818516_ (##cdr _e1848618511_)))
                        (if (gx#stx-pair? _hd1848718514_)
                            (let ((_e1848918519_ (gx#stx-e _hd1848718514_)))
                              (let ((_hd1849018522_ (##car _e1848918519_))
                                    (_tl1849118524_ (##cdr _e1848918519_)))
                                (if (gx#stx-null? _tl1849118524_)
                                    (if (gx#stx-pair? _tl1848818516_)
                                        (let ((_e1849218527_
                                               (gx#stx-e _tl1848818516_)))
                                          (let ((_hd1849318530_
                                                 (##car _e1849218527_))
                                                (_tl1849418532_
                                                 (##cdr _e1849218527_)))
                                            (if (gx#stx-null? _tl1849418532_)
                                                ((lambda (_L18535_ _L18536_)
                                                   (if (gx#identifier?
                                                        _L18536_)
                                                       (let ((_$e18552_
                                                              (gxc#case-lambda-expr?
                                                               _L18535_)))
                                                         (if _$e18552_
                                                             _$e18552_
                                                             (gxc#opt-lambda-expr?
                                                              _L18535_)))
                                                       '#f))
                                                 _hd1849318530_
                                                 _hd1849018522_)
                                                (_g1848118506_
                                                 _g1848318509_))))
                                        (_g1848118506_ _g1848318509_))
                                    (_g1848118506_ _g1848318509_))))
                            (_g1848118506_ _g1848318509_))))
                    (_g1848118506_ _g1848318509_)))))
        (_g1848018555_ _bind18479_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx18417_ _id18418_ _new-id18419_)
      (let* ((_g1842218435_
              (lambda (_g1842318432_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1842318432_)))
             (_g1842118442_ (lambda (_g1842318438_) ((lambda () _stx18417_))))
             (_g1842018476_
              (lambda (_g1842318445_)
                (if (gx#stx-pair? _g1842318445_)
                    (let ((_e1842518447_ (gx#stx-e _g1842318445_)))
                      (let ((_hd1842618450_ (##car _e1842518447_))
                            (_tl1842718452_ (##cdr _e1842518447_)))
                        (if (gx#stx-pair? _tl1842718452_)
                            (let ((_e1842818455_ (gx#stx-e _tl1842718452_)))
                              (let ((_hd1842918458_ (##car _e1842818455_))
                                    (_tl1843018460_ (##cdr _e1842818455_)))
                                (if (gx#stx-null? _tl1843018460_)
                                    ((lambda (_L18463_)
                                       (if (gx#free-identifier=?
                                            _L18463_
                                            _id18418_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id18419_ '()))
                                            _stx18417_)
                                           (_g1842118442_ _g1842318445_)))
                                     _hd1842918458_)
                                    (_g1842118442_ _g1842318445_))))
                            (_g1842118442_ _g1842318445_))))
                    (_g1842118442_ _g1842318445_)))))
        (_g1842018476_ _stx18417_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx18273_)
      (let* ((_g1827618307_
              (lambda (_g1827718304_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1827718304_)))
             (_g1827518352_
              (lambda (_g1827718310_)
                (if (gx#stx-pair? _g1827718310_)
                    (let ((_e1829418312_ (gx#stx-e _g1827718310_)))
                      (let ((_hd1829518315_ (##car _e1829418312_))
                            (_tl1829618317_ (##cdr _e1829418312_)))
                        (if (gx#stx-pair? _tl1829618317_)
                            (let ((_e1829718320_ (gx#stx-e _tl1829618317_)))
                              (let ((_hd1829818323_ (##car _e1829718320_))
                                    (_tl1829918325_ (##cdr _e1829718320_)))
                                (if (gx#stx-pair? _tl1829918325_)
                                    (let ((_e1830018328_
                                           (gx#stx-e _tl1829918325_)))
                                      (let ((_hd1830118331_
                                             (##car _e1830018328_))
                                            (_tl1830218333_
                                             (##cdr _e1830018328_)))
                                        (if (gx#stx-null? _tl1830218333_)
                                            ((lambda (_L18336_ _L18337_)
                                               (gxc#compile-e _L18336_))
                                             _hd1830118331_
                                             _hd1829818323_)
                                            (_g1827618307_ _g1827718310_))))
                                    (_g1827618307_ _g1827718310_))))
                            (_g1827618307_ _g1827718310_))))
                    (_g1827618307_ _g1827718310_))))
             (_g1827418414_
              (lambda (_g1827718355_)
                (if (gx#stx-pair? _g1827718355_)
                    (let ((_e1828018357_ (gx#stx-e _g1827718355_)))
                      (let ((_hd1828118360_ (##car _e1828018357_))
                            (_tl1828218362_ (##cdr _e1828018357_)))
                        (if (gx#stx-pair? _tl1828218362_)
                            (let ((_e1828318365_ (gx#stx-e _tl1828218362_)))
                              (let ((_hd1828418368_ (##car _e1828318365_))
                                    (_tl1828518370_ (##cdr _e1828318365_)))
                                (if (gx#stx-pair? _hd1828418368_)
                                    (let ((_e1828618373_
                                           (gx#stx-e _hd1828418368_)))
                                      (let ((_hd1828718376_
                                             (##car _e1828618373_))
                                            (_tl1828818378_
                                             (##cdr _e1828618373_)))
                                        (if (gx#stx-null? _tl1828818378_)
                                            (if (gx#stx-pair? _tl1828518370_)
                                                (let ((_e1828918381_
                                                       (gx#stx-e
                                                        _tl1828518370_)))
                                                  (let ((_hd1829018384_
                                                         (##car _e1828918381_))
                                                        (_tl1829118386_
                                                         (##cdr _e1828918381_)))
                                                    (if (gx#stx-null?
                                                         _tl1829118386_)
                                                        ((lambda (_L18389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18390_)
                   (if (gx#identifier? _L18390_)
                       (let ((_sym18406_
                              (gxc#generate-runtime-binding-id _L18390_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym18406_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym18406_)
                               (let ((_type1840718409_
                                      (gxc#apply-basic-expression-type
                                       _L18389_)))
                                 (if _type1840718409_
                                     (let ((_type18412_ _type1840718409_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym18406_
                                        _type18412_))
                                     '#f)))
                           (gxc#compile-e _L18389_)))
                       (_g1827518352_ _g1827718355_)))
                 _hd1829018384_
                 _hd1828718376_)
                (_g1827518352_ _g1827718355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1827518352_ _g1827718355_))
                                            (_g1827518352_ _g1827718355_))))
                                    (_g1827518352_ _g1827718355_))))
                            (_g1827518352_ _g1827718355_))))
                    (_g1827518352_ _g1827718355_)))))
        (_g1827418414_ _stx18273_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx18058_)
      (letrec ((_collect-e18060_
                (lambda (_hd18217_ _expr18218_)
                  (let* ((_g1822118231_
                          (lambda (_g1822218228_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1822218228_)))
                         (_g1822018238_
                          (lambda (_g1822218234_) ((lambda () '#!void))))
                         (_g1821918270_
                          (lambda (_g1822218241_)
                            (if (gx#stx-pair? _g1822218241_)
                                (let ((_e1822418243_ (gx#stx-e _g1822218241_)))
                                  (let ((_hd1822518246_ (##car _e1822418243_))
                                        (_tl1822618248_ (##cdr _e1822418243_)))
                                    (if (gx#stx-null? _tl1822618248_)
                                        ((lambda (_L18251_)
                                           (if (gx#identifier? _L18251_)
                                               (let ((_sym18262_
                                                      (gxc#generate-runtime-binding-id
                                                       _L18251_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym18262_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym18262_)
                                                     (let ((_type1826318265_
                                                            (gxc#apply-basic-expression-type
                                                             _expr18218_)))
                                                       (if _type1826318265_
                                                           (let ((_type18268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1826318265_))
                     (gxc#optimizer-declare-type!__opt-lambda23021
                      _sym18262_
                      _type18268_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1822018238_ _g1822218241_)))
                                         _hd1822518246_)
                                        (_g1822018238_ _g1822218241_))))
                                (_g1822018238_ _g1822218241_)))))
                    (_g1821918270_ _hd18217_)))))
        (let* ((_g1806218097_
                (lambda (_g1806318094_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1806318094_)))
               (_g1806118214_
                (lambda (_g1806318100_)
                  (if (gx#stx-pair? _g1806318100_)
                      (let ((_e1806718102_ (gx#stx-e _g1806318100_)))
                        (let ((_hd1806818105_ (##car _e1806718102_))
                              (_tl1806918107_ (##cdr _e1806718102_)))
                          (if (gx#stx-pair? _tl1806918107_)
                              (let ((_e1807018110_ (gx#stx-e _tl1806918107_)))
                                (let ((_hd1807118113_ (##car _e1807018110_))
                                      (_tl1807218115_ (##cdr _e1807018110_)))
                                  (if (gx#stx-pair/null? _hd1807118113_)
                                      (if (fx>= (gx#stx-length _hd1807118113_)
                                                '0)
                                          (let ((_g23675_
                                                 (gx#syntax-split-splice
                                                  _hd1807118113_
                                                  '0)))
                                            (begin
                                              (let ((_g23676_
                                                     (values-count _g23675_)))
                                                (if (not (fx= _g23676_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23676_)))
                                              (let ((_target1807318118_
                                                     (values-ref _g23675_ 0))
                                                    (_tl1807518120_
                                                     (values-ref _g23675_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1807518120_)
                                                    (letrec ((_loop1807618123_
                                                              (lambda (_hd1807418126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr1808018128_
                               _hd1808118130_)
                        (if (gx#stx-pair? _hd1807418126_)
                            (let ((_e1807718133_ (gx#stx-e _hd1807418126_)))
                              (let ((_lp-hd1807818136_ (##car _e1807718133_))
                                    (_lp-tl1807918138_ (##cdr _e1807718133_)))
                                (if (gx#stx-pair? _lp-hd1807818136_)
                                    (let ((_e1808418141_
                                           (gx#stx-e _lp-hd1807818136_)))
                                      (let ((_hd1808518144_
                                             (##car _e1808418141_))
                                            (_tl1808618146_
                                             (##cdr _e1808418141_)))
                                        (if (gx#stx-pair? _tl1808618146_)
                                            (let ((_e1808718149_
                                                   (gx#stx-e _tl1808618146_)))
                                              (let ((_hd1808818152_
                                                     (##car _e1808718149_))
                                                    (_tl1808918154_
                                                     (##cdr _e1808718149_)))
                                                (if (gx#stx-null?
                                                     _tl1808918154_)
                                                    (_loop1807618123_
                                                     _lp-tl1807918138_
                                                     (cons _hd1808818152_
                                                           _expr1808018128_)
                                                     (cons _hd1808518144_
                                                           _hd1808118130_))
                                                    (_g1806218097_
                                                     _g1806318100_))))
                                            (_g1806218097_ _g1806318100_))))
                                    (_g1806218097_ _g1806318100_))))
                            (let ((_expr1808218157_ (reverse _expr1808018128_))
                                  (_hd1808318159_ (reverse _hd1808118130_)))
                              (if (gx#stx-pair? _tl1807218115_)
                                  (let ((_e1809018162_
                                         (gx#stx-e _tl1807218115_)))
                                    (let ((_hd1809118165_
                                           (##car _e1809018162_))
                                          (_tl1809218167_
                                           (##cdr _e1809018162_)))
                                      (if (gx#stx-null? _tl1809218167_)
                                          ((lambda (_L18170_ _L18171_ _L18172_)
                                             (begin
                                               (for-each
                                                _collect-e18060_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1819218195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1819318197_)
                    (cons _g1819218195_ _g1819318197_))
                  '()
                  _L18172_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1819918202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1820018204_)
                    (cons _g1819918202_ _g1820018204_))
                  '()
                  _L18171_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1820618209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1820718211_)
                    (cons _g1820618209_ _g1820718211_))
                  '()
                  _L18171_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L18170_)))
                                           _hd1809118165_
                                           _expr1808218157_
                                           _hd1808318159_)
                                          (_g1806218097_ _g1806318100_))))
                                  (_g1806218097_ _g1806318100_)))))))
              (_loop1807618123_ _target1807318118_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1806218097_
                                                     _g1806318100_)))))
                                          (_g1806218097_ _g1806318100_))
                                      (_g1806218097_ _g1806318100_))))
                              (_g1806218097_ _g1806318100_))))
                      (_g1806218097_ _g1806318100_)))))
          (_g1806118214_ _stx18058_)))))
  (define gxc#collect-type-call%
    (lambda (_stx17612_)
      (let* ((_g1761617718_
              (lambda (_g1761717715_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1761717715_)))
             (_g1761517725_ (lambda (_g1761717721_) ((lambda () '#!void))))
             (_g1761417875_
              (lambda (_g1761717728_)
                (if (gx#stx-pair? _g1761717728_)
                    (let ((_e1767517730_ (gx#stx-e _g1761717728_)))
                      (let ((_hd1767617733_ (##car _e1767517730_))
                            (_tl1767717735_ (##cdr _e1767517730_)))
                        (if (gx#stx-pair? _tl1767717735_)
                            (let ((_e1767817738_ (gx#stx-e _tl1767717735_)))
                              (let ((_hd1767917741_ (##car _e1767817738_))
                                    (_tl1768017743_ (##cdr _e1767817738_)))
                                (if (gx#stx-pair? _hd1767917741_)
                                    (let ((_e1768117746_
                                           (gx#stx-e _hd1767917741_)))
                                      (let ((_hd1768217749_
                                             (##car _e1768117746_))
                                            (_tl1768317751_
                                             (##cdr _e1768117746_)))
                                        (if (gx#identifier? _hd1768217749_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1768217749_)
                                                (if (gx#stx-pair?
                                                     _tl1768317751_)
                                                    (let ((_e1768417754_
                                                           (gx#stx-e
                                                            _tl1768317751_)))
                                                      (let ((_hd1768517757_
                                                             (##car _e1768417754_))
                                                            (_tl1768617759_
                                                             (##cdr _e1768417754_)))
                                                        (if (gx#stx-null?
                                                             _tl1768617759_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1768017743_)
                        (let ((_e1768717762_ (gx#stx-e _tl1768017743_)))
                          (let ((_hd1768817765_ (##car _e1768717762_))
                                (_tl1768917767_ (##cdr _e1768717762_)))
                            (if (gx#stx-pair? _hd1768817765_)
                                (let ((_e1769017770_
                                       (gx#stx-e _hd1768817765_)))
                                  (let ((_hd1769117773_ (##car _e1769017770_))
                                        (_tl1769217775_ (##cdr _e1769017770_)))
                                    (if (gx#identifier? _hd1769117773_)
                                        (if (gx#stx-eq? '%#ref _hd1769117773_)
                                            (if (gx#stx-pair? _tl1769217775_)
                                                (let ((_e1769317778_
                                                       (gx#stx-e
                                                        _tl1769217775_)))
                                                  (let ((_hd1769417781_
                                                         (##car _e1769317778_))
                                                        (_tl1769517783_
                                                         (##cdr _e1769317778_)))
                                                    (if (gx#stx-null?
                                                         _tl1769517783_)
                                                        (if (gx#stx-pair?
                                                             _tl1768917767_)
                                                            (let ((_e1769617786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1768917767_)))
                      (let ((_hd1769717789_ (##car _e1769617786_))
                            (_tl1769817791_ (##cdr _e1769617786_)))
                        (if (gx#stx-pair? _hd1769717789_)
                            (let ((_e1769917794_ (gx#stx-e _hd1769717789_)))
                              (let ((_hd1770017797_ (##car _e1769917794_))
                                    (_tl1770117799_ (##cdr _e1769917794_)))
                                (if (gx#identifier? _hd1770017797_)
                                    (if (gx#stx-eq? '%#quote _hd1770017797_)
                                        (if (gx#stx-pair? _tl1770117799_)
                                            (let ((_e1770217802_
                                                   (gx#stx-e _tl1770117799_)))
                                              (let ((_hd1770317805_
                                                     (##car _e1770217802_))
                                                    (_tl1770417807_
                                                     (##cdr _e1770217802_)))
                                                (if (gx#stx-null?
                                                     _tl1770417807_)
                                                    (if (gx#stx-pair?
                                                         _tl1769817791_)
                                                        (let ((_e1770517810_
                                                               (gx#stx-e
                                                                _tl1769817791_)))
                                                          (let ((_hd1770617813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1770517810_))
                        (_tl1770717815_ (##cdr _e1770517810_)))
                    (if (gx#stx-pair? _hd1770617813_)
                        (let ((_e1770817818_ (gx#stx-e _hd1770617813_)))
                          (let ((_hd1770917821_ (##car _e1770817818_))
                                (_tl1771017823_ (##cdr _e1770817818_)))
                            (if (gx#identifier? _hd1770917821_)
                                (if (gx#stx-eq? '%#ref _hd1770917821_)
                                    (if (gx#stx-pair? _tl1771017823_)
                                        (let ((_e1771117826_
                                               (gx#stx-e _tl1771017823_)))
                                          (let ((_hd1771217829_
                                                 (##car _e1771117826_))
                                                (_tl1771317831_
                                                 (##cdr _e1771117826_)))
                                            (if (gx#stx-null? _tl1771317831_)
                                                (if (gx#stx-null?
                                                     _tl1770717815_)
                                                    ((lambda (_L17834_
                                                              _L17835_
                                                              _L17836_
                                                              _L17837_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__opt-lambda22997
                    (gxc#generate-runtime-binding-id _L17836_)
                    (gx#stx-e _L17835_)
                    (gxc#generate-runtime-binding-id _L17834_)
                    '#f)
                   (_g1761517725_ _g1761717728_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1771217829_
                                                     _hd1770317805_
                                                     _hd1769417781_
                                                     _hd1768517757_)
                                                    (_g1761517725_
                                                     _g1761717728_))
                                                (_g1761517725_
                                                 _g1761717728_))))
                                        (_g1761517725_ _g1761717728_))
                                    (_g1761517725_ _g1761717728_))
                                (_g1761517725_ _g1761717728_))))
                        (_g1761517725_ _g1761717728_))))
                (_g1761517725_ _g1761717728_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1761517725_
                                                     _g1761717728_))))
                                            (_g1761517725_ _g1761717728_))
                                        (_g1761517725_ _g1761717728_))
                                    (_g1761517725_ _g1761717728_))))
                            (_g1761517725_ _g1761717728_))))
                    (_g1761517725_ _g1761717728_))
                (_g1761517725_ _g1761717728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1761517725_ _g1761717728_))
                                            (_g1761517725_ _g1761717728_))
                                        (_g1761517725_ _g1761717728_))))
                                (_g1761517725_ _g1761717728_))))
                        (_g1761517725_ _g1761717728_))
                    (_g1761517725_ _g1761717728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1761517725_
                                                     _g1761717728_))
                                                (_g1761517725_ _g1761717728_))
                                            (_g1761517725_ _g1761717728_))))
                                    (_g1761517725_ _g1761717728_))))
                            (_g1761517725_ _g1761717728_))))
                    (_g1761517725_ _g1761717728_))))
             (_g1761318055_
              (lambda (_g1761717878_)
                (if (gx#stx-pair? _g1761717878_)
                    (let ((_e1762317880_ (gx#stx-e _g1761717878_)))
                      (let ((_hd1762417883_ (##car _e1762317880_))
                            (_tl1762517885_ (##cdr _e1762317880_)))
                        (if (gx#stx-pair? _tl1762517885_)
                            (let ((_e1762617888_ (gx#stx-e _tl1762517885_)))
                              (let ((_hd1762717891_ (##car _e1762617888_))
                                    (_tl1762817893_ (##cdr _e1762617888_)))
                                (if (gx#stx-pair? _hd1762717891_)
                                    (let ((_e1762917896_
                                           (gx#stx-e _hd1762717891_)))
                                      (let ((_hd1763017899_
                                             (##car _e1762917896_))
                                            (_tl1763117901_
                                             (##cdr _e1762917896_)))
                                        (if (gx#identifier? _hd1763017899_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1763017899_)
                                                (if (gx#stx-pair?
                                                     _tl1763117901_)
                                                    (let ((_e1763217904_
                                                           (gx#stx-e
                                                            _tl1763117901_)))
                                                      (let ((_hd1763317907_
                                                             (##car _e1763217904_))
                                                            (_tl1763417909_
                                                             (##cdr _e1763217904_)))
                                                        (if (gx#stx-null?
                                                             _tl1763417909_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1762817893_)
                        (let ((_e1763517912_ (gx#stx-e _tl1762817893_)))
                          (let ((_hd1763617915_ (##car _e1763517912_))
                                (_tl1763717917_ (##cdr _e1763517912_)))
                            (if (gx#stx-pair? _hd1763617915_)
                                (let ((_e1763817920_
                                       (gx#stx-e _hd1763617915_)))
                                  (let ((_hd1763917923_ (##car _e1763817920_))
                                        (_tl1764017925_ (##cdr _e1763817920_)))
                                    (if (gx#identifier? _hd1763917923_)
                                        (if (gx#stx-eq? '%#ref _hd1763917923_)
                                            (if (gx#stx-pair? _tl1764017925_)
                                                (let ((_e1764117928_
                                                       (gx#stx-e
                                                        _tl1764017925_)))
                                                  (let ((_hd1764217931_
                                                         (##car _e1764117928_))
                                                        (_tl1764317933_
                                                         (##cdr _e1764117928_)))
                                                    (if (gx#stx-null?
                                                         _tl1764317933_)
                                                        (if (gx#stx-pair?
                                                             _tl1763717917_)
                                                            (let ((_e1764417936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1763717917_)))
                      (let ((_hd1764517939_ (##car _e1764417936_))
                            (_tl1764617941_ (##cdr _e1764417936_)))
                        (if (gx#stx-pair? _hd1764517939_)
                            (let ((_e1764717944_ (gx#stx-e _hd1764517939_)))
                              (let ((_hd1764817947_ (##car _e1764717944_))
                                    (_tl1764917949_ (##cdr _e1764717944_)))
                                (if (gx#identifier? _hd1764817947_)
                                    (if (gx#stx-eq? '%#quote _hd1764817947_)
                                        (if (gx#stx-pair? _tl1764917949_)
                                            (let ((_e1765017952_
                                                   (gx#stx-e _tl1764917949_)))
                                              (let ((_hd1765117955_
                                                     (##car _e1765017952_))
                                                    (_tl1765217957_
                                                     (##cdr _e1765017952_)))
                                                (if (gx#stx-null?
                                                     _tl1765217957_)
                                                    (if (gx#stx-pair?
                                                         _tl1764617941_)
                                                        (let ((_e1765317960_
                                                               (gx#stx-e
                                                                _tl1764617941_)))
                                                          (let ((_hd1765417963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1765317960_))
                        (_tl1765517965_ (##cdr _e1765317960_)))
                    (if (gx#stx-pair? _hd1765417963_)
                        (let ((_e1765617968_ (gx#stx-e _hd1765417963_)))
                          (let ((_hd1765717971_ (##car _e1765617968_))
                                (_tl1765817973_ (##cdr _e1765617968_)))
                            (if (gx#identifier? _hd1765717971_)
                                (if (gx#stx-eq? '%#ref _hd1765717971_)
                                    (if (gx#stx-pair? _tl1765817973_)
                                        (let ((_e1765917976_
                                               (gx#stx-e _tl1765817973_)))
                                          (let ((_hd1766017979_
                                                 (##car _e1765917976_))
                                                (_tl1766117981_
                                                 (##cdr _e1765917976_)))
                                            (if (gx#stx-null? _tl1766117981_)
                                                (if (gx#stx-pair?
                                                     _tl1765517965_)
                                                    (let ((_e1766217984_
                                                           (gx#stx-e
                                                            _tl1765517965_)))
                                                      (let ((_hd1766317987_
                                                             (##car _e1766217984_))
                                                            (_tl1766417989_
                                                             (##cdr _e1766217984_)))
                                                        (if (gx#stx-pair?
                                                             _hd1766317987_)
                                                            (let ((_e1766517992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1766317987_)))
                      (let ((_hd1766617995_ (##car _e1766517992_))
                            (_tl1766717997_ (##cdr _e1766517992_)))
                        (if (gx#identifier? _hd1766617995_)
                            (if (gx#stx-eq? '%#quote _hd1766617995_)
                                (if (gx#stx-pair? _tl1766717997_)
                                    (let ((_e1766818000_
                                           (gx#stx-e _tl1766717997_)))
                                      (let ((_hd1766918003_
                                             (##car _e1766818000_))
                                            (_tl1767018005_
                                             (##cdr _e1766818000_)))
                                        (if (gx#stx-null? _tl1767018005_)
                                            (if (gx#stx-null? _tl1766417989_)
                                                ((lambda (_L18008_
                                                          _L18009_
                                                          _L18010_
                                                          _L18011_
                                                          _L18012_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L18012_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__opt-lambda22997
                                                        (gxc#generate-runtime-binding-id
                                                         _L18011_)
                                                        (gx#stx-e _L18010_)
                                                        (gxc#generate-runtime-binding-id
                                                         _L18009_)
                                                        (gx#stx-e _L18008_))
                                                       (_g1761417875_
                                                        _g1761717878_)))
                                                 _hd1766918003_
                                                 _hd1766017979_
                                                 _hd1765117955_
                                                 _hd1764217931_
                                                 _hd1763317907_)
                                                (_g1761417875_ _g1761717878_))
                                            (_g1761417875_ _g1761717878_))))
                                    (_g1761417875_ _g1761717878_))
                                (_g1761417875_ _g1761717878_))
                            (_g1761417875_ _g1761717878_))))
                    (_g1761417875_ _g1761717878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1761417875_
                                                     _g1761717878_))
                                                (_g1761417875_
                                                 _g1761717878_))))
                                        (_g1761417875_ _g1761717878_))
                                    (_g1761417875_ _g1761717878_))
                                (_g1761417875_ _g1761717878_))))
                        (_g1761417875_ _g1761717878_))))
                (_g1761417875_ _g1761717878_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1761417875_
                                                     _g1761717878_))))
                                            (_g1761417875_ _g1761717878_))
                                        (_g1761417875_ _g1761717878_))
                                    (_g1761417875_ _g1761717878_))))
                            (_g1761417875_ _g1761717878_))))
                    (_g1761417875_ _g1761717878_))
                (_g1761417875_ _g1761717878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1761417875_ _g1761717878_))
                                            (_g1761417875_ _g1761717878_))
                                        (_g1761417875_ _g1761717878_))))
                                (_g1761417875_ _g1761717878_))))
                        (_g1761417875_ _g1761717878_))
                    (_g1761417875_ _g1761717878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1761417875_
                                                     _g1761717878_))
                                                (_g1761417875_ _g1761717878_))
                                            (_g1761417875_ _g1761717878_))))
                                    (_g1761417875_ _g1761717878_))))
                            (_g1761417875_ _g1761717878_))))
                    (_g1761417875_ _g1761717878_)))))
        (_g1761318055_ _stx17612_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx17552_)
      (let* ((_g1755517568_
              (lambda (_g1755617565_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1755617565_)))
             (_g1755417575_ (lambda (_g1755617571_) ((lambda () '#f))))
             (_g1755317609_
              (lambda (_g1755617578_)
                (if (gx#stx-pair? _g1755617578_)
                    (let ((_e1755817580_ (gx#stx-e _g1755617578_)))
                      (let ((_hd1755917583_ (##car _e1755817580_))
                            (_tl1756017585_ (##cdr _e1755817580_)))
                        (if (gx#stx-pair? _tl1756017585_)
                            (let ((_e1756117588_ (gx#stx-e _tl1756017585_)))
                              (let ((_hd1756217591_ (##car _e1756117588_))
                                    (_tl1756317593_ (##cdr _e1756117588_)))
                                (if (gx#stx-null? _tl1756317593_)
                                    ((lambda (_L17596_)
                                       (gxc#compile-e _L17596_))
                                     _hd1756217591_)
                                    (_g1755417575_ _g1755617578_))))
                            (_g1755417575_ _g1755617578_))))
                    (_g1755417575_ _g1755617578_)))))
        (_g1755317609_ _stx17552_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx17485_)
      (let* ((_g1748717504_
              (lambda (_g1748817501_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1748817501_)))
             (_g1748617549_
              (lambda (_g1748817507_)
                (if (gx#stx-pair? _g1748817507_)
                    (let ((_e1749117509_ (gx#stx-e _g1748817507_)))
                      (let ((_hd1749217512_ (##car _e1749117509_))
                            (_tl1749317514_ (##cdr _e1749117509_)))
                        (if (gx#stx-pair? _tl1749317514_)
                            (let ((_e1749417517_ (gx#stx-e _tl1749317514_)))
                              (let ((_hd1749517520_ (##car _e1749417517_))
                                    (_tl1749617522_ (##cdr _e1749417517_)))
                                (if (gx#stx-pair? _tl1749617522_)
                                    (let ((_e1749717525_
                                           (gx#stx-e _tl1749617522_)))
                                      (let ((_hd1749817528_
                                             (##car _e1749717525_))
                                            (_tl1749917530_
                                             (##cdr _e1749717525_)))
                                        (if (gx#stx-null? _tl1749917530_)
                                            ((lambda (_L17533_ _L17534_)
                                               (gxc#compile-e _L17533_))
                                             _hd1749817528_
                                             _hd1749517520_)
                                            (_g1748717504_ _g1748817507_))))
                                    (_g1748717504_ _g1748817507_))))
                            (_g1748717504_ _g1748817507_))))
                    (_g1748717504_ _g1748817507_)))))
        (_g1748617549_ _stx17485_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx16910_)
      (let* ((_g1691517036_
              (lambda (_g1691617033_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1691617033_)))
             (_g1691417043_ (lambda (_g1691617039_) ((lambda () '#f))))
             (_g1691317067_
              (lambda (_g1691617046_)
                (if (gx#stx-pair? _g1691617046_)
                    (let ((_e1702917048_ (gx#stx-e _g1691617046_)))
                      (let ((_hd1703017051_ (##car _e1702917048_))
                            (_tl1703117053_ (##cdr _e1702917048_)))
                        ((lambda (_L17056_)
                           (if (gxc#dispatch-lambda-form? _L17056_)
                               (let ((__obj23615
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj23615
                                    'lambda
                                    (gxc#lambda-form-arity _L17056_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L17056_))
                                   __obj23615))
                               (_g1691417043_ _g1691617046_)))
                         _tl1703117053_)))
                    (_g1691417043_ _g1691617046_))))
             (_g1691217297_
              (lambda (_g1691617070_)
                (if (gx#stx-pair? _g1691617070_)
                    (let ((_e1697417072_ (gx#stx-e _g1691617070_)))
                      (let ((_hd1697517075_ (##car _e1697417072_))
                            (_tl1697617077_ (##cdr _e1697417072_)))
                        (if (gx#stx-pair? _tl1697617077_)
                            (let ((_e1697717080_ (gx#stx-e _tl1697617077_)))
                              (let ((_hd1697817083_ (##car _e1697717080_))
                                    (_tl1697917085_ (##cdr _e1697717080_)))
                                (if (gx#stx-pair/null? _hd1697817083_)
                                    (if (fx>= (gx#stx-length _hd1697817083_)
                                              '0)
                                        (let ((_g23677_
                                               (gx#syntax-split-splice
                                                _hd1697817083_
                                                '0)))
                                          (begin
                                            (let ((_g23678_
                                                   (values-count _g23677_)))
                                              (if (not (fx= _g23678_ 2))
                                                  (error "Context expects 2 values"
                                                         _g23678_)))
                                            (let ((_target1698017088_
                                                   (values-ref _g23677_ 0))
                                                  (_tl1698217090_
                                                   (values-ref _g23677_ 1)))
                                              (if (gx#stx-null? _tl1698217090_)
                                                  (letrec ((_loop1698317093_
                                                            (lambda (_hd1698117096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1698717098_)
                      (if (gx#stx-pair? _hd1698117096_)
                          (let ((_e1698417101_ (gx#stx-e _hd1698117096_)))
                            (let ((_lp-hd1698517104_ (##car _e1698417101_))
                                  (_lp-tl1698617106_ (##cdr _e1698417101_)))
                              (_loop1698317093_
                               _lp-tl1698617106_
                               (cons _lp-hd1698517104_ _arg1698717098_))))
                          (let ((_arg1698817109_ (reverse _arg1698717098_)))
                            (if (gx#stx-pair? _tl1697917085_)
                                (let ((_e1698917112_
                                       (gx#stx-e _tl1697917085_)))
                                  (let ((_hd1699017115_ (##car _e1698917112_))
                                        (_tl1699117117_ (##cdr _e1698917112_)))
                                    (if (gx#stx-pair? _hd1699017115_)
                                        (let ((_e1699217120_
                                               (gx#stx-e _hd1699017115_)))
                                          (let ((_hd1699317123_
                                                 (##car _e1699217120_))
                                                (_tl1699417125_
                                                 (##cdr _e1699217120_)))
                                            (if (gx#identifier? _hd1699317123_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1699317123_)
                                                    (if (gx#stx-pair?
                                                         _tl1699417125_)
                                                        (let ((_e1699517128_
                                                               (gx#stx-e
                                                                _tl1699417125_)))
                                                          (let ((_hd1699617131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1699517128_))
                        (_tl1699717133_ (##cdr _e1699517128_)))
                    (if (gx#stx-pair? _hd1699617131_)
                        (let ((_e1699817136_ (gx#stx-e _hd1699617131_)))
                          (let ((_hd1699917139_ (##car _e1699817136_))
                                (_tl1700017141_ (##cdr _e1699817136_)))
                            (if (gx#identifier? _hd1699917139_)
                                (if (gx#stx-eq? '%#ref _hd1699917139_)
                                    (if (gx#stx-pair? _tl1700017141_)
                                        (let ((_e1700117144_
                                               (gx#stx-e _tl1700017141_)))
                                          (let ((_hd1700217147_
                                                 (##car _e1700117144_))
                                                (_tl1700317149_
                                                 (##cdr _e1700117144_)))
                                            (if (gx#stx-null? _tl1700317149_)
                                                (if (gx#stx-pair?
                                                     _tl1699717133_)
                                                    (let ((_e1700417152_
                                                           (gx#stx-e
                                                            _tl1699717133_)))
                                                      (let ((_hd1700517155_
                                                             (##car _e1700417152_))
                                                            (_tl1700617157_
                                                             (##cdr _e1700417152_)))
                                                        (if (gx#stx-pair?
                                                             _hd1700517155_)
                                                            (let ((_e1700717160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1700517155_)))
                      (let ((_hd1700817163_ (##car _e1700717160_))
                            (_tl1700917165_ (##cdr _e1700717160_)))
                        (if (gx#identifier? _hd1700817163_)
                            (if (gx#stx-eq? '%#ref _hd1700817163_)
                                (if (gx#stx-pair? _tl1700917165_)
                                    (let ((_e1701017168_
                                           (gx#stx-e _tl1700917165_)))
                                      (let ((_hd1701117171_
                                             (##car _e1701017168_))
                                            (_tl1701217173_
                                             (##cdr _e1701017168_)))
                                        (if (gx#stx-null? _tl1701217173_)
                                            (if (gx#stx-pair/null?
                                                 _tl1700617157_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1700617157_)
                                                          '0)
                                                    (let ((_g23679_
                                                           (gx#syntax-split-splice
                                                            _tl1700617157_
                                                            '0)))
                                                      (begin
                                                        (let ((_g23680_
                                                               (values-count
                                                                _g23679_)))
                                                          (if (not (fx= _g23680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g23680_)))
                (let ((_target1701317176_ (values-ref _g23679_ 0))
                      (_tl1701517178_ (values-ref _g23679_ 1)))
                  (if (gx#stx-null? _tl1701517178_)
                      (letrec ((_loop1701617181_
                                (lambda (_hd1701417184_ _xarg1702017186_)
                                  (if (gx#stx-pair? _hd1701417184_)
                                      (let ((_e1701717189_
                                             (gx#stx-e _hd1701417184_)))
                                        (let ((_lp-hd1701817192_
                                               (##car _e1701717189_))
                                              (_lp-tl1701917194_
                                               (##cdr _e1701717189_)))
                                          (if (gx#stx-pair? _lp-hd1701817192_)
                                              (let ((_e1702217197_
                                                     (gx#stx-e
                                                      _lp-hd1701817192_)))
                                                (let ((_hd1702317200_
                                                       (##car _e1702217197_))
                                                      (_tl1702417202_
                                                       (##cdr _e1702217197_)))
                                                  (if (gx#identifier?
                                                       _hd1702317200_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1702317200_)
                                                          (if (gx#stx-pair?
                                                               _tl1702417202_)
                                                              (let ((_e1702517205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1702417202_)))
                        (let ((_hd1702617208_ (##car _e1702517205_))
                              (_tl1702717210_ (##cdr _e1702517205_)))
                          (if (gx#stx-null? _tl1702717210_)
                              (_loop1701617181_
                               _lp-tl1701917194_
                               (cons _hd1702617208_ _xarg1702017186_))
                              (_g1691317067_ _g1691617070_))))
                      (_g1691317067_ _g1691617070_))
                  (_g1691317067_ _g1691617070_))
              (_g1691317067_ _g1691617070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1691317067_ _g1691617070_))))
                                      (let ((_xarg1702117213_
                                             (reverse _xarg1702017186_)))
                                        (if (gx#stx-null? _tl1699117117_)
                                            ((lambda (_L17216_
                                                      _L17217_
                                                      _L17218_
                                                      _L17219_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1725617259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1725717261_)
                            (cons _g1725617259_ _g1725717261_))
                          '()
                          _L17219_)))
               (if (eq? (gxc#generate-runtime-binding-id _L17218_)
                        'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1726317266_
                                                       _g1726417268_)
                                                (cons _g1726317266_
                                                      _g1726417268_))
                                              '()
                                              _L17219_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1727017273_
                                                       _g1727117275_)
                                                (cons _g1727017273_
                                                      _g1727117275_))
                                              '()
                                              _L17216_))))
                       (andmap gx#free-identifier=?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1727717280_ _g1727817282_)
                                           (cons _g1727717280_ _g1727817282_))
                                         '()
                                         _L17219_))
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1728417287_ _g1728517289_)
                                           (cons _g1728417287_ _g1728517289_))
                                         '()
                                         _L17216_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t17292_
                                                           (gxc#generate-runtime-binding-id
                                                            _L17217_))
                                                          (_type17294_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t17292_)))
                                                     (if (##structure-instance-of?
                                                          _type17294_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t17292_)
                                                         '#f))
                                                   (_g1691317067_
                                                    _g1691617070_)))
                                             _xarg1702117213_
                                             _hd1701117171_
                                             _hd1700217147_
                                             _arg1698817109_)
                                            (_g1691317067_ _g1691617070_)))))))
                        (_loop1701617181_ _target1701317176_ '()))
                      (_g1691317067_ _g1691617070_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1691317067_
                                                     _g1691617070_))
                                                (_g1691317067_ _g1691617070_))
                                            (_g1691317067_ _g1691617070_))))
                                    (_g1691317067_ _g1691617070_))
                                (_g1691317067_ _g1691617070_))
                            (_g1691317067_ _g1691617070_))))
                    (_g1691317067_ _g1691617070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1691317067_
                                                     _g1691617070_))
                                                (_g1691317067_
                                                 _g1691617070_))))
                                        (_g1691317067_ _g1691617070_))
                                    (_g1691317067_ _g1691617070_))
                                (_g1691317067_ _g1691617070_))))
                        (_g1691317067_ _g1691617070_))))
                (_g1691317067_ _g1691617070_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1691317067_
                                                     _g1691617070_))
                                                (_g1691317067_
                                                 _g1691617070_))))
                                        (_g1691317067_ _g1691617070_))))
                                (_g1691317067_ _g1691617070_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1698317093_
                                                     _target1698017088_
                                                     '()))
                                                  (_g1691317067_
                                                   _g1691617070_)))))
                                        (_g1691317067_ _g1691617070_))
                                    (_g1691317067_ _g1691617070_))))
                            (_g1691317067_ _g1691617070_))))
                    (_g1691317067_ _g1691617070_))))
             (_g1691117482_
              (lambda (_g1691617300_)
                (if (gx#stx-pair? _g1691617300_)
                    (let ((_e1692217302_ (gx#stx-e _g1691617300_)))
                      (let ((_hd1692317305_ (##car _e1692217302_))
                            (_tl1692417307_ (##cdr _e1692217302_)))
                        (if (gx#stx-pair? _tl1692417307_)
                            (let ((_e1692517310_ (gx#stx-e _tl1692417307_)))
                              (let ((_hd1692617313_ (##car _e1692517310_))
                                    (_tl1692717315_ (##cdr _e1692517310_)))
                                (if (gx#stx-pair? _tl1692717315_)
                                    (let ((_e1692817318_
                                           (gx#stx-e _tl1692717315_)))
                                      (let ((_hd1692917321_
                                             (##car _e1692817318_))
                                            (_tl1693017323_
                                             (##cdr _e1692817318_)))
                                        (if (gx#stx-pair? _hd1692917321_)
                                            (let ((_e1693117326_
                                                   (gx#stx-e _hd1692917321_)))
                                              (let ((_hd1693217329_
                                                     (##car _e1693117326_))
                                                    (_tl1693317331_
                                                     (##cdr _e1693117326_)))
                                                (if (gx#identifier?
                                                     _hd1693217329_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1693217329_)
                                                        (if (gx#stx-pair?
                                                             _tl1693317331_)
                                                            (let ((_e1693417334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1693317331_)))
                      (let ((_hd1693517337_ (##car _e1693417334_))
                            (_tl1693617339_ (##cdr _e1693417334_)))
                        (if (gx#stx-pair? _hd1693517337_)
                            (let ((_e1693717342_ (gx#stx-e _hd1693517337_)))
                              (let ((_hd1693817345_ (##car _e1693717342_))
                                    (_tl1693917347_ (##cdr _e1693717342_)))
                                (if (gx#identifier? _hd1693817345_)
                                    (if (gx#stx-eq? '%#ref _hd1693817345_)
                                        (if (gx#stx-pair? _tl1693917347_)
                                            (let ((_e1694017350_
                                                   (gx#stx-e _tl1693917347_)))
                                              (let ((_hd1694117353_
                                                     (##car _e1694017350_))
                                                    (_tl1694217355_
                                                     (##cdr _e1694017350_)))
                                                (if (gx#stx-null?
                                                     _tl1694217355_)
                                                    (if (gx#stx-pair?
                                                         _tl1693617339_)
                                                        (let ((_e1694317358_
                                                               (gx#stx-e
                                                                _tl1693617339_)))
                                                          (let ((_hd1694417361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1694317358_))
                        (_tl1694517363_ (##cdr _e1694317358_)))
                    (if (gx#stx-pair? _hd1694417361_)
                        (let ((_e1694617366_ (gx#stx-e _hd1694417361_)))
                          (let ((_hd1694717369_ (##car _e1694617366_))
                                (_tl1694817371_ (##cdr _e1694617366_)))
                            (if (gx#identifier? _hd1694717369_)
                                (if (gx#stx-eq? '%#ref _hd1694717369_)
                                    (if (gx#stx-pair? _tl1694817371_)
                                        (let ((_e1694917374_
                                               (gx#stx-e _tl1694817371_)))
                                          (let ((_hd1695017377_
                                                 (##car _e1694917374_))
                                                (_tl1695117379_
                                                 (##cdr _e1694917374_)))
                                            (if (gx#stx-null? _tl1695117379_)
                                                (if (gx#stx-pair?
                                                     _tl1694517363_)
                                                    (let ((_e1695217382_
                                                           (gx#stx-e
                                                            _tl1694517363_)))
                                                      (let ((_hd1695317385_
                                                             (##car _e1695217382_))
                                                            (_tl1695417387_
                                                             (##cdr _e1695217382_)))
                                                        (if (gx#stx-pair?
                                                             _hd1695317385_)
                                                            (let ((_e1695517390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1695317385_)))
                      (let ((_hd1695617393_ (##car _e1695517390_))
                            (_tl1695717395_ (##cdr _e1695517390_)))
                        (if (gx#identifier? _hd1695617393_)
                            (if (gx#stx-eq? '%#ref _hd1695617393_)
                                (if (gx#stx-pair? _tl1695717395_)
                                    (let ((_e1695817398_
                                           (gx#stx-e _tl1695717395_)))
                                      (let ((_hd1695917401_
                                             (##car _e1695817398_))
                                            (_tl1696017403_
                                             (##cdr _e1695817398_)))
                                        (if (gx#stx-null? _tl1696017403_)
                                            (if (gx#stx-pair? _tl1695417387_)
                                                (let ((_e1696117406_
                                                       (gx#stx-e
                                                        _tl1695417387_)))
                                                  (let ((_hd1696217409_
                                                         (##car _e1696117406_))
                                                        (_tl1696317411_
                                                         (##cdr _e1696117406_)))
                                                    (if (gx#stx-pair?
                                                         _hd1696217409_)
                                                        (let ((_e1696417414_
                                                               (gx#stx-e
                                                                _hd1696217409_)))
                                                          (let ((_hd1696517417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1696417414_))
                        (_tl1696617419_ (##cdr _e1696417414_)))
                    (if (gx#identifier? _hd1696517417_)
                        (if (gx#stx-eq? '%#ref _hd1696517417_)
                            (if (gx#stx-pair? _tl1696617419_)
                                (let ((_e1696717422_
                                       (gx#stx-e _tl1696617419_)))
                                  (let ((_hd1696817425_ (##car _e1696717422_))
                                        (_tl1696917427_ (##cdr _e1696717422_)))
                                    (if (gx#stx-null? _tl1696917427_)
                                        (if (gx#stx-null? _tl1696317411_)
                                            (if (gx#stx-null? _tl1693017323_)
                                                ((lambda (_L17430_
                                                          _L17431_
                                                          _L17432_
                                                          _L17433_
                                                          _L17434_)
                                                   (if (if (gx#identifier?
                                                            _L17434_)
                                                           (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L17433_)
                            'apply)
                       (if (eq? (gxc#generate-runtime-binding-id _L17432_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L17434_ _L17430_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t17477_
                       (gxc#generate-runtime-binding-id _L17431_))
                      (_type17479_ (gxc#optimizer-resolve-type _type-t17477_)))
                 (if (##structure-instance-of?
                      _type17479_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t17477_)
                     '#f))
               (_g1691217297_ _g1691617300_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1696817425_
                                                 _hd1695917401_
                                                 _hd1695017377_
                                                 _hd1694117353_
                                                 _hd1692617313_)
                                                (_g1691217297_ _g1691617300_))
                                            (_g1691217297_ _g1691617300_))
                                        (_g1691217297_ _g1691617300_))))
                                (_g1691217297_ _g1691617300_))
                            (_g1691217297_ _g1691617300_))
                        (_g1691217297_ _g1691617300_))))
                (_g1691217297_ _g1691617300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1691217297_ _g1691617300_))
                                            (_g1691217297_ _g1691617300_))))
                                    (_g1691217297_ _g1691617300_))
                                (_g1691217297_ _g1691617300_))
                            (_g1691217297_ _g1691617300_))))
                    (_g1691217297_ _g1691617300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1691217297_
                                                     _g1691617300_))
                                                (_g1691217297_
                                                 _g1691617300_))))
                                        (_g1691217297_ _g1691617300_))
                                    (_g1691217297_ _g1691617300_))
                                (_g1691217297_ _g1691617300_))))
                        (_g1691217297_ _g1691617300_))))
                (_g1691217297_ _g1691617300_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1691217297_
                                                     _g1691617300_))))
                                            (_g1691217297_ _g1691617300_))
                                        (_g1691217297_ _g1691617300_))
                                    (_g1691217297_ _g1691617300_))))
                            (_g1691217297_ _g1691617300_))))
                    (_g1691217297_ _g1691617300_))
                (_g1691217297_ _g1691617300_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1691217297_
                                                     _g1691617300_))))
                                            (_g1691217297_ _g1691617300_))))
                                    (_g1691217297_ _g1691617300_))))
                            (_g1691217297_ _g1691617300_))))
                    (_g1691217297_ _g1691617300_)))))
        (_g1691117482_ _stx16910_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx16856_)
      (letrec ((_clause-e16858_
                (lambda (_form16908_)
                  (let ((__obj23616 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj23616
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form16908_)
                       (gxc#dispatch-lambda-form-delegate _form16908_))
                      __obj23616)))))
        (let* ((_g1686116871_
                (lambda (_g1686216868_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1686216868_)))
               (_g1686016878_ (lambda (_g1686216874_) ((lambda () '#f))))
               (_g1685916905_
                (lambda (_g1686216881_)
                  (if (gx#stx-pair? _g1686216881_)
                      (let ((_e1686416883_ (gx#stx-e _g1686216881_)))
                        (let ((_hd1686516886_ (##car _e1686416883_))
                              (_tl1686616888_ (##cdr _e1686416883_)))
                          ((lambda (_L16891_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L16891_)
                                 (let ((_clauses16903_
                                        (map _clause-e16858_ _L16891_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses16903_))
                                 (_g1686016878_ _g1686216881_)))
                           _tl1686616888_)))
                      (_g1686016878_ _g1686216881_)))))
          (_g1685916905_ _stx16856_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx16761_)
      (let* ((_g1676416784_
              (lambda (_g1676516781_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1676516781_)))
             (_g1676316791_ (lambda (_g1676516787_) ((lambda () '#f))))
             (_g1676216853_
              (lambda (_g1676516794_)
                (if (gx#stx-pair? _g1676516794_)
                    (let ((_e1676816796_ (gx#stx-e _g1676516794_)))
                      (let ((_hd1676916799_ (##car _e1676816796_))
                            (_tl1677016801_ (##cdr _e1676816796_)))
                        (if (gx#stx-pair? _tl1677016801_)
                            (let ((_e1677116804_ (gx#stx-e _tl1677016801_)))
                              (let ((_hd1677216807_ (##car _e1677116804_))
                                    (_tl1677316809_ (##cdr _e1677116804_)))
                                (if (gx#stx-pair? _hd1677216807_)
                                    (let ((_e1677416812_
                                           (gx#stx-e _hd1677216807_)))
                                      (let ((_hd1677516815_
                                             (##car _e1677416812_))
                                            (_tl1677616817_
                                             (##cdr _e1677416812_)))
                                        (if (gx#identifier? _hd1677516815_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1677516815_)
                                                (if (gx#stx-pair?
                                                     _tl1677616817_)
                                                    (let ((_e1677716820_
                                                           (gx#stx-e
                                                            _tl1677616817_)))
                                                      (let ((_hd1677816823_
                                                             (##car _e1677716820_))
                                                            (_tl1677916825_
                                                             (##cdr _e1677716820_)))
                                                        (if (gx#stx-null?
                                                             _tl1677916825_)
                                                            ((lambda (_L16828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16829_)
                       (let ((_type-e1684616848_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#generate-runtime-binding-id _L16829_)
                               '#f)))
                         (if _type-e1684616848_
                             (let ((_type-e16851_ _type-e1684616848_))
                               (_type-e16851_ _stx16761_ _L16828_))
                             '#f)))
                     _tl1677316809_
                     _hd1677816823_)
                    (_g1676316791_ _g1676516794_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1676316791_
                                                     _g1676516794_))
                                                (_g1676316791_ _g1676516794_))
                                            (_g1676316791_ _g1676516794_))))
                                    (_g1676316791_ _g1676516794_))))
                            (_g1676316791_ _g1676516794_))))
                    (_g1676316791_ _g1676516794_)))))
        (_g1676216853_ _stx16761_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx16246_ _args16247_)
      (let* ((_g1625116364_
              (lambda (_g1625216361_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1625216361_)))
             (_g1625016371_
              (lambda (_g1625216367_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx16246_))
                     '#f)))))
             (_g1624916578_
              (lambda (_g1625216374_)
                (if (gx#stx-pair? _g1625216374_)
                    (let ((_e1631216376_ (gx#stx-e _g1625216374_)))
                      (let ((_hd1631316379_ (##car _e1631216376_))
                            (_tl1631416381_ (##cdr _e1631216376_)))
                        (if (gx#stx-pair? _hd1631316379_)
                            (let ((_e1631516384_ (gx#stx-e _hd1631316379_)))
                              (let ((_hd1631616387_ (##car _e1631516384_))
                                    (_tl1631716389_ (##cdr _e1631516384_)))
                                (if (gx#identifier? _hd1631616387_)
                                    (if (gx#stx-eq? '%#quote _hd1631616387_)
                                        (if (gx#stx-pair? _tl1631716389_)
                                            (let ((_e1631816392_
                                                   (gx#stx-e _tl1631716389_)))
                                              (let ((_hd1631916395_
                                                     (##car _e1631816392_))
                                                    (_tl1632016397_
                                                     (##cdr _e1631816392_)))
                                                (if (gx#stx-null?
                                                     _tl1632016397_)
                                                    (if (gx#stx-pair?
                                                         _tl1631416381_)
                                                        (let ((_e1632116400_
                                                               (gx#stx-e
                                                                _tl1631416381_)))
                                                          (let ((_hd1632216403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1632116400_))
                        (_tl1632316405_ (##cdr _e1632116400_)))
                    (if (gx#stx-pair? _hd1632216403_)
                        (let ((_e1632416408_ (gx#stx-e _hd1632216403_)))
                          (let ((_hd1632516411_ (##car _e1632416408_))
                                (_tl1632616413_ (##cdr _e1632416408_)))
                            (if (gx#identifier? _hd1632516411_)
                                (if (gx#stx-eq? '%#ref _hd1632516411_)
                                    (if (gx#stx-pair? _tl1632616413_)
                                        (let ((_e1632716416_
                                               (gx#stx-e _tl1632616413_)))
                                          (let ((_hd1632816419_
                                                 (##car _e1632716416_))
                                                (_tl1632916421_
                                                 (##cdr _e1632716416_)))
                                            (if (gx#stx-null? _tl1632916421_)
                                                (if (gx#stx-pair?
                                                     _tl1632316405_)
                                                    (let ((_e1633016424_
                                                           (gx#stx-e
                                                            _tl1632316405_)))
                                                      (let ((_hd1633116427_
                                                             (##car _e1633016424_))
                                                            (_tl1633216429_
                                                             (##cdr _e1633016424_)))
                                                        (if (gx#stx-pair?
                                                             _hd1633116427_)
                                                            (let ((_e1633316432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1633116427_)))
                      (let ((_hd1633416435_ (##car _e1633316432_))
                            (_tl1633516437_ (##cdr _e1633316432_)))
                        (if (gx#identifier? _hd1633416435_)
                            (if (gx#stx-eq? '%#quote _hd1633416435_)
                                (if (gx#stx-pair? _tl1633516437_)
                                    (let ((_e1633616440_
                                           (gx#stx-e _tl1633516437_)))
                                      (let ((_hd1633716443_
                                             (##car _e1633616440_))
                                            (_tl1633816445_
                                             (##cdr _e1633616440_)))
                                        (if (gx#stx-null? _tl1633816445_)
                                            (if (gx#stx-pair? _tl1633216429_)
                                                (let ((_e1633916448_
                                                       (gx#stx-e
                                                        _tl1633216429_)))
                                                  (let ((_hd1634016451_
                                                         (##car _e1633916448_))
                                                        (_tl1634116453_
                                                         (##cdr _e1633916448_)))
                                                    (if (gx#stx-pair?
                                                         _tl1634116453_)
                                                        (let ((_e1634216456_
                                                               (gx#stx-e
                                                                _tl1634116453_)))
                                                          (let ((_hd1634316459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1634216456_))
                        (_tl1634416461_ (##cdr _e1634216456_)))
                    (if (gx#stx-pair? _hd1634316459_)
                        (let ((_e1634516464_ (gx#stx-e _hd1634316459_)))
                          (let ((_hd1634616467_ (##car _e1634516464_))
                                (_tl1634716469_ (##cdr _e1634516464_)))
                            (if (gx#identifier? _hd1634616467_)
                                (if (gx#stx-eq? '%#quote _hd1634616467_)
                                    (if (gx#stx-pair? _tl1634716469_)
                                        (let ((_e1634816472_
                                               (gx#stx-e _tl1634716469_)))
                                          (let ((_hd1634916475_
                                                 (##car _e1634816472_))
                                                (_tl1635016477_
                                                 (##cdr _e1634816472_)))
                                            (if (gx#stx-null? _tl1635016477_)
                                                (if (gx#stx-pair?
                                                     _tl1634416461_)
                                                    (let ((_e1635116480_
                                                           (gx#stx-e
                                                            _tl1634416461_)))
                                                      (let ((_hd1635216483_
                                                             (##car _e1635116480_))
                                                            (_tl1635316485_
                                                             (##cdr _e1635116480_)))
                                                        (if (gx#stx-pair?
                                                             _hd1635216483_)
                                                            (let ((_e1635416488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1635216483_)))
                      (let ((_hd1635516491_ (##car _e1635416488_))
                            (_tl1635616493_ (##cdr _e1635416488_)))
                        (if (gx#identifier? _hd1635516491_)
                            (if (gx#stx-eq? '%#quote _hd1635516491_)
                                (if (gx#stx-pair? _tl1635616493_)
                                    (let ((_e1635716496_
                                           (gx#stx-e _tl1635616493_)))
                                      (let ((_hd1635816499_
                                             (##car _e1635716496_))
                                            (_tl1635916501_
                                             (##cdr _e1635716496_)))
                                        (if (gx#stx-null? _tl1635916501_)
                                            (if (gx#stx-null? _tl1635316485_)
                                                ((lambda (_L16504_
                                                          _L16505_
                                                          _L16506_
                                                          _L16507_
                                                          _L16508_
                                                          _L16509_)
                                                   (let* ((_super-t16555_
                                                           (if (gx#stx-e
                                                                _L16508_)
                                                               (gxc#generate-runtime-binding-id
                                                                _L16508_)
                                                               '#f))
                                                          (_super-type16557_
                                                           (if _super-t16555_
                                                               (gxc#optimizer-resolve-type
                                                                _super-t16555_)
                                                               '#f)))
                                                     (begin
                                                       (if (if _super-type16557_
                                                               (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _super-type16557_
                             'gxc#!struct-type::t))
                       '#f)
                   (gxc#raise-compile-error
                    '"Illegal struct-type construction; invalid super type"
                    _stx16246_
                    _L16508_)
                   '#!void)
               (let ((_fields16573_ (gx#stx-e _L16507_))
                     (_xfields16574_
                      (if _super-type16557_
                          (let ((_super-fields1655916562_
                                 (##structure-ref
                                  _super-type16557_
                                  '3
                                  gxc#!struct-type::t
                                  '#f))
                                (_super-xfields1656016564_
                                 (##structure-ref
                                  _super-type16557_
                                  '4
                                  gxc#!struct-type::t
                                  '#f)))
                            (if _super-fields1655916562_
                                (if _super-xfields1656016564_
                                    (let ((_super-fields16567_
                                           _super-fields1655916562_)
                                          (_super-xfields16568_
                                           _super-xfields1656016564_))
                                      (fx+ _super-fields16567_
                                           _super-xfields16568_))
                                    '#f)
                                '#f))
                          '#f))
                     (_plist16575_ (gx#stx-e _L16505_))
                     (_ctor16576_
                      (let ((_$e16570_ (gx#stx-e _L16504_)))
                        (if _$e16570_
                            (values _$e16570_)
                            (if _super-type16557_
                                (##structure-ref
                                 _super-type16557_
                                 '5
                                 gxc#!struct-type::t
                                 '#f)
                                (if _super-t16555_ '#!void '#f))))))
                 (let ((__obj23617 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj23617
                      (gx#stx-e _L16509_)
                      _super-t16555_
                      _fields16573_
                      _xfields16574_
                      _ctor16576_
                      _plist16575_)
                     __obj23617))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1635816499_
                                                 _hd1634916475_
                                                 _hd1634016451_
                                                 _hd1633716443_
                                                 _hd1632816419_
                                                 _hd1631916395_)
                                                (_g1625016371_ _g1625216374_))
                                            (_g1625016371_ _g1625216374_))))
                                    (_g1625016371_ _g1625216374_))
                                (_g1625016371_ _g1625216374_))
                            (_g1625016371_ _g1625216374_))))
                    (_g1625016371_ _g1625216374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1625016371_
                                                     _g1625216374_))
                                                (_g1625016371_
                                                 _g1625216374_))))
                                        (_g1625016371_ _g1625216374_))
                                    (_g1625016371_ _g1625216374_))
                                (_g1625016371_ _g1625216374_))))
                        (_g1625016371_ _g1625216374_))))
                (_g1625016371_ _g1625216374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1625016371_ _g1625216374_))
                                            (_g1625016371_ _g1625216374_))))
                                    (_g1625016371_ _g1625216374_))
                                (_g1625016371_ _g1625216374_))
                            (_g1625016371_ _g1625216374_))))
                    (_g1625016371_ _g1625216374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1625016371_
                                                     _g1625216374_))
                                                (_g1625016371_
                                                 _g1625216374_))))
                                        (_g1625016371_ _g1625216374_))
                                    (_g1625016371_ _g1625216374_))
                                (_g1625016371_ _g1625216374_))))
                        (_g1625016371_ _g1625216374_))))
                (_g1625016371_ _g1625216374_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1625016371_
                                                     _g1625216374_))))
                                            (_g1625016371_ _g1625216374_))
                                        (_g1625016371_ _g1625216374_))
                                    (_g1625016371_ _g1625216374_))))
                            (_g1625016371_ _g1625216374_))))
                    (_g1625016371_ _g1625216374_))))
             (_g1624816758_
              (lambda (_g1625216581_)
                (if (gx#stx-pair? _g1625216581_)
                    (let ((_e1625816583_ (gx#stx-e _g1625216581_)))
                      (let ((_hd1625916586_ (##car _e1625816583_))
                            (_tl1626016588_ (##cdr _e1625816583_)))
                        (if (gx#stx-pair? _hd1625916586_)
                            (let ((_e1626116591_ (gx#stx-e _hd1625916586_)))
                              (let ((_hd1626216594_ (##car _e1626116591_))
                                    (_tl1626316596_ (##cdr _e1626116591_)))
                                (if (gx#identifier? _hd1626216594_)
                                    (if (gx#stx-eq? '%#quote _hd1626216594_)
                                        (if (gx#stx-pair? _tl1626316596_)
                                            (let ((_e1626416599_
                                                   (gx#stx-e _tl1626316596_)))
                                              (let ((_hd1626516602_
                                                     (##car _e1626416599_))
                                                    (_tl1626616604_
                                                     (##cdr _e1626416599_)))
                                                (if (gx#stx-null?
                                                     _tl1626616604_)
                                                    (if (gx#stx-pair?
                                                         _tl1626016588_)
                                                        (let ((_e1626716607_
                                                               (gx#stx-e
                                                                _tl1626016588_)))
                                                          (let ((_hd1626816610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1626716607_))
                        (_tl1626916612_ (##cdr _e1626716607_)))
                    (if (gx#stx-pair? _hd1626816610_)
                        (let ((_e1627016615_ (gx#stx-e _hd1626816610_)))
                          (let ((_hd1627116618_ (##car _e1627016615_))
                                (_tl1627216620_ (##cdr _e1627016615_)))
                            (if (gx#identifier? _hd1627116618_)
                                (if (gx#stx-eq? '%#quote _hd1627116618_)
                                    (if (gx#stx-pair? _tl1627216620_)
                                        (let ((_e1627316623_
                                               (gx#stx-e _tl1627216620_)))
                                          (let ((_hd1627416626_
                                                 (##car _e1627316623_))
                                                (_tl1627516628_
                                                 (##cdr _e1627316623_)))
                                            (if (gx#stx-datum? _hd1627416626_)
                                                (if (equal? (gx#stx-e
                                                             _hd1627416626_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1627516628_)
                                                        (if (gx#stx-pair?
                                                             _tl1626916612_)
                                                            (let ((_e1627616631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1626916612_)))
                      (let ((_hd1627716634_ (##car _e1627616631_))
                            (_tl1627816636_ (##cdr _e1627616631_)))
                        (if (gx#stx-pair? _hd1627716634_)
                            (let ((_e1627916639_ (gx#stx-e _hd1627716634_)))
                              (let ((_hd1628016642_ (##car _e1627916639_))
                                    (_tl1628116644_ (##cdr _e1627916639_)))
                                (if (gx#identifier? _hd1628016642_)
                                    (if (gx#stx-eq? '%#quote _hd1628016642_)
                                        (if (gx#stx-pair? _tl1628116644_)
                                            (let ((_e1628216647_
                                                   (gx#stx-e _tl1628116644_)))
                                              (let ((_hd1628316650_
                                                     (##car _e1628216647_))
                                                    (_tl1628416652_
                                                     (##cdr _e1628216647_)))
                                                (if (gx#stx-null?
                                                     _tl1628416652_)
                                                    (if (gx#stx-pair?
                                                         _tl1627816636_)
                                                        (let ((_e1628516655_
                                                               (gx#stx-e
                                                                _tl1627816636_)))
                                                          (let ((_hd1628616658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1628516655_))
                        (_tl1628716660_ (##cdr _e1628516655_)))
                    (if (gx#stx-pair? _tl1628716660_)
                        (let ((_e1628816663_ (gx#stx-e _tl1628716660_)))
                          (let ((_hd1628916666_ (##car _e1628816663_))
                                (_tl1629016668_ (##cdr _e1628816663_)))
                            (if (gx#stx-pair? _hd1628916666_)
                                (let ((_e1629116671_
                                       (gx#stx-e _hd1628916666_)))
                                  (let ((_hd1629216674_ (##car _e1629116671_))
                                        (_tl1629316676_ (##cdr _e1629116671_)))
                                    (if (gx#identifier? _hd1629216674_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1629216674_)
                                            (if (gx#stx-pair? _tl1629316676_)
                                                (let ((_e1629416679_
                                                       (gx#stx-e
                                                        _tl1629316676_)))
                                                  (let ((_hd1629516682_
                                                         (##car _e1629416679_))
                                                        (_tl1629616684_
                                                         (##cdr _e1629416679_)))
                                                    (if (gx#stx-null?
                                                         _tl1629616684_)
                                                        (if (gx#stx-pair?
                                                             _tl1629016668_)
                                                            (let ((_e1629716687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1629016668_)))
                      (let ((_hd1629816690_ (##car _e1629716687_))
                            (_tl1629916692_ (##cdr _e1629716687_)))
                        (if (gx#stx-pair? _hd1629816690_)
                            (let ((_e1630016695_ (gx#stx-e _hd1629816690_)))
                              (let ((_hd1630116698_ (##car _e1630016695_))
                                    (_tl1630216700_ (##cdr _e1630016695_)))
                                (if (gx#identifier? _hd1630116698_)
                                    (if (gx#stx-eq? '%#quote _hd1630116698_)
                                        (if (gx#stx-pair? _tl1630216700_)
                                            (let ((_e1630316703_
                                                   (gx#stx-e _tl1630216700_)))
                                              (let ((_hd1630416706_
                                                     (##car _e1630316703_))
                                                    (_tl1630516708_
                                                     (##cdr _e1630316703_)))
                                                (if (gx#stx-null?
                                                     _tl1630516708_)
                                                    (if (gx#stx-null?
                                                         _tl1629916692_)
                                                        ((lambda (_L16711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L16712_
                          _L16713_
                          _L16714_
                          _L16715_)
                   (let ((__obj23618 (make-object gxc#!struct-type::t '7)))
                     (begin
                       (gxc#!struct-type:::init!
                        __obj23618
                        (gx#stx-e _L16715_)
                        '#f
                        (gx#stx-e _L16714_)
                        '0
                        (gx#stx-e _L16711_)
                        (gx#stx-e _L16712_))
                       __obj23618)))
                 _hd1630416706_
                 _hd1629516682_
                 _hd1628616658_
                 _hd1628316650_
                 _hd1626516602_)
                (_g1624916578_ _g1625216581_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1624916578_
                                                     _g1625216581_))))
                                            (_g1624916578_ _g1625216581_))
                                        (_g1624916578_ _g1625216581_))
                                    (_g1624916578_ _g1625216581_))))
                            (_g1624916578_ _g1625216581_))))
                    (_g1624916578_ _g1625216581_))
                (_g1624916578_ _g1625216581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1624916578_ _g1625216581_))
                                            (_g1624916578_ _g1625216581_))
                                        (_g1624916578_ _g1625216581_))))
                                (_g1624916578_ _g1625216581_))))
                        (_g1624916578_ _g1625216581_))))
                (_g1624916578_ _g1625216581_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1624916578_
                                                     _g1625216581_))))
                                            (_g1624916578_ _g1625216581_))
                                        (_g1624916578_ _g1625216581_))
                                    (_g1624916578_ _g1625216581_))))
                            (_g1624916578_ _g1625216581_))))
                    (_g1624916578_ _g1625216581_))
                (_g1624916578_ _g1625216581_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1624916578_
                                                     _g1625216581_))
                                                (_g1624916578_
                                                 _g1625216581_))))
                                        (_g1624916578_ _g1625216581_))
                                    (_g1624916578_ _g1625216581_))
                                (_g1624916578_ _g1625216581_))))
                        (_g1624916578_ _g1625216581_))))
                (_g1624916578_ _g1625216581_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1624916578_
                                                     _g1625216581_))))
                                            (_g1624916578_ _g1625216581_))
                                        (_g1624916578_ _g1625216581_))
                                    (_g1624916578_ _g1625216581_))))
                            (_g1624916578_ _g1625216581_))))
                    (_g1624916578_ _g1625216581_)))))
        (_g1624816758_ _args16247_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx16172_ _args16173_)
      (let* ((_g1617616192_
              (lambda (_g1617716189_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1617716189_)))
             (_g1617516199_ (lambda (_g1617716195_) ((lambda () '#f))))
             (_g1617416243_
              (lambda (_g1617716202_)
                (if (gx#stx-pair? _g1617716202_)
                    (let ((_e1617916204_ (gx#stx-e _g1617716202_)))
                      (let ((_hd1618016207_ (##car _e1617916204_))
                            (_tl1618116209_ (##cdr _e1617916204_)))
                        (if (gx#stx-pair? _hd1618016207_)
                            (let ((_e1618216212_ (gx#stx-e _hd1618016207_)))
                              (let ((_hd1618316215_ (##car _e1618216212_))
                                    (_tl1618416217_ (##cdr _e1618216212_)))
                                (if (gx#identifier? _hd1618316215_)
                                    (if (gx#stx-eq? '%#ref _hd1618316215_)
                                        (if (gx#stx-pair? _tl1618416217_)
                                            (let ((_e1618516220_
                                                   (gx#stx-e _tl1618416217_)))
                                              (let ((_hd1618616223_
                                                     (##car _e1618516220_))
                                                    (_tl1618716225_
                                                     (##cdr _e1618516220_)))
                                                (if (gx#stx-null?
                                                     _tl1618716225_)
                                                    (if (gx#stx-null?
                                                         _tl1618116209_)
                                                        ((lambda (_L16228_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#generate-runtime-binding-id
                                                             _L16228_)))
                                                         _hd1618616223_)
                                                        (_g1617516199_
                                                         _g1617716202_))
                                                    (_g1617516199_
                                                     _g1617716202_))))
                                            (_g1617516199_ _g1617716202_))
                                        (_g1617516199_ _g1617716202_))
                                    (_g1617516199_ _g1617716202_))))
                            (_g1617516199_ _g1617716202_))))
                    (_g1617516199_ _g1617716202_)))))
        (_g1617416243_ _args16173_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16041
      (lambda (_stx16043_ _args16044_ _unchecked?16045_)
        (let* ((_g1604816074_
                (lambda (_g1604916071_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1604916071_)))
               (_g1604716081_ (lambda (_g1604916077_) ((lambda () '#f))))
               (_g1604616157_
                (lambda (_g1604916084_)
                  (if (gx#stx-pair? _g1604916084_)
                      (let ((_e1605216086_ (gx#stx-e _g1604916084_)))
                        (let ((_hd1605316089_ (##car _e1605216086_))
                              (_tl1605416091_ (##cdr _e1605216086_)))
                          (if (gx#stx-pair? _hd1605316089_)
                              (let ((_e1605516094_ (gx#stx-e _hd1605316089_)))
                                (let ((_hd1605616097_ (##car _e1605516094_))
                                      (_tl1605716099_ (##cdr _e1605516094_)))
                                  (if (gx#identifier? _hd1605616097_)
                                      (if (gx#stx-eq? '%#ref _hd1605616097_)
                                          (if (gx#stx-pair? _tl1605716099_)
                                              (let ((_e1605816102_
                                                     (gx#stx-e
                                                      _tl1605716099_)))
                                                (let ((_hd1605916105_
                                                       (##car _e1605816102_))
                                                      (_tl1606016107_
                                                       (##cdr _e1605816102_)))
                                                  (if (gx#stx-null?
                                                       _tl1606016107_)
                                                      (if (gx#stx-pair?
                                                           _tl1605416091_)
                                                          (let ((_e1606116110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1605416091_)))
                    (let ((_hd1606216113_ (##car _e1606116110_))
                          (_tl1606316115_ (##cdr _e1606116110_)))
                      (if (gx#stx-pair? _hd1606216113_)
                          (let ((_e1606416118_ (gx#stx-e _hd1606216113_)))
                            (let ((_hd1606516121_ (##car _e1606416118_))
                                  (_tl1606616123_ (##cdr _e1606416118_)))
                              (if (gx#identifier? _hd1606516121_)
                                  (if (gx#stx-eq? '%#quote _hd1606516121_)
                                      (if (gx#stx-pair? _tl1606616123_)
                                          (let ((_e1606716126_
                                                 (gx#stx-e _tl1606616123_)))
                                            (let ((_hd1606816129_
                                                   (##car _e1606716126_))
                                                  (_tl1606916131_
                                                   (##cdr _e1606716126_)))
                                              (if (gx#stx-null? _tl1606916131_)
                                                  (if (gx#stx-null?
                                                       _tl1606316115_)
                                                      ((lambda (_L16134_
                                                                _L16135_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L16135_)
                                                          (gx#stx-e _L16134_)
                                                          _unchecked?16045_))
                                                       _hd1606816129_
                                                       _hd1605916105_)
                                                      (_g1604716081_
                                                       _g1604916084_))
                                                  (_g1604716081_
                                                   _g1604916084_))))
                                          (_g1604716081_ _g1604916084_))
                                      (_g1604716081_ _g1604916084_))
                                  (_g1604716081_ _g1604916084_))))
                          (_g1604716081_ _g1604916084_))))
                  (_g1604716081_ _g1604916084_))
              (_g1604716081_ _g1604916084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1604716081_ _g1604916084_))
                                          (_g1604716081_ _g1604916084_))
                                      (_g1604716081_ _g1604916084_))))
                              (_g1604716081_ _g1604916084_))))
                      (_g1604716081_ _g1604916084_)))))
          (_g1604616157_ _args16044_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx16163_ _args16164_)
          (let ((_unchecked?16166_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16041
             _stx16163_
             _args16164_
             _unchecked?16166_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g23682_
          (let ((_g23681_ (length _g23682_)))
            (cond ((fx= _g23681_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g23682_))
                  ((fx= _g23681_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16041
                          _g23682_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g23682_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15911
      (lambda (_stx15913_ _args15914_ _unchecked?15915_)
        (let* ((_g1591815944_
                (lambda (_g1591915941_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1591915941_)))
               (_g1591715951_ (lambda (_g1591915947_) ((lambda () '#f))))
               (_g1591616027_
                (lambda (_g1591915954_)
                  (if (gx#stx-pair? _g1591915954_)
                      (let ((_e1592215956_ (gx#stx-e _g1591915954_)))
                        (let ((_hd1592315959_ (##car _e1592215956_))
                              (_tl1592415961_ (##cdr _e1592215956_)))
                          (if (gx#stx-pair? _hd1592315959_)
                              (let ((_e1592515964_ (gx#stx-e _hd1592315959_)))
                                (let ((_hd1592615967_ (##car _e1592515964_))
                                      (_tl1592715969_ (##cdr _e1592515964_)))
                                  (if (gx#identifier? _hd1592615967_)
                                      (if (gx#stx-eq? '%#ref _hd1592615967_)
                                          (if (gx#stx-pair? _tl1592715969_)
                                              (let ((_e1592815972_
                                                     (gx#stx-e
                                                      _tl1592715969_)))
                                                (let ((_hd1592915975_
                                                       (##car _e1592815972_))
                                                      (_tl1593015977_
                                                       (##cdr _e1592815972_)))
                                                  (if (gx#stx-null?
                                                       _tl1593015977_)
                                                      (if (gx#stx-pair?
                                                           _tl1592415961_)
                                                          (let ((_e1593115980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1592415961_)))
                    (let ((_hd1593215983_ (##car _e1593115980_))
                          (_tl1593315985_ (##cdr _e1593115980_)))
                      (if (gx#stx-pair? _hd1593215983_)
                          (let ((_e1593415988_ (gx#stx-e _hd1593215983_)))
                            (let ((_hd1593515991_ (##car _e1593415988_))
                                  (_tl1593615993_ (##cdr _e1593415988_)))
                              (if (gx#identifier? _hd1593515991_)
                                  (if (gx#stx-eq? '%#quote _hd1593515991_)
                                      (if (gx#stx-pair? _tl1593615993_)
                                          (let ((_e1593715996_
                                                 (gx#stx-e _tl1593615993_)))
                                            (let ((_hd1593815999_
                                                   (##car _e1593715996_))
                                                  (_tl1593916001_
                                                   (##cdr _e1593715996_)))
                                              (if (gx#stx-null? _tl1593916001_)
                                                  (if (gx#stx-null?
                                                       _tl1593315985_)
                                                      ((lambda (_L16004_
                                                                _L16005_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L16005_)
                                                          (gx#stx-e _L16004_)
                                                          _unchecked?15915_))
                                                       _hd1593815999_
                                                       _hd1592915975_)
                                                      (_g1591715951_
                                                       _g1591915954_))
                                                  (_g1591715951_
                                                   _g1591915954_))))
                                          (_g1591715951_ _g1591915954_))
                                      (_g1591715951_ _g1591915954_))
                                  (_g1591715951_ _g1591915954_))))
                          (_g1591715951_ _g1591915954_))))
                  (_g1591715951_ _g1591915954_))
              (_g1591715951_ _g1591915954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1591715951_ _g1591915954_))
                                          (_g1591715951_ _g1591915954_))
                                      (_g1591715951_ _g1591915954_))))
                              (_g1591715951_ _g1591915954_))))
                      (_g1591715951_ _g1591915954_)))))
          (_g1591616027_ _args15914_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx16033_ _args16034_)
          (let ((_unchecked?16036_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15911
             _stx16033_
             _args16034_
             _unchecked?16036_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g23684_
          (let ((_g23683_ (length _g23684_)))
            (cond ((fx= _g23683_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g23684_))
                  ((fx= _g23683_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15911
                          _g23684_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g23684_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx15909_ _args15910_)
      (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16041
       _stx15909_
       _args15910_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx15906_ _args15907_)
      (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15911
       _stx15906_
       _args15907_
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
    (lambda (_stx15855_)
      (let* ((_g1585715870_
              (lambda (_g1585815867_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1585815867_)))
             (_g1585615903_
              (lambda (_g1585815873_)
                (if (gx#stx-pair? _g1585815873_)
                    (let ((_e1586015875_ (gx#stx-e _g1585815873_)))
                      (let ((_hd1586115878_ (##car _e1586015875_))
                            (_tl1586215880_ (##cdr _e1586015875_)))
                        (if (gx#stx-pair? _tl1586215880_)
                            (let ((_e1586315883_ (gx#stx-e _tl1586215880_)))
                              (let ((_hd1586415886_ (##car _e1586315883_))
                                    (_tl1586515888_ (##cdr _e1586315883_)))
                                (if (gx#stx-null? _tl1586515888_)
                                    ((lambda (_L15891_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#generate-runtime-binding-id
                                         _L15891_)))
                                     _hd1586415886_)
                                    (_g1585715870_ _g1585815873_))))
                            (_g1585715870_ _g1585815873_))))
                    (_g1585715870_ _g1585815873_)))))
        (_g1585615903_ _stx15855_))))
  (define gxc#optimize-call%
    (lambda (_stx15761_)
      (let* ((_g1576415784_
              (lambda (_g1576515781_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1576515781_)))
             (_g1576315791_
              (lambda (_g1576515787_)
                ((lambda () (gxc#xform-call% _stx15761_)))))
             (_g1576215852_
              (lambda (_g1576515794_)
                (if (gx#stx-pair? _g1576515794_)
                    (let ((_e1576815796_ (gx#stx-e _g1576515794_)))
                      (let ((_hd1576915799_ (##car _e1576815796_))
                            (_tl1577015801_ (##cdr _e1576815796_)))
                        (if (gx#stx-pair? _tl1577015801_)
                            (let ((_e1577115804_ (gx#stx-e _tl1577015801_)))
                              (let ((_hd1577215807_ (##car _e1577115804_))
                                    (_tl1577315809_ (##cdr _e1577115804_)))
                                (if (gx#stx-pair? _hd1577215807_)
                                    (let ((_e1577415812_
                                           (gx#stx-e _hd1577215807_)))
                                      (let ((_hd1577515815_
                                             (##car _e1577415812_))
                                            (_tl1577615817_
                                             (##cdr _e1577415812_)))
                                        (if (gx#identifier? _hd1577515815_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1577515815_)
                                                (if (gx#stx-pair?
                                                     _tl1577615817_)
                                                    (let ((_e1577715820_
                                                           (gx#stx-e
                                                            _tl1577615817_)))
                                                      (let ((_hd1577815823_
                                                             (##car _e1577715820_))
                                                            (_tl1577915825_
                                                             (##cdr _e1577715820_)))
                                                        (if (gx#stx-null?
                                                             _tl1577915825_)
                                                            ((lambda (_L15828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L15829_)
                       (let* ((_rator-id15847_
                               (gxc#generate-runtime-binding-id _L15829_))
                              (_rator-type15849_
                               (gxc#optimizer-resolve-type _rator-id15847_)))
                         (if (##structure-instance-of?
                              _rator-type15849_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id15847_
                                '" => "
                                _rator-type15849_
                                '" "
                                (##structure-ref
                                 _rator-type15849_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type15849_
                                'optimize-call
                                _stx15761_
                                _L15828_))
                             (if (not _rator-type15849_)
                                 (gxc#xform-call% _stx15761_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx15761_
                                  _rator-type15849_)))))
                     _tl1577315809_
                     _hd1577815823_)
                    (_g1576315791_ _g1576515794_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1576315791_
                                                     _g1576515794_))
                                                (_g1576315791_ _g1576515794_))
                                            (_g1576315791_ _g1576515794_))))
                                    (_g1576315791_ _g1576515794_))))
                            (_g1576315791_ _g1576515794_))))
                    (_g1576315791_ _g1576515794_)))))
        (_g1576215852_ _stx15761_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self15615_ _stx15616_ _args15617_)
      (let* ((_self1561815624_ _self15615_)
             (_E1562015628_
              (lambda () (error '"No clause matching" _self1561815624_)))
             (_K1562115753_
              (lambda (_struct-t15631_)
                (let* ((_struct-type15633_
                        (gxc#optimizer-resolve-type _struct-t15631_))
                       (_struct-type1563415648_ _struct-type15633_)
                       (_E1563815652_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1563415648_)))
                       (_else1563715656_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15616_
                           _struct-t15631_
                           _struct-type15633_)))
                       (_try-match1563615664_
                        (lambda ()
                          (let ((_K1563915661_
                                 (lambda () (gxc#xform-call% _stx15616_))))
                            (if (##eq? _struct-type1563415648_ '#f)
                                (_K1563915661_)
                                (_else1563715656_)))))
                       (_K1564015728_
                        (lambda (_plist15667_ _struct-type-id15668_)
                          (let* ((_g1567115681_
                                  (lambda (_g1567215678_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1567215678_)))
                                 (_g1567015688_
                                  (lambda (_g1567215684_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx15616_)))))
                                 (_g1566915725_
                                  (lambda (_g1567215691_)
                                    (if (gx#stx-pair? _g1567215691_)
                                        (let ((_e1567415693_
                                               (gx#stx-e _g1567215691_)))
                                          (let ((_hd1567515696_
                                                 (##car _e1567415693_))
                                                (_tl1567615698_
                                                 (##cdr _e1567415693_)))
                                            (if (gx#stx-null? _tl1567615698_)
                                                ((lambda (_L15701_)
                                                   (let ((_expr15722_
                                                          (gxc#compile-e
                                                           _L15701_))
                                                         (_op15723_
                                                          (if (if _plist15667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist15667_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op15723_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id15668_ '()))
                          (cons _expr15722_ '())))
              _stx15616_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1567515696_)
                                                (_g1567015688_
                                                 _g1567215691_))))
                                        (_g1567015688_ _g1567215691_)))))
                            (_g1566915725_ _args15617_)))))
                  (if (##structure-instance-of?
                       _struct-type1563415648_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1564115731_
                              (##vector-ref _struct-type1563415648_ '1))
                             (_struct-type-id15734_ _e1564115731_)
                             (_e1564215736_
                              (##vector-ref _struct-type1563415648_ '2))
                             (_e1564315739_
                              (##vector-ref _struct-type1563415648_ '3))
                             (_e1564415742_
                              (##vector-ref _struct-type1563415648_ '4))
                             (_e1564515745_
                              (##vector-ref _struct-type1563415648_ '5))
                             (_e1564615748_
                              (##vector-ref _struct-type1563415648_ '6))
                             (_plist15751_ _e1564615748_))
                        (_K1564015728_ _plist15751_ _struct-type-id15734_))
                      (_try-match1563615664_))))))
        (if (##structure-instance-of?
             _self1561815624_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1562215756_ (##vector-ref _self1561815624_ '1))
                   (_struct-t15759_ _e1562215756_))
              (_K1562115753_ _struct-t15759_))
            (_E1562015628_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self15389_ _stx15390_ _args15391_)
      (let* ((_self1539215398_ _self15389_)
             (_E1539415402_
              (lambda () (error '"No clause matching" _self1539215398_)))
             (_K1539515485_
              (lambda (_struct-t15405_)
                (let* ((_struct-type15407_
                        (gxc#optimizer-resolve-type _struct-t15405_))
                       (_struct-type1540815421_ _struct-type15407_)
                       (_E1541215425_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1540815421_)))
                       (_else1541115429_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx15390_
                           _struct-t15405_
                           _struct-type15407_)))
                       (_try-match1541015437_
                        (lambda ()
                          (let ((_K1541315434_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t15405_)
                                     (gxc#xform-call% _stx15390_)))))
                            (if (##eq? _struct-type1540815421_ '#f)
                                (_K1541315434_)
                                (_else1541115429_)))))
                       (_K1541415459_
                        (lambda (_ctor15440_
                                 _xfields15441_
                                 _fields15442_
                                 _type-id15443_)
                          (let* ((_args15445_ (map gxc#compile-e _args15391_))
                                 (_$e15447_
                                  (if _ctor15440_
                                      (if _xfields15441_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type15407_
                                           _ctor15440_)
                                          '#f)
                                      '#f)))
                            (if _$e15447_
                                ((lambda (_kons15450_)
                                   (let ((_$obj15452_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj15452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t15405_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields15442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields15441_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#begin
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref (cons _kons15450_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj15452_ '()))
                                                _args15445_)))
                              _stx15390_))
                            (cons (cons '%#ref (cons _$obj15452_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx15390_)))
                                 _$e15447_)
                                (if (let ((_$e15454_ _ctor15440_))
                                      (if _$e15454_
                                          _$e15454_
                                          (not _xfields15441_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t15405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args15445_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx15390_)
                                    (let ((_arity15457_
                                           (fx+ _fields15442_ _xfields15441_)))
                                      (if (fx= _arity15457_
                                               (length _args15445_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t15405_ '())) _args15445_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx15390_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx15390_
                                           _struct-t15405_
                                           _arity15457_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1540815421_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1541515462_
                              (##vector-ref _struct-type1540815421_ '1))
                             (_type-id15465_ _e1541515462_)
                             (_e1541615467_
                              (##vector-ref _struct-type1540815421_ '2))
                             (_e1541715470_
                              (##vector-ref _struct-type1540815421_ '3))
                             (_fields15473_ _e1541715470_)
                             (_e1541815475_
                              (##vector-ref _struct-type1540815421_ '4))
                             (_xfields15478_ _e1541815475_)
                             (_e1541915480_
                              (##vector-ref _struct-type1540815421_ '5))
                             (_ctor15483_ _e1541915480_))
                        (_K1541415459_
                         _ctor15483_
                         _xfields15478_
                         _fields15473_
                         _type-id15465_))
                      (_try-match1541015437_))))))
        (if (##structure-instance-of?
             _self1539215398_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1539615488_ (##vector-ref _self1539215398_ '1))
                   (_struct-t15491_ _e1539615488_))
              (_K1539515485_ _struct-t15491_))
            (_E1539415402_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self15100_ _stx15101_ _args15102_)
      (let* ((_self1510315111_ _self15100_)
             (_E1510515115_
              (lambda () (error '"No clause matching" _self1510315111_)))
             (_K1510615249_
              (lambda (_unchecked?15118_ _off15119_ _struct-t15120_)
                (let* ((_struct-type15122_
                        (gxc#optimizer-resolve-type _struct-t15120_))
                       (_struct-type1512315137_ _struct-type15122_)
                       (_E1512715141_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1512315137_)))
                       (_else1512615145_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15101_
                           _struct-t15120_
                           _struct-type15122_)))
                       (_try-match1512515153_
                        (lambda ()
                          (let ((_K1512815150_
                                 (lambda () (gxc#xform-call% _stx15101_))))
                            (if (##eq? _struct-type1512315137_ '#f)
                                (_K1512815150_)
                                (_else1512615145_)))))
                       (_K1512915220_
                        (lambda (_plist15156_
                                 _xfields15157_
                                 _fields15158_
                                 _struct-type-id15159_)
                          (if _xfields15157_
                              (let* ((_g1516215172_
                                      (lambda (_g1516315169_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1516315169_)))
                                     (_g1516115179_
                                      (lambda (_g1516315175_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx15101_)))))
                                     (_g1516015217_
                                      (lambda (_g1516315182_)
                                        (if (gx#stx-pair? _g1516315182_)
                                            (let ((_e1516515184_
                                                   (gx#stx-e _g1516315182_)))
                                              (let ((_hd1516615187_
                                                     (##car _e1516515184_))
                                                    (_tl1516715189_
                                                     (##cdr _e1516515184_)))
                                                (if (gx#stx-null?
                                                     _tl1516715189_)
                                                    ((lambda (_L15192_)
                                                       (let ((_expr15213_
                                                              (gxc#compile-e
                                                               _L15192_))
                                                             (_off15214_
                                                              (fx+ _off15119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields15157_
                           '1))
                     (_op15215_
                      (if _unchecked?15118_
                          '%#struct-unchecked-ref
                          (if (if _plist15156_
                                  (assgetq 'final: _plist15156_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op15215_
                        (cons (cons '%#ref (cons _struct-t15120_ '()))
                              (cons (cons '%#quote (cons _off15214_ '()))
                                    (cons _expr15213_ '()))))
                  _stx15101_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1516615187_)
                                                    (_g1516115179_
                                                     _g1516315182_))))
                                            (_g1516115179_ _g1516315182_)))))
                                (_g1516015217_ _args15102_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id15159_)
                                (gxc#xform-call% _stx15101_))))))
                  (if (##structure-instance-of?
                       _struct-type1512315137_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1513015223_
                              (##vector-ref _struct-type1512315137_ '1))
                             (_struct-type-id15226_ _e1513015223_)
                             (_e1513115228_
                              (##vector-ref _struct-type1512315137_ '2))
                             (_e1513215231_
                              (##vector-ref _struct-type1512315137_ '3))
                             (_fields15234_ _e1513215231_)
                             (_e1513315236_
                              (##vector-ref _struct-type1512315137_ '4))
                             (_xfields15239_ _e1513315236_)
                             (_e1513415241_
                              (##vector-ref _struct-type1512315137_ '5))
                             (_e1513515244_
                              (##vector-ref _struct-type1512315137_ '6))
                             (_plist15247_ _e1513515244_))
                        (_K1512915220_
                         _plist15247_
                         _xfields15239_
                         _fields15234_
                         _struct-type-id15226_))
                      (_try-match1512515153_))))))
        (if (##structure-instance-of?
             _self1510315111_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1510715252_ (##vector-ref _self1510315111_ '1))
                   (_struct-t15255_ _e1510715252_)
                   (_e1510815257_ (##vector-ref _self1510315111_ '2))
                   (_off15260_ _e1510815257_)
                   (_e1510915262_ (##vector-ref _self1510315111_ '3))
                   (_unchecked?15265_ _e1510915262_))
              (_K1510615249_ _unchecked?15265_ _off15260_ _struct-t15255_))
            (_E1510515115_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self14794_ _stx14795_ _args14796_)
      (let* ((_self1479714805_ _self14794_)
             (_E1479914809_
              (lambda () (error '"No clause matching" _self1479714805_)))
             (_K1480014960_
              (lambda (_unchecked?14812_ _off14813_ _struct-t14814_)
                (let* ((_struct-type14816_
                        (gxc#optimizer-resolve-type _struct-t14814_))
                       (_struct-type1481714831_ _struct-type14816_)
                       (_E1482114835_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1481714831_)))
                       (_else1482014839_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx14795_
                           _struct-t14814_
                           _struct-type14816_)))
                       (_try-match1481914847_
                        (lambda ()
                          (let ((_K1482214844_
                                 (lambda () (gxc#xform-call% _stx14795_))))
                            (if (##eq? _struct-type1481714831_ '#f)
                                (_K1482214844_)
                                (_else1482014839_)))))
                       (_K1482314931_
                        (lambda (_plist14850_
                                 _xfields14851_
                                 _fields14852_
                                 _struct-type-id14853_)
                          (if _xfields14851_
                              (let* ((_g1485614870_
                                      (lambda (_g1485714867_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1485714867_)))
                                     (_g1485514877_
                                      (lambda (_g1485714873_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx14795_)))))
                                     (_g1485414928_
                                      (lambda (_g1485714880_)
                                        (if (gx#stx-pair? _g1485714880_)
                                            (let ((_e1486014882_
                                                   (gx#stx-e _g1485714880_)))
                                              (let ((_hd1486114885_
                                                     (##car _e1486014882_))
                                                    (_tl1486214887_
                                                     (##cdr _e1486014882_)))
                                                (if (gx#stx-pair?
                                                     _tl1486214887_)
                                                    (let ((_e1486314890_
                                                           (gx#stx-e
                                                            _tl1486214887_)))
                                                      (let ((_hd1486414893_
                                                             (##car _e1486314890_))
                                                            (_tl1486514895_
                                                             (##cdr _e1486314890_)))
                                                        (if (gx#stx-null?
                                                             _tl1486514895_)
                                                            ((lambda (_L14898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L14899_)
                       (let ((_expr14923_ (gxc#compile-e _L14899_))
                             (_val14924_ (gxc#compile-e _L14898_))
                             (_off14925_ (fx+ _off14813_ _xfields14851_ '1))
                             (_op14926_
                              (if _unchecked?14812_
                                  '%#struct-unchecked-set!
                                  (if (if _plist14850_
                                          (assgetq 'final: _plist14850_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op14926_
                                (cons (cons '%#ref (cons _struct-t14814_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off14925_ '()))
                                            (cons _expr14923_
                                                  (cons _val14924_ '())))))
                          _stx14795_)))
                     _hd1486414893_
                     _hd1486114885_)
                    (_g1485514877_ _g1485714880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1485514877_
                                                     _g1485714880_))))
                                            (_g1485514877_ _g1485714880_)))))
                                (_g1485414928_ _args14796_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id14853_)
                                (gxc#xform-call% _stx14795_))))))
                  (if (##structure-instance-of?
                       _struct-type1481714831_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1482414934_
                              (##vector-ref _struct-type1481714831_ '1))
                             (_struct-type-id14937_ _e1482414934_)
                             (_e1482514939_
                              (##vector-ref _struct-type1481714831_ '2))
                             (_e1482614942_
                              (##vector-ref _struct-type1481714831_ '3))
                             (_fields14945_ _e1482614942_)
                             (_e1482714947_
                              (##vector-ref _struct-type1481714831_ '4))
                             (_xfields14950_ _e1482714947_)
                             (_e1482814952_
                              (##vector-ref _struct-type1481714831_ '5))
                             (_e1482914955_
                              (##vector-ref _struct-type1481714831_ '6))
                             (_plist14958_ _e1482914955_))
                        (_K1482314931_
                         _plist14958_
                         _xfields14950_
                         _fields14945_
                         _struct-type-id14937_))
                      (_try-match1481914847_))))))
        (if (##structure-instance-of?
             _self1479714805_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1480114963_ (##vector-ref _self1479714805_ '1))
                   (_struct-t14966_ _e1480114963_)
                   (_e1480214968_ (##vector-ref _self1479714805_ '2))
                   (_off14971_ _e1480214968_)
                   (_e1480314973_ (##vector-ref _self1479714805_ '3))
                   (_unchecked?14976_ _e1480314973_))
              (_K1480014960_ _unchecked?14976_ _off14971_ _struct-t14966_))
            (_E1479914809_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self14628_ _stx14629_ _args14630_)
      (let* ((_self1463114640_ _self14628_)
             (_E1463314644_
              (lambda () (error '"No clause matching" _self1463114640_)))
             (_K1463414651_
              (lambda (_inline14647_ _dispatch14648_ _arity14649_)
                (begin
                  (if (gxc#!lambda-arity-match? _self14628_ _args14630_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx14629_
                       _arity14649_))
                  (if _inline14647_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline14647_ _stx14629_)
                          _stx14629_)))
                      (if _dispatch14648_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch14648_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch14648_ '()))
                                          _args14630_))
                              _stx14629_)))
                          (gxc#xform-call% _stx14629_)))))))
        (if (##structure-instance-of?
             _self1463114640_
             (##type-id gxc#!lambda::t))
            (let* ((_e1463514654_ (##vector-ref _self1463114640_ '1))
                   (_e1463614657_ (##vector-ref _self1463114640_ '2))
                   (_arity14660_ _e1463614657_)
                   (_e1463714662_ (##vector-ref _self1463114640_ '3))
                   (_dispatch14665_ _e1463714662_)
                   (_e1463814667_ (##vector-ref _self1463114640_ '4))
                   (_inline14670_ _e1463814667_))
              (_K1463414651_ _inline14670_ _dispatch14665_ _arity14660_))
            (_E1463314644_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self14467_ _stx14468_ _args14469_)
      (let* ((_self1447014477_ _self14467_)
             (_E1447214481_
              (lambda () (error '"No clause matching" _self1447014477_)))
             (_K1447314495_
              (lambda (_clauses14484_)
                (let ((_$e14490_
                       (find (lambda (_g1448514487_)
                               (gxc#!lambda-arity-match?
                                _g1448514487_
                                _args14469_))
                             _clauses14484_)))
                  (if _$e14490_
                      ((lambda (_clause14493_)
                         (call-method
                          _clause14493_
                          'optimize-call
                          _stx14468_
                          _args14469_))
                       _$e14490_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx14468_
                       (map gxc#!lambda-arity _clauses14484_)))))))
        (if (##structure-instance-of?
             _self1447014477_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1447414498_ (##vector-ref _self1447014477_ '1))
                   (_e1447514501_ (##vector-ref _self1447014477_ '2))
                   (_clauses14504_ _e1447514501_))
              (_K1447314495_ _clauses14504_))
            (_E1447214481_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self14281_ _args14282_)
      (let* ((_self1428314290_ _self14281_)
             (_E1428514294_
              (lambda () (error '"No clause matching" _self1428314290_)))
             (_K1428614334_
              (lambda (_arity14297_)
                (let* ((_arity1429814307_ _arity14297_)
                       (_E1430114311_
                        (lambda ()
                          (error '"No clause matching" _arity1429814307_)))
                       (_try-match1430014327_
                        (lambda ()
                          (let ((_K1430214317_
                                 (lambda (_arity14315_)
                                   (fx>= (length _args14282_) _arity14315_))))
                            (if (##pair? _arity1429814307_)
                                (let ((_hd1430314320_
                                       (##car _arity1429814307_))
                                      (_tl1430414322_
                                       (##cdr _arity1429814307_)))
                                  (let ((_arity14325_ _hd1430314320_))
                                    (if (##null? _tl1430414322_)
                                        (_K1430214317_ _arity14325_)
                                        (_E1430114311_))))
                                (_E1430114311_)))))
                       (_K1430514331_
                        (lambda () (fx= (length _args14282_) _arity14297_))))
                  (if (fixnum? _arity1429814307_)
                      (_K1430514331_)
                      (_try-match1430014327_))))))
        (if (##structure-instance-of?
             _self1428314290_
             (##type-id gxc#!lambda::t))
            (let* ((_e1428714337_ (##vector-ref _self1428314290_ '1))
                   (_e1428814340_ (##vector-ref _self1428314290_ '2))
                   (_arity14343_ _e1428814340_))
              (_K1428614334_ _arity14343_))
            (_E1428514294_)))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx14221_)
      (let* ((_g1422314237_
              (lambda (_g1422414234_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1422414234_)))
             (_g1422214278_
              (lambda (_g1422414240_)
                (if (gx#stx-pair? _g1422414240_)
                    (let ((_e1422714242_ (gx#stx-e _g1422414240_)))
                      (let ((_hd1422814245_ (##car _e1422714242_))
                            (_tl1422914247_ (##cdr _e1422714242_)))
                        (if (gx#stx-pair? _tl1422914247_)
                            (let ((_e1423014250_ (gx#stx-e _tl1422914247_)))
                              (let ((_hd1423114253_ (##car _e1423014250_))
                                    (_tl1423214255_ (##cdr _e1423014250_)))
                                ((lambda (_L14258_ _L14259_)
                                   (let* ((_ctx14272_
                                           (gx#syntax-local-e__0 _L14259_))
                                          (_code14274_
                                           (##structure-ref
                                            _ctx14272_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code14274_))
                                      gx#current-expander-context
                                      _ctx14272_)))
                                 _tl1423214255_
                                 _hd1423114253_)))
                            (_g1422314237_ _g1422414240_))))
                    (_g1422314237_ _g1422414240_)))))
        (_g1422214278_ _stx14221_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx14031_)
      (letrec ((_generate-e14033_
                (lambda (_id14210_)
                  (let* ((_sym14212_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#generate-runtime-binding-id _id14210_)
                              '#f))
                         (_$e14214_
                          (if _sym14212_
                              (gxc#optimizer-lookup-type _sym14212_)
                              '#f)))
                    (if _$e14214_
                        ((lambda (_type14217_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym14212_)
                             (let ((_typedecl14219_
                                    (call-method _type14217_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym14212_
                                           (cons _typedecl14219_ '()))))))
                         _$e14214_)
                        '(begin))))))
        (let* ((_g1403614074_
                (lambda (_g1403714071_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1403714071_)))
               (_g1403514155_
                (lambda (_g1403714077_)
                  (if (gx#stx-pair? _g1403714077_)
                      (let ((_e1405214079_ (gx#stx-e _g1403714077_)))
                        (let ((_hd1405314082_ (##car _e1405214079_))
                              (_tl1405414084_ (##cdr _e1405214079_)))
                          (if (gx#stx-pair? _tl1405414084_)
                              (let ((_e1405514087_ (gx#stx-e _tl1405414084_)))
                                (let ((_hd1405614090_ (##car _e1405514087_))
                                      (_tl1405714092_ (##cdr _e1405514087_)))
                                  (if (gx#stx-pair/null? _hd1405614090_)
                                      (if (fx>= (gx#stx-length _hd1405614090_)
                                                '0)
                                          (let ((_g23685_
                                                 (gx#syntax-split-splice
                                                  _hd1405614090_
                                                  '0)))
                                            (begin
                                              (let ((_g23686_
                                                     (values-count _g23685_)))
                                                (if (not (fx= _g23686_ 2))
                                                    (error "Context expects 2 values"
                                                           _g23686_)))
                                              (let ((_target1405814095_
                                                     (values-ref _g23685_ 0))
                                                    (_tl1406014097_
                                                     (values-ref _g23685_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1406014097_)
                                                    (letrec ((_loop1406114100_
                                                              (lambda (_hd1405914103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1406514105_)
                        (if (gx#stx-pair? _hd1405914103_)
                            (let ((_e1406214108_ (gx#stx-e _hd1405914103_)))
                              (let ((_lp-hd1406314111_ (##car _e1406214108_))
                                    (_lp-tl1406414113_ (##cdr _e1406214108_)))
                                (_loop1406114100_
                                 _lp-tl1406414113_
                                 (cons _lp-hd1406314111_ _id1406514105_))))
                            (let ((_id1406614116_ (reverse _id1406514105_)))
                              (if (gx#stx-pair? _tl1405714092_)
                                  (let ((_e1406714119_
                                         (gx#stx-e _tl1405714092_)))
                                    (let ((_hd1406814122_
                                           (##car _e1406714119_))
                                          (_tl1406914124_
                                           (##cdr _e1406714119_)))
                                      (if (gx#stx-null? _tl1406914124_)
                                          ((lambda (_L14127_)
                                             (let ((_types14153_
                                                    (map _generate-e14033_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1414514148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1414614150_)
                             (cons _g1414514148_ _g1414614150_))
                           '()
                           _L14127_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types14153_)))
                                           _id1406614116_)
                                          (_g1403614074_ _g1403714077_))))
                                  (_g1403614074_ _g1403714077_)))))))
              (_loop1406114100_ _target1405814095_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1403614074_
                                                     _g1403714077_)))))
                                          (_g1403614074_ _g1403714077_))
                                      (_g1403614074_ _g1403714077_))))
                              (_g1403614074_ _g1403714077_))))
                      (_g1403614074_ _g1403714077_))))
               (_g1403414207_
                (lambda (_g1403714158_)
                  (if (gx#stx-pair? _g1403714158_)
                      (let ((_e1403914160_ (gx#stx-e _g1403714158_)))
                        (let ((_hd1404014163_ (##car _e1403914160_))
                              (_tl1404114165_ (##cdr _e1403914160_)))
                          (if (gx#stx-pair? _tl1404114165_)
                              (let ((_e1404214168_ (gx#stx-e _tl1404114165_)))
                                (let ((_hd1404314171_ (##car _e1404214168_))
                                      (_tl1404414173_ (##cdr _e1404214168_)))
                                  (if (gx#stx-pair? _hd1404314171_)
                                      (let ((_e1404514176_
                                             (gx#stx-e _hd1404314171_)))
                                        (let ((_hd1404614179_
                                               (##car _e1404514176_))
                                              (_tl1404714181_
                                               (##cdr _e1404514176_)))
                                          (if (gx#stx-null? _tl1404714181_)
                                              (if (gx#stx-pair? _tl1404414173_)
                                                  (let ((_e1404814184_
                                                         (gx#stx-e
                                                          _tl1404414173_)))
                                                    (let ((_hd1404914187_
                                                           (##car _e1404814184_))
                                                          (_tl1405014189_
                                                           (##cdr _e1404814184_)))
                                                      (if (gx#stx-null?
                                                           _tl1405014189_)
                                                          ((lambda (_L14192_)
                                                             (_generate-e14033_
                                                              _L14192_))
                                                           _hd1404614179_)
                                                          (_g1403514155_
                                                           _g1403714158_))))
                                                  (_g1403514155_
                                                   _g1403714158_))
                                              (_g1403514155_ _g1403714158_))))
                                      (_g1403514155_ _g1403714158_))))
                              (_g1403514155_ _g1403714158_))))
                      (_g1403514155_ _g1403714158_)))))
          (_g1403414207_ _stx14031_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx13585_)
      (let* ((_g1358913691_
              (lambda (_g1359013688_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1359013688_)))
             (_g1358813698_ (lambda (_g1359013694_) ((lambda () '(begin)))))
             (_g1358713848_
              (lambda (_g1359013701_)
                (if (gx#stx-pair? _g1359013701_)
                    (let ((_e1364813703_ (gx#stx-e _g1359013701_)))
                      (let ((_hd1364913706_ (##car _e1364813703_))
                            (_tl1365013708_ (##cdr _e1364813703_)))
                        (if (gx#stx-pair? _tl1365013708_)
                            (let ((_e1365113711_ (gx#stx-e _tl1365013708_)))
                              (let ((_hd1365213714_ (##car _e1365113711_))
                                    (_tl1365313716_ (##cdr _e1365113711_)))
                                (if (gx#stx-pair? _hd1365213714_)
                                    (let ((_e1365413719_
                                           (gx#stx-e _hd1365213714_)))
                                      (let ((_hd1365513722_
                                             (##car _e1365413719_))
                                            (_tl1365613724_
                                             (##cdr _e1365413719_)))
                                        (if (gx#identifier? _hd1365513722_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1365513722_)
                                                (if (gx#stx-pair?
                                                     _tl1365613724_)
                                                    (let ((_e1365713727_
                                                           (gx#stx-e
                                                            _tl1365613724_)))
                                                      (let ((_hd1365813730_
                                                             (##car _e1365713727_))
                                                            (_tl1365913732_
                                                             (##cdr _e1365713727_)))
                                                        (if (gx#stx-null?
                                                             _tl1365913732_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1365313716_)
                        (let ((_e1366013735_ (gx#stx-e _tl1365313716_)))
                          (let ((_hd1366113738_ (##car _e1366013735_))
                                (_tl1366213740_ (##cdr _e1366013735_)))
                            (if (gx#stx-pair? _hd1366113738_)
                                (let ((_e1366313743_
                                       (gx#stx-e _hd1366113738_)))
                                  (let ((_hd1366413746_ (##car _e1366313743_))
                                        (_tl1366513748_ (##cdr _e1366313743_)))
                                    (if (gx#identifier? _hd1366413746_)
                                        (if (gx#stx-eq? '%#ref _hd1366413746_)
                                            (if (gx#stx-pair? _tl1366513748_)
                                                (let ((_e1366613751_
                                                       (gx#stx-e
                                                        _tl1366513748_)))
                                                  (let ((_hd1366713754_
                                                         (##car _e1366613751_))
                                                        (_tl1366813756_
                                                         (##cdr _e1366613751_)))
                                                    (if (gx#stx-null?
                                                         _tl1366813756_)
                                                        (if (gx#stx-pair?
                                                             _tl1366213740_)
                                                            (let ((_e1366913759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1366213740_)))
                      (let ((_hd1367013762_ (##car _e1366913759_))
                            (_tl1367113764_ (##cdr _e1366913759_)))
                        (if (gx#stx-pair? _hd1367013762_)
                            (let ((_e1367213767_ (gx#stx-e _hd1367013762_)))
                              (let ((_hd1367313770_ (##car _e1367213767_))
                                    (_tl1367413772_ (##cdr _e1367213767_)))
                                (if (gx#identifier? _hd1367313770_)
                                    (if (gx#stx-eq? '%#quote _hd1367313770_)
                                        (if (gx#stx-pair? _tl1367413772_)
                                            (let ((_e1367513775_
                                                   (gx#stx-e _tl1367413772_)))
                                              (let ((_hd1367613778_
                                                     (##car _e1367513775_))
                                                    (_tl1367713780_
                                                     (##cdr _e1367513775_)))
                                                (if (gx#stx-null?
                                                     _tl1367713780_)
                                                    (if (gx#stx-pair?
                                                         _tl1367113764_)
                                                        (let ((_e1367813783_
                                                               (gx#stx-e
                                                                _tl1367113764_)))
                                                          (let ((_hd1367913786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1367813783_))
                        (_tl1368013788_ (##cdr _e1367813783_)))
                    (if (gx#stx-pair? _hd1367913786_)
                        (let ((_e1368113791_ (gx#stx-e _hd1367913786_)))
                          (let ((_hd1368213794_ (##car _e1368113791_))
                                (_tl1368313796_ (##cdr _e1368113791_)))
                            (if (gx#identifier? _hd1368213794_)
                                (if (gx#stx-eq? '%#ref _hd1368213794_)
                                    (if (gx#stx-pair? _tl1368313796_)
                                        (let ((_e1368413799_
                                               (gx#stx-e _tl1368313796_)))
                                          (let ((_hd1368513802_
                                                 (##car _e1368413799_))
                                                (_tl1368613804_
                                                 (##cdr _e1368413799_)))
                                            (if (gx#stx-null? _tl1368613804_)
                                                (if (gx#stx-null?
                                                     _tl1368013788_)
                                                    ((lambda (_L13807_
                                                              _L13808_
                                                              _L13809_
                                                              _L13810_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#generate-runtime-binding-id _L13809_)
                               (cons (gx#stx-e _L13808_)
                                     (cons (gxc#generate-runtime-binding-id
                                            _L13807_)
                                           (cons '#f '())))))
                   (_g1358813698_ _g1359013701_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1368513802_
                                                     _hd1367613778_
                                                     _hd1366713754_
                                                     _hd1365813730_)
                                                    (_g1358813698_
                                                     _g1359013701_))
                                                (_g1358813698_
                                                 _g1359013701_))))
                                        (_g1358813698_ _g1359013701_))
                                    (_g1358813698_ _g1359013701_))
                                (_g1358813698_ _g1359013701_))))
                        (_g1358813698_ _g1359013701_))))
                (_g1358813698_ _g1359013701_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1358813698_
                                                     _g1359013701_))))
                                            (_g1358813698_ _g1359013701_))
                                        (_g1358813698_ _g1359013701_))
                                    (_g1358813698_ _g1359013701_))))
                            (_g1358813698_ _g1359013701_))))
                    (_g1358813698_ _g1359013701_))
                (_g1358813698_ _g1359013701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1358813698_ _g1359013701_))
                                            (_g1358813698_ _g1359013701_))
                                        (_g1358813698_ _g1359013701_))))
                                (_g1358813698_ _g1359013701_))))
                        (_g1358813698_ _g1359013701_))
                    (_g1358813698_ _g1359013701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1358813698_
                                                     _g1359013701_))
                                                (_g1358813698_ _g1359013701_))
                                            (_g1358813698_ _g1359013701_))))
                                    (_g1358813698_ _g1359013701_))))
                            (_g1358813698_ _g1359013701_))))
                    (_g1358813698_ _g1359013701_))))
             (_g1358614028_
              (lambda (_g1359013851_)
                (if (gx#stx-pair? _g1359013851_)
                    (let ((_e1359613853_ (gx#stx-e _g1359013851_)))
                      (let ((_hd1359713856_ (##car _e1359613853_))
                            (_tl1359813858_ (##cdr _e1359613853_)))
                        (if (gx#stx-pair? _tl1359813858_)
                            (let ((_e1359913861_ (gx#stx-e _tl1359813858_)))
                              (let ((_hd1360013864_ (##car _e1359913861_))
                                    (_tl1360113866_ (##cdr _e1359913861_)))
                                (if (gx#stx-pair? _hd1360013864_)
                                    (let ((_e1360213869_
                                           (gx#stx-e _hd1360013864_)))
                                      (let ((_hd1360313872_
                                             (##car _e1360213869_))
                                            (_tl1360413874_
                                             (##cdr _e1360213869_)))
                                        (if (gx#identifier? _hd1360313872_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1360313872_)
                                                (if (gx#stx-pair?
                                                     _tl1360413874_)
                                                    (let ((_e1360513877_
                                                           (gx#stx-e
                                                            _tl1360413874_)))
                                                      (let ((_hd1360613880_
                                                             (##car _e1360513877_))
                                                            (_tl1360713882_
                                                             (##cdr _e1360513877_)))
                                                        (if (gx#stx-null?
                                                             _tl1360713882_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1360113866_)
                        (let ((_e1360813885_ (gx#stx-e _tl1360113866_)))
                          (let ((_hd1360913888_ (##car _e1360813885_))
                                (_tl1361013890_ (##cdr _e1360813885_)))
                            (if (gx#stx-pair? _hd1360913888_)
                                (let ((_e1361113893_
                                       (gx#stx-e _hd1360913888_)))
                                  (let ((_hd1361213896_ (##car _e1361113893_))
                                        (_tl1361313898_ (##cdr _e1361113893_)))
                                    (if (gx#identifier? _hd1361213896_)
                                        (if (gx#stx-eq? '%#ref _hd1361213896_)
                                            (if (gx#stx-pair? _tl1361313898_)
                                                (let ((_e1361413901_
                                                       (gx#stx-e
                                                        _tl1361313898_)))
                                                  (let ((_hd1361513904_
                                                         (##car _e1361413901_))
                                                        (_tl1361613906_
                                                         (##cdr _e1361413901_)))
                                                    (if (gx#stx-null?
                                                         _tl1361613906_)
                                                        (if (gx#stx-pair?
                                                             _tl1361013890_)
                                                            (let ((_e1361713909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1361013890_)))
                      (let ((_hd1361813912_ (##car _e1361713909_))
                            (_tl1361913914_ (##cdr _e1361713909_)))
                        (if (gx#stx-pair? _hd1361813912_)
                            (let ((_e1362013917_ (gx#stx-e _hd1361813912_)))
                              (let ((_hd1362113920_ (##car _e1362013917_))
                                    (_tl1362213922_ (##cdr _e1362013917_)))
                                (if (gx#identifier? _hd1362113920_)
                                    (if (gx#stx-eq? '%#quote _hd1362113920_)
                                        (if (gx#stx-pair? _tl1362213922_)
                                            (let ((_e1362313925_
                                                   (gx#stx-e _tl1362213922_)))
                                              (let ((_hd1362413928_
                                                     (##car _e1362313925_))
                                                    (_tl1362513930_
                                                     (##cdr _e1362313925_)))
                                                (if (gx#stx-null?
                                                     _tl1362513930_)
                                                    (if (gx#stx-pair?
                                                         _tl1361913914_)
                                                        (let ((_e1362613933_
                                                               (gx#stx-e
                                                                _tl1361913914_)))
                                                          (let ((_hd1362713936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1362613933_))
                        (_tl1362813938_ (##cdr _e1362613933_)))
                    (if (gx#stx-pair? _hd1362713936_)
                        (let ((_e1362913941_ (gx#stx-e _hd1362713936_)))
                          (let ((_hd1363013944_ (##car _e1362913941_))
                                (_tl1363113946_ (##cdr _e1362913941_)))
                            (if (gx#identifier? _hd1363013944_)
                                (if (gx#stx-eq? '%#ref _hd1363013944_)
                                    (if (gx#stx-pair? _tl1363113946_)
                                        (let ((_e1363213949_
                                               (gx#stx-e _tl1363113946_)))
                                          (let ((_hd1363313952_
                                                 (##car _e1363213949_))
                                                (_tl1363413954_
                                                 (##cdr _e1363213949_)))
                                            (if (gx#stx-null? _tl1363413954_)
                                                (if (gx#stx-pair?
                                                     _tl1362813938_)
                                                    (let ((_e1363513957_
                                                           (gx#stx-e
                                                            _tl1362813938_)))
                                                      (let ((_hd1363613960_
                                                             (##car _e1363513957_))
                                                            (_tl1363713962_
                                                             (##cdr _e1363513957_)))
                                                        (if (gx#stx-pair?
                                                             _hd1363613960_)
                                                            (let ((_e1363813965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1363613960_)))
                      (let ((_hd1363913968_ (##car _e1363813965_))
                            (_tl1364013970_ (##cdr _e1363813965_)))
                        (if (gx#identifier? _hd1363913968_)
                            (if (gx#stx-eq? '%#quote _hd1363913968_)
                                (if (gx#stx-pair? _tl1364013970_)
                                    (let ((_e1364113973_
                                           (gx#stx-e _tl1364013970_)))
                                      (let ((_hd1364213976_
                                             (##car _e1364113973_))
                                            (_tl1364313978_
                                             (##cdr _e1364113973_)))
                                        (if (gx#stx-null? _tl1364313978_)
                                            (if (gx#stx-null? _tl1363713962_)
                                                ((lambda (_L13981_
                                                          _L13982_
                                                          _L13983_
                                                          _L13984_
                                                          _L13985_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L13985_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L13984_)
                           (cons (gx#stx-e _L13983_)
                                 (cons (gxc#generate-runtime-binding-id
                                        _L13982_)
                                       (cons (gx#stx-e _L13981_) '())))))
               (_g1358713848_ _g1359013851_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1364213976_
                                                 _hd1363313952_
                                                 _hd1362413928_
                                                 _hd1361513904_
                                                 _hd1360613880_)
                                                (_g1358713848_ _g1359013851_))
                                            (_g1358713848_ _g1359013851_))))
                                    (_g1358713848_ _g1359013851_))
                                (_g1358713848_ _g1359013851_))
                            (_g1358713848_ _g1359013851_))))
                    (_g1358713848_ _g1359013851_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1358713848_
                                                     _g1359013851_))
                                                (_g1358713848_
                                                 _g1359013851_))))
                                        (_g1358713848_ _g1359013851_))
                                    (_g1358713848_ _g1359013851_))
                                (_g1358713848_ _g1359013851_))))
                        (_g1358713848_ _g1359013851_))))
                (_g1358713848_ _g1359013851_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1358713848_
                                                     _g1359013851_))))
                                            (_g1358713848_ _g1359013851_))
                                        (_g1358713848_ _g1359013851_))
                                    (_g1358713848_ _g1359013851_))))
                            (_g1358713848_ _g1359013851_))))
                    (_g1358713848_ _g1359013851_))
                (_g1358713848_ _g1359013851_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1358713848_ _g1359013851_))
                                            (_g1358713848_ _g1359013851_))
                                        (_g1358713848_ _g1359013851_))))
                                (_g1358713848_ _g1359013851_))))
                        (_g1358713848_ _g1359013851_))
                    (_g1358713848_ _g1359013851_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1358713848_
                                                     _g1359013851_))
                                                (_g1358713848_ _g1359013851_))
                                            (_g1358713848_ _g1359013851_))))
                                    (_g1358713848_ _g1359013851_))))
                            (_g1358713848_ _g1359013851_))))
                    (_g1358713848_ _g1359013851_)))))
        (_g1358614028_ _stx13585_))))
  (define gxc#!alias::typedecl
    (lambda (_self13561_)
      (let* ((_self1356213568_ _self13561_)
             (_E1356413572_
              (lambda () (error '"No clause matching" _self1356213568_)))
             (_K1356513577_
              (lambda (_alias-id13575_)
                (cons '@alias (cons _alias-id13575_ '())))))
        (if (##structure-instance-of?
             _self1356213568_
             (##type-id gxc#!alias::t))
            (let* ((_e1356613580_ (##vector-ref _self1356213568_ '1))
                   (_alias-id13583_ _e1356613580_))
              (_K1356513577_ _alias-id13583_))
            (_E1356413572_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self13383_)
      (let* ((_self1338413395_ _self13383_)
             (_E1338613399_
              (lambda () (error '"No clause matching" _self1338413395_)))
             (_K1338713408_
              (lambda (_plist13402_
                       _ctor13403_
                       _fields13404_
                       _super13405_
                       _type-id13406_)
                (cons '@struct-type
                      (cons _type-id13406_
                            (cons _super13405_
                                  (cons _fields13404_
                                        (cons _ctor13403_
                                              (cons _plist13402_ '())))))))))
        (if (##structure-instance-of?
             _self1338413395_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1338813411_ (##vector-ref _self1338413395_ '1))
                   (_type-id13414_ _e1338813411_)
                   (_e1338913416_ (##vector-ref _self1338413395_ '2))
                   (_super13419_ _e1338913416_)
                   (_e1339013421_ (##vector-ref _self1338413395_ '3))
                   (_fields13424_ _e1339013421_)
                   (_e1339113426_ (##vector-ref _self1338413395_ '4))
                   (_e1339213429_ (##vector-ref _self1338413395_ '5))
                   (_ctor13432_ _e1339213429_)
                   (_e1339313434_ (##vector-ref _self1338413395_ '6))
                   (_plist13437_ _e1339313434_))
              (_K1338713408_
               _plist13437_
               _ctor13432_
               _fields13424_
               _super13419_
               _type-id13414_))
            (_E1338613399_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self13237_)
      (let* ((_self1323813244_ _self13237_)
             (_E1324013248_
              (lambda () (error '"No clause matching" _self1323813244_)))
             (_K1324113253_
              (lambda (_struct-t13251_)
                (cons '@struct-pred (cons _struct-t13251_ '())))))
        (if (##structure-instance-of?
             _self1323813244_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1324213256_ (##vector-ref _self1323813244_ '1))
                   (_struct-t13259_ _e1324213256_))
              (_K1324113253_ _struct-t13259_))
            (_E1324013248_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self13091_)
      (let* ((_self1309213098_ _self13091_)
             (_E1309413102_
              (lambda () (error '"No clause matching" _self1309213098_)))
             (_K1309513107_
              (lambda (_struct-t13105_)
                (cons '@struct-cons (cons _struct-t13105_ '())))))
        (if (##structure-instance-of?
             _self1309213098_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1309613110_ (##vector-ref _self1309213098_ '1))
                   (_struct-t13113_ _e1309613110_))
              (_K1309513107_ _struct-t13113_))
            (_E1309413102_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self12931_)
      (let* ((_self1293212940_ _self12931_)
             (_E1293412944_
              (lambda () (error '"No clause matching" _self1293212940_)))
             (_K1293512951_
              (lambda (_unchecked?12947_ _off12948_ _struct-t12949_)
                (cons '@struct-getf
                      (cons _struct-t12949_
                            (cons _off12948_ (cons _unchecked?12947_ '())))))))
        (if (##structure-instance-of?
             _self1293212940_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1293612954_ (##vector-ref _self1293212940_ '1))
                   (_struct-t12957_ _e1293612954_)
                   (_e1293712959_ (##vector-ref _self1293212940_ '2))
                   (_off12962_ _e1293712959_)
                   (_e1293812964_ (##vector-ref _self1293212940_ '3))
                   (_unchecked?12967_ _e1293812964_))
              (_K1293512951_ _unchecked?12967_ _off12962_ _struct-t12957_))
            (_E1293412944_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self12771_)
      (let* ((_self1277212780_ _self12771_)
             (_E1277412784_
              (lambda () (error '"No clause matching" _self1277212780_)))
             (_K1277512791_
              (lambda (_unchecked?12787_ _off12788_ _struct-t12789_)
                (cons '@struct-setf
                      (cons _struct-t12789_
                            (cons _off12788_ (cons _unchecked?12787_ '())))))))
        (if (##structure-instance-of?
             _self1277212780_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1277612794_ (##vector-ref _self1277212780_ '1))
                   (_struct-t12797_ _e1277612794_)
                   (_e1277712799_ (##vector-ref _self1277212780_ '2))
                   (_off12802_ _e1277712799_)
                   (_e1277812804_ (##vector-ref _self1277212780_ '3))
                   (_unchecked?12807_ _e1277812804_))
              (_K1277512791_ _unchecked?12807_ _off12802_ _struct-t12797_))
            (_E1277412784_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self12597_)
      (let* ((_self1259812608_ _self12597_)
             (_E1260012612_
              (lambda () (error '"No clause matching" _self1259812608_)))
             (_K1260112623_
              (lambda (_typedecl12615_
                       _inline12616_
                       _dispatch12617_
                       _arity12618_)
                (if _inline12616_
                    (let ((_$e12620_ _typedecl12615_))
                      (if _$e12620_
                          _$e12620_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity12618_ (cons _dispatch12617_ '())))))))
        (if (##structure-instance-of?
             _self1259812608_
             (##type-id gxc#!lambda::t))
            (let* ((_e1260212626_ (##vector-ref _self1259812608_ '1))
                   (_e1260312629_ (##vector-ref _self1259812608_ '2))
                   (_arity12632_ _e1260312629_)
                   (_e1260412634_ (##vector-ref _self1259812608_ '3))
                   (_dispatch12637_ _e1260412634_)
                   (_e1260512639_ (##vector-ref _self1259812608_ '4))
                   (_inline12642_ _e1260512639_)
                   (_e1260612644_ (##vector-ref _self1259812608_ '5))
                   (_typedecl12647_ _e1260612644_))
              (_K1260112623_
               _typedecl12647_
               _inline12642_
               _dispatch12637_
               _arity12632_))
            (_E1260012612_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self12408_)
      (letrec ((_clause-e12410_
                (lambda (_clause12440_)
                  (let* ((_clause1244112449_ _clause12440_)
                         (_E1244312453_
                          (lambda ()
                            (error '"No clause matching" _clause1244112449_)))
                         (_K1244412459_
                          (lambda (_dispatch12456_ _arity12457_)
                            (cons _arity12457_ (cons _dispatch12456_ '())))))
                    (if (##structure-instance-of?
                         _clause1244112449_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1244512462_
                                (##vector-ref _clause1244112449_ '1))
                               (_e1244612465_
                                (##vector-ref _clause1244112449_ '2))
                               (_arity12468_ _e1244612465_)
                               (_e1244712470_
                                (##vector-ref _clause1244112449_ '3))
                               (_dispatch12473_ _e1244712470_))
                          (_K1244412459_ _dispatch12473_ _arity12468_))
                        (_E1244312453_))))))
        (let* ((_self1241112418_ _self12408_)
               (_E1241312422_
                (lambda () (error '"No clause matching" _self1241112418_)))
               (_K1241412429_
                (lambda (_clauses12425_)
                  (let ((_clauses12427_ (map _clause-e12410_ _clauses12425_)))
                    (cons '@case-lambda _clauses12427_)))))
          (if (##structure-instance-of?
               _self1241112418_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1241512432_ (##vector-ref _self1241112418_ '1))
                     (_e1241612435_ (##vector-ref _self1241112418_ '2))
                     (_clauses12438_ _e1241612435_))
                (_K1241412429_ _clauses12438_))
              (_E1241312422_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx12284_) (gxc#generate-runtime-binding-id _stx12284_))))
